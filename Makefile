# Makefile für das APTH-Manifest (erklärung.tex)
# Benötigt LuaLaTeX und BibTeX. Aufruf: make (bzw. make clean)

TEX := erklärung.tex
PDF := erklärung.pdf

.PHONY: all clean

all:
	lualatex -interaction=nonstopmode -halt-on-error $(TEX)
	bibtex erklärung
	lualatex -interaction=nonstopmode -halt-on-error $(TEX)
	lualatex -interaction=nonstopmode -halt-on-error $(TEX)

clean:
	rm -f $(PDF) *.aux *.bbl *.blg *.log *.out *.fls *.fdb_latexmk *.synctex.gz