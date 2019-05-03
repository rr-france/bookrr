# Partager ses données, codes et résultats  {#C-data-share}

La mise à disposition des données de la recherche est un point clé pour leur
réutilisabilité et pour faciliter la reproductibilité de la recherche par vos
pairs. Il existe plusieurs façons de les mettre à disposition. Pour un partage efficace, il est important de choisir :

- une licence adaptée (chapitre \@ref(C-licences)), 

- un format *ad hoc* (chapitre \@ref(C-data-format)).

Il convient aussi d'élaborer une documentation extensive levant les
ambiguïtés d'interprétation (chapitre \@ref(C-code-good)), et enfin de choisir
un mode de partage le plus ouvert et pérenne possible.


## *Compendium* de recherche

Avant de présenter différentes modalités de partage, intéressons-nous à la notion de *compendium* de recherche.
Il s'agit d'un outil qui facilite la recherche
reproductible en rassemblant dans un même "lieu" virtuel les données, les
codes, les protocoles et la documentation liés à un projet de recherche.

La façon la plus simple d'élaborer un *compendium* de recherche est de créer un
répertoire associé au projet, avec des sous-répertoires dans lesquels sont
répartis les objets. Une convention de nommage explicite des objets et
répertoires peut grandement faciliter la réutilisabilité. Par exemple, pour une simple analyse
statistique d'un jeu de données, Marwick et ses co-auteurs proposent la structure suivante [marwickPackagingDataAnalytical2018] :

![](img/compendium_fr.png)

*Image CC-BY par Ben Marwick, Carl Boettiger & Lincoln Mullen.*

Ces *compendia* peuvent être alors archivés et référencés comme tout autre objet
numérique sous forme de dossiers compressés ou sur des plates-formes spécialisées
comme par exemple l'[*Open Science Framework (OSF)*](https://osf.io/) [@centerforopenscienceOpenScienceFramework]. 


## Modalités de partage

Nous considérons dans cette partie que vos données peuvent être légalement
ouvertes au public.


### Sur demande

Le degré zéro (voire -1) de la mise à disposition des données pour la communauté, 
est de mentionner dans l'article qu'elles sont disponibles "Sur demande à l'auteur". 

Cette approche permet à l'auteur de garder une forme de contrôle, mais elle s'avère peu adaptée à une gestion sur le long terme (ex. : départ à la retraite de l'auteur, changement d'adresse de courriel, *etc*.) et tend à disparaître. En effet, de nombreuses plates-formes éditoriales adoptent progressivement une politique d'ouverture des données et demandent aux auteurs de les mettre à disposition de leurs pairs. L'efficacité des dispositifs éditoriaux déployés est variable, comme le soulignent Stodden et ses co-auteurs [@stoddenEmpiricalAnalysisJournal2018], mais on note une évolution progressive des pratiques. 

### Page web personnelle

Créer une page web personnelle pour faciliter l'accès aux données est une
solution simple et un premier pas dans la bonne direction, mais ici encore, de
nombreux aléas risquent de compromettre la continuité de service. Si cette
solution est envisagée, et nous ne vous la conseillons pas, l'utilisation
d'une page web institutionnelle, intégrée au site d'un laboratoire offrira
une visibilité accrue et une meilleure pérennité.

### Hébergement par un tiers 

Il existe des solutions permettant de partager un répertoire entier, la
plus populaire étant [Dropbox](https://www.dropbox.com/) ou son équivalent
libre [Framadrive](https://framadrive.org/login). Le niveau le plus élevé de granularité de ces outils est le fichier. C'est la raison pour laquelle, il existe des solutions
plus spécifiques selon les formats de fichiers utilisés. Par exemple lorsque
l'on travaille sur des données de type tableur, une solution
populaire est [Google Spreadsheet](https://spreadsheets.google.com/)
(resp. [Google Docs](https://docs.google.com/)) ou (mieux) son équivalent libre
[Framacalc](https://framacalc.org/) (resp. [Framapad](https://framapad.org/)).

Si ces services sont très pratiques et très faciles à utiliser, ils posent un
certain nombre de problèmes dans un contexte recherche :

* Certaines informations sont confidentielles (données de santé, collaborations
  avec des partenaires industriels, idées ayant vocation à être brevetées,
  *etc*.). Déléguer la responsabilité du contrôle d'accès à un hébergeur extérieur
  (qu'il soit privé ou associatif) peut poser de sérieux problèmes. Il convient
  donc d'utiliser les équivalents institutionnels et à demander leur déploiement
  s'ils n'existent pas.
  
* La pérennité sur le long terme des outils comme des services n'est absolument pas garantie. On peut citer les cas de Gitorious et de Google Code, deux services d'hébergement de code dont la popularité n'a pas empêché la fermeture. En déléguant la
  responsabilité du stockage à un hébergeur extérieur, vous prenez un risque
  conséquent. Vous pouvez utiliser ce type de service mais il faut absolument
  vous assurer que vous disposez d'une solution d'archivage en complément.
  
* La gestion de versions est automatique mais très peu contrôlée. Dropbox par
  exemple ne conserve que quelques versions intermédiaires et ce, uniquement
  pendant une durée assez limitée dans le temps (quelques mois). Et comme la
  synchronisation avec votre propre ordinateur est automatique, il n'est 
  pas rare de perdre des données au bout de quelques temps avant d'avoir eu le
  temps de réaliser quoi que ce soit. L'exemple le plus classique dans un
  contexte non professionnel est celui du partage d'un dossier : votre beau-père efface un jour les photos dudit dossier afin de faire de la place sur son disque dur personnel. Par ricochet et sans avertissement, les données sont ainsi effacées de votre propre ordinateur. 
  
### Archives pérennes

Il existe actuellement de nombreuses plates-formes permettant d'héberger
"gratuitement" les données de la recherche. Nous avons évoqué dans le chapitre
\@ref(C-versioning) des solutions pour le suivi de version (GitLab, GitHub,
...) qui permettent une forme d'archivage. La pérennité de cet archivage est
meilleure qualité que celle des solutions précédentes mais n'est pas parfaite non
plus. D'autre part ces systèmes, initialement prévus pour héberger du code,
gèrent assez mal les gros volumes de données et les données de type binaire
(images bitmap, vidéogrammes, codes compilés...).

Des solutions privées de type
[Figshare](https://figshare.com), ou institutionnelles comme
[Zenodo](https://zenodo.org), offrent un archivage sur le long terme pour tous types de données et fournissent 
un DOI permettant leur référencement stable dans la littérature. 
Pour les logiciels, une archive existe :
[Software Heritage](https://www.softwareheritage.org). En tandem avec un
système de gestion de versions, ces archives permettent de conserver de façon
pérenne et d'indexer les versions successives les artefacts de la recherche.


## Pour en savoir plus

Vous pouvez consulter les [recommandations du
CNRS](http://qualite-en-recherche.cnrs.fr/spip.php?article315) [@reseauqualiteenrechercheTracabiliteActivitesRecherche2018] concernant la traçabilité des activités de recherche, ainsi que les principes [FAIR (Findable,
Accessible, Interoperable, Reusable)](https://www.go-fair.org/fair-principles/) [@gofairFAIRPrinciples].

Pour une exposition très claire des problèmes de pérennité, vous
pouvez regarder le [séminaire de Roberto Di
Cosmo](https://github.com/alegrand/RR_webinars/blob/master/5_archiving_software_and_data/index.org) sur ce sujet *in* "*Series of webinars and documents on Reproducible Research - Preserving software: ensuring availability and traceability*" [@legrandSeriesWebinarsDocuments2019a].
 
