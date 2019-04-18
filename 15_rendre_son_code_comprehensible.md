# Rendre son code compréhensible

> “Programs must be written for people to read, and only incidentally for machines to execute.” 
>
> -- Harold Abelson
  
Nous avons vu dans les chapitres précédents (et en particulier dans le chap.8 "des problèmes de calculs" [bien mettre le renvoi vers ce chap.8]) que la diffusion ou le partage de ses codes
informatiques était un pivot de la recherche reproductible. Une 
étape préalable dans cette démarche est de rendre son code facilement 
compréhensible par un lecteur externe. Le premier de ces lecteurs se
trouve bien souvent être soi-même quelques mois plus tard, ou bien un proche collaborateur.

Il existe là encore différents degrés de complexité permettant de faciliter 
la compréhension de son code : 

 1. nommer ses variables et ses fonctions de manière informative
 2. expliciter son code
 3. commenter son code
 4. documenter son code
 5. utiliser des documents computationnels
 6. gestion de *workflow*

![Outils d'amélioration pour la compréhension du code](img/testdiagramch15.png)

## Nommer ses variables et ses fonctions de manière informative

> There are only two hard things in Computer Science: cache invalidation and naming things.
>
> -- Phil Karlton

Une manière d'obtenir un code plus facile à comprendre pour un observateur extérieur 
est d'utiliser des noms informatifs qui explicitent directement ce que represente une 
variable ou une fonction. C'est une tâche qui peut se révéler étonnamment ardue !
Nous vous invitons par exemple à lire le code suivant et essayer de comprendre ce à quoi il peut bien servir.

```R
ninja = 100
XX = 2.0000
a = 0.5
turtle = 3.2
bluE_Pizza = a * ninja * turtle ** XX
print(bluE_Pizza)
```

Vous avez trouvé ? Pas encore ? Cet exemple est créé de toute pièce mais nous avons 
tous déjà rencontré des codes bien pire que ça. Ces quelques lignes sont pourtant
rigoureusement équivalentes au code suivant :

```R
#+begin_src R :results output :session *R* :exports both
mass = 100
speed = 3.2
energy = 1/2 * mass * speed^2
print(energy)
```

Dans le code qui précède, le nom des variables est parfaitement clair et le code se passe alors de commentaire.

Une autre manière de rendre son code plus lisible est de le modulariser, en créant 
des fonctions (aux noms eux aussi explicites), qui permettent à la fois de rendre robuste
le code (en évitant les répétitions et en minimisant ainsi le nombre d'erreurs), mais 
aussi de le condenser et donc de le rendre plus lisible. Cette approche de *Don't Repeat 
Yourself* est un principe qui s'oppose à *Write Everything Twice*. À l'occasion de cette
modularisation, il vous faudra également bien réfléchir à la **portée** [*AL* : à définir, pas clair] de vos variables 
et aux paramètres de vos fonctions afin d'éviter autant que possible les variables 
globales, les effets de bords étant une source de confusion et d'erreur inépuisable. 

Pour limiter au maximum les erreurs dans un code, il faut donc essayer de l'écrire
de façon à la fois claire, non ambigue, commentée et
concise. C'est étonnamment difficile à faire lorsqu'on débute en programmation
car il faut s'adapter au style du langage utilisé. Il faut en effet intégrer 
les concepts essentiels du langage de programmation pour exprimer ce que l'on souhaite faire de la 
façon la plus élégante possible, ce qu'il devient possible de
faire essentiellement avec l'expérience. Nous parlerons dans le chapitre
suivant des différentes techniques et conseils pour rendre son code
plus robuste. Mais avant même cette étape, nous pouvons déjà agir sur le
processus d'écriture.

## Expliciter son code

Tim Peters a écrit "The Zen of Python" (que vous pouvez lire en écrivant
`import this` dans une session Python) qui donne un ensemble de règles qu'il
faut garder en tête lorsqu'on écrit un programme. Les six premières lignes sont :

> Beautiful is better than ugly.
>  
> Explicit is better than implicit.
>  
> Simple is better than complex.
>  
> Complex is better than complicated.
>  
> Flat is better than nested.
>  
> Sparse is better than dense.

Ces six conseils peuvent paraître plus ou moins évidents à mettre en oeuvre pour un
débutant, mais focalisons-nous sur le deuxième. Ce deuxième conseil peut être mis en
oeuvre très simplement en refusant par exemple l'usage des *arguments par
défaut*. "Arguments par défaut" signifie que lorsque vous appelez une fonction qui
nécessite normalement $n$ de paramètres, vous appelez celle-ci avec
un nombre réduit *k* < *n* paramètres, et les valeurs des *n-k* paramètres manquants seront complétées
automatiquement avec celles définies par défaut dans la fonction. C'est bien pratique (car vous économisez de l'écriture de code), mais en vous 
reposant sur cette fonctionnalité, vous laissez implicitement le soin à la bibliothèque
que vous utilisez de définir la valeur des paramètres à votre place. Déléguer votre responsabilité à un tiers 
peut bien se passer la plupart du temps. Enfin, jusqu'au jour où après une mise à jour
la valeur d'un de ces *n-k* paramètres par défaut est changée ! Vos résultats changent alors que votre
programme n'a pas changé d'un bit. Si vous aviez explicité l'ensemble de vos *n* paramètres 
(y compris donc ceux non obligatoires car disposant d'une valeur par défaut), le problème 
n'aurait pas eu lieu.

## Commenter son code

Si commenter son code peut paraître le b.a.-ba de l’écriture d'un code, 
de nombreux chercheurs n’ont pas reçu de formation formelle au développement logiciel [*AL* : l'opposition dans la phrase n'est pas claire].
Bien commenter son code ne consiste pas à répéter dans une langue naturelle ce que le programme effectue. Nous allons voir en quoi cela consiste. Considèrons le programme suivant:

```R
ninja = 100    # This is the mass. It is expressed in kilograms.
XX = 2.0000    # This is the exponent
a = 0.5        # This is a magical constant
turtle = 3.2   # This corresponds to the speed at which the ninja is moving [m.s-1]
# Now I will use the famous kinetic energy formula, which is of course only valid for a non-rotating object.
bluE_Pizza = a * ninja * turtle ** XX
print(bluE_Pizza) # Now, let's print it on the screen
```

Il est clair que les commentaires ci-dessus n'aident pas vraiment à comprendre
de quoi il est question, et que la version du code avec des noms de variable
clairs est bien plus simple à comprendre. Si un code est bien écrit,
il se passe de presque de commentaires. Donc à quoi servent les
commentaires ?

Les commentaires laissés par l'auteur du code s'adressent au lecteur du code (qui
est censé connaître le langage utilisé et un minimum le contexte du logiciel) et
servent par exemple à signaler les unités ou le domaine de définition
d'une variable (toujours positive par exemple), une ruse de calcul ou
un point un peu délicat qui devrait être amélioré, les conditions
particulières dans lesquelles une fonction doit ou ne doit pas être
utilisé, la raison de l'assignation d'une nouvelle valeur à une variable dans les données, etc. Les commentaires attirent l'attention du lecteur et apportent les réponses 
aux questions qu'il pourrait se poser en lisant ce code.

Enfin, il est important de rappeler que commenter du code est une
tâche ingrate et que la façon la plus agréable de procéder consiste à
commenter son code au fur et à mesure qu'on l'écrit. On se rend parfaitement compte de l'utilité de cette tâche importante lorsque l'on reprend un code écrit plusieurs semaines ou plusieurs mois auparavant !

## Documenter son code

Nous distinguons ici le commentaire, qui s'adresse au programmeur qui
va chercher à comprendre ou à faire évoluer le code (cf. ci-dessus), de la
documentation, qui s'adresse quant à elle aux utilisateurs du logiciel.  Cela
commence en général par un fichier `README` expliquant succinctement
l'objectif du logiciel, comment l'installer, comment l'exécuter. Au
fur et à mesure que le code évolue, sa documentation devient plus
conséquente et on utilise alors des outils comme Sphynx (pour python)
ou Roxygen (pour R).

Il est donc important de bien faire la distinction entre ces deux
types d'annotations (commentaire et documentation) qui se retrouvent
souvent aux mêmes endroits dans le code [*AL* : pas clair, car juste au dessus, tu indiques que la documentation est dans un fichier readme].

## Utiliser des document computationnels

La programmation lettrée a été conceptualisée par Donald Knuth
[@knuth1984literate] [*AL* : dans quelles années ? En référence à "époque" ci-dessous] et propose de grands principes pour produire un
code compréhensible. Il s'agit principalement de
considérer l'écriture d'un code avant tout comme un
moyen d'expliquer à d'autres personnes les tâches demandées à
l'ordinateur. À l'**époque**, l'objectif était d'autoriser les développeurs
à s'affranchir de l'ordonnancement imposé par l'ordinateur et de se
concentrer sur leur pensée.

Dans le cas des scientifiques, autour de l'exécution du code se
trouvent des données d'entrées et des résultats qui sont indispensables à 
sa compréhension du phénomène qu'il étudie. Les documents computationnels 
ou *notebooks* sont d'une certaine façon inspirée de la programmation lettrée et 
propose une façon de travailler qui est devenue très populaire chez 
les scientifiques. 

Les documents computationnels permettent d'intégrer, dans un même 
document, à la fois du texte rédactionnel, du code informatique, et les résultats de ce code. La partie 
narrative est rédigée dans un langage de balisage très léger (tels que *Markdown* [REF]) et est
régulièrement agrémentée de fragments de codes exécutables (par exemple en R ou en python) 
et dont les résultats (textuels ou graphiques) sont automatiquement accolés. Cette structure correspond assez bien à la démarche suivi quotidiennement par
les scientifiques: 
  1. je propose une hypothèse que je décris (partie narrative)
  2. je réalise une expérience/analyse (j'exécute mon programme)
  3. j'inspecte le résultat de mon expérience/analyse (le résultat du programme)
  4. j'interprète les résultats et je décris mon interprétation
     (partie narrative) avant de proposer une nouvelle hypothèse

> FIXME: On pourrait peut-être insérer ici une illustration tirée du  [slide 37](https://gitlab.inria.fr/learninglab/mooc-rr/mooc-rr-ressources/blob/master/module2/slides/C028AL_slides_module2-fr-gz.pdf)
> [SVG](https://gitlab.inria.fr/learninglab/mooc-rr/mooc-rr-ressources/blob/master/module2/slides/img/example_pi_full.svg)

Ce procédé permet ainsi de documenter chaque étape de la recherche en
isolant chaque partie du code pour la lier à sa finalité directe. Il
existe différents outils permettant d'écrire de tels documents, les
plus matures étant :

 - Jupyter
 - Rmarkdown
 - Org-mode
 
Les avantages de tels documents computationnels pour une recherche reproductible sont multiples : d'une part 
ils permettent une meilleure transparence du code effectivement exécuté, et d'autre part ils 
facilitent grandement sa compréhension en le rendant partie intégrante d'une narration de la 
recherche (pour parfois s'approcher très fortement de la forme d'un article). 
Enfin, leur caractère très dynamique les rend particulièrement adaptés à la traçabilité
des petits morceaux de codes prototypes quotidiennement réécris et réexécutés
avec des paramètres différents.

Pour en savoir davantage sur les documents computationels, vous pouvez vous rapporter aux
module 2 et 3 du [MOOC sur la recherche
reproductible](https://learninglab.inria.fr/mooc-recherche-reproductible-principes-methodologiques-pour-une-science-transparente/).

## Restructurer et automatiser [*AL* : quoi ?] avec un workflow

Nous avons déjà évoqué l'importance de modulariser [*AL* : je ne comprends pas, terme non utilisé avant] son code pour le
rendre plus compréhensible et plus simple à faire évoluer. Il existe
de nombreux concepts pour vous permettre d'y arriver: la
programmation fonctionnelle, la programmation orientée objet, les
*design patterns*, etc. Il y a un concept qui mérite particulièrement d'être signalé car il
trouve tout son sens dans notre contexte où l'on transforme des
quantités importantes de données par des calculs complexes. Il s'agit
des [systèmes de workflows
scientifiques](https://en.wikipedia.org/wiki/Scientific_workflow_system).
Il en existe de nombreux, plus ou moins adoptés [*AL* : "adaptés" ?] selon les communautés
(astrophysique, génétique, etc.). Lorsque votre notebook (qui est un
objet assez monolithique) se stabilise mais devient trop long, trop
complexe, il sera certainement temps de le restructurer. Les workflows
peuvent vous y aider et vous permettre de passer par la même occasion
à une étape supérieure d'automatisation de son exécution (c'est
d'ailleurs souvent la motivation principale des utilisateurs de
workflows).
