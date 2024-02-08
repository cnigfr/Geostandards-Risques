| | |
|-|-|
| ![Logo CNIG](./ressources/logo-cnig.png)| ![Logo DGPR](./ressources/ministere-de-la-transition-ecologique-et-solidaire_logo.png) |


 Conseil national de l'information Géolocalisée


![Illustration GT Risques](./ressources/logo-gt-risques.png)


Géostandards Risques
Modèle Commun


Groupe de travail refonte des Géostandards Risques

*Version 0.2 - Date*


#  Fiche analytique


| | |
|-|-|
| **Titre** | Géostandards Risques |
| **Sous-titre** | Modèle Commun |
| **Version du document** | *0.2 - jj mois aaaa (date de publication)*  |
| **Résumé** | La famille des Géostandards Risques a pour objectif de standardiser les données numériques géographiques relatives aux procédures réglementaires de prévention des risques. Elle a été développée dans le but de moderniser et succéder aux standards COVADIS dédiés à cette thématique tels que les standards Plan de Prévention des Risques (PPR) Naturels, Technologiques et Miniers ou Directive Inondation (DI). Ce document constitue le socle commun de ces Géostandards en définissant les concepts communs qui sont ensuite précisés dans les profils applicatifs dédiés aux procédures particulières. |
| **Etendue d'application** | Territoire national français. |
| **Resolution spatiale** | entre le 1:5000 et le 1:25000 |
| **Statut du document** | Projet - ~~Appel à commentaires~~ - ~~Proposé à la commission des Standards du CNIG~~ - ~~Validé~~ |
| **Licence** | Le présent document est sous [Licence Ouverte (Open Licence) Etalab](https://www.etalab.gouv.fr/licence-ouverte-open-licence/) |
| **Diffusion** | *A venir : PDF sur internet  (site du CNIG)* |
| **Formats disponibles** | [MS Word - DOCX](https://github.com/cnigfr/Geostandards-Risques/blob/main/standards/Geostandards-risques-commun/diffusion/Geostandards-Risques-Modele-Commun-v0.1.docx) - [HTML/Markdown](https://github.com/cnigfr/Geostandards-Risques/blob/main/standards/Geostandards-risques-commun/Document.md) |
| **Thèmes** | (INSPIRE) "Usage des sols", "Lieux de production et sites industriels", "Zones de gestion, de restriction ou de réglementation et unités de déclaration", "Zones de risque naturel" |
| **Mots-clés** | "Usage des sols" ; "prévention" ; "risque" ; "aléa" ; "aménagement" ; "urbanisme" ; "prescription" ; "servitude" |
| **Contact** | geostandards-risques-gt-cnig@framalistes.org |


#  Sommaire

> *A générer*


#  Préface


##  Historique du document

| Version | Date | Raison |
| - | - | - |
| 0.1 | 11/09/2023 | Première version pour relecture du Groupe de Travail |
| 0.2 | xx/xx/2024 | Prise en compte de la relecture du Groupe de Travail. Version pour commentaires publics. Modifications : Application des définitions DGPR pour les risques, aléas et enjeux.  |


##  Participation à l'écriture

Ce standard est le fruit des travaux du groupe de travail CNIG sur la refonte des Géostandards risques. Ce dernier rassemble les acteurs impliqués dans l’élaboration, la gestion et la diffusion des données de prévention des risques relatives à ces standards ainsi que des utilisateurs amenés à exploiter ces données. Il est animé par l’IGN pour le compte de la Direction Générale de la Prévention des Risques (DGPR). 

Ce standard a été rédigé par Gilles Cébélieu (IGN) et Alison Lenain (IGN) avec les contributions majeures et les relectures des membres du Groupe de travail listés ci-dessous.


| Nom |Affiliation 
| - | - |
| Besson Stanislas | DDT de l'Isère (38) |
| Bonnin Nicolas | MTECT / DGPR / DAGSI |
| Bouffier Jacques | MTECT / DGPR / SRNH / SdCAP / BRIL |
| Boudesseul Nicolas | DREAL Pays de la Loire |
| Chrétien Guillaume | DDTM de la Seine Maritime (76) |
| Di Salvo Magali | DREAL Auvergne Rhone Alpes |
| Evain Yohann | Cerema |
| Goulamoussène Youven | MTECT / DGPR / SRNH / SdCAP / BRIL |

> *liste à compléter et actualiser*


# Présentation du document


## Objectif et raison d'être du standard

La famille des Géostandards Risques a pour objectif de standardiser les données numériques géographiques relatives aux procédures réglementaires de prévention des risques. Elle a été développée dans le but de moderniser et succéder aux standards COVADIS dédiés à cette thématique tels que les standards Plan de Prévention des Risques (PPR) Naturels, Technologiques et Miniers ou Directive Inondation (DI).

Ce document constitue le socle commun de ces Géostandards en définissant les concepts communs qui sont ensuite précisés dans des documents dédiés aux procédures particulières (profils applicatifs).


## À qui s'adresse ce document ?

Ce document s'adresse :

- aux services de l'État ou assimilés, chargés de produire ces données, les entretenir les diffuser.
- aux utilisateurs de ces données : collectivités locales, bureaux d'études, ou grand public.


##  Comment lire le document

Les parties [Préface](#préface) et [Présentation du document](#présentation-du-document) donnent les éléments nécessaires à la compréhension du document. 

Les parties [Contenu et structure de la donnée](#contenu-et-structure-de-la-donnée) et [Systèmes de référence](#syst%C3%A8mes-de-r%C3%A9f%C3%A9rence) sont le cœur du document. Elles définissent le modèle conceptuel commun, le catalogue de données associé et les systèmes de référence de coordonnées applicables aux Géostandards risques.

L'[annexe A](#annexe-a---correspondances-inspire), informative, établit les correspondances du modèle de données des Géostandards avec ceux des thématiques INSPIRE qui les concernent.

L'[annexe B](#annexe-b---correspondances-avec-le-modèle-de-données-gaspar), informative, décrit les correspondances du modèle de données des Géostandards avec celui de la base nationale de gestion assistée des procédures administratives relatives aux risques (GASPAR) dont est dérivée une partie des informations décrites dans ce document.



## Références

Cette partie cite les références documentaires et réglementaires sur lesquelles s'appuie ce standard.

### Références à d'autres documents

Ce document s’appuie ou nécessite la lecture des normes et documents référencées ci-dessous. 


| Accronyme | Titre | Auteur | Année |
|-|-|-|-|
| [CNIG_RISQUES_PPR:2024](https://github.com/cnigfr/Geostandards-Risques/blob/main/standards/Geostandards-risques-ppr/Document.md) | Géostandards Risques - Profil Applicatif Plan de Prévention des Risques (PPR) | Conseil National de l'Information Géolocalisée (CNIG) | 2024 |
| [ROE 1.2:2014](https://www.sandre.eaufrance.fr/notice-doc/description-des-ouvrages-faisant-obstacle-%C3%A0-l%E2%80%99%C3%A9coulement) | Description des ouvrages faisant obstacle à l’écoulement v1.2 | SANDRE | 2014 |
| [Guide Ineris:2018](https://www.ineris.fr/sites/ineris.fr/files/contribution/Documents/Ineris-Guide_Aleas_miniers_0.pdf) | Évaluation des aléas miniers | INERIS | 2018 |
| [Guide PPRT:2007](https://www.ecologie.gouv.fr/sites/default/files/Guide_PPRT_tbd_complet.pdf) | Le plan de prévention des risques technologiques (PPRT) Guide méthodologique | Ministère de l'écologie, du développement et de l'aménagement durables (MEDAD) / Direction de la Prévention des Pollutions et des Risques (DPPR) - Direction Générale de l'Urbanisme de l'Habitat et de la Construction (DGUHC) | 2007 |
| [Guide PPRN:2016](https://www.actu-environnement.com/media/pdf/guide-pprn.pdf) | Plans de prévention des risques naturels prévisibles (PPRN) - Guide général | Direction Générale de la Prévention des Risques (DGPR) - Cerema | 2016 |
| [Guide PPRM:2019](http://www.ecologique-solidaire.gouv.fr/sites/default/files/Guide%20m%C3%A9thodologique%20d%27%C3%A9laboration%20des%20Plans%20de%20pr%C3%A9vention%20des%20risques%20miniers%20%28version%20de%20juillet%202019%29.pdf) | Guide méthodologique pour l’élaboration des plans de prévention des risques miniers | Cerema | 2019 |
| [Guide PPRL:2014](https://www.ecologie.gouv.fr/sites/default/files/Guide%20PPRL%20-%20version%20finale%20mai%202014.pdf) | Guide méthodologique : Plan de prévention des risques littoraux | DGPR / SRNH | 2014 |
| [UNISDR:2009](https://reliefweb.int/attachments/a0ed6b9c-713e-349f-ae9f-d3d8ff336b1f/Rapport_complet.pdf) | Terminologie pour la Prévention des risques de catastrophe | Stratégie internationale de prévention des catastrophes des Nations Unies (UNISDR) | 2009 | 
| [INSPIRE NZ:2013](https://inspire.ec.europa.eu/documents/Data_Specifications/INSPIRE_DataSpecification_NZ_v3.0.pdf) | INSPIRE D2.8.III.12 Data Specification on Natural Risk Zones – Technical Guidelines | European Commission Joint Research Centre | 2013 |



###  Cadre réglementaire des Géostandards risques

#### Cadre réglementaire pour les systèmes de référence de coordonnées

Le cadre réglementaire pour les systèmes de référence de coordonnées est établi par le [décret du 5 mars 2019](https://www.legifrance.gouv.fr/loda/id/JORFTEXT000038203565) relatif au système national de référence de coordonnées et son [arrêté du 5 mars 2019](https://www.legifrance.gouv.fr/loda/id/JORFTEXT000038203601) portant application du décret n° 2000-1276 du 26 décembre 2000 modifié portant application de l'[article 89 de la loi n° 95-115 du 4 février 1995](https://www.legifrance.gouv.fr/loda/article_lc/LEGIARTI000006340167) modifiée d'orientation pour l'aménagement et le développement durable du territoire relatif aux conditions d'exécution et de publication des levés de plans entrepris par les services publics.


####  Cadre réglementaire des Plans de Prévention des Risques

Le cadre réglementaire de la mise en œuvre des Plans de Prévention des Risques (PPR) est décrit dans le profil applicatif Plan de Prévention des Risques (PPR) des Géostandards [CNIG_RISQUES_PPR:2024](https://github.com/cnigfr/Geostandards-Risques/blob/main/standards/Geostandards-risques-ppr/Document.md).


####  Cadre réglementaire des Territoires à Risque Important d'Inondation

La mise en œuvre des Territoires à Risque Important d'Inondation est définie dans le code de l'environnement par :

* les [articles L566-1 à L566-13](https://www.legifrance.gouv.fr/codes/section_lc/LEGITEXT000006074220/LEGISCTA000022479454/#LEGISCTA000022479454) pour la partie législative ;
* les [articles R566-5 à R566-9](https://www.legifrance.gouv.fr/codes/section_lc/LEGITEXT000006074220/LEGISCTA000023655627/#LEGISCTA000023655627) pour la partie réglementaire ;


##  Compréhension du document

###  Termes spécifiques et définitions

| Terme | Définition|
|-|-|
| Aléa | De manière générale un aléa est un phénomène caractérisé par sa probalité d'occurrence et son intensité. Pour les **risques naturels**, le [Guide PPRN:2016](https://www.actu-environnement.com/media/pdf/guide-pprn.pdf) précise qu'il s'agir d'un phénomène naturel (inondation, mouvement de terrain, séisme, avalanche, incendies de forêts...) d'occurrence et d'intensité données ; le [Guide Ineris:2018](https://www.ineris.fr/sites/ineris.fr/files/contribution/Documents/Ineris-Guide_Aleas_miniers_0.pdf) le définit ainsi pour les **risques d'origine minière** : l’aléa correspond à la probabilité qu’un phénomène (d’origine minière dans le cas présent) se produise sur un site, au cours d’une période de référence, en atteignant une intensité qualifiable ou quantifiable. La caractérisation d’un aléa repose classiquement sur le croisement de l’intensité prévisible du phénomène avec sa probabilité d’occurrence. Le [Guide PPRT:2007](https://www.ecologie.gouv.fr/sites/default/files/Guide_PPRT_tbd_complet.pdf) définit quand à lui la notion d'**aléa technologique**. *On notera que ces définitions appliquées par la DGPR diffèrent de celle utilisée dans ([INSPIRE NZ:2013](https://inspire.ec.europa.eu/documents/Data_Specifications/INSPIRE_DataSpecification_NZ_v3.0.pdf) reprise de [UNISDR:2009](https://reliefweb.int/attachments/a0ed6b9c-713e-349f-ae9f-d3d8ff336b1f/Rapport_complet.pdf)) : Un phénomène dangereux, une substance, activité humaine ou condition pouvant causer des pertes de vies humaines, des blessures ou d’autres effets sur la santé, des dommages aux biens, des pertes de moyens de subsistance et des services, des perturbations socio-économiques, ou des dommages à l’environnement.* | 
| Aléa technologique | [Guide PPRT:2007](https://www.ecologie.gouv.fr/sites/default/files/Guide_PPRT_tbd_complet.pdf) L’aléa technologique est une composante du risque industriel. Il désigne la probabilité qu’un phénomène dangereux produise, en un point donné du territoire, des effets d’une intensité physique définie. | 
| Enjeux | Les différents Guides PPR ([Guide PPRT:2007](https://www.ecologie.gouv.fr/sites/default/files/Guide_PPRT_tbd_complet.pdf)], [Guide PPRL:2014](https://www.ecologie.gouv.fr/sites/default/files/Guide%20PPRL%20-%20version%20finale%20mai%202014.pdf), [Guide PPRN:2016](https://www.actu-environnement.com/media/pdf/guide-pprn.pdf) et [Guide PPRM:2019](http://www.ecologique-solidaire.gouv.fr/sites/default/files/Guide%20m%C3%A9thodologique%20d%27%C3%A9laboration%20des%20Plans%20de%20pr%C3%A9vention%20des%20risques%20miniers%20%28version%20de%20juillet%202019%29.pdf)) définissent les enjeux comme étant les personnes, biens, activités, infrastructures, éléments du patrimoine culturel ou environnemental, menacés par un aléa ou susceptibles d’être affectés ou endommagés par celui-ci. Ils sont liés à l’occupation du territoire et à son fonctionnement. |
| Opposable | Un document juridique est opposable aux tiers quand tout le monde doit le respecter, même les personnes qui ne l'ont pas signé. Dans le cadre de la prévention des risques, ce terme s'applique aux documents d'une procédure qui définissent des contraintes réglementaires, notamment en terme d'urbanisme, lorsqu'ils sont validés par une autorité publique. |
| Risque | La définition générale du risque appliquée par la DGPR dans le cadre de la prévention des risques et qui s'applique pour ce standard est reprise du [Guide PPRL:2014](https://www.ecologie.gouv.fr/sites/default/files/Guide%20PPRL%20-%20version%20finale%20mai%202014.pdf) : Le risque résulte du croisement de l’**aléa** et d’un **enjeu** **vulnérable**. Les défintions qui suivent précisent cette définition dans le cadre des risques naturels et industriels. *Il est important de noter que cette définition diffère de celle utilisée dans ([INSPIRE NZ:2013](https://inspire.ec.europa.eu/documents/Data_Specifications/INSPIRE_DataSpecification_NZ_v3.0.pdf) reprise de ISO 31010 - Management du risque) : Un **risque** est la combinaison d'un événement (**Aléa**) et la probabilité de son occurrence.* |
| Risque industriel | [Guide PPRT:2007](https://www.ecologie.gouv.fr/sites/default/files/Guide_PPRT_tbd_complet.pdf) Le risque industriel est un concept intégrant des composantes techniques, économiques et sociales. Il résulte de la présence, sur un territoire, d’une installation manipulant des substances ou procédés susceptibles d’être à l’origine de phénomènes dangereux, face à des enjeux socio-économiques et environnementaux. |
| Risque naturel | [Guide PPRN:2016](https://www.actu-environnement.com/media/pdf/guide-pprn.pdf) Pertes probables en vies humaines, en biens et en activités consécutives à la survenance d'un aléa naturel. |
| Risque naturel prévisible | [Guide PPRN:2016](https://www.actu-environnement.com/media/pdf/guide-pprn.pdf) Risque susceptible de survenir à l'échelle de temps d’une vie humaine.|
| Vulnérabilité | [Guide PPRT:2007](https://www.ecologie.gouv.fr/sites/default/files/Guide_PPRT_tbd_complet.pdf) La vulnérabilité est la sensibilité plus ou moins forte d’un enjeu à un aléa donné. Par extension, on parle aussi de la vulnérabilité d’un élément de territoire regroupant plusieurs natures d’enjeux. |



###  Abréviations


**BRGM** Bureau de recherches géologiques et minières

**BRIL** Bureau des risques d'inondation et littoraux

**BRIEC** Bureau des risques des industries de l’énergie et de la chimie 

**Cerema** Centre d’études et d’expertises sur les risques, l’environnement, la mobilité et l’aménagement

**CNIG** Comité national de l'information géolocalisée

**DAGSI** Département des affaires générales et des systèmes d’information

**DDT(M)** Direction départementale des territoires (et de la mer) 

**DGPR** Direction générale de la prévention des risques

**D(R)EAL** Direction (régionale) de l'environnement, de l'aménagement et du logement

**DRIEAT** Direction régionale et interdépartementale de l’environnement, de l’aménagement et des transports (d'Île de France)

**GASPAR** Base nationale de gestion assistée des procédures administratives relatives aux risques

**GEMET** General multilingual environmental thesaurus

**IGN** Institut national de l'information géographique et forestière

**MTECT** Ministère de la transition écologique et de la cohésion des territoires 

**PPRM** Plan de prévention des risques miniers

**PPRN** Plan de prévention des risques naturels

**PPRT** Plan de prévention des risques technologiques

**SIOUH** Système d'information sur les ouvrages hydrauliques

**TRI** Territoire à risque important d'inondation

**UML** Unified modeling language 


#  Concepts généraux

## Périmètre d'application

Le périmètre d'application couvert par les Géostandards risques peut varier selon les différentes procédures de préventions des risques référencées dans la [partie introductive du document](#objectif-et-raison-dêtre-du-standard) et sera détaillé dans les profils applicatifs attachés à chacune d'elles.

Au niveau du modèle commun décrit par ce document, le périmètre d'application est assez générique et concerne la production des jeux de données numériques correspondant à la mise en œuvre de ces procédures pour la diffusion aux utilisateurs (notamment collectivités, bureaux d'études, grand public, ...).

Les données représentées couvrent le territoire national français susceptible de faire l'objet de telles procédures : 

- Territoire européen de la France
- France d'outre-mer, plus précisément :
  - Guadeloupe
  - Saint-Martin
  - Saint-Barthélemy
  - Martinique
  - Guyane
  - La Réunion
  - Mayotte
  - Saint-Pierre-et-Miquelon

Les types de risques couverts par ce standard et ses profils applicatifs sont ceux de la nomenclature GASPAR (Gestion assistée des procédures administratives relatives aux risques naturels et technologiques), décrite en [Annexe B](#nomenclature-des-risques-et-de-leurs-codes-dans-gaspar).


##  Les acteurs et rôles concernés 

Les acteurs concernés peuvent varier selon les différentes procédures de préventions des risques référencées dans la [partie introductive du document](#objectif-et-raison-dêtre-du-standard). De manière générale, on va retrouver cependant le shéma suivant :

| Nom du rôle | Caractéristiques |
|-|-|
| Producteur | Organisme en charge de produire le jeu de données conformément à ce standard : services de l'État (DDTM, DREAL) |
| Diffuseur | Organisme en charge de mettre à disposition le jeu de données : services de l'État (DDTM), organismes mandatés par l'État (BRGM), IGN, ...  |
| Utilisateur | Consommateur de la donnée : collectivité territoriale, organismes privés, bureaux d'étude, services de l'État, grand public, ... |



#  Contenu et structure de la donnée

Cette section définit, à l'aide du langage UML, le [modèle conceptuel de données](#modèle-conceptuel-de-données) commun aux données relatives aux procédures réglementaires de prévention des risques couvertes par la famille des Géostandards risques (Plans de prévention des risques, Directive Inondation, Porter à Connaissance). Le [catalogue d'objets](#catalogue-dobjets) fournit la sémantique des entités décrites dans le modèle.


##  Modèle conceptuel de données

Les données décrites dans le cadre de ce standard se répartissent dans cinq grandes thématiques :

- La thématique [procédures et périmètres](#thématique-procédures-et-périmètres) relate de l'aspect administratif et de l'état d'avancement de la procédure en lien avec le système GASPAR (gestion assistée des procédures administratives relatives aux risques) du MTECT dans lequel elles sont recensées. Toutes les entités des autres thématiques y sont rattachées ;

- La thématique [aléas](#thématique-aléas) comprend les entités permettant de décrire les phénomènes objets du risque à l'origine de la procédure, leur localisation, leurs probabilités et leurs intensités ;

- La thématique [enjeux](#thématique-enjeux) traite des biens, personnes, activités, éléments de patrimoine culturel ou environnemental, susceptibles d'être affectés par les aléas. 

- La thématique [origine du risque](#thématique-origine-du-risque) permet de faire référence aux entités génératrices du risque à l'origine de la procédure de prévention.

- La thématique [zonage réglementaire](#thématique-zonage-réglementaire) permet de décrire le zonage réglementaire déduit du croisement des objets de la thématique aléa et de ceux de la thématique enjeux.

Selon les procédures et les profils applicatifs associés, ces thématiques ne sont pas toujours toutes implémentées.

Le schéma suivant représente les liens entre chacune de ces thématiques. Les liens en pointillés illustrent pour information une relation de cause à effet entre deux thématiques mais ne sont pas implémentées dans le modèle qui suit.

**Fig. *xx* Relations entre les différentes thématiques.**

![Schéma relations thématiques](./ressources/Schema-thematiques.png)



### Thématique Procédures et périmètres

La thématique "Procédures et périmètre" regroupe les informations relatives au suivi administratif des procédures de prévention des risques et aux différents types de périmètres qui précèdent l'établissement du zonage réglementaire. Ces informations de suivi sont saisies et gérées par les services déconcentrés de l'État dans l'application GASPAR du MTE.

Le modèle de données de ce standard ne reprend que les informations du système GASPAR qui permettent de faire le lien avec la procédure qui est concernée et de faire état de son actualité. Les correspondances entre les données de standard et le modèle de données du système GASPAR sont précisées dans le [paragraphe dédié](#annexe-b---correspondances-avec-le-modèle-de-données-gaspar).

La liste des types de procédures prises en charge par ce standard correspond à des types de procédures gérés dans GASPAR. Elle est reprise par le type énuméré [TypeProcedure](#enumeration-typeprocedure).

Un objet de la classe [Procedure](#classe-dobjets-procedure) correspond à une procédure saisie dans GASPAR. Le champ "codeProcedure" contient la valeur de l'identifiant de la procédure dans GASPAR et permet ainsi de faire le lien entre les données de ce système.

Une procédure peut être la révision d'une ou de plusieurs anciennes procédures. Elle peut aussi faire l'objet d'une ou plusieurs autres procédures de révision. Ce lien potentiel entre différentes procédures est réprésenté par l'association ["revise"](#associations-de-la-classe-procedure).

A une procédure donnée peuvent être associés plusieurs périmètres sur lesquels l'état d'avancement de la procédure peut être différent. La classe ["Perimetre"](#classe-dobjets-perimetre) permet de les décrire. La liste des états d'avancement possibles pour une procédure sur un périmètre est établie par le type énuméré [TypeEtatProcedure](#enumeration-typeetatprocedure) et correspond aux différents états d'avancements d'une procédure identifiés dans GASPAR.

Les ressources internet liées à une procédure donnée (par exemple la publications d'un PPRI sur le site de la préfecture concernée) sont décrites l'aide d'objets de la classe [Reference Internet](#classe-dobjets-referenceinternet) qui permet d'indiquer l'adresse internet, le nom et la description de la ressource.  


**Fig. *xx* Modèle UML des classes relatives aux procédures et périmètres.**

![Modele UML Procedure et Perimetre](./ressources/UML-Procedure-Perimetre.png)



### Thématique Aléas

La thématique aléas porte sur la description des phénomènes, leur localisation, leurs probabilités et leurs intensités.

Dans cette thématique sont définies : 

* trois classes pour décrire des zones définies relativement aux aléas ([ZoneAlea](#classe-dobjets-zonealea), [ZoneDangerSpecifique](#classe-dobjets-zonedangerspecifique) et [ZoneProtegee](#classe-dobjets-zoneprotegee)) ;
* une classe pour décrire les ouvrages de protection [OuvrageProtection](#classe-dobjets-ouvrageprotection) ;  
* une classe générique permettant de décrire les éléments de détermination et de caractérisation des aléas [ElementCaracterisationAlea](#classe-dobjets-elementcaracterisationalea) ;
* quatre énumérations permettant de classifier les types d'aléas ([TypeAlea](#enumeration-typealea)), les niveaux d'aléas ([TypeNiveauAlea](#enumeration-typeniveaualea)), les types d'ouvrage de protection ([TypeOuvrageProtection](#enumeration-typeouvrageprotection)) et les référentiels externes d'ouvrages de protection ([TypeRefExterneProtection](#enumeration-typerefexterneprotection)) ;

La classe [ZoneAlea](#classe-dobjets-zonealea) permet de décrire les zones soumises à des aléas, en indiquant le type d'aléa (classifié à l'aide de l'énumération [TypeAlea](#enumeration-typealea)) qui la concerne, son niveau (classifié selon l'énumération [TypeNiveauAlea](#enumeration-typeniveaualea)) et sa probabilité d'occurrence. Les zones d'aléas sont définies par rapport à une procédure donnée.

La classe [ZoneDangerSpecifique](#classe-dobjets-zonedangerspecifique) permet de représenter des zones de danger particulières superposables aux zones d'aléas décrites précédemment. Elles sont aussi caractérisées par le type d'aléa ([TypeAlea](#enumeration-typealea)) et son niveau ([TypeNiveauAlea](#enumeration-typeniveaualea)) et rattachées à une procédure donnée. Elles peuvent être aussi liées à un ouvrage de protection ([OuvrageProtection](#classe-dobjets-ouvrageprotection)). 

La classe ([ZoneProtegee](#classe-dobjets-zoneprotegee)) permet de décrire les zones protégées par un ouvrage de protection ([OuvrageProtection](#classe-dobjets-ouvrageprotection)) relativement à un aléa. Ces zones sont superposables aux zones d'aléas. Elles sont caractérisées par le type d'aléa ([TypeAlea](#enumeration-typealea)), un niveau de protection et une période de retour relatifs à l'ouvrage de protection.

Les ouvrages de protection sont déjà décrits dans d'autres référentiels plus ou moins normatifs (par exemple, le référentiel des obstacles à l'écoulement [ROE 1.2:2014](https://www.sandre.eaufrance.fr/notice-doc/description-des-ouvrages-faisant-obstacle-%C3%A0-l%E2%80%99%C3%A9coulement)). Ce Standard propose seulement une classe [OuvrageProtection](#classe-dobjets-ouvrageprotection) qui permet d'intégrer des objets de ces référentiels lorsqu'ils sont inclus dans une cartographie de prévention des risques et d'indiquer de quel type ils sont [TypeOuvrageProtection](#enumeration-typeouvrageprotection) et le référentiel dont ils sont extraits [TypeRefExterneProtection](#enumeration-typerefexterneprotection).

Les zones d'aléas sont déterminées à partir d'éléments techniques, spécifiques aux types d'aléas décrits, par exemple les zones d'iso classe de hauteur d'eau permettant de déterminer les surfaces inondables pour les territoires à risque important d'inondation. Ce standard ne définit pas spécifiquement chacun de ces éléments mais propose une classe générique [ElementCaracterisationAlea](#classe-dobjets-elementcaracterisationalea) qui pourra être spécialisée au besoin selon les profils applicatifs de façon à rattacher ces éléments aux zones d'aléas qu'ils permettent de déterminer et catactériser leur intensité et leur probabilité. 


**Fig. *xx* Modèle UML des classes relatives aux aléas.**

![Modele UML Aléas](./ressources/UML-Procedure-Alea.png)



### Thématique Origine du Risque

La thématique Origine du risque permet de décrire les entités génératrices du risque à l'origine de la procédure de prévention. par exemple, les tronçons d'un cours d'eau à l'origine du risque inondation, l'enceinte d'une installation classée pour la protection de l'environnement (ICPE) pour le risque technologique ou la localisation d'un puit de mine pour le risque minier.

Elle définit une classe [OrigineRisque](#classe-dobjets-originerisque) qui porte les informations minimales permettant d'intégrer les entités issues de référentiels externes variés dans une cartographie des risques.

**Fig. *xx* Modèle UML des classes relatives à l'origine du risque.**

![Modele UML Zonage Réglementaire](./ressources/UML-Procedure-OrigineRisque.png)


### Thématique Enjeux

La thématique "Enjeux" permet de décrire les personnes, biens, activités, éléments de patrimoine culturel ou environnemental, menacés par un aléa ou susceptibles d'être affectés et endommagés par celui-ci. Il peut notamment s'agir d'établissements, infrastructures et installations sensibles dont la réalisation de l'aléa peut aggraver ou compliquer la gestion de crise.

Les données d'enjeux sont de nature diverses et définies dans des référentiels externes, nationaux ou locaux. La nature et les caractéristiques de ces données à reporter dans les données de prévention des risques dépend des utilisations visées de ces données et de la procédure concernée.

Dans cadre du modèle commun, la thématique "Enjeux" définit une classe [Enjeu](#classe-dobjets-enjeu) qui porte les informations minimales permettant d'intégrer des données d'enjeux issues de référentiels externes, la date de collecte de ces données, une information sur leur(s) vulnérabilité(s) à l'aide du type de données [TypeVulnerabilite](#type-de-données-typevulnerabilite) ainsi qu'un rattachement de ces entités à une nomenclature d'enjeux à l'aide du type de données [TypeEnjeu](#type-de-données-typeenjeu).

La définition des nomenclatures possibles sera proposée dans les profils applicatifs en fonction des besoins et des cas d'usages. Le modèle commun rappelle seulement la nomenclature des enjeux définie dans [INSPIRE NZ:2013](https://inspire.ec.europa.eu/documents/Data_Specifications/INSPIRE_DataSpecification_NZ_v3.0.pdf) au travers de la liste de codes [ExposedElementCategoryValue](#liste-de-codes-exposedelementcategoryvalue). 



**Fig. *xx* Modèle UML des classes relatives aux enjeux.**

![Modele UML Enjeux](./ressources/UML-Procedure-Enjeux.png)


### Thématique Zonage réglementaire

La thématique "Zonage reglementaire" permet de définir les zones sur lesquelles un règlement spécifique s'applique. Il peut s'agir de zones exposées aux risques ou de zones qui n'y sont pas directement exposées mais sur lesquelles des mesures peuvent être prévues pour éviter d'aggraver le risque.

Au niveau du modèle commun cette thématique définit une interface [ZoneReglementaire](#interface-zonereglementaire) qui permet de décrire les élements génériques d'une zone réglementaire. Cette interface sera implémentée spécifiquement selon les profils applicatifs.

Il est à noter que certaines procédures n'impliquent pas obligatoirement la mise en place d'un zonage réglementaire et cette interface pourra ne pas être implémentée dans certains profils applicatifs.

**Fig. *xx* Modèle UML des classes relatives au zonage réglementaire.**

![Modele UML Zonage Réglementaire](./ressources/UML-Procedure-ZoneReg.png)




##  Catalogue d'objets

### Thématique Procédures et périmètres

#### Classe d'objets *Procedure*

**Nom de la classe** : Procedure

**Titre** : Procédure Administrative

**Définition** : La classe "Procedure" permet de faire le lien entre un jeu de données du Standard et le système GASPAR. Un objet de cette classe correspond à une procédure unique identifiée dans GASPAR.

**Modélisation géométrique** : Cette classe n'a pas de géométrie.

**Propriétés** : 

| Nom de la propriété | Définition | Type | Valeurs possibles | Contraintes |
|-|-|-|-|-|
| codeProcedure | Identifiant de la procédure dans le système GASPAR. | CharacterString | La syntaxe d'un code de procédure est déterminée par le système GASPAR. Elle est rappellée en [ANNEXE B](#nomenclature-des-identifiants-dans-gaspar). | 1..1  |
| libelleProcedure | Nom de la procédure. | CharacterString | La syntaxe du libellé d'une procédure est déterminée par le système GASPAR. | 1..1  |
| typeProcedure | Type de procédure selon la classification dans le système GASPAR | Enumeration [TypeProcedure](#enumeration-typeprocedure) | Celles de l'énumération | 1..1 |


#### Associations de la classe procedure

| Nom de l'association | Type | Définition | Classe de départ | Classe d'arrivée |
|-|-|-|-|-|
| **revise** | Association | Relation sémantique permettant d'indiquer qu'une procédure est la révision de zéro ou plusieurs procédures existantes et inversement qu'une procédure peut être révisée par zéro ou plusieurs procédures GASPAR. | [Procedure](#classe-dobjets-procedure) (0..\*) | [Procedure](#classe-dobjets-procedure) (0..\*) |
| **est decrit par** | Association | Relation sémantique permettant d'indiquer qu'une procédure est documentée par une ou plusieurs références sur internet. | [Procedure](#classe-dobjets-procedure) (1..1) | [ReferenceInternet](#classe-dobjets-referenceinternet) (1..\*) |



#### Classe d'objets *Perimetre*

**Nom de la classe** : Perimetre

**Titre** : Périmètre

**Définition** : La classe Perimetre permet de décrire l'état d'avancement d'une procédure sur une zone géographique donnée. Pour une même procédure donnée à un instant donné, plusieurs périmètres peuvent exister dans des états d'avancement différents.

**Modélisation géométrique** : Multi-Polygone. Les éléments relatifs à l'origine de saisie de la géométrie, sa précision ou sa qualité sont précisés dans les [métadonnées](#métadonnées).


**Propriétés** : 


| Nom de la propriété | Définition | Type | Valeurs possibles | Contraintes |
|-|-|-|-|-|
| codeProcedure | Identifiant de la procédure décrite par le périmètre. Ce champ permet de faire le lien avec l'objet correspondant de la classe [Procedure](#classe-dobjets-procedure) | CharacterString | La valeur de ce champ doit aussi exister comme valeur de la propriété *codeProcedure* de la classe [Procedure](#classe-dobjets-procedure). | 1..1 |
| etatProcedure | État d'avancement de la procédure référencée par *codeProcedure* sur le périmètre | Enumeration [TypeÉtatProcedure](#enumeration-typeetatprocedure) | Celles de l'énumération | 1..1 |
| dateÉtat | Date à partir de laquelle l'état d'avancement de la procédure sur ce périmètre est effectif. | Date | valeur représentant une date : jour(optionnel), mois(optionnel), année | 1..1 |


#### Classe d'objets *ReferenceInternet*

**Nom de la classe** : ReferenceInternet

**Titre** : Référence Internet

**Définition** : La classe ReferenceInternet permet de décrire des ressources accessibles sur internet, qu'il s'agisse d'une page html, d'une arborescence d'un site web ou de documents téléchargeables. Un objet de cette classe représente une telle ressource, caractérisée de manière unique par son adresse sur internet (URL).

**Modélisation géométrique** : Cette classe n'a pas de géométrie.

**Propriétés** : 


| Nom de la propriété | Définition | Type | Valeurs possibles | Contraintes |
|-|-|-|-|-|
| adresse | Adresse internet de la ressource (URL) | CharacterString | formalisme d'URL à respecter | 1..1 | 
| nomRessource | Nom de la ressource référencée sur Internet | CharacterString | Saisie Libre | 0..1 (Saisie recommandée) |
| typeReference | Catégorisation de la ressource référencée sur Internet. Ce champ permet d'indiquer le type de document référencé en fonction des procédures | Enumeration [TypeReference](#enumeration-typereference) | Celles de l'énumération | 1..1 |
| description | Description de la ressource référencée sur Internet. Ce champ peut permettre notamment d'indiquer le type de ressource (site web, page HTML, document PDF, ...) | CharacterString | Saisie libre | 0..1 |


#### Énumeration *TypeProcedure*

Le tableau suivant liste les différents types de procédures de prévention des risques pouvant être décrites. Les correspondances avec les types de procédures gérés dans GASPAR sont précisées dans le [paragraphe dédié](#types-de-procédures-gaspar).


| Libellé | Description |
|-|-|
| Plan de Prévention des Risques Naturels Inondation | Ce type de procédure couvre les risques naturels liés aux inondations par ruissellement, par débordement de cours d'eau, par submersion marine et par remontée de nappe |
| Plan de Prévention des Risques Naturels Littoral | Ce type de procédure couvre les risques naturels liés aux retraits du trait de côte et la submersion marine |
| Plan de Prévention des Risques Naturels Mouvement de Terrain | Ce type de procédure couvre les risques naturels liés aux éboulements ou chutes de blocs rocheux, glissements de terrain, coulées boueuses, effondrements de cavités souterraines, l'érosion de berge et au retrait-gonflement des argiles |
| Plan de Prévention des Risques Naturels Multirisques | Ce type de procédure couvre plusieurs types de risques naturels |
| Plan de Prévention des Risques Naturels Séisme | Ce type de procédure couvre les risques naturels liés aux tsunamis, mouvements de terrain, et la liquéfaction des sols|
| Plan de Prévention des Risques Naturels Avalanches | Ce type de procédure couvre les risques naturels liés aux avalanches spontanées, avalanches provoquées naturellement, avalanches provoquées accidentellement, et aux avalanches provoquées artificiellement |
| Plan de Prévention des Risques Naturels Eruption volcanique |Ce type de procédure couvre les risques naturels liés aux glissements de terrain, modification du cours des rivières, tsunamis, et la destruction des réseaux d’eau, d’énergie ou de communication |
| Plan de Prévention des Risques Naturels Incendie de forêt | Ce type de procédure couvre les risques naturels liés aux incendies |
| Plan de Prévention des Risques Naturels Cyclone | Ce type de procédure couvre les risques naturels liés à l'activité cyclonique |
| Plan de Prévention des Risques Naturels Radon | Ce type de procédure couvre les risques liés aux émanations du gaz radon en fonction du contexte naturel (formations géologiques, failles, sources hydrothermales) ou minier | 
| Plan de Prévention des Risques Technologiques | Ce type de procédure couvre les risques liés aux risques nucléaire, industriels, de transport de matières dangereuses et de rupture de barrage |
| Plan de Prévention des Risques Miniers | Ce type de procédure couvre les risques liés aux mouvements de terrains en lien avec les ouvrages souterrains ou les ouvrages de surface, l'échauffement / la combustion de terril , l'émission de gaz de mine , la pollution des sols et des eaux et l'inondation en lien avec les anciennes exploitations minières |
| Territoires à Risque Important d’Inondations |Ce type de procédure couvre le risque inondation. Il est lié à la mise en œuvre de la Directive Inondation |
| Porter à Connaissance | Ce type de procédure concerne le "Porter à Connaissance" (PAC) auprès des collectivités locales hors procédures TRI et PPR (couvertes par les précédentes) |


#### Enumeration *TypeEtatProcedure*

Le tableau suivant liste les différents états possibles d'une procédure applicable sur un périmètre donné. Les correspondances de ces états avec les états possibles gérés dans GASPAR sont précisés dans le [paragraphe dédié](#etats-dune-procédure-gaspar).


| Libellé État | Description |
|-|-|
| Programmation | Période prévisionnelle de l'élaboration de la procédure |
| Montage | Période de réflexion du service instructeur sur la mise en place de la procédure |
| Prescrit | La procédure a fait l'objet d'un arrêté préfectoral de prescription |
| Porté à connaissance | La procédure a été portée à connaissance des collectivités |
| Prorogé | La durée de validité de la procédure est prolongée au delà de la date initialement fixée |
| Anticipé | La procédure a fait l'objet d'un arrêté préfectoral portant mise en application anticipée |
| Approuvé | La procédure fait l'objet d'un arrêté préfectoral portant approbation |
| Annulé | La procédure a fait l'objet d'une décision d'une juridiction portant annulation |
| Abrogé | La procédure a fait l'objet d'un arrêté préfectoral portant abrogation |


#### Enumeration *TypeReference*

Le tableau suivant liste les différents types de documents qui peuvent être référencés dans le cadre d'une procédure.


| Libellé | Description |
|-|-|
| Règlement signé | Le document est un règlement approuvé (Utilisation dans le cadre d'un PPR) |
| Zonage réglementaire signé | Le document est le zonage réglementaire d'un PPR approuvé (Utilisation dans le cdre d'un PPR) |
| Carte signée | Le document est une carte approuvée (Utilisation dans le cadre d'un PPR ou de la Directive Inondation) |
| Autre carte | Le document est une carte additionnelle (Utilisation dans toutes les procédures) |
| Autre | Tout autre document (Utilisation dans toutes les procédures) |


### Thématique Aléas

#### Classe d'objets *ZoneAlea*

**Nom de la classe** : ZoneAlea

**Titre** : Zone d'aléa

**Définition** : La classe Zone d'aléa permet de décrire des zones géographiques soumises à des aléas et d'en préciser le type d'aléa, son niveau, et sa probabilité d'occurrence.

**Modélisation géométrique** : Multi polygone de façon à pouvoir matérialiser des géométries complexes. Il est cependant recommandé de restreindre la géométrie à des surfaces élémentaires dans la mesure du possible de façon à éviter des objets avec un géométrie trop lourde et difficiles à manipuler en SIG.

**Propriétés** : 


| Nom de la propriété | Définition | Type | Valeurs possibles | Contraintes |
|-|-|-|-|-|
| idZoneAlea | Identifiant unique d'un objet zone d'aléa | CharacterString | Deux objets de la classe ZoneAlea ne peuvent pas avoir la même valeur pour cette propriété | 1..1 | 
| codeProcedure | Identifiant de la procédure pour laquelle la zone d'aléas a été calculée. Ce champ permet de faire le lien avec l'objet correspondant de la classe [Procedure](#classe-dobjets-procedure) | CharacterString | La valeur de ce champ doit aussi exister comme valeur de la propriété codeProcedure d'un objet de la classe [Procedure](#classe-dobjets-procedure) | 1..1 |
| typeAlea | Type de l'aléa associé à la zone d'aléa, selon la nomenclature définie dans GASPAR et reprise par l'énumération [TypeAlea](#enumeration-typealea) | Énumération [TypeAlea](#enumeration-typealea) | Celles de l'énumération | 1..1 |
| niveauAlea | Caractérisation du niveau de l'aléa selon la classification définie dans GASPAR et reprise par l'énumération [TypeNiveauAlea](#enumeration-typeniveaualea). Les régles de détermination d'un niveau d'aléa dépend du type d'aléa concerné et sont spécifiées dans des guides ad'hoc dont il doit être fait mention dans les métadonnées accompagnant le jeu de données de prévention des risques. | Énumération [TypeNiveauAlea](#enumeration-typeniveaualea) | Celles de l'énumération | 1..1 |
| occurrence | Ce champ permet d'indiquer l'occurrence de survenue de l'aléa. Sa caractérisation dépend du type d'aléa, il pourra s'agir par exemple d'une période de retour ou d'un autre indicateur, à définir dans les profils applicatifs. | CharacterString | Saisie libre, éventuellement contrainte selon le type d'aléa | 0..1 |
| description | Description textuelle de la zone d'aléa | CharacterString | Saisie libre | 0..1 |



#### Associations de la classe ZoneAlea

| Nom de l'association | Type | Définition | Classe de départ | Classe d'arrivée |
|-|-|-|-|-|
| **est déterminé par** | Association | Relation sémantique permettant de faire le lien entre une zone d'aléa et des éléments qui ont pu permettre de la calculer, décrits par la classe générique [ElementCaracterisationAlea](#classe-dobjets-elementcaracterisationalea).| [ZoneAlea](#classe-dobjets-zonealea) (0..1) | [ElementCaracterisationAlea](#classe-dobjets-elementcaracterisationalea) (0..\*) |


#### Classe d'objets *ZoneProtegee*

**Nom de la classe** : ZoneProtegee

**Titre** : Zone Protégée

**Définition** : La classe Zone Protégée permet de décrire les zones protégées par un ouvrage de protection ([OuvrageProtection](#classe-dobjets-ouvrageprotection)) relativement à un aléa. Ces zones sont superposables aux zones d'aléas. Elles sont caractérisées par le type d'aléa ([TypeAlea](#enumeration-typealea)), un niveau de protection et une période de retour relatifs à l'ouvrage de protection.

**Modélisation géométrique** : Multi polygone de façon à pouvoir matérialiser des géométries complexes. Il est cependant recommandé de restreindre la géométrie à des surfaces élémentaires dans la mesure du possible de façon à éviter des objets avec un géométrie trop lourde et difficiles à manipuler en SIG.

**Propriétés** : 


| Nom de la propriété | Définition | Type | Valeurs possibles | Contraintes |
|-|-|-|-|-|
| idZoneProtegee | Identifiant unique d'un objet zone protégée | CharacterString | Deux objets de la classe ZoneProtegee ne peuvent pas avoir la même valeur pour cette propriété | 1..1 | 
| codeProcedure | Identifiant de la procédure pour laquelle la zone protégée a été calculée. Ce champ permet de faire le lien avec l'objet correspondant de la classe [Procedure](#classe-dobjets-procedure) | CharacterString | La valeur de ce champ doit aussi exister comme valeur de la propriété codeProcedure d'un objet de la classe [Procedure](#classe-dobjets-procedure) | 1..1 |
| typeAlea | Type de l'aléa associé à la zone d'aléa, selon la nomenclature définie dans GASPAR et reprise par l'énumération [TypeAlea](#enumeration-typealea) | Énumération [TypeAlea](#enumeration-typealea) | Celles de l'énumération | 1..1 |
| niveauProtection | Niveau de protection de la zone selon le type d'Alea. Par exemple, dans le cas d'un système d'endiguement ([Article R214-119-1 code de l'environnement](https://www.legifrance.gouv.fr/codes/id/LEGIARTI000039001213/2019-08-31)), le niveau de protection d'une zone exposée au risque d'inondation ou de submersion marine est déterminé par la hauteur maximale que peut atteindre l'eau sans que cette zone soit inondée en raison du débordement, du contournement ou de la rupture des ouvrages de protection quand l'inondation provient directement du cours d'eau ou de la mer. | CharacterString | Dans le cas des zones protégées par un système d'endiguement, il s'agit d'une valeur numérique en mètre. | 0..1 |
| occurrence | Ce champ permet d'indiquer l'occurrence de survenue de l'aléa correspondant au niveau de protection de l'ouvrage. | CharacterString | Saisie libre | 0..1 |
| description | Description textuelle de la zone protégée | CharacterString | Saisie libre | 0..1 |



#### Associations de la classe ZoneProtégée

| Nom de l'association | Type | Définition | Classe de départ | Classe d'arrivée |
|-|-|-|-|-|
| **est engendré par** | Association | Relation sémantique permettant d'associer une zone protégée avec l'ouvrage de protection qui la protège. | [ZoneProtegee](#classe-dobjets-zoneprotegee) (0..\*) |  [OuvrageProtection](#classe-dobjets-ouvrageprotection) (1..1) |


#### Classe d'objets *ZoneDangerSpecifique*

**Nom de la classe** : ZoneDangerSpecifique

**Titre** : Zone de danger spécifique

**Définition** : La classe Zone de danger spécifique permet de représenter des zones de danger particulières superposables aux zones d'aléas. Elles sont aussi caractérisées par le type d'aléa ([TypeAlea](#enumeration-typealea)) et son niveau ([TypeNiveauAlea](#enumeration-typeniveaualea)) et rattachées à une procédure donnée. Elles peuvent être aussi liées à un ouvrage de protection ([OuvrageProtection](#classe-dobjets-ouvrageprotection)).

**Modélisation géométrique** : Multi polygone de façon à pouvoir matérialiser des géométries complexes. Il est cependant recommandé de restreindre la géométrie à des surfaces élémentaires dans la mesure du possible de façon à éviter des objets avec un géométrie trop lourde et difficiles à manipuler en SIG.


**Propriétés** : 


| Nom de la propriété | Définition | Type | Valeurs possibles | Contraintes |
|-|-|-|-|-|
| idZoneDanger | Identifiant unique d'un objet zone de danger spécifique | CharacterString | Deux objets de la classe ZoneDangerSpecifique ne peuvent pas avoir la même valeur pour cette propriété | 1..1 | 
| codeProcedure | Identifiant de la procédure pour laquelle la zone de danger spécifique a été calculée. Ce champ permet de faire le lien avec l'objet correspondant de la classe [Procedure](#classe-dobjets-procedure) | CharacterString | La valeur de ce champ doit aussi exister comme valeur de la propriété codeProcedure d'un objet de la classe [Procedure](#classe-dobjets-procedure) | 1..1 |
| typeAlea | Type de l'aléa associé à la zone de danger spécifique, selon la nomenclature définie dans GASPAR et reprise par l'énumération [TypeAlea](#enumeration-typealea) | Énumération [TypeAlea](#enumeration-typealea) | Celles de l'énumération | 1..1 |
| niveauAlea | Caractérisation du niveau de l'aléa selon la classification définie dans GASPAR et reprise par l'énumération [TypeNiveauAlea](#enumeration-typeniveaualea). | Énumération [TypeNiveauAlea](#enumeration-typeniveaualea) | Celles de l'énumération | 1..1 |
| typeSuralea | Ce champ permet d'indiquer le type de zone de danger spécifique. | CharacterString | Des limitations sur les valeurs possibles pourront être précisés dans les profils applicatifs | 0..1 |
| description | Description textuelle de la zone de danger spécifique | CharacterString | Saisie libre | 0..1 |



#### Associations de la classe ZoneDangerSpecifique

| Nom de l'association | Type | Définition | Classe de départ | Classe d'arrivée |
|-|-|-|-|-|
| **est engendré par** | Association | Relation sémantique permettant d'associer une zone de danger spécifique avec un ouvrage de protection qui la génère. | [ZoneDangerSpecifique](#classe-dobjets-zonedangerspecifique) (0..\*) |  [OuvrageProtection](#classe-dobjets-ouvrageprotection) (0..1) |



#### Classe d'objets *OuvrageProtection*

**Nom de la classe** : OuvrageProtection

**Titre** : Ouvrage de protection

**Définition** : La classe Ouvrage de protection permet de faire état des ouvrages de protection contre les aléas (par exemple des digues en prévention des risques d'inondation). La modélisation de ces ouvrages est décrite dans d'autres référentiels tels que, dans le cadre du risque inondation, le Référentiel des Obstacles à l'Ecoulement ([ROE 1.2:2014](https://www.sandre.eaufrance.fr/notice-doc/description-des-ouvrages-faisant-obstacle-%C3%A0-l%E2%80%99%C3%A9coulement)) ou le Système d'Information sur les Ouvrages Hydrauliques (SIOUH), cette classe permet de faire le lien avec des objets qui en sont issus sans avoir à en spécifier les caractéristiques. Elle impose cependant que ces objets soient porteurs d'une géométrie, de la référence au référentiel dont ils sont issus et d'une indication du type d'ouvrage qu'ils représentent.

**Modélisation géométrique** : Les objets de la classe ouvrage de protection peuvent porter tout type de géométrie selon le type d'ouvrage et la façon dont ils sont représentés dans leurs référentiels d'origine.

**Propriétés** : 


| Nom de la propriété | Définition | Type | Valeurs possibles | Contraintes |
|-|-|-|-|-|
| idRefExterne | Identifiant de l'objet dans le référentiel externe d'où il est extrait | CharacterString | Le formalisme de l'identifiant est déterminé par les spécifications du référentiel externe | 1..1 | 
| refExterne | Référentiel externe d'où est extrait l'objet | Énumération [TypeRefExterneOuvrage](#enumeration-typerefexterneouvrage) | Celles de l'énumération | 1..1 | 
| refExterneAutre | Nom du référentiel externe d'où est extrait l'objet si la valeur "autre" a été renseignée pour le champ refExterne. | CharacterString | La valeur doit désigner de manière non ambigue un nom et une version du référentiel utilisé. Saisie obligatoire si la valeur "autre" est renseignée pour refExterne.  | 0..1 | 
| typeOuvrageProtection | Désignation du type d'ouvrage que représente cet objet. | [TypeOuvrageProtection](#enumeration-typeouvrageprotection) | Celles de l'énumération | 0..1 |


#### Classe d'objets *ElementCaracterisationAlea*

**Nom de la classe** : ElementCaracterisationAlea

**Titre** : Element de caractérisation d'aléa

**Définition** : La classe Element de caractérisation d'aléa est une classe générique (abstraite) qui permet de lier des objets spécifiques (issus d'études hydrauliques par exemple) ayant permis de définir une zone d'aléa. Elle a vocation à être spécialisée en fonction de l'application de ce modèle.

**Modélisation géométrique** : Classe générique ne portant pas de géométrie à priori. Ses classes dérivées peuvent en porter selon les cas.

**Propriétés** : 


| Nom de la propriété | Définition | Type | Valeurs possibles | Contraintes |
|-|-|-|-|-|
| idZoneAlea | Identifiant de la zone d'aléa qui a été déterminée par cet élément | CharacterString | Valeur d'un identifiant porté par un objet de classe zoneAlea | 1..1 | 


#### Enumeration *TypeAlea*

Le tableau suivant liste les différents types d'aléas applicables les zones d'aléas. Les correspondances avec la nomenclature définie dans GASPAR sont précisées dans le [paragraphe dédié](#nomenclature-des-risques-et-de-leurs-codes-dans-gaspar). A noter que les libellés intègrent la hiérarchisation à trois niveaux proposée par la nomenclature GASPAR.

| Libellé Aléa |
|-|
| Risque naturel ; Inondation ; Par une crue à débordement lent de cours d'eau |
| Risque naturel ; Inondation ; Par une crue torrentielle ou à montée rapide de cours d'eau |
| Risque naturel ; Inondation ; Par ruissellement et coulée de boue |
| Risque naturel ; Inondation ; Par lave torrentielle (torrent et talweg) |
| Risque naturel ; Inondation ; Par remontées de nappes naturelles |
| Risque naturel ; Inondation ; Par submersion marine |
| Risque naturel ; Mouvement de terrain ; Affaissements et effondrements d'origine anthropique (anciennes carrières souterraines, hors mines) |
| Risque naturel ; Mouvement de terrain ; Affaissement et effondrements d’origine naturelle (cavités souterraines hors mines) |
| Risque naturel ; Mouvement de terrain ; Eboulement ou chutes de pierres et de blocs |
| Risque naturel ; Mouvement de terrain ; Glissement de terrain |
| Risque naturel ; Mouvement de terrain ; Avancée dunaire |
| Risque naturel ; Mouvement de terrain ; Recul du trait de côte et de falaises |
| Risque naturel ; Séisme |
| Risque naturel ; Avalanche |
| Risque naturel ; Eruption volcanique |
| Risque naturel ; Feu de forêt |
| Risque naturel ; Phénomène lié à l'atmosphère ; Cyclone / Ouragan |
| Risque naturel ; Phénomène lié à l'atmosphère ; Tempête et grains (vent) |
| Risque naturel ; Phénomène lié à l'atmosphère ; Foudre |
| Risque naturel ; Phénomène lié à l'atmosphère; Grêle |
| Risque naturel ; Phénomène lié à l'atmosphère; Neige et pluies verglaçantes |
| Risque naturel ; Radon  |
| Risque technologique ; Risque industriel ; Effet thermique |
| Risque technologique ; Risque industriel ; Effet de surpression |
| Risque technologique ; Risque industriel ; Effet toxique |
| Risque technologique ; Risque industriel ; Effet de projection |
| Risque technologique ; Nucléaire |
| Risque technologique ; Rupture de barrage |
| Risque technologique ; Transport de marchandises dangereuses |
| Risque technologique ; Engins de guerre |
| Risque minier ; Affaissement minier ; Effondrements généralisés |
| Risque minier ; Affaissement minier ; Effondrements localisés |
| Risque minier ; Affaissement minier ; Affaissements progressifs |
| Risque minier ; Affaissement minier ; Tassements |
| Risque minier ; Affaissement minier ; Glissements ou mouvements de pente |
| Risque minier ; Affaissement minier ; Coulées |
| Risque minier ; Affaissement minier ; Ecroulements rocheux |
| Risque minier ; Inondations de terrains miniers ; Pollution des eaux souterraines et de surface |
| Risque minier ; Inondations de terrains miniers ; Pollution des sédiments et des sols |
| Risque minier ; Emissions en surface de gaz de mine |
| Risque minier ; Echauffement des terrains de dépôts |


#### Enumeration *TypeNiveauAlea*

Le tableau suivant liste les valeurs possibles et communes pour caractériser l'intensité des aléas. Elles représentent une gradation sur une échelle croissante d'intensité. Les règles de détermination du niveau ainsi que leur appellation varient en fonction de la zone et du type d'aléa et sont précisées dans des guides dédiés qui sont référencés dans les métadonnées associées au jeu de données.

| Code | Libellé État | 
|-|-|
| 01 | Faible |  |
| 02 | Moyen | 
| 03 | Moyen plus | 
| 04 | Fort |
| 05 | Fort plus |
| 06 | Très fort |
| 07 | Très fort plus | 



#### Enumeration *TypeOuvrageProtection*

Le tableau suivant liste les valeurs possibles permettant de désigner un type d'ouvrage de protection.

| Libellé référentiel | Description |
|-|-|
| Barrage | Ouvrage, composé éventuellement de plusieurs tronçons, construit en élévation du terrain naturel, afin de retenir de l'eau de manière permanente ou temporaire (SIOUH) |
| Digue | Ouvrage, composé éventuellement de plusieurs tronçons, dont au moins une partie est construite en élévation du terrain naturel afin de protéger des zones naturellement inondables (SIOUH) |
| Autre | Autre type d'ouvrage ne figurant pas dans la liste ci-dessus |


#### Enumeration *TypeRefExterneOuvrage*

Le tableau suivant liste les valeurs possibles permettant de désigner un référentiel dont est issu un ouvrage de protection. 

| Libellé référentiel | Description |
|-|-|
| ROE | Référentiel des obstacles à l'écoulement - Thème : Ouvrages - Dernière version applicable version 1.2 - 2014|
| SIOUH | Système d'Information des Ouvrages Hydrauliques - dernière version applicable version 4 - 2017 |
| Autre | Autre référentiel ne faisant pas partie de la liste des référentiels ci-dessus |


### Thématique Origine du Risque

#### Classe d'objets *OrigineRisque*

**Nom de la classe** : OrigineRisque

**Titre** : Origine du Risque

**Définition** : La classe Origine du Risque permet de faire état des objets qui engendrent les risques ayant motivé la procédure concernée. Elle permet d'intégrer des objets issus de référentiels externes spécifiques selon le type de risque ou d'objet en indiquant à minima un nom et une géométrie si on souhaite le faire figurer dans une cartographie et en précisant le nom du référentiel d'origine et l'identifiant de l'objet dans ce référentiel. 

**Modélisation géométrique** : Les objets de la classe origine du risque peuvent porter tout type de géométrie selon leurs types et la façon dont ils sont représentés dans leurs référentiels d'origine.

**Propriétés** : 

| Nom de la propriété | Définition | Type | Valeurs possibles | Contraintes |
|-|-|-|-|-|
| codeProcedure | Identifiant de la procédure pour laquelle l'objet origine du risque a été rapporté. Ce champ permet de faire le lien avec l'objet correspondant de la classe [Procedure](#classe-dobjets-procedure) | CharacterString | La valeur de ce champ doit aussi exister comme valeur de la propriété codeProcedure d'un objet de la classe [Procedure](#classe-dobjets-procedure) | 1..1 |
| idRefExterne | Identifiant de l'objet dans le référentiel externe d'où il est extrait | CharacterString | Le formalisme de l'identifiant est déterminé par les spécifications du référentiel externe. | 1..1 | 
| refExterne | Référentiel externe d'où est extrait l'objet. | CharacterString | Saisie Libre | 1..1 | 
| nom | Nom de l'objet origine du risque. | CharacterString | Saisie libre (si possible en fonction du nom de l'objet dans le référentiel d'où il est extrait). | 1..1 |



### Thématique Enjeux

#### Classe d'objets *Enjeu*

**Nom de la classe** : Enjeu

**Titre** : Enjeu

**Définition** : La classe Enjeu permet de faire état des objets d'enjeu qui sont représentés dans le cadre de la procédure de prévention des risques. Elle permet d'intégrer des objets issus de référentiels externes ou saisis spécifiquement en indiquant à minima un nom, le rattachement à une ou plusieurs nomenclatures d'enjeu, une date de collecte, une plusieurs éventuelle(s) information(s) sur les vulnérabilités de l'enjeu et une géométrie, en précisant le cas échéant le nom du référentiel d'origine et l'identifiant de l'objet dans ce référentiel. 

**Modélisation géométrique** : Les objets de la classe Enjeu peuvent porter tout type de géométrie selon leurs types et la façon dont ils sont représentés.

**Propriétés** : 

| Nom de la propriété | Définition | Type | Valeurs possibles | Contraintes |
|-|-|-|-|-|
| idEnjeu | Identifiant de l'objet enjeu | CharacterString | Deux objets de la classe enjeu ne peuvent avoir la même valeur pour le champ idEnjeu. | 1..1 | 
| codeProcedure | Identifiant de la procédure pour laquelle l'objet enjeu a été renseigné. Ce champ permet de faire le lien avec l'objet correspondant de la classe [Procedure](#classe-dobjets-procedure) | CharacterString | La valeur de ce champ doit aussi exister comme valeur de la propriété codeProcedure d'un objet de la classe [Procedure](#classe-dobjets-procedure) | 1..1 |
| idRefExterne | Identifiant de l'objet dans le référentiel externe d'où il est extrait, si c'est le cas. | CharacterString | Le formalisme de l'identifiant est déterminé par les spécifications du référentiel externe. | 0..1 | 
| refExterne | Référentiel externe d'où est extrait l'objet, si c'est le cas. | CharacterString | Saisie Libre. Une restriction sur les référentiels à utiliser pourra être faite dans les profils applicatifs | 0..1 | 
| nomEnjeu | Nom de l'objet d'enjeu. | CharacterString | Saisie libre (si possible en fonction du nom de l'objet dans le référentiel d'où il est extrait). | 1..1 |
| typeEnjeu | classifications de l'enjeu dans une nomenclature d'enjeu. | [TypeEnjeu](#type-de-données-typeenjeu) | Valeurs déterminées par les nomenclatures disponibles. | 1..1 |
| vulnerabilite | Information sur les vulnérabilités de l'enjeu | [TypeVulnerabilite](#type-de-données-typevulnerabilite) | Valeurs selon les types de vulnérabilités dont on veut attester. | 0..\* |
| dateEnjeu | Date de collecte de l'objet d'enjeu. | Date | Valeur représentant une date : jour(optionnel), mois(optionnel), année. | 1..1 |


#### Type de données *TypeEnjeu*

**Nom du type de données** : TypeEnjeu

**Définition** : Le type de données TypeEnjeu permet de définir un type d'enjeu à l'aide d'un nom ("codeEnjeu" : identifiant ou libellé) faisant partie d'une nomenclature particulière identifiée grace au champ "nomenclatureEnjeu".

**Propriétés** : 

| Nom de la propriété | Définition | Type | Valeurs possibles | Contraintes |
|-|-|-|-|-|
| codeEnjeu | Désignation du type d'enjeu dans la nomenclature référencée par la propriété "nomenclatureEnjeu" | CharacterString | Les valeurs sont contraintes selon les valeurs possibles définies dans la nomenclature à laquelle appartient le code. | 1..1 | 
| nomenclatureEnjeu | Référence à une nomenclature établie définissant des types d'enjeux. | CharacterString | La référence à la nomenclature doit permettre d'identifier sans ambiguité cette dernière (par exemple l'URI d'un registre (Par exemple : "https://inspire.ec.europa.eu/codelist/ExposedElementCategoryValue" pour la classification INSPIRE des élémetns exposés). Une restriction sur les référentiels à utiliser pourra être faite dans les profils applicatifs | 1..1 | 


#### Type de données *TypeVulnerabilite*

**Nom du type de données** : TypeVulnerabilite

**Définition** : Le type de données TypeVulnerabilite permet de relater une vulnérabilité relative à un enjeu. Les champs nom et description permettent de qualifier le type de vulnérabilité dont il s'agit (par exemple au travers d'une nomenclature de types de mesures) et le champ valeur porte la valeur de la vulnérabilité (par exemple un nombre d'habitants ou une appréciation littérale).    


**Propriétés** : 

| Nom de la propriété | Définition | Type | Valeurs possibles | Contraintes |
|-|-|-|-|-|
| nom | nom de la vulnérabilité relatée | CharacterString | Saisie libre pouvant être restreinte par les profils applicatifs selon les types de vulnérabilité qui doivent y être représentées. | 1..1 | 
| description | Description de la vulnérabilité relatée. | CharacterString | Saisie libre pouvant être contrainte par les profils applicatifs selon les types de vulnérabilité qui doivent y être représentées. | 0..1 |
| valeur | valeur quantitative ou qualitative de la vulnérabilité | Tout type possible à ce stade | Saisie libre. Le type et les éventuelles restrictions de valeurs seront précisés en fonction des vulnérabilités que l'on souhaite représenter dans les profils applicatifs. | 


#### Liste de codes ExposedElementCategoryValue

**Nom de la liste de codes** : ExposedElementCategoryValue

**Titre français** : Catégorie de l'élément exposé

**Définition** : La liste de codes "ExposedElementCategoryValue" est la classification des enjeux définie par [INSPIRE NZ:2013](https://inspire.ec.europa.eu/documents/Data_Specifications/INSPIRE_DataSpecification_NZ_v3.0.pdf). Il s'agit d'une classification hiérarchique a deux niveaux qui peut être étendue à tous niveaux selon les besoins par les fournisseurs de données.  

Elle accessible dans le [Système de publication de registres pour INSPIRE](https://inspire.ec.europa.eu/codelist/ExposedElementCategoryValue) et propose les valeurs suivantes (rappelées ici à titre informatif) :

| Code | Code Parent | Définition |
|-|-|-|
| [environnemental](https://inspire.ec.europa.eu/codelist/ExposedElementCategoryValue/environmental) | - | Zone soumise à un niveau de protection donné, comme un parc naturel. |
| [eau de surface](http://inspire.ec.europa.eu/codelist/ExposedElementCategoryValue/waterBody) | [environnemental](https://inspire.ec.europa.eu/codelist/ExposedElementCategoryValue/environmental) | Toute accumulation importante d'eau. | 
| [source de pollution](http://inspire.ec.europa.eu/codelist/ExposedElementCategoryValue/pollutionSource) | [environnemental](https://inspire.ec.europa.eu/codelist/ExposedElementCategoryValue/environmental) | Objet qui contient des polluants. | 
| [zone protégée](http://inspire.ec.europa.eu/codelist/ExposedElementCategoryValue/protectedArea) | [environnemental](https://inspire.ec.europa.eu/codelist/ExposedElementCategoryValue/environmental) | Zone qui est protégée. | 
| [patrimoine](https://inspire.ec.europa.eu/codelist/ExposedElementCategoryValue/heritage) | - | Tout ce qui est lié à des objets présentant un intérêt du point de vue culturel ou du patrimoine. |
| [bien culturel](http://inspire.ec.europa.eu/codelist/ExposedElementCategoryValue/culturalAsset) | [patrimoine](https://inspire.ec.europa.eu/codelist/ExposedElementCategoryValue/heritage) | Tout objet considéré comme présentant un intérêt d'un point de vue culturel, comme un stade, un théâtre, un musée, etc. |
| [bien historique](http://inspire.ec.europa.eu/codelist/ExposedElementCategoryValue/historicalAsset) | [patrimoine](https://inspire.ec.europa.eu/codelist/ExposedElementCategoryValue/heritage) | Tout objet présentant un intérêt historique. |
| [site du patrimoine mondial](http://inspire.ec.europa.eu/codelist/ExposedElementCategoryValue/worldHeritageSite) | [patrimoine](https://inspire.ec.europa.eu/codelist/ExposedElementCategoryValue/heritage) | Lieu (forêt, montagne, lac, désert, monument, bâtiment, complexe ou ville par exemple) qui est répertorié par l'UNESCO comme présentant une valeur culturelle ou matérielle spéciale. |
| [social](http://inspire.ec.europa.eu/codelist/ExposedElementCategoryValue/social) | - |  |
| [communauté](http://inspire.ec.europa.eu/codelist/ExposedElementCategoryValue/community) | [social](http://inspire.ec.europa.eu/codelist/ExposedElementCategoryValue/social) | Relation complexe entre des êtres humains agissant en tant qu'ensemble ou en tant qu'unité. |
| [personnes](http://inspire.ec.europa.eu/codelist/ExposedElementCategoryValue/people) | [social](http://inspire.ec.europa.eu/codelist/ExposedElementCategoryValue/social) | Présence d'êtres humains. |
| [politique](https://inspire.ec.europa.eu/codelist/ExposedElementCategoryValue/political) | [social](http://inspire.ec.europa.eu/codelist/ExposedElementCategoryValue/social) | Tout objet concernant les affaires politiques. |
| [service social](https://inspire.ec.europa.eu/codelist/ExposedElementCategoryValue/socialService) | [social](http://inspire.ec.europa.eu/codelist/ExposedElementCategoryValue/social) | Tout service fourni à des personnes. |
| [economique](http://inspire.ec.europa.eu/codelist/ExposedElementCategoryValue/economic) | - | Tout objet concernant des biens ou lié à l'économie ou à la finance. |
| [activité économique](https://inspire.ec.europa.eu/codelist/ExposedElementCategoryValue/economicActivity) | [economique](http://inspire.ec.europa.eu/codelist/ExposedElementCategoryValue/economic) | Tout objet représentant une activité économique tel qu'une industrie. |
| [bien](https://inspire.ec.europa.eu/codelist/ExposedElementCategoryValue/property) | [economique](http://inspire.ec.europa.eu/codelist/ExposedElementCategoryValue/economic) | Tout objet susceptible d'appropriation, comme une maison. |
| [infrastructure](https://inspire.ec.europa.eu/codelist/ExposedElementCategoryValue/infrastructure) | [economique](http://inspire.ec.europa.eu/codelist/ExposedElementCategoryValue/economic) | Tout objet considéré comme une structure fournissant un service tel qu'une route, un pont, une installation militaire, etc. |
| [utilisation des terres rurales](https://inspire.ec.europa.eu/codelist/ExposedElementCategoryValue/ruralLandUse) | [economique](http://inspire.ec.europa.eu/codelist/ExposedElementCategoryValue/economic) | Tout objet non urbain destiné à une utilisation donnée, quelle qu’elle soit. |



### Thématique Zonage réglementaire

#### Interface ZoneReglementaire

**Nom de l'interface** : ZoneReglementaire

**Titre** : Zone réglementaire

**Définition** : L'interface Zone Réglementaire permet de décrire les zones sur lesquelles s'appliquent des règlements du fait de la procédure à laquelle elles sont rattachées. Les implémentations de cette classe vont dépendre du type de la procédure concernée et du cadre réglementaire dans lequel elle s'inscrit.

**Modélisation géométrique** : Les zones réglementaires peuvent être représentées par toutes les primitives classiques : (Multi)polygone, Polyligne, Point.

**Propriétés** : 


| Nom de la propriété | Définition | Type | Valeurs possibles | Contraintes |
|-|-|-|-|-|
| idZoneReglementaire | Identifiant unique d'un objet zone réglementaire | CharacterString | Deux objets d'une classe implémentant l'interface ZoneRéglementaire ne peuvent pas avoir la même valeur pour cette propriété | 1..1 | 
| codeProcedure | Identifiant de la procédure pour laquelle la zone réglementaire a été définie. Ce champ permet de faire le lien avec l'objet correspondant de la classe [Procedure](#classe-dobjets-procedure) | CharacterString | La valeur de ce champ doit aussi exister comme valeur de la propriété codeProcedure d'un objet de la classe [Procedure](#classe-dobjets-procedure) | 1..1 |
| codeZoneReglement | Code attribué à la zone dans le cadre du règlement qui s'applique. La définition du code est propre au réglement qui s'applique dans le cadre de la procédure. Ce réglement doit être référencé dans les métadonnées qui accompagnent le jeu de données et aussi faire partie des [références internet](#classe-dobjets-referenceinternet) associées à la classe [Procédure](#classe-dobjets-procedure) | CharacterString | Celles définies dans le réglement associé | 1..1 |
| libelleZoneReglement | Libellé correspondant au code de la zone dans le cadre du règlement qui s'applique. La définition du libellé associé au code est propre au réglement qui s'applique dans le cadre de la procédure. Ce réglement doit être référencé dans les métadonnées qui accompagnent le jeu de données et aussi faire partie des [références internet](#classe-dobjets-referenceinternet) associées à la classe [Procédure](#classe-dobjets-procedure) | CharacterString | Celles définies dans le réglement associé | 1..1 |
| typeReglement | Type de règlement caractérisant la nature de la réglementation sur la zone selon le réglement concerné. Le type de valeur pour cet attribut sera spécialisé en fonction du type de procédure. | CharacterString | A définir en fonction du type de procédure | 1..1 |



#  Systèmes de référence

## Systèmes de référence spatiaux

Le [cadre réglementaire des systèmes de référence de coordonnées](#cadre-réglementaire-pour-les-systèmes-de-référence-de-coordonnées) détermine les systèmes de référence spatiaux à utiliser pour les données de prévention des risques selon les territoires français concernés. Ils sont présentés dans le tableau suivant.


| Zone géographique | Système géodésique (acronyme IGN) | Système de référence terrestre associé | Projection (acronyme IGN)| Système altimétrique (acronyme IGN) |
|-|-|-|-|-|
| France métropolitaine (hors Corse) | Réseau géodésique français 1993 (RGF93) | ETRS89 | Lambert-93 (RGF93LAMB93) | NGF - IGN 1969 (IGN69) |
| Corse | Réseau géodésique français 1993 (RGF93) | ETRS89 | Lambert-93 (RGF93LAMB93) | NGF - IGN 1978 (IGN78C) |
| Corse - Conique Conforme Zone 1 | Réseau géodésique français 1993 (RGF93) | ETRS89 | Conique conforme zone 1 (RGF93CC42) | NGF - IGN 1978 (IGN78C) |
| France métropolitaine Conique Conforme Zone 2  | Réseau géodésique français 1993 (RGF93) | ETRS89 | Conique conforme zone 2 (RGF93CC43) | NGF - IGN 1969 (IGN69) |
| France métropolitaine Conique Conforme Zone 3  | Réseau géodésique français 1993 (RGF93) | ETRS89 | Conique conforme zone 3 (RGF93CC44) | NGF - IGN 1969 (IGN69) |
| France métropolitaine Conique Conforme Zone 4  | Réseau géodésique français 1993 (RGF93) | ETRS89 | Conique conforme zone 4 (RGF93CC45) | NGF - IGN 1969 (IGN69) |
| France métropolitaine Conique Conforme Zone 5  | Réseau géodésique français 1993 (RGF93) | ETRS89 | Conique conforme zone 5 (RGF93CC46) | NGF - IGN 1969 (IGN69) |
| France métropolitaine Conique Conforme Zone 6  | Réseau géodésique français 1993 (RGF93) | ETRS89 | Conique conforme zone 6 (RGF93CC47) | NGF - IGN 1969 (IGN69) |
| France métropolitaine Conique Conforme Zone 7  | Réseau géodésique français 1993 (RGF93) | ETRS89 | Conique conforme zone 7 (RGF93CC48) | NGF - IGN 1969 (IGN69) |
| France métropolitaine Conique Conforme Zone 8  | Réseau géodésique français 1993 (RGF93) | ETRS89 | Conique conforme zone 8 (RGF93CC49) | NGF - IGN 1969 (IGN69) |
| France métropolitaine Conique Conforme Zone 9  | Réseau géodésique français 1993 (RGF93) | ETRS89 | Conique conforme zone 9 (RGF93CC50) | NGF - IGN 1969 (IGN69) |
| Guadeloupe | Réseau géodésique des Antilles françaises 2009 (RGAF09) | ITRS | Universal transverse Mercator fuseau 20 nord (RGAF09UTM20) | IGN 1988 (GUAD88) |
| Saint-Martin | Réseau géodésique des Antilles françaises 2009 (RGAF09) | ITRS | Universal transverse Mercator fuseau 20 nord (RGAF09UTM20) | IGN 1988 SM (GUAD88SM) |
| Saint-Barthélemy | Réseau géodésique des Antilles françaises 2009 (RGAF09) | ITRS | Universal transverse Mercator fuseau 20 nord (RGAF09UTM20) | IGN 1988 SB (GUAD88SB) |
| Martinique | Réseau géodésique des Antilles françaises 2009 (RGAF09) | ITRS | Universal transverse Mercator fuseau 20 nord (RGAF09UTM20) | IGN 1987 (MART87) |
| Guyane | Réseau géodésique français de Guyane 1995 (RGFG95) | ITRS | Universal transverse Mercator fuseau 22 nord (RGFG95UTM22) | NGG 1977 (GUYA77) |
| La Réunion | Réseau géodésique de La Réunion 1992 (RGR92) | ITRS | Universal transverse Mercator fuseau 40 sud (RGR92UTM40S) | IGN 1989 (REUN89) |
| Mayotte | Réseau géodésique de Mayotte 2004 (RGM04) | ITRS | Universal transverse Mercator fuseau 38 sud (RGM04UTM38S) | IGN 1950 / SHOM 1953 (MAYO53) |
| Saint-Pierre-et-Miquelon | Réseau géodésique de St-Pierre-et-Miquelon 2006 (RGSPM06) | ITRS | Universal transverse Mercator fuseau 21 nord (RGSPM06U21) | Danger 1950 (STPM50) |


## Système de référence temporel

Le système de référence temporel est le calendrier grégorien. Les valeurs de temps sont référencées par rapport au temps local exprimé dans le système de temps universel UTC.


#  Métadonnées

##  Généralités

Chaque jeu de données doit obligatoirement être accompagné de ses métadonnées conformes INSPIRE afin de mettre en évidence les informations essentielles contenues, et ainsi permettre la réutilisation des données avec l'aide d'outils de catalogage.

La spécification des éléments de métadonnées qui accompagnent les jeux de données est faite dans les profils applicatifs.



# ANNEXE A - Correspondances INSPIRE

Cette partie fait le lien entre le modèle de données des Géostandards risques et les modèles de données des thématiques INSPIRE en lien avec les standards risques, à savoir :

- le [thème 4 "Usage des sols" de l'annexe III](#lien-avec-le-thème-4-usage-des-sols-de-lannexe-iii) ;
- le [thème 8 "Lieux de production et sites industriels" de l'Annexe III](#lien-avec-le-thème-8-lieux-de-production-et-sites-industriels-de-lannexe-iii) dans le cadre des risques technologiques ;
- le [thème 11 "Zones de gestion, de restriction ou de réglementation et unités de déclaration" de l'annexe III](#lien-avec-le-thème-11-zones-de-gestion-de-restriction-ou-de-réglementation-et-unités-de-déclaration-de-lannexe-iii) ;
- le [thème 12 Zones de risque naturel de l'annexe III de la directive INSPIRE](#lien-avec-le-thème-12-zones-de-risque-naturel-de-lannexe-iii-de-la-directive-inspire) Dans le cadre des risques naturels. 

Les tableaux présentés ici sont un résumé à un haut niveau des correspondances qui sont implémentées dans des tableaux spécifiques fournis par la commission européenne ("Mapping tables") référencés dans chacune des parties suivantes. 
 

## Lien avec le thème 4 Usage des sols de l'annexe III

La description de la thématique "Usage des sols" de la directive INSPIRE dans le [thésaurus GEMET](https://www.eionet.europa.eu/gemet/fr/inspire-theme/lu) est la suivante : "Territoire caractérisé selon sa dimension fonctionnelle prévue ou son objet socioéconomique actuel et futur (par exemple, résidentiel, industriel, commercial, agricole, forestier, récréatif)."

Le tableau suivant résume les correspondances possibles des classes de cette thématique avec les entités du modèle commun des Géostandard Risques :

| Classe INSPIRE | Définition | Entité(s) Modèle Commun correspondantes | 
|-|-|-|
| Zoning Element | *A spatial object which is homogeneous regarding the permitted uses of land based on zoning which separate one set of land uses from another. Zoning elements refer to the regulation of the kinds of activities which will be acceptable on particular lots (such as open space, residential, agricultural, commercial or industrial). The intensity of use at which those activities can be performed (from low-density housing such as single family homes to high-density such as high-rise apartment buildings), the height of buildings, the amount of space that structures may occupy, the proportions of the types of space on a lot, such as how much landscaped space, impervious surface, traffic lanes, and parking may be provided.* | [Enjeux](#classe-dobjets-enjeu) dans la mesure où certaines catégories d'enjeux témoignent du type d'occupation du sol, de l'habitat ou des activités qui sont exercées. |
| Supplementary Regulation | *A spatial object (point, line or polygon) of a spatial plan that provides supplementary information and/or limitation of the use of land/water necessary for spatial planning reasons or to formalise external rules defined in legal text.* | [ZoneReglementaire](#interface-zonereglementaire) en ce qui concerne la description de zones soumises à des restrictions en matière d'urbanisme ou foncières, [Enjeux](#classe-dobjets-enjeu) dans la mesure où certaines catégories d'enjeux témoignent de zones faisant l'objet de réglementation particulière. |
| Official Documentation | *The official documentation that composes the spatial plan; it may be composed of, the applicable legislation, the regulations, cartographic elements, descriptive elements that may be associated with the complete spatial plan, a zoning element or a supplementary regulation . In some Member States the actual textual regulation will be part of the data set (and can be put in the regulationText attribute), in other Member States the text will not be part of the data set and will be referenced via a reference to a document or a legal act. At least one of the three voidable values shall be provided.* | [ReferenceInternet](#classe-dobjets-referenceinternet) dans la mesure où cette classe d'objet permet de référencer les documents en lien avec les procédures de prévention des risques, notamment : les cartes et le règlement associé au zonage réglementaire. |



Les tables de correspondances avec le thème 4 Usage des sols de l'annexe III sont accessibles ici : [https://github.com/cnigfr/Geostandards-Risques/blob/main/ressources/INSPIRE/Mapping%20Tables/LandUseMappingTable.xls](https://github.com/cnigfr/Geostandards-Risques/blob/main/ressources/INSPIRE/Mapping%20Tables/LandUseMappingTable.xls) 


## Lien avec le thème 8 Lieux de production et sites industriels de l'Annexe III 

La description de la thématique "Lieux de production et sites industriels" de la directive INSPIRE dans le [thésaurus GEMET](https://www.eionet.europa.eu/gemet/fr/inspire-theme/pf) est la suivante : "Sites de production industrielle, y compris les installations couvertes par la directive 96/61/CE du Conseil du 24 septembre 1996 relative à la prévention et à la réduction intégrées de la pollution (1) et les installations de captage d'eau, d'extraction minière et de stockage."

Le tableau suivant résume les correspondances possibles des classes de cette thématique avec les entités du modèle commun des Géostandard Risques :

| Classe INSPIRE | Définition | Entité(s) Modèle Commun correspondantes | 
|-|-|-|
| Production Facility | *One or more installations on the same site operated by the same natural or legal person, designed, built or installed to serve specific production or industrial purposes, comprehending all infrastructure, equipment and materials. A production facility groups together a single installation, set of installations or production processes (stationary or mobile), which can be defined within a single geographical boundary, organizational unit or production process. A production facility can also be identified as one or more installations located on the same site that are operated by the same natural or legal person and in which production activities are being carried out. Such a facility groups potentially the land, buildings, and equipment used in carrying on an industrial business or other undertaking or service.* | [OrigineRisque](#classe-dobjets-originerisque) dans la mesure où certaines installations de production peuvent être à l'origine de risques (notamment technologiques), [Enjeux](#classe-dobjets-enjeu) dans la mesure où certaines catégories d'enjeux témoignent d'installations de production sensibles aux risques ou utiles pour la gestion de crise. NB : la même correspondance peut être faite avec les entités plus fines de cette thématique INSPIRE : "Production Installation" (Ponctuel) ou "Production Plot" ou moins fine "Production Site" (site où se trouvent les "Production Facilities") selon les cas. |


Les tables de correspondances avec le thème 8 Lieux de production et sites industriels de l'Annexe III sont accessibles ici :  [https://github.com/cnigfr/Geostandards-Risques/blob/main/ressources/INSPIRE/Mapping%20Tables/ProductionAndIndustrialFacilitiesMappingTable.xls](https://github.com/cnigfr/Geostandards-Risques/blob/main/ressources/INSPIRE/Mapping%20Tables/ProductionAndIndustrialFacilitiesMappingTable.xls)


## Lien avec le thème 11 Zones de gestion, de restriction ou de réglementation et unités de déclaration de l'annexe III

La description de la thématique "Zones de gestion, de restriction ou de réglementation et unités de déclaration" de la directive INSPIRE dans le [thésaurus GEMET](https://www.eionet.europa.eu/gemet/fr/inspire-theme/am) est la suivante : "Zones gérées, réglementées ou utilisées pour les rapports aux niveaux international, européen, national, régional et local. Sont inclus les décharges, les zones restreintes aux alentours des sources d'eau potable, les zones vulnérables aux nitrates, les chenaux réglementés en mer ou les eaux intérieures importantes, les zones destinées à la décharge de déchets, les zones soumises à limitation du bruit, les zones faisant l'objet de permis d'exploration et d'extraction minière, les districts hydrographiques, les unités correspondantes utilisées pour les rapports et les zones de gestion du littoral."

Le tableau suivant résume les correspondances possibles des classes de cette thématique avec les entités du modèle commun des Géostandard Risques :

| Classe INSPIRE | Définition | Entité(s) Modèle Commun correspondantes |
|-|-|-|
| Management Restriction Or Regulation Zone | *Area managed, restricted or regulated in accordance with a legal requirement related to an environmental policy or a policy or activity that may have an impact on the environment at any level of administration (or used for reporting at international, European, national, regional and local) levels.* | [Enjeux](#classe-dobjets-enjeu) dans la mesure où certaines catégories d'enjeux témoignent de zones faisant l'objet d'une réglementation particulière et sensibles aux risques ou dont la connaissance est utile pour la gestion de crise. NB : les zones définies par cette thématique INSPIRE permettent aussi de déterminer les zones de rapportage (Bassins hydrographiques ou sous-unités éventuelles) pour la Directive Inondation. |


Les tables de correspondances avec le thème 11 Zones de gestion, de restriction ou de réglementation et unités de déclaration de l'annexe III sont accessibles ici : [https://github.com/cnigfr/Geostandards-Risques/blob/main/ressources/INSPIRE/Mapping%20Tables/AreaManagementRestrictionandRegulationZonesMappingTable.xls](https://github.com/cnigfr/Geostandards-Risques/blob/main/ressources/INSPIRE/Mapping%20Tables/AreaManagementRestrictionandRegulationZonesMappingTable.xls)


## Lien avec le thème 12 Zones de risque naturel de l'annexe III de la directive INSPIRE.

La description de la thématique "Zones de risque naturel" de la directive INSPIRE dans le [thésaurus GEMET](https://www.eionet.europa.eu/gemet/fr/inspire-theme/nz) est la suivante : "Zones sensibles caractérisées en fonction des risques naturels (tous les phénomènes atmosphériques, hydrologiques, sismiques, volcaniques, ainsi que les feux de friche qui peuvent, en raison de leur situation, de leur gravité et de leur fréquence, nuire gravement à la société), tels qu'inondations, glissements et affaissements de terrain, avalanches, incendies de forêts, tremblements de terre et éruptions volcaniques."

Le tableau suivant résume les correspondances possibles des classes de cette thématique avec les entités du modèle commun des Géostandard Risques :

| Classe INSPIRE | Définition | Entité(s) Modèle Commun correspondantes | 
|-|-|-|
| Observed Event | *A natural phenomenon relevant to the study of natural hazards which occurred and which has been observed.* | [ZoneAlea](#classe-dobjets-zonealea) représentant un aléa s'étant déjà produit (exemple : crue centenale de 1910). Le cas échéant, la classe générique [ElementCaracterisationAlea](#classe-dobjets-elementcaracterisationalea) peut aussi être porteuse de cette information. |
| Hazard Area | *An area affected by a natural hazard. A natural hazard is a natural process or phenomenon that may cause loss of life, injury or other impacts, property damage, loss livelihoods and services, social and economic disruption, or environmental damage.* | [ZoneAlea](#classe-dobjets-zonealea), [ZoneDangerSpecifique](#classe-dobjets-zonedangerspecifique) ou [ZoneProtegee](#classe-dobjets-zoneprotegee). |
| Risk Zone | *A risk zone is the spatial extent of a combination of the consequences of an event (hazard) and the associated probability/likelihood of its occurrence.* | [ZoneAlea](#classe-dobjets-zonealea), [ZoneDangerSpecifique](#classe-dobjets-zonedangerspecifique) ou [ZoneProtegee](#classe-dobjets-zoneprotegee) en lien direct avec des enjeux. |
| Exposed Element | *People, property, systems, or other elements present in hazard zones that are thereby subject to potential losses.* | [Enjeu](#classe-dobjets-enjeu) tels que généralement définis dans le cadre du Géostandard risque. NB : la nomenclature des enjeux INSPIRE peut ne pas être en corresondance directe avec les nomenclatures d'enjeux spécifiques aux profils applicatifs. |


Les tables de correspondances avec le thème 12 Zones de risque naturel de l'annexe III de la directive INSPIRE sont accessibles ici : [https://github.com/cnigfr/Geostandards-Risques/blob/main/ressources/INSPIRE/Mapping%20Tables/NaturalRiskZonesMappingTable.xls](https://github.com/cnigfr/Geostandards-Risques/blob/main/ressources/INSPIRE/Mapping%20Tables/NaturalRiskZonesMappingTable.xls)


# ANNEXE B - Correspondances avec le modèle de données GASPAR

### Nomenclature des identifiants dans GASPAR

Les données décrites par ce standard font référence à des procédures identifiées et suivies avec le système GASPAR. le lien entre ces données et la procédure concernée est assuré par la propriété `codeProcedure` qui porte la valeur de l'identifiant de cette dernière dans GASPAR.

Cet identifiant est constitué par une chaine de caractères qui concatène les informations suivantes :

- numéro de département [ddd]
- nom du service instructeur `PREF`, `DDT`, `DDTM`, `DREAL`, `DEAL`ou `DRIEAT`
- année de prescription : [AAAA]
- numéro incrémental à quatre chiffres remis à zéro chaque année [nnnn]

A titre d'exemple, la procédure PPRN du Bassin de la Scie instruite par la DDTM 76 et prescrite en 2012 porte l'identifiant suivant : `76DDTM20120001`


### Nomenclature des risques et de leurs codes dans GASPAR

GASPAR propose une nomenclature des risques hiérarchisée sur trois niveaux croissants de spécialisation du risque, avec une codification correspondante preséntée dans le tableau suivant. 

L'énumération [TypeAlea](#enumeration-typealea) définie dans ce standard, s'appuie sur cette nomenclature, __en utilisant uniquement les codes de niveau hiérarchique le plus haut__, comme c'est la règle dans l'application GASPAR. Les libellés de l'énumération correspondants aggrègent les libellés des niveaux hiérarchiques inférieurs lorsqu'il y en a. 

Par exemple, le libellé de l'énumération correspondant au code d'aléa "114" est : "Risque naturel ; Inondation ; Par ruissellement et coulée de boue" car il est hiérarchisé ainsi dans la nomenclature :

- niveau 1 : "Risque naturel"
- niveau 2 : "Inondation"
- niveau 3 : "Par ruissellement et coulée de boue"


| Code | Niveau | Libellé Risque
| - | - | - |
| 112 | 3 |  Risque Naturel ; Inondation ; Par une crue à débordement lent de cours d'eau |
| 113 | 3 |  Risque Naturel ; Inondation ; Par une crue torrentielle ou à montée rapide de cours d'eau |
| 114 | 3 |  Risque Naturel ; Inondation ; Par ruissellement et coulée de boue |
| 115 | 3 |  Risque Naturel ; Inondation ; Par lave torrentielle (torrent et talweg)  |
| 116 | 3 |  Risque Naturel ; Inondation ; Par remontées de nappes naturelles |
| 117 | 3 |  Risque Naturel ; Inondation ; Par submersion marine |
| 121 | 3 | Risque Naturel ; Mouvement de terrain ; Affaissements et effondrements d'origine anthropique (anciennes carrières souterraines, hors mines) |
| 122 | 3 | Risque Naturel ; Mouvement de terrain ; Affaissements et effondrements d'origine naturelle (cavités souterraines) |
| 123 | 3 | Risque Naturel ; Mouvement de terrain ; Eboulement ou chutes de pierres et de blocs |
| 124 | 3 | Risque Naturel ; Mouvement de terrain ; Glissement de terrain |
| 125 | 3 | Risque Naturel ; Mouvement de terrain ; Avancée dunaire |
| 126 | 3 | Risque Naturel ; Mouvement de terrain ; Recul du trait de côte et de falaises |
| 127 | 3 | Risque Naturel ; Mouvement de terrain ; Tassement différentiels |
| 13 | 2 |  Risque Naturel ; Séisme |
| 14 | 2 |  Risque Naturel ; Avalanche |
| 15 | 2 |  Risque Naturel ; Eruption volcanique |
| 16 | 2 |  Risque Naturel ; Feu de forêt |
| 171 | 3 | Risque Naturel ; Phénomène lié à l'atmosphère ; Cyclone / Ouragan |
| 172 | 3 | Risque Naturel ; Phénomène lié à l'atmosphère ; Tempête et grains (vent) |
| 174 | 3 | Risque Naturel ; Phénomène lié à l'atmosphère ; Foudre |
| 175 | 3 | Risque Naturel ; Phénomène lié à l'atmosphère ; Grêle | 
| 176 | 3 | Risque Naturel ; Phénomène lié à l'atmosphère ; Neige et pluies verglaçantes |
| 18 | 2 | Risque Naturel ; Radon |
| 211	| 3 | Risque technologique ; Risque Industriel ; Effet thermique |
| 212	| 3 | Risque technologique ; Risque Industriel ; Effet de surpression | 
| 213	| 3 | Risque technologique ; Risque Industriel ; Effet toxique  |
| 214	| 3 | Risque technologique ; Risque Industriel ; Effet de projection |
| 22	| 2 | Risque technologique ; Nucléaire |
| 23	| 2 | Risque technologique ; Rupture de barrage |
| 24	| 2 | Risque technologique ; Transport de marchandises dangereuses |
| 25	| 2 | Risque technologique ; Engins de guerre |
| 311	| 3 | Risque minier ; Affaissement minier ; Effondrements généralisés | 
| 312	| 3 | Risque minier ; Affaissement minier ; Effondrements localisés | 
| 313	| 3 | Risque minier ; Affaissement minier ; Affaissements progressifs | 
| 314	| 3 | Risque minier ; Affaissement minier ; Tassements | 
| 315	| 3 | Risque minier ; Affaissement minier ; Glissements ou mouvements de pente | 
| 316	| 3 | Risque minier ; Affaissement minier ; Coulées | 
| 317	| 3 | Risque minier ; Affaissement minier ; Ecroulements rocheux | 
| 321	| 3 | Risque minier ; Inondations de terrains miniers ; Pollution des eaux souterraines et de surface |
| 322	| 3 | Risque minier ; Inondations de terrains miniers ; Pollution des sédiments et des sols |
| 33 | 2 | Risque minier ; Emissions en surface de gaz de mine |
| 34 | 2 | Risque minier ; Echauffement des terrains de dépôts |



### Types de procédures GASPAR

Le tableau suivant liste les différents types de procédures gérées dans GASPAR, en lien avec les Géostandards risques. Les codes et libellés sont réutilisés comme base pour l'énumération [TypeProcedure](#enumeration-typeprocedure) qui restreint les valeurs de la propriété `typeProcedure` de la classe d'objets [Procedure](#classe-dobjets-procedure).


| Code | Libellé |
|-|-|
| PAC | Porter à Connaissance |
| PPRN | Plan de Prévention des Risques Naturels |
| PPRN-I | Plan de Prévention des Risques Naturels Innondation |
| PPRN-L | Plan de Prévention des Risques Naturels Littoral |
| PPRN-Mvt | Plan de Prévention des Risques Naturels Mouvement de Terrain |
| PPRN-Multi | Plan de Prévention des Risques Naturels Multirisques |
| PPRN-S | Plan de Prévention des Risques Naturels Séisme |
| PPRN-Av | Plan de Prévention des Risques Naturels Avalanches |
| PPRN-Ev | Plan de Prévention des Risques Naturels Eruption volcanique |
| PPRN-If | Plan de Prévention des Risques Naturels Incendie de forêt |
| PPRN-Cy | Plan de Prévention des Risques Naturels Cyclone |
| PPRN-Rad | Plan de Prévention des Risques Naturels Radon |
| PPRT | Plan de Prévention des Risques Technologiques |
| PPRM | Plan de Prévention des Risques Miniers |
| TRI | Territoires à Risque Important d’Inondations |



### États d'une procédure GASPAR

Le tableau suivant liste les différents états et des sous-états d'une procédure administrative dans GASPAR. Les codes et libellés des sous-états sont réutilisés comme base pour l'énumération [TypeÉtatProcedure](#enumeration-typeetatprocedure) qui restreint les valeurs de la propriété `etatProcedure` de la classe d'objets [Perimetre](#classe-dobjets-perimetre).


| Code état | Libellé état | Code sous-état | Libellé sous-état |
|-|-|-|-|
| PRG_MTG | Programmation et montage | DEB_PRG | Début programmation |
| PRG_MTG | Programmation et montage | FIN_PRG |Fin programmation |
| PRG_MTG | Programmation et montage | DEB_MTG | Début montage |
| PRG_MTG| Programmation et montage | FIN_MTG | Fin montage |
| PAC | Portée à connaissance | PAC | Portée à connaissance | 
| PRESCRIT | Prescrit | PRECRIT | Prescrit |
| PRESCRIT | Prescrit | PROROGE | Prorogé |
| OPPOSABLE | Opposable | ANTICIPE | Anticipé |
| OPPOSABLE | Opposable | APPROUVE | Approuvé |
| CADUQUE | Caduque | DEPRESCRIT | Déprescrit |
| CADUQUE | Caduque | ANNULE | Annulé |
| CADUQUE | Caduque | ABROGE | Abrogé |






 

