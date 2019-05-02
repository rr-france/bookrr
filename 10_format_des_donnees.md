# Formater et structurer l'information {#C-data-format}

Dans ce chapitre, nous allons traiter des formats et structures 
de fichiers numériques, bien que ces concepts aient aussi leur importance
en dehors de l'outil numérique. 


## Comment structurer mes informations ?

Les chercheurs peuvent être amenés à travailler sur des données de
nature très variée. Si on peut spontanément penser à des nombres, les 
chercheurs peuvent aussi travailler sur des images ou du texte. Le plus 
souvent, les chercheurs travaillent en fait sur une "collection" de données 
liées les unes aux autres. La relation entre ces données est essentielle. 

Par exemple, il peut être commode de rassembler des informations sur
des patients sous forme d'une "table" comportant une ligne pour chaque
individu et une colonne pour chaque type d'information (nom, âge,
sexe, nature du médicament administré, dose, taux de glycémie après 1
heure, taux de glycémie après 5 heures). Dans ce cas, le nom et le
type de chaque colonne sont souvent considérés comme des
"métadonnées". Ce n'est pas la seule façon de représenter ce type
d'information. On pourrait préférer avoir une entrée (une ligne) pour chaque
mesure (et non pour chaque patient) en ajoutant une colonne indiquant
quand la mesure a été réalisée, et une autre indiquant par qui elle a été réalisée. 

Un autre exemple de structure est celui d'un arbre généalogique. Au prime abord, 
il semblerait naturel d'utiliser une "hiérarchie", mais la vie étant faite de 
surprises (décès, divorces, re-mariages, voire mariages entre cousins, "Luke, je suis ton père", etc.), cette représentation va rapidement s'avérer inadaptée pour concevoir un arbre généalogique clair.

Un dernier exemple d'information dont la conservation est primordiale : 
il s'agit du protocole expérimental généralement consigné dans un cahier de 
laboratoire. On structure souvent cette information
de façon chronologique avec des annotations sémantiques : qui ? quand ?
où ? pourquoi ? dans quel contexte ? etc. Dans tous les cas, la question
du lien entre ce cahier et les données archivées doit être posée et
résolue.

Bref, même si une table, une hiérarchie ou un texte libre peut
sembler la solution la plus naturelle, il est vraiment important de
bien réfléchir à la façon la plus adaptée de structurer vos
informations en fonction du traitement que vous allez vouloir réaliser
car cela risque de considérablement affecter ce que vous allez pouvoir
faire de vos données.


## Quel format choisir pour enregistrer et stocker des informations ?

L'enjeu autour du format pour la recherche reproductible est double : 

 - assurer l'interopérabilité,
 - minimiser les risques d'erreur de manipulation.
 
Le chercheur doit donc avoir en tête les bonnes pratiques établies dans sa communauté et 
s'assurer que son choix de représentation permette, voire facilite,
la réutilisation de ses données et de ses résultats. Le nom des fichiers est également 
un point important du formatage et sera abordé dans le chapitre \@ref(C-versioning).


La recherche reproductible vise à limiter drastiquement les interventions manuelles dans 
le flux de production des résultats. Dans le choix d'un format d'enregistrement et de 
stockage des informations, l'objectif est de garantir la "lisibilité
par la machine". On devrait donc dire "lisible par toutes les machines" avec en tête,
les spécificités des différents systèmes d'exploitation qui peuvent devenir problématiques
pour certains formats. 

On distingue 3 grands types de formats :

 - les formats fermés/propriétaires pour lesquels le risque de perte de
 lisibilité n'est pas maîtrisé par l'utilisateur, et qui nécessitent que
 d'autres disposent également du logiciel nécessaire (parfois coûteux) pour
 pouvoir réutiliser les données.
  
 - les formats codés, illisibles par l'humain, tels que les formats binaires ou de
 description de page tel que le PDF, qui nécessitent une étape de décodage, et
 qui peuvent parfois mal supporter la transition entre les systèmes
 d'exploitation et les architectures matérielles.
 
 - les formats texte (tels que .csv pour les tableaux) qui sont lisibles par les
 humains comme par les machines, très interopérables, et dont les
 modifications peuvent être enregistrées par les outils de suivi de version
 (voir le chapitre \@ref(C-versioning)).

Par exemple, pour des tables de données simples, mieux vaut privilégier les formats .csv 
ou .tsv plutôt que les versions plus ou moins propriétaires ou spécifiques à un tableur 
(.dot, .xls, .xslx, ...) qui peuvent parfois contenir des informations très difficiles 
à lire pour la machine (cellules colorées, cellules fusionnées, etc.).

Dans la mesure du possible, nous préconisons de privilégier les
formats texte lisibles à la fois par l'humain et par la machine et
d'éviter les formats propriétaires et codés. Toutefois, ce n'est pas toujours
possible. Dans ce cas, il est préférable d'utiliser les standards de sa
communauté plutôt que des formats exotiques.

Pour des données plus complexes, hétérogènes, de type hiérarchique, des formats
adaptés, ouverts, et interopérables existent comme par exemple .yml, .json, ou .xml
pour des formats textes et .hdf5 ou .fits ou pour des formats binaires.


## La présentation des résultats numériques

Lors du stockage de données numériques, il est primordial d'éviter la perte ou l'érosion 
de l'information. Ceci implique, outre une documentation exhaustive précisant
les unités et la provenance des résultats, de gérer correctement leur représentation 
numérique. [@wilkinsonFAIRGuidingPrinciples2016]

### Nombre de chiffres significatifs

Les calculs numériques sont effectués avec une précision finie, et il faut donc 
choisir du nombre de chiffres significatifs à reporter dans une table de données ou de 
résultats. Il est tentant, dans un fichier de résultats, d'inclure tous les chiffres 
significatifs dont on dispose. Mais cela n'est pas necessairement souhaitable (cela peut conduire 
à une inflation inutile des tailles de fichiers), d'autant plus que ce n'est pas nécessairement la précision
dont on dispose réellement (par exemple, R n'affiche pas tous ses chiffres significatifs avec 
sa commande `print()`). 


### Incertitude

Les informations devraient idéalement toujours être accompagnées d'une incertitude. Cela 
s'applique à la fois aux mesures (qu'elles soient physiques ou virtuelles), ainsi qu'aux 
résultats d'analyse (par exemple des estimations) [@bureauinternationaldespoidsetdesmesuresEvaluationDonneesMesure].

L'incertitude peut servir de guide pour choisir le nombre de chiffres significatifs. Par exemple la recommandation en métrologie 
[@bureauinternationaldespoidsetdesmesuresEvaluationDonneesMesure] est d'arrondir (par excès) l'incertitude à 
deux chiffres significatifs, et de reporter le résultat au même niveau décimal. Par exemple, 
si le résultat de mesure vaut 1.23456789 et l'incertitude vaut 0.00456, on reportera 1.2346 
avec une incertitude de 0.0046. En outre, on évitera dans un tableau les notations du type 
1.2346(46) ou 1.2346 ± 0.0046, qui peuvent fragiliser la lecture automatique par une machine.

Une attention particulière doit être portée à certains objets afin de respecter leurs propriétés
intrinsèques. Par exemple, les éléments d'une matrice de variance/covariance doivent être
arrondis de manière à s'assurer que celle-ci reste définie-positive (en exigeant par exemple 
que la plus petite valeur propre de la matrice garde deux chiffres significatifs). 
Voir "Definition" (3.21)[@bureauinternationaldespoidsetdesmesuresEvaluationMeasurementData]



## Pour en savoir plus

En ce qui concerne la structuration des données, une approche assez
populaire consiste à utiliser le plus possible une structure de tableau. Nous vous recommandons de lire ce document sur le sujet :
tidy data [@wickhamTidyData2014]

