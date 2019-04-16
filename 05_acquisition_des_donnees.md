# Acquisition des données

## Absence de standardisation de la collecte des données
Dans la grande majorité des cas, la production de résultats issus d'une recherche passe par la collecte de données. Ces données sont recueillies sur des « individus » (un individu pouvant être une pièce mécanique, un être vivant, etc.). Ce que l’on entend par « données » sont les caractéristiques de chacun des individus qui font l’objet de la recherche (par exemple : la résistance à la traction d’un matériau, la concentration en glucose d’une personne atteinte d’un diabète, son âge, son poids, etc.) Un point fondamental pour s’assurer de la reproductibilité de la recherche est celui de standardiser la collecte des données. En effet, si cette collecte n’est pas standardisée, la personne qui collecte des données sur un individu un jour n°1 ne le fera potentiellement pas de la même façon le jour n°2 si elle devait le refaire. Et si elle ne le fait pas de la même façon, alors la valeur de la donnée du jour n°2 serait différente de celle du jour n°1, non pas parce que la donnée a changé au cours du temps (ce qui est possible, et éventuellement acceptable – _cf. infra_), mais parce que la méthode a changé. Ainsi, comment s’assurer d’une recherche reproductible si elle est fondée sur des données dont la valeur dépend de la façon dont est collectée la donnée, avec une façon qui n’est pas fixée pendant toute la durée de l’étude ? 

## Modification des données après une collecte originale
Un autre problème conduisant à une recherche non reproductible se produit lorsque des données recueillies sur un individu sont modifiées après une première collecte, sans que ces modifications soient tracées. Dans ce cas-là, les analyses statistiques qui seront conduites sur les données modifiées ne fourniront évidemment pas les mêmes résultats que celles conduites sur les données initiales. S’il n’y a aucun moyen de revenir aux données initiales et/ou de savoir les données qui ont été modifiées, votre recherche devient par conséquent non reproductible.

## Une collecte des données non répétable ou non reproductible

### Définition de la fidélité d’une mesure
La fidélité est l’étroitesse de l'accord entre les indications ou les valeurs mesurées obtenues par des mesurages répétés du même objet ou d'objets similaires dans des conditions spécifiées.

### Définition de répétabilité et reproductibilité d’une mesure
La répétabilité est la fidélité dans les conditions de mesures qui comprennent la même procédure de mesure, les mêmes opérateurs, le même système de mesure, les mêmes conditions de fonctionnement et le même lieu, ainsi que des mesurages répétés sur le même objet ou des objets similaires pendant une courte période de temps

### Impact d’une absence de répétabilité ou de reproductibilité dans la collecte des donnés
Si la collecte d’une donnée n’est pas répétable, l’impact est directement négatif sur la reproductibilité de votre recherche : vous n’obtiendriez pas les mêmes résultats à partir de données collectées sur des individus identiques, évalués dans les mêmes conditions par un même opérateur. Si la collecte des données n’est pas reproductible d’un opérateur à un autre, le problème de non reproductibilité de votre recherche persiste : personne d’autre que vous ne pourrait obtenir les mêmes résultats sur des individus identiques évalués dans les mêmes conditions.

## Collecte des données à plusieurs
Supposons que vous ne soyez pas la seule ou le seul à collecter les données pour votre étude. Deux questions se posent. La première a déjà été abordée ci-dessus, et concerne la standardisation de la collecte des données. Si cette collecte n’est pas standardisée, votre collègue et vous n’obtiendrez potentiellement pas les mêmes valeurs des données collectées si pourtant vous évaluiez les mêmes individus. La seconde question qui se pose est la suivante : dans quel document allez-vous collecter les données de telle sorte que vous et votre collègue n’allez pas écraser les données collectées par l’autre ?


## Numérisation

Lorsqu'une étude dépend de données collectées dans la littérature,
une intervention manuelle est souvent nécessaire pour constituer
la base de données. 
Considérons d'abord le cas, fréquent et a priori favorable, 
où les données convoitées sont dans le fichier pdf d'un article 
ou de son supplément. 
Lorsqu'on effectue un copier/coller d'une partie de fichier pdf 
vers un éditeur de texte, les sources de contrariété sont multiples, 
et dépendent largement du logiciel utilisé pour afficher le fichier pdf:

* impossibilité éventuelle de gérer correctement des tables complexes 
(avec des cellules vides ou table pivotée);

* présence de renvois bibliographiques sur certains éléments du tableau;

* gestion du signe moins "-", qui est souvent récupéré comme un tiret 
ou demi-tiret "–", ne pouvant être interprété par les codes de calcul

* ...

Aprés extraction des données, une étape de correction manuelle
est indispensable, qui constitue en elle-même une source d'erreur.
La récupération de données à partir d'images (OCR) présente des 
problèmes similaires.
Pour le chercheur aventureux, coller les données collectées
dans un tableur peut introduire une couche supplémentaire
de surprises (transformation de nombres en dates, par exemple) [@REF].

## Que faire ?

La solution dans ce cas, outre d'attendre la création de logiciels de conversion
"intelligents", ne dépend pas du collecteur de données, mais de l'émetteur,
et repose sur les règles de bonne pratique quant à l'archivage
des données dans des formats ouverts et lisibles par la machine 
(csv, xml...).

Du côté du collecteur, si le volume de données est important
et/ou si la tâche est répétitive, l'élaboration d'un code 
automatisant au maximum le processus
devrait être envisagé.


