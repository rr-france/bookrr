# Questions recurrentes / les symptômes d'une recherche non reproductible

Il existe de nombreuses situations où l'on souhaite reproduire ses résultats de recherche. Première situation, on peut vouloir vérifier que la méthode mise en oeuvre il y a quelques mois par un stagiaire, par un doctorant, ou par soi-même, donne les mêmes résultats avant de poursuivre l'étude. Deuxième situation, on doit obéir (et oui, c'est bien la dure vie de chercheur) aux demandes d'un relecteur de modifier une figure ou de tester l'impact de paramètres non-envisagés dans l'étude initiale. Troisième situation, on souhaite vérifier que les méthodes "maison" font aussi bien, ou mieux, que celles des équipes concurrentes. Nous sommes persuadés que vous avez d'autres situations en tête. Le point commun de toutes ces situations est qu'elles peuvent être l'occasion de surprises (très) désagréables 
(et c'est ce que nous appellerons les "symptômes d'une recherche non reproductibe") qui doivent amener le chercheur à se questionner sur ses pratiques. 

Nous vous livrons ci-dessous quelques témoignages, certes fictifs, mais non moins vraisemblables, qui illustrent ces symptômes d'une recherche non reproductible.

## J'ai perdu mes données ou mon code de programmation !

Après la publication d'un des mes articles, un collègue souhaite collaborer 
avec moi pour tester de nouvelles hypothèses sur le jeu de données 
que j'ai présenté. Malheureusement, (1) le disque dur sur lequel 
j'archivais les données brutes a crashé, ou bien, (2) j'ai effacé 
les données qui prenaient beaucoup de place sur mon ordinateur, 
puisque l'article était publié. Que dois-je répondre à ce collègue tout en gardant un semblant de dignité ?

## Mes résultats ont changé !

Depuis que j'ai soumis un article au journal, il y a quelques mois,
j'ai continué de travailler sur mon code de traitement des données.
Un relecteur me demande de compléter quelques figures, ce qui
nécessite pour moi de refaire l'analyse des données. 
Malheureusement, la  version actuelle du code, dans laquelle 
j'ai amélioré les algorithmes, ne redonne pas tout à fait 
les mêmes résultats que ceux de l'article. Dois-je annoncer au reviewer qu'une partie des résultats a changé ?
    
## Mon code ne marche plus !

Ayant réussi à décrocher une ANR, je m'offre un nouvel ordinateur,
avec la version la plus récente du système et des logiciels. 
Pour profiter au mieux des performances de cette machine, je 
recompile mon code de simulation, en ayant hâte de me rendre compte que ma simulation prend dix fois moins de temps qu'avec ma précédente machine. Mon excitation retombe subitement en voyant  
(1) que le compilateur génère des erreurs, ou bien 
(2) que le code recompilé démarre et se plante après quelques secondes. 
Ma première idée (un peu la mort dans l'âme) est de récupérer mon vieil ordinateur, mais 
l'informaticien du labo l'a déjà reformaté pour le
passer à un stagiaire. Et là je me dis : "mais pourquoi moi ?"

## Mon nouveau doctorant n'observe pas les mêmes effets que son prédécesseur !

L'an passé, un de mes doctorants a soutenu brillament sa thèse après
avoir obtenu des résultats remarquables, que nous avons publiés dans 
un excellent journal. Il a trouvé un post-doctorat à l'étranger sur un sujet
sensiblement différent pour élargir le spectre de ses compétences.
Mon nouveau doctorant doit repartir de ces résultats pour améliorer 
l'efficacité de notre processus. Cela fait maintenant un an qu'il échoue à reproduire les observations 
de son prédécesseur, alors qu'il suit scrupuleusement (et j'ai vérifié)
le protocole établi. Dois-je mettre fin à sa thèse pour incompétence, le lancer sur un 
autre sujet et abandonner cet axe de recherche, ou envisager de 
rétracter l'article de son prédécesseur car tout d'un coup pris d'un certain doute ?

## Mais il fallait vraiment écrire toute cette tartine ?

Pour mon stage de M2, je souhaite montrer un lien la délétion d'un gène chez la souris et la survenue de problèmes neurolocomoteurs. J'ai lu de nombreux articles évaluer la présence de ces problèmes chez la souris, mais aucun ne m'a particulièrement attiré. En revanche, toute cette revue de la littérature m'a donné une super idée pour une telle évaluation comportementale, reposant sur un protocole d'observations certes complexe mais que je jugeais génial. Je n'ai pas voulu perdre de temps (nous ne pouvions bénéficier de ce lot de souris que pendant un mois). J'ai obtenu d'excellents résultats et les ai présentés en réunion d'équipe, tout excité à l'idée de rédiger mon premier article que j'allais soumettre dans une excellente revue. Après ma présentation, mon chef d'équipe m'a demandé de lui montrer le descriptif rédigé de mon protocole si "génial". Je lui ai répondu que je n'avais pas voulu prendre le temps de rédiger quelque chose qui était dans ma tête : quel intérêt d'écrire toute cette tartine pour soi, quand tout est si clair dans sa tête ? Il m'a répondu "ok, donc tu peux oublier ton premier papier sur tes souris".  

[pas convaincu que ce qui suive soit pertinent] L'informatique est un outil puissant mais régulièrement et incroyablement ... frustrant. 

## AAAAAAH ! Mais hier, ça marchait !

[pas convaincu que ce qui suive soit pertinent] L'informatique est un outil puissant mais régulièrement et incroyablement ... frustrant. Lorsque l'on souhaite ré-effectuer un calcul, que cela soit
pour répondre aux demandes d'un reviewer ou d'un collègue, il arrive
fréquemment qu'on se retrouve dans l'incapacité de le faire. Dans le pire des cas, le programme plante avec un message d'erreur
cryptique du genre `Un problème a fait que le programme a cessé de
fonctionner correctement. [Oui] [Non] [Annuler]`, `segmentation fault
Core dumped`, ou encore `java.lang.ExceptionInInitializerError: null`.

Plus subtil, il se peut que le programme s'exécute à première vue
normalement, mais en y regardant de plus près, on s'aperçoive que
le résultat (valeur numérique, caractères illisibles, mise en page
d'une figure, ...) ait changé.
