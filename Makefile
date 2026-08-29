# Makefile für das APTH-Manifest (apth_declaration_de.tex, _en, _la)
# Benötigt LuaLaTeX und BibTeX. Aufruf: make (bzw. make clean)

TEX := apth_declaration_de.tex apth_declaration_en.tex apth_declaration_la.tex
PDF := $(TEX:.tex=.pdf)

.PHONY: all clean

all: $(PDF)

%.pdf: %.tex
	lualatex -interaction=nonstopmode -halt-on-error $<
	bibtex $(basename $@)
	lualatex -interaction=nonstopmode -halt-on-error $<
	lualatex -interaction=nonstopmode -halt-on-error $<

clean:
	rm -f $(PDF) *.aux *.bbl *.blg *.log *.out *.fls *.fdb_latexmk *.synctex.gz