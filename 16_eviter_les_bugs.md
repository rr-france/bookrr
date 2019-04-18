# Exactitude des codes

Dans ce chapitre, nous présentons quelques techniques standards pour se
prémunir autant que possible des problèmes liés au code. Ces solutions ne
pourront certifier la justesse de votre code, mais pourrons néanmoins garantir
un minimum de correction.
 
[TODO schéema difficulté croissante : 1 2 3]
 
## Programmation en binôme

Une technique de programmation (agile) relativement facile à mettre en oeuvre
(pour peu que vous ayez des amis) consiste à coder en binôme ("pair
coding"). Il s'agit de s'asseoir à deux en face d'une machine, l'une des
personnes conduisant le développement en ayant le contrôle du clavier et
l'autre observant et commentant ce qu'écrit l'autre afin de corriger
d'éventuelles erreurs ou simplement questionner la pertinence de telle ou telle
ligne de code. Les deux personnes doivent changer de rôle fréquement. Cette
pratique permet de réduire les erreurs car d'une part, vous êtes deux à relire
le code et d'autre part, vous devez être en mesure d'expliquer à votre
partenaire ce que vous êtes en train de faire. Expliquer oralement ce que vous
pensez avoir écrit est une bonne façon de détecter vos erreurs.

## Tester votre code

>"I don’t need tests; I have users"
>
>-- Karl Broman

Une deuxième façon rendre votre code plus robuste est bien entendu de le tester
sur des cas concrets dont on connait par avance le résultat. Par exemple, si je
souhaite écrire une fonction qui fait la somme de deux nombres, je peux
vérifier que la somme de 1 et 2 me retourne bien 3, que la somme de `a` et `-a`
est bien zéro, etc. Ces tests peuvent être plus ou moins formels et le cadre
conceptuel des **tests unitaires** permet de mettre en place cette pratique de
manière rigoureuse. Il s'agit alors d'envisager des cas d'usage
caractéristiques de chaque partie (unité) et fonctionnalité du code, afin de
tester que ce dernier adopte bien le bon comportement face à des situations
variées (par exemple que des erreurs sont bien renvoyées lorsque les arguments
n'ont pas de sens, ou encore que le bon résultat est obtenu sur un exemple
jouet controllé). La difficulté dans l'écriture de ces test est de prévoir les
cas singuliers auquel on ne pense pas forcément. Par exemple, dans le cas de
l'addition que nous venons d'expliquer, nous avons proposé de vérifier que la
somme de `a` et `-a` faisait bien 0, mais que se passe t'il si `a = inf` ? (la
réponse est que la somme est alors être non définie (`NaN`))

Une autre façon de tester un code et de le diffuser à vos collègues et à la
communauté. Ceux-ci ne manqueront pas de vous faire des retours sur tel ou tel
cas limite et il faudra dans un premier temps modifier votre code, puis ajouter
ce test spéficique dans votre collection de tests unitaires.



## Intégration continue

Idéalement, chaque modification de votre code ne doit pas empêcher de passer
les tests unitaires. Si avant une modification votre code passait les 100 tests
unitaires mais qu'après la modification il n'en passe plus que 80, on parle
alors de régression, votre nouveau code est moins bon que la version d'avant.
Il existe aujourd'hui des outils qui permettent d'automatiser la vérification
des tests unitaire, en les évaluant à chaque nouvelle version du code, ou à
intervalles de temps réguliers (chaque nuit par exemple). Ces solutions peuvent
être locales, telles que Jenkins, ou deportée telles que Travis CI[^
https://travis-ci.org/] ou Appveyor[^ https://www.appveyor.com/].

Ces outils d'intégration continue peuvent en outre servir à vérifier que le
code se comporte correctement sous différent environnement logiciels (voir le
chapitre suivant)

## Pour en savoir plus 

 - https://www.wikihow.com/Pair-Program
 - [Wickham H. testthat: Get started with testing. The R Journal. 2011 Jun 1;3(1):5-10. https://journal.r-project.org/archive/2011/RJ-2011-002/RJ-2011-002.pdf]
 - [https://juliasilge.com/blog/beginners-guide-to-travis/]
