MD_FILE_LIST=index.md $(wildcard [0-9][0-9]*.md) refs-fixed.bib
RMD_FILE_LIST=$(patsubst %.md,%.Rmd,$(MD_FILE_LIST))


all: html pdf epub

.PHONY: all Rmd

Rmd: $(RMD_FILE_LIST)

refs-fixed.bib: refs.bib
	./bib-fix.sh

%.Rmd: %.md
	ln -sf $^ $@

.PHONY: epub
epub: Rmd
	Rscript -e "rmarkdown::render_site(output_format = 'bookdown::epub_book', encoding = 'UTF-8')"
	mv _book/booksprintrr.epub .

.PHONY: html
html: Rmd
	Rscript -e "rmarkdown::render_site(output_format = 'bookdown::gitbook', encoding = 'UTF-8')"
	rm -rf html;
#	cd _book/; cp A-preambule.html index.html; cd ..
	mv _book/ html

.PHONY: pdf
pdf: Rmd
	# switch PATH to call latex/xelatex instead of plain xelatex
	# so that we can fix the tex file (see the next target)
	rm -f booksprintrr.aux booksprintrr.blg booksprintrr.bbl
	env SAVEDPATH="$$PATH" PATH="latex:$$PATH" \
	Rscript -e "rmarkdown::render_site(output_format = 'bookdown::pdf_book', encoding = 'UTF-8')"
	mv _book/booksprintrr.pdf .

# called by latex/xelatex to fix tex source file
fix-booksprintrr.tex: booksprintrr.tex
	sed -i -e 's/\\BREAKME//g'  \
	    -e 's|documentclass\(.*\){book}|documentclass\1{latex/krantz}|g' \
	    -e 's|^.*usepackage.*geometry.*$$||g' \
	    -e 's|begin{center}\\large#1\\end{center}|begin{center}\\Large#1\\end{center}|g' \
	    -e 's|\\addcontentsline{toc}{chapter}{.*}||g' \
	    -e 's|author{\(.*\)Facilitatrice|author{\1\\\\\\medskip Facilitratice|g' \
	    -e 's|^.*usepackage.*natbib.*$$|\\usepackage[sectionbib]{natbib}|g' \
	    -e 's|^\\bibliography{refs-fixed.bib}$$||g' \
	    -e 's|^\\renewcommand\\bibname{Bibliographie}$$|\\renewcommand\\bibname{Bibliographie}\\bibliography{refs-fixed.bib}|g' \
	    booksprintrr.tex
	cp booksprintrr.tex booksprintrr.tex.bak
	cat booksprintrr.tex.bak |   \
	     perl -e 'while(<>) { if($$_=~/Redefines \\(sub\\)paragraphs/) {foreach $$i (1..8) {<>;}; next}; print($$_);}' |   \
	     perl -e 'while(<>) { if($$_=~/hypertarget\{section\}/) {<>; next}; print($$_);}'  \
	    > booksprintrr.tex
	rm -f booksprintrr.tex.bak
	touch $@

.PHONY: clean distclean
clean::
	#rm -rf booksprintrr.* _book/ rm -f *.Rmd;
	Rscript -e "rmarkdown::clean_site(encoding = 'UTF-8')"
	$(RM) *.Rmd
	$(RM) booksprintrr.aux booksprintrr.log booksprintrr.toc \
	  booksprintrr.blg booksprintrr.out fix-booksprintrr.tex

distclean:: clean
	rm -rf html booksprintrr.pdf booksprintrr.epub

.PHONY: zip
zip: pdf html epub
	zip -r bookrr.zip html/ booksprintrr.pdf booksprintrr.epub

