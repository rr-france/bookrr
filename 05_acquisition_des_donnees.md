# Acquisition des données

[suggestion de titre de chapitre : "Problèmes émergeant dans l’acquisition des informations"]

[*BH*] [Merci de prévoir un paragraphe introductif]


## Absence de standardisation de la collecte des informations

Dans la grande majorité des cas, la production de résultats issus d'une recherche passe par
la collecte d’informations. Ces informations sont recueillies sur des " unités " (une 
unité pouvant être une pièce mécanique, un être vivant, etc.). Ce que l’on entend par 
" informations " sont les caractéristiques de chaque unité qui fait l’objet de la 
recherche (par exemple : la résistance à la traction d’un matériau, la concentration en 
glucose d’une personne atteinte de diabète, ou bien encore son âge, son poids, etc.). 

[*BH*] [solution partielle ci-dessous : à déplacer ?]
Un point fondamental pour assurer une recherche reproductible est de standardiser la collecte 
des informations. En effet, si cette collecte n’est pas standardisée, la personne qui collecte 
des informations sur un individu un jour n°1 ne le fera potentiellement pas de la même façon le 
jour n°2 si elle devait le refaire. Et si elle ne le fait pas de la même façon, alors la valeur 
de l’information du jour n°2 serait différente de celle du jour n°1, non pas parce que l’information 
a changé au cours du temps (ce qui est possible, et éventuellement acceptable – cf. ci-dessous), 
mais parce que la méthode a changé. Ainsi, comment s’assurer d’une recherche reproductible si elle 
est fondée sur des informations dont la valeur dépend de la façon dont elle est collectée, avec une 
façon qui n’est pas fixée pendant toute la durée de l’étude ? 



## Modification des données après une collecte originale

Un autre problème conduisant à une recherche non reproductible se produit lorsque des 
informations recueillies sur un individu sont modifiées après une première collecte, 
sans que ces modifications ne soient tracées. Dans ce cas-là, les analyses statistiques 
qui seront conduites sur les informations modifiées ne fourniront évidemment pas les 
mêmes résultats que celles conduites sur les informations initiales. S’il n’y a aucun 
moyen de revenir aux informations initiales et/ou de savoir quelles sont les informations 
qui ont été modifiées, votre recherche devient par conséquent non reproductible.

Les solutions pour éviter de perdre ainsi la trace de la modification
sont évoquées dans le chapitre \@ref(collecte-infos).



## Une collecte d’informations non répétable ou non reproductible

Dans cette section nous allons utiliser une définition particulièrement précise des 
termes " reproductibilité " et " répétabilité ", en utilisant les définition métrologique 
de ces termes (dont l'acception peut parfois varier d'un domaine spécifique à l'autre). Ces 
définitions vont nous servir à discuter de l'impact

### Quelques définitions issues du Vocabulaire International de Métrologie

Nous avons décidé de choisir les définitions proposées en 2012 dans la dernière version 
du Vocabulaire International de Métrologie (VIM) car elles représentent l’effort le plus 
récent de normalisation dans ce domaine (téléchargeable ici : 
https://www.bipm.org/en/publications/guides/).

La **fidélité** de mesure est " l’étroitesse de l'accord entre les indications ou les 
valeurs mesurées obtenues par des mesurages répétés du même objet ou d'objets similaires 
dans des conditions spécifiées. "

La **répétabilité** est la fidélité de mesure dans les conditions de mesures suivantes : 
" conditions qui comprennent la même procédure de mesure, les mêmes opérateurs, le même 
système de mesure, les mêmes conditions de fonctionnement et le même lieu, ainsi que des 
mesurages répétés sur le même objet ou des objets similaires pendant une courte période 
de temps. "

La **reproductibilité** est la fidélité de mesure dans les conditions de mesures suivantes : 
" conditions qui comprennent des lieux, des opérateurs et des systèmes e mesure différents, 
ainsi que des mesurages répétés sur le même objet ou des objets similaires. "


### Impact d’une absence de répétabilité ou de reproductibilité dans la collecte des informations

Si la collecte d’une information n’est pas " répétable " au sens du VIM défini ci-dessus, les 
conditions d’une recherche reproductible ne peuvent alors pas être remplies : vous n’obtiendriez 
pas les mêmes résultats à partir d’informations collectées sur des individus identiques, évalués 
dans les mêmes conditions par un même opérateur. Si la collecte des données n’est pas " reproductible " 
d’un opérateur à un autre au sens du VIM, les conditions d’une recherche reproductible ne sont pas non plus remplies : personne d’autre que vous ne pourrait obtenir les mêmes résultats sur des individus identiques évalués dans les mêmes conditions.



## Collecte des données à plusieurs

Supposons que vous ne soyez pas la seule ou le seul à collecter les informations pour votre étude. Deux questions se posent. La première a déjà été abordée ci-dessus, et concerne la standardisation de la collecte des informations. Si cette collecte n’est pas standardisée, votre collègue et vous n’obtiendrez potentiellement pas les mêmes valeurs des informations collectées si vous évaluiez pourtant les mêmes individus. La seconde question qui se pose est la suivante : dans quel document, sur quel support allez-vous collecter les données de telle sorte que vous et votre collègue n’allez pas écraser les informations collectées par l’autre ?





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


