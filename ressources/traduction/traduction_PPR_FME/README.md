# Traduction PPR vers nouveaux standards

Ce dossier expose un workbench [FME](https://www.veremes.com/produits/fme/fme-desktop) ([modele_ppr.fmw](./02_MODELE/modele_ppr.fmw)) permettant d'expérimenter le passage d'un jeu de données tests PPR vers le profil applicatif PPR des nouveaux Géostandards Risques. 

Le workbench prend en entrée :
* un jeu de donnée PPR conforme à l'ancien standard COVADIS ([PPRN du bassin de la Scie](./01_ENTREE/76DDTM20120001))
* un fichier de règles de passages au format CSV ([mapping.csv](./01_ENTREE/mapping.csv)) dont le principe est documenté dans le workbench et s'appuie sur les [règles de passage définies dans le standard](https://github.com/cnigfr/Geostandards-Risques/blob/main/standards/Geostandards-risques-ppr/Document.md#annexe-a---correspondances-avec-les-standards-covadis-ppr-n-et-t).

Il génère en sortie un jeu de données selon le nouveau standard ([pprn_76ddtm20120001.gpkg](./03_SORTIE/pprn_76ddtm20120001.gpkg)) au format Geopackage.

![Workbench FME](./workbenchFME.png)


## Notes de version

Ce workbench a été réalisé avec la version 2022.2.2.0 de FME. Il n'est pas garanti qu'il fonctionne avec les versions précédentes.

Pour l'instant, les données géostandard risque PPR générées sont conformes à la version 0.1 du Géostandard.

## Utilisation

Le document suivant précise l'utilisation du workbench, ses limitations et pistes d'amélioration : [Guide utilisation modèle FME PPR.pdf](./Guide utilisation modèle FME PPR.pdf)

