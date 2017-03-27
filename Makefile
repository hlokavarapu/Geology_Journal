name = Notebook
all:
	pdflatex  --shell-escape $(name).tex
clean:
	rm *.out *.log *.aux *.pdf *.soc
