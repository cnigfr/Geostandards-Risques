#!/bin/bash
# A lancer depuis le repertoire racine du Document à traduire
pandoc --reference-doc=./modele/Modele-document-CNIG.docx -f markdown -o ./Document.docx ./Document.md

