# GéoStandards Risques - Profil applicatif PPR

Ce répertoire contient les éléments constitutifs du standard définissant le profil applicatif des Géostandards Risques pour les procédures d'élaboration de Plans de Prévention des Risques.

- Le fichier [Document.md](./Document.md) contient le contenu littéral du document ;
- le répertoire [ressources/](./ressources) contient les ressources graphiques à inclure dans le document
- le répertoire [modele/](./modele) contient le modèle de document word utilisé pour l'export du standard
- le répertoir [bin/](./bin) comprend les binaires permettant de générer le standard au format word à l'aide de l'outil pandoc.
- le répertoire [diffusion](./diffusion) contient les versions du standard exportées dans les fomats de diffusion (docx, pdf, ...)


## Génaration d'un document word à partir du dépot

Avec l'outil [pandoc](https://pandoc.org/index.html), la ligne de commande suivante permet de générer le standard au format .docx en s'appuyant sur les styles du modèle de document : ModeleV3.docx

````
pandoc -s -f gfm -t docx -o Geostandards-Risques-PPR-vx.y.docx --reference-doc=./modele/ModeleV3-ppr.docx Document.md
````
