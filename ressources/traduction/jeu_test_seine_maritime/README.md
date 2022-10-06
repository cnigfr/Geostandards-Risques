# Exemple de jeu de données test PPRN de la SCIE (Seine-maritime)

L'objectif de ce répertoire est de tester au fil de l'eau les propositions des ateliers et de vérifier que le passage des données déjà COVADISéés peut être automatisé.

Il contient :
* Les données originales au format COVADIS (commençant par n_)

* Les données au projet de nouveau standard (commençant par refonte_)

Pour passer d'un standard à l'autre, les fonctions suivantes (à l'état de brouillon) sont proposées.
A noter, une table (non géométrique, ici appelé gaspar_procedure_ppr) exporté de GASPAR est utilisée pour récupérer les noms des PPRT et les type de procédures. Cette table contient les attributs code_modele, libelle_modele, code_procedure, libelle_procedure.

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

## REFERENCEINTERNET
~~~~sql
CREATE OR REPLACE FUNCTION ppr_scie.fn_ref_internet(
	codegaspar text,
	dpt text)
    RETURNS void
    LANGUAGE 'plpgsql'

    COST 100
    VOLATILE 
AS $BODY$

Begin
--- pour lancer la fonction :
--- select * from ppr_scie.fn_ref_internet('20120001','076')
	
	--------------------------------------------------------------------------------------
	-- 1/Création de l'architecture de la table REFERENCEINTERNET
	--------------------------------------------------------------------------------------
	execute
		$sql$
		drop table if exists ppr_scie.refonte_n_referenceinternet_pprn_$sql$||codegaspar||$sql$_s_$sql$||dpt||$sql$;
		create table ppr_scie.refonte_n_referenceinternet_pprn_$sql$||codegaspar||$sql$_s_076 
			(
				codeprocedure character varying(18),
				adresse character varying,
				nomressource character varying,
				description character varying
			);
		$sql$;
	--------------------------------------------------------------------------------------
	-- 2/Alimentation de la table REFERENCEINTERNET à partir des tables DOCUMENTS et PERIMETRES
	--------------------------------------------------------------------------------------
	execute
		$sql$
		insert into ppr_scie.refonte_n_referenceinternet_pprn_$sql$||codegaspar||$sql$_s_$sql$||dpt||$sql$
		SELECT id_gaspar, 
				'https://www.seine-maritime.gouv.fr/Publications/Information-des-acquereurs-et-locataires-sur-les-risques-majeurs', 
				'Information Acquéreur Locataire sur le site internet de l''Etat',
				'Cette page permet de faire une recherche par commune ou par PPR, elle contient les documents officiels signés par le préfet (règlements, zonages etc...)'
		FROM ppr_scie.n_document_pprn_$sql$||codegaspar||$sql$_s_$sql$||dpt||$sql$
			left join ppr_scie.gaspar_procedure_ppr on id_gaspar=code_procedure
		$sql$;

end;
$BODY$;
~~~~

## ZONEALEA
~~~~sql
CREATE OR REPLACE FUNCTION ppr_scie.fn_zonealea(
	codegaspar text,
	dpt text)
    RETURNS void
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
Begin
--- pour lancer la fonction :
--- select * from ppr_scie.fn_zonealea('20120001','076')
	
	--------------------------------------------------------------------------------------
	-- 1/Création de l'architecture de la table ZONEALEA
	--------------------------------------------------------------------------------------
	execute
		$sql$
		drop table if exists ppr_scie.refonte_n_zonealea_pprn_$sql$||codegaspar||$sql$_s_$sql$||dpt||$sql$;
		create table ppr_scie.refonte_n_zonealea_pprn_$sql$||codegaspar||$sql$_s_076 
			(
				codeprocedure character varying(18),
				typealea character varying(3),
				niveaualea character varying(2),
				description character varying,
				perioderetour character varying,
				geometrie geometry(MultiPolygon,2154)
			);
		$sql$;
	--------------------------------------------------------------------------------------
	-- 2/Alimentation de la table ZONEALEA à partir de la table ZONE_ALEA
	--------------------------------------------------------------------------------------
	execute
		$sql$
		insert into ppr_scie.refonte_n_zonealea_pprn_$sql$||codegaspar||$sql$_s_$sql$||dpt||$sql$
		SELECT id_gaspar, 
			    left(coderisque,3), 
				nivalea_st,
				descript,
				'non renseigné dans l''ancien standard',
				geom
		FROM ppr_scie.n_zone_alea_pprn_$sql$||codegaspar||$sql$_s_$sql$||dpt||$sql$
		$sql$;
end;
$BODY$;
~~~~
