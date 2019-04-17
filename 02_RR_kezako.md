# Recherche reproductible: de quoi est-il question ?

La crise de la reproductibilité est aujourd'hui un phénomène mondial et
largement transdiciplinaire qui participe à la défiance de la société à l'égard
de la Science. Mais qu'entend t'on exactement par crise de la reproductibilité
et qu'est ce qu'une recherche reproductible ? Le terme même de recherche
reproductible est apparu il y a une dizaine d'années lorsque des études ont mis
en évidence le fait que certains des résultats de la littérature ne pouvaient
être reproduit en laboratoire. Par opposition à cette recherche
non-reproductible, on pourrait donc être tenter de définir la recherche
reproductible comme étant une recherche dont les résultats peuvent être
reproduits (*captain obvious*). Mais par qui, comment et dans quelles
conditions ? Si l'ensemble de la communauté scientifique a sans aucun doute une
intuition raisonable de ce que peut être une recherche reproductible dans son
propre domaine, il est très difficile, voire impossible de donner une
définition qui puisse satisfaire tout le monde tant les pratiques de la
recherche peuvent être différentes selon les domaines. La notion de "même
résultat" est très dépendante du domaine. Pour les uns, il suffira de confirmer
la significativité d'une effet, pour d'autres, ils devront obtenir le même
résultat bit pour bit.

Que ce soit l'archéologiste sur le terrain en train d'effectuer une campagne de
fouille, le biologiste dans son laboratoire en pleine préparation d'une
nouvelle expérience ou le numéricien en train de finaliser une simulation de
grande ampleur, tous participent à la Science et tous proposeront à leur
communauté de nouvelles idées, de nouveaux résultats et de nouvelles méthodes
qu'ils souhaitent pouvoir être reproduits par leurs pairs. Ils seront alors
peut être confrontés à cette notion de recherche reproductible, lorsque les
données qu'ils enverront à leurs collègues ne pourront pas être lues pour des
raison d'incompatibilité de format, lorsqu'une même simulation tournant sur
deux machines différentes donnera des résultats radicalement différent,
lorsqu'une donnée essentielle aura été perdue lors de la perte d'un disque dur
ou enfin, lorsqu'incapables de reproduire une de leur propres expériences, ils
devront renoncer à une hypothèse qui s'annoncait pourtant prometteuse.

Le fait que l'on s'inquiète aujourd'hui des problèmes de reproductibilité n'est
pas tout à fait un hasard. Le numérique, sous des formes multiples, a largement
investi tout le champ de la science. Que l'on parle de stockage, de formatage,
d'archivage, d'indexage, d'analyse, de modèle, de statistiques,
d'environnements, de précisions, il est aujourd'hui très difficile de faire
l'impasse sur l'outil informtatique. Or peu de chercheurs ont été convenablemnt
formés aux fondamentaux et aux bonnes pratiques qui en découlent. Cela peut
bien évidemment amener à la publication de résultats fragiles, dans le meilleur
des cas et faux dans le pire des cas, mais ce n'est pourtant pas là que ce
situent les plus graves dangers pour la recherche.  Avez-vous jamais perdu des
données ? Etes vous totalement sûr de votre analyse statistique ? Etes vous
capable de recréer une figure conçue il y a 6 mois à la demande d'un relecteur
?  Le premier bénéficiaire d'une recherche reproductible est d'abord le
chercheur lui même, puis son groupe, sa communauté et la société. Une recherche
reproductible a vocation à faciliter la recherche au quotidien, à garantir
l'exactitude des méthodes et à documenter l'ensemble de la pratique
scientifique. Est-ce que cela garantit une recherche de qualité ?  Cela y
participe mais une recherche reproductible ne signifie pas forcément une bonne
recherche. On peut faire de la mauvaise recherche qui est tout à fait
reproductible.


Comme nous le verrons au cours de ce livre, les cause d'une recherche
non-reproductible sont très nombreuses, allant des plus évidentes comme la
perte des données jusqu'au plus subtiles comme par exemple le chaos numérique
dont peu de chercheurs ont conscience. Encore une fois, nous ne parlons pas ici
de malhonneteté scientifique mais bien méconnaissance ou de mauvaises pratiques
qui viennent compromettre la possibilité même de reproduire des résultats. Ces
mauvaises pratiques peuvent par ailleurs venir s'accumuler et constituer une
dette technique insurmontable qui peut à terme condamner le laboratoire. Nous
verrons au travers de situations fictives mais réalistes qu'il y a à l'origine
des problèmes de reproductibilité un ensemble de concepts fondamentaux qu'il
est nécessaire de connaître sans toutefois les maîtriser totalement. La
recherche reproductible n'est pas un processus de type tout-ou-rien. Il existe
des premières étapes très simples que tout un chacun peut mettre en oeuvre dès
aujourd'hui alors que d'autres demanderont un peu plus de temps et
d'énergie. 


## Ce que ne traite pas cet ouvrage
Les actions à mener pour rendre la recherche reproductible sont très nombreuses, et couvrent des champs très divers. David Randall et Christopher Welser ont publié un ouvrage en 2018 intitulé « The Irreproducibility Crisis of Modern Science - Causes, Consequences, and the Road to Reform » dans lequel sont listées quarante recommandations pour réaliser une recherche reproductible [insérer la réf ici]. Ces recommandations couvent les champs suivants : l’analyse statistique et l’interprétation des résultats, la gestion des données, les pratiques de recherche, l’enseignement des statistique, les politiques de la recherche universitaire, les associations professionnelles, les journaux scientifiques, l’***industrie scientifique*** [trouver un autre terme], la philanthropie privée, les financements publics, le système législatif et judiciaire. 
Il n’est pas question dans cet ouvrage de traiter de façon exhaustive toutes ces actions à mener. Comme nous l’avons vu ci-dessus, nous allons nous focaliser sur ***[à compléter]***. De façon plus spécifique, nous n’allons pas traiter des actions à mener pour améliorer la *qualité* de la recherche, au sens large du terme. Parmi les origines d’une recherche de mauvaise qualité qui sont liées à la « crise de la reproductibilité de la recherche » figurent celles statistiques dues au fait d’aller rechercher les résultats statistiques significatifs parmi toutes les associations statistiques testées (« p-hacking ») [Nuzzo R. Scientific method: statistical errors. Nature 2014,506:150-152.], de générer une hypothèse de recherche *a posteriori*, c’est-à-dire après avoir obtenu un résultat significatif (« harking ») [Kerr NL. HARKing: hypothesizing after the results are known. Pers Soc Psychol Rev 1998,2:196-217.], ou à la sur-interprétation  d’un résultat statistique significatif (« Probability That a Positive Report is False ») [Wacholder S, Chanock S, Garcia-Closas M, El Ghormli L, Rothman N. Assessing the probability that a positive report is false: an approach for molecular epidemiology studies. J Natl Cancer Inst 2004,96:434-442.] Nous invitons par conséquent le lecteur à se documenter par ailleurs sur ces sujets [Munafo MR, Nosek BA, Bishop DVM, Button KS, Chambers CD, Sert NPd, Simonsohn U, Wagenmakers E-J, Ware JJ, Ioannidis JPA. A manifesto for reproducible science. Nature Human Behav 2017,1:0021.]

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
