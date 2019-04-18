# Problèmes liés aux données

La perte de données à tous les niveaux d'un processus de recherche est une
cause majeure de non-reproductibilité. Cela peut aller du simple accident,
comme par exemple le crash d'un disque, aggravé par une négligence telle que
l'absence de sauvegarde récente et l'ignorance des règles élementaires de
documentation (méta-données).


## Intégrité

Lorsque l'on pense à l'intégrité des données, la première chose qui vient à
l'esprit est le scénario catastrophe où les données ont été effacés. Il existe
pourtant bien d'autres situations qui sont bien pires puisque l'intégrité des
vos données a été compromises sans que vous vous en rendiez compte.


Perte information / perte précision / MD5 hash / Contrôle d'accès
Qui a accès aux données ? écriture / lecture ?

L'absence de sauvegarde des données est une négligence professionnelle.  Etre
incapable de retrouver/fournir les données associées à une étude est une
situation potentiellement dommageable, notamment à la réputation du responsable
de l'étude, si des doutes sont émis a posteriori sur la validité de ces
données.

Dans le cas de résultats de simulations, les temps de calcul peuvent être
tellement énormes que ces données doivent être considérées comme
irreproductibles en pratique et traitées comme des données primaires.

Même des données archivées sur le site web d'un chercheur peuvent devenir
inaccessibles à la communauté du jour au lendemain, par exemple si
l'institution hébergeante refond son site web sans prendre garde à assurer la
pérennité des urls ([URL decay](https://www.spinellis.gr/sw/url-decay/)).


## Indexation et Méta-données

Quand bien même l'intégrité des données aurait été assuré, l'absence
d'information sur ces données (notice ou méta-données) peut-être la source de
nombreux problèmes.  Vos données sont là mais vous ne dsavez plus ce qu'elles
représentent exactement. Par exemple, pour des données collectées dans la
littérature, l'absence de la provenance des références bibliographiques est un
manque de traçabilité qui va nuire à la reproductibilité.


## Indexation

Lorsque vous manipulez de très large volume de données (en terme de nombre
d'échantillons) il devient tout à fait possible de perdre, non pas les données,
mais l'accès à ces données. Imaginez par exemple la situation où vous avez
utilisé un nommage particulier des fichiers (pour par exemple indiquer la
nature de la donnée) mais que vous ayez égaré le fichier expliquant les règles
de nommages. Vous êtes alors dans une situation tout à fait particulière où
vous possédez l'intégralité de vos données tout en étant incapable les
utiliser.


## Conventions de codages

Lorsque vous sauvegardez des données sur un support informatique, il est
important de comprendre qu'un certain nombre de choix sont effectués de façon
automatique (et sans possibilité de contrôle de votre part) et ces choix sont
intimement liés à l'architecture matérielle de votre ordinateur. Par exemple,
en ce qui concerne la représentation des nombres en virgule flottante,
certaines machine vont lire la représentation binaire de gauche à droite alors
d'autres le feront de droite à gauche (endianess). Si vous travaillez toujours
avec le même type de machine, vous n'aurez pas de problème jusqu'au jour où
vous changerez de machine et observerez alors des valeurs complètement
erratiques, vous laissant à penser que vos données auront été compromises. Plus
généralement, stocker des données numériques sans en préciser les unités ni les
conventions de codages asociées est une invitation à la catastrophe, notamment
pour un tiers désirant les réutiliser. Cela a été le cas pour la sonde "Mars
Climate orbiter" qui s'est désintégrée à la surface de Mars en raison d'une
communication entre un système de mesure anglo-saxon (émission) et un système
métrique (réception).


## Obsolescence des données
 
Les données sont généralement sauvegardées avec un format qui peut-être ouvert
ou fermé (propriétaire). Or si le format est fermé, vous n'avez aucun moyen de
contrôle sur l'évolution de ce format. Prenez par exemple un fichier Word créé
il y aune vingtaine d'années, pouvez-vous encore le lire aujourd'hui ? Est-ce
que la version de Word que vous possédez vous assure une compatibilité avec ce
vieux format? Si la réponse est négative, les données deviennent
inutilisables. Elles ont pourtant été sauvegardées, leur intégrité est
parfaite, on peut les retrouver très facilement et pourtant, elles sont
inutilisables.


---

Nous considérons ci-dessous quelques cas de figure typiques.

## Perte d'information et de précision

## Perte des données 


## Que faire ?

Un archivage pérenne des données de la recherche avec les métadonnées
pertinentes sur des serveurs institutionnels ou publics est la
meilleur façon de se prémunir contre la perte de données 
(cf. Chap. "Outils de gestion de version / Archivage").
