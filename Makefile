clean:
	ls | grep main | grep -v main.tex | xargs rm

main.pdf: main.tex pythonhighlight.sty
	pdflatex main && bibtex main && pdflatex main && pdflatex main

.PHONY: clean 
