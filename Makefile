name = cheatsheet
src = $(name).tex
pdf = $(name).pdf
svg = $(name).svg

.PHONY: all clean

all: $(svg)

$(svg): $(pdf)
	pdf2svg $(pdf) $(svg)

$(pdf): $(src)
	pdflatex $(src)

clean:
	rm -f *.pdf *.svg *.aux *.out *.log
