# Makefile für das APTH-Manifest (apth_declaration_de.tex)
# Benötigt LuaLaTeX und BibTeX. Aufruf: make (bzw. make clean)

TEX := apth_declaration_de.tex
PDF := apth_declaration_de.pdf

.PHONY: all clean

all:
	lualatex -interaction=nonstopmode -halt-on-error $(TEX)
	bibtex apth_declaration_de
	lualatex -interaction=nonstopmode -halt-on-error $(TEX)
	lualatex -interaction=nonstopmode -halt-on-error $(TEX)

clean:
	rm -f $(PDF) *.aux *.bbl *.blg *.log *.out *.fls *.fdb_latexmk *.synctex.gz