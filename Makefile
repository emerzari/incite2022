name = proposal

all:
	pdflatex  --shell-escape tex/summary.tex
	pdflatex  --shell-escape tex/narrative.tex
	pdflatex  --shell-escape tex/milestone.tex
	pdflatex  --shell-escape tex/publication.tex
	pdflatex  --shell-escape tex/personnel.tex
	pdflatex  --shell-escape bios/merzari_cv.tex
	pdflatex  --shell-escape bios/bolotnov_cv.tex
	pdflatex  --shell-escape bios/fischer_cv.tex
	pdflatex  --shell-escape bios/min_cv.tex
	pdflatex  --shell-escape bios/biosketch.tex

	pdflatex  --shell-escape $(name).tex
	pdflatex  --shell-escape $(name).tex
	bibtex $(name)
	bibtex $(name)
	pdflatex  --shell-escape $(name).tex
	pdflatex  --shell-escape $(name).tex
	bibtex $(name)
	bibtex $(name)
	pdflatex  --shell-escape $(name).tex
	rm n*.out s*.out m*.out p*out b*out
	rm n*.aux s*.aux m*.aux p*aux b*aux
	rm n*.log s*.log m*.log p*log b*log
	rm *.out *.bbl *.blg *.log *.aux *.spl
clean:
	rm *.toc *.out *.bbl *.blg *.log *.aux *.spl *.pdf

