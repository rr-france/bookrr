cp refs.bib refs-fixed.bib
sed -i 's|url = {//www.fun-mooc.fr/|url = {https://www.fun-mooc.fr/|g' refs-fixed.bib
sed -i 's|« |«~|g' refs-fixed.bib
sed -i 's| » |~»|g' refs-fixed.bib
mv refs-fixed.bib orefs-fixed.bib
perl bib-fix.pl < orefs-fixed.bib > refs-fixed.bib
rm orefs-fixed.bib
