
# Apprendre à programmer

Dans ce chapitre, nous mettons en évidence les limitations des interfaces
graphiques en terme d'efficacité et de reproductibilité et nous expliquons
qu'il est nécessaire d'apprendre à programmer en conseillant deux langages qui
sont devenus incontournables en traitement et analyse des données: Python et R.


## Limiter des interfaces graphiques

Une interface graphique est un moyen simple et visuel d'indiquer à un logiciel
ce que l'on souhaite faire. Par exemple, dans un logiciel de traitement de
texte de type WYSIWIG (*What You See Is What You Get*), on peut, à l'aide de la
souris, surligner un passage afin de le mettre en italique ou en gras en
cliquant sur le bouton correspondant. 
Ce type d'interfaces intuitive est omniprésente dans les logiciels et 
simplifie la vie de beaucoup de néophytes qui ont peu ou pas de connaissance 
en informatique. 

On retrouve en Science ce même type d'interface dans de nombreux logiciels, 
par exemple pour traiter les données ou générer des figures. 
L'exemple le plus célèbre est très certainement le tableur Excel, qui
est très utilisé pour faire des traitements statistiques pouvant être relativement
compliquées. 
Or, si cet outil peut dans un premier temps simplifier les traitements, 
il va rapidement faire obstacle pour peu que vous souhaitiez effectuer 
des calculs un peu exotiques ou de manière répétitive. 
Dans le premier cas, vous serez alors contraint d'entrer des formules 
de calculs complexes dans les cellules. 
La bonne nouvelle est que, en faisant cela, vous avez commencé à programmer. 
La mauvaise est que votre calcul n'est pas reproductible. 
"Mais j'ai sauvé ma feuille Excel pourtant!". 
Certes, mais entre le moment où vous avez chargé vos données initiales et 
le moment ou vous avez sauvé vos résultats, un certain nombre de
manipulation que vous avez faites n'a pas été enregistré. 

Par exemple, si vous avez trié vos données selon une certain colonne, 
les données dans la feuille sauvegardée seront triées mais vous aurez 
perdu la trace de cette opération de tri et il vous sera facile d'oublier
de la répéter si vous devez recommencer le traitement avec un autre jeu de données 
(sauf si vous êtes précautionneux et tenez à jour un cahier de laboratoire).


## De l'intérêt de la programmation

Pour surmonter les difficultés liés aux interfaces graphiques, il est
nécessaire de pouvoir exprimer d'une façon claire, documentée et non ambigüe
ce que l'on souhaite faire. 
C'est ici que la programmation entre en jeu. 
Plutôt que de cliquer à droite ou à gauche, on va expliquer textuellement,
à l'aide d'un jeu d'instructions (relativement restreint), ce que l'on souhaite
faire. 
Cela veut dire, entre autres choses, qu'un programme peut être simplement
exprimé en quelques lignes seulement. 
Plus le langage utilisé sera de haut niveau et moins il y aura à écrire. 

Reprenons notre exemple où je dois charger des données, les trier selon la 
deuxième colonne et faire la moyenne sur la première moitié des données
de la première colonne. 
Un façon de l'écrire est:

``` r
table = read.csv(file = 'data.csv')     # Charger les données en mémoire
table_tri = table[order(table[, 2]), ]  # Réordonne toutes les lignes du tableau
# Sélectionne la première moitié des lignes de la première colonne
# pour en faire la moyenne
print(mean(table_tri[1:(nrow(table_tri) / 2), 1])))
```

En faisant abstration de la syntaxe particulière (il s'agit ici du langage R)
de ce programme simple, on comprend néanmoins à la lecture ce qu'il fait:
(1) charger les données, (2) les trier,  puis (3) calculer la moyenne. 
On a de fait simplement traduit notre pensée (le traitement que l'on 
souhaitait réaliser) en jeu d'instructions. 
L'énorme avantage de cette approche (par rapport à Excel) est que ce
programme réalise deux objectifs, il effectue d'une part les traitements et
d'autre part il documente cette chaîne de traitements, si bien que quiconque
est maintenant en mesure de comprendre et de reproduire ces traitements,
éventuellements à l'aide d'un autre de langage de programmation.


## Le choix des armes

Apprendre à programmer n'est pas tout à fait équivalent à apprendre un langage
de programmation. 
Il est nécessaire de comprendre au préalable ce que l'on peut attendre d'un 
programme et comment exprimer ce que l'on souhaite faire de façon non ambigüe 
car l'ordinateur est extrèmement bête et ne fera que ce que vous lui demandez 
de faire, ni plus, ni moins. 
L'apprentissage de la programmation passe donc par la découverte d'un petit 
nombre de concepts que l'on va retrouver dans (à peu près) l'ensemble des langages 
de programmation. 
Notez que nous parlons de langages au pluriel car il existe bien plus de langages de
programmation que de langues parlés sur Terre. 
Les raisons de l'existence de tant de langages différents sont multiples, 
mais heureusement pour nous, nous avons vu ces dernières années deux langages 
devenir les langages de références en science des données, à savoir: Python et R. 
Entendons-nous bien, nous ne disons pas que ce sont les seuls langages utilisables
dans ce contexte (loin de là) mais néamoins, ils ont su traverser les frontières 
de tous les champs disciplinaires, si bien qu'il y a aujourd'hui des conférences 
scientifiques qui leur sont entièrement dédiées et où l'on peut voir un physicien 
théorique discuter avec un sociologue ou bien un doctorant enseigner à un professeur.

Pour commencer à programmer, nous ne saurions donc trop vous conseiller de
commencer par apprendre un de ces deux langages. 
Le choix entre les deux vous appartient, sachant que vous avez tout intèrêt 
à observer les pratiques dans votre domaine ou bien encore à regarder les 
programmes des conférences telles que Scipy (http://conference.scipy.org), 
EuroScipy (https://www.euroscipy.org), useR! (http://www.user2019.fr), 
Les Rencontres R(https://r2018-rennes.sciencesconf.org) ...


## Ressources

Il existe une multitude de ressources pour apprendre à programmer en R ou en
Python, notamment les formations continues proposées par les institutions. 
En raison de cette multitude de ressources, il est difficile de choisir
lesquelles sont les plus pertinentes. 
C'est la raison pour laquelle nous donnons ci-dessous une liste très restreinte 
de ressource accessibles en ligne que nous jugeons de qualité.

### MOOCs

* R: (https://www.fun-mooc.fr/courses/UPSUD/42001S06/session06/about)
* Python: (https://www.fun-mooc.fr/courses/inria/41001S03/session03/about)


### Tutoriels

* R: (http://beginr.u-bordeaux.fr)
* Python: (https://docs.python.org/fr/3/tutorial)


### Livres

* _R for Data Science_ (http://shop.oreilly.com/product/0636920034407.do)

* _Dive into Python_ (https://www.diveinto.org/python3)

### Ateliers en ligne "Software Carpentry"

* _Programming with R_ (http://swcarpentry.github.io/r-novice-inflammation)

* _R for Reproducible Scientific Analysis_ (http://swcarpentry.github.io/r-novice-gapminder)

* _Programming with Python_ (http://swcarpentry.github.io/python-novice-inflammation)

* _Plotting and Programming in Python_ (http://swcarpentry.github.io/python-novice-gapminder)

<!--

Les logiciels basés sur une interface graphique sont pléthores en informatique

* Limitation de manipulations via des GUI
  * Non reproductible 
  * Erreur possible
  * Limitation des manipulations
* Utilisation de macros Excel? -> une première forme de programmation

* Situation type, vous devez renommer un millier de fichiers car la
  convention de nommage a changé, comment faites-vous ?
* Scripts shells pour automatiser 

* Langage simples: Python et R
* Nouveaux environnements simplifiant l'approche de la programmation

* Beaucoup de resources en lignes (Softxware Carpentry), en présentiel
  (formations doctorales et conférences)
* 

--- 

### Abandonner les GUI et apprendre à programmer
* quel langage
* quelle formation

-->
