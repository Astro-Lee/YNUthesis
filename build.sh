#!/usr/bin/env sh
rm -rf *.ins *.aux *.glo *.hd *.idx *.log *.out *.toc
xetex YNUthesis.dtx
# xelatex YNUthesis.dtx

latexmk