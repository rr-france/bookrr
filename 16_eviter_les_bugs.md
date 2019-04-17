# Correction des programmes

Dans ce chapitre, nous présentons quelques techniques standards pour remédier
aux problèmes liés au code.


## Partie à déplacer dans le chapitre 8)

Lorsque que vous allez commencer à programmer, vous allez être rapidemment
confronté à toutes sortes de problèmes dont le premier est un bogue qui empêche
votre programme d'être exécuté. Par exemple, si vous avez fait un faute de
frappe dans une instruction (e.g. `pirnt` au lieu de `print`), le programme ne
pourra pas être exécuté car rappelez-vous que l'ordinateur est complètement con
(citation de G.Berry, Collège de France) et ne fait que ce ce que vous lui
demandez de faire. `pirnt` ne correspond à aucune instruction et donc le
programme va s'arrêter car l'interpéteur R ou Python ne saura pas quoi faire.

Mais il existe un autre type de problème bien plus grave qui se produit lorsque
votre programme ne calcule pas ce que vous pensez qu'il calcule. Cela peut
arriver par exemple si vous avez mal spécifié ce que vous souhaitiez faire. Ce
type de problème peut être d'autant plus pernicieux que tout peu bien se passer
dans la majorité des cas (i.e. les résultats sont corrects) et pour un certain
nombre de cas limite, vous allez obtenir des résultats abberants (ce qui est
encore le meilleur des cas puisque cela est relativement facile à repérer) ou
des résultats vraisemblable mais faux, ce qui est la pure des situations
puisque cela peut vous conduire à en tirer de fausses conclusions. Afin de se
prémunir au maximum contre ces problèmes, il existe un certain nombre de
techniques qui, sans pouvoir certifier la correction de votre programme,
peuvent néanmoins garantir un minimum de correction.


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
faut garder en tête lorsqu'on écrit un programme. Les 6 première lignes sont:

> Beautiful is better than ugly.
> Explicit is better than implicit.
> Simple is better than complex.
> Complex is better than complicated.
> Flat is better than nested.
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
