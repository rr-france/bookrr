# Recherche reproductible : Faire évoluer ses pratiques
Livre sur la recherche reproductible rédigé à l'occasion d'un booksprint

## Auteurs
Loïc Desquilbet, Boris Hejblum, Arnaud Legrand, Pascal Pernot, Nicolas Rougier

Facilitatrice : Elisa de Castro Guerra

## Est-il possible de contribuer, de proposer de nouveaux contenus? 
Ce livre est ouvert aux nouveaux contenus : proposition d'ajout de chapitre, complément de chapitre, références complémentaires, mais aussi questions.
Le livre ayant été rédigé collaborativement, les propositions sont étudiées par le collectif des auteurs. 
En fonction de la nature de vos propositions, vous pourrez être amené.e à être cité.e comme [contributeur, ou co-auteur](https://publicationethics.org/authorship). 
Vous pouvez soumettre vos propositions via :
- GitHub (issue)
- email : urfist@u-bordeaux.fr

## Licence
[CC-BY NC](https://creativecommons.org/licenses/by-nc/4.0/)
Cette licence permet aux autres de remixer, arranger, et adapter l'œuvre, sous des conditions éventuellement différentes, mais à des fins non commerciales ; les nouvelles œuvres doivent créditer les auteurs en citant leurs noms. 

## Quelques liens utiles sur Markdown
- [La syntaxe](https://guides.github.com/features/mastering-markdown/)
- [Les citations](https://rmarkdown.rstudio.com/authoring_bibliographies_and_citations.html)
- [Images, footnotes et autres](https://github.com/fletcher/MultiMarkdown/wiki/MultiMarkdown-Syntax-Guide)
- [Les références d'un chapitre à l'autre](https://bookdown.org/yihui/bookdown/cross-references.html)

## Quelques liens utiles sur Bookdown
- [bookdown](https://bookdown.org/)
- [Avoir des parties en plus des chapitres](https://github.com/rstudio/bookdown/issues/221)
- [Des chapitres non numérotés](https://github.com/rstudio/bookdown/issues/218)
- [Comment visualiser le livre avec Rstudio](https://bookdown.org/home/about/)


## Clef de références pour les chapitres:

**Syntaxe**:

* déclaration: `{#clef}`
* citation:    `\@ref(clef)`

---
* **Chroniques de la non reproductibilité**
* 01_preambule.Rmd                      -> `{#A-preambule}`  
  Préambule
* 02_RR_kezako.Rmd                      -> `{#A-introduction}`  
  Etat des Lieux
* 03_vis_ma_vie.Rmd                     -> `{#A-personas}`  
  Retours d'expériences
* 04_questions_cauchemars_recurrents.md -> `{#A-cauchermars}`  
  Symptômes d'une rechercher non reproductible

---

* **Sources de non reproductibilité**
* 05_acquisition_des_donnees.md      -> `{#B-data-acquisition}`  
  Acquisition de l'information
* 07_donnees_d_entree.md             -> `{#B-data-input}`  
  Gestion des données
* 08_aspects_computationnels.md      -> `{#B-code-aspect}`  
  Programmation et calcul
* 09_donnees_de_sortie.md            -> `{#B-data-output}`  
  Communication des résultats

---

* **Solutions de la recherche reproductible**
* 10_introduction_partie_3.md          -> `{#C-intro}`  
  Le temps des changements ?
* 11_collecte_des_donnees.md           -> `{#C-data-acquisition}`  
  Documenter ses pratiques
* 12_format_des_donnees.md             -> `{#C-data-format}`  
  Formater et structurer l'information
* 13.5_partage_et_archivage.md         -> `{#C-data-share}`  
  Partager ses données, codes et résultats
* 13_outils_de_gestion_de_version.md   -> `{#C-versioning}`  
  Versionner, versionner, versionner 
* 14_apprendre_a_programmer.md         -> `{#C-code-learn}`  
  Appendre à programmer
* 15_rendre_son_code_comprehensible.md -> `{#C-code-good}`  
  Rendre son code compréhensible
* 16_eviter_les_bugs.md                -> `{#C-code-bugs}`  
  Chasser les erreurs de programmation
* 17_environnement_logiciel.md         -> `{#C-code-env}`  
  Identifier et partager son environnement logiciel
* 18_licence_et_privacy.md             -> `{#C-licences}`  
  Sortez couverts!

---

* 19_annexes.md                        -> `{#D-appendix}`  
* 20_Conventions_ecriture.md           -> `{#D-convention}`
  
