# (PART) Chroniques de la non reproductibilité {-}

# État des lieux {#A-introduction}

## La crise de la reproductibilité de la science

La crise de la reproductibilité de la science est aujourd'hui un phénomène 
mondial et largement transdiciplinaire qui concourt à la défiance de la société 
à l'égard du monde de la recherche [@baker500ScientistsLift2016a]. Le sujet est 
ancien, mais la situation semble avoir atteint un point critique : des
études récentes ont par exemple démontré que de nombreux
résultats d'études pré-cliniques, cliniques ou psychologiques ne
pouvaient être reproduits et donc confirmés [@begleyDrugDevelopmentRaise2012] [@perrinPreclinicalResearchMake2014] 
[@opensciencecollaboration2015Estimating]. D'autres disciplines sont également concernées : l'économie [@camererEvaluatingReplicabilityLaboratory2016], l'énergétique [@huebnerAreWeHeading2017] par exemple.


## Pourquoi la question de la reproductibilité est-elle devenue centrale dans les débats actuels ?

Si les problèmes de reproductibilité de la science occupent une place telle dans les débats actuels, ce n'est pas tout à fait un hasard. 
On peut bien sûr évoquer les causes structurelles qui soumettent les chercheurs à une pression accrue ("*Funders, publishers, societies, institutions, editors, reviewers and authors all contribute to the cultural norms that create and sustain dysfunctional incentives*". [@munafoManifestoReproducibleScience2017]) et qui peuvent engendrer
des conduites plus que discutables sur le plan de la déontologie et de l'intégrité scientifiques. Mais selon nous, la majorité des chercheurs est en général de bonne foi. Les "sorties de route" sont la plupart du temps moins imputables à une volonté délibérée de frauder qu'à un défaut de maîtrise des méthodes ou/et des outils. Randall et Welser citent par exemple le problème du *p-hacking* : "*P-hacking may not be as widespread as one might fear, but it appears that many scientists who routinely use p-values and statistical significance testing misunderstand those concepts, and therefore employ them improperly in their research*" [@randallIrreproducibilityCrisisModern2018]. 
Le numérique occupe dans la réflexion sur la reproductibilité de la recherche (et dans le présent ouvrage) une place spécifique car, sous de multiples formes, il a largement investi tous les champs de la science. L'outil informatique occupe une place incontournable : stockage, formatage,
archivage, indexation, analyse, modélisation, statistiques, 
environnements, précision, *etc*. Or, peu de chercheurs ont été 
formés (ou se forment) aux fondamentaux et aux bonnes pratiques liés aux outils informatiques : "*Scientists spend an increasing amount of time building and using software. However, most scientists are never taught how to do this efficiently*" [@wilsonGoodEnoughPractices2017]. Cela peut conduire à la publication de résultats fragiles (dans le sens "peu robustes") dans le meilleur des cas, et faux dans le pire des cas. Si la reproductibilité des résultats ne peut être considérée comme seul critère de la scientificité d'une recherche, cette crise suscite des interrogations au sein même de la communauté scientifique.

## Définition(s) de "recherche reproductible" ?

Si la majorité de la communauté scientifique perçoit ce que peut être une recherche reproductible dans son propre domaine, il s'avère difficile de fournir une définition satisfaisante pour toutes les disciplines, et ce parce que la notion même de "résultat" dépend fortement du domaine de recherche. Pour les uns, il suffira de confirmer la significativité d'un effet, pour les autres, il s'agira d'obtenir le même résultat numérique au bit près. 

L'expression "recherche reproductible" apparaît pour la première fois en 1992, lors du congrès de la "*Society of Exploration Geophysics*" :

> "*The first appearance of the phrase “reproducible research” in a scholarly publication appears to be an invited paper presented at the 1992 meeting of the Society of Exploration Geophysics (SEG), from the group of Jon Claerbout at Stanford (Claerbout & Karrenbach, 1992). […] His idea of reproducible research was to leave finished work (an article or a thesis) in a state that allowed colleagues to reproduce the calculation, analysis and final figures by executing a single command. The goal was to merge a publication with its underlying computational analysis*" [@barbaTerminologiesReproducibleResearch2018].

Cette proposition est centrée sur le calcul et peut être considérée comme assez "idéalisée" dans la mesure où l'ensemble des résultats peuvent être obtenus en lançant une seule commande. Il existe de nombreuses définitions de "recherche reproductible". Barba [@barbaTerminologiesReproducibleResearch2018] en analyse plusieurs. Parmi celles-ci, nous retiendrons la suivante issue de l'article de Vandewalle *et al*. [@vandewalleReproducibleResearchSignal2009] : 

> "*A research work is called reproducible if all information relevant to the work, including, but not limited to, text, data and code, is made available, such that an independant researcher can reproduce the results*" [@vandewalleReproducibleResearchSignal2009]

Autrement dit: "Un travail de recherche est dit reproductible si toutes les informations qui concernent ce travail incluant, sans s'y limiter, le texte, les données, et le code de programmation, sont rendues disponibles de telle sorte que n'importe quel chercheur indépendant peut reproduire les résultats."

S'il existe des définitions très précises et une littérature abondante, il n'y a pas pour autant de définition standard. C'est pourquoi la reproductibilité des uns peut être par exemple la répétabilité des autres, ou inversement. Notre but dans ce chapitre n'est pas de proposer une définition supplémentaire, qui délimiterait strictement ce qui constitue une recherche reproductible, ni de prendre position pour l'une ou pour l'autre, mais plutôt d'encourager une acceptation large et d'aborder des aspects extrêmement pratiques.

## Où l'on parle de recherche reproductible de manière pragmatique

Quel peut être le point commun entre : un archéologue en train d'effectuer une campagne de fouille, 
un biologiste préparant une nouvelle expérience dans son laboratoire,
un numéricien finalisant la simulation d'un grand système complexe ?
Tous sont exposés aux ~~drames~~ risques suivants, indépendamment de leur volonté de contribuer à l'accroissement
des connaissances dans leurs domaines respectifs : 

- se rendre compte qu'une donnée essentielle était stockée sur feu le disque dur (*Requiescat In Pace*),
- renoncer à une hypothèse prometteuse faute de pouvoir reproduire une de ses propres expériences,
- envoyer à des collègues des données qui ne pourront pas être lues pour des raisons
d'incompatibilité de formats,
- obtenir sur son ordinateur des résultats radicalement différents de ceux qu'un collègue a obtenu sur le sien.

La liste pourrait s'allonger.
Ne vous êtes-vous jamais posé les questions suivantes : "Suis-je vraiment sûr de mon analyse statistique ?", "Suis-je capable de recréer cette figure conçue il y a 6 mois ?" Outre votre équipe de recherche, votre communauté scientifique et *in fine* le monde non académique, **le premier bénéficiaire d'une recherche reproductible, c'est d'abord *vous* !** Une recherche reproductible a en effet pour objectif de faciliter les tâches les plus quotidiennes, de garantir l'exactitude des méthodes et de documenter l'ensemble de la pratique scientifique. 

*Nota Bene* : Une recherche reproductible peut-elle constituer un gage de qualité de la recherche ? Non. C'est un gage de transparence qui y
participe, mais ne suffit pas. En effet, une recherche reproductible (au sens de l'ouvrage, "une recherche dont les résultats publiés peuvent être reproduits") n'est pas synonyme de "bonne"
recherche : une mauvaise recherche peut tout à fait être
reproductible (*spoiler alert* : *do not try this at work* !).



## Échantillon choisi parmi les multiples causes d'une recherche non reproductible

Comme nous le verrons dans ce livre, les causes d'une recherche
non reproductible sont très nombreuses. Le suspect habituel est la perte d'information (données, résultats, méthodes...).
D'autres causes, plus difficiles à détecter, existent également : par exemple, le chaos numérique, aussi subtil à identifier que vecteur de troubles majeurs. 
Une fois de plus, il ne s'agit pas de développer une vision accusatoire des pratiques de recherche. L'impossibilité même de reproduire des résultats n'est
pas engendrée par la malhonnêteté scientifique, mais s'avère bien plus souvent
le fruit d'une forme de méconnaissance, de manque de compétences techniques, de pratiques plus ou moins hasardeuses. Sous des dehors souvent anodins, les petits "braconnages" du quotidien ("Ça va passer") et autres rustines manuelles font le lit de la "dette technique" qui à terme, peut devenir insurmontable et peut condamner un projet ou un laboratoire. 


## NOTRE PROJEEEET : vers une recherche reproductible

Au travers de situations fictives mais hélas réalistes, nous verrons qu'à l'origine de recherches non reproductibles se trouve un ensemble de concepts fondamentaux qu'il est nécessaire de connaître afin d'en éviter les écueils. L'objectif n'est pas de les maîtriser totalement : améliorer ses pratiques n'exige d'adopter une logique du "tout ou rien", heureusement. Il existe
des solutions très simples à mettre en œuvre que tout un chacun peut s'approprier, tandis que d'autres solutions 
plus élaborées demanderont un peu plus de temps et d'énergie. Ces solutions ne sont pas uniquement computationnelles — même si elles prennent souvent une forme informatique — et s'adresse à tous les chercheurs (pas uniquement à ceux faisant du "calcul").


## La minute théologie négative : ce que vous ne trouverez pas dans cet ouvrage

Il n’est pas question dans cet ouvrage de traiter toutes les solutions pour garantir la reproductibilité de la recherche au sens de Randall et Welser [@randallIrreproducibilityCrisisModern2018]. Ainsi, la question de la qualité et de la pertinence de la recherche est hors périmètre du présent ouvrage. Nous vous proposons plutôt de nous focaliser sur les solutions qui permettent communiquer vos résultats de la façon la plus exhaustive/explicite/pérenne possible afin qu'ils aient une chance de pouvoir être reproduits. 
Nous laisserons volontairement de côté les problèmes (tout aussi essentiels) qui nuisent à la qualité de la recherche, et en particulier :

- aller à la "pêche" aux résultats significatifs parmi tous les tests statistiques réalisés ("*p-hacking*") [@forstmeierDetectingAvoidingLikely2017], [@nuzzoScientificMethodStatistical2014], [@randallIrreproducibilityCrisisModern2018]
- générer une hypothèse de recherche *a posteriori*, c’est-à-dire après avoir obtenu un résultat significatif ("*harking*") [@kerrHARKingHypothesizingResults1998]
- sur-interpréter le résultat statistique qui est significatif ("Probability That a Positive Report is False") [@gelmanDifferenceSignificantNot2006], [@gelmanFailureNullHypothesis2018], [@lakensJustifyYourAlpha2017], [@pernetRobustCorrelationAnalyses2013], [@wacholderAssessingProbabilityThat2004]

Il est possible qu'une seconde édition de cet ouvrage aborde ces sujets mais en attendant, nous invitons le lecteur à se référer à la littérature : 

- *The Seven Deadly Sins of Psychology: A Manifesto for Reforming the Culture of Scientific Practice* [@chambersSevenDeadlySins2017]

- "Why Most Published Research Findings Are False" [@ioannidisWhyMostPublished2005]

- "A manifesto for reproducible science" [@munafoManifestoReproducibleScience2017]

- *Statistics Done Wrong* [@reinhartStatisticsDoneWrong2015]

- "A Guide to Robust Statistical Methods in Neuroscience" [@wilcoxGuideRobustStatistical2018]

