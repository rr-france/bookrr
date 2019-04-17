
# Apprendre à programmer

Dans ce chapitre, nous mettons en évidence les limitations des interfaces
graphiques en terme d'efficacité et de reproductibilité et nous expliquons
qu'il est nécessaire d'apprendre à programmer en conseillant deux langages qui
sont devenus incontournables en Science: Python et R.


## Limitation des interfaces graphiques

Une interface graphique est un moyen simple et visuel d'indiquer à un logiciel
ce que l'on souhaite faire. Par exemple, dans un logiciel de traitement de
texte de type WYSIWIG (*What You See Is What You Get*), on peut, à l'aide de la
souris, surligner un passage afin de le mettre en italique ou en gras en
cliquant sur le bouton correspondant. Ce type d'interfaces intuitive est
omniprésente dans l'informatique et simplifie la vie de beaucoup de néophytes
qui ont peu ou pas de connaissance en informatique. On retrouve en Science ce
même type d'interface dans de nombreux logiciels, par exemple pour traiter les
données. L'exemple le plus célèbre étant très certainement le tableur Excel qui
est très utilisé pour faire des statistiques qui peuvent être relativement
compliquées. Or, si cet outil peut dans un premier temps simplifier les
traitements, il va rapidement faire obstacle pour peu que vous souhaitiez
effectuer des calculs un peu exotiques. Vous serez alors contraint d'entrer des
formules de calculs complexes dans les celluls. La bonne nouvelle est que en
faisant cela, vous avez commencé à programmer. La mauvaise nouvelle et que
votre calcul n'est pas reproductible. "Mais j'ai sauvé ma feuille Excel
pourtant!" certes, mais entre le moment où vous avez chargé vos données
initiales et le moment ou vous avez sauvé vos résultats, un certain nombre de
manipulation que vous avez fait n'a pas été enregistré. Par exemple, si vous
avez trié vos donnés selon une certain colonne, vos données initiales seront
triés mais vous aurez perdu la trace de cette opération de tri (sauf si vous
êtes précautionneux et tenez à jour un cahier de laboratoire).


## De l'intérêt de la programmation

Pour surmonter les difficultés liés aux interfaces graphiques, il est
nécessaire de pouvoir exprimer d'une façon claire, documentée et non ambigu ce
que l'on souhaite faire. C'est ici que la programmation entre en jeu. Plutôt
que de cliquer à droite ou à gauche, on va expliquer textuellement à l'aide
d'un jeu d'instructions (relativement restreint) ce que l'on souhaite
faire. Cela veut dire, entre autre chose, qu'un programme peut être simplement
exprimé en quelques lignes seulement. Plus le langage utilisé sera de haut
niveau et moins il y a aure à écrire. Reprenons notre exemple où je dois
charcher des données, les trier selon la deuxième colonne et faire la moyenne
sur la première moitié. Un façon de l'écrire est:

```R

QQ'un peut écrire le script ? (lisible + commentaires)

```

En faisant abstration de la syntaxe particulière (il s'agit ici du langage R)
de ce programme simple, on comprend néanmoins à la lecture ce qu'il fait:
charger les données, les trier puis calculer la moyenne. On a de fait
simplement traduit notre pensée (le traitement que l'on souhaitait réaliser) en
jeu d'instructions. L'énorme avantage (par rapport à Excel) est que ce
programme réalise deux objectifs, il effectue d'une part les traitements et
d'autre part il documente cette chaîne de traitements, si bien que quiconque
est maintenant en mesure de reproduire ces traitements.


## De l'intérêt de la programmation


---

Les logiciels basés sur une interface graphique sont pléthores en informatique


* Limitation de manipulations via des GUI
  * Non reproductible 
  * Erreur possible
  * Limitation des manipulations
* Utilisation de macros Excel? -> une première forme de programmation

* Situation type, vous devez renommer un millier de fichiers car la
  convention de nommage a changé, comment faites-vous ?
* Scripts shells pour automatiser 

* Langage simples: Python et R
* Nouveaux environnements simplifiant l'approche de la programmation

* Beaucoup de resources en lignes (Softxware Carpentry), en présentiel
  (formations doctorales et conférences)
* 


--- 

### Abandonner les GUI et apprendre à programmer
* quel langage
* quelle formation
