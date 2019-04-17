# Environnement logiciel

***Attention : ce chapitre aborde des sujets relativement techniques, et il eiste de nombreuses solutions pour une recherche plus reproductible avant d'aborder la question de complexe de l'environnement (qui a néanmoins son importance)***

L'environnement désigne l'ensemble exhaustif des logiciels assurant la 
gestion de l'ordinateur et mis à contribution pour réaliser la recherche. 
Les chercheurs ont souvent tendance à sous-estimer l'impact de l'environnement 
logiciel sur leur résultats. Pour une recherche reproductible, il existe trois
enjeux important autour de l'environnemnt logiciel:

1. identifier et décrire son environnement
2. permettre à quelqu'un d'autre d'utiliser un environnement **exactement identique**
3. construire une variation de cet environnement

En résumé, s'il n'existe pas de solution simple à ces différents problèmes,
ce chapitre nous présentes différentes solutions ayant chacune leurs
limitations, et plus ou moins adaptées aux besoins et capacités de chacun.

## Identifier les dépendances

La façon la plus simple de décrire son environnement est d'identifier et 
de lister les dépendances de son environnement. Mais cette simplicité 
apparente, c'est l'arbre qui cache la forêt : chaque dépendance ayant 
elle-même une dépendance, et ainsi de suite... Cette tâche peut donc 
rapidement devenir difficile. On peut distinguer deux façons d'obtenir
une telle liste :

1. À partir d'un language interprété (tel que R ou python) on peut
effectuer cette " intro-spection " et lister les différentes la liste 
des bibilothèques chargées avec leur numéro de version[^en R, on peut 
par exemple utiliser la commande `sessionInfo()` (ou encore 
`devtools::session_info()`]. Mais cette méthode, bien que relativement
simple, un peu limitée et assez peu précise, ne signalant que quelques
unes des dépendances systèmes de plus bas niveau. Il est néanmins très 
facile d'inclure ces informations dans vos documents computationnels 
(chapitre précédent) et nous vous recommandons cette bonne pratique.

2. En utilisant le gestionnaire de paquets du système d'exploitation 
on obtient la liste exhaustive de l'ensemble de toutes les applications
installées (listant donc des applications non pertinente pour la 
recherche ainsi que les doublons de versions successives).

Cette description est donc soit trop partielle et pas assez précise,
ou au contraire trop étendue (et il existe d'ailleurs un continuum 
entre ces deux extrêmes). En outre, elle est en réalité très délicate 
à reproduire pour permettre à un autre chercheur de reproduire l'environnement 
correspondant (une tache manuelle beaucoup trop fastidieuse), n'étant pas 
standardisée entre systèmes d'exploitation. Il s'agit donc d'une solution 
informative sur son environnement mais qui ne permet pas réellement de 
reproduire ce dernier en pratique.


## Pour en savoir plus 
Pour vous former un peu plus, vous pouvez vouloir vous rapporter au
module 4 sur [MOOC sur la recherche
reproductible](https://learninglab.inria.fr/mooc-recherche-reproductible-principes-methodologiques-pour-une-science-transparente/)
et aux ressources correspondantes
([slides](https://gitlab.inria.fr/learninglab/mooc-rr/mooc-rr-ressources/blob/master/module4/slides/C028AL_slides_module4-fr-gz.pdf),
[ressources](https://gitlab.inria.fr/learninglab/mooc-rr/mooc-rr-ressources/blob/master/module4/ressources/resources_environment_fr.org)).

## Préserver le désordre (*a.k.a. Preserve the mess*)

Une façon de s'assurer de pouvoir conserver un environnement à 
l'identique est de figer l'ensemble du système. 

### Isoler une machine

La façon la plus simple pour éviter ces problèmes de versions de
logiciels et ne pas se poser trop de question, consiste à installer
une bonne fois pour toute les programmes dont on a besoin sur une
machine et à s'interdire de la mettre à jour. 

C'est le cas de figure décrit en section \@ref{#1:personna:ingenieur}. 
Chacun des membres de l'équipe peut alors se connecter sur cette machine 
pour y faire ses calculs (ce qui peut d'ailleurs parfois être source de disputes).
Sur le long terme c'est problématique car si la machine continue (normalement) 
de calculer la même chose, elle conserve ses vieux bugs qui peuvent 
affecter vos résultats. D'autre part, elle finira un jour par mourir 
de sa belle mort, et s'expose entre-temps à des failles de sécurité. 
C'est donc certainement la solution la plus simple à mettre en œuvre 
(au début) mais c'est une solution à éviter tant que possible.


### Isoler un environnement à l'aide d'un container

Un container est un outil permettant d'émuler un système d'exploitation
particulier avec un certain nombres d'applications installées.


### Des outils pour figer et partage un environnement {3:environnement:care-cde}

- Capture automatique de l'environnement
- [CDE](http://www.pgbovine.net/cde.html][CDE], [ReproZip](https://vida-nyu.github.io/reprozip/)

## Les systèmes de gestion de paquets

NIX et GUIX

