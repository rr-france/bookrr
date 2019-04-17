# Recherche reproductible : de quoi est-il question dans cet ouvrage ?

La crise de la reproductibilité est aujourd'hui un phénomène mondial et
largement transdiciplinaire qui participe à la défiance de la société à l'égard
de la Science. David Randall et Christopher Welser ont publié un ouvrage en 2018 intitulé « The Irreproducibility Crisis of Modern Science - Causes, Consequences, and the Road to Reform » dans lequel sont listées quarante recommandations pour réaliser une recherche reproductible [insérer la réf ici]. Mais qu'entend-on exactement par "crise de la reproductibilité"
et qu'est ce qu'une recherche reproductible ? Le terme même de "recherche
reproductible" est apparu il y a une dizaine d'années lorsque des études ont mis
en évidence le fait que certains des résultats de la littérature ne pouvaient
être reproduits en laboratoire [ref ?]. Plus récemment, ce sont de nombreuses études pré-cliniques ou cliniques dont les résultats n'ont pas pu être reproduits [Begley CG, Ellis LM. Drug development: Raise standards for preclinical cancer research. Nature 2012,483:531-533.] [Perrin S. Preclinical research: Make mouse studies work. Nature 2014,507:423-425.]. Par opposition à cette recherche
non reproductible, on pourrait donc être tenté de définir la recherche
reproductible comme étant une recherche dont les résultats publiés peuvent être
reproduits ***(*captain obvious*)*** [pas clair pour moi, à laisser ?]. Mais par qui, comment et dans quelles
conditions ? Si l'ensemble de la communauté scientifique a sans aucun doute une
intuition raisonable de ce que peut être une recherche reproductible dans son
propre domaine, il est très difficile, voire impossible de donner une
définition qui puisse satisfaire tout le monde tant les pratiques de la
recherche peuvent être différentes selon les domaines. La notion de "même
résultat" est très dépendante du domaine. Pour les uns, il suffira de confirmer
la significativité d'un effet, pour d'autres, ils devront obtenir le même
résultat bit pour bit.

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

Le fait que l'on s'inquiète aujourd'hui des problèmes de reproductibilité n'est
pas tout à fait un hasard. Le numérique, sous des formes multiples, a largement
investi tout le champ de la Science. Que l'on parle de stockage, de formatage,
d'archivage, ***d'indexage*** [indexation ?], d'analyse, de modèle, de statistiques,
d'environnements, de précision, il est aujourd'hui très difficile de faire
l'impasse sur l'outil informatique. Or, peu de chercheurs ont été convenablemnt
formés aux fondamentaux et aux bonnes pratiques liés aux outils informatiques. Cela peut
bien évidemment amener à la publication de résultats fragiles (dans le sens "peu robustes") dans le meilleur
des cas, et faux dans le pire des cas - mais ce n'est pourtant pas là que se
situent les plus graves dangers pour la recherche. N'avez-vous jamais perdu des
données ? Etes-vous totalement sûr de votre analyse statistique ? Etes-vous
capable de recréer une figure conçue il y a 6 mois à la demande d'un relecteur d'une revue
? Le premier bénéficiaire d'une recherche reproductible est d'abord le
chercheur lui même, puis son groupe, sa communauté et enfin la société. Une recherche
reproductible a vocation à faciliter la recherche au quotidien, à garantir
l'exactitude des méthodes et à documenter l'ensemble de la pratique
scientifique. Est-ce que cela garantit une recherche de qualité ? Cela y
participe, mais une recherche reproductible ne signifie pas forcément une bonne
recherche. On peut en effet faire de la mauvaise recherche qui est tout à fait
reproductible.


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


## Ce que ne traite pas cet ouvrage

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
