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
    VOLATILE PARALLEL UNSAFE
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

ALTER FUNCTION ppr_scie.fn_doc_to_procedure(text, text)
    OWNER TO postgres;


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
    VOLATILE PARALLEL UNSAFE
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

ALTER FUNCTION ppr_scie.fn_per_doc_to_perimetre(text, text)
    OWNER TO postgres;
~~~~

## REFERENCE INTERNET

~~~~sql
-- FUNCTION: ppr_scie.fn_ref_internet(text, text)

-- DROP FUNCTION ppr_scie.fn_ref_internet(text, text);

CREATE OR REPLACE FUNCTION ppr_scie.fn_ref_internet(
	codegaspar text,
	dpt text)
    RETURNS void
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
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
				description character varying,
				typereference character varying
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
				'Cette page permet de faire une recherche par commune ou par PPR, elle contient les documents officiels signés par le préfet (règlements, zonages etc...)',
				'Réglement signé (PPR)'
		FROM ppr_scie.n_document_pprn_$sql$||codegaspar||$sql$_s_$sql$||dpt||$sql$
			--left join ppr_scie.gaspar_procedure_ppr on id_gaspar=code_procedure
		$sql$;

end;
$BODY$;

ALTER FUNCTION ppr_scie.fn_ref_internet(text, text)
    OWNER TO postgres;

~~~~

## ALEA REFERENCE, ALEA ECHEANCE 100 ANS, ZONE DANGER SPECIFIQUE

~~~~sql

-- FUNCTION: ppr_scie.fn_zonealea(text, text)

-- DROP FUNCTION ppr_scie.fn_zonealea(text, text);

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
	-- 1/Création de l'architecture de la table ZONEALEAREFERENCE
	--------------------------------------------------------------------------------------
	execute
		$sql$
		drop table if exists ppr_scie.refonte_n_zonealeareference_pprn_$sql$||codegaspar||$sql$_s_$sql$||dpt||$sql$;
		create table ppr_scie.refonte_n_zonealeareference_pprn_$sql$||codegaspar||$sql$_s_076 
			(
				idzonealea character varying, 
				codeprocedure character varying(18),
				typealea character varying(3),
				niveaualea character varying(2),				
				description character varying,
				occurence character varying,
				geometrie geometry(MultiPolygon,2154)
			);
		$sql$;
	--------------------------------------------------------------------------------------
	-- 2/Alimentation de la table ZONEALEAREFERENCE à partir de la table ZONEALEA
	--------------------------------------------------------------------------------------
	execute
		$sql$
		insert into ppr_scie.refonte_n_zonealeareference_pprn_$sql$||codegaspar||$sql$_s_$sql$||dpt||$sql$
		SELECT 
				id_zone,
				id_gaspar, 
			    --left(coderisque,3), 
				case 
					when descript='Inondation - Par ruissellement et coulee de boue' then '114'
					when descript='Inondation - Par une crue a debordement de cours d eau' then '112'
					when descript='Remontee de nappe' then '116'
					when descript='Submersion pour un evenement marin de submersion marine centennal' then '117'
				end,
				nivalea_st,				
				descript,
				'Q100',
				geom
		FROM ppr_scie.n_zone_alea_pprn_$sql$||codegaspar||$sql$_s_$sql$||dpt||$sql$
		where descript in ('Inondation - Par ruissellement et coulee de boue','Inondation - Par une crue a debordement de cours d eau','Remontee de nappe','Submersion pour un evenement marin de submersion marine centennal')
		$sql$;


	--------------------------------------------------------------------------------------
	-- 3/Création de l'architecture de la table ZONEALEAECHEANCE100ANS
	--------------------------------------------------------------------------------------
	execute
		$sql$
		drop table if exists ppr_scie.refonte_n_zonealeaecheance100ans_pprn_$sql$||codegaspar||$sql$_s_$sql$||dpt||$sql$;
		create table ppr_scie.refonte_n_zonealeaecheance100ans_pprn_$sql$||codegaspar||$sql$_s_076 
			(
				idzonealea character varying, 
				codeprocedure character varying(18),
				typealea character varying(3),
				niveaualea character varying(2),				
				description character varying,
				occurence character varying,
				geometrie geometry(MultiPolygon,2154)
			);
		$sql$;
	--------------------------------------------------------------------------------------
	-- 4/Alimentation de la table ZONEALEAECHEANCE100ANS à partir de la table ZONEALEA
	--------------------------------------------------------------------------------------
	execute
		$sql$
		insert into ppr_scie.refonte_n_zonealeaecheance100ans_pprn_$sql$||codegaspar||$sql$_s_$sql$||dpt||$sql$
		SELECT 
				id_zone,
				id_gaspar, 
			    --left(coderisque,3), 
				'117', -- uniquement submersion
				nivalea_st,
				descript,
				'Q100',
				geom
		FROM ppr_scie.n_zone_alea_pprn_$sql$||codegaspar||$sql$_s_$sql$||dpt||$sql$
		where descript in ('Submersion pour un evenement de submersion marine centennal a horizon 2100')
		$sql$;
		
		

		
	--------------------------------------------------------------------------------------
	-- 5/Création de l'architecture de la table ZoneDangerSpecifique
	--------------------------------------------------------------------------------------
	execute
		$sql$
		drop table if exists ppr_scie.refonte_n_zonedangerspecifique_pprn_$sql$||codegaspar||$sql$_s_$sql$||dpt||$sql$;
		create table ppr_scie.refonte_n_zonedangerspecifique_pprn_$sql$||codegaspar||$sql$_s_076 
			(
				idzonealea character varying, 
				codeprocedure character varying(18),
				typealea character varying(3),
				niveaualea character varying(2),
				description character varying,
				typesuralea character varying,
				geometrie geometry(MultiPolygon,2154)
			);
		$sql$;
	--------------------------------------------------------------------------------------
	-- 6/Alimentation de la table ZoneDangerSpecifique à partir de la table ZONE_ALEA
	--------------------------------------------------------------------------------------
	execute
		$sql$
		insert into ppr_scie.refonte_n_zonedangerspecifique_pprn_$sql$||codegaspar||$sql$_s_$sql$||dpt||$sql$
		SELECT 
				id_zone,
				id_gaspar, 
			    left(coderisque,3), 
				nivalea_st,
				descript,
				case 
					when descript = 'Bande de precaution' then '01'
					when descript = 'Secteur soumis aux chocs de vagues et de projection' then '02'
				end,
				geom
		FROM ppr_scie.n_zone_alea_pprn_$sql$||codegaspar||$sql$_s_$sql$||dpt||$sql$
		where descript in ('Bande de precaution', 'Secteur soumis aux chocs de vagues et de projection')
		$sql$;
end;
$BODY$;

ALTER FUNCTION ppr_scie.fn_zonealea(text, text)
    OWNER TO postgres;

~~~~
