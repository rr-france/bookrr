# (PART) Symptomes de la non-reproductibilité {-}

# Problèmes se produisant lors de l’acquisition de l'information {#B-data-acquisition}

Dans une démarche de recherche, la première étape est bien souvent l'aquisition
d'information, que ce soit à partir de la collecte de nouvelles mesures expérimentales 
ou à partir de données déjà publieés.


## Absence de standardisation de la collecte des informations

Dans la grande majorité des cas, la production de résultats issus d'une recherche passe par
la collecte d’informations. Ces informations sont recueillies sur des " unités " (une 
unité pouvant être une pièce mécanique, un être vivant, etc.). Ce que l’on entend par 
" informations " sont les caractéristiques de chaque unité qui fait l’objet de la 
recherche (par exemple : la résistance à la traction d’un matériau, la concentration en 
glucose d’une personne atteinte de diabète, ou bien encore son âge, son poids, etc.). 

Si cette collecte des informations n’est pas standardisée, la personne qui collecte 
des informations sur un individu/unité un jour n°1 ne le fera potentiellement pas de la même façon le 
jour n°2 si elle devait le faire de nouveau. Et si elle ne procède pas de la même façon, alors la valeur 
de l’information du jour n°2 serait différente de celle du jour n°1, non pas parce que l’information 
a changé au cours du temps (ce qui est possible, et éventuellement acceptable – cf. ci-dessous), 
mais parce que la méthode a changé. 

Ainsi, comment s’assurer d’une recherche reproductible si celle-ci
se fonde sur des informations dont la valeur varie en fonction des 
modalités de collecte appliquées ? Quelle peut-être la valeur, 
voire la fiabilité, des données issues d'un mode de collecte
qui n’est pas stabilisé pendant toute la durée de l’étude ? 


## Modification des données après une première collecte

Un autre problème conduisant à une recherche non reproductible se produit lorsque des 
informations recueillies sur une unité sont modifiées après une première collecte, 
sans que ces modifications ne soient tracées. Dans ce cas-là, les analyses statistiques 
qui seront conduites sur les informations modifiées ne fourniront évidemment pas les 
mêmes résultats que celles conduites sur les informations initiales. S’il n’y a aucun 
moyen de revenir aux informations initiales et/ou de savoir quelles sont les informations 
qui ont été modifiées, votre recherche devient par conséquent non reproductible.

Les solutions pour éviter de perdre ainsi la trace de la modification
sont évoquées dans le chapitre \@ref(C-data-acquisition).

## Une collecte d’informations non répétable ou non reproductible

Dans cette section, en vue d'examiner les impacts de l'étape 
de la collecte de données, nous allons utiliser une définition 
particulièrement précise des termes " reproductibilité " et " répétabilité ", 
en utilisant les définitions métrologiques de ces termes 
(dont l'acception peut parfois varier d'un domaine spécifique à l'autre). 

### Quelques définitions issues du *Vocabulaire International de Métrologie*

Nous avons décidé de choisir les définitions proposées en 2012 dans la dernière version 
du *Vocabulaire International de Métrologie (VIM)* car elles représentent l’effort le plus 
récent de normalisation dans ce domaine *SG*(téléchargeable ici : 
https://www.bipm.org/en/publications/guides/).

La **fidélité** de mesure s'entend comme : " l’étroitesse de l'accord entre les indications ou les 
valeurs mesurées obtenues par des mesurages répétés du même objet ou d'objets similaires 
dans des conditions spécifiées. "

La **répétabilité** est la fidélité de mesure dans les conditions de mesures suivantes : 
" conditions qui comprennent la même procédure de mesure, les mêmes opérateurs, le même 
système de mesure, les mêmes conditions de fonctionnement et le même lieu, ainsi que des 
mesurages répétés sur le même objet ou des objets similaires pendant une courte période 
de temps. "

La **reproductibilité** est la fidélité de mesure dans les conditions de mesures suivantes : 
" conditions qui comprennent des lieux, des opérateurs et des systèmes de mesure différents, 
ainsi que des mesurages répétés sur le même objet ou des objets similaires. "


### Impact d’une absence de répétabilité ou de reproductibilité dans la collecte des informations

Si la collecte d’une information n’est pas " répétable " au sens du *VIM* défini ci-dessus, les 
conditions d’une recherche reproductible ne peuvent alors pas être remplies : vous n’obtiendriez 
pas les mêmes résultats à partir d’informations collectées sur des unités identiques, évalués 
dans les mêmes conditions par un même opérateur. Si la collecte des données n’est pas " reproductible " 
d’un opérateur à un autre au sens du *VIM*, les conditions d’une recherche reproductible ne sont pas non 
plus remplies : personne d’autre que vous ne pourrait obtenir les mêmes résultats sur des unités 
identiques évaluées dans les mêmes conditions.



## Collecte des données à plusieurs

Supposons que vous ne soyez pas la seule ou le seul à collecter les informations pour votre étude. 
Deux questions se posent alors : 
- la première, déjà abordée ci-dessus, concerne la standardisation de la collecte des informations : 
si cette collecte n’est pas standardisée, votre collègue et vous n’obtiendrez potentiellement 
pas les mêmes valeurs des informations collectées lorsque vous évaluez pourtant les mêmes unités. 
- la seconde concerne l'outils de partage de l'information : dans quel document, sur quel support, 
allez-vous collecter les données, pour garantir que vous et votre collègue n’allez pas effacer 
les informations collectées par l’autre ?


## Collecte des données de la littérature

Nous envisageons maintenant le cas d'une étude qui dépend d'informations collectées dans 
la littérature. Dans ce genre de cas, une intervention manuelle est souvent nécessaire 
pour constituer la base de données. 

Considérons d'abord le cas, fréquent dans certains domaines (et *a priori* favorable), 
où les données d'intérêt sont dans le fichier pdf d'un article ou de son supplément. 
Lorsqu'on effectue un copier/coller d'une partie de fichier pdf vers un éditeur de texte, 
les sources de contrariété sont multiples (et dépendent largement du logiciel utilisé pour 
afficher le fichier pdf). Les plus fréquemment rencontrées peuvent être : 
  
 - une impossibilité éventuelle de gérer correctement des tables complexes 
  (avec des cellules vides ou une table pivotée);

 - la présence de renvois bibliographiques sur certains éléments du tableau ;

 - la gestion du signe moins (" - "), qui est souvent récupéré comme un tiret (" — ") 
   ou demi-tiret, ne pouvant alors pas être interprété par les codes de calcul.

Après extraction des données, une étape de correction manuelle est donc souvent indispensable,
qui constitue en elle-même une source potentielle d'erreur (en plus de ne pas toujours être 
effectuée de façon traçable). 
La récupération de données à partir d'images (OCR) présente des problèmes similaires.

Et pour le chercheur aventureux, copier/coller les données collectées dans un tableur peut 
introduire une couche supplémentaire de surprises (transformation de nombres ou 
d'identifiants en dates, par exemple) *SG* [@REF https://genomebiology.biomedcentral.com/articles/10.1186/s13059-016-1044-7].


## Que faire ?

Les solutions pour faire face aux problèmes évoqués dans ce chapitre, 
dépendent du collecteur de données, mais également de l'émetteur. 

Le collecteur de données pourra se reporter aux solutions présentées dans les chapitres 
\@ref(C-data-acquisition) et \@ref(C-code-learn)
pour automatiser et tracer au maximum le processus de collecte (d'autant plus que le volume 
de données est important et/ou si la tâche est répétitive).
 
L'emetteur de données pourra se reporter aux solutions présentées dans les chapitres 
\@ref(C-data-format) et \@ref(C-data-share)
sur les règles de bonne pratique quant à l'archivage des données dans des formats 
ouverts et lisibles par la machine.

**NB :** en tant que chercheur, nous sommes souvent l'émetteur de données 
pour un autre chercheur, et il faut intégrer cela dans nos bonnes pratiques 
de partage de nos résultats. 




