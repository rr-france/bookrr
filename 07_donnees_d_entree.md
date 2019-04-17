# Problèmes liés aux données

La perte de données à différents niveaux d'un processus de recherche est une
cause majeure de non-reproductibilité. Cela peut aller du simple accident,
comme par exemple le crash d'un disque, aggravé par une négligence telle que
l'absence de sauvegarde récente et l'ignorance des règles élementaires de
documentation (méta-données).


## Intégrité

Perte information / perte précision / MD5 hash / Contrôle d'accès
Qui a accès aux données ? écriture / lecture ?


## Méta-données

Protocole associé, origine, date, règle de nommage, champs, etc. (voir INSEE)

L'absence de provenance, par exemple de référence bibliographique pour des
données collectées dans la littérature, est la source d'un manque de
traçabilité qui nuit à la reproductibilité.


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
erratiques, vous laissant à penser que vos données auront été compromises. De
la même façon, le fait que votre processeur soit 32, 64 ou 128 bits peut amener
à des problèmes similaire de lecture des données qui vont sembler incohérentes.

Plus généralement, stocker des données numériques sans en préciser les unités
ni les conventions de codages asociées est une invitation à la catastrophe,
notamment pour un tiers désirant les réutiliser. Cela a été le cas pour la
sonde "Mars Climate orbiter" qui s'est désintégrée à la surface de Mars en
raison d'une communication entre un système de mesure anglo-saxon (émission) et
un système métrique (réception).


## Utilisation des standards
 
 
---

Nous considérons ci-dessous quelques cas de figure typiques.

## Perte d'information et de précision

## Perte des données 

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

## Que faire ?

Un archivage pérenne des données de la recherche avec les métadonnées
pertinentes sur des serveurs institutionnels ou publics est la
meilleur façon de se prémunir contre la perte de données 
(cf. Chap. "Outils de gestion de version / Archivage").
