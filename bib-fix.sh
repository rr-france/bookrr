sed -i 's|url = {//www.fun-mooc.fr/|url = {https://www.fun-mooc.fr/|g' refs.bib
sed -i 's|« |«~|g' refs.bib
sed -i 's| » |~»|g' refs.bib

sed -i 's|url\s*=\s*{\(.*\)}|note = {URL:~\\url{\1}}|g' refs.bib

sed -i 's|urldate = {\([0-9]*\)}| year = {\1}|g' refs.bib
sed -i 's|urldate = {\([0-9]*\)-.*}|year = {\1}|g' refs.bib

sed -i 's|isbn\s*=\s*{\(.*\)}|note = {ISBN:~\\textsf{\1}}|g' refs.bib
