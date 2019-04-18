# Environnement logiciel {#C:code:env}

***Attention : ce chapitre traite de sujets appelant des compétences techniques avancées. Nous vous proposons d'aborder la (complexe) question de l'environnement (ça pique mais ça compte).***

L'environnement logiciel désigne l'intégralité des logiciels qui assurent la 
gestion de l'ordinateur et qui sont utilisés pour réaliser la recherche. 
Les chercheurs peuvent avoir tendance à sous-estimer l'impact de l'environnement 
logiciel sur leurs résultats. Pour une recherche reproductible, il existe trois
enjeux importants autour de l'environnement logiciel :

1. identifier et décrire son environnement
2. permettre à quelqu'un d'autre d'utiliser un environnement **exactement identique**
3. construire une variation de cet environnement

Il n'existe ni solution simple, ni solution unique pour répondre à ces enjeux. Ce chapitre a pour vocation de fournir une description critique de ces solutions en évoquant notamment leurs limites respectives.

## Identifier les dépendances : dessine-moi une dépendance

La façon la ~~plus simple~~ moins complexe de décrire son environnement logiciel est d'identifier les dépendances de son environnement. Mais cette simplicité n'est qu'apparente car l'arbre cache la forêt : chaque dépendance a 
elle-même une dépendance, qui a elle-même une dépendance, et ainsi de suite... Cette tâche peut donc 
rapidement devenir difficile. On peut distinguer deux façons d'obtenir
une telle identification :

1. À partir d'un langage interprété (tel que R ou Python), on peut
effectuer cette " intro-spection " et lister les différentes dépendances, la liste 
des bibliothèques chargées avec leur numéro de version[en R, on peut 
par exemple utiliser la commande `sessionInfo()` (ou encore 
`devtools::session_info()`]. Mais cette méthode relativement
simple est surtout limitée et assez peu précise car elle ne signale que quelques
unes des dépendances système de plus bas niveau. Elle correspond à
la zone verte dans le schéma ci-dessous. Cependant, il est très 
facile d'inclure ces informations descriptives dans vos documents 
computationnels (cf. chapitre précédent 15 "rendre son code compréhensible"), et nous vous recommandons cette 
bonne pratique.

2. En utilisant le gestionnaire de paquets du système d'exploitation, 
on obtient la liste exhaustive de l'ensemble des applications
installées (listant donc des applications non pertinentes pour la 
recherche ainsi que les doublons de versions successives). Elle 
correspond à l'ensemble du schéma ci-dessous (donc à TOUT le système 
d'exploitation).

![Schéma des différents environnements logiciel](img/schemaEnvirLogi2.png)

L'identification des dépendances est donc soit lacunaire et imprécise (façon n°1 ci-dessus),
soit au contraire, illisible car trop étendue (façon n°2 ci-dessus). 

Entre ces deux extrêmes, il existe cependant un moyen d'identifier ces dépendances, notamment *via* des gestionnaires de paquets de langages interprétés tels que Packrat pour R. 

Ainsi, permettre à un collègue de travailler avec un environnement logiciel similaire au sien s'avère une tâche ardue. 
Fournir une description *ad hoc* ne peut être une opération manuelle tant cette tâche est fastidieuse. De plus, cette description ne résiterait pas à l'absence de standardisation entre systèmes d'exploitation. 
Il s'agit donc d'une solution informative sur son environnement, mais qui ne permet pas de 
le reproduire en pratique.

## Préserver le désordre (*aka "Preserve the mess"*)

L'identification des dépendances permet de décrire son environnement,
mais ne permet que très difficilement de le conserver ou le partager 
en pratique. Une façon de s'assurer de pouvoir conserver et 
partager un environnement logiciel à l'identique est de " figer " l'ensemble du système. 

### Isoler une machine

La façon la plus simple d'éviter les problèmes de versions des dépendances logicielles, consiste à installer sur une machine tous les programmes dont on a besoin. Ce *scenario* exclut toute mise à jour : l'environnement est installé une bonne fois pour toute. 

C'est le cas de figure décrit en section \@ref{#1:personna:ingenieur}. 
Chacun des membres de l'équipe peut alors se connecter sur cette machine 
pour y faire ses calculs (ce qui peut d'ailleurs parfois être source de disputes). Sur le long terme, isoler une machine s'avèrera problématique car si la machine continue (normalement) 
de calculer la même chose, elle conserve ses vieux *bugs* qui peuvent 
affecter vos résultats. D'autre part, elle finira un jour par mourir 
de sa belle mort et s'exposera entre-temps à des failles de sécurité. 
C'est donc certainement la solution la plus simple à mettre en œuvre 
(au début), mais c'est une solution à éviter autant que possible.


### Isoler un environnement à l'aide d'un conteneur

Un conteneur est un outil permettant d'émuler un système
d'exploitation particulier avec un certain nombre d'applications
installées. Une solution très populaire pour utiliser les conteneurs
est [Docker](https://www.docker.com/).

- avantage par rapport à une machine virtuelle : le conteneur ne
  reproduit pas l'ensemble du système d'exploitation (en se passant du
  kernel); Il est donc plus léger (moins gros et plus rapide).

- inconvénient : il ne fonctionne pas pour toutes les combinaisons de
  machine réelle - machine virtuelle.

Il existe d'ailleurs des outils permettant d'identifier et de capturer automatiquement 
un tel environnement logiciel minimum pour pouvoir le partager avec d'autres: *SG* [CDE](http://www.pgbovine.net/cde.html) ou [ReproZip](https://vida-nyu.github.io/reprozip/). Ces approches automatiques sont efficaces et très pratiques mais peuvent passer à côté de
certaines dépendances et ne permettent pas de variation. En effet, on obtient un
environnement " binaire " figé sans sa recette de construction, et il est donc très difficile de
de changer une bibliothèque particulière ou de faire évoluer cet environnement.

## Les systèmes de gestion de paquets

L'approche la plus aboutie pour la reproduction de l'environnement logiciel 
s'appuie sur les systèmes de gestion de paquets fonctionnels tels que *SG* [GUIX](https://www.gnu.org/software/guix/) et [NIX](https://nixos.org/). Il s'agit d'outils permettant de décrire et d'isoler très précisément 
l'environnement strictement nécessaire à la recherche reproductible, de le partager 
avec d'autres pour qu'ils puissent le mettre en œuvre, et même d'y 
apporter des modifications très précisément contrôlées afin d'évaluer l'impact
de tel ou tel changement.

## Pour en savoir plus
Au sujet de l'identification des dépendances, vous pouvez vous référer
au module 4 du *SG* [MOOC sur la recherche
reproductible](https://learninglab.inria.fr/mooc-recherche-reproductible-principes-methodologiques-pour-une-science-transparente/)
et aux ressources correspondantes
*SG*([slides](https://gitlab.inria.fr/learninglab/mooc-rr/mooc-rr-ressources/blob/master/module4/slides/C028AL_slides_module4-fr-gz.pdf),
*SG*[ressources](https://gitlab.inria.fr/learninglab/mooc-rr/mooc-rr-ressources/blob/master/module4/ressources/resources_environment_fr.org)).

Pour une présentation plus complète, vous pouvez vouloir regarder ce 
[séminaire sur ce sujet](https://github.com/alegrand/RR_webinars/blob/master/2_controling_your_environment/index.org)
