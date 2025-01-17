/**
 * # ANNEXE E - Code SQL pour la création du gabarit Geopackage
 *
 * Cette annexe comporte les instructions SQL permettant de créer les tables de données [décrites dans ce standard](#tables-du-standard) et de les indexer dans un fichier Geopackage.
 * La variable 2972 doit être remplacé par l'indentifiant du srs correspondant à la zone de projection du jeu de données (ex: "2154" pour la France Métropolitaine )
 * 
 */

/**
 * Insertion des systèmes de coordonnées dans la table gpkg_spatial_ref_sys
 */


INSERT INTO gpkg_spatial_ref_sys VALUES 
  /* Lambert-93 (RGF93LAMB93) - France métropolitaine */
  ('Lambert-93 (RGF93LAMB93)',2154,'EPSG',2154, 'PROJCRS["RGF93 v1 / Lambert-93",BASEGEOGCRS["RGF93 v1",DATUM["Reseau Geodesique Francais 1993 v1",ELLIPSOID["GRS 1980",6378137,298.257222101,LENGTHUNIT["metre",1]]],PRIMEM["Greenwich",0,ANGLEUNIT["degree",0.0174532925199433]],ID["EPSG",4171]],CONVERSION["Lambert-93",METHOD["Lambert Conic Conformal (2SP)",ID["EPSG",9802]],PARAMETER["Latitude of false origin",46.5,ANGLEUNIT["degree",0.0174532925199433],ID["EPSG",8821]],PARAMETER["Longitude of false origin",3,ANGLEUNIT["degree",0.0174532925199433],ID["EPSG",8822]],PARAMETER["Latitude of 1st standard parallel",49,ANGLEUNIT["degree",0.0174532925199433],ID["EPSG",8823]],PARAMETER["Latitude of 2nd standard parallel",44,ANGLEUNIT["degree",0.0174532925199433],ID["EPSG",8824]],PARAMETER["Easting at false origin",700000,LENGTHUNIT["metre",1],ID["EPSG",8826]],PARAMETER["Northing at false origin",6600000,LENGTHUNIT["metre",1],ID["EPSG",8827]]],CS[Cartesian,2],AXIS["easting (X)",east,ORDER[1],LENGTHUNIT["metre",1]],AXIS["northing (Y)",north,ORDER[2],LENGTHUNIT["metre",1]],USAGE[SCOPE["Engineering survey, topographic mapping."],AREA["France - onshore and offshore, mainland and Corsica (France métropolitaine including Corsica)."],BBOX[41.15,-9.86,51.56,10.38]],ID["EPSG",2154]]','France métropolitaine'),
  /* RGAF09UTM20 - Antilles françaises */
  ('Universal transverse Mercator fuseau 20 nord (RGAF09UTM20)',5490,'EPSG',5490, 'PROJCRS["RGAF09 / UTM zone 20N",BASEGEOGCRS["RGAF09",DATUM["Reseau Geodesique des Antilles Francaises 2009",ELLIPSOID["GRS 1980",6378137,298.257222101,LENGTHUNIT["metre",1]]],PRIMEM["Greenwich",0,ANGLEUNIT["degree",0.0174532925199433]],ID["EPSG",5489]],CONVERSION["UTM zone 20N",METHOD["Transverse Mercator",ID["EPSG",9807]],PARAMETER["Latitude of natural origin",0,ANGLEUNIT["degree",0.0174532925199433],ID["EPSG",8801]],PARAMETER["Longitude of natural origin",-63,ANGLEUNIT["degree",0.0174532925199433],ID["EPSG",8802]],PARAMETER["Scale factor at natural origin",0.9996,SCALEUNIT["unity",1],ID["EPSG",8805]],PARAMETER["False easting",500000,LENGTHUNIT["metre",1],ID["EPSG",8806]],PARAMETER["False northing",0,LENGTHUNIT["metre",1],ID["EPSG",8807]]],CS[Cartesian,2],AXIS["(E)",east,ORDER[1],LENGTHUNIT["metre",1]],AXIS["(N)",north,ORDER[2],LENGTHUNIT["metre",1]],USAGE[SCOPE["Engineering survey, topographic mapping."],AREA["French Antilles onshore and offshore west of 60°W - Guadeloupe (including Grande Terre, Basse Terre, Marie Galante, Les Saintes, Iles de la Petite Terre, La Desirade); Martinique; St Barthélemy; northern St Martin."],BBOX[14.08,-63.66,18.31,-60]],ID["EPSG",5490]]','Antilles françaises (Guadeloupe,Saint-Martin,Saint-Barthélemy,Martinique)'),
  /* RGFG95UTM22 - Guyane */
  ('Universal transverse Mercator fuseau 22 nord (RGFG95UTM22)',2972,'EPSG',2972, 'PROJCRS["RGFG95 / UTM zone 22N",BASEGEOGCRS["RGFG95",DATUM["Reseau Geodesique Francais Guyane 1995",ELLIPSOID["GRS 1980",6378137,298.257222101,LENGTHUNIT["metre",1]]],PRIMEM["Greenwich",0,ANGLEUNIT["degree",0.0174532925199433]],ID["EPSG",4624]],CONVERSION["UTM zone 22N",METHOD["Transverse Mercator",ID["EPSG",9807]],PARAMETER["Latitude of natural origin",0,ANGLEUNIT["degree",0.0174532925199433],ID["EPSG",8801]],PARAMETER["Longitude of natural origin",-51,ANGLEUNIT["degree",0.0174532925199433],ID["EPSG",8802]],PARAMETER["Scale factor at natural origin",0.9996,SCALEUNIT["unity",1],ID["EPSG",8805]],PARAMETER["False easting",500000,LENGTHUNIT["metre",1],ID["EPSG",8806]],PARAMETER["False northing",0,LENGTHUNIT["metre",1],ID["EPSG",8807]]],CS[Cartesian,2],AXIS["(E)",east,ORDER[1],LENGTHUNIT["metre",1]],AXIS["(N)",north,ORDER[2],LENGTHUNIT["metre",1]],USAGE[SCOPE["Engineering survey, topographic mapping."],AREA["French Guiana - east of 54°W, onshore and offshore."],BBOX[2.17,-54,8.88,-49.45]],ID["EPSG",2972]]','Guyane'),
  /* RGR92UTM40S - La Réunion */
  ('Universal transverse Mercator fuseau 40 sud (RGR92UTM40S)',2975,'EPSG',2975, 'PROJCRS["RGR92 / UTM zone 40S",BASEGEOGCRS["RGR92",DATUM["Reseau Geodesique de la Reunion 1992",ELLIPSOID["GRS 1980",6378137,298.257222101,LENGTHUNIT["metre",1]]],PRIMEM["Greenwich",0,ANGLEUNIT["degree",0.0174532925199433]],ID["EPSG",4627]],CONVERSION["UTM zone 40S",METHOD["Transverse Mercator",ID["EPSG",9807]],PARAMETER["Latitude of natural origin",0,ANGLEUNIT["degree",0.0174532925199433],ID["EPSG",8801]],PARAMETER["Longitude of natural origin",57,ANGLEUNIT["degree",0.0174532925199433],ID["EPSG",8802]],PARAMETER["Scale factor at natural origin",0.9996,SCALEUNIT["unity",1],ID["EPSG",8805]],PARAMETER["False easting",500000,LENGTHUNIT["metre",1],ID["EPSG",8806]],PARAMETER["False northing",10000000,LENGTHUNIT["metre",1],ID["EPSG",8807]]],CS[Cartesian,2],AXIS["(E)",east,ORDER[1],LENGTHUNIT["metre",1]],AXIS["(N)",north,ORDER[2],LENGTHUNIT["metre",1]],USAGE[SCOPE["Engineering survey, topographic mapping."],AREA["Reunion - onshore and offshore - east of 54°E."],BBOX[-24.72,54,-18.28,58.24]],ID["EPSG",2975]]','La Réunion'),
  /* RGM04UTM38S - Mayotte */
  ('Universal transverse Mercator fuseau 38 sud (RGM04UTM38S)',4471,'EPSG',4471, 'PROJCRS["RGM04 / UTM zone 38S",BASEGEOGCRS["RGM04",DATUM["Reseau Geodesique de Mayotte 2004",ELLIPSOID["GRS 1980",6378137,298.257222101,LENGTHUNIT["metre",1]]],PRIMEM["Greenwich",0,ANGLEUNIT["degree",0.0174532925199433]],ID["EPSG",4470]],CONVERSION["UTM zone 38S",METHOD["Transverse Mercator",ID["EPSG",9807]],PARAMETER["Latitude of natural origin",0,ANGLEUNIT["degree",0.0174532925199433],ID["EPSG",8801]],PARAMETER["Longitude of natural origin",45,ANGLEUNIT["degree",0.0174532925199433],ID["EPSG",8802]],PARAMETER["Scale factor at natural origin",0.9996,SCALEUNIT["unity",1],ID["EPSG",8805]],PARAMETER["False easting",500000,LENGTHUNIT["metre",1],ID["EPSG",8806]],PARAMETER["False northing",10000000,LENGTHUNIT["metre",1],ID["EPSG",8807]]],CS[Cartesian,2],AXIS["(E)",east,ORDER[1],LENGTHUNIT["metre",1]],AXIS["(N)",north,ORDER[2],LENGTHUNIT["metre",1]],USAGE[SCOPE["Engineering survey, topographic mapping."],AREA["Mayotte - onshore and offshore."],BBOX[-14.49,43.68,-11.33,46.7]],ID["EPSG",4471]]','Mayotte'),
  /* RGSPM06U21 - Saint-Pierre-et-Miquelon' */
  ('Universal transverse Mercator fuseau 21 nord (RGSPM06U21)',4467,'EPSG',4467, 'PROJCRS["RGSPM06 / UTM zone 21N",BASEGEOGCRS["RGSPM06",DATUM["Reseau Geodesique de Saint Pierre et Miquelon 2006",ELLIPSOID["GRS 1980",6378137,298.257222101,LENGTHUNIT["metre",1]]],PRIMEM["Greenwich",0,ANGLEUNIT["degree",0.0174532925199433]],ID["EPSG",4463]],CONVERSION["UTM zone 21N",METHOD["Transverse Mercator",ID["EPSG",9807]],PARAMETER["Latitude of natural origin",0,ANGLEUNIT["degree",0.0174532925199433],ID["EPSG",8801]],PARAMETER["Longitude of natural origin",-57,ANGLEUNIT["degree",0.0174532925199433],ID["EPSG",8802]],PARAMETER["Scale factor at natural origin",0.9996,SCALEUNIT["unity",1],ID["EPSG",8805]],PARAMETER["False easting",500000,LENGTHUNIT["metre",1],ID["EPSG",8806]],PARAMETER["False northing",0,LENGTHUNIT["metre",1],ID["EPSG",8807]]],CS[Cartesian,2],AXIS["(E)",east,ORDER[1],LENGTHUNIT["metre",1]],AXIS["(N)",north,ORDER[2],LENGTHUNIT["metre",1]],USAGE[SCOPE["Engineering survey, topographic mapping."],AREA["St Pierre and Miquelon - onshore and offshore."],BBOX[43.41,-57.1,47.37,-55.9]],ID["EPSG",4467]]','Saint-Pierre-et-Miquelon')
 ;

 
/** 
 * 
 * Création de la table `[TypePPR]_[CodeGASPARComplet]_procedure`
 */
 

CREATE TABLE typeppr_codegaspar_procedure ( 
  codeprocedure TEXT(18) NOT NULL PRIMARY KEY, 
  libelleprocedure TEXT NOT NULL, 
  typeprocedure TEXT(10) NOT NULL,
  CONSTRAINT fk_procedure_typeprocedure FOREIGN KEY (typeprocedure) REFERENCES typeprocedure(code)
);
/* Ajout à la table gpkg_contents */
INSERT INTO gpkg_contents VALUES 
  ('typeppr_codegaspar_procedure','attributes','typeppr_codegaspar_procedure','Table Procedure PPR : typeppr codegaspar',(datetime('now')),NULL,NULL,NULL,NULL,NULL)
 ;

/**
 * 
 * Création de la table `[TypePPR]_[CodeGASPARComplet]_revise`
 */



CREATE TABLE typeppr_codegaspar_revise ( 
  codeprocrevisante TEXT(18) NOT NULL, 
  codeprocrevisee TEXT(18) NOT NULL,
  CONSTRAINT pk_revise PRIMARY KEY (codeprocrevisante,codeprocrevisee),
  CONSTRAINT fk_revise_codeprocrevisante FOREIGN KEY (codeprocrevisante) REFERENCES typeppr_codegaspar_procedure(codeprocedure),
  CONSTRAINT fk_revise_codeprocrevisee FOREIGN KEY (codeprocrevisee) REFERENCES typeppr_codegaspar_procedure(codeprocedure)
);
/* Ajout à la table gpkg_contents */
INSERT INTO gpkg_contents VALUES 
  ('typeppr_codegaspar_revise','attributes','typeppr_codegaspar_revise','Table Revise PPR : typeppr codegaspar',(datetime('now')),NULL,NULL,NULL,NULL,NULL)
 ;

/**
 * 
 * Création de la table `[TypePPR]_[CodeGASPARComplet]_perimetre_s`
 */
CREATE TABLE typeppr_codegaspar_perimetre_s ( 
  idperimetre TEXT(15) NOT NULL PRIMARY KEY, 
  codeprocedure TEXT(18) NOT NULL, 
  etatprocedure TEXT(10) NOT NULL, 
  dateetat DATE NOT NULL,
  geom MULTIPOLYGON NOT NULL,
  CONSTRAINT fk_perimetre_s_codeprocedure FOREIGN KEY (codeprocedure) REFERENCES typeppr_codegaspar_procedure(codeprocedure),
  CONSTRAINT fk_perimetre_s_etatprocedure FOREIGN KEY (etatprocedure) REFERENCES typeetatprocedure(code)
);
/* Ajout à la table gpkg_contents - exemple en EPSG:2154*/
INSERT INTO gpkg_contents VALUES 
  ('typeppr_codegaspar_perimetre_s','features','typeppr_codegaspar_perimetre_s','Table Perimetre Surfacique PPR : typeppr codegaspar',(datetime('now')),NULL,NULL,NULL,NULL,2972)
 ;
/* Ajout à la table gpkg_geometry_columns - exemple en EPSG:2154 */
INSERT INTO gpkg_geometry_columns VALUES 
  ('typeppr_codegaspar_perimetre_s','geom','MULTIPOLYGON',2972,0,0)
 ;


/**
 * 
 * Création de la table `[TypePPR]_[CodeGASPARComplet]_perimetreetude_s`
 */

CREATE TABLE typeppr_codegaspar_perimetreetude_s ( 
  idperimetre TEXT(15) NOT NULL PRIMARY KEY, 
  codeprocedure TEXT(18) NOT NULL, 
  etatprocedure TEXT(10) NOT NULL, 
  dateetat DATE NOT NULL,
  geom MULTIPOLYGON NOT NULL,
  CONSTRAINT fk_perimetreetude_s_codeprocedure FOREIGN KEY (codeprocedure) REFERENCES typeppr_codegaspar_procedure(codeprocedure),
  CONSTRAINT fk_perimetreetude_s_etatprocedure FOREIGN KEY (etatprocedure) REFERENCES typeetatprocedure(code)
);
/* Ajout à la table gpkg_contents - exemple en EPSG:2154*/
INSERT INTO gpkg_contents VALUES 
  ('typeppr_codegaspar_perimetreetude_s','features','typeppr_codegaspar_perimetreetude_s','Table PerimetreEtude Surfacique PPR : typeppr codegaspar',(datetime('now')),NULL,NULL,NULL,NULL,2972)
 ;
/* Ajout à la table gpkg_geometry_columns - exemple en EPSG:2154 */
INSERT INTO gpkg_geometry_columns VALUES 
  ('typeppr_codegaspar_perimetreetude_s','geom','MULTIPOLYGON',2972,0,0)
 ;

/**
 * 
 * Création de la table `[TypePPR]_[CodeGASPARComplet]_referenceinternet`
 */


CREATE TABLE typeppr_codegaspar_referenceinternet ( 
  adresse TEXT NOT NULL PRIMARY KEY, 
  codeprocedure TEXT(18) NOT NULL, 
  nomressource TEXT, 
  typereference TEXT(2) NOT NULL,
  description TEXT, 
  CONSTRAINT fk_referenceinternet_codeprocedure FOREIGN KEY (codeprocedure) REFERENCES typeppr_codegaspar_procedure(codeprocedure),
  CONSTRAINT fk_referenceinternet_typereference FOREIGN KEY (typereference) REFERENCES typereference(code)
);
/* Ajout à la table gpkg_contents */
INSERT INTO gpkg_contents VALUES 
  ('typeppr_codegaspar_referenceinternet','attributes','typeppr_codegaspar_referenceinternet','Table Référence Internet PPR : typeppr codegaspar',(datetime('now')),NULL,NULL,NULL,NULL,NULL)
 ;

/**
 * Création de la table `[TypePPR]_[CodeGASPARComplet]_zonealeareference_[CodeAlea]_s`
 */



CREATE TABLE typeppr_codegaspar_zonealeareference_codealea_s ( 
  idzonealea TEXT(15) NOT NULL PRIMARY KEY, 
  codeprocedure TEXT(18) NOT NULL, 
  typealea TEXT(3) NOT NULL,
  niveaualea TEXT(2) NOT NULL,
  occurrence INTEGER, 
  description TEXT, 
  geom POLYGON NOT NULL,
  CONSTRAINT fk_zonealeareference_codealea_codeprocedure FOREIGN KEY (codeprocedure) REFERENCES typeppr_codegaspar_procedure(codeprocedure),
  CONSTRAINT fk_zonealeareference_codealea_typealea FOREIGN KEY (typealea) REFERENCES typealea(code),
  CONSTRAINT fk_zonealeareference_codealea_niveaualea FOREIGN KEY (niveaualea) REFERENCES typeniveaualea(code)
);
/* Ajout à la table gpkg_contents - exemple en EPSG:2154*/
INSERT INTO gpkg_contents VALUES
  ('typeppr_codegaspar_zonealeareference_codealea_s','features','typeppr_codegaspar_zonealeareference_codealea_s','Table Zone Alea de Reference Surfacique PPR : typeppr codegaspar',(datetime('now')),NULL,NULL,NULL,NULL,2972)
 ;
/* Ajout à la table gpkg_geometry_columns */
INSERT INTO gpkg_geometry_columns VALUES
  ('typeppr_codegaspar_zonealeareference_codealea_s','geom','POLYGON',2972,0,0)
 ;

/**
 *
 * Création de la table `[TypePPR]_[CodeGASPARComplet]_zonealeaecheance100ans_[CodeAlea]_s`
 */
CREATE TABLE typeppr_codegaspar_zonealeaecheance100ans_117_s ( 
  idzonealea TEXT(15) NOT NULL PRIMARY KEY, 
  codeprocedure TEXT(18) NOT NULL, 
  typealea TEXT(3) NOT NULL,
  niveaualea TEXT(2) NOT NULL,
  occurrence INTEGER, 
  description TEXT, 
  geom POLYGON NOT NULL,
  CONSTRAINT fk_zonealeaecheance100ans_codealea_codeprocedure FOREIGN KEY (codeprocedure) REFERENCES typeppr_codegaspar_procedure(codeprocedure),
  CONSTRAINT fk_zonealeaecheance100ans_codealea_typealea FOREIGN KEY (typealea) REFERENCES typealea(code),
  CONSTRAINT fk_zonealeaecheance100ans_codealea_niveaualea FOREIGN KEY (niveaualea) REFERENCES typeniveaualea(code)
);
/* Ajout à la table gpkg_contents - exemple en EPSG:2154*/
INSERT INTO gpkg_contents VALUES
  ('typeppr_codegaspar_zonealeaecheance100ans_117_s','features','typeppr_codegaspar_zonealeaecheance100ans_117_s','Table Zone Alea Echéance 100 ans Surfacique PPR : typeppr codegaspar',(datetime('now')),NULL,NULL,NULL,NULL,2972)
 ;
/* Ajout à la table gpkg_geometry_columns */
INSERT INTO gpkg_geometry_columns VALUES
  ('typeppr_codegaspar_zonealeaecheance100ans_117_s','geom','POLYGON',2972,0,0)
 ;

/**
 *
 * Création de la table `[TypePPR]_[CodeGASPARComplet]_zonealeaexceptionnel_[CodeAlea]_s`
 */
CREATE TABLE typeppr_codegaspar_zonealeaexceptionnel_14_s ( 
  idzonealea TEXT(15) NOT NULL PRIMARY KEY, 
  codeprocedure TEXT(18) NOT NULL, 
  typealea TEXT(3) NOT NULL,
  niveaualea TEXT(2),
  occurrence INTEGER, 
  description TEXT, 
  geom POLYGON NOT NULL,
  CONSTRAINT fk_zonealeaexceptionnel_codealea_codeprocedure FOREIGN KEY (codeprocedure) REFERENCES typeppr_codegaspar_procedure(codeprocedure),
  CONSTRAINT fk_zonealeaexceptionnel_codealea_typealea FOREIGN KEY (typealea) REFERENCES typealea(code),
  CONSTRAINT fk_zonealeaexceptionnel_codealea_niveaualea FOREIGN KEY (niveaualea) REFERENCES typeniveaualea(code)
);
/* Ajout à la table gpkg_contents - exemple en EPSG:2154*/
INSERT INTO gpkg_contents VALUES
  ('typeppr_codegaspar_zonealeaexceptionnel_14_s','features','typeppr_codegaspar_zonealeaexceptionnel_14_s','Table Zone Alea Exceptionnel Surfacique PPR : typeppr codegaspar',(datetime('now')),NULL,NULL,NULL,NULL,2972)
 ;
/* Ajout à la table gpkg_geometry_columns */
INSERT INTO gpkg_geometry_columns VALUES
  ('typeppr_codegaspar_zonealeaexceptionnel_14_s','geom','POLYGON',2972,0,0)
 ;

/**
 *
 * Création de la table `[TypePPR]_[CodeGASPARComplet]_zonealeanaturelsynthese_s`
 */
CREATE TABLE typeppr_codegaspar_zonealeanaturelsynthese_s ( 
  idzonealea TEXT(15) NOT NULL PRIMARY KEY, 
  codeprocedure TEXT(18) NOT NULL, 
  typealea TEXT(3) NOT NULL,
  niveaualea TEXT(2),
  occurrence INTEGER, 
  description TEXT, 
  geom POLYGON NOT NULL,
  CONSTRAINT fk_zonealeanaturelsynthese_codeprocedure FOREIGN KEY (codeprocedure) REFERENCES typeppr_codegaspar_procedure(codeprocedure),
  CONSTRAINT fk_zonealeanaturelsynthese_typealea FOREIGN KEY (typealea) REFERENCES typealea(code),
  CONSTRAINT fk_zonealeanaturelsynthese_niveaualea FOREIGN KEY (niveaualea) REFERENCES typeniveaualea(code)
);
/* Ajout à la table gpkg_contents - exemple en EPSG:2154*/
INSERT INTO gpkg_contents VALUES
  ('typeppr_codegaspar_zonealeanaturelsynthese_s','features','typeppr_codegaspar_zonealeanaturelsynthese_s','Table Zone Alea Naturel Synthese Surfacique PPR : typeppr codegaspar',(datetime('now')),NULL,NULL,NULL,NULL,2972)
 ;
/* Ajout à la table gpkg_geometry_columns */
INSERT INTO gpkg_geometry_columns VALUES
  ('typeppr_codegaspar_zonealeanaturelsynthese_s','geom','POLYGON',2972,0,0)
 ;

/**
  * Création de la table `[TypePPR]_[CodeGASPARComplet]_zonemultialeanaturel`
  */
CREATE TABLE typeppr_codegaspar_zonemultialeanaturel (
  typealea TEXT(3) NOT NULL,
  idzonealea TEXT(15) NOT NULL, 
  niveaualea TEXT(2),
  occurrence INTEGER,
  PRIMARY KEY (typealea,idzonealea), 
  CONSTRAINT fk_zonemultialeanaturel_typealea FOREIGN KEY (typealea) REFERENCES typealea(code),
  CONSTRAINT fk_zonemultialeanaturel_zonealea FOREIGN KEY (idzonealea) REFERENCES typeppr_codegaspar_zonealeanaturelsynthese_s(idzonealea),
  CONSTRAINT fk_zonemultialeanaturel_niveaualea FOREIGN KEY (niveaualea) REFERENCES typeniveaualea(code)
);
/* Ajout à la table gpkg_contents */
INSERT INTO gpkg_contents VALUES 
  ('typeppr_codegaspar_zonemultialeanaturel','attributes','typeppr_codegaspar_zonemultialeanaturel','Table des aléas naturels multiples',(datetime('now')),NULL,NULL,NULL,NULL,NULL)
 ;



/** 
  * Création de la table `[TypePPR]_[CodeGASPARComplet]_zonealeatechnorapide_[CodeAlea]_s`
  */
CREATE TABLE typeppr_codegaspar_zonealeatechnorapide_codealea_s ( 
  idzonealea TEXT(15) NOT NULL PRIMARY KEY, 
  codeprocedure TEXT(18) NOT NULL, 
  typealea TEXT(3) NOT NULL,
  niveaualea TEXT(2) NOT NULL,
  occurrence TEXT(1), 
  description TEXT, 
  intensite TEXT(2),
  geom POLYGON NOT NULL,
  CONSTRAINT fk_zonealeatechnorapide_codealea_codeprocedure FOREIGN KEY (codeprocedure) REFERENCES typeppr_codegaspar_procedure(codeprocedure),
  CONSTRAINT fk_zonealeatechnorapide_codealea_typealea FOREIGN KEY (typealea) REFERENCES typealea(code),
  CONSTRAINT fk_zonealeatechnorapide_codealea_niveaualea FOREIGN KEY (niveaualea) REFERENCES typeniveaualea(code),
  CONSTRAINT fk_zonealeatechnorapide_codealea_occurrence FOREIGN KEY (occurrence) REFERENCES typeclasseprobatechno(code),
  CONSTRAINT fk_zonealeatechnorapide_codealea_intensite FOREIGN KEY (intensite) REFERENCES typeintensitetechno(code)
);
/* Ajout à la table gpkg_contents - exemple en EPSG:2154*/
INSERT INTO gpkg_contents VALUES
  ('typeppr_codegaspar_zonealeatechnorapide_codealea_s','features','typeppr_codegaspar_zonealeatechnorapide_codealea_s','Table Zone Alea Technologique Rapide Surfacique PPR : typeppr codegaspar',(datetime('now')),NULL,NULL,NULL,NULL,2972)
 ;
/* Ajout à la table gpkg_geometry_columns */
INSERT INTO gpkg_geometry_columns VALUES
  ('typeppr_codegaspar_zonealeatechnorapide_codealea_s','geom','POLYGON',2972,0,0)
 ;



/**
  * Création de la table `[TypePPR]_[CodeGASPARComplet]_zonealeatechnolent_[CodeAlea]_s`
  */

CREATE TABLE typeppr_codegaspar_zonealeatechnolent_codealea_s ( 
  idzonealea TEXT(15) NOT NULL PRIMARY KEY, 
  codeprocedure TEXT(18) NOT NULL, 
  typealea TEXT(3) NOT NULL,
  niveaualea TEXT(2),
  occurrence TEXT(1), 
  description TEXT, 
  intensite TEXT(2) NOT NULL,
  geom POLYGON NOT NULL,
  CONSTRAINT fk_zonealeatechnolent_codealea_codeprocedure FOREIGN KEY (codeprocedure) REFERENCES typeppr_codegaspar_procedure(codeprocedure),
  CONSTRAINT fk_zonealeatechnolent_codealea_typealea FOREIGN KEY (typealea) REFERENCES typealea(code),
  CONSTRAINT fk_zonealeatechnolent_codealea_niveaualea FOREIGN KEY (niveaualea) REFERENCES typeniveaualea(code),
  CONSTRAINT fk_zonealeatechnolent_codealea_occurrence FOREIGN KEY (occurrence) REFERENCES typeclasseprobatechno(code),
  CONSTRAINT fk_zonealeatechnolent_codealea_intensite FOREIGN KEY (intensite) REFERENCES typeintensitetechno(code)
);
/* Ajout à la table gpkg_contents - exemple en EPSG:2154*/
INSERT INTO gpkg_contents VALUES
  ('typeppr_codegaspar_zonealeatechnolent_codealea_s','features','typeppr_codegaspar_zonealeatechnolent_codealea_s','Table Zone Alea technologique Lent Surfacique PPR : typeppr codegaspar',(datetime('now')),NULL,NULL,NULL,NULL,/*srs_id*/2154)
 ;
/* Ajout à la table gpkg_geometry_columns */
INSERT INTO gpkg_geometry_columns VALUES
  ('typeppr_codegaspar_zonealeatechnolent_codealea_s','geom','POLYGON',/*srs_id*/2154,0,0)
 ;


/**
  * Création de la table `[TypePPR]_[CodeGASPARComplet]_zonealeatechnoprojection_[CodeAlea]_s`
  */
CREATE TABLE typeppr_codegaspar_zonealeatechnoprojection_214_s ( 
  idzonealea TEXT(15) NOT NULL PRIMARY KEY, 
  codeprocedure TEXT(18) NOT NULL, 
  typealea TEXT(3) NOT NULL,
  niveaualea TEXT(2),
  occurrence TEXT(1), 
  description TEXT, 
  intensite TEXT(2) NOT NULL,
  geom POLYGON NOT NULL,
  CONSTRAINT fk_zonealeatechnoprojection_codealea_codeprocedure FOREIGN KEY (codeprocedure) REFERENCES typeppr_codegaspar_procedure(codeprocedure),
  CONSTRAINT fk_zonealeatechnoprojection_codealea_typealea FOREIGN KEY (typealea) REFERENCES typealea(code),
  CONSTRAINT fk_zonealeatechnoprojection_codealea_niveaualea FOREIGN KEY (niveaualea) REFERENCES typeniveaualea(code),
  CONSTRAINT fk_zonealeatechnoprojection_codealea_occurrence FOREIGN KEY (occurrence) REFERENCES typeclasseprobatechno(code),
  CONSTRAINT fk_zonealeatechnoprojection_codealea_intensite FOREIGN KEY (intensite) REFERENCES typeintensitetechno(code)
);
/* Ajout à la table gpkg_contents - exemple en EPSG:2154*/
INSERT INTO gpkg_contents VALUES
  ('typeppr_codegaspar_zonealeatechnoprojection_214_s','features','typeppr_codegaspar_zonealeatechnoprojection_214_s','Table Zone Alea Technologique Projection Surfacique PPR : typeppr codegaspar',(datetime('now')),NULL,NULL,NULL,NULL,2972)
 ;
/* Ajout à la table gpkg_geometry_columns */
INSERT INTO gpkg_geometry_columns VALUES
  ('typeppr_codegaspar_zonealeatechnoprojection_214_s','geom','POLYGON',2972,0,0)
 ;

/**
 *
 * Création de la table `[TypePPR]_[CodeGASPARComplet]_zonealeatechnosynthese_s`
 */
CREATE TABLE typeppr_codegaspar_zonealeatechnosynthese_s ( 
  idzonealea TEXT(15) NOT NULL PRIMARY KEY, 
  codeprocedure TEXT(18) NOT NULL, 
  typealea TEXT(3) NOT NULL,
  niveaualea TEXT(2),
  occurrence TEXT(1), 
  description TEXT, 
  intensite TEXT(2),
  geom POLYGON NOT NULL,
  CONSTRAINT fk_zonealeatechnosynthese_codeprocedure FOREIGN KEY (codeprocedure) REFERENCES typeppr_codegaspar_procedure(codeprocedure),
  CONSTRAINT fk_zonealeatechnosynthese_typealea FOREIGN KEY (typealea) REFERENCES typealea(code),
  CONSTRAINT fk_zonealeatechnosynthese_niveaualea FOREIGN KEY (niveaualea) REFERENCES typeniveaualea(code),
  CONSTRAINT fk_zonealeatechnosynthese_occurrence FOREIGN KEY (occurrence) REFERENCES typeclasseprobatechno(code),
  CONSTRAINT fk_zonealeatechnosynthese_intensite FOREIGN KEY (intensite) REFERENCES typeintensitetechno(code)
);
/* Ajout à la table gpkg_contents - exemple en EPSG:2154*/
INSERT INTO gpkg_contents VALUES
  ('typeppr_codegaspar_zonealeatechnosynthese_s','features','typeppr_codegaspar_zonealeatechnosynthese_s','Table Zone Alea Technologique Synthese Surfacique PPR : typeppr codegaspar',(datetime('now')),NULL,NULL,NULL,NULL,2972)
 ;
/* Ajout à la table gpkg_geometry_columns */
INSERT INTO gpkg_geometry_columns VALUES
  ('typeppr_codegaspar_zonealeatechnosynthese_s','geom','POLYGON',2972,0,0)
 ;

/**
  * Création de la table `[TypePPR]_[CodeGASPARComplet]_zonemultialeatechno`
  */
CREATE TABLE typeppr_codegaspar_zonemultialeatechno (
  typealea TEXT(3) NOT NULL,
  idzonealea TEXT(15) NOT NULL, 
  niveaualea TEXT(2),
  occurrence TEXT(1), 
  intensite TEXT(2),
  PRIMARY KEY (typealea,idzonealea), 
  CONSTRAINT fk_zonemultialeatechno_typealea FOREIGN KEY (typealea) REFERENCES typealea(code),
  CONSTRAINT fk_zonemultialeatechno_zonealea FOREIGN KEY (idzonealea) REFERENCES typeppr_codegaspar_zonealeatechnosynthese_s(idzonealea),
  CONSTRAINT fk_zonemultialeatechno_niveaualea FOREIGN KEY (niveaualea) REFERENCES typeniveaualea(code),
  CONSTRAINT fk_zonemultialeatechno_occurrence FOREIGN KEY (occurrence) REFERENCES typeclasseprobatechno(code),
  CONSTRAINT fk_zonemultialeatechno_intensite FOREIGN KEY (intensite) REFERENCES typeintensitetechno(code)

);
/* Ajout à la table gpkg_contents */
INSERT INTO gpkg_contents VALUES 
  ('typeppr_codegaspar_zonemultialeatechno','attributes','typeppr_codegaspar_zonemultialeatechno','Table des aléas technologiques multiples',(datetime('now')),NULL,NULL,NULL,NULL,NULL)
 ;




/**
 * Création de la table `[TypePPR]_[CodeGASPARComplet]_zoneprotegee_[CodeAlea]_s`
 */
CREATE TABLE typeppr_codegaspar_zoneprotegee_codealea_s ( 
  idzoneprotegee TEXT(15) NOT NULL PRIMARY KEY, 
  codeprocedure TEXT(18) NOT NULL, 
  typealea TEXT(3) NOT NULL,
  niveauprotection TEXT,
  occurrence TEXT, 
  description TEXT, 
  idouvrageprotecteur_s TEXT(50),
  idouvrageprotecteur_l TEXT(50),
  idouvrageprotecteur_p TEXT(50),
  geom POLYGON NOT NULL,
  CONSTRAINT fk_zoneprotegee_codealea_codeprocedure FOREIGN KEY (codeprocedure) REFERENCES typeppr_codegaspar_procedure(codeprocedure),
  CONSTRAINT fk_zoneprotegee_codealea_idouvrageprotecteur_s FOREIGN KEY (idouvrageprotecteur_s) REFERENCES typeppr_codegaspar_ouvrageprotecteur_codealea_s(idouvrageprotecteur),
  CONSTRAINT fk_zoneprotegee_codealea_idouvrageprotecteur_l FOREIGN KEY (idouvrageprotecteur_l) REFERENCES typeppr_codegaspar_ouvrageprotecteur_codealea_l(idouvrageprotecteur),
  CONSTRAINT fk_zoneprotegee_codealea_idouvrageprotecteur_p FOREIGN KEY (idouvrageprotecteur_p) REFERENCES typeppr_codegaspar_ouvrageprotecteur_codealea_p(idouvrageprotecteur),
  CONSTRAINT fk_zoneprotegee_codealea_typealea FOREIGN KEY (typealea) REFERENCES typealea(code)
);
/* Ajout à la table gpkg_contents - exemple en EPSG:2154*/
INSERT INTO gpkg_contents VALUES
  ('typeppr_codegaspar_zoneprotegee_codealea_s','features','typeppr_codegaspar_zoneprotegee_codealea_s','Table Zone Protégée Surfacique PPR : typeppr codegaspar',(datetime('now')),NULL,NULL,NULL,NULL,2972)
 ;
/* Ajout à la table gpkg_geometry_columns */
INSERT INTO gpkg_geometry_columns VALUES
  ('typeppr_codegaspar_zoneprotegee_codealea_s','geom','POLYGON',2972,0,0)
 ;

/**
 * Création de la table `[TypePPR]_[CodeGASPARComplet]_zonedangerspecifique_[CodeAlea]_s`
 */
CREATE TABLE typeppr_codegaspar_zonedangerspecifique_codealea_s ( 
  idzonedanger TEXT(15) NOT NULL PRIMARY KEY, 
  codeprocedure TEXT(18) NOT NULL, 
  typealea TEXT(3) NOT NULL,
  niveaualea TEXT(2) NOT NULL,
  typesuralea TEXT(2) NOT NULL,
  description TEXT, 
  idouvrageprotecteur_s TEXT(50),
  idouvrageprotecteur_l TEXT(50),
  idouvrageprotecteur_p TEXT(50),
  geom POLYGON NOT NULL,
  CONSTRAINT fk_zonedangerspecifique_codealea_codeprocedure FOREIGN KEY (codeprocedure) REFERENCES typeppr_codegaspar_procedure(codeprocedure),
  CONSTRAINT fk_zonedangerspecifique_codealea_typealea FOREIGN KEY (typealea) REFERENCES typealea(code),
  CONSTRAINT fk_zonedangerspecifique_codealea_niveaualea FOREIGN KEY (niveaualea) REFERENCES typeniveaualea(code),
  CONSTRAINT fk_zonedangerspecifique_codealea_idouvrageprotecteur_s FOREIGN KEY (idouvrageprotecteur_s) REFERENCES typeppr_codegaspar_ouvrageprotecteur_codealea_s(idouvrageprotecteur),
  CONSTRAINT fk_zonedangerspecifique_codealea_idouvrageprotecteur_l FOREIGN KEY (idouvrageprotecteur_l) REFERENCES typeppr_codegaspar_ouvrageprotecteur_codealea_l(idouvrageprotecteur),
  CONSTRAINT fk_zonedangerspecifique_codealea_idouvrageprotecteur_p FOREIGN KEY (idouvrageprotecteur_p) REFERENCES typeppr_codegaspar_ouvrageprotecteur_codealea_p(idouvrageprotecteur),
  CONSTRAINT fk_zonedangerspecifique_codealea_typesuralea FOREIGN KEY (typesuralea) REFERENCES typesuralea(code)
);
/* Ajout à la table gpkg_contents - exemple en EPSG:2154*/
INSERT INTO gpkg_contents VALUES
  ('typeppr_codegaspar_zonedangerspecifique_codealea_s','features','typeppr_codegaspar_zonedangerspecifique_codealea_s','Table Zone de danger Spécifique Surfacique PPR : typeppr codegaspar',(datetime('now')),NULL,NULL,NULL,NULL,2972)
 ;
/* Ajout à la table gpkg_geometry_columns */
INSERT INTO gpkg_geometry_columns VALUES
  ('typeppr_codegaspar_zonedangerspecifique_codealea_s','geom','POLYGON',2972,0,0)
 ;


/**
 * Création des tables `[TypePPR]_[CodeGASPARComplet]_ouvrageprotecteur_[CodeAlea]_s|l|p`
 */

/* Table Multipolygon */
CREATE TABLE typeppr_codegaspar_ouvrageprotecteur_codealea_s ( 
  idouvrageprotecteur TEXT(15) NOT NULL PRIMARY KEY,
  idrefexterne TEXT(50), 
  refexterne TEXT(2) NOT NULL,
  refexterneautre TEXT,
  typeouvrageprotecteur TEXT(2), 
  roleprotection BOOLEAN,
  occurrence TEXT,
  geom MULTIPOLYGON NOT NULL,
  CONSTRAINT fk_ouvrageprotecteur_codealea_s_refexterne FOREIGN KEY (refexterne) REFERENCES typerefexterneouvrage(code),
  CONSTRAINT fk_ouvrageprotecteur_codealea_s_typeouvrage FOREIGN KEY (typeouvrageprotecteur) REFERENCES typeouvrageprotecteur(code)
);
/* Table Linestring */
CREATE TABLE typeppr_codegaspar_ouvrageprotecteur_codealea_l ( 
  idouvrageprotecteur TEXT(15) NOT NULL PRIMARY KEY,
  idrefexterne TEXT(50), 
  refexterne TEXT(2) NOT NULL,
  refexterneautre TEXT,
  typeouvrageprotecteur TEXT(2), 
  roleProtection BOOLEAN,
  occurrence TEXT,
  geom MULTILINESTRING NOT NULL,
  CONSTRAINT fk_ouvrageprotecteur_codealea_l_refexterne FOREIGN KEY (refexterne) REFERENCES typerefexterneouvrage(code),
  CONSTRAINT fk_ouvrageprotecteur_codealea_l_typeouvrage FOREIGN KEY (typeouvrageprotecteur) REFERENCES typeouvrageprotecteur(code)
);
/* Table Point */
CREATE TABLE typeppr_codegaspar_ouvrageprotecteur_codealea_p ( 
  idouvrageprotecteur TEXT(15) NOT NULL PRIMARY KEY,
  idrefexterne TEXT(50), 
  refexterne TEXT(2) NOT NULL,
  refexterneautre TEXT,
  typeouvrageprotecteur TEXT(2), 
  roleprotection BOOLEAN,
  occurrence TEXT,
  geom MULTIPOINT NOT NULL,
  CONSTRAINT fk_ouvrageprotecteur_codealea_p_refexterne FOREIGN KEY (refexterne) REFERENCES typerefexterneouvrage(code),
  CONSTRAINT fk_ouvrageprotecteur_codealea_p_typeouvrage FOREIGN KEY (typeouvrageprotecteur) REFERENCES typeouvrageprotecteur(code)
);
/* Ajout à la table gpkg_contents - exemple en EPSG:2154*/
INSERT INTO gpkg_contents VALUES
  ('typeppr_codegaspar_ouvrageprotecteur_codealea_s','features','typeppr_codegaspar_ouvrageprotecteur_codealea_s','Table Ouvrage de protection Surfacique PPR : typeppr codegaspar',(datetime('now')),NULL,NULL,NULL,NULL,2972),
  ('typeppr_codegaspar_ouvrageprotecteur_codealea_l','features','typeppr_codegaspar_ouvrageprotecteur_codealea_l','Table Ouvrage de protection Linéaire PPR : typeppr codegaspar',(datetime('now')),NULL,NULL,NULL,NULL,2972),
  ('typeppr_codegaspar_ouvrageprotecteur_codealea_p','features','typeppr_codegaspar_ouvrageprotecteur_codealea_p','Table Ouvrage de protection Ponctuel PPR : typeppr codegaspar',(datetime('now')),NULL,NULL,NULL,NULL,2972)
 ;
/* Ajout à la table gpkg_geometry_columns */
INSERT INTO gpkg_geometry_columns VALUES
  ('typeppr_codegaspar_ouvrageprotecteur_codealea_s','geom','MULTIPOLYGON',2972,0,0),
  ('typeppr_codegaspar_ouvrageprotecteur_codealea_l','geom','MULTILINESTRING',2972,0,0),
  ('typeppr_codegaspar_ouvrageprotecteur_codealea_p','geom','MULTIPOINT',2972,0,0)
 ;


/**
 * Création des tables `[TypePPR]_[CodeGASPARComplet]_originerisque_s|l|p`
 */

/* Table Multipolygon */
CREATE TABLE typeppr_codegaspar_originerisque_s ( 
  idoriginerisque TEXT(15) NOT NULL PRIMARY KEY,
  codeprocedure TEXT(18) NOT NULL,
  idrefexterne TEXT(50), 
  refexterne TEXT,
  nom TEXT NOT NULL, 
  geom MULTIPOLYGON NOT NULL,
  CONSTRAINT fk_originerisque_s_codeprocedure FOREIGN KEY (codeprocedure) REFERENCES typeppr_codegaspar_procedure(codeprocedure)
);
/* Table Linestring */
CREATE TABLE typeppr_codegaspar_originerisque_l ( 
  idoriginerisque TEXT(15) NOT NULL PRIMARY KEY,
  codeprocedure TEXT(18) NOT NULL,
  idrefexterne TEXT(50), 
  refexterne TEXT,
  nom TEXT NOT NULL, 
  geom MULTILINESTRING NOT NULL,
  CONSTRAINT fk_originerisque_l_codeprocedure FOREIGN KEY (codeprocedure) REFERENCES typeppr_codegaspar_procedure(codeprocedure)
);
/* Table Point */
CREATE TABLE typeppr_codegaspar_originerisque_p ( 
  idoriginerisque TEXT(15) NOT NULL PRIMARY KEY,
  codeprocedure TEXT(18) NOT NULL,
  idrefexterne TEXT(50), 
  refexterne TEXT,
  nom TEXT NOT NULL, 
  geom MULTIPOINT NOT NULL,
  CONSTRAINT fk_originerisque_p_codeprocedure FOREIGN KEY (codeprocedure) REFERENCES typeppr_codegaspar_procedure(codeprocedure)
);
/* Ajout à la table gpkg_contents - exemple en EPSG:2154*/
INSERT INTO gpkg_contents VALUES
  ('typeppr_codegaspar_originerisque_s','features','typeppr_codegaspar_originerisque_s','Table Origine du risque Surfacique PPR : typeppr codegaspar',(datetime('now')),NULL,NULL,NULL,NULL,2972),
  ('typeppr_codegaspar_originerisque_l','features','typeppr_codegaspar_originerisque_l','Table Origine du risque Linéaire PPR : typeppr codegaspar',(datetime('now')),NULL,NULL,NULL,NULL,2972),
  ('typeppr_codegaspar_originerisque_p','features','typeppr_codegaspar_originerisque_p','Table Origine du risque Ponctuel PPR : typeppr codegaspar',(datetime('now')),NULL,NULL,NULL,NULL,2972)
 ;
/* Ajout à la table gpkg_geometry_columns */
INSERT INTO gpkg_geometry_columns VALUES
  ('typeppr_codegaspar_originerisque_s','geom','MULTIPOLYGON',2972,0,0),
  ('typeppr_codegaspar_originerisque_l','geom','MULTILINESTRING',2972,0,0),
  ('typeppr_codegaspar_originerisque_p','geom','MULTIPOINT',2972,0,0)
 ;


/**
 * Création des tables `[TypePPR]_[CodeGASPARComplet]_enjeu_s|l|p`
 */

/* Table Multipolygon */
CREATE TABLE typeppr_codegaspar_enjeu_s ( 
  idenjeu TEXT(15) NOT NULL PRIMARY KEY, 
  idrefexterne TEXT(50), 
  refexterne TEXT,
  codeprocedure TEXT(18) NOT NULL,
  nomenjeu TEXT NOT NULL, 
  codeenjeu TEXT NOT NULL, 
  nomenclatureenjeu TEXT NOT NULL,
  dateenjeu DATE NOT NULL, 
  geom MULTIPOLYGON NOT NULL,
  CONSTRAINT fk_enjeu_s_codeprocedure FOREIGN KEY (codeprocedure) REFERENCES typeppr_codegaspar_procedure(codeprocedure)
);
/* Table Linestring */
CREATE TABLE typeppr_codegaspar_enjeu_l ( 
  idenjeu TEXT(15) NOT NULL PRIMARY KEY, 
  idrefexterne TEXT(50), 
  refexterne TEXT,
  codeprocedure TEXT(18) NOT NULL,
  nomenjeu TEXT NOT NULL, 
  codeenjeu TEXT NOT NULL, 
  nomenclatureenjeu TEXT NOT NULL,
  dateenjeu DATE NOT NULL, 
  geom MULTILINESTRING NOT NULL,
  CONSTRAINT fk_enjeu_l_codeprocedure FOREIGN KEY (codeprocedure) REFERENCES typeppr_codegaspar_procedure(codeprocedure)
);
/* Table Point */
CREATE TABLE typeppr_codegaspar_enjeu_p ( 
  idenjeu TEXT(15) NOT NULL PRIMARY KEY, 
  idrefexterne TEXT(50), 
  refexterne TEXT,
  codeprocedure TEXT(18) NOT NULL,
  nomenjeu TEXT NOT NULL, 
  codeenjeu TEXT NOT NULL, 
  nomenclatureenjeu TEXT NOT NULL,
  dateenjeu DATE NOT NULL, 
  geom MULTIPOINT NOT NULL,
  CONSTRAINT fk_enjeu_p_codeprocedure FOREIGN KEY (codeprocedure) REFERENCES typeppr_codegaspar_procedure(codeprocedure)
);
/* Ajout à la table gpkg_contents - exemple en EPSG:2154*/
INSERT INTO gpkg_contents VALUES
  ('typeppr_codegaspar_enjeu_s','features','typeppr_codegaspar_enjeu_s','Table Enjeux Surfacique PPR : typeppr codegaspar',(datetime('now')),NULL,NULL,NULL,NULL,2972),
  ('typeppr_codegaspar_enjeu_l','features','typeppr_codegaspar_enjeu_l','Table Enjeux Linéaire PPR : typeppr codegaspar',(datetime('now')),NULL,NULL,NULL,NULL,2972),
  ('typeppr_codegaspar_enjeu_p','features','typeppr_codegaspar_enjeu_p','Table Enjeux Ponctuel PPR : typeppr codegaspar',(datetime('now')),NULL,NULL,NULL,NULL,2972)
 ;
/* Ajout à la table gpkg_geometry_columns */
INSERT INTO gpkg_geometry_columns VALUES
  ('typeppr_codegaspar_enjeu_s','geom','MULTIPOLYGON',2972,0,0),
  ('typeppr_codegaspar_enjeu_l','geom','MULTILINESTRING',2972,0,0),
  ('typeppr_codegaspar_enjeu_p','geom','MULTIPOINT',2972,0,0)
 ;



/**
 * Création de la table `[TypePPR]_[CodeGASPARComplet]_typevulnerabilite`
 */
CREATE TABLE typeppr_codegaspar_typevulnerabilite ( 
  idenjeu_s TEXT(15), 
  idenjeu_l TEXT(15), 
  idenjeu_p TEXT(15), 
  nom TEXT NOT NULL, 
  description TEXT, 
  valeur TEXT NOT NULL,
  CONSTRAINT fk_typevulnerabilite_idenjeu_s FOREIGN KEY (idenjeu_s) REFERENCES typeppr_codegaspar_enjeu_s(idenjeu),
  CONSTRAINT fk_typevulnerabilite_idenjeu_l FOREIGN KEY (idenjeu_l) REFERENCES typeppr_codegaspar_enjeu_l(idenjeu),
  CONSTRAINT fk_typevulnerabilite_idenjeu_p FOREIGN KEY (idenjeu_p) REFERENCES typeppr_codegaspar_enjeu_p(idenjeu),
  CONSTRAINT pk_typevulnerabilite PRIMARY KEY (idenjeu_s,idenjeu_l,idenjeu_p,nom,valeur)
);
/* Ajout à la table gpkg_contents */
INSERT INTO gpkg_contents VALUES 
  ('typeppr_codegaspar_typevulnerabilite','attributes','typeppr_codegaspar_typevulnerabilite','Table Type Vulnerabilites PPR : typeppr codegaspar',(datetime('now')),NULL,NULL,NULL,NULL,NULL)
 ;


/**
 * Création des tables `[TypePPR]_[CodeGASPARComplet]_zonereglementaireurba_s|l|p`
 */
/* Table Multipolygon */
CREATE TABLE typeppr_codegaspar_zonereglementaireurba_s ( 
  idzonereglementaire TEXT(15) NOT NULL PRIMARY KEY, 
  codeprocedure TEXT(18) NOT NULL, 
  codezonereglement TEXT NOT NULL, 
  libellezonereglement TEXT NOT NULL, 
  typereglement TEXT(2) NOT NULL,
  existemesuresobligatoires BOOLEAN, 
  geom POLYGON NOT NULL,
  CONSTRAINT fk_zonereglementaireurba_s_codeprocedure FOREIGN KEY (codeprocedure) REFERENCES typeppr_codegaspar_procedure(codeprocedure),
  CONSTRAINT fk_zonereglementaireurba_s_typereglement FOREIGN KEY (typereglement) REFERENCES typereglementurba(code)
);
/* Table Linestring */
CREATE TABLE typeppr_codegaspar_zonereglementaireurba_l ( 
  idzonereglementaire TEXT(15) NOT NULL PRIMARY KEY, 
  codeprocedure TEXT(18) NOT NULL, 
  codezonereglement TEXT NOT NULL, 
  libellezonereglement TEXT NOT NULL, 
  typereglement TEXT(2) NOT NULL,
  existemesuresobligatoires BOOLEAN, 
  geom LINESTRING NOT NULL,
  CONSTRAINT fk_zonereglementaireurba_l_codeprocedure FOREIGN KEY (codeprocedure) REFERENCES typeppr_codegaspar_procedure(codeprocedure),
  CONSTRAINT fk_zonereglementaireurba_l_typereglement FOREIGN KEY (typereglement) REFERENCES typereglementurba(code)
);
/* Table Point */
CREATE TABLE typeppr_codegaspar_zonereglementaireurba_p ( 
  idzonereglementaire TEXT(15) NOT NULL PRIMARY KEY, 
  codeprocedure TEXT(18) NOT NULL, 
  codezonereglement TEXT NOT NULL, 
  libellezonereglement TEXT NOT NULL, 
  typereglement TEXT(2) NOT NULL,
  existemesuresobligatoires BOOLEAN, 
  geom POINT NOT NULL,
  CONSTRAINT fk_zonereglementaireurba_p_codeprocedure FOREIGN KEY (codeprocedure) REFERENCES typeppr_codegaspar_procedure(codeprocedure),
  CONSTRAINT fk_zonereglementaireurba_p_typereglement FOREIGN KEY (typereglement) REFERENCES typereglementurba(code)
);
/* Ajout à la table gpkg_contents - exemple en EPSG:2154*/
INSERT INTO gpkg_contents VALUES
  ('typeppr_codegaspar_zonereglementaireurba_s','features','typeppr_codegaspar_zonereglementaireurba_s','Table Zone Réglementaire Surfacique PPR : typeppr codegaspar',(datetime('now')),NULL,NULL,NULL,NULL,2972),
  ('typeppr_codegaspar_zonereglementaireurba_l','features','typeppr_codegaspar_zonereglementaireurba_l','Table Zone Réglementaire Linéaire PPR : typeppr codegaspar',(datetime('now')),NULL,NULL,NULL,NULL,2972),
  ('typeppr_codegaspar_zonereglementaireurba_p','features','typeppr_codegaspar_zonereglementaireurba_p','Table Zone Réglementaire Ponctuel PPR : typeppr codegaspar',(datetime('now')),NULL,NULL,NULL,NULL,2972)
 ;
/* Ajout à la table gpkg_geometry_columns */
INSERT INTO gpkg_geometry_columns VALUES
  ('typeppr_codegaspar_zonereglementaireurba_s','geom','POLYGON',2972,0,0),
  ('typeppr_codegaspar_zonereglementaireurba_l','geom','LINESTRING',2972,0,0),
  ('typeppr_codegaspar_zonereglementaireurba_p','geom','POINT',2972,0,0)
 ;


/**
 * Création des tables `[TypePPR]_[CodeGASPARComplet]_zonereglementairefoncier_s|l|p`
 */
/* Table Multipolygon */
CREATE TABLE typeppr_codegaspar_zonereglementairefoncier_s ( 
  idzonereglementaire TEXT(15) NOT NULL PRIMARY KEY, 
  codeprocedure TEXT(18) NOT NULL, 
  codezonereglement TEXT NOT NULL, 
  libellezonereglement TEXT NOT NULL, 
  typereglement TEXT(2) NOT NULL,
  geom POLYGON NOT NULL,
  CONSTRAINT fk_zonereglementairefoncier_s_codeprocedure FOREIGN KEY (codeprocedure) REFERENCES typeppr_codegaspar_procedure(codeprocedure),
  CONSTRAINT fk_zonereglementairefoncier_s_typereglement FOREIGN KEY (typereglement) REFERENCES typereglementfoncier(code)
);
/* Table Linestring */
CREATE TABLE typeppr_codegaspar_zonereglementairefoncier_l ( 
  idzonereglementaire TEXT(15) NOT NULL PRIMARY KEY, 
  codeprocedure TEXT(18) NOT NULL, 
  codezonereglement TEXT NOT NULL, 
  libellezonereglement TEXT NOT NULL, 
  typereglement TEXT(2) NOT NULL,
  geom LINESTRING NOT NULL,
  CONSTRAINT fk_zonereglementairefoncier_l_codeprocedure FOREIGN KEY (codeprocedure) REFERENCES typeppr_codegaspar_procedure(codeprocedure),
  CONSTRAINT fk_zonereglementairefoncier_l_typereglement FOREIGN KEY (typereglement) REFERENCES typereglementfoncier(code)
);
/* Table Point */
CREATE TABLE typeppr_codegaspar_zonereglementairefoncier_p ( 
  idzonereglementaire TEXT(15) NOT NULL PRIMARY KEY, 
  codeprocedure TEXT(18) NOT NULL, 
  codezonereglement TEXT NOT NULL, 
  libellezonereglement TEXT NOT NULL, 
  typereglement TEXT(2) NOT NULL,
  geom POINT NOT NULL,
  CONSTRAINT fk_zonereglementairefoncier_p_codeprocedure FOREIGN KEY (codeprocedure) REFERENCES typeppr_codegaspar_procedure(codeprocedure),
  CONSTRAINT fk_zonereglementairefoncier_p_typereglement FOREIGN KEY (typereglement) REFERENCES typereglementfoncier(code)
);
/* Ajout à la table gpkg_contents - exemple en EPSG:2154*/
INSERT INTO gpkg_contents VALUES
  ('typeppr_codegaspar_zonereglementairefoncier_s','features','typeppr_codegaspar_zonereglementairefoncier_s','Table Zone Réglementaire Foncier Surfacique PPR : typeppr codegaspar',(datetime('now')),NULL,NULL,NULL,NULL,2972),
  ('typeppr_codegaspar_zonereglementairefoncier_l','features','typeppr_codegaspar_zonereglementairefoncier_l','Table Zone Réglementaire Foncier Linéaire PPR : typeppr codegaspar',(datetime('now')),NULL,NULL,NULL,NULL,2972),
  ('typeppr_codegaspar_zonereglementairefoncier_p','features','typeppr_codegaspar_zonereglementairefoncier_p','Table Zone Réglementaire Foncier Ponctuel PPR : typeppr codegaspar',(datetime('now')),NULL,NULL,NULL,NULL,2972)
 ;
/* Ajout à la table gpkg_geometry_columns */
INSERT INTO gpkg_geometry_columns VALUES
  ('typeppr_codegaspar_zonereglementairefoncier_s','geom','POLYGON',2972,0,0),
  ('typeppr_codegaspar_zonereglementairefoncier_l','geom','LINESTRING',2972,0,0),
  ('typeppr_codegaspar_zonereglementairefoncier_p','geom','POINT',2972,0,0)
 ;

/**
  * Création de la table `[TypePPR]_[CodeGASPARComplet]_zoneregmultialea`
  */
CREATE TABLE typeppr_codegaspar_zoneregmultialea (
  idzoneregmultialea INTEGER NOT NULL,
  typealea TEXT(3) NOT NULL,
  idzonereglementaire_u_s TEXT(15), 
  idzonereglementaire_u_l TEXT(15), 
  idzonereglementaire_u_p TEXT(15), 
  idzonereglementaire_f_s TEXT(15), 
  idzonereglementaire_f_l TEXT(15), 
  idzonereglementaire_f_p TEXT(15), 
  CONSTRAINT fk_zoneregmultialea_typealea FOREIGN KEY (typealea) REFERENCES typealea(code),
  CONSTRAINT fk_zoneregmultialea_zonereg_us FOREIGN KEY (idzonereglementaire_u_s) REFERENCES typeppr_codegaspar_zonereglementaireurba_s(idzonereglementaire),
  CONSTRAINT fk_zoneregmultialea_zonereg_ul FOREIGN KEY (idzonereglementaire_u_l) REFERENCES typeppr_codegaspar_zonereglementaireurba_l(idzonereglementaire),
  CONSTRAINT fk_zoneregmultialea_zonereg_up FOREIGN KEY (idzonereglementaire_u_p) REFERENCES typeppr_codegaspar_zonereglementaireurba_p(idzonereglementaire),
  CONSTRAINT fk_zoneregmultialea_zonereg_fs FOREIGN KEY (idzonereglementaire_f_s) REFERENCES typeppr_codegaspar_zonereglementairefoncier_s(idzonereglementaire),
  CONSTRAINT fk_zoneregmultialea_zonereg_fl FOREIGN KEY (idzonereglementaire_f_l) REFERENCES typeppr_codegaspar_zonereglementairefoncier_l(idzonereglementaire),
  CONSTRAINT fk_zoneregmultialea_zonereg_fp FOREIGN KEY (idzonereglementaire_f_p) REFERENCES typeppr_codegaspar_zonereglementairefoncier_p(idzonereglementaire),
  CHECK (
    (idzonereglementaire_u_s IS NOT NULL AND idzonereglementaire_u_l IS NULL AND idzonereglementaire_u_p IS NULL AND idzonereglementaire_f_s IS NULL AND idzonereglementaire_f_l IS NULL AND idzonereglementaire_f_p IS NULL ) OR
    (idzonereglementaire_u_s IS NULL AND idzonereglementaire_u_l IS NOT NULL AND idzonereglementaire_u_p IS NULL AND idzonereglementaire_f_s IS NULL AND idzonereglementaire_f_l IS NULL AND idzonereglementaire_f_p IS NULL ) OR
    (idzonereglementaire_u_s IS NULL AND idzonereglementaire_u_l IS NULL AND idzonereglementaire_u_p IS NOT NULL AND idzonereglementaire_f_s IS NULL AND idzonereglementaire_f_l IS NULL AND idzonereglementaire_f_p IS NULL ) OR
    (idzonereglementaire_u_s IS NULL AND idzonereglementaire_u_l IS NULL AND idzonereglementaire_u_p IS NULL AND idzonereglementaire_f_s IS NOT NULL AND idzonereglementaire_f_l IS NULL AND idzonereglementaire_f_p IS NULL ) OR
    (idzonereglementaire_u_s IS NULL AND idzonereglementaire_u_l IS NULL AND idzonereglementaire_u_p IS NULL AND idzonereglementaire_f_s IS NULL AND idzonereglementaire_f_l IS NOT NULL AND idzonereglementaire_f_p IS NULL ) OR
    (idzonereglementaire_u_s IS NULL AND idzonereglementaire_u_l IS NULL AND idzonereglementaire_u_p IS NULL AND idzonereglementaire_f_s IS NULL AND idzonereglementaire_f_l IS NULL AND idzonereglementaire_f_p IS NOT NULL )
  )
);
/* Ajout à la table gpkg_contents */
INSERT INTO gpkg_contents VALUES 
  ('typeppr_codegaspar_zoneregmultialea','attributes','typeppr_codegaspar_zoneregmultialea','Table des zonages reglementaires multi aléas',(datetime('now')),NULL,NULL,NULL,NULL,NULL)
 ;


/**
 * Création de la table d'enumeration `typeprocedure`
 */
CREATE TABLE typeprocedure (
  code TEXT(10) NOT NULL PRIMARY KEY,
  libelle TEXT(80) NOT NULL
);
INSERT INTO typeprocedure VALUES 
  ('PPRN','Plan de Prévention des Risques Naturels'),
  ('PPRN-I','Plan de Prévention des Risques Naturels Inondation'),
  ('PPRN-L','Plan de Prévention des Risques Naturels Littoral'),
  ('PPRN-Mvt','Plan de Prévention des Risques Naturels Mouvement de Terrain'),
  ('PPRN-Multi','Plan de Prévention des Risques Naturels Multirisques'),
  ('PPRN-S','Plan de Prévention des Risques Naturels Séisme'),
  ('PPRN-Av','Plan de Prévention des Risques Naturels Avalanches'),
  ('PPRN-Ev','Plan de Prévention des Risques Naturels Eruption volcanique'),
  ('PPRN-If','Plan de Prévention des Risques Naturels Incendie de forêt'),
  ('PPRN-Cy','Plan de Prévention des Risques Naturels Cyclone'),
  ('PPRN-Rad','Plan de Prévention des Risques Naturels Radon'),
  ('PPRT','Plan de Prévention des Risques Technologiques')
 ;
/* Ajout à la table gpkg_contents */
INSERT INTO gpkg_contents VALUES 
  ('typeprocedure','attributes','typeprocedure','Enumeration valeurs possibles de types de procédures',(datetime('now')),NULL,NULL,NULL,NULL,NULL)
 ;



/**
 * Création de la table d'enumeration `typeetatprocedure`
 */
CREATE TABLE typeetatprocedure (
  code TEXT(10) NOT NULL PRIMARY KEY,
  libelle TEXT(50) NOT NULL
);
INSERT INTO typeetatprocedure VALUES 
  ('DEB_PRG','Programmation'),
  ('DEB_MTG','Montage'),
  ('PRESCRIT','Prescrit'),
  ('PAC','Porté à connaissance'),
  ('PROROGE','Prorogé'),
  ('ANTICIPE','Anticipé'),
  ('APPROUVE','Approuvé'),
  ('ANNULE','Annulé'),
  ('ABROGE','Abrogé')
 ;
/* Ajout à la table gpkg_contents */
INSERT INTO gpkg_contents VALUES 
  ('typeetatprocedure','attributes','typeetatprocedure','Enumeration valeurs possibles des états de procédures',(datetime('now')),NULL,NULL,NULL,NULL,NULL)
 ;


/**
 * Création de la table d'enumeration `typereference`
 */
CREATE TABLE typereference (
  code TEXT(2) NOT NULL PRIMARY KEY,
  libelle TEXT(50) NOT NULL
);
INSERT INTO typereference VALUES 
  ('01','Règlement non approuvé'),
  ('02','Règlement approuvé'),
  ('03','Zonage réglementaire non approuvé'),
  ('04','Zonage réglementaire approuvé'),
  ('05','Cartes approuvées'),
  ('06','Autres cartes'),
  ('99','Autres')
 ;
/* Ajout à la table gpkg_contents */
INSERT INTO gpkg_contents VALUES 
  ('typereference','attributes','typereference','Enumeration valeurs possibles de types de références internet',(datetime('now')),NULL,NULL,NULL,NULL,NULL)
 ;


/**
 * Création de la table d'enumeration `typealea`
 */
CREATE TABLE typealea (
  code TEXT(3) NOT NULL PRIMARY KEY,
  libelle TEXT(150) NOT NULL
);
INSERT INTO typealea VALUES 
  ('112','Risque Naturel ; Inondation ; Par une crue à débordement lent de cours d''eau'),
  ('113','Risque Naturel ; Inondation ; Par une crue torrentielle ou à montée rapide de cours d''eau'),
  ('114','Risque Naturel ; Inondation ; Par ruissellement et coulée de boue'),
  ('115','Risque Naturel ; Inondation ; Par lave torrentielle (torrent et talweg) '),
  ('116','Risque Naturel ; Inondation ; Par remontées de nappes naturelles'),
  ('117','Risque Naturel ; Inondation ; Par submersion marine'),
  ('121','Risque Naturel ; Mouvement de terrain ; Affaissement et effondrements d''origine anthropique (anciennes carrières souterraines, hors mines)'),
  ('122','Risque Naturel ; Mouvement de terrain ; Affaissement et effondrements d''origine naturelle (cavités souterraines)'),
  ('123','Risque Naturel ; Mouvement de terrain ; Eboulement ou chutes de pierres et de blocs'),
  ('124','Risque Naturel ; Mouvement de terrain ; Glissement de terrain'),
  ('125','Risque Naturel ; Mouvement de terrain ; Avancée dunaire'),
  ('126','Risque Naturel ; Mouvement de terrain ; Recul du trait de côte et de falaises'),
  ('127','Risque Naturel ; Mouvement de terrain ; Tassement différentiels'),
  ('13','Risque Naturel ; Séisme'),
  ('14','Risque Naturel ; Avalanche'),
  ('15','Risque Naturel ; Eruption volcanique'),
  ('16','Risque Naturel ; Feu de forêt'),
  ('171','Risque Naturel ; Phénomène lié à l''atmosphère ; Cyclone / Ouragan'),
  ('172','Risque Naturel ; Phénomène lié à l''atmosphère ; Tempête et grains (vent)'),
  ('174','Risque Naturel ; Phénomène lié à l''atmosphère ; Foudre'),
  ('175','Risque Naturel ; Phénomène lié à l''atmosphère ; Grêle'), 
  ('176','Risque Naturel ; Phénomène lié à l''atmosphère ; Neige et pluies verglaçantes'),
  ('18','Risque Naturel ; Radon'),
  ('211','Risque technologique ; Risque Industriel ; Effet thermique'),
  ('212','Risque technologique ; Risque Industriel ; Effet de surpression'), 
  ('213','Risque technologique ; Risque Industriel ; Effet toxique '),
  ('214','Risque technologique ; Risque Industriel ; Effet de projection'),
  ('22','Risque technologique ; Nucléaire'),
  ('23','Risque technologique ; Rupture de barrage'),
  ('24','Risque technologique ; Transport de marchandises dangereuses'),
  ('25','Risque technologique ; Engins de guerre'),
  ('311','Risque minier ; Affaissement minier ; Effondrements généralisés'), 
  ('312','Risque minier ; Affaissement minier ; Effondrements localisés'), 
  ('313','Risque minier ; Affaissement minier ; Affaissements progressifs'), 
  ('314','Risque minier ; Affaissement minier ; Tassements'), 
  ('315','Risque minier ; Affaissement minier ; Glissements ou mouvements de pente'), 
  ('316','Risque minier ; Affaissement minier ; Coulées'), 
  ('317','Risque minier ; Affaissement minier ; Ecroulements rocheux'), 
  ('321','Risque minier ; Inondations de terrains miniers ; Pollution des eaux souterraines et de surface'),
  ('322','Risque minier ; Inondations de terrains miniers ; Pollution des sédiments et des sols'),
  ('33','Risque minier ; Emissions en surface de gaz de mine'),
  ('34','Risque minier ; Echauffement des terrains de dépôts'),
  ('999','Risques multiples')
 ;
/* Ajout à la table gpkg_contents */
INSERT INTO gpkg_contents VALUES 
  ('typealea','attributes','typealea','Enumeration valeurs possibles de types d''aléas',(datetime('now')),NULL,NULL,NULL,NULL,NULL)
 ;



/**
 * Création de la table d'enumeration `typeniveaualea`
 */
CREATE TABLE typeniveaualea (
  code TEXT(2) NOT NULL PRIMARY KEY,
  libelle TEXT(50) NOT NULL
);
INSERT INTO typeniveaualea VALUES 
  ('00','Nul ou négligeable'),
  ('01','Faible'),
  ('02','Moyen ou Modéré'),
  ('03','Moyen plus'),
  ('04','Fort'),
  ('05','Fort plus'),
  ('06','Très fort ou Majeur'),
  ('07','Très fort plus ou aggravé'),
  ('99','Autre')
 ;
/* Ajout à la table gpkg_contents */
INSERT INTO gpkg_contents VALUES 
  ('typeniveaualea','attributes','typeniveaualea','Enumeration valeurs possibles des niveaux d''aléas',(datetime('now')),NULL,NULL,NULL,NULL,NULL)
 ;



/**
 * Création de la table d'enumeration `typesuralea`
 */
CREATE TABLE typesuralea (
  code TEXT(2) NOT NULL PRIMARY KEY,
  libelle TEXT(50) NOT NULL
);
INSERT INTO typesuralea VALUES 
  ('01','bande de précaution'), 
  ('02','Bande particulière'),
  ('03','Bande particulière chocs de vagues'),
  ('04','Bande particulière projection de matériaux'),
  ('99','autre')
 ;
/* Ajout à la table gpkg_contents */
INSERT INTO gpkg_contents VALUES 
  ('typesuralea','attributes','typesuralea','Enumeration valeurs possibles de types de suraléas',(datetime('now')),NULL,NULL,NULL,NULL,NULL)
 ;



/**
 * Création de la table d'enumeration `typeouvrageprotecteur`
 */
CREATE TABLE typeouvrageprotecteur (
  code TEXT(3) NOT NULL PRIMARY KEY,
  libelle TEXT(100) NOT NULL
);
INSERT INTO typeouvrageprotecteur VALUES 
  ('1','Ouvrage ou installation pouvant influencer les inondations'), 
  ('11','Ouvrage de protection contre les inondations'),
  ('111','Ouvrage appartenant à un systeme d''endiguement'), 
  ('112','Amenagement hydraulique'), 
  ('119','Autre ouvrage de protection contre les inondations'), 
  ('12','Ouvrage ou installation influencant les ecoulements sans fonction de protection'), 
  ('2','Ouvrage ou installation pouvant influencer les mouvements de terrain'), 
  ('3','Ouvrage ou installation pouvant influencer les chutes de blocs'), 
  ('4','Ouvrage ou installation pouvant influencer les avalanches'), 
  ('999','Autre ouvrage ou installation pouvant influencer les aléas') 
 ;
/* Ajout à la table gpkg_contents */
INSERT INTO gpkg_contents VALUES 
  ('typeouvrageprotecteur','attributes','typeouvrageprotecteur','Enumeration valeurs possibles de types d''ouvrages de protection',(datetime('now')),NULL,NULL,NULL,NULL,NULL)
 ;



/**
 * Création de la table d'enumeration `typerefexterneouvrage`
 */
CREATE TABLE typerefexterneouvrage (
  code TEXT(2) NOT NULL PRIMARY KEY,
  libelle TEXT(50) NOT NULL
);
INSERT INTO typerefexterneouvrage VALUES 
  ('01','ROE'), 
  ('02','SIOUH II'), 
  ('99','autre')
 ;
/* Ajout à la table gpkg_contents */
INSERT INTO gpkg_contents VALUES 
  ('typerefexterneouvrage','attributes','typerefexterneouvrage','Enumeration valeurs possibles de types de référentiels externes pour les ouvrages de protection',(datetime('now')),NULL,NULL,NULL,NULL,NULL)
 ;



/**
 * Création de la table d'enumeration `typereglementurba`
 */
CREATE TABLE typereglementurba (
  code TEXT(2) NOT NULL PRIMARY KEY,
  libelle TEXT(50) NOT NULL
);
INSERT INTO typereglementurba VALUES 
  ('01','Prescriptions hors zone d''aléa'),
  ('02','Prescriptions'),
  ('03','Interdiction'),
  ('04','Interdiction stricte'),
  ('05','Recommandations'),
  ('06','Zones grisées'),
  ('07','Zones d''aléa exceptionnel (AE)')
 ;
/* Ajout à la table gpkg_contents */
INSERT INTO gpkg_contents VALUES 
  ('typereglementurba','attributes','typereglementurba','Enumeration valeurs possibles de types de reglementation d''urbanisme',(datetime('now')),NULL,NULL,NULL,NULL,NULL)
 ;


/**
 * Création de la table d'enumeration `typereglementfoncier`
 */
CREATE TABLE typereglementfoncier (
  code TEXT(2) NOT NULL PRIMARY KEY,
  libelle TEXT(50) NOT NULL
);
INSERT INTO typereglementfoncier VALUES 
  ('01','Délaissement possible'),
  ('02','Expropriation possible')
 ;
/* Ajout à la table gpkg_contents */
INSERT INTO gpkg_contents VALUES 
  ('typereglementfoncier','attributes','typereglementfoncier','Enumeration valeurs possibles de types de reglementation foncières',(datetime('now')),NULL,NULL,NULL,NULL,NULL)
 ;


/** 
  * Création de la table d'enumeration `typeintensitetechno`
  */
CREATE TABLE typeintensitetechno (
  code TEXT(2) NOT NULL PRIMARY KEY,
  libelle TEXT(50) NOT NULL
);
INSERT INTO typeintensitetechno VALUES 
  ('Z1','Extrèmement grave'),
  ('Z2','Très grave'),
  ('Z3','Grave'),
  ('Z4','Significatif'),
  ('Z5','Indirect')
 ;
/* Ajout à la table gpkg_contents */
INSERT INTO gpkg_contents VALUES 
  ('typeintensitetechno','attributes','typeintensitetechno','Enumeration valeurs possibles de types d''instensité technologique',(datetime('now')),NULL,NULL,NULL,NULL,NULL)
 ;


/** 
  * Création de la table d'enumeration `typeclasseprobatechno`
  */
CREATE TABLE typeclasseprobatechno (
  code TEXT(1) NOT NULL PRIMARY KEY,
  libelle TEXT(50) NOT NULL
);
INSERT INTO typeclasseprobatechno VALUES 
  ('A','Evènement courant'),
  ('B','Evènement probable'),
  ('C','Evènement improbable'),
  ('D','Evènement très improbable'),
  ('E','Evènement possible mais extrêment peu probable')
 ;
/* Ajout à la table gpkg_contents */
INSERT INTO gpkg_contents VALUES 
  ('typeclasseprobatechno','attributes','typeclasseprobatechno','Enumeration valeurs possibles de classes de probabilité technologique',(datetime('now')),NULL,NULL,NULL,NULL,NULL)
 ;

/**
  * Création de la table d'énumération `typeenjeupprn`
  */
CREATE TABLE typeenjeupprn (
  code TEXT(6) NOT NULL PRIMARY KEY,
  libelle TEXT(100) NOT NULL
);
INSERT INTO typeenjeupprn VALUES 
  ('010000','Espaces urbanisés'),
  ('010100','Centres urbains'),
  ('010200','Espaces urbanisés hors centres urbains'),
  ('020000','Espaces non urbanisés'), 
  ('030000','Espaces spécifiques au type d''aléa étudié'),
  ('030100','Espaces spécifiques d''activités'),
  ('030101','Ports, zones d''activités portuaires et d''activités balnéaires'),
  ('030102','Campings et hôtellerie de plein air'),
  ('030103','Zones d''activités agricoles spécifiques'),
  ('030200','Espaces participants à la limitation des aléas'),
  ('030201','Zones d''expansion des crues'),
  ('030202','Zones d''atterrissement'),
  ('030203','Zones d''interfaces habitat-forêt'),
  ('030204','Zones de maintien d''une forêt'),
  ('040000','Projets d''aménagement futurs du territoire'),
  ('050000','Zone d''habitat'),
  ('050100','Zone d''habitat individuel'),
  ('050200','Zone d''habitat collectif'),
  ('060100','Zone d''activité'),
  ('060101','Zone d''industrie'),
  ('060102','Service'),
  ('060103','Artisanat'),
  ('070000','Infrastructures et équipements particuliers'),
  ('070100','Etablissements sensibles ou difficilement évacuables'),
  ('070200','Equipements stratégiques pour la gestion de crise'),
  ('070300','Equipements collectifs de type ERP ou espaces publics ouverts'),
  ('070400','Campings et hôtellerie de plein air'),
  ('070500','Infrastructures de transport'),
  ('070600','Réseaux et équipements sensibles'),
  ('080000','Enjeux patrimoniaux, culturels et environnementaux'),
  ('999999','Autre') 
 ;
/* Ajout à la table gpkg_contents */
INSERT INTO gpkg_contents VALUES 
  ('typeenjeupprn','attributes','typeenjeupprn','Enumeration valeurs possibles nomenclature enjeux PPRN',(datetime('now')),NULL,NULL,NULL,NULL,NULL)
 ;


/**
  * Table d'énumération `typeenjeupprt`
  */
CREATE TABLE typeenjeupprt (
  code TEXT(6) NOT NULL PRIMARY KEY,
  libelle TEXT(100) NOT NULL
);
INSERT INTO typeenjeupprt VALUES 
  ('010000','Urbanisation existante'),
  ('010100','Habitats'),
  ('010200','Activités'),
  ('010300','Etablissements à l''origine du risque'),
  ('010400','Espaces non urbanisés'),
  ('010500','Espaces agricoles'),
  ('020000','Etablissements recevant du public (ERP)'),
  ('020100','Services de secours'),
  ('020200','Bâtiments d''enseignement'),
  ('020300','Bâtiments de services publics'),
  ('020400','Bâtiments et équipements de loisirs'),
  ('020500','Bâtiments de soins'),
  ('020600','Grands centres commerciaux'),
  ('020700','Petits commerces et services aux particuliers'),
  ('020800','Bâtiments religieux'),
  ('030000','Infrastructures de transports'),
  ('030100','Routes'),
  ('030101','Grandes voies structurantes'),
  ('030102','Autres voies structurantes'),
  ('030103','Voies de dessertes'),
  ('030200','Voies ferrées'),
  ('030300','Voies navigables '),
  ('030400','Itinéraires et stationnements de TMD (Transport de Matières Dangereuses)'),
  ('030500','Aéroports'),
  ('030600','Gares (routières, ferroviaires, portuaires)'),
  ('030700','Modes doux de déplacement (piétons, vélos) '),
  ('030800','Transports collectifs (bus, métros, etc.) '),
  ('040000','Espaces publics ouverts'),
  ('040100','Espaces à usage permanent'),
  ('040200','Espaces à usage périodique ou occasionnel'),
  ('050000','Ouvrages et équipements d''intérêt général'),
  ('050100','Poste EDF'),
  ('050200','Central téléphonique'),
  ('050300','Poste de détente GDF'),
  ('050400','Antenne de téléphonie mobile'),
  ('050500','Point de captage d’eau'),
  ('050600','Château d''eau, réservoir'),
  ('060000','Projets de développement de la commune'),
  ('070000','Enjeux environnementaux et patrimoniaux'),
  ('999999','Autre')
 ;
/* Ajout à la table gpkg_contents */
INSERT INTO gpkg_contents VALUES 
  ('typeenjeupprt','attributes','typeenjeupprt','Enumeration valeurs possibles nomenclature enjeux technologiques',(datetime('now')),NULL,NULL,NULL,NULL,NULL)
 ;



/**
  * Table d'énumération `typeenjeucovadis`
  */
CREATE TABLE typeenjeucovadis (
  code TEXT(5) NOT NULL PRIMARY KEY,
  libelle TEXT(100) NOT NULL
);
INSERT INTO typeenjeucovadis VALUES 
  ('0100','Espace urbanisé'),
  ('0101','Espace urbanisé - habitat dense'),
  ('0102','Espace urbanisé - habitat peu dense'),
  ('0103','Espace urbanisé - habitat diffus'),
  ('0104','Espace urbanisé - projet d''urbanisation future'),
  ('0105','Espace urbanisé - réserve foncière'),
  ('0200','Établissement recevant du public (ERP) '),
  ('0201c','ERP J : Structures d''accueil pour personnes âgées et handicapées'),
  ('0202c','ERP L : Salles à usage d''audition, de conférences, de réunions, de spectacles'),
  ('0203c','ERP M : Magasins de vente, centres commerciaux'),
  ('0204c','ERP N : Restaurants et débits de boissons'),
  ('0205c','ERP O : Hôtels et pensions de famille'),
  ('0206c','ERP P : Salles de danse et salles de jeux'),
  ('0207c','ERP R : Établissements d''enseignement, colonies de vacances'),
  ('0208c','ERP S : Bibliothèques, centres de documentation et de consultation d''archives'),
  ('0209c','ERP T : Salles d''expositions'),
  ('0210c','ERP U : Établissements de soins'),
  ('0211c','ERP V : Établissements de culte'),
  ('0212c','ERP W : Administrations, banques, bureaux'),
  ('0213c','ERP X : Établissements sportifs couverts'),
  ('0214c','ERP Y : Musées'),
  ('0215c','ERP PA : Établissements de plein air'),
  ('0216c','ERP CST : Chapiteaux, tentes et structures'),
  ('0217c','ERP CG : Structures gonflables'),
  ('0218c','ERP OA : Hôtels, restaurants d''altitude'),
  ('0219c','ERP REF : Refuges de montagne'),
  ('0220c','ERP PS : Parcs de stationnement couverts'),
  ('0221c','ERP GA : Gares accessibles au public'),
  ('0222c','ERP EF : Établissements flottants'),
  ('0300','Espace économique'),
  ('0301','Espace économique - zone d''activité industrielle'),
  ('0302','Espace économique - zone d''activité commerciale'),
  ('0303','Espace économique - zone d''activité future'),
  ('0304','Espace économique - zone agricole, ostréicole, mytiliculture, élevage, pisciculture'),
  ('0305','Espace économique - zone de camping, mobil-home'),
  ('0306','Espace économique - zone aéroportuaire, portuaire'),
  ('0307','Espace économique - carrière, gravière'),
  ('0308','Établissement employeur'),
  ('0400','Espace ouvert recevant du public'),
  ('0401','Espace ouvert recevant du public - sport'),
  ('0402','Espace ouvert recevant du public - tourisme'),
  ('0403','Espace ouvert recevant du public - parking'),
  ('0404','Espace ouvert recevant du public - parc d''exposition, foires, rassemblements divers'),
  ('0405','Espace ouvert recevant du public - cimetière'),
  ('0500','Infrastructure de transport de personnes ou de marchandise'),
  ('0501','Infrastructure linéaire - route, voie ferrée, canal'),
  ('0502','Infrastructure linéaire en projet'),
  ('0503','Infrastructure linéaire - ligne de bus'),
  ('0504','Infrastructure linéaire - piste cyclable, voie verte'),
  ('0505','Infrastructure linéaire - ligne électrique'),
  ('0506','Infrastructure surfacique - gare, aéroport, aérodrome, port'),
  ('0507','Infrastructure ponctuelle - gare, arrêt, stationnement TMD'),
  ('0600','Ouvrage ou équipement d''intérêt général'),
  ('0601','Ouvrage ou équipement d''intérêt général - zone, station de captage'),
  ('0602','Ouvrage ou équipement d''intérêt général - station de pompage'),
  ('0603','Ouvrage ou équipement d''intérêt général - réservoir, château d''eau'),
  ('0604','Ouvrage ou équipement d''intérêt général - canalisation eau'),
  ('0605','Ouvrage ou équipement d''intérêt général - poste de relèvement'),
  ('0606','Ouvrage ou équipement d''intérêt général - station de traitement, de lagunage'),
  ('0607','Ouvrage ou équipement d''intérêt général - barrage, vanne, écluse'),
  ('0608','Ouvrage ou équipement d''intérêt général - poste de transformation EDF'),
  ('0609','Ouvrage ou équipement d''intérêt général - canalisation matière dangereuse'),
  ('0610','Ouvrage ou équipement d''intérêt général - téléphonique, relai, antenne'),
  ('0611','Ouvrage ou équipement d''intérêt général - caserne de pompier'),
  ('0612','Ouvrage ou équipement d''intérêt général - poste de détente gaz'),
  ('0613','Ouvrage ou équipement d''intérêt général - station hydrocarbure'),
  ('0614','Ouvrage ou équipement d''intérêt général - décharge, usine d''incinération'),
  ('0700','Enjeu environnemental ou patrimonial'),
  ('0701','Zone naturelle protégée'),
  ('0702','Monument inscrit ou classé au répertoire des monuments historiques'),
  ('0703','Parc naturel national, régional'),
  ('0704','Zone d''expansion des crues pour les inondations'),
  ('0705','Zone naturelle de mouvements de terrain'),
  ('9999','Autre enjeu : nature à préciser')
 ;
/* Ajout à la table gpkg_contents */
INSERT INTO gpkg_contents VALUES 
  ('typeenjeucovadis','attributes','typeenjeucovadis','Enumeration valeurs possibles nomenclature enjeux COVADIS',(datetime('now')),NULL,NULL,NULL,NULL,NULL)
 ;


/**
 * Exemple d'insertion de métadonnées de PPR
 */
INSERT INTO gpkg_metadata VALUES (
  1,'dataset','http://www.isotc211.org/2005/gmd', 'text/xml', '<gmd:MD_Metadata><!-- contenu des métadonnées --></gmd:MD_Metadata>'
) ;
INSERT INTO gpkg_metadata_reference VALUES (
  'geopackage', NULL, NULL, NULL, (datetime('now')), 1, NULL
);



/**
 * Exemple d'insertion de métadonnées de table
 */
INSERT INTO gpkg_metadata VALUES (
  2,'dataset','http://www.isotc211.org/2005/gmd', 'text/xml', '<gmd:MD_Metadata><!-- contenu des métadonnées --></gmd:MD_Metadata>') ;
INSERT INTO gpkg_metadata_reference VALUES (
  'table', 'pprn_76ddtm20120001_zonealeareference_112_s', NULL, NULL, (datetime('now')), 2, 1
);


