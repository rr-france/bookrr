
# Apprendre à programmer {#C-code-learn}

Dans ce chapitre, nous mettons en évidence les limitations des interfaces
graphiques en termes d'efficacité et de reproductibilité ; nous expliquons
qu'il peut être nécessaire d'apprendre à programmer en conseillant deux langages devenus incontournables en traitement et analyse des données : Python et R.


## Limiter le recours aux interfaces graphiques

Une interface graphique est un moyen simple et visuel d'indiquer à un logiciel
ce que l'on souhaite faire. Par exemple, dans un logiciel de traitement de
texte de type WYSIWIG (*What You See Is What You Get*), à l'aide de la
souris, on peut surligner un passage afin de le mettre en italique ou en gras en
cliquant sur le bouton correspondant. 
Ce type d'interface intuitive est omniprésent dans les logiciels et 
simplifie la vie de nombreux utilisateurs. 

Dans de nombreux logiciels scientifiques, ce type d'interface est également disponible, 
par exemple pour traiter les données ou concevoir des figures. 
L'exemple le plus célèbre est très certainement le tableur Excel, très utilisé y compris pour faire des traitements statistiques relativement compliqués. 
Dans un premier temps, cet outil peut simplifier les traitements mais dès que vous souhaiterez effectuer des tâches plus subtiles
ou des tâches répétitives, il va rapidement devenir un obstacle. Si vous effectuez des calculs exotiques, vous serez alors contraint d'entrer des formules de calcul complexes dans les cellules. 
La bonne nouvelle est que, en faisant cela, vous avez commencé à programmer. 
La mauvaise est que votre calcul n'est pas reproductible. 
"Mais j'ai sauvé ma feuille Excel pourtant !". 
Certes, mais entre le moment où vous avez chargé vos données initiales et 
le moment ou vous avez sauvé vos résultats, un certain nombre de
manipulations que vous avez faites n'a pas été enregistré. 

Par exemple, si vous devez trier vos données selon une certaine colonne, 
les données dans la feuille sauvegardée seront triées mais vous aurez 
perdu la trace de cette opération de tri et il vous sera facile d'oublier
de la répéter si vous devez recommencer le traitement avec un autre jeu de données 
(sauf si vous êtes précautionneux et tenez scrupuleusement à jour votre cahier de laboratoire).


## De l'intérêt de la programmation

Pour surmonter les difficultés liées aux interfaces graphiques, il est
nécessaire de pouvoir exprimer d'une façon claire, documentée et non ambigüe
ce que l'on souhaite faire faire au logiciel. 
C'est ici que la programmation entre en jeu. 
Plutôt que de cliquer à droite ou à gauche, on va expliquer textuellement,
à l'aide d'un jeu d'instructions relativement restreint, ce que l'on souhaite
faire. 
Cela veut dire, entre autres choses, qu'un programme peut être simplement
exprimé en quelques lignes seulement. 
Plus le langage utilisé sera de haut niveau et moins il y aura à écrire. 

Reprenons notre exemple où je dois charger des données, les trier selon la 
deuxième colonne et faire la moyenne sur la première moitié des données
de la première colonne. 
Un façon de l'écrire est :

``` r
table <- read.csv(file = 'data.csv') # Charger les données en mémoire
table_tri <- table[order(table$age), ] # Réordonne toutes les lignes du tableau
# Sélectionne la première moitié des lignes de la première colonne
# pour en faire la moyenne
mean(table_tri$IMC[1:(nrow(table_tri)/2)])
```

En faisant abstraction de la syntaxe particulière (il s'agit ici du langage R)
de ce programme simple, on comprend néanmoins à la lecture ce qu'il fait :
(1) charger les données, (2) les trier,  puis (3) calculer la moyenne. 
On a de fait simplement traduit le traitement que l'on 
souhaitait réaliser en jeu d'instructions. 
Par rapport à Excel, le programme offre deux avantages majeurs : 

- d'une part, il effectue les traitements de manière reproductible,
- d'autre part, il documente cette chaîne de traitements, si bien que
  quiconque est maintenant en mesure de comprendre et de reproduire
  ces traitements, éventuellement à l'aide d'un autre de langage de
  programmation.


## Le choix des armes

Apprendre à programmer n'est pas tout à fait équivalent à apprendre un langage
de programmation.  Il est nécessaire de comprendre au préalable ce que l'on
peut attendre d'un programme et comment exprimer ce que l'on souhaite faire de
façon non ambigüe car l'ordinateur est extrêmement bête (si, si) et ne fera que ce que
vous lui demandez de faire, ni plus, ni moins.  L'apprentissage de la
programmation passe donc par la découverte d'un nombre limité de concepts que
l'on va retrouver dans la plupart des langages de programmation.
Notez que nous parlons de "langages" au pluriel pour refléter leur diversité.
Les raisons de l'existence d'une telle variété de langages sont multiples.
Heureusement pour nous, au cours de ces dernières années, deux langages se sont
quasiment imposés dans le monde de la recherche : Python et R.  Entendons-nous
bien : nous ne disons pas que ce sont les seuls langages utilisables dans ce
contexte (loin de là) mais néanmoins, ils ont su traverser les frontières de
tous les champs disciplinaires. Il y a aujourd'hui des conférences
scientifiques qui leur sont entièrement dédiées et où l'on peut voir un
physicien théorique discuter avec un sociologue ou bien un doctorant enseigner
à un professeur.

Pour commencer à programmer, nous ne saurions trop vous conseiller de commencer
par apprendre un de ces deux langages.  Le choix entre les deux vous
appartient, sachant que vous avez tout intérêt à observer les pratiques dans
votre domaine ou bien encore à regarder les programmes des conférences telles
que [Scipy](http://conference.scipy.org/) [@scipySciPyConferences], [EuroScipy](https://www.euroscipy.org) [@euroscipyEuroSciPyHome],
[useR!](http://www.user2019.fr), Les [Rencontres
R](https://r2018-rennes.sciencesconf.org)
[@rencontresr7eRencontres2018], *etc*. 


## Pour en savoir plus

Il existe une multitude de ressources pour apprendre à programmer en R ou en
Python, notamment les formations proposées par les institutions
(services de formation des personnels, écoles doctorales, mais aussi formations
internes à votre unité de recherche).  En raison de cette multitude de
ressources, il est difficile de choisir lesquelles sont les plus pertinentes.
C'est la raison pour laquelle nous donnons ci-dessous une liste très restreinte
de ressources accessibles en ligne que nous jugeons de qualité.

### MOOCs

* ["Introduction à la statistique avec R"](https://www.fun-mooc.fr/courses/UPSUD/42001S06/session06/about) [@universiteparissudIntroductionStatistiqueAvec]
* ["Python : des fondamentaux à l'utilisation du langage"](https://www.fun-mooc.fr/courses/inria/41001S03/session03/about) [@inriaPythonFondamentauxUtilisation]


### Tutoriels

* [*Begin’R*](http://beginr.u-bordeaux.fr) [@arnalBegin]
* [Le tutoriel officiel de Python](https://docs.python.org/fr/3/tutorial) [@pythonsoftwarefoundationTutorielPythonDocumentation]


### Livres

* [*R for Data Science*](https://r4ds.had.co.nz) [@wickhamDataScienceImport2016], disponible aussi en français : *R pour les data sciences : importer, classer, transformer, visualiser et modéliser les données* [@wickhamPourDataSciences2018]
* [*Dive into Python*](https://www.diveinto.org/python3) [@pilgrimDivePython2009]

### Ateliers en ligne "Software Carpentry"

* ["Programming with R"](http://swcarpentry.github.io/r-novice-inflammation) [@softwarecarpentryProgramming]
* ["R for Reproducible Scientific Analysis"](http://swcarpentry.github.io/r-novice-gapminder[@softwarecarpentryReproducibleScientificAnalysis]
* ["Programming with Python"](http://swcarpentry.github.io/python-novice-inflammation) [@softwarecarpentryProgrammingPython]
* ["Plotting and Programming in Python"](http://swcarpentry.github.io/python-novice-gapminder) [@softwarecarpentryPlottingProgrammingPython]
