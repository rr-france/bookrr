# Vis ma vie cauchemardesque de *personna* de la recherche

Nous avons recueillis ci-dessous plusieurs témoignages fictifs de *personnas* acteurs de la recherche, mais néanmoins vraisemblables et basés sur des expériences réelles. Ils permettent de personnifier et d'appréhender concrêtement différentes problématiques autour de la recherche reproductible.

## *Charles P., doctorant en sociologie*
> "J'interroge des personnes issues de milieux sociaux défavorisés afin de recueillir leur expérience de vie. Je consigne toutes mes notes dans un carnet relié, et je retranscris les informations démographiques dans le tableur Calc afin de compiler quelques statistiques (pyramide des ages, répartition des sexes, etc). Je collabore étroitement avec un autre doctorant de mon directeur sur ce projet, qui alimente lui aussi le même fichier Calc, que nous nous échangeons régulièrment par clé USB."

## *Jeanne A., jeune méthodologiste en biostatistique*
> "J'ai terminé mon Master 2 l'année dernière, dans laquelle j'ai appris à mener des analyses statistiques sous R lors de sa formation. J'analyse régulièrement des jeux de données transmis qui me sont généralement transmis directement via message électronique par des cliniciens travaillant au CHU au format Excel.  
> 
>Je suis relativement isolée dans ma tache d'analyse de données, mes collègues étant tous médecins ou biologistes. J'aimerais changer mes pratiques pour rendre ma recherche plus reproductible, mais je ne sais pas par où commencer.  
>  
>J'ai récemment participé à la rédaction d'un article scientifique, et nous venons de recevoir les commentaires des relecteurs : je dois modifier les couleurs d'une figure afin que celle-ci soit lisible en noir et blanc. Comme je n'arrivais pas à remettre la main sur mon *script* R ayant généré la figure en question, j'ai ré-écrit le programme correspondant. Le seul problème, c'est que cette nouvelle figure est un peu différente de la précédente et remet en cause les conclusions de l’article. Je ne comprends pas ce qui a pu se passer."

## *Cindy D., stagiaire de Master en physique des matériaux*
>"J'ai commencé mon stage de Master 2 il y a 3 semaines. Ma principale occupation a été d'extraire des données à partir d'une série d'article, qui donnait les points de caractéristique dans les *.PDF* en fichiers supplémentaires. Je les copie-colle directement dans Excel, dans lequel je dois les "." en ",". Comme je ne dispose des erreurs d'estimation pour tous les articles (seules certains articles les inclus dans leur résultats), je n'en tiens pas compte et ne rentre que les estimations. 
>
>C'est assez un travail assez rébarbatif, mais c'est le seul moyen de pouvoir ensuite analyser les données de la litérature. Lorsque ma collecte sera terminée, je calulerai le coéfficient R^2^ pour mes données et mon directeur espère pouvoir publier nos résultats."

## *Long N., Maître de conférences en biologie*
>"Pour interpréter mes données expérimentales sur les protéines fluorescentes, 
je me suis lancé dans la simulation moléculaire et j'ai installé un code réputé
dans la litérature. 
La fluorescence est en compétition avec des mouvements intramoléculaires assez
rares. Pour avoir une chance de les observer et de faire une statistique, 
je dois faire des simulations avec des pas de temps assez longs. 
>
>En analysant les résultats, j'ai détecté un mouvement intéressant, mais le 
pas de temps est trop long pour en observer les détails. 
J'ai donc repris les données stockées par le programme juste avant cet événement 
et j'ai relancé la simulation avec un pas de temps plus fin. 
Je n'ai jamais pu reproduire cet événement.
En faisant de la bibliographie, j'ai réalisé que ce type de simulation
était affecté par du "chaos numérique". Je n'ai plus confiance dans mes résultats.
>"


- Utilisation de super-calculateurs, serveurs partagés sans
  réservation de l'allocation mémoire et du coup ça swappe
  - ou bien les difficultés liées à l'utilisation d'un
    supercalculateur (mouvements de données, 1 vs. 12. vs. 1000
    machines)
  - c'est lourd donc pas de prise de notes
- Instabilité quand on passe en parallèle
- Différence de résultats dans maximisation de vraissemblance entre
  single/double/quadruple precision

## *Mohammed B., ingénieur d'étude en calcul numérique*
>"En tant qu'ingénieur du labo, je suis reponsable de la maintenance du logiciel **TODO**, développé il ya 15 ans par un post-doctorant très doué. Il a depuis quitter le labo, et personne ne sait vraiment comment modifier le programme de ce logiciel. Or une partie importante de notre activité de recherche nécessite l'utilisation de ce logiciel. J'ai collé pas mal de rustines qui nous ont permis de tenir un certain temps face à l'évolution de nos infrastrucutres et de nos systèmes. Mais depuis la mise-à-jour de de notre parc informatique il y a 6 mois ce n'est plus possible, et j'ai été obligé de garder une machine sous l'ancien OS pour pouvoir continuer à faire tourner le logiciel. Ça m'inquiète parce que nous avons une grosse dette technique, et que je ne sais pas ce qui va se passer quand cette vielle bécane va nous lâcher!"

## *Christina Z., Directrice de Recherche au CNRS*
> Je dirige une équipe de recherche depuis 3 ans, et j'ai actuellement 2 doctorants et 3 post-doctorants qui travaillent avec moi. Je suis un peu inquiète car un de mes doctorants a soutenu sa thèse la semaine dernière et part en post-doc aux États-Unis à la fin du mois. Ses derniers travaux sont très prometteurs, mais nous avons à peine fait la moitié et l'article n'est pas encore rédigé. J'ai prévu d'avoir un stagaire pour reprendre la suite mais cela risque de prendre énormément de temps car ce doctorant documente très peu de les étapes de son travail en dehors de ses manips alors que l'exploitation des résultats est particulièrement déicate sur ce projet. Et comme le financement de ce projet se termine à la fin de l'année il faut absolument que tout soit bouclé avant.
>
> Récemment, j'ai aussi aussi eu des nouvelles d'un ancien camarade de thèse dont un article important s'est fait rétracter. Certaines conclusion de son papiers ont été attaquées, et il n'a pas pu fournir les données expérimentales qu'il avait utilisées (l'article date d'il y a 5 ans et il a perdu toute trâce du doctorant qui avait conduit les manips). L'éditeur du journal était désolé mais sans les données pour répondre à la critique, il a décidé de retracter l'article. La réputation de mon ancien camarade en a pris un coup." 


