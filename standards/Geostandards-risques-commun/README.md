# GéoStandards Risques - Modèle commun

Ce répertoire contient les éléments constitutifs du standard définissant le modèle commun des Géostandards Risques.

- Le fichier [Document.md](./Document.md) contient le contenu littéral du document ;
- le répertoire [ressources/](./ressources) contient les ressources graphiques à inclure dans le document
- le répertoire [modele/](./modele) contient le modèle de document word utilisé pour l'export du standard
- le répertoir [bin/](./bin) comprend les binaires permettant de générer le standard au format word à l'aide de l'outil pandoc.

## Génaration d'un document word à partir du dépot

Avec l'outil [pandoc](https://pandoc.org/index.html), la ligne de commande suivante permet de générer le standard au format .docx en s'appuyant sur les styles du modèle de document : Modele-document-CNIG.docx

````
$ pandoc -s -f gfm -t docx -o Document.docx --template=./modele/Modele-document-CNIG.docx Document.md
````
