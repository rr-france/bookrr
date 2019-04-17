# Rendre son code compréhensible

> “Programs must be written for people to read, and only incidentally for machines to execute.” 
>
> -- Harold Abelson
  
Nous avons vu au chapitre précédent que la diffusion/partage de son code/ses 
programmes informatiques était un pivot de la recherche reproductible. Une 
étape préalable dans cette démarche est de rendre son code/programme facilement 
compréhensible par un observateur/lecteur externe. Le premier de ces ré-utilisateurs 
est bien souvent soi-même quelques mois plus tard, ou bien un proche collaborateur 
avec qui la recherche se fait conjointement.

Il existe là encore différents degrés de complexité permettant de faciliter 
la compréhension de son code : 

 1. bien nommer ses variables et ses fonctions
 2. commenter son code
 3. utiliser des documents computationnels
 5. gestion de *workflow*

![Outils d'amélioration pour la compréhension du code](img/testdiagramch15.png)

## Nommer les choses de manière informative !

> There are only two hard things in Computer Science: cache invalidation and naming things.
>
> -- Phil Karlton

Une manière d'obtenir un code plus facile à comprendre pour un observateur extérieur 
est d'utiliser des noms informatifs qui explicite directement ce que represente une 
variable ou une fonctions. C'est une tâche qui peut se révéler étonnamment ardue !

Une autre manière de rendre sun code plus lisible est de le modulariser, en créant 
des fonctions (aux noms eux-aussi explicites), qui permettent à la fois de robustifier 
le code (en évitant les répétitions et en minimisant ainsi le nombre d'erreur), mais 
aussi de le condenser et donc de le rendle plus lisible. Cette approche de *Don't Repeat 
Yourself* est un principe qui s'oppose à *Write Everything Twice*.

## Commentaires

Si commenter son code peut paraître le b.a.-ba de l’écriture de programmes informatiques, 
de nombreux chercheurs n’ont pas reçu de formation formelle au développement informatique. 
Il est donc important de rappeler que la façon la plus simple est de commenter son code de 
manière. Cette étape est particulièrement lorsque l'on reprend un programme écrit plusieurs 
semaines ou plusieurs mois auparavant.

## La programmation lettrée et les document computationnels

La programmation lettrée a été conceptualisée par Donald Knuth [@knuth1984literate] 
et propose de grands principes pour produire un programme compréhensible par les 
humains. Il s’agit principalement de changer le paradigme de l’ecriture d’un 
programme informatique comme un outils permettant d’expliquer à d’autres humains les 
taches demandées à l’ordinateur.

En pratique, on cherche le bon compromis entre l’optimalité d'un code d’un point de vue 
computationnel et la facilité de lecture proposer des solutions concrête afin de 
facilité le partage de programmes informatiques

Pour aller plus loin dans la compréhension du code, les documents computationnels sont des 
documents qui marient à la fois texte rédactionnel avec du code informatique. La partie 
narrative est rédigée dans un language de balisage très légèr (tels que *Markdown* [REF]), 
et alterne avec du code programmatique rédigé par exemple en R ou en Python. Ce procéder 
permet ainsi de documenter chaque étape de la recherche en isolant chaque partie du code 
pour la liée à sa finalité directe. Il existe différents outils permettant d'écrire de tels 
documents computationnels, parmi lesquels :

 - Rmarkdown
 - JuPyteR
 - Org-mode
 
Les avantages de tels documents pour une recherche reproductible sont multiples : d'une part 
ils permettent une meilleure transparence du code effectivement executé, et d'autre part ils 
facilitent grandement sa compréhension en le rendant partie intégrante d'une narration de la 
recherche (qui peut parfois s'approcher - et même très fortement - de la forme d'un article).

[Ref MOOC Arnaud]

[*AL*] notions de Notebook ?

## Gestion de *workflow*

TODO

