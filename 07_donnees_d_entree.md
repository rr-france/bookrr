# Données d'entrée ???

La perte de données à différents niveaux d'un processus 
de recherche est une cause majeure de non-reproductibilité.
Cela peut aller du simple accident (crash de disque) aggravé
par une négligence (absence de sauvegarde récente), 
à l'ignorance des règles de documentation.

Nous considérons ci-dessous quelques cas de figure typiques.

## Perte d'information et de précision

Stocker des données numériques sans en préciser les unités
est une invitation à la catastrophe, notamment pour un tiers
désirant les réutiliser. 
On se remémorera la désintégration de la sonde "Mars Climate orbiter" 
en 1999, à cause d'une bête conversion de livres en newtons.

L'absence de provenance, par exemple de référence bibliographique
pour des données collectées dans la littérature, est la source
d'un manque de traçabilité qui nuit à la reproductibilité.

## Perte des données 

L'absence de sauvegarde des données est une négligence professionnelle.
Etre incapable de retrouver/fournir les données associées à une étude
est une situation potentiellement dommageable, notamment à la réputation
du responsable de l'étude, si des doutes sont émis a posteriori sur la 
validité de ces données. 

Dans le cas de résultats de simulations, les temps de calcul peuvent être
tellement énormes que ces données doivent être considérées comme
irreproductibles en pratique et traitées comme des données primaires.

Même des données archivées sur le site web d'un chercheur peuvent
devenir inaccessibles à la communauté du jour au lendemain,
par exemple si l'institution hébergeante refond son site web
sans prendre garde à assurer la pérennité des urls 
([URL decay](https://www.spinellis.gr/sw/url-decay/)).

## Que faire ?

Un archivage pérenne des données de la recherche avec les métadonnées
pertinentes sur des serveurs institutionnels ou publics est la
meilleur façon de se prémunir contre la perte de données 
(cf. Chap. "Outils de gestion de version / Archivage").
