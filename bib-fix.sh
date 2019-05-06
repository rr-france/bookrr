sed -i 's|url = {//www.fun-mooc.fr/|url = {https://www.fun-mooc.fr/|g' refs.bib
sed -i 's|« |«~|g' refs.bib
sed -i 's| » |~»|g' refs.bib
mv refs.bib orefs.bib
bib-fix.pl < orefs.bib > refs.bib
rm orefs.bib
