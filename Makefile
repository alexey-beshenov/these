all: these-fr.pdf these-nl.pdf stellingen.pdf project.pdf leiden-2017-05-15 leiden-2017-12-04

THESIS_FILES = abstract-en.tex abstract-en.tex abstract-fr-extended.tex		\
               abstract-fr.tex abstract-fr.tex abstract-nl.tex abstract-nl.tex	\
               acknowledgments.tex algant.mps amsalpha-cust.bst definitions.tex	\
               introduction.tex leiden.pdf preliminaries.tex regulator.tex	\
               rgammawc.tex title-dutch.tex title-french.tex vitae.tex		\
               these.bib these.tex u-bordeaux.pdf

algant.mps: algant.mp
	mpost algant

project.pdf: project.tex
	pdflatex project

stellingen.pdf: stellingen.tex
	pdflatex stellingen

these-fr.pdf: $(THESIS_FILES)
	pdflatex -jobname='these-fr' these
	bibtex these-fr
	pdflatex -jobname='these-fr' these
	pdflatex -jobname='these-fr' these

these-nl.pdf: $(THESIS_FILES)
	pdflatex -jobname='these-nl' '\let\dutch=1 \input' these
	bibtex these-nl
	pdflatex -jobname='these-nl' '\let\dutch=1 \input' these
	pdflatex -jobname='these-nl' '\let\dutch=1 \input' these

leiden-2017-05-15:
	$(MAKE) -C leiden-2017-05-15

leiden-2017-12-04:
	$(MAKE) -C leiden-2017-12-04

clean:
	rm -f algant.mps
	rm -f project.pdf
	rm -f stellingen.pdf
	rm -f these-fr.pdf
	rm -f these-nl.pdf
	rm -f *.aux *.bbl *.blg *.log *.mpx *.out *.toc
	$(MAKE) -C leiden-2017-05-15 clean
	$(MAKE) -C leiden-2017-12-04 clean

.PHONY: clean leiden-2017-05-15 leiden-2017-12-04
