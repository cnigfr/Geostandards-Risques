# Simplification des Géométries des PPR de la DDTM 76

La DDTM76 compte 18 PPRN et PPRT et a été confronté comme beaucoup de territoires à la difficulté d'obtenir des couches intelligibles et valides (sans erreurs de géométrie et topologiquement acceptables). Un travail a été fait sur les zonages réglementaires pour pouvoir les diffuser sur des outils de cartes interactives ([lien carto2 des PPRN de seine-maritime](https://carto2.geo-ide.din.developpement-durable.gouv.fr/frontoffice/?map=8c8106b2-3cfa-45c9-aa53-7d2cc45d45c8#)). Un travail similaire sera à termes réalisé sur les aléas.

La méthode de travail est décrite dans l'article suivant :
[lien Méthodo SIG PPR existant](https://dd.gitlab-pages.din.developpement-durable.gouv.fr/ddtm76/risques/methodo_sig/methodo/)

Elle utilise une fonction "maison" qui permet de simplifier les géométries, de supprimer les erreurs et de redécouper selon une hiéarchie de valeurs attributaires pour supprimer les chevauchements :
[lien vers la fonction DESCOHRE (dilater, éroder, simplifier, corriger, hiéarchiser, redécouper)](https://dd.gitlab-pages.din.developpement-durable.gouv.fr/ddtm76/risques/methodo_sig/modop_descohre/)

Ces méthodologies developpées sous postgres / postgis / QGIS combinent les solutions vu en formation IGN données pour corriger les SUP PM1.
