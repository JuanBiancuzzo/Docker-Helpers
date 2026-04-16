#!/bin/bash

pathActual="/latex"
pathCodigo="/scripts"

cp -r "${pathActual}/." "${pathCodigo}/"
cd $pathCodigo
ls

pdflatex main.tex
bibtex main
pdflatex main.tex
pdflatex main.tex

mv "${pathCodigo}/main.pdf" "${pathActual}/main.pdf"