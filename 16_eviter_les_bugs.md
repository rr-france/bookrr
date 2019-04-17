# Correction des programmes

Dans ce chapiter, nous expliquons les différentes formes de problèmes qui
peuvent être rnecontrés lors du développeemnt logiciel et présentons quelques
solutions standards pour y remédier.


## Bug et erreur

Lorsque que vous allez commencer à programmer, vous allez être rapidemment
confronté à toutes sortes de problèmes dont le premier est le bug qui empêche
votre programme d'être exécuté. Par exemple, si vous avez fait un faute de
frappe dans une instruction (e.g. `pirnt` au lieu de `print`), le programme ne
pourra pas être exécuté car rappelez-vous que l'ordinateur est completement con
(citation de G.Berry, Collège de France) et ne fait que ce ce que vous lui
demandez de faire. `pirnt` ne correspond à aucune instruction et donc le
programme va s'arrêter car l'interpéteur R ou Python ne saura pas quoi faire.

Mais il existe un autre type de problème bien plus grave en Science qui se
produit lorsque votre programme ne calcule pas ce que vous pensez qu'il
calcule. Cela peut arriver par exemple si vous avez mal spécifié ce que vous
souhaitiez faire. Ce type de problème peut être d'autant plus pernicieux que
tout peu bien se passer dans la majorité des cas (i.e. les résultats sont
corrects) et pour un certain nombre de cas limite, vous allez obtenir des
résultats abberants (ce qui est encore le meilleur des cas puisque cela est
relativement facile à repérer) ou des résultats vraisemblable mais faux, ce qui
est la pure des situations puisque cela peut vous conduire à en tirer de
fausses conclusions. Afin de se prémunir au maximum contre ces problèmes, il
existe un certain nombre de techniques qui, sans pouvoir certifier la correction
de votre programme, peuvent néanmoins garantir un minimum de correction.

## Techniques de développement



* robustifier son code
* pair coding
* intégration continue
