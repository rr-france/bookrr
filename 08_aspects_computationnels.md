# Des problèmes de calcul ?

Les problèmes liés au calcul et aux codes associés partagent des similarités
avec les problèmes liés aux données (par exemple la non disponibilité) mais
dans le même temps, ils ont des spécificités propres du fait de leur nature
opératoire, c'est à dire qu'on veut exécuter ce code afin d'obtenir un
résultat. C'est à ce moment précis qu'une certain nombre de problèmes vont
surgir que l'on peut classer en deux grandes catégories: ceux qui empêchent
d'obtenir un résultat et ceux qui rendent un résultat différent voire faux. Si
le premier type de problème est ennuyeux, le second type de problème est
d'autant plus grave qu'il est difficile à détecter.


## Le code n'est pas disponible

Le cas le plus frustrant est certainement celui où l'on n'a tout simplement pas
ou plus accès au programme à exécuter.

* Cela peut être dû au fait que le logiciel soit propriétaire et que l'on n'ait
  pas accès à la licence d'exploitation. Par exemple parce que votre
  équipe/université, n'ayant plus de budget, a cessé de la payer ou parce que
  ce logiciel est disponible dans l'université d'un collègue mais pas dans
  l'université où vous travaillez actuellement. Il se peut également que vous y
  ayez accès mais que seul un nombre restreint de personnes puissent y accéder
  en même temps (avec un système de jetons) et que vous vous retrouviez à
  devoir attendre un bon moment avant d'y arriver.

* Si le code a été développé "en interne", il arrive (trop souvent) qu'à la
  suite d'un crash disque, d'un vol d'ordinateur portable, du départ du
  développeur principal, ... que l'on n'ait simplement plus accès au
  logiciel. C'est souvent le résultat d'un mauvaise politique de sauvegardes ou
  de partage d'informations au sein d'une équipe.

* Assez souvent, c'est un code développé "en externe" (dans une autre équipe de
  recherche par exemple) que l'on souhaite ré-exécuter, par exemple pour s'y
  comparer ou bien pour vérifier si on obtient bien des résultats similaires
  avec une autre méthode. En général, on cherche alors le code sur le web mais
  il est assez courant que l'URL indiquée dans l'article ne soit plus
  accessible car le développeur (doctorant/postdoctorant) a depuis quitté
  l'équipe où il travaillait et que sa page web a été supprimée ou complètement
  restructurée. Ce problème est connu sous le nom d'[*URL
  decay*](https://www.spinellis.gr/sw/url-decay/) ou de [*Link
  Rot*](https://en.wikipedia.org/wiki/Link_rot).

* Enfin, ces chercheurs peuvent tout simplement ne pas souhaiter partager ce
  code, par exemple parce qu'ils jugent qu'il n'est pas *montrable* en l'état
  (pas ou peu commentaires, structure horrible cachant des erreurs) ou encore
  pour conserver un *avantage compétitif*.

Si cette question vous intéresse, vous pouvez lire les travaux de Collberg et
Proebsting [@10.1145/2812803] qui étudient les causes d'incapacité à réexécuter
du code dans la communauté de recherche *Computer Systems*, pourtant très au
fait des aspects logiciels. Vous y trouverez tout un tas de témoignages (assez
drôles si c'était sans conséquences) issus d'une étude de terrain et couramment
utilisés pour excuser son incapacité à mettre à donner accès au code derrière
une publication.


## Comment lance-t-on ce code ?

Il est courant lorsque l'on fait de la recherche de devoir développer soi-même
un code pour répondre à un besoin spécifique. Que ce soit un gros code ou un
petit script, on prend rarement le temps de rédiger une documentation *externe*
(à destination des utilisateurs) puisque le code est principalement utilisé par
les membres de l'équipe que l'on croise tous les jours. Mais lorsque l'on
revient quelques mois plus tard, pour ré-exécuter un de ses propres calculs ou
bien que l'on essaye de repartir du travail de quelqu'un d'autre (qui a quitté
le laboratoire ou n'y a même jamais travaillé), il est courant de ne pas (ou
plus) savoir comment il avait été lancé. Avec quels paramètres, quels fichiers
d'entrées, quelles variables d'environnement, etc ? La moindre erreur sur les
paramètres conduira à des résultats différents voir même à un crash. Et
malheureusement pour vous, le vous d'il y a 6 mois ne répond pas au mail.
Enfin, et comme nous le verrons par la suite, il existe plein d'autres raisons
qui peuvent conduire à ces deux symptomes.

## Comment fonctionne ce code ?

Si on n'est plus sûr des paramètres utilisés, on peut vouloir chercher à
comprendre d'où vient le problème pas en inspectant le code. Si tant est qu'on
ait accès au code source bien sûr... Les logiciels propriétaires ou bien
disponibles uniquement sous forme binaire rendent toute inspection de ce type
impossible. Mais admettons que vous ayez réussi à inspecter les sources et que
vous ayez les compétences pour le comprendre (a minima, un langage de
programmation que vous connaissez).

* Les codes de recherche, développés pour des besoins spécifiques, sont souvent
  des "prototypes" et il est rare de prendre le temps de rédiger une
  documentation interne (à destination des développeurs). Et quand bien même il
  y aurait des commentaires, encore faut il qu'ils soit compréhensibles (a
  minima en anglais) et qu'ils correspondent à la réalité (quand un code évolue
  vite, on ne prend pas toujours le temps de mettre à jour les commentaires et
  la documentation au fur et à mesure) sinon ces commentaires risquent plus de
  vous fourvoyer que de vous aider.

* Il y a un dicton célèbre en informatique qui dit “Programs must be written
  for people to read, and only incidentally for machines to execute.” C'est une
  citation d'[Harold Abelson](https://en.wikipedia.org/wiki/Hal_Abelson) tirée
  de son livre *Structure and Interpretation of Computer Programs* publié en
  1979. Commenter, c'est une chose, mais lorsque l'on cherche à comprendre un
  programme, on se rend vite compte qu'il est indispensable que les noms de
  variables et de fonctions aient été bien choisis, que le code ait été été
  bien structuré avec des fonctions au rôle clairement défini, sans quoi le
  code devient totalement incompréhensible (ce qui est précisemment l'objet du
  concours "Obfuscted C"). De même, lorsque qu'il s'agit d'un code conséquent
  répartis dans de nombreux fichiers, une mauvaise convention de nommage des
  fichiers ou bien l'usage d'une structure de fichiers absconce préviennent
  toute tentative de compréhension.
  
* Enfin, même si le code est relativement compréhensible, il est possible que
  des *bugs* (des erreurs de programmation) soient à l'origine de vos malheurs
  mais comment les trouver ?

## Quelle version du code ?

Nul n'est parfait et les *bugs* sont donc courants, même chez les programmeurs
les plus expérimentés. Il se peut que le bug à l'origine de vos problèmes
provienne de la version d'un logiciel actuellement installé sur la
machine. Pour corriger ce bug, on peut vouloir mettre à jour le logiciel. Mais
quelle version a été utilisée dans le passé et quelle est la version actuelle ?
Et comment avoir si c'est effectivement la cause de la différence observée ?
Est-ce que la mise à jour n'introduirait pas de nouveaux bugs ? L'idéal serait
peut-être de revenir à une version plus ancienne mais comment faire ? Quelle
est la version la plus récente que je puisse utiliser ?

Enfin, est-ce que cette nouvelle version sera toujours compatible avec mon
ordinateur ? Et si je repars du code source, arriverais je à le recompiler ?


## Environnement de calcul

Plus le langage que vous utilisez est de haut niveau, plus il est probable
qu'il dissimule une grande complexité. Même le script le plus anodin dépend (en
général) d'une large hiérarchie de bibliothèques que l'on a du mal à
imaginer. À titre d'exemple, lorsqu'en Python vous souhaitez faire un petit
graphique, il est courant de charger la bibliothèque `matplotlib` avec un
simple:

```python
import matplotlib
```

Cette bibliothèque est fournie par un *paquet* qui, sur la machine d'un des
auteurs s'appelle, `python3-matplotlib`. Lorsque nous cherchons à en savoir
plus sur ce paquet, voilà ce que nous obtenons:

```
Package: python3-matplotlib
Version: 2.1.1-2
Depends: python3-dateutil, python-matplotlib-data (>= 2.1.1-2),
python3-pyparsing (>= 1.5.6), python3-six (>= 1.10), python3-tz,
libjs-jquery, libjs-jquery-ui, python3-numpy (>= 1:1.13.1),
python3-numpy-abi9, python3 (<< 3.7), python3 (>= 3.6~),
python3-cycler (>= 0.10.0), python3:any (>= 3.3.2-2~), libc6 (>=
2.14), libfreetype6 (>= 2.2.1), libgcc1 (>= 1:3.0), libpng16-16 (>=
1.6.2-1), libstdc++6 (>= 5.2), zlib1g (>= 1:1.1.4)
```

C'est ici la version 2.1.1-2 qui est présente et, pour l'installer, il a fallu
installer les paquets `python3-dateutil`, `python-matplotlib-data`,
`python3-pyparsing`, etc. C'est ce qu'on appelle les *dépendances*. Mais pour
ces paquets dépendent eux-mêmes d'autres paquets. Lorsque l'on récupère
l'ensemble des paquets nécessaire avec leurs dépendances, voici ce qu'on
obtient:

![Dépendances de Matplotlibs sous debian obtenues avec debtree](img/python3-matplotlib.png "debtree output")

Vous remarquerez dans les dépendances que la version n'est pas précisément
indiquée mais qu'il faut par exemple une version supérieure de
`python3-pyparsing` qui soit au moins 1.5.6. Mais si des bugs peuvent être
introduits, comment être sûr que votre code fonctionnera de la même façon avec
les versions `1.5.6`, `1.5.7`, ..., sachant que nous en sommes maintenant au
moins à la version `2.2.0`.

En résumé, tout code, aussi petit soit-il, possède tout un arbre de dépendances
qui sont le plus souvent cachées. Ce code s'exécute donc dans un environnement
donné et une différence, même insignifiante, de cet environnement peut conduire
à des résultates différents, c'est à dire à des problèmes de non
reproductibilité.

Si cette question vous intéresse, vous pouvez lire [@gronenschild_effects_2012]
qui étudient l'influence de la version de MacOSX et de FreeSurfer, un logiciel
permettant de mesurer l'épaisseur corticale et le volume de structures
neuroanatomiques.

## Le chaos numérique

Les nombres manipulés par ordinateur ne sont pas des nombres réels, avec une
précision infinie, mais des nombres dit *à virgule flottante* qui n'obéissent
pas exactement aux mêmes règles que celles que l'on nous enseigne à
l'école. Par exemple, si vous demandez à, à peu près n'importe quel ordinateur
si `0.1*3==0.3` ou si `3-2.9==0.1` il vous répondra très certainement `FALSE`
(Faux) dans les deux cas. Cela est dû au fait que la représentation au format
binaire de ces nombres (en apparence simple) n'est pas exacte. Beaucoup de
machines à calculer ayant une représentation interne en base 10 un peu
différente, nous n'avons pas été habitués tôt à ce genre de problème, sauf
peut-être pour des nombres du genre $1/3\approx 0,3333333$. Il faut donc faire
très attention lorsque l'on programme à cette "subtilité" qui joue des tours
dès que l'on veut comparer deux nombres.

Un autre problème en premier abord surprenant, mais probablement plus simple à
comprendre, est la non associativité des opérations. Si avec les nombres réels,
il va de soit que $(a+b)+c=a+(b+c)$, ce n'est pas le cas avec les nombres en
virgules flottante. Par exemple, `(1e-10+1e10)-1e10` vaut `0` alors que
`1e-10+(1e10-1e10)` vaut `1e-10`. Même une simple moyenne peut donc devenir
problématique et, non, il ne suffit pas de trier les nombres avant de les
additionner pour résoudre le problème.

Comme vous utilisez vraisemblablement un ordinateur parallèle (même votre
téléphone a maintenant plusieurs cœurs de calcul), il est possible que la somme
$a_1 + \dots +a_n$ ne soient pas calculé comme vous l'imaginez (i.e.,
$(((((((a_1 + a_2) + a_3) + \dots +a_n)$), mais en plusieurs parties (i.e.,
$((((a_1 + a_2) + \dots +a_{n/2}) + ((((a_{n+1} + a_{n+2}) + \dots +a_n)$),
chaque cœur de votre processeur réalisant une des sommes partielles, la somme
finale étant faite à la fin. Le simple fait de passer d'un ordinateur à l'autre
(qui n'auraient pas exactement le même nombre de cœurs), même avec exactement
le même environnement, peut donc changer le résultat. Les cœurs d'un ordinateur
n'allant pas toujours exactement à la même vitesse, un code un peu optimisé
ajustera la taille des sommes partielles pour terminer le calcul le plus
rapidement possible et le résultat du calcul variera donc d'une exécution sur
l'autre alors que rien n'a changé! Mais alors, comment décider lequel de ces
différents résultats de calculs est le "bon" ?

Toutes ces petites imprécisions de calcul peuvent hélas rapidement devenir très
problématiques lorsque le système sous-jacent correspond par exemple à la
discrétisation d'une équation différentielle. Le calcul est alors très sensible
aux conditions initiales et l'accumulation des imprécisions peut amener à une
catastrophe (voir notamment [The Patriot Missile
Failure](http://www-users.math.umn.edu/~arnold/disasters/patriot.html))

Il y a de nombreux articles décrivant ce genre de cauchemars. Vous pouvez
vouloir lire le classique [What Every Computer Scientist Should Know About Floating-Point Arithmetic David Goldberg, Computing Surveys, 1991](plato.la.asu.edu/MAT420/float2.pdf) ou encore les travaux de Stodden et ses collègues [/Assessing
Reproduciblity: An Astrophysical Exemple of Computationnal Uncertainty in the
HPC context/](http://web.stanford.edu/~vcs/talks/ResCuESC2018-STODDEN.pdf).

