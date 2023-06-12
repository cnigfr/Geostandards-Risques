/*
Requêtes : essais de conversion de PPRN COVADIS en CNIG
Auteur : Stanislas Besson - DDT38/SAET/SIG-OBS
Date : créée le 31 mai 2023
*/

/*
PPRN testés : base départementale des PPRT approuvés de l'Isère
Zonage : oui
Aléa : Oui
Enjeux : Non
*/

-- -------------------
-- TABLE PROCEDURE_PPR
-- -------------------

-- Création table

DROP TABLE IF EXISTS s_cnig_risques_tmp.procedure_ppr ;

CREATE TABLE s_cnig_risques_tmp.procedure_ppr (
code_procedure varchar(20)  NOT NULL, -- code GASPAR
libelle_procedure varchar(254),
code_type_procedure varchar(15),
lib_type_procedure varchar(200),
CONSTRAINT procedure_ppr_pk PRIMARY KEY (code_procedure)
);

-- Insertion des données depuis les tables COVADIS

INSERT INTO s_cnig_risques_tmp.procedure_ppr
(code_procedure,libelle_procedure,code_type_procedure)
SELECT id_gaspar, nom, CASE WHEN coderisque = '9999999' THEN 'PPRN-Multi' ELSE 'PPRN-I' END -- case when spécifique standardisation PPRN Isère
FROM c_risque__n_zonages_risque_naturel.n_document_pprn_s_038
;

-- Mise à jour du libellé en fonction du code PROCEDURE

UPDATE s_cnig_risques_tmp.procedure_ppr AS a SET
lib_type_procedure = libelle
FROM s_cnig_risques_tmp.type_procedure AS b
WHERE a.code_type_procedure = b.code ;

-- ----------------------
-- TABLE REF_INTERNET_PPR
-- ----------------------

-- Création table

DROP TABLE IF EXISTS s_cnig_risques_tmp.ref_internet_ppr;

CREATE TABLE s_cnig_risques_tmp.ref_internet_ppr (
code_procedure varchar(20) NOT NULL,
adresse varchar(254),
nom_ressource varchar(254),
description varchar(254),
type_reference varchar(254),
CONSTRAINT ref_internet_ppr_pk PRIMARY KEY (code_procedure),
CONSTRAINT ref_internet_ppr_fk FOREIGN KEY (code_procedure)
REFERENCES s_cnig_risques_tmp.procedure_ppr (code_procedure)
MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE
);

-- Insertion des données depuis les tables COVADIS

INSERT INTO s_cnig_risques_tmp.ref_internet_ppr
(code_procedure, adresse, nom_ressource, description, type_reference)
SELECT id_gaspar,site_web, (regexp_split_to_array(site_web,'/'))[8],'les PPRN du département de l''Isère','Pièces écrites des documents en vigueur'
FROM c_risque__n_zonages_risque_naturel.n_document_pprn_s_038
;


-- -------------------
-- TABLE PERIMETRE_PPR
-- -------------------

-- Création table

DROP TABLE IF EXISTS s_cnig_risques_tmp.perimetre_ppr ;

CREATE TABLE s_cnig_risques_tmp.perimetre_ppr (
code_procedure varchar(20) NOT NULL,
etat_procedure varchar(254) NOT NULL,
date_perimetre date,
geom geometry(MultiPolygon,2154),
CONSTRAINT perimetre_ppr_pk PRIMARY KEY (code_procedure, etat_procedure),
CONSTRAINT perimetre_ppr_fk FOREIGN KEY (code_procedure)
REFERENCES s_cnig_risques_tmp.procedure_ppr (code_procedure)
MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE INDEX perimetre_ppr_sdx
ON s_cnig_risques_tmp.perimetre_ppr USING gist (geom)
;

-- Insertion des données depuis les tables COVADIS

INSERT INTO s_cnig_risques_tmp.perimetre_ppr
(code_procedure,etat_procedure,date_perimetre,geom)
SELECT id_gaspar,
CASE WHEN etat = '01' THEN 'PRESCRIT'
WHEN etat = '02' THEN 'APPROUVE'
WHEN etat = '03' THEN 'ABROGE'
WHEN etat = '04' THEN 'ANTICIPE'
END,
CASE WHEN etat = '01' THEN dateprescr
WHEN etat = '02' THEN dateappro
END,
geom
FROM c_risque__n_zonages_risque_naturel.n_document_pprn_s_038
;

-- --------------
-- TABLE ALEA_PPR
-- --------------

-- Création table

DROP TABLE IF EXISTS s_cnig_risques_tmp.alea_ppr ;

CREATE TABLE s_cnig_risques_tmp.alea_ppr (
id_zone_alea varchar(20) NOT NULL,
code_procedure varchar(254) NOT NULL,
code_type_alea varchar(3) NOT NULL,
lib_type_alea varchar(254),
description varchar(254),
occurence varchar(50) DEFAULT '100',
geom geometry(Polygon,2154),
CONSTRAINT alea_ppr_pk PRIMARY KEY (id_zone_alea, code_procedure),
CONSTRAINT alea_ppr_fk FOREIGN KEY (code_procedure)
REFERENCES s_cnig_risques_tmp.procedure_ppr (code_procedure)
MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE INDEX alea_ppr_sdx
ON s_cnig_risques_tmp.alea_ppr USING gist (geom)
;

-- Insertion des données depuis les tables COVADIS

INSERT INTO s_cnig_risques_tmp.alea_ppr
(id_zone_alea, code_procedure, code_type_alea, description, geom)
SELECT id_zone, id_gaspar, left(coderisque,3), descript, geom
FROM c_risque__n_zonages_risque_naturel.n_zone_alea_pprn_s_038
;

-- Mise à jour des libellés

UPDATE s_cnig_risques_tmp.alea_ppr SET
lib_type_alea = libelle
FROM s_cnig_risques_tmp.type_alea
WHERE code_type_alea = code
;

-- --------------------
-- TABLE ZONAGE_REG_PPR
-- --------------------

-- Création table

DROP TABLE IF EXISTS s_cnig_risques_tmp.zonage_reg_ppr ;

CREATE TABLE s_cnig_risques_tmp.zonage_reg_ppr (
id_zone_reg varchar(20) NOT NULL,
code_procedure varchar(30) NOT NULL,
code_zone_reg varchar(100) NOT NULL,
lib_zone_reg varchar(254),
code_type_reg varchar(2),
lib_type_reg varchar(50),
geom geometry(Polygon,2154),
CONSTRAINT zonage_reg_ppr_pk PRIMARY KEY (id_zone_reg, code_procedure),
CONSTRAINT zonage_reg_ppr_fk FOREIGN KEY (code_procedure)
REFERENCES s_cnig_risques_tmp.procedure_ppr (code_procedure)
MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE INDEX zonage_reg_ppr_sdx
ON s_cnig_risques_tmp.zonage_reg_ppr USING gist (geom)
;

-- Insertion des données depuis les tables COVADIS

INSERT INTO  s_cnig_risques_tmp.zonage_reg_ppr (
id_zone_reg, code_procedure, code_zone_reg, lib_zone_reg, code_type_reg, geom)
SELECT id_zone, id_gaspar, codezone, nom, typereg,geom
FROM c_risque__n_zonages_risque_naturel.n_zone_reg_pprn_s_038
;

-- Mise à jour des libellés

UPDATE s_cnig_risques_tmp.zonage_reg_ppr SET
lib_zone_reg = libelle
FROM s_cnig_risques_tmp.type_reglement_urba
WHERE code_type_reg = code
;

