# Just a simple Makefile wrapper around latexmk, 
# simply because my hands are so used to typing 'make'

all: abs

.PHONY: abs
abs:
	latexmk

.PHONY: clean
clean:
	latexmk -c

.PHONY: realclean
realclean:
	latexmk -C
