# Des problèmes de calcul ?

## D'où vient le problème ?
### Le code n'est pas disponible
Le cas le plus frustrant est certainement celui où on n'a tout
simplement pas ou plus accès au programme à lancer. 
- Cela peut être dû au fait que le logiciel soit propriétaire et que
  l'on n'ait pas accès à la licence d'exploitation. Par exemple
  parce que votre équipe/université, n'ayant plus de budget, a cessé de
  la payer ou parce que ce logiciel est disponible dans l'université
  d'un collègue mais pas dans l'université où vous travaillez
  actuellement. Il se peut également que vous y ayez accès mais que
  seul un nombre restreint de personnes puissent y accéder en même
  temps (avec un système de *tokens*) et que vous vous retrouviez à
  devoir attendre un bon moment avant d'y arriver.
- Si le code a été développé "en interne", il arrive (trop souvent)
  qu'à la suite d'un crash disque, d'un vol d'ordinateur portable, du
  départ du développeur principal, ... que l'on n'ait juste plus accès
  au logiciel. C'est souvent le résultat d'un mauvaise politique de
  sauvegardes ou de partage d'informations au sein d'une équipe.
- Assez souvent, c'est un code développé "en externe" (dans une autre
  équipe de recherche par exemple) que l'on souhaite ré-exécuter, par
  exemple pour s'y comparer ou bien pour vérifier si on obtient bien
  des résultats similaires avec une autre méthode. Hélas, ces
  chercheurs peuvent ne pas souhaiter partager ce code, par exemple
  pour conserver un avantage compétitif, ou bien parce qu'ils n'est
  pas *montrable* (commentaires , peut-être même n'ont-ils jamais prévu
  
  (commentaires *en
  état* ou bien parce

- le code de quelqu'un d'autre:
  - pas mis à disposition (collaborateur parti ou bien chercheur qui
    décide de pas partager)
  - plus à disposition (changement d'université, URL decay, ...)

Si le sujet vous intéresse, vous pouvez lire les travaux de Collberg
et Proebsting [@10.1145/2812803] qui étudient les causes d'incapacité
à réexécuter du code dans la communauté de recherche *Computer
Systems*, pourtant très au fait des aspects logiciels. Vous y
trouverez tout un tas de témoignages (assez drôles si c'était sans
conséquences) issus d'une étude de terrain et couramment utilisés pour
excuser son incapacité à mettre à donner accès au code derrière une
publication.

### Comment lance-t-on ce code ?
Souvent code prototype ou script. Pas forcément de documentation
*externe*. On ne sait plus comment on l'avait lancé, avec quels
paramètres, quels fichiers d'entrées, quelles variables
d'environnement, etc.

### Comment fonctionne ce code ?
Si on n'est plus sûr des paramètres utilisés, on peut vouloir chercher
à comprendre d'où vient le problème pas en inspectant le code. Si tant
est qu'on ait accès au code source bien sûr...
- Le code est incompréhensible, pas de documentation interne, noms de
  variables, fonctions incompréhensibles
- Le code est compliqué (plein de fichiers, pas de structure claire)
- Il y a peut-être des "bugs" mais comment les trouver ?


### Quelle version du code ?
Il se peut que le bug provienne de la version actuellement installée
sur la machine. Pour corriger les bugs, on peut vouloir mettre à jour
le logiciel. Mais quelle version a été utilisée ? Est-ce la cause de
la différence observée ? Est-ce que la mise à jour n'introduirait pas
un bug ? Est-ce que la nouvelle version sera toujours compatible ?
Comment revenir à un version plus ancienne ? Quelle est la version la
plus récente que je puisse utiliser ?

### Environnement de calcul
En général, un logiciel dépend de bibliothèques. 
    - incertitude
    - perte
    - non-reconstruction
    - non-evolution

### Le chaos numérique
- non associativité des doubles
- sensibilité des calculs aux conditions initiales
