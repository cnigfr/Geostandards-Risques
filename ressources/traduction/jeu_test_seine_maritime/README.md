# Exemple de jeu de données test PPRN de la SCIE (Seine-maritime)

L'objectif de ce répertoire est de tester au fil de l'eau les propositions des ateliers et de vérifier que le passage des données déjà COVADISéés peut être automatisé.

Il contient :
* Les données originales au format COVADIS (commençant par n_)

* Les données au projet de nouveau standard (commençant par pprn_)

Pour passer d'un standard à l'autre pour un cas précis (exemple PPR de la SCIE), les fonctions suivantes (à l'état de brouillon) sont proposées :

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
--- select * from ppr_scie.fn_doc_to_procedure('76DDTM20120001','076')
	
	--------------------------------------------------------------------------------------
	-- 1/Création de l'architecture de la table PROCEDURE
	--------------------------------------------------------------------------------------
	
	execute format(
		'drop table if exists ppr_scie.pprn_%s_procedure_s',
		lower(codegaspar)
	);
	execute format(
		'create table ppr_scie.pprn_%1$s_procedure_s 
		(
			codeprocedure character varying(18),
			libelleprocedure character varying,
			typeprocedure character varying(10),
			CONSTRAINT pprn_%1$s_procedure_s_pkey PRIMARY KEY (codeprocedure)
		)',
		lower(codegaspar)	   
	);
	
	--------------------------------------------------------------------------------------
	-- 2/Alimentation de la table PROCEDURE à partir des tables DOCUMENTS et PERIMETRES
	--------------------------------------------------------------------------------------
	
	execute format(
		'
		insert into ppr_scie.pprn_%s_procedure_s
			SELECT id_gaspar, 
					nom, 
					code_modele				
			FROM ppr_scie.n_document_pprn_%s_s_%s
				left join ppr_scie.gaspar_procedure_ppr on id_gaspar=code_procedure
		',
		lower(codegaspar),
		right(codegaspar, 8),
		dpt
	);
	
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
    VOLATILE PARALLEL UNSAFE
AS $BODY$
Begin
--- pour lancer la fonction :
--- select * from ppr_scie.fn_per_doc_to_perimetre('76DDTM20120001','076')
	
	--------------------------------------------------------------------------------------
	-- 1/Création de l'architecture de la table PERIMETRE
	--------------------------------------------------------------------------------------
		
	execute format(
		'
		drop table if exists ppr_scie.pprn_%s_perimetre_s;
		',
		lower(codegaspar)
	);
	
	execute format(
		'create table ppr_scie.pprn_%s_perimetre_s 
			(
				idperimetre character varying(8),				
				codeprocedure character varying(16),
				etatprocedure character varying(12),
				dateetat date,
				geom geometry,
				CONSTRAINT pprn_%1$s_perimetre_s_pkey PRIMARY KEY (idperimetre)

			)
		',
		lower(codegaspar)
	);
	--------------------------------------------------------------------------------------
	-- 2/Alimentation de la table PERIMETRE à partir des tables DOCUMENT et PERIMETRE
	--------------------------------------------------------------------------------------
	execute	format(
			'
			insert into ppr_scie.pprn_%s_perimetre_s
			SELECT 
				row_number() over(),			
				doc.id_gaspar,
				case 
					when etat=''01'' then ''PRESCRIT''
					when etat=''02'' then ''APPROUVE''
					when etat=''03'' then ''ABROGE''
					when etat=''04'' then ''ANTICIPE''
				end,				
				case
				 	when etat=''01'' then dateprescr
				 	when etat=''02'' then dateappro
				 end,
				per.geom
		FROM ppr_scie.n_document_pprn_%2$s_s_%3$s as doc
			left join ppr_scie.n_perimetre_pprn_%2$s_s_%3$s per on doc.id_gaspar=per.id_gaspar				
			',
			lower(codegaspar),
			right(codegaspar, 8),
			dpt
		);
end;
$BODY$;
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
--- select * from ppr_scie.fn_ref_internet('76DDTM20120001','076')
	
	--------------------------------------------------------------------------------------
	-- 1/Création de l'architecture de la table REFERENCEINTERNET
	--------------------------------------------------------------------------------------
		
	execute	format (
			'drop table if exists ppr_scie.pprn_%s_referenceinternet_s',
			lower(codegaspar)
	);
		
	execute	format (
			'
			create table ppr_scie.pprn_%s_referenceinternet_s 
			(
				adresse character varying,		
				codeprocedure character varying(16),
				nomressource character varying(50),
				typereference character varying(2),
				description character varying(255),
				CONSTRAINT pprn_%1$s_referenceinternet_s_pkey PRIMARY KEY (adresse)
			)
			',
			lower(codegaspar)
	);
	--------------------------------------------------------------------------------------
	-- 2/Alimentation de la table REFERENCEINTERNET à partir des tables DOCUMENTS et PERIMETRES
	--------------------------------------------------------------------------------------
	execute format(
		'
		insert into ppr_scie.pprn_%s_referenceinternet_s
		SELECT 
				''https://www.seine-maritime.gouv.fr/Publications/Information-des-acquereurs-et-locataires-sur-les-risques-majeurs'', 
				id_gaspar, 		
				''Information Acquéreur Locataire'',
				''01'',		
				''Page information acquéreur locataire, permet de faire une recherche par commune ou par PPR pour accéder aux documents officiels''
		FROM ppr_scie.n_document_pprn_%s_s_%s
		',
		lower(codegaspar),
		right(codegaspar, 8),
		dpt
	);
end;
$BODY$;

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
--- select * from ppr_scie.fn_zonealea('76DDTM20120001','076')
	
	--------------------------------------------------------------------------------------
	-- 1/Création de l'architecture de la table ZONEALEAREFERENCE
	--------------------------------------------------------------------------------------
	execute format(
		'drop table if exists ppr_scie.pprn_%s_zonealeareference_s',
		lower(codegaspar)
	);

	execute format(
		'
		create table ppr_scie.pprn_%s_zonealeareference_s
		(
			idzonealea character varying, 
			codeprocedure character varying(16),
			typealea character varying(3),
			niveaualea character varying(2),				
			description character varying(255),
			occurence character varying(15),
			geom geometry(MultiPolygon,2154)
		);
		',
		lower(codegaspar)
	);
	--------------------------------------------------------------------------------------
	-- 2/Alimentation de la table ZONEALEAREFERENCE à partir de la table ZONEALEA
	--------------------------------------------------------------------------------------
	execute format(
		'
		insert into ppr_scie.pprn_%s_zonealeareference_s
		SELECT 
				id_zone,
				id_gaspar, 
				--left(coderisque,3), 
				case 
					when descript=''Inondation - Par ruissellement et coulee de boue'' then ''114''
					when descript=''Inondation - Par une crue a debordement de cours d eau'' then ''112''
					when descript=''Remontee de nappe'' then ''116''
					when descript=''Submersion pour un evenement marin de submersion marine centennal'' then ''117''
				end,
				nivalea_st,				
				descript,
				''Q100'',
				geom
		FROM ppr_scie.n_zone_alea_pprn_%s_s_%s
		where descript in (''Inondation - Par ruissellement et coulee de boue'',''Inondation - Par une crue a debordement de cours d eau'',''Remontee de nappe'',''Submersion pour un evenement marin de submersion marine centennal'')
		',
		lower(codegaspar),
		right(codegaspar, 8),
		dpt
	);

	--------------------------------------------------------------------------------------
	-- 3/Création de l'architecture de la table ZONEALEAECHEANCE100ANS
	--------------------------------------------------------------------------------------
	execute format(
		'drop table if exists ppr_scie.pprn_%s_zonealeaecheance100ans_s',
		lower(codegaspar)
	);

	execute format(
		'
		create table ppr_scie.pprn_%s_zonealeaecheance100ans_s
		(
			idzonealea character varying, 
			codeprocedure character varying(18),
			typealea character varying(3),
			niveaualea character varying(2),				
			description character varying,
			occurence character varying,
			geom geometry(MultiPolygon,2154)
		);
		',
		lower(codegaspar)
	);
	--------------------------------------------------------------------------------------
	-- 4/Alimentation de la table ZONEALEAECHEANCE100ANS à partir de la table ZONEALEA
	--------------------------------------------------------------------------------------	
	execute format(
		'
		insert into ppr_scie.pprn_%s_zonealeaecheance100ans_s
		SELECT 
				id_zone,
				id_gaspar, 
				--left(coderisque,3), 
				''117'', -- uniquement submersion,
				nivalea_st,				
				descript,
				''Q100'',
				geom
		FROM ppr_scie.n_zone_alea_pprn_%s_s_%s
		where descript in (''Submersion pour un evenement de submersion marine centennal a horizon 2100'')
		',
		lower(codegaspar),
		right(codegaspar, 8),
		dpt
	);
		
	--------------------------------------------------------------------------------------
	-- 5/Création de l'architecture de la table ZoneDangerSpecifique
	--------------------------------------------------------------------------------------		
	execute format(
		'drop table if exists ppr_scie.pprn_%s_zonedangerspecifique_s',
		lower(codegaspar)
	);
	execute format(
		'
		create table ppr_scie.pprn_%s_zonedangerspecifique_s
		(
			idzonedanger character varying, 
			codeprocedure character varying(18),
			typealea character varying(3),
			niveaualea character varying(2),
			description character varying,
			typesuralea character varying,
			geom geometry(MultiPolygon,2154)
		);
		',
		lower(codegaspar)
	);
	--------------------------------------------------------------------------------------
	-- 6/Alimentation de la table ZoneDangerSpecifique à partir de la table ZONE_ALEA
	--------------------------------------------------------------------------------------		
	execute format(
		'
		insert into ppr_scie.pprn_%s_zonedangerspecifique_s
		SELECT 
				id_zone,
				id_gaspar, 
			    left(coderisque,3), 
				nivalea_st,
				descript,
				case 
					when descript = ''Bande de precaution'' then ''01''
					when descript = ''Secteur soumis aux chocs de vagues et de projection'' then ''02''
				end,
				geom
		FROM ppr_scie.n_zone_alea_pprn_%s_s_%s
		where descript in (''Bande de precaution'', ''Secteur soumis aux chocs de vagues et de projection'')
		',
		lower(codegaspar),
		right(codegaspar, 8),
		dpt
	);
	
end;
$BODY$;
~~~~

## Séparer les tables par aléas
~~~~sql
-- FUNCTION: ppr_scie.separate_table_by_typealea(text)

-- DROP FUNCTION ppr_scie.separate_table_by_typealea(text);

CREATE OR REPLACE FUNCTION ppr_scie.separate_table_by_typealea(
	codegaspar text)
    RETURNS void
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
DECLARE
    type_value VARCHAR(3);
    table_name VARCHAR;
Begin
--- pour lancer la fonction :
--- select * from ppr_scie.separate_table_by_typealea('76DDTM20120001')	
		
		-- Fonction pour séparer les tables reference et échéance 100 ans en autant de table que de type d'aléa
		-- à rajouter : créer les clefs primaires
		-- NB : ces tables nécessitent un traitement en amont pour respecter les contraintes de géométries
		FOR type_value IN (SELECT DISTINCT typealea FROM ppr_scie.pprn_76ddtm20120001_zonealeareference_s)
			LOOP
				-- Nom de la nouvelle table basé sur la valeur de typealea
				table_name := 'ppr_scie.pprn_'||codegaspar||'_zonealeareference_'||type_value||'_s' ;

				-- suppression de la table si elle existe
				EXECUTE 'DROP TABLE IF EXISTS ' || table_name ;
				-- Création de la nouvelle table avec la structure de la table originale
				EXECUTE 'CREATE TABLE ' || table_name || ' (LIKE ppr_scie.pprn_'||codegaspar||'_zonealeareference_s INCLUDING DEFAULTS INCLUDING CONSTRAINTS INCLUDING INDEXES)';

				-- Insertion des données correspondantes dans la nouvelle table
				EXECUTE 'INSERT INTO ' || table_name || ' SELECT * FROM ppr_scie.pprn_'||codegaspar||'_zonealeareference_s WHERE typealea = ''' || type_value || ''';';
			END LOOP;
			
		FOR type_value IN (SELECT DISTINCT typealea FROM ppr_scie.pprn_76ddtm20120001_zonealeaecheance100ans_s)
			LOOP
				-- Nom de la nouvelle table basé sur la valeur de typealea
				table_name := 'ppr_scie.pprn_'||codegaspar||'_zonealeaecheance100ans_'||type_value||'_s' ;

				-- suppression de la table si elle existe
				EXECUTE 'DROP TABLE IF EXISTS ' || table_name ;
				-- Création de la nouvelle table avec la structure de la table originale
				EXECUTE 'CREATE TABLE ' || table_name || ' (LIKE ppr_scie.pprn_'||codegaspar||'_zonealeaecheance100ans_s INCLUDING DEFAULTS INCLUDING CONSTRAINTS INCLUDING INDEXES)';

				-- Insertion des données correspondantes dans la nouvelle table
				EXECUTE 'INSERT INTO ' || table_name || ' SELECT * FROM ppr_scie.pprn_'||codegaspar||'_zonealeaecheance100ans_s WHERE typealea = ''' || type_value || ''';';
			END LOOP;
end;
$BODY$;
~~~~

## ZONAGE REGLEMENTAIRE URBA et OBLIGATION DE TRAVAUX
~~~~sql
-- FUNCTION: ppr_scie.fn_zone_reg(text, text)

-- DROP FUNCTION ppr_scie.fn_zone_reg(text, text);

CREATE OR REPLACE FUNCTION ppr_scie.fn_zone_reg(
	codegaspar text,
	dpt text)
    RETURNS void
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
Begin
--- pour lancer la fonction :
--- select * from ppr_scie.fn_zone_reg('76DDTM20120001','076')
	
	--------------------------------------------------------------------------------------
	-- 1/Création de l'architecture de la table ZONE REGLEMENTAIRE URBA
	--------------------------------------------------------------------------------------
	-- format de nom proposé à août 2023 typeppr_codegasparcomplet_nomtable_type_geom
	-- doc pour comprendre la fonction format qui simplifie un peu la syntaxe même si elle nécessite de doubles les ' et les %'
	-- https://www.postgresqltutorial.com/postgresql-string-functions/postgresql-format/	
	-- NB : comme les aléas le zonage règlementaire nécessite un travail en amont sur les géométries
	execute format(
		'drop table if exists ppr_scie.pprn_%s_zone_reglementaire_urba_s', lower(codegaspar)
	);
	execute format(
		'create table ppr_scie.pprn_%s_zone_reglementaire_urba_s
			(
				idzonereglementaire character varying(8),
				codeprocedure character varying(16),
				codezonereglement character varying(255),
				libellezonereglement character varying(255),
				typereglement character varying(2),
				obligationtravaux boolean,
				geom geometry(MultiPolygon,2154),
				CONSTRAINT pprn_%1$s_zone_reglementaire_urba_s_pkey PRIMARY KEY (idzonereglementaire)

			)',
		lower(codegaspar)
	);
			
	--------------------------------------------------------------------------------------
	-- 2/Alimentation de la table ZONE REGLEMENTAIRE URBA à partir de la table ZONE REG
	--------------------------------------------------------------------------------------	
	EXECUTE format(
		'INSERT INTO ppr_scie.pprn_%s_zone_reglementaire_urba_s
		SELECT 
			id_zone,
			id_gaspar,
			codezone,
			nom, 
			typereg,
			case 
				when codezone ilike (''%%rouge%%'') then TRUE
				when codezone ilike (''%%bleu foncé%%'') then TRUE
				else FALSE
			end,
			geom
		FROM ppr_scie.n_zone_reg_pprn_%s_s_%s
		where typereg not in (''05'',''06'')',
		lower(codegaspar),
		right(codegaspar, 8),
		dpt
	);
	
end;
$BODY$;
~~~~


