name = Geology_Journal
all:
	pdflatex  --shell-escape $(name).tex
	bibtex $(name)
	pdflatex  --shell-escape $(name).tex
	pdflatex  --shell-escape $(name).tex
	rm *.out *.bbl *.blg *.log *.aux
clean:
	rm *.pdf
