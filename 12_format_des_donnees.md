# Format 

L'enjeu autour du format pour la recherche reproductible est double : 

 - assurer l'interopérabilité
 - minimiser les risques d'erreur de manipulation
 
Il est particulièrement sensible pour les données, mais joue également un rôle 
pour les codes et les résultats produits.
 
Dans ce chapitre nous allons traiter principalement des formats de fichiers numérique,
bien que le format ait soit importance y compris en dehors de l'outils numérique.

TODO noms des fichiers, comme nous le verrons par la suite [Chap. 13]


## Quel format choisir pour enregistrer et stocker des informations ?

La recherche reproductible est largement basée sur une minimisation des interventions 
manuelles dans le flot de production des résultats. L'objectif dans ce choix d'un 
format d'enregistrement et de stockage des informations est de garantir la "lisibilité
par la machine". On devrait donc dire "lisible par toutes les machines" avec  en tête
les spécificités des différents système d'exploitation qui peuvent devenir problématiques
pour certains formats. 

On distingue 3 grand types de formats :

 - les formats fermés/propriétaires pour lesquels le risque de perte de lisibilité 
 n'est pas maîtrisé par l'utilisateur et qui nécessite que d'autres dispose du logiciel
 nécessaire (parfois couteux) pour pour réutiliser les données.
  
 - les formats illisible par l'humain (tel que les formats binaires ou de description de 
 page tel que le pdf) qui nécessitent une étape de décodage, et qui peuvent parfois mal 
 supporter la transition entre les systèmes d'exploitation et les architectures matérielles. 
 
 - les formats texte (tels que .csv)

Par exemple, pour des tables de données simples, le format .csv est recommandé, et on évitera les versions plus ou moins 
propriétaires ou spécifiques à un tableur (.dot, .xsl, .xslx...).

À noté que certains formats de fichier prévus à cet effet permettent l'archivage en binaire de manière transparente (hdf5).



TODO Pour des données plus complexes, de type hiérarchique, des formats ouverts et adaptés doivent être envisagées (hdf5, xml).
[*NR* ou *AL*]


# redondance avec collecte ?

## La présentation des résultats numériques

Lors du stockage de données numériques il est primordial 
d'éviter la perte ou l'érosion d'information afin de garantir
la réutilisabilité des données. 
Ceci implique, outre une documentation exhaustive précisant
les unités et la provenance des résultats, de gérer 
correctement leur représentation numérique. *SG*
[Wilkinson, M. D. et al. The FAIR Guiding Principles for scientific
data management and stewardship. Sci. Data 3:160018 doi:
10.1038/sdata.2016.18 (2016).]

**Nombre de chiffres significatifs et incertitudes**
Cela concerne en particulier le choix du nombre de chiffres
significatifs à reporter dans une table de données.

Il est tentant, dans un fichier de données d'inclure tous 
les chiffres significatifs donnés par le logiciel, mais
cela peut conduire à une inflation inutile des tailles de 
fichiers, diminuant l'efficacité énergétique du projet.

Les résultats de mesure, physique ou virtuelle, devraient
idéalement être accompagnés d'une incertitude [@GUM].
Dans ce cas, la recommendation en métrologie est d'arrondir
(par excès) l'incertitude à deux chiffres significatifs,
et de reporter le résultat au même niveau décimal.
Par exemple, si le résultat de mesure vaut 1.23456789 et
l'incertitude vaut 0.00456, on reportera 1.2346 
avec une incertitude de 0.0046. On évitera dans un tableau
les notations du type 1.2346(46) ou 1.2346 ± 0.0046,
qui peuvent fragiliser la lecture automatique.

Une exception à cette règle concerne les matrices de 
variance/covariance dont les éléments doivent être
arrondis de manière à assurer qu'elles restent définies 
positives, en exigeant par exemple que la plus petite
valeur propre de la matrice garde deux chiffres 
significatifs? [Evaluation of measurement data – 
Supplement 2 to the "Guide to the expression of 
uncertainty in measurement" – Extension to any number 
of output quantities JCGM 102:2011, Definition 3.21  
(https://www.bipm.org/utils/common/documents/jcgm/JCGM_102_2011_E.pdf)]

Idéalement, l'auteur du jeu de données devrait se conformer
aux pratiques établies de sa communauté, et sinon, s'assurer
que son choix de représentation n'affecte pas les résultats
pour un scénario plausible de réutilisation des données.


## Pour en savoir plus


