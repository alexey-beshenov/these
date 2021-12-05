all: 2017-05-15-slides.pdf 2017-05-15-slides-handout.pdf

zeta.mps: zeta.mp
	mpost zeta

zeta-pos.mps: zeta-pos.mp
	mpost zeta-pos

2017-05-15-slides.pdf: 2017-05-15-slides.tex zeta.mps zeta-pos.mps
	xelatex 2017-05-15-slides
	xelatex 2017-05-15-slides

2017-05-15-slides-handout.pdf: 2017-05-15-slides.tex zeta.mps zeta-pos.mps
	xelatex -jobname=2017-05-15-slides-handout '\def\ishandout{1} \input' 2017-05-15-slides
	xelatex -jobname=2017-05-15-slides-handout '\def\ishandout{1} \input' 2017-05-15-slides

clean:
	rm -f *.aux *.log *.mps *.mpx *.nav *.out *.snm *.toc
	rm -f 2017-05-15-slides.pdf
	rm -f 2017-05-15-slides-handout.pdf
