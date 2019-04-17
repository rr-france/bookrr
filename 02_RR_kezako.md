# Introduction

## La crise de la reproductibilité de la science

La crise de la reproductibilité de la science est aujourd'hui un phénomène mondial et
largement transdiciplinaire qui participe à la défiance de la société à l'égard
du monde de la recherche *SG* [Baker M. 1,500 scientists lift the lid on reproducibility. Nature 2016,533:452-454.]. Le sujet est ancien, mais la situation semble avoir atteint un point critique. Des études ont par exemple démontré qu'il n'était pas possible d'obtenir de nouveau les résultats d'études pré-cliniques ou cliniques *SG*[Begley CG, Ellis LM. Drug development: Raise standards for preclinical cancer research. Nature 2012,483:531-533.] [Perrin S. Preclinical research: Make mouse studies work. Nature 2014,507:423-425.] Si le critère de reproductibilité des résultats ne peut être considéré comme unique mètre étalon de la scientificité d'une recherche, cette crise suscite des interrogations au sein même de la communauté scientifique.

## Définition(s) de "recherche reproductible" ?

Si la communauté scientifique perçoit ce que peut être une recherche reproductible dans son
propre domaine, il s'avère *a priori* difficile de fournir une
définition standard satisfaisante pour toutes les disciplines. Par exemple, ne serait-ce que parce que la notion de "même
résultat" dépend fortement du domaine de recherche. Pour les uns, il suffira de confirmer
la signifiance d'un effet, pour les autres, il s'agit d'obtenir le même
résultat bit pour bit. L'expression "recherche reproductible" apparaît dès 1992, lors du congrès de la "Society of Exploration Geophysics" [*SG* : trouver la traduction]. De nombreuses définitions de "recherche reproductible" sont fournies par Barba. [Barba, Lorena A. 2018. ‘Terminologies for Reproducible Research’. ArXiv:1802.03311 [Cs], February. http://arxiv.org/abs/1802.03311.] Parmi celles-ci, nous retiendrons la suivante, issue de l'article de Vandewalle et al.[https://ieeexplore.ieee.org/document/4815541] : 
"un travail de recherche est dit reproductible si toutes les informations qui concernent ce travail, incluant, mais n'étant pas limitées, le texte, les données, et le code de programmation, sont rendues disponibles de telle sorte que n'importe quel chercheur indépendant peut reproduire les résultats." *SG* prendre texte original et citer correctement traduction en FR --< signaler qu'il s'agit d'une traduction des auteurs

## Pourquoi la question de la reproductibilité est-elle devenue centrale dans les débats actuels?
Le fait que les problèmes de reproductibilité occupent une telle place dans les débats actuels n'est
pas tout à fait un hasard. Le numérique, sous des formes multiples, a largement
investi tous les champs de la science et l'outil informatique occupe une place incontournable : stockage, formatage,
archivage, indexation, analyse, modèle, statistiques, 
environnements, précision, etc. Or, peu de chercheurs ont été convenablemnt
formés aux fondamentaux et aux bonnes pratiques liés aux outils informatiques. Cela peut
bien amener à la publication de résultats fragiles (dans le sens "peu robustes") dans le meilleur
des cas, et faux dans le pire des cas - mais ce n'est pourtant pas là que se
situent les plus graves dangers pour la recherche. 

## Où l'on parle de recherche reproductible de manière pragmatique
Quel peut être le point commun entre : un archéologue en train d'effectuer une campagne de fouille, 
un biologiste en train de préparer une nouvelle expérience dans son laboratoire,
un numéricien finalisant une simulation de grande ampleur? 
Tous sont exposés aux risques ~~drames~~ suivants, indépendamment de leur volonté de contribuer à l'accroissement
des connaissances dans leurs domaines respectifs : 
- envoyer à des collègues des données qui ne pourront pas être lues pour des raisons
d'incompatibilité de formats,
- réaliser une simulation effectuée sur deux machines différentes et obtenir des résultats radicalement différents,
- se rendre compte qu'une donnée essentielle était stockée sur feu le disque dur (*requiescat in pace*),
- renoncer à une hypothèse prometteuse faute de pouvoir reproduire une de ses propres expériences 
La liste pourrait s'allonger : 
ne vous êtes-vous jamais posé les questions suivantes : "Suis-je vraiment sûr de mon analyse statistique ?", "Suis-je capable de recréer une figure conçue il y a 6 mois ?" Outre votre équipe de recherche, votre communauté scientifique et *in fine* le monde non académique, le premier bénéficiaire d'une recherche reproductible, c'est d'abord *vous*. Une recherche
reproductible facilite en effet les tâches les plus quotidiennes, permet de garantir
l'exactitude des méthodes et de documenter l'ensemble de la pratique
scientifique. Cela peut-il constituer un gage de qualité de la recherche ? Non. Cela y
participe, mais ne suffit pas. En effet, une recherche reproductible (au sens de l'ouvrage, "une recherche dont les résultats publiés peuvent être reproduits") n'est pas synonyme de "bonne"
recherche : une mauvaise recherche peut tout à fait être
reproductible (spoiler alert : don't try at work!).

## Aperçu (très rapide) des causes d'une recherche non reproductible

Comme nous le verrons dans ce livre, les causes d'une recherche
non reproductible sont très nombreuses. Le suspect habituel est la perte de données.
D'autres causes s'avèrent plus difficiles à détecter : par exemple, le chaos numérique, aussi subtil à identifier que vecteur de troubles majeurs. 
Une fois de plus, il ne s'agit pas de développer une vision accusatoire des pratiques de recherche.
La possibilité même de reproduire des résultats n'est pas engendrée par la malhonnêteté scientifique, mais s'avère bien plus souvent le fruit d'une forme de méconnaissance, de pratiques plus ou moins hasardeuses. 
Or, sous des dehors anodins, les petits "braconnages" du quotidien ("ça va passer") et autres rustines font le lit de la "dette technique" qui à terme, peut devenir insurmontable et peut condamner un laboratoire. Le patient zéro prend souvent des apparences falotes dans le domaine de la reproductibilité. 
Au travers de situations fictives mais hélas réalistes, nous verrons qu'à l'origine
des problèmes de reproductibilité se trouve un ensemble de concepts fondamentaux qu'il
est nécessaire de connaître. L'objectif n'est pas de les maîtriser totalement. La
recherche reproductible n'exige pas d'adopter une logique du "tout ou rien". Il existe
des solutions très simples à mettre en oeuvre que tout un chacun peut s'approprier.
D'autres solutions demanderont un peu plus de temps et d'énergie. 

## La minute théologie négative : ce que vous ne trouverez pas dans cet ouvrage

Il n’est pas question dans cet ouvrage de traiter toutes les solutions pour garantir la reproductibilité de la recherche au sens de Randall et Welser : ainsi, la question de la qualité de la recherche est hors périmètre du présent ouvrage. En effet, nous vous proposons plutôt de nous focaliser sur les solutions qui permettent communiquer des résultats pouvant être reproduits de façon exhaustive. 
Ainsi, nous n’allons pas traiter des solutions à des problèmes qui nuisent à la qualité de la recherche, et en particulier : 
- aller à la "pêche" aux résultats significatifs parmi tous les tests statistiques réalisés ("p-hacking") [Nuzzo R. Scientific method: statistical errors. Nature 2014,506:150-152.], 
- générer une hypothèse de recherche *a posteriori*, c’est-à-dire après avoir obtenu un résultat significatif (« harking ») [Kerr NL. HARKing: hypothesizing after the results are known. Pers Soc Psychol Rev 1998,2:196-217.], 
- sur-interpréter le résultat statistique qui est significatif (« Probability That a Positive Report is False ») [Wacholder S, Chanock S, Garcia-Closas M, El Ghormli L, Rothman N. Assessing the probability that a positive report is false: an approach for molecular epidemiology studies. J Natl Cancer Inst 2004,96:434-442.] 
Non, pour tous ces sujets cités *supra*, nous invitons le lecteur à se documenter : [Munafo MR, Nosek BA, Bishop DVM, Button KS, Chambers CD, Sert NPd, Simonsohn U, Wagenmakers E-J, Ware JJ, Ioannidis JPA. A manifesto for reproducible science. Nature Human Behav 2017,1:0021.]



---

* Plein de sources d'erreurs possibles
    * reproductibilité numérique
    * misconduct
    * sloppy
* Apporter des réponses à un certain nombre de problèmes. . RR = méthodes basée sur la transparence permettant d'identifier, d'éviter, de corriger des erreurs

* [ok, traité] On ne parle pas de la qualité/vérité de la recherche ni de la pertinence des questions. Il n'est pas question de prévenir une "mauvaise" recherche. Il est possible de faire une très mauvaise reproductible mais ça se voit.
    * On a décidé de ne pas traiter 
        * p-hacking
        * harking
        * Stats (une partie)
