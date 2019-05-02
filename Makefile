# Just a simple Makefile wrapper around latexmk, 
# simply because my hands are so used to typing 'make'

ABS = lpsc_abstract.pdf
COMPRESSED = $(addsuffix _compressed.pdf, $(basename $(ABS)))

.PHONY: abs compress clean realclean 
all: abs

%.pdf: %.tex
	latexmk $<

$(COMPRESSED): $(ABS)
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$@ $<

abs:
	latexmk

compress: $(COMPRESSED)

clean:
	latexmk -c

realclean:
	latexmk -C
	-@rm -f $(COMPRESSED)
