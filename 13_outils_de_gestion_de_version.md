# Outils de gestion de versions

La sauvegarde des étapes successives de developpement de documents
(textes, bases de données, codes...) est une des briques fondamentales
de la recherche reproductible. Elle permet en effet de retrouver
ou reconstituer facilement des versions spécifiques et datées des documents.
La mise en oeuvre va de la simple sauvegarde de versions des fichiers,
à des sauvegardes différentielles n'enregistrant que les modifications.

La mise en oeuvre d'une stratégie de gestion de version doit permettre
d'éviter les cauchemars du type "je ne retrouve pas mon code / mes données".

## Versionnage par nommage de fichiers

Au cours des modifications d'un document, des étapes importantes
devraient être sauvées explicitement. Cette approche nécessite des
règles de nommage de fichier évitant les ambiguïtés et facilitant
l'exploration des versions. 

Il est recommandé de constituer un nom de fichier de plusieurs
éléments [@REF: (http://qualite-en-recherche.cnrs.fr/spip.php?article315)]:

* la date de sauvegarde, sous format AAAAMMJJ ou AAAA_MM_JJ
(permettant un tri des dates par ordre alphabétique)

* un type de fichier qualifiant la nature du document

* le titre du fichier évitant les mots vides (articles...)

* un numéro de version du document qui sera incrémenté aux étapes
remarquables de l'évolution du document (v01, v02...)

Il est également recommandé d'éviter l'utilisation de signes diacritiques,
de caractères spéciaux et d'espaces. La longueur du titre ne devrait
pas dépasser 31 caractères, extension comprise.

### Exemple

La chronologie de développement d'un script R pourrait être:

* 20190417_analyse_donnees_v00.R

* 20190417_analyse_donnees_v01.R

* 20190509_analyse_donnees_v02.R

* ...

## Versionnage différentiel

Le stockage des versions successives de fichiers entraine un gaspillage
d'espace de stockage, et peut devenir très incommode pour la gestion de
projets comportants de nombreux fichiers évoluant à des vitesses différentes.
Il est en général plus efficace de passer par un logiciel de gestion de version 
qui gére automatiquement le stockage de versions différentielles des fichiers,
et permet de figer des versions du projet à des étapes cruciales du développement.

Ces outils peuvent être intégrés à des logiciels (éditeurs de texte, de code, d'images...)
ou se présenter comme des solutions autonomes (git, subversion, svn...), avec
des interfaces "ligne de commande" ou des interfaces graphiques.

Si le logiciel de gestion de version est installé sur l'ordinateur de l'utilisateur,
il est prudent, voire impératif, de mettre en oeuvre une synchronisation vers
un dépôt distant, qui peut être sur une plateforme institutionnelle (gitlab) 
ou sur une plateforme privée (gitHub). Ces plateformes permettent en outre
le travail collaboratif sur un projet, ou de mettre le à disposition du public
dans des versions bien définies des documents.

Pour une recherche reproductible, il devrait devenir automatique de fournir 
au lecteur un lien vers la versions des données/codes utilisés dans un article.
Pour cela, il est conseillé d'activer en plus un archivage pérenne des 
versions importantes du projet sur un dépot dournissant un identifiant 
pérenne (doi).

### Exemple

Lors de l'élaboration d'une étude statistique, je développe des codes en R
pour traiter les données, générer des tableaux de résultats en latex et
des figures en png. En parallèle, je rédige l'article en latex.

Tous les codes et l'article sont suivis dans un gestionnaire de version local
(les tableaux et figures sont des résultats secondaires que je peux 
regénérer facilement): à chaque étape de modification d'un document,
j'effectue un "commit" qui met à jour la base de version locale.
Après un certain nombres de "commit", je pousse/"push" les modifications
vers le dépôt distant, m'assurant d'une sauvegarde régulière.

Lorsque je soumets l'article, je fige une version du projet, 
et je l'archive sur le dépôt pérenne pour obtenir un doi que
j'insère dans la section "Supplementary Materials" de l'article.
Ainsi, les reviewers peuvent s'assurer de la reproductibilité
de mon étude et j'ai la garantie de disposer de la bonne version
des fichiers s'ils me demandent des modifications, même si j'ai 
continué à développer mes codes en attendant leur retour.













