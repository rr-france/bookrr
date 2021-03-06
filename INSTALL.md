# Informations internes
## Quelques liens utiles sur Markdown
- [La syntaxe](https://guides.github.com/features/mastering-markdown/)
- [Les citations](https://rmarkdown.rstudio.com/authoring_bibliographies_and_citations.html)
- [Images, footnotes et autres](https://github.com/fletcher/MultiMarkdown/wiki/MultiMarkdown-Syntax-Guide)
- [Les références d'un chapitre à l'autre](https://bookdown.org/yihui/bookdown/cross-references.html)

## Quelques liens utiles sur Bookdown
- [Bookdown](https://bookdown.org/)
- [Avoir des parties en plus des chapitres](https://github.com/rstudio/bookdown/issues/221)
- [Des chapitres non numérotés](https://github.com/rstudio/bookdown/issues/218)
- [Comment visualiser le livre avec Rstudio](https://bookdown.org/home/about/)


## Clef de références pour les chapitres :

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
* 06_aspects_computationnels.md      -> `{#B-code-aspect}`  
Programmation et calcul
* 07_donnees_d_entree.md             -> `{#B-data-input}`  
  Gestion des données
* 08_aspects_computationnels.md      -> `{#B-code-aspect}`  
  Programmation et calcul
* 09_donnees_de_sortie.md            -> `{#B-data-output}`  
  Communication des résultats

---

* **Solutions de la recherche reproductible**
* 10_introduction_partie_3.md          -> `{#C-intro}`  
  Le temps des changements ?
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
  
## Pour compiler le bookdown

Normalement, ce livre est [automatiquement compilé et disponible
ici](https://rr-france.github.io/bookrr/). [![Build
Status](https://travis-ci.org/rr-france/bookrr.svg?branch=master)](https://travis-ci.org/rr-france/bookrr)

Ce document a été rédigé à l'aide de [bookdown](https://bookdown.org).

Le paquet **[bookdown](https://bookdown.org)** peut s'installer à
partir de CRAN ou de  Github:

```{r eval=FALSE}
install.packages("bookdown")
# or the development version
# devtools::install_github("rstudio/bookdown")
```

Pour compiler ce document il est également nécessaire d'avoir
`pandoc`, `pandoc-citeproc` et une installation latex récente (vous
pouvez jeter un oeil à [`tinytex`](https://yihui.name/tinytex).

Le document est entièremnt rédigé en markdown (nous n'avions pas
besoin d'éxécuter du code R, ce pourquoi bookdown est originellement
conçu). Néenmoins, pour conserver la prévisualisation de github, nous
avons conservé l'extension `.md` plutôt que `.Rmd`.
Les liens symboliques avec l'extension `.Rmd` nécessaires sont créés
automatiquement par `make` qui appelle plusieurs scripts qui s'occupent de corriger tout un tas de
petites choses au niveau de la bibliographie, du HTML, du LaTeX...

La meilleur façon de compiler ce livre est donc d'exécuter la commande suivante dans votre terminal :
```{sh}
make
```

Pour compiler ce livre au format html, il vous suffit de faire:
```{sh}
make html
```
ou bien en R:
```{R}
rmarkdown::render_site(output_format = 'bookdown::gitbook', encoding = 'UTF-8')
```

Pour compiler ce livre au format pdf, il vous suffit de faire:
```{sh}
make pdf
```
ou bien en R (ou presque...):
```{R}
rmarkdown::render_site(output_format = 'bookdown::pdf_book', encoding = 'UTF-8')
```
