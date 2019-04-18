# Outils de gestion de versions

La sauvegarde des étapes successives du développement de documents
(textes, bases de données, codes, etc.) est une des briques fondamentales
de la recherche reproductible. Elle permet en effet de retrouver
ou de reconstituer facilement des versions spécifiques et datées des documents.
La mise en œuvre va de la simple sauvegarde de versions des fichiers,
à des sauvegardes différentielles n'enregistrant que les modifications.

La mise en œuvre d'une stratégie de gestion de version doit permettre
d'éviter les cauchemars du type " Je ne retrouve pas mon code / mes
données " et permet de répondre aux questions :

 - Quand ?
 - Qui ?
 - Pourquoi ?

## Versionnage par nommage de fichiers

Au cours des modifications d'un document, les étapes importantes
devraient être sauvées explicitement. Cette approche nécessite des
règles de nommage de fichiers évitant les ambiguïtés et facilitant
l'exploration des versions. 

Dans ce contexte, il est souvent recommandé de créer un nom de fichier constitué de plusieurs
éléments *SG* [@REF: (http://qualite-en-recherche.cnrs.fr/spip.php?article315)] [@REF JennyBrian]:

* la date de sauvegarde, sous format AAAAMMJJ ou AAAA_MM_JJ
(permettant un tri des dates par ordre alphabétique)

* le titre du fichier, évitant les mots " vides " (article défini, indéfini, etc.)

* un numéro de version du document qui sera incrémenté aux étapes
remarquables de l'évolution du document (v01, v02...)

Ces informations sont une forme appauvrie de métadonnées que l'on
indique directement dans le nom du fichier lorsque le format de
données ou le système de fichiers utilisé ne permet pas de les
conserver de façon pérenne. Cette information est assez rudimentaire : dans le cas où plusieurs personnes ont travaillé sur un même
fichier, on a du mal à savoir qui a fait quoi et pourquoi.

Pour des raisons de compatibilité, il est également recommandé d'éviter l'utilisation de :
- signes diacritiques : accents, trémas, cédilles par exemple, 
- de caractères spéciaux
- d'espaces

La longueur du titre ne devrait pas dépasser 31 caractères, extension comprise. 

Conserver ces métadonnées appauvries mais importantes de cette façon est une bonne habitude à prendre, mais il s'agit d'une approche
assez limitée.

### Exemple {-}

La chronologie du nommage de fichiers successifs de scripts R pourrait être:

* 20190417_analyse_donnees_v00.R

* 20190417_analyse_donnees_v01.R

* 20190509_analyse_donnees_v02.R



## Versionnage différentiel

Le stockage des versions successives de fichiers entraîne un gaspillage
d'espace de stockage, et peut devenir très incommode pour la gestion de
projets comportant de nombreux fichiers évoluant à des vitesses différentes.
Il est en général plus efficace de passer par un logiciel de gestion de versions 
qui gère automatiquement le stockage de versions différentielles des
fichiers, les métadonnées de type " qui, quoi, quand, pourquoi ",
et permet de figer des versions du projet à des étapes cruciales du développement.

Ces outils peuvent être intégrés à des logiciels (éditeurs de texte, de code, d'images, etc.)
ou se présenter comme des solutions autonomes (Git, Subversion, SVN, etc.), avec
des interfaces en ligne de commande ou des interfaces graphiques.

Si un logiciel de gestion de versions est installé sur l'ordinateur de l'utilisateur,
il est prudent, voire impératif, de mettre en œuvre une synchronisation vers
un dépôt distant, qui peut être sur une plateforme institutionnelle
*SG* (par exemple le [GitLab de
l'Inria](https://gitlab.inria.fr/learninglab/mooc-rr/mooc-rr-ressources/gitlab)
ou de [l'IN2P3](https://gitlab.in2p3.fr/CTA-LAPP/HiPeCTA) ou encore un
plateforme privée comme [GitHub](https://github.com/)). En outre, ces
plateformes permettent le travail collaboratif sur un projet ou de mettre le projet à disposition 
du public dans des versions bien définies des documents. 
(sabrina : à repdre)
Pour que la recherche soit reproductible, le lecteur devrait systématiquement disposer du lien vers la version des données ou des codes informatiques utilisés dans un article. Pour cela, il est conseillé d'activer en plus un archivage pérenne des 
versions importantes du projet sur un dépôt fournissant un identifiant pérenne. Ce sujet sera abordé dans le Chapitre \@ref(partage-archivage). Dans tous les cas, avant de choisir une
solution, il est essentiel de se renseigner sur les pratiques en cours dans votre
communauté de recherche.

### Exemple {-}

Voici un témoignage d'un chercheur dont la pratique quotidienne permet
d'obtenir aisément une recherche reproductible:

> Lors de l'élaboration de mes analyses statistiques, je développe des
> codes en R pour traiter les données, générer des tableaux de
> résultats en LaTeX et des figures en png. En parallèle, je rédige
> l'article en LaTeX.
> 
> Tous les codes et l'article sont suivis dans un gestionnaire de
> versions local (j'utilise git). Les tableaux et les figures sont des
> résultats secondaires que je peux regénérer facilement. À chaque
> étape de modification d'un document, j'effectue un "commit" qui met
> à jour la base de version locale. Après un certain nombres de
> "commit", je me synchronise avec le dépôt distant en y propageant
> mes modifications locales, m'assurant ainsi d'une sauvegarde
> régulière. Réaliser régulièrement ces opérations est l'occasion pour
> moi de bien réfléchir à ce que je fais, de vérifier que j'ai bien
> sauvegardé tout ce qu'il fallait, et d'en profiter pour expliquer
> dans les messages de commits ce que je fais.
> 
> Lorsque je soumets l'article, je fige une version du projet, et je
> l'archive sur un dépôt pérenne pour obtenir un identifiant (DOI) que
> j'insère dans la section "Supplementary Materials" de l'article.
> Ainsi, les relecteurs peuvent s'assurer de la reproductibilité de mon
> étude et j'ai la garantie de disposer de la bonne version des
> fichiers s'ils me demandent des modifications, même si j'ai continué
> à développer mes codes en attendant leur retour.

Pour en savoir davantage sur la gestion de versions, vous pouvez vous
rapporter au module 1 du [MOOC sur la recherche
reproductible](https://learninglab.inria.fr/mooc-recherche-reproductible-principes-methodologiques-pour-une-science-transparente/)
qui vous permettra de vous familiariser avec GitLab via une mise en
condition réelle. 

GitLab et GitHub sont des sur-couches Web au logiciel Git qui
permettent une utilisation simplifiée mais ne donnent pas accès à
l'ensemble de ses fonctionnalités. Les éditeurs comme Rstudio
proposent une très bonne intégration via une interface graphique des
interactions avec Git. Il est également possible d'utiliser la ligne de
commandes pour bénéficier de toutes les fonctionnalités de Git.

Voici quelques moyens d'apprendre à utiliser Git et d'aller un peu
plus loin :
- Le [[http://swcarpentry.github.io/git-novice/][Software Carpentry Git tutorial]]
- Le livre Pro Git (gratuit) en [[https://git-scm.com/book/en/v2][englais]] ou en [[https://git-scm.com/book/fr/v2][français]]. Les deux
  premiers chapitres suffisent pour bien commencer. 
- Le site [[https://learngitbranching.js.org/][Apprenez Git Branching]] permet d'apprendre Git
  interactivement et de comprendre les branches. 

> FIXME: Puisqu'on en parle, ref Git Rstudio ?
