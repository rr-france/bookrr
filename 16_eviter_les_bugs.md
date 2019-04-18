# Exactitude des codes

Dans ce chapitre, nous présentons quelques techniques standards pour se prémunir
autant que possible des problèmes liés au code. Ces solutions ne pourront certifier 
la justesse de votre code, mais pourrons néanmoins garantir un minimum de correction.

 
[TODO shcema difficulté croissante : 1 2 3]
 
## Programmation en binôme

Une première façon de robustifier votre code est de recourrir à la programmation 
en binôme (*pair coding*). Il s'agit de programmer à deux en dialoguant, l'un 
conduisant le développement en implémentant au clavier, l'autre observant et 
interpellant le premier lorsqu'il décèle des erreurs ou des imperfections.

## Tester votre code

Une deuxième façon de robustifier votre code est de le tester. Ces tests peuvent être
plus ou moins formels. Il peut d'abord s'agir simplement de s'assurer que le code se
comporte comme attendu sur des exemples simples, ou simplement de demander à un collègue
d'utiliser le code et de vous faire un retour d'expérience.

>"I don’t need tests; I have users"
>
>-- Karl Broman

Le cadre conceptuel des **tests unitaires** permet de mettre en place cette pratique
de manière rigoureuse. Il s'agit alors d'envisager des cas d'usage caractéristiques 
de chaque partie (" unité ") et fonctionnalité du code, afin de tester que ce dernier 
adopte bien le bon comportement face à des situations variées (par exemple que des 
erreurs sont bien renvoyées lorsque les arguments n'ont pas de sens, ou encore que le 
bon résultat est obtenu sur un exemple jouet controllé).

[REF ]


## Intégration continue

>"It's not that we don't test our code, it's that we don't store our tests so they 
>can be re-run automatically."
>
>-- Hadley Wickham

Il existe aujourd'hui des outils qui permettent d'automatiser la vérification des tests
unitaire, en les évaluant à chaque nouvelle version du code, ou à intervalles de temps 
réguliers (chaque nuit par exemple). Ces solutions peuvent être locales, telles que Jenkins,
ou deportée telles que Travis CI[^ https://travis-ci.org/] ou Appveyor[^ https://www.appveyor.com/].

Ces outils d'intégration continue peuvent en outre servir à vérifier que le code se 
comporte correctement sous différent environnement logiciels (voir le chapitre suivant)

## Pour en savoir plus 
 - ressource programmation en binome ->
 - ressources test unitaire -> [Wickham H. testthat: Get started with testing. The R Journal. 2011 Jun 1;3(1):5-10. https://journal.r-project.org/archive/2011/RJ-2011-002/RJ-2011-002.pdf]
 - ressource intégration continue -> [https://juliasilge.com/blog/beginners-guide-to-travis/]
