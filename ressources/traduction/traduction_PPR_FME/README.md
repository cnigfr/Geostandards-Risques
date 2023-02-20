# Traduction PPR vers nouveaux standards

Ce dossier expose un workbench [FME](https://www.veremes.com/produits/fme/fme-desktop) ([demo_mapping.fmw](./demo_mapping.fmw)) permettant d'expérimenter le passage de jeux tests PPR vers les nouveaux standards. 

Le workbench prend en entrée :
* un jeu de donnée PPR conforme à l'ancien standard COVADIS ([PPRN du bassin de la Scie](./76DDTM20120001.zip))
* un fichier de règles de passages au format CSV ([mapping.csv](./mapping.csv))

Il génère en sortie un jeu de données selon le nouveau standard ([PPRN_result.gpkg](./PPRN_result.gpkg)) au format Geopackage (choix de format par défaut pour l'instant).

Ce workbench a été réalisé avec la version 2022.0.0.2 de FME. Il n'est pas garanti qu'il fonctionne avec les versions précédentes.

![Workbench FME](./workbenchFME.GIF)

Ce script FME implémente les règles de passage détaillées ci-dessous pour chaque classe du nouveau standard : 

## Procedure

La classe "Procedure" permet de faire le lien entre un jeu de données du Standard et le système GASPAR. Un objet de cette classe correspond à une procédure unique identifiée dans GASPAR.

|Nom Attribut|Description|Exemple de valeur|Classe ancien PPRN| Attribut ancien PPRN|
|-|:-:|:-:|:-:|:-:|
|codeProcedure|Identifiant de la procédure dans GASPAR|44DDTM20110017|n_document_pprn_s_xxx|ID_GASPAR|
|libelleProcedure|Description de textuelle de la procédure (cf. Libellé procédure dans GASPAR)|PPRL-Baie Bourgneuf Nord|n_document_pprn_s_xxx|NOM|
|typeProcedure|Type de procédure (selon les modèles identifiés dans GASPAR)|PPRN-L|N/A|N/A|

## ReferenceInternet

La classe ReferenceInternet permet de décrire des ressources accessibles sur internet, qu'il sagisse d'une page html, d'une arborescence d'un site web ou de documents téléchargeables. Un objet de cette classe représente un telle ressource, caractérisée de manière unique par son adresse sur internet (URL).

|Nom Attribut|Description|Exemple de valeur|Classe ancien PPRN| Attribut ancien PPRN|
|-|:-:|:-:|:-:|:-:|
|codeProcedure|Lien vers la table procédure |44DDTM20110017|n_document_pprn_s_xxx|ID_GASPAR|
|adresse| Url d'accès à la ressource url|https://www.loire-atlantique.gouv.fr/Politiques-publiques/Risques-naturels-et-technologiques/Prevention-des-risques-naturels/Plans-Prevention-Risques-Naturels-Previsibles/Les-Plans-de-Prevention-des-Risques-Littoraux-en-Loire-Atlantique/Le-PPRL-Baie-de-Bourgneuf-Nord |n_document_pprn_x_xxx|site_web|
|nomRessource |Nom de la ressource|Le PPRL Baie de Bourgneuf Nord |N/A|N/A|
|description|Description de la ressource|Page web d'accès au dossier du PPRL sur le site de la préfecture de la Loire Atlantique|N/A|N/A|
|typeReference|Indique le type de document auquel on fait référence|Réglement signé | N/A|N/A|

## Perimetre

La classe Perimetre permet de décrire l'état d'avancement d'une procédure sur une zone géographique donnée. Pour une même procédure donnée à un instant donné, plusieurs périmètres peuvent exister dans des états d'avancement différents.

|Nom Attribut|Description|Exemple de valeur|Classe ancien PPRN| Attribut ancien PPRN|
|-|:-:|:-:|:-:|:-:|
|codeProcedure|Lien vers la table procédure |44DDTM20110017|n_document_pprn_s_xxx|ID_GASPAR|
|etatProcedure |Etat d'avancement de la procédure sur le périmètre|APPROUVE|n_document_pprn_s_xxx|"APPROUVE si etat= ""Approuvé"" (02); PRECRIT si etat=""Prescrit"" (01); ABROGE si etat =""Abrogé"" (03); ANTICIPE si etat = ""Anticipe"" (04)"|
|dateEtatPerimetre|Date|Date du début de l'état de la procédure sur le périmètre|13/07/2016|n_document_pprn_x_xxx|DateAppro (si Approuvé) ; DatePrescrit (si Prescrit)|
|geometrie|Geometry (MultiPolygon)|Géométrie du Périmètre|N/A|n_perimetre_pprn_xxxx_x_xxx|
