# Traduction PPR vers nouveaux standards

Ce dossier expose un workbench [FME](https://www.veremes.com/produits/fme/fme-desktop) ([demo_mapping.fmw](./demo_mapping.fmw)) permettant d'expérimenter le passage de jeux tests PPR vers les nouveaux standards. 

Le workbench prend en entrée :
* un jeu de donnée PPR conforme à l'ancien standard COVADIS ([PPRN du bassin de la Scie](./76DDTM20120001.zip))
* un fichier de règles de passages au format CSV ([mapping.csv](./mapping.csv))

Il génère en sortie un jeu de données selon le nouveau standard ([PPRN_result.gpkg](./PPRN_result.gpkg)) au format Geopackage (choix de format par défaut pour l'instant).

Ce workbench a été réalisé avec la version 2022.0.0.2 de FME. Il n'est pas garanti qu'il fonctionne avec les versions précédentes.

![Workbench FME](./workbenchFME.GIF)

Ce script FME implémente les règles de passage détaillées ci-dessous pour chaque classe du nouveau standard : 

## Procédure

|Nom Attribut|Description|Exemple de valeur|Classe ancien PPRN| Attribut ancien PPRN|
|-|:-:|:-:|:-:|:-:|
|codeProcedure|Identifiant de la procédure dans GASPAR|44DDTM20110017|n_document_pprn_s_xxx|ID_GASPAR|
|libelleProcedure|Description de textuelle de la procédure (cf. Libellé procédure dans GASPAR)|PPRL-Baie Bourgneuf Nord|n_document_pprn_s_xxx|NOM|
|typeProcedure|Type de procédure (selon les modèles identifiés dans GASPAR)|PPRN-L|N/A|N/A|
