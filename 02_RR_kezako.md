# Introduction

## La crise de la reproductibilité de la Science

La crise de la reproductibilité de la Science est aujourd'hui un phénomène mondial et
largement transdiciplinaire qui participe à la défiance de la société à l'égard
de la Science [Baker M. 1,500 scientists lift the lid on reproducibility. Nature 2016,533:452-454.]. Elle a émergé il y a de nombreuses années, mais elle s'est révélée criantes lorsqu'en particulier il a été montré que les résultats de nombreuses études pré-cliniques ou cliniques n'ont pas pu être reproduits [Begley CG, Ellis LM. Drug development: Raise standards for preclinical cancer research. Nature 2012,483:531-533.] [Perrin S. Preclinical research: Make mouse studies work. Nature 2014,507:423-425.] La recherche étant au service de la Science, une des origines de cette crise de reproductibilité de la Science peut être que la communauté scientifique commence à réaliser que la recherche réalisée par elle peut ne pas être reproductible. Mais qu'entend-on exactement par "Recherche reproductible" ? 

## Définition(s) de "recherche reproductible" ?

Si l'ensemble de la communauté scientifique a sans aucun doute une
intuition raisonable de ce que peut être une recherche reproductible dans son
propre domaine, il semble *a priori* difficile de donner une
définition qui puisse satisfaire tout le monde tant les pratiques de la
recherche peuvent être différentes selon les domaines. La notion de "même
résultat" est très dépendante du domaine. Pour les uns, il suffira de confirmer
la significativité d'un effet, pour d'autres, ils devront obtenir le même
résultat bit pour bit. Le terme même de "recherche reproductible" est apparu en 1992 lors du congrès de la "Society of Exploration Geophysics" [*SG* : trouver la traduction]. De nombreuses définitions de "Recherche reproductible" sont fournies par Barba L.A. [Barba, Lorena A. 2018. ‘Terminologies for Reproducible Research’. ArXiv:1802.03311 [Cs], February. http://arxiv.org/abs/1802.03311.] Parmi celles-ci, nous retiendrons la suivante, issue de l'article de Vandewalle et coll.[https://ieeexplore.ieee.org/document/4815541] : "un travail de recherche est dit reproductible si toutes les informations qui concernent ce travail, incluant, mais n'étant pas limitées, le texte, les données, et le code de programmation, sont rendues disponibles de telle sorte que n'importe quel chercheur indépendant peut reproduire les résultats." 

## Pourquoi cette crise de la reproductibilité de la rechercher arrive-t-elle aujourd'hui ?

Le fait que l'on s'inquiète aujourd'hui des problèmes de reproductibilité n'est
pas tout à fait un hasard. Le numérique, sous des formes multiples, a largement
investi tout le champ de la Science. Que l'on parle de stockage, de formatage,
d'archivage, ***d'indexage*** [indexation ?], d'analyse, de modèle, de statistiques,
d'environnements, de précision, il est aujourd'hui très difficile de faire
l'impasse sur l'outil informatique. Or, peu de chercheurs ont été convenablemnt
formés aux fondamentaux et aux bonnes pratiques liés aux outils informatiques. Cela peut
bien évidemment amener à la publication de résultats fragiles (dans le sens "peu robustes") dans le meilleur
des cas, et faux dans le pire des cas - mais ce n'est pourtant pas là que se
situent les plus graves dangers pour la recherche. 

## Quelques exemples de situations concrètes

Que ce soit l'archéologiste sur le terrain en train d'effectuer une campagne de
fouille, le biologiste dans son laboratoire en pleine préparation d'une
nouvelle expérience, ou le numéricien en train de finaliser une simulation de
grande ampleur, tous participent à la Science et tous proposeront à leur
communauté de nouvelles idées, de nouveaux résultats et de nouvelles méthodes
qu'ils souhaitent pouvoir être reproduits par leurs pairs. Ils seront alors
probablement confrontés à cette notion de "recherche reproductible", lorsque les
données qu'ils enverront à leurs collègues ne pourront pas être lues pour des
raison d'incompatibilité de format, lorsqu'une même simulation réalisée sur
deux machines différentes donnera des résultats radicalement différents,
lorsqu'une donnée essentielle aura été perdue lors de la perte d'un disque dur
ou enfin, lorsqu'incapables de reproduire l'une de leur propres expériences, ils
devront renoncer à une hypothèse qui s'annoncait pourtant prometteuse. 

Par ailleurs, ne vous êtes-vous jamais posé les questions suivantes : "et si je perdais, là, maintenant, mes données ?", "Suis-je vraiment sûr de mon analyse statistique ?", "Suis-je capable de recréer une figure conçue il y a 6 mois ?" Le premier bénéficiaire d'une recherche reproductible, c'est d'abord *vous*, puis votre groupe de recherche, la communauté scientifique à laquelle vous appartenez, et enfin, la société. Une recherche
reproductible a vocation à faciliter la recherche au quotidien, à garantir
l'exactitude des méthodes et à documenter l'ensemble de la pratique
scientifique. Est-ce que cela garantit une recherche de qualité ? Non, certes, mais cela y
participe. En effet, une recherche reproductible (au sens de l'ouvrage, "une recherche dont les résultats publiés peuvent être reproduits") ne signifie pas forcément une bonne
recherche : on peut en effet faire de la mauvaise recherche qui est tout à fait
reproductible.

## Aperçu très rapide des multiples causes d'une recherche non reproductible

Comme nous le verrons au cours de ce livre, les cause d'une recherche
non reproductible sont très nombreuses, allant des plus évidentes comme la
perte des données jusqu'aux plus subtiles comme par exemple le chaos numérique
dont peu de chercheurs ont conscience. Encore une fois, nous ne parlons pas ici
de malhonneteté scientifique mais bien méconnaissance ou de mauvaises pratiques
qui viennent compromettre la possibilité même de reproduire des résultats. Ces
mauvaises pratiques peuvent par ailleurs venir s'accumuler et constituer une
"dette technique" insurmontable, qui peut à terme condamner le laboratoire. Nous
verrons au travers de situations fictives, mais réalistes, qu'à l'origine
des problèmes de reproductibilité se trouve un ensemble de concepts fondamentaux qu'il
est nécessaire de connaître sans toutefois les maîtriser totalement. La
recherche reproductible n'est pas un processus de type tout ou rien. Il existe
des premières solutions très simples que tout un chacun peut mettre en oeuvre dès
aujourd'hui, alors que d'autres solutions demanderont un peu plus de temps et
d'énergie. 

## Ce que cet ouvrage ne traite pas

Il n’est pas question dans cet ouvrage de traiter toutes les solutions pour garantir la reproductibilité de la recherche au sens de David Randall et Christopher Welser, sens qui inclut entre autres la Qualité de la recherche. En effet, comme nous l'avons vu ci-dessus, nous allons nous focaliser sur les solutions qui permettent communiquer des résultats qui peuvent être reproduits de façon exhaustive. Ainsi, nous n’allons pas traiter des solutions à des problèmes qui nuisent à la Qualité de la recherche, et en particulier : aller à la "pêche" aux résultats significatifs parmi tous les tests statistiques réalisés ("p-hacking") [Nuzzo R. Scientific method: statistical errors. Nature 2014,506:150-152.], générer une hypothèse de recherche *a posteriori*, c’est-à-dire après avoir obtenu un résultat significatif (« harking ») [Kerr NL. HARKing: hypothesizing after the results are known. Pers Soc Psychol Rev 1998,2:196-217.], ou sur-interpréter le résultat statistique qui est significatif (« Probability That a Positive Report is False ») [Wacholder S, Chanock S, Garcia-Closas M, El Ghormli L, Rothman N. Assessing the probability that a positive report is false: an approach for molecular epidemiology studies. J Natl Cancer Inst 2004,96:434-442.] Nous invitons par conséquent le lecteur à se documenter par ailleurs sur ces sujets [Munafo MR, Nosek BA, Bishop DVM, Button KS, Chambers CD, Sert NPd, Simonsohn U, Wagenmakers E-J, Ware JJ, Ioannidis JPA. A manifesto for reproducible science. Nature Human Behav 2017,1:0021.]



---

* Plein de sources d'erreurs possibles
    * reproductibilité numérique
    * misconduct
    * sloppy
* Apporter des réponses à un certain nombre de problèmes. . RR = méthodes basée sur la transparence permettant d'identifier, d'éviter, de corriger des erreurs

* [ok, traité] On ne parle pas de la qualité/vérité de la recherche ni de la pertinence des questions. Il n'est pas question de prévenir une "mauvaise" recherche. Il est possible de faire une très mauvaise reproductible mais ça se voit.
    * On a décidé de ne pas traiter 
        * p-hacking
        * harking
        * Stats (une partie)
