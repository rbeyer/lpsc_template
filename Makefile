# GNU Makefile for LaTeX stuff
#
# Ross Beyer	
#

title	= LPSC Abstract

LaTeX		= latex
BibTeX		= bibtex
dvips		= dvips
ps_viewer	= gv

# Pattern rule to make a .dvi file from a latex .tex file.
# It also runs BibTeX.
%.dvi: %.tex
	$(LaTeX) $<
	$(BibTeX) $*
	$(LaTeX) $<
	$(LaTeX) $<
	$(LaTeX) $<

# Pattern rule to make a .ps file from a .dvi file.
%.ps: %.dvi
	$(dvips) -t letter $< -o $(addsuffix .ps, $* )


# Define the root names of the various tex files to be built:
documents	= lpsc_abstract
dvi_files	= $(addsuffix .dvi, $(documents) )
ps_files	= $(addsuffix .ps, $(documents) )


# Targets:
ALL:	.BEGIN all .END
all:	view

dvi:	$(dvi_files)
ps:		dvi $(ps_files)
view:	ps
	$(ps_viewer) $(ps_files) &

# Targets that aren't actually associated with a file of that name
.PHONY: ALL all install clean .BEGIN .END

# Generic targets:
 
clean:
			rm -f $(documents).dvi $(documents).ps $(documents).lot $(documents).lof $(documents).toc

realclean:	clean
			rm -f *.log *.aux *.bbl *.blg

.BEGIN:
			@echo
			@echo "*** $(title) ***"
			@date
			@echo
 
.END:
			@echo
			@echo "*** $(title) Completed ***"
			@date
			@echo

