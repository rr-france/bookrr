# Format 

L'enjeu autour du format pour la recherche reproductible est double : 

 - assurer l'interopérabilité
 - minimiser les risques d'erreur de manipulation
 
Il est particulièrement sensible pour les données, mais joue également un rôle 
pour les codes et les résultats produits.
 
Dans ce chapitre nous allons traiter principalement des formats de fichiers numérique,
bien que le format ait sont importance y compris en dehors de l'outils numérique.
En outre, le  noms des fichiers est également un point important du formattage, et
sera abordé dans le chapitre \@ref(C:versionning).


## Quel format choisir pour enregistrer et stocker des informations ?

La recherche reproductible est largement basée sur une minimisation des interventions 
manuelles dans le flot de production des résultats. L'objectif dans ce choix d'un 
format d'enregistrement et de stockage des informations est de garantir la "lisibilité
par la machine". On devrait donc dire "lisible par toutes les machines" avec  en tête
les spécificités des différents système d'exploitation qui peuvent devenir problématiques
pour certains formats. 

On distingue 3 grand types de formats :

 - les formats fermés/propriétaires pour lesquels le risque de perte de lisibilité 
 n'est pas maîtrisé par l'utilisateur, et qui nécessitent que d'autres disposent 
 également du logiciel nécessaire (parfois couteux) pour pouvoir réutiliser les données.
  
 - les formats illisible par l'humain (tel que les formats binaires ou de description de 
 page tel que le pdf) qui nécessitent une étape de décodage, et qui peuvent parfois mal 
 supporter la transition entre les systèmes d'exploitation et les architectures matérielles. 
 
 - les formats texte (tels que .csv) qui sont lisibles par les humains comme par les 
 machines, qui sont très interopérables, et qui dont les modifications peuvent être 
 enregistrées par les outils de suivi de version (voir le chapitre 13 " outils de gestion 
 de versions ")

Par exemple, pour des tables de données simples, les formats .csv ou .tsv sont recommandé, 
plutôt que les versions plus ou moins propriétaires ou spécifiques à un tableur (.dot, .xsl, 
.xslx, ...) qui peuvent parfois contenir des informations très difficile à lire pour la machine
(cellules colorées, cellules fusionnées, etc).

Dans la mesure du possible, les bonnes pratiques sont de privilégier ces formats textes qui sont 
lisibles à la fois par l'humain et par la machine, et d'éviter les formats propriétaires et codé.
Ce n'est cependant pas toujours possible. Dans ce cas, il est préférable d'utiliser les standards
de sa communauté plutôt que des formats exotiques.

Pour des données plus complexes, de type hiérarchique, des formats adaptés, 
ouverts, et interopérable existe (comme par exemple hdf5 ou xml). [REF *AL* ou *NR*]


## Pour en savoir plus
[*SG*] tidy data [Ref Wickham, Hadley. "Tidy data". *Journal of Statistical Software* 59(10) (2014): 1-23]


# redondance avec collecte ?

## La présentation des résultats numériques

Lors du stockage de données numériques il est primordial d'éviter la perte ou l'érosion 
de l'information. Ceci implique, outre une documentation exhaustive précisant
les unités et la provenance des résultats, de gérer correctement leur représentation 
numérique. [*SG*] [REF Wilkinson, M. D. et al. The FAIR Guiding Principles for scientific
data management and stewardship. Sci. Data 3:160018 doi:
10.1038/sdata.2016.18 (2016).]

### Nombre de chiffres significatifs

Les calculs numériques sont effectués avec une précision arbitraire, et il faut donc 
choisir du nombre de chiffres significatifs à reporter dans une table de données ou de 
résultats. Il est tentant, dans un fichier de résultat d'inclure tous les chiffres 
significatifs dont on dispose, mais cela n'est ni necessairement souhaitable (peut conduire 
à une inflation inutile des tailles de fichiers) ni nécessairement la précision réelle
dont on dispose (par exemple, R n'affiche pas tous ses chiffres significatifs avec 
sa commande `print()`). 


### Incertitude

Les informations devrait idéalement toujours être accompagnés d'une incertitude. Cela 
s'applique à la fois aux mesures, (qu'elles soient physiques ou virtuelles), ainsi qu'aux 
résultats d'analyse (par exemple des estimations) [@GUM].

Par exemple la recommendation en métrologie est d'arrondir (par excès) l'incertitude à 
deux chiffres significatifs, et de reporter le résultat au même niveau décimal. Par exemple, 
si le résultat de mesure vaut 1.23456789 et l'incertitude vaut 0.00456, on reportera 1.2346 
avec une incertitude de 0.0046. On évitera dans un tableau les notations du type $1.2346(46)$ 
ou $1.2346 \pm 0.0046$, qui peuvent fragiliser la lecture automatique par une machine.

Une attention particulière doit être porter à certains objets afin de respecter leurs propriétés
intrinsèques. Par exemple, les éléments d'une matrice de variance/covariance doivent être
arrondis de manière à s'assurer que celle-ci reste définies positives (en exigeant par exemple 
que la plus petite valeur propre de la matrice garde deux chiffres significatifs) [*SG*] 
[REF Evaluation of measurement data – Supplement 2 to the "Guide to the expression of 
uncertainty in measurement" – Extension to any number of output quantities JCGM 102:2011, Definition 3.21  
(https://www.bipm.org/utils/common/documents/jcgm/JCGM_102_2011_E.pdf)]


## Résumé 

Le chercheur doit donc avoir en tête les bonnes pratiques établies dans sa communauté, et 
tenter de s'assurer que son choix de représentation permette (voire facilite)
la réutilisation de ses données et de ses résultats.


## Pour en savoir plus

TODO ??
