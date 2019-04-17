# Questions recurrentes

Il existe de multiples raisons pour tenter de reproduire des résultats de recherche :

* vérifier que la méthode mise en oeuvre il y a quelques mois par un stagiaire, 
doctorant ou soi-même donne les mêmes résultats avant de poursuivre l'étude;

* obéir aux demandes d'un reviewer de modifier une figure, ou de tester l'impact
de paramètres non-envisagés dans l'étude initiale;

* vérifier que les méthodes "maison" font aussi bien, ou mieux, que celles des
équipes concurrentes;

* ...

Ces tentatives sont souvent l'occasion de surprises désagréables 
(cauchemars de non-reproductibilité) qui doivent amener le chercheur
à se questionner sur ses pratiques. 
Quelques témoignages, fictifs mais vraisemblables, sont présentés ci-dessous.

## Où sont mes données, mon code ?

Après la publication d'un des mes articles, un collègue souhaite collaborer 
avec moi pour tester de nouvelles hypothèses sur le jeu de données 
que j'ai présenté. Malheureusement, (1) le disque dur sur lequel 
j'archivais les données brutes a crashé, ou bien, (2) j'ai effacé 
les données qui prenaient beaucoup de place sur mon ordinateur, 
puisque l'article était publié. 

Que dois-je répondre à ce collègue tout en gardant un semblant de dignité ?

## Mes résultats ont changé

Depuis que j'ai soumis un article au journal, il y a quelques mois,
j'ai continué de travailler sur mon code de traitement des données.
Un reviewer me demande de compléter quelques figures, ce qui
nécessite pour moi de refaire l'analyse des données. 
Malheureusement, la  version actuelle du code, dans laquelle 
j'ai amélioré les algorithmes, ne redonne pas tout à fait 
les mêmes résultats que ceux de l'article.

Dois-je annoncer au reviewer qu'une partie des résultats a changé ?
    
## Mon code ne marche plus

Ayant réussi à décrocher une ANR, je m'offre un nouvel ordinateur,
avec la version la plus récente du système et des logiciels. 
Pour profiter au mieux des performances de cette machine, je 
recompile mon code de simulation. Je suis un peu choqué lorsque 
(1) le compilateur génère des erreurs, ou bien 
(2) le code recompilé démarre et se plante après quelques secondes. 
Ma première idée est de récupérer mon vieil ordinateur, mais 
l'informaticien du labo l'a déjà reformaté pour le
passer à un stagiaire. 

Pourquoi moi ?

## Mon nouveau doctorant n'observe pas les mêmes effets que son prédécesseur

L'an passé un de mes doctorants a soutenu brillament sa thèse après
avoir obtenu des résultats remarquables, que nous avons publiés dans 
un excellent journal. Il a trouvé un post-doc à l'étranger sur un sujet
sensiblement différent pour élargir le spectre de ses compétences.
Mon nouveau doctorant doit repartir de ces résultats pour améliorer 
l'efficacité de notre processus.
Cela fait maintenant un an qu'il échoue à reproduire les observations 
de son prédécesseur, alors qu'il suit scrupuleusement (j'ai vérifié)
le protocole établi.  

Dois-je mettre fin à sa thèse pour incompétence, le lancer sur un 
autre sujet et abandonner cet axe de recherche, ou envisager de 
rétracter l'article de son prédécesseur ?

## AAAAAAH! Mais hier, ça marchait!

L'informatique est un outil puissant mais régulièrement incroyablement
frustrant. Lorsque l'on souhaite ré-effectuer un calcul, que ça soit
pour répondre aux demandes d'un reviewer ou d'un collègue, il arrive
fréquemment qu'on se retrouve dans l'incapacité de le faire.

Dans le pire des cas, le programme plante avec un message d'erreur
cryptique du genre `Un problème a fait que le programme a cessé de
fonctionner correctement. [Oui] [Non] [Annuler]`, `segmentation fault
Core dumped`, ou encore `java.lang.ExceptionInInitializerError: null`.

Plus subtil, il se peut que le programme s'exécute à première vue
normalement mais qu'en y regardant de plus près, on s'aperçoive que
le résultat (valeur numérique, caractères illisibles, mise en page
d'une figure, ...) ait changé.
