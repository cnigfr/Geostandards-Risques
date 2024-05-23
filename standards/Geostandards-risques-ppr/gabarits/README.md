# Gabarits GeoPackage PPR

Ce dossier contient les gabarits Geopackage du standard PPR pour chaque zone de projection couverte :

- [2154](./2154) pour la France Métropolitaine et la Corse
- [2972](./2972) pour la Guyane Française
- [2975](./2975) pour la Réunion
- [4467](./4467) pour Saint-Pierre et Miquelon
- [4471](./4471) pour Mayotte
- [5490](./5490) pour les Antilles françaises


Tous ces gabarits sont générés en lançant le bash genGabarits.sh qui nécessite l'installation préalable de de sqlite3 et la présence des fichiers suivants :

- [typeppr_codegasparppr-vide.gpkg](typeppr_codegasparppr-vide.gpkg) fichier Geopackage minimal
- [typeppr_codegasparppr.sql](typeppr_codegasparppr.sql) code SQL de création des tables du standard

