# Environnement logiciel

***Attention : ce chapitre aborde des sujets relativement techniques. Nous avons vu précédemment qu'il existe de nombreuses solutions pour une recherche plus reproductible avant d'aborder la question de complexe de l'environnement (qui a néanmoins son importance).***

L'environnement logiciel désigne l'ensemble exhaustif des logiciels assurant la 
gestion de l'ordinateur et mis à contribution pour réaliser la recherche. 
Les chercheurs ont souvent tendance à sous-estimer l'impact de l'environnement 
logiciel sur leur résultats. Pour une recherche reproductible, il existe trois
enjeux important autour de l'environnemnt logiciel:

1. identifier et décrire son environnement
2. permettre à quelqu'un d'autre d'utiliser un environnement **exactement identique**
3. construire une variation de cet environnement

En résumé, s'il n'existe pas de solution simple à ces différents problèmes [*BHM* : quels "problèmes" ? portion de phrase difficile à comprendre avec le "si"],
ce chapitre nous présente différentes solutions ayant chacune leurs
limites, et plus ou moins adaptées aux besoins et capacités de chacun.

## Identifier les dépendances

La façon la plus simple de décrire son environnement logiciel est d'identifier les dépendances de son environnement. Mais cette simplicité 
apparente, c'est l'arbre qui cache la forêt : chaque dépendance ayant 
elle-même une dépendance, et ainsi de suite... Cette tâche peut donc 
rapidement devenir difficile. On peut distinguer deux façons d'obtenir
une telle identification :

1. À partir d'un language interprété (tel que R ou Python), on peut
effectuer cette " intro-spection " et lister les différentes la liste 
des bibliothèques chargées avec leur numéro de version[^en R, on peut 
par exemple utiliser la commande `sessionInfo()` (ou encore 
`devtools::session_info()`]. Mais cette méthode, bien que relativement
simple, un peu limitée et assez peu précise, ne signale que quelques
unes des dépendances système de plus bas niveau. Elle correspond à
la zone verte dans le schéma ci-dessous. Cependant, il est très 
facile d'inclure ces informations descriptives dans vos documents 
computationnels (cf. chapitre précédent [*BHM* : chap. 16, c'est bien ça ?]), et nous vous recommandons cette 
bonne pratique.

2. En utilisant le gestionnaire de paquets du système d'exploitation, 
on obtient la liste exhaustive de l'ensemble de toutes les applications
installées (listant donc des applications non pertinentes pour la 
recherche ainsi que les doublons de versions successives). Elle 
correspond à l'ensemble du schéma ci-dessous (donc à tout le système 
d'exploitation).

![Schéma des différents environnements logiciel](img/schemaEnvirLogi2.png)

Cette identification des dépendances [*BHM* : modif à confirmer] est donc soit trop partielle et pas assez précise (façon n°1 ci-dessus),
ou au contraire trop étendue (façon n°2 ci-dessus). Il existe cependant un continuum de façon d'identifier ces dépendances
entre ces deux extrêmes, mais nous n'entrerons pas ici dans les détails (vous trouverez ces autres façons moins extrêmes ici : ***X*** [*BHM*]). En outre, cette identification est en réalité très délicate 
à reproduire pour permettre à un autre chercheur de reproduire l'environnement 
correspondant (une tache manuelle beaucoup trop fastidieuse), n'étant pas 
standardisée entre systèmes d'exploitation. Il s'agit donc d'une solution 
informative sur son environnement, mais qui ne permet pas réellement de 
reproduire ce dernier en pratique.


### Pour en savoir plus 
Pour vous former un peu plus, vous pouvez vouloir vous rapporter au
module 4 du [MOOC sur la recherche
reproductible](https://learninglab.inria.fr/mooc-recherche-reproductible-principes-methodologiques-pour-une-science-transparente/)
et aux ressources correspondantes
([slides](https://gitlab.inria.fr/learninglab/mooc-rr/mooc-rr-ressources/blob/master/module4/slides/C028AL_slides_module4-fr-gz.pdf),
[ressources](https://gitlab.inria.fr/learninglab/mooc-rr/mooc-rr-ressources/blob/master/module4/ressources/resources_environment_fr.org)).

## Préserver le désordre (*a.k.a. Preserve the mess*)

L'identification des dépendances permet de décrire son environnement,
mais ne permet que très difficilement de le conserver ou le partager 
en pratique. Une façon de s'assurer de pouvoir conserver et 
partager un environnement logiciel à l'identique est de figer l'ensemble du système. 

### Isoler une machine

La façon la plus simple pour éviter ces problèmes de versions de
logiciels [*BHM* : "environnement logiciel", plutôt ?] et ne pas se poser trop de question, consiste à installer
une bonne fois pour toute les programmes dont on a besoin sur une
machine et à s'interdire de la mettre à jour. 

C'est le cas de figure décrit en section \@ref{#1:personna:ingenieur}. 
Chacun des membres de l'équipe peut alors se connecter sur cette machine 
pour y faire ses calculs (ce qui peut d'ailleurs parfois être source de disputes). Sur le long terme, isoler une machine peut s'avérer problématique car si la machine continue (normalement) 
de calculer la même chose, elle conserve ses vieux bugs qui peuvent 
affecter vos résultats. D'autre part, elle finira un jour par mourir 
de sa belle mort, et s'exposera entre-temps à des failles de sécurité. 
C'est donc certainement la solution la plus simple à mettre en œuvre 
(au début), mais c'est une solution à éviter autant que possible.


### Isoler un environnement à l'aide d'un container

Un container est un outil permettant d'émuler un système d'exploitation
particulier avec un certain nombres d'applications installées. Il a 
l'avantage, par rapport à une machine virtuelle, de ne pas reproduire 
l'ensemble du système d'exploitation (en se passant du kernel), mais 
a le désavantage de ne pas fonctionner pour toutes les combinaisons
de machine réelle - machine virtuelle. Une solution très populaire pour 
utiliser les containers est [Docker](https://www.docker.com/).

Il existe d'ailleurs des outils permettant d'identifier et capturer automatiquement 
un tel environnement logiciel minimum pour pouvoir le partager avec d'autres: [CDE](http://www.pgbovine.net/cde.html) ou [ReproZip](https://vida-nyu.github.io/reprozip/). Ces approches 
automatiques sont efficaces et très pratiques mais peuvent passer à côté de
certaines dépendances et ne permettent pas de variation. En effet, on obtient un
environnement "binaire" figé sans sa recette de construction, et il devient donc très difficile de
de changer une bibliothèque particulière ou de le faire évoluer.

## Les systèmes de gestion de paquets

L'approche la plus aboutie pour la reproduction de l'environnement logiciel 
s'appuie sur les systèmes de gestions de paquets fonctionnels tels que et [GUIX](https://www.gnu.org/software/guix/) et [NIX](https://nixos.org/). Il s'agit d'outils permettant de décrire et d'isoler très précisement 
l'environnement strictement [*BHM* : à confirmer] nécessaire pour la recherche reproductible, de le partager 
avec d'autres pour qu'ils puissent le mettre en oeuvre, et même d'y 
apporter des modifications très précisément contrôlées afin d'évaluer l'impact
de tel ou tel changement.

