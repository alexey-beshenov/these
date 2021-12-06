# LaTeX source for “Zeta-values of arithmetic schemes at negative integers and Weil-étale cohomology”

PhD thesis by Alexey Beshenov,
advised by
Baptiste Morin (Université de Bordeaux) and
Bas Edixhoven (Universiteit Leiden).


* Defended in Leiden on December 10, 2018

* Copy at Leiden University digital archive:
  https://hdl.handle.net/1887/68224


## Articles based on the thesis

For a more streamlined exposition and more complete results
(also with some minor corrections), see my preprints

* [arXiv:2012.11034](https://arxiv.org/abs/2012.11034):
  Weil-étale cohomology and duality for arithmetic schemes in negative weights

* [arXiv:2102.12114](https://arxiv.org/abs/2102.12114):
  Weil-étale cohomology and zeta-values of arithmetic schemes at negative integers


## Errata

The source files in this repository correspond to the original version of my
thesis, as it was distributed to the referees and defended in Leiden on
December 10, 2018. No mathematical or typografical modifications have been made.

Here is a very short list of misprints that I've noticed:

* **Equation (0.3.2)**:
  “∃!h” should be “∃h”

* **First equation in §0.4**:
  “P<sub>•</sub>” should be “P<sup>•</sup>”

* **§0.9**:
  a more correct section title would be “Modified étale cohomology with compact
  support”, or “à la Zink” (cf. Appendix 2 to K. Haberland, *Galois cohomology
  of algebraic number fields* (1978)).

* **Equation in Remark 0.9.2**:
  “*” should better be “•”

* **End of §0.11**:
  “Fact 0.11.1” should be “Fact 0.11.12” (fixed in the LaTeX source)

* **§1.4, paragraph before equation (1.4.1)**:
  “Theéorème 5.1” should be “Théorème 5.1”

* **§2.2**:
  the map RΓ(X<sub>ét</sub>, -) → RΓ(X<sub>Zar</sub>, -) that is used to define
  the regulator goes in the wrong direction.  See the correct definition in
  [arXiv:2102.12114](https://arxiv.org/abs/2102.12114)


## Contents

* `these.tex`:
  main file to compile

* `definitions.tex`:
  basic LaTeX definitions

* `title-dutch.tex`, `title-french.tex`:
  title page, as required by the University of Leiden
  (resp. University of Bordeaux)

* `algant.mp`, `leiden.pdf`, `u-bordeaux.pdf`:
  logos of ALGANT, Leiden, Bordeaux for the title page

* `abstract-en.tex`, `abstract-fr.tex`, `abstract-nl.tex`:
  short abstract in English / French / Dutch

* `abstract-fr-extended.tex`:
  extended French abstract, as required by the University of Bordeaux

* `introduction.tex`:
  Introduction

* `0-preliminaries.tex`:
  Chapter 0, Preliminaries

* `1-cohomology.tex`:
  Chapter 1, Weil-étale complexes

* `2-conjecture.tex`:
  Chapter 2, Conjecture about zeta-values

* `acknowledgments.tex`:
  Acknowledgments

* `Makefile`:
  GNU Makefile (run `make all` to compile all)

* `vitae.tex`:
  my Curriculum Vitae, as required by the Leiden University

* `these.bib`:
  BibTeX bibliography

* `amsalpha-cust.bst`:
  custom bibliography style that incorporates links


### Misc.

* `cover.pdf`:
  thesis cover

* `stellingen.tex`:
  my “stellingen” for the Leiden defense

* `project.tex`:
  original thesis project

* `leiden-2017-05-15/`:
  slides for a talk in Leiden (general context)

* `leiden-2017-12-04/`:
  slides and notes for a talk in Leiden (more technical details)

* `sortbib.pl`:
  a short script for sorting and pretty-printing the .bib entries

* `pdfa.xmpi`, `these.xmpdata`:
  some files to produce PDF/A


## Compiling from the source

Assuming `pdflatex`, `xelatex`, `bibtex`, `mpost` etc. are present in the
system, together with the required LaTeX packages and fonts, running `make`
should be enough.
