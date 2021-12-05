all: 2017-12-04-notes.pdf 2017-12-04-slides.pdf 2017-12-04-slides-handout.pdf

2017-12-04-notes.pdf: 2017-12-04-notes.tex
	pdflatex 2017-12-04-notes
	bibtex 2017-12-04-notes
	pdflatex 2017-12-04-notes
	pdflatex 2017-12-04-notes

2017-12-04-slides.pdf: 2017-12-04-slides.tex
	xelatex 2017-12-04-slides
	xelatex 2017-12-04-slides

2017-12-04-slides-handout.pdf: 2017-12-04-slides.tex
	xelatex -jobname=2017-12-04-slides-handout '\def\ishandout{1} \input' 2017-12-04-slides
	xelatex -jobname=2017-12-04-slides-handout '\def\ishandout{1} \input' 2017-12-04-slides

clean:
	rm -f *.aux *.bbl *.blg *.log *.mps *.mpx *.nav *.out *.snm *.toc
	rm -f 2017-12-04-notes.pdf
	rm -f 2017-12-04-slides.pdf
	rm -f 2017-12-04-slides-handout.pdf
