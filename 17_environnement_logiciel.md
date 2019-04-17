# Environnement logiciel

Attention: 

- Un certain nombre des solutions proposées supposent que l'on s'est
  affranchi de l'interface graphique, que l'on a identifié les
  programmes à exécuter et comment les lancer en ligne de commande.
- Ici, nous n'évoquerons des solutions que pour les utilisateur de
  systèmes d'exploitation des familles Linux et macOS. Nous excluons
  Windows et Android (qui est un linux mais dont le système de
  gestion de logiciel est trop spécifique et trop mouvant).

Ce chapitre discute des environnements logiciels tout en essayant de
ne pas trop rentrer dans les détails techniques pour lesquels nous
renvoyons autant que possible vers d'autres ressources. 

On peut distinguer les trois enjeux suivants et qu'il conviendra de
garder en tête:

1. identifier et décrire un environnement
2. permettre à quelqu'un d'autre d'utiliser un environnement
3. construire une variation de cet environnement

Pour y arriver, on se heurte aux difficultés majeures suivantes:

1. Les différents systèems d'explications OS sont incompatibles les
   uns avec les autres. Il est très difficile de faire tourner un
   logiciel compilé pour un système Mac sur un système Linux. Les deux
   dérivent d'UNIX mais ont fait des choix d'interfaces différents.
2. Les différentes façons d'installer des logiciels qui ne sont pas
   standardisées. 
   
   - Sous MacOS, il existe au moins trois façons d'installer des
     logiciels `brew`, `McPorts`, et `Fink`. Ces trois systèmes
     s'ignorent plus ou moins les autres et d'expérience, il vaut
     mieux éviter de les mélanger sous peine de se retrouver avec des
     choses assez instables.
   - Sous Linux, selon votre distribution, vous utiliserez en général
     soit `apt / dpkg` (Debian, Ubuntu) soit `yum / rpm` (Redhat,
     Fedora).

   Il est bien sûr toujours possible de recompiler un logiciel "à la
   main" (`./configure; make`) mais il faudra avoir pris soin
   d'installer avant les bons compilateurs et l'ensemble des
   bibliothèques (et leurs `headers`), avec les bonnes version, ce qui
   est un des cauchemars que nous avons évoqués en
   section \@ref(complex-environment).

En résumé, il n'y a pas de solution simple à ces différents problèmes
et nous présentons différentes options, ayant chacune leurs
limitations, et plus ou moins adaptées aux besoins de chacun.

## Option 1: Identifier les dépendances

### Langage interprété

Si votre code se limiter à un langage, il est possible de passer par
le langage. La plupart des langages interprétés (en particulier R ou
python) permettent en effet une certaine "intro-spection" et donc de
récupérer la liste des bibliothèques chargées et leur numéro de
version. Voici par exemple comment cela peut être réalisé avec
Python3:

```python
def print_imported_modules():
    import sys
    for name, val in sorted(sys.modules.items()):
        if(hasattr(val, '__version__')): 
            print(val.__name__, val.__version__)
        else:
            print(val.__name__, "(unknown version)")

print("**** Package list in the beginning ****");
print_imported_modules()
print("**** Package list after loading pandas ****");
import pandas
print_imported_modules()
```

```
#+begin_example
**** Package list in the beginning ****
**** Package list after loading pandas ****
_csv 1.0
_ctypes 1.1.0
decimal 1.70
argparse 1.1
csv 1.0
ctypes 1.1.0
cycler 0.10.0
dateutil 2.7.3
decimal 1.70
distutils 3.6.5rc1
ipaddress 1.0
json 2.0.9
logging 0.5.1.2
matplotlib 2.1.1
numpy 1.14.5
numpy.core 1.14.5
numpy.core.multiarray 3.1
numpy.core.umath b'0.4.0'
numpy.lib 1.14.5
numpy.linalg._umath_linalg b'0.1.5'
pandas 0.22.0
_libjson 1.33
platform 1.0.8
pyparsing 2.2.0
pytz 2018.5
re 2.2.1
six 1.11.0
urllib.request 3.6
zlib 1.0
```

Cette méthode n'est pas complètement standard puisque certains
bibliothèques n'ont pas l'attribut `__version__`.

Et voici quelque chose d'équivalent avec le langage R à l'aide de la
bibliothèque `devtools`:

```R
sessionInfo()
devtools::session_info()
```

```
R version 3.5.1 (2018-07-02)
Platform: x86_64-pc-linux-gnu (64-bit)
Running under: Debian GNU/Linux buster/sid

Matrix products: default
BLAS: /usr/lib/x86_64-linux-gnu/blas/libblas.so.3.8.0
LAPACK: /usr/lib/x86_64-linux-gnu/lapack/liblapack.so.3.8.0

locale:
 [1] LC_CTYPE=fr_FR.UTF-8       LC_NUMERIC=C              
 [3] LC_TIME=fr_FR.UTF-8        LC_COLLATE=fr_FR.UTF-8    
 [5] LC_MONETARY=fr_FR.UTF-8    LC_MESSAGES=fr_FR.UTF-8   
 [7] LC_PAPER=fr_FR.UTF-8       LC_NAME=C                 
 [9] LC_ADDRESS=C               LC_TELEPHONE=C            
[11] LC_MEASUREMENT=fr_FR.UTF-8 LC_IDENTIFICATION=C       

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base     

loaded via a namespace (and not attached):
[1] compiler_3.5.1
Session info ------------------------------------------------------------------
 setting  value                       
 version  R version 3.5.1 (2018-07-02)
 system   x86_64, linux-gnu           
 ui       X11                         
 language (EN)                        
 collate  fr_FR.UTF-8                 
 tz       Europe/Paris                
 date     2018-08-01                  

Packages ----------------------------------------------------------------------
 package   * version date       source        
 base      * 3.5.1   2018-07-02 local         
 compiler    3.5.1   2018-07-02 local         
 datasets  * 3.5.1   2018-07-02 local         
 devtools    1.13.6  2018-06-27 CRAN (R 3.5.1)
 digest      0.6.15  2018-01-28 CRAN (R 3.5.0)
 graphics  * 3.5.1   2018-07-02 local         
 grDevices * 3.5.1   2018-07-02 local         
 memoise     1.1.0   2017-04-21 CRAN (R 3.5.1)
 methods   * 3.5.1   2018-07-02 local         
 stats     * 3.5.1   2018-07-02 local         
 utils     * 3.5.1   2018-07-02 local         
 withr       2.1.2   2018-03-15 CRAN (R 3.5.0)
```

Il est intéressant de remarquer dans cette sortie que certaines
informations concernent des bibliothèque R (`digest`, `memoise`, ...)
alors que d'autres concernent des bibliothèque C d'algèbre linéaires
optimisées (`BLAS` et `LAPACK`) et que R utilise pour la majorité de
ses calculs. Python est dans la même situation puisque c'est un
langage d'"assemblage" qui permet de facilement appeler et combiner
différents logiciels ou bibliothèques écrites dans d'autres langages
(C, FORTRAN, ...), mais l'introspection de Python se limite
principalement à lui-même et pas aux bibliothèques dont il
dépend. 

Cette liste de dépendances est donc un peu limitée et assez peu
précise mais très facile à récupérer. C'est donc une solution qui ne
vous coutera pas grand chose et une bonne pratique consiste à
récupérer systématiquement ce genre d'information (par exemple en
insérant les codes précédents au début de votre notebook Jupyter).
Vous remarquerez que la liste ainsi obtenue est facile à lire par un
humain mais n'est pas donnée dans un format particulièrement standard
et qu'il pourra être difficile de l'exploiter pour reconstruire un
ancien environnement ou bien pour le recréer sur une autre machine.

Pour en savoir plus sur les bibliothèques externes dont vous dépendez,
il faudra demander au gestionnaire de paquet du système d'exploitation.

### Gestionnaire de paquet du langage

R et python ont leur propre gestionnaire de paquets mais Python en a
plusieurs (`pip` ou `conda` par exemple). Voici par exemple comment on
peut obtenir la version de tous les packages installés sur sa machine:

```sh
pip3 freeze
```

```
asn1crypto==0.24.0
attrs==17.4.0
bcrypt==3.1.4
beautifulsoup4==4.6.0
bleach==2.1.3
...
pandas==0.22.0
pandocfilters==1.4.2
paramiko==2.4.0
patsy==0.5.0
pexpect==4.2.1
...
traitlets==4.3.2
tzlocal==1.5.1
urllib3==1.22
wcwidth==0.1.7
webencodings==0.5
```

Pip peut prendre cette sortie (obtenu avec l'argument `freeze`) en
entrée pour réinstaller (avec l'argument `install`). Mais il se peut
que plusieurs versions d'un même paquet aient été installées: celle du
système d'exploitations et celle (voir celles) de pip. Les
informations que vous obtenez ainsi ne sont que celles sur les paquets
que pip a installé. Vous n'obtenez donc pas toute l'information mais
c'est déjà mieux que rien...

### Gestionnaire de paquet du langage
Selon votre système d'exploitation, il est possible d'obtenir la liste
des paquets installés et leurs version. Par exemple, sous Linux Debian
ou Ubuntu, vous pourriez faire:

```sh
dpkg --get-selections 
```

```
accountsservice                                 install
acct                                            install
ack                                             install
acl                                             install
acroread:i386                                   install
acroread-data                                   install
acroread-debian-files:i386                      install
acroread-dictionary-en                          install
...
zeitgeist-core                                  install
zenity                                          install
zenity-common                                   install
zip                                             install
zlib1g:amd64                                    install
zlib1g:i386                                     install
zlib1g-dev:amd64                                install
zotero-standalone                               install
```

Sur ma machine il y en a 3639 et je peux obtenir les information
sur chaque paquet:

```sh
dpkg --status r-base
```

```
Package: r-base
Status: install ok installed
Priority: optional
Section: gnu-r
Installed-Size: 61
Maintainer: Dirk Eddelbuettel <edd@debian.org>
Architecture: all
Version: 3.5.1-1
Depends: r-base-core (>= 3.5.1-1), r-recommended (= 3.5.1-1)
Recommends: r-base-html, r-doc-html
Suggests: ess, r-doc-info | r-doc-pdf
```

Il est tout à fait possible d'automatiser ces collectes et même la
réinstallation de l'ensemble du système mais ces solutions vont être
spécifiques à chaque système d'exploitation.

Si cette liste est particulièrement exhaustive et précise, elle
contient hélas certainement une quantité d'information parfaitement
inutile à notre objet d'étude. En effet, la version de libreoffice et
de toutes ses dépendances et parfaitement inutile en terme de
reproductibilité des résultats d'un script R... Idéalement on
souhaiterait une solution qui ne capture que les informations
"utile". Certain de ces outils seront évoqués en
section \@ref(ENV:care-cde).

### Pour en savoir Plus 

## Option 2: tout figer (*a.k.a. Preserve the mess*)

### Isoler une machine

### Isoler un environnement à l'aide d'une machine virtuelle ou d'un container

### Des outils pour figer et partage un environnement {ENV:care-cde}
- Capture automatique de l'environnement
- [CDE](http://www.pgbovine.net/cde.html][CDE], [ReproZip](https://vida-nyu.github.io/reprozip/)

## Option 3: Les systèmes de gestions de paquets

GUIX et NIX

