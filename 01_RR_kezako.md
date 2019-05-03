# (PART) Chroniques de la non reproductibilité {-}

# État des lieux {#A-introduction}

## La crise de la reproductibilité de la science

La crise de la reproductibilité de la science est aujourd'hui un phénomène mondial et
largement transdiciplinaire qui concourt à la défiance de la société à l'égard
du monde de la recherche [@baker500ScientistsLift2016a]. Le sujet est ancien, mais la situation semble avoir atteint un point critique. Des études ont par exemple démontré qu'il n'était pas possible d'obtenir de nouveau les résultats d'études pré-cliniques ou cliniques [@begleyDrugDevelopmentRaise2012] [@perrinPreclinicalResearchMake2014]. Si la reproductibilité des résultats ne peut être considérée comme seul critère de la scientificité d'une recherche, cette crise suscite des interrogations au sein même de la communauté scientifique.

## Définition(s) de "recherche reproductible" ?

Si la communauté scientifique perçoit ce que peut être une recherche reproductible dans son
propre domaine, il s'avère *a priori* difficile de fournir une
définition standard satisfaisante pour toutes les disciplines. De fait, parce que la notion de "même
résultat" dépend fortement du domaine de recherche. Pour les uns, il suffira de confirmer
la signifiance d'un effet, pour les autres, il s'agira d'obtenir le même
résultat numérique bit pour bit. 
L'expression "recherche reproductible" apparaît dès 1992, lors du congrès de la "*Society of Exploration Geophysics*" : "*The first appearance of the phrase “reproducible research” in a scholarly publication appears to be an invited paper presented at the 1992 meeting of the Society of Exploration Geophysics (SEG), from the group of Jon Claerbout at Stanford (Claerbout & Karrenbach, 1992). […] His idea of reproducible research was to leave finished work (an article or a thesis) in a state that allowed colleagues to reproduce the calculation, analysis and final figures by executing a single command. The goal was to merge a publication with its underlying computational analysis*" [@barbaTerminologiesReproducibleResearch2018].
De nombreuses définitions de "recherche reproductible" sont fournies par Barba [@barbaTerminologiesReproducibleResearch2018]. Parmi celles-ci, nous retiendrons la suivante, issue de l'article de Vandewalle *et al*.[@vandewalleReproducibleResearchSignal2009] : 
**"*A research work is called reproducible if all information relevant to the work, including, but not limited to, text, data and code, is made available, such that an independant researcher can reproduce the results*"** [@barbaTerminologiesReproducibleResearch2018]. (Notre traduction : "Un travail de recherche est dit reproductible si toutes les informations qui concernent ce travail incluant, sans s'y limiter, le texte, les données, et le code de programmation, sont rendues disponibles de telle sorte que n'importe quel chercheur indépendant peut reproduire les résultats.") 

## Pourquoi la question de la reproductibilité est-elle devenue centrale dans les débats actuels ?

Le fait que les problèmes de reproductibilité occupent une telle place dans les débats actuels n'est
pas tout à fait un hasard. Le numérique, sous des formes multiples, a largement
investi tous les champs de la science et l'outil informatique occupe une place incontournable : stockage, formatage,
archivage, indexation, analyse, modélisation, statistiques, 
environnements, précision, etc. Or, peu de chercheurs ont été 
formés (ou se forment) aux fondamentaux et aux bonnes pratiques liés aux outils informatiques. Cela peut
bien amener à la publication de résultats fragiles (dans le sens "peu robustes") dans le meilleur
des cas, et faux dans le pire des cas - mais ce n'est pourtant pas là que se
situent les plus graves dangers pour la recherche. 

## Où l'on parle de recherche reproductible de manière pragmatique

Quel peut être le point commun entre : un archéologue en train d'effectuer une campagne de fouille, 
un biologiste en train de préparer une nouvelle expérience dans son laboratoire,
un numéricien finalisant une simulation de grande ampleur ?
Tous sont exposés aux risques ~~drames~~ suivants, indépendamment de leur volonté de contribuer à l'accroissement
des connaissances dans leurs domaines respectifs : 

- envoyer à des collègues des données qui ne pourront pas être lues pour des raisons
d'incompatibilité de formats,
- réaliser une simulation effectuée sur deux machines différentes et obtenir des résultats radicalement différents,
- se rendre compte qu'une donnée essentielle était stockée sur feu le disque dur (*requiescat in pace*),
- renoncer à une hypothèse prometteuse faute de pouvoir reproduire une de ses propres expériences

La liste pourrait s'allonger.
Ne vous êtes-vous jamais posé les questions suivantes : "Suis-je vraiment sûr de mon analyse statistique ?", "Suis-je capable de recréer une figure conçue il y a 6 mois ?" Outre votre équipe de recherche, votre communauté scientifique et *in fine* le monde non académique, le premier bénéficiaire d'une recherche reproductible, c'est d'abord *vous*. Une recherche
reproductible facilite en effet les tâches les plus quotidiennes, permet de garantir
l'exactitude des méthodes et de documenter l'ensemble de la pratique
scientifique. Cela peut-il constituer un gage de qualité de la recherche ? Non. Cela y
participe, mais ne suffit pas. En effet, une recherche reproductible (au sens de l'ouvrage, "une recherche dont les résultats publiés peuvent être reproduits") n'est pas synonyme de "bonne"
recherche : une mauvaise recherche peut tout à fait être
reproductible (*spoiler alert* : *don't try at work* !).

## Aperçu (très rapide) des causes d'une recherche non reproductible

Comme nous le verrons dans ce livre, les causes d'une recherche
non reproductible sont très nombreuses. Le suspect habituel est la perte de données.
D'autres causes s'avèrent plus difficiles à détecter : par exemple, le chaos numérique, aussi subtil à identifier que vecteur de troubles majeurs. 
Une fois de plus, il ne s'agit pas de développer une vision accusatoire des pratiques de recherche.
L'impossibilité même de reproduire des résultats n'est pas engendrée par la malhonnêteté scientifique, mais s'avère bien plus souvent le fruit d'une forme de méconnaissance, de pratiques plus ou moins hasardeuses. 
Sous des dehors souvent anodins, les petits "braconnages" du quotidien ("ça va passer") et autres rustines font le lit de la "dette technique" qui à terme, peut devenir insurmontable et peut condamner un laboratoire. 
Au travers de situations fictives mais hélas réalistes, nous verrons qu'à l'origine
des problèmes de reproductibilité se trouve un ensemble de concepts fondamentaux qu'il
est nécessaire de connaître. L'objectif n'est pas de les maîtriser totalement. La
recherche reproductible n'exige pas d'adopter une logique du "tout ou rien". Il existe
des solutions très simples à mettre en œuvre que tout un chacun peut s'approprier.
D'autres solutions demanderont un peu plus de temps et d'énergie. 

## La minute théologie négative : ce que vous ne trouverez pas dans cet ouvrage

Il n’est pas question dans cet ouvrage de traiter toutes les solutions pour garantir la reproductibilité de la recherche au sens de Randall et Welser [@randallIrreproducibilityCrisisModern2018] : ainsi, la question de la qualité de la recherche est hors périmètre du présent ouvrage. En effet, nous vous proposons plutôt de nous focaliser sur les solutions qui permettent communiquer des résultats pouvant être reproduits de façon exhaustive. 
Ainsi, nous n’allons pas traiter des solutions à des problèmes qui nuisent à la qualité de la recherche, et en particulier : 

- aller à la "pêche" aux résultats significatifs parmi tous les tests statistiques réalisés ("p-hacking") [@forstmeierDetectingAvoidingLikely2017], [@nuzzoScientificMethodStatistical2014], [@randallIrreproducibilityCrisisModern2018]
- générer une hypothèse de recherche *a posteriori*, c’est-à-dire après avoir obtenu un résultat significatif (« harking ») [@kerrHARKingHypothesizingResults1998]
- sur-interpréter le résultat statistique qui est significatif (« Probability That a Positive Report is False ») [@gelmanDifferenceSignificantNot2006], [@gelmanFailureNullHypothesis2018], [@lakensJustifyYourAlpha2017], [@pernetRobustCorrelationAnalyses2013], [@wacholderAssessingProbabilityThat2004]

Pour tous ces sujets cités précédemment, nous invitons le lecteur à se référer à la littérature : 

*The Seven Deadly Sins of Psychology: A Manifesto for Reforming the Culture of Scientific Practice* [@chambersSevenDeadlySins2017]

"Why Most Published Research Findings Are False"[@ioannidisWhyMostPublished2005]

"A manifesto for reproducible science"[@munafoManifestoReproducibleScience2017]

*Statistics Done Wrong*[@reinhartStatisticsDoneWrong2015]

"A Guide to Robust Statistical Methods in Neuroscience"[@wilcoxGuideRobustStatistical2018]

