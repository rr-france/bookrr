# Correction des programmes

Dans ce chapitre, nous présentons quelques techniques standards pour remédier
aux problèmes liés au code qui ne pourrons certifier la correction de votre
programme mais pourrons néanmoins garantir un minimum de correction.


# Soyez explicite

Pour limiter au maximum les erreurs dans un programme, il faut essayer d'écrire
des programmes qui soient à la fois clairs, non ambigus, commentés et
concis. C'est étonnamment difficile à faire lorsqu'on débute en programmation
car il faut s'adapter à la façon de faire du langage utilisé, c'est à dire
qu'il faut se mettre penser comme le programme, ce qu'il devient possible de
faire essentiellement avec l'expérience. Nous parlerons dans le chapitre
suivant des différents techniques et conseils pour rendre son code
compréhensible. Mais avant même cette étape, nous pouvons déjà agir sur le
processus d'écriture.

Tim Peters a écrit "The Zen of Python" (que vous pouvez lire en écrivant
`import his` dans une session Python) qui donne un ensemble de règles qu'il
faut garder en tête lorsqu'on écrit un programme. Les 6 premières lignes sont :

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

Ces conseils peuvent paraitre plus ou moins évident à mettre en oeuvre pour un
débutant alors considéreons un exemple. La deuxième règle peut être mise en
oeuvre très simplement en refusant par exemple l'usage des arguments par
défaut. Arguments par défaut signifie que lorsque vous appelez une fonction qui
prend normalement un nombre n de paramètres, vous pouvez appelez celle-ci avec
un nombre réduit de paramètres, et les paramètres manquant seront complétés
automatiquement avec ceux définis dans la fonction. Autrement dit, vous laissez
implicitement la responsabilité à la librairie que vous utilisez de définir vos
paramètres, vous déléguez votre responsabilité à un tiers. Cela peut bien se
passer la plupart du temps jusqu'au jour où après une mise à jour ce paramètre
par défaut est changé. Vos résultats changet alors que votre programme n'a pas
changé d'un bit. Si vous aviez spécifié l'ensemble de vos paramètres (y compris
avec les valeurs par défaut), le problème n'aurait pas eu lieu.
 
### Pair coding

### Tester votre code

### Intégration continue
