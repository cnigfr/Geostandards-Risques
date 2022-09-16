# Exemple de jeu de données test PPRN de la SCIE (Seine-maritime)

L'objectif de ce répertoire est de tester au fil de l'eau les propositions des ateliers et de vérifier que le passage des données déjà COVADISéés peut être automatisé.

Il contient :
* Les données originales au format COVADIS (commençant par n_)

* Les données au projet de nouveau standard (commençant par refonte_)

Pour passer d'un standard à l'autre, les fonctions suivantes (à l'état de brouillon) sont proposées :

## PROCEDURE
~~~~sql
-- FUNCTION: ppr_scie.fn_doc_to_procedure(text, text)

-- DROP FUNCTION ppr_scie.fn_doc_to_procedure(text, text);

CREATE OR REPLACE FUNCTION ppr_scie.fn_doc_to_procedure(
	codegaspar text,
	dpt text)
    RETURNS void
    LANGUAGE 'plpgsql'

    COST 100
    VOLATILE 
AS $BODY$

Begin
--- pour lancer la fonction :
--- select * from ppr_scie.fn_doc_to_procedure('20120001','076')
	
	--------------------------------------------------------------------------------------
	-- 1/Création de l'architecture de la table PROCEDURE
	--------------------------------------------------------------------------------------
	execute
		$sql$
		drop table if exists ppr_scie.refonte_n_procedure_pprn_$sql$||codegaspar||$sql$_s_$sql$||dpt||$sql$;
		create table ppr_scie.refonte_n_procedure_pprn_$sql$||codegaspar||$sql$_s_076 
			(
				codeprocedure character varying(18),
				libelleprocedure character varying(103),
				typeprocedure character varying(10),
				CONSTRAINT refonte_n_procedure_pprn_$sql$||codegaspar||$sql$_s_$sql$||dpt||$sql$_pkey PRIMARY KEY (codeprocedure)
			);
		$sql$;
	--------------------------------------------------------------------------------------
	-- 2/Alimentation de la table PROCEDURE à partir des tables DOCUMENTS et PERIMETRES
	--------------------------------------------------------------------------------------
	execute
		$sql$
		insert into ppr_scie.refonte_n_procedure_pprn_$sql$||codegaspar||$sql$_s_$sql$||dpt||$sql$
		SELECT id_gaspar, 
				nom, 
				code_modele				
		FROM ppr_scie.n_document_pprn_$sql$||codegaspar||$sql$_s_$sql$||dpt||$sql$
			left join ppr_scie.gaspar_procedure_ppr on id_gaspar=code_procedure
		$sql$;

end;
$BODY$;
~~~~

## PERIMETRE
~~~~sql
-- FUNCTION: ppr_scie.fn_per_doc_to_perimetre(text, text)

-- DROP FUNCTION ppr_scie.fn_per_doc_to_perimetre(text, text);

CREATE OR REPLACE FUNCTION ppr_scie.fn_per_doc_to_perimetre(
	codegaspar text,
	dpt text)
    RETURNS void
    LANGUAGE 'plpgsql'

    COST 100
    VOLATILE 
AS $BODY$

Begin
--- pour lancer la fonction :
--- select * from ppr_scie.fn_per_doc_to_perimetre('20120001','076')
	
	--------------------------------------------------------------------------------------
	-- 1/Création de l'architecture de la table PERIMETRE
	--------------------------------------------------------------------------------------
	execute
		$sql$
		drop table if exists ppr_scie.refonte_n_perimetre_pprn_$sql$||codegaspar||$sql$_s_$sql$||dpt||$sql$;
		create table ppr_scie.refonte_n_perimetre_pprn_$sql$||codegaspar||$sql$_s_076 
			(
				idperimetre integer,				
				codeprocedure character varying(18),
				etatperimetre character varying(12),
				dateetatperimetre date,
				geometrie geometry
			);
		$sql$;
	--------------------------------------------------------------------------------------
	-- 2/Alimentation de la table PERIMETRE à partir des tables DOCUMENT et PERIMETRE
	--------------------------------------------------------------------------------------
	execute
		$sql$
		insert into ppr_scie.refonte_n_perimetre_pprn_$sql$||codegaspar||$sql$_s_$sql$||dpt||$sql$		

		SELECT 
				row_number() over(),			
				doc.id_gaspar,
				case 
					when etat='01' then 'PRESCRIT' 
					when etat='02' then 'APPROUVE' 
					when etat='03' then 'ABROGE' 
					when etat='04' then 'ANTICIPE' 
				end,				
				case
				 	when etat='01' then dateprescr
				 	when etat='02' then dateappro
				 end,
				per.geom
		FROM ppr_scie.n_document_pprn_$sql$||codegaspar||$sql$_s_$sql$||dpt||$sql$ as doc
			left join ppr_scie.n_perimetre_pprn_$sql$||codegaspar||$sql$_s_$sql$||dpt||$sql$ per on doc.id_gaspar=per.id_gaspar			
		$sql$;

end;
$BODY$;
~~~~
