# Exactitude des codes {#C-code-bugs}

Dans ce chapitre, nous présentons quelques techniques standards pour se
prémunir autant que possible des problèmes liés au code. Ces solutions ne
pourront certifier la justesse de votre code, mais pourront néanmoins garantir
un minimum d'exactitude.
 
## Programmation en binôme

Vous avez des amis adeptes de la ligne de commande, vous souhaitez animer une soirée ou un repas familial? Une technique de programmation relativement facile à mettre en œuvre consiste à coder en binôme : on parle de *pair coding*. Le *pair coding* est issu des méthodes dites "agiles". Il s'agit de s'asseoir à deux en face d'une machine : l'une des personnes conduit le développement en ayant le contrôle du clavier ;
l'autre observe et commente ce qu'écrit l'autre afin de corriger
d'éventuelles erreurs ou simplement, questionner la pertinence de telle ou telle
ligne de code. Les deux personnes doivent changer de rôle fréquemment. Cette
pratique permet de réduire les erreurs : d'une part, vous êtes deux à relire
le code et d'autre part, vous devez être en mesure d'expliquer à votre
partenaire ce que vous êtes en train de faire. 

Expliquer oralement ce que vous pensez avoir écrit est une bonne façon de détecter vos erreurs.

## Tester votre code

>"*I don’t need tests; I have users*"
>
>-- Karl Broman

Une deuxième façon de rendre votre code plus robuste est de le tester
sur des cas concrets dont on connaît par avance le résultat. Par exemple, si je
souhaite écrire une fonction qui fait la somme de deux nombres, je peux
vérifier que la somme de 1 et 2 me retourne bien 3, que la somme de `a` et `-a`
est bien zéro, etc. Ces tests peuvent être plus ou moins formels et le cadre
conceptuel des **tests unitaires** permet de mettre en place cette pratique de
manière rigoureuse. Il s'agit alors d'envisager des cas d'usage
caractéristiques de chaque partie (unité) et fonctionnalité du code, afin de
tester que ce dernier adopte bien le bon comportement face à des situations
variées : par exemple, les erreurs sont bien renvoyées lorsque les arguments
n'ont pas de sens. La difficulté dans l'écriture de ces tests est de prévoir les
cas singuliers auxquels on ne pense pas forcément. Par exemple, dans le cas de
l'addition que nous venons d'expliquer, nous avons proposé de vérifier que la
somme de `a` et `-a` faisait bien 0, mais que se passe-t-il si `a = inf` ? (la
réponse est que la somme est alors être non définie (`NaN`))

Une autre modalité pour tester un code est de le diffuser au sein de votre communauté. Vos collègues ne manqueront pas de vous faire des retours sur tel ou tel cas limite et il faudra dans un premier temps modifier votre code, puis ajouter ce test spéficique à votre collection de tests unitaires.

## Intégration continue

Idéalement, aucune modification de votre code ne doit empêcher de réaliser
les tests unitaires. Par exemple, le code passe les 100 tests unitaires. Problème : après une modification, il n'en passe plus que 80.  
On parle alors de "régression" : votre nouveau code est moins bon que la version d'avant.
Il existe aujourd'hui des outils qui permettent d'automatiser la vérification
des tests unitaires, en les évaluant : 

- à chaque nouvelle version du code, ou 
- à intervalles de temps réguliers (chaque nuit par exemple). 

Ces solutions peuvent être locales, telles que Jenkins, ou deportées,
telles que [Travis CI](https://travis-ci.org/) [@travisciTestDeployYour] ou [Appveyor](https://www.appveyor.com/). 

Ces outils d'intégration continue peuvent en outre servir à vérifier que le
code se comporte correctement sous différents environnements logiciels (voir le
chapitre suivant)

## Pour en savoir plus 

 - [@brownTenQuickTips2018]
 - [@wickhamTestthatGetStarted2011]
 - [@silgeBeginnerGuideTravisCI2016]
