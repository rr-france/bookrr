# Gestion des données {#B-data-input}

La perte de données à tous les niveaux d'un processus de recherche est une
cause majeure de non reproductibilité. Cela peut aller du simple accident matériel,
comme par exemple le crash d'un disque, au problème de méthode, comme l'absence 
d'une politique de sauvegarde ou de règles élementaires de documentation (métadonnées). 


## Intégrité et curation des données

Voici un *scenario* catastrophe classique quand il est question d'intégrité des données : 
alors qu'un éditeur vous demande de mettre à disposition les données brutes 
sous peine de ne pas publier votre article pourtant accepté, les données 
associées ont été effacées ou égarées. 
Quel que soit le degré d'intégrité scientifique du chercheur, si des doutes 
sur la validité des données émergent, ne pas être en mesure de fournir les 
données constitue pour lui un handicap difficilement surmontable. 
Par ailleurs, l'absence de sauvegarde des données est considérée 
comme une négligence professionnelle.

Il existe des *scenari* encore plus insidieux où l'intégrité des données
peut être compromise sans que vous vous en rendiez compte. Par exemple :
vous recevez vos données avec une certaine précision mais vous sauvegardez ces
données avec une précision moindre. Vous serez alors confronté à une perte d'information
irréversible : une partie de l'information s'est littéralement évaporée.
De même, dans le cas de résultats produisant un déluge de données (comme par
exemple le *Large Hydron Collider*) et devant l'impossibilité de tout
sauvegarder, il faut sélectionner les données à sauvegarder, sachant que
les autres seront irrémédiablement perdues. Une mauvaise décision initiale peut
se révéler catastrophique pour peu que vous ayez besoin, à une étape ultérieure, de ces données.

Enfin, si vous ne vous êtes pas assuré du contrôle d'accès sur vos données,
quelqu'un peut venir les modifier par inadvertance et à votre insu, changeant
ainsi les conclusions de vos analyses.

## Traçabilité de la source des données 

Quand bien même l'intégrité des données aurait été assurée, l'absence
d'information descriptive sur la source des données (métadonnées) peut causer de
nombreux problèmes. Vos données sont disponibles mais impossible de comprendre ce qu'elles
représentent exactement. Par exemple : des données sont collectées dans la
littérature, mais les références bibliographiques ne sont pas mentionnées ou s'avèrent lacunaires. 
Un problème pouvant être perçu comme formel constitue en réalité un manque de traçabilité 
portant atteinte à la reproductibilité.

## Indexation des données

Lorsque vous manipulez de très larges volumes de données (en termes de nombre
d'échantillons) il devient tout à fait possible de perdre, non pas les données,
mais l'accès à ces données. Imaginez : vous avez utilisé un nommage particulier 
des fichiers pour indiquer par exemple la nature de la donnée (*well done* !) 
mais vous avez égaré le fichier expliquant les règles
de nommages (*too bad*). Alors que vous possédez l'intégralité de vos données, 
vous vous trouvez incapable les utiliser.

## Codages et unités

Lorsque vous sauvegardez des données sur un support informatique, il est
important de comprendre qu'un certain nombre de choix sont effectués de façon
automatique et sans possibilité de contrôle de votre part. Ces choix dépendent
étroitement de l'architecture matérielle de votre ordinateur. Par exemple,
en ce qui concerne la représentation des nombres en virgule flottante,
certaines machines vont lire la représentation binaire de gauche à droite alors
que d'autres le feront de droite à gauche (*endianess*). Si vous travaillez toujours
avec le même type de machine, vous n'aurez pas de problème jusqu'au jour où
vous changerez de machine et observerez alors des valeurs complètement
erratiques, vous laissant à penser que vos données auront été compromises.

Plus généralement, stocker ou transmettre des données numériques sans en préciser les unités
ni les conventions de codages associées constitue un vecteur important de risques,
notamment si un tiers désire les réutiliser. Cela fut le cas pour la
sonde "*Mars Climate Orbiter*" qui s'est désintégrée à la surface de Mars en
raison d'une communication entre un système de mesure anglo-saxon (émission) et
un système métrique (réception) [@jetpropulsionlaboratory-californiainstituteoftechnologyMarsClimateOrbiter].

## Obsolescence des données

Dans certains cas, les données ont été sauvegardées, leur intégrité est
parfaite, on peut les retrouver très facilement et pourtant, elles s'avèrent
inutilisables. Comment expliquer ce paradoxe ? 
Les données sont généralement sauvegardées dans un format pouvant être ouvert
ou fermé (propriétaire). 
Or si le format est fermé, vous ne pouvez pas contrôler l'évolution de ce format. 
Prenez par exemple un fichier Word créé il y a une vingtaine d'années, 
pouvez-vous encore le lire aujourd'hui ? 
Votre version de Word vous assure-t-elle une compatibilité avec ce
format obsolète ? Vous avez répondu par la négative à ces questions ? 
Considérez alors les données comme inutilisables. 


## Que faire ?

Privilégier des formats ouverts (chapitre \@ref(C-data-format)), 
assurer un archivage pérenne des données et leur associer des métadonnées 
pertinentes sur des serveurs institutionnels ou publics 
(chapitres \@ref(C-data-share) et \@ref(C-licences))
constitue actuellement l'une des meilleures manières de se prémunir 
contre la perte de données.

