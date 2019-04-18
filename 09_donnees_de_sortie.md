# Communication des résultats

Nous allons voir dans ce chapitre qu’une recherche peut devenir non
reproductible s’il existe une mauvaise utilisation des résultats de l'étude au
moment de la rédaction d’un article : il peut s’agir d’une mauvaise sélection
de votre part des résultats, d'un choix inapproprié du format de présentation
ou d'une transformation de ces données.

## Une mauvaise sélection des résultats

Il est tout à fait possible que la sortie des résultats fournis par un logiciel
contienne un nombre élevé d’informations, et qu’il faille sélectionner celles
pertinentes pour la question de recherche dont fait l’objet votre article.

Devant cet amas d’information, il peut tout à fait vous arriver de mal
sélectionner l’information pertinente (votre sélection à la souris a oublié
quelques caractères en début ou en fin de séquence à sélectionner, par
exemple). Si cette information est encore complexe et difficilement
compréhensible par vos collaborateurs parce que vous êtes spécialiste dans le
domaine, et/ou qu'on vous fait totalement confiance, alors cette erreur de
sélection sera présente dans l’article, et persistera après le processus de
revue, si les relecteurs ne répèrent pas cette erreur.

## Transformation des résultats

Une autre erreur pouvant survenir à partir des résultats fournis par un
logiciel est celle d’une "transformation" (bien entendu involontaire) de ces
données.  Cette modification délétère peut très facilement se produire si vous
devez resaisir dans votre article les sorties résultats du logiciel. Une erreur
de frappe est si facilement arrivée!

Un deuxième exemple de transformation des résultats est celui de l’amélioration
d’une figure.  Si vous trouvez que la figure que vous obtenez à partir d'un
logiciel n’est pas satisfaisante, vous pouvez décider de la retravailler
manuellement, par exemple en ajoutant une courbe interpolant des points, alors
que les valeurs intermédiaires n'ont pas de sens. Cette manipulation est
dangereuse, car le traitement de l’information n’est plus produit par une
chaine d'instructions validée et automatisée, mais par vous-même – et vous
n’êtes pas infaillible.

Une transformation involontaire des résultats peut aussi se produire si vous
collaborez sur une étude, et si vous devez intégrer les résultats d’analyses
réalisées par votre collaborateur, mais dont vous ne comprenez pas toutes les
subtilités.  Un exemple que l’on rencontre malheureusement fréquemment dans la
litérature concerne les résultats d’analyses statistiques. Vous avez demandé à
votre collègue, spécialiste des statistiques, de traiter certaines de vos
données, et il vous envoie ses résultats que vous ne comprenez pas dans le
détail. Il peut alors facilement arriver que, par défaut de compréhension, vous
retranscriviez mal ou partiellement les résultats dans l’article. De telles
erreurs de saisie peuvent passer totalement inaperçues si les relecteurs n’ont
pas non plus les compétences statistiques requises pour interpréter ces
résultats.

## Présentation des résultats

Une forme très courante de perte d'information est liée à l'absence ou à la
forme inappropriée des incertitudes associées aux résultats d'une mesure
physique ou virtuelle, ou d'une étude statistique. Très souvent, l'absence
d'incertitude (par exemple, l'absence de valeur d'écart-type) empêche une
comparaison de résultats, ou bien l'absence de matrice de corrélation entre les
paramètres incertains d'une étude empêche leur réutilisation.

Même lorsque des efforts ont été faits pour publier les informations adéquates,
des problèmes d'arrondi peuvent anéantir la réutilisabilité des données.

Une mauvaise sélection du nombre de chiffres significatifs à reporter dans un
résultat numérique peut tout à fait se produire. Vous pourriez juger qu’un seul
chiffre significatif peut suffire, pour une question de *présentation* (taille
d'une table de résultats). Mais si vos résultats sont nécessaires à la
réalisation d’autres recherches (comme par exemple la réalisation de
simulations basées entre autres sur vos résultats), les erreurs générées dans
ces autres recherches pourront être amplifiées (une petite erreur initiale peut
conduire à une erreur très importante en bout de course – cf. « chaos numérique
» dans le chapitre *SG* ***XX*** [à remplacer]).

A titre d'illustration, la matrice de variance-covariance publiée par le CODATA
en 2002 pour l'ajustement des constantes fondamentales, arrondie pour être
présentable dans les annexes de l'article, s'est avérée inutilisable pour des
travaux ultérieurs. *SG* [V.V. Ezhela, Yu.V. Kuyanov, V.N. Larin, A.S. Siver
(2004) The Inconstancy of the Fundamental Physical Constants: Computational
Status https://arxiv.org/abs/physics/0409117]

# Que faire ?

La réutilisabilité des résultats d'une étude doit être une priorité.  Pour
cela, les données doivent être mises à disposition de futurs utilisateurs dans
un format lisible par la machine, en utilisant un processus automatisé limitant
les interventions manuelles.
