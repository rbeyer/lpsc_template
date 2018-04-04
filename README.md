# LPSC LaTeX Abstract Template

This is a LaTeX 2e version of the of a LaTeX template for LPSC and
other LPI meetings.  This directory contains example files.  The template file
uses several pacakages, but most LaTeX distributions should have
these packages already.

Details about how to use the template can be found in the text of
the template file.  There is both a PNG and EPS version of the
figure depending on if you use pdflatex or latex, dvips, and ps2pdf.

| File               | Description                                                                      |
| ----               | -----------
| Makefile           | example GNU make file for use with the latex-mk system, optional                 |
| bibliography.bib   | Sample bibliography file                                                         |
| lb_fig1.eps        | Sample figure, EPS format                                                        |
| lb_fig1.png        | Sample figure, PNG format                                                        |
| lpsc_abstract.tex  | The template file.  Modify this with your own abstract.                          |
| lpscabs.sty        | The package file for setting things up, no modifications needed.                 |
| unsrtetal.bst      | A BibTeX .bst file that functions like unsrtnat, but shortens long author lists. |


## WARNING! WARNING! WARNING!

DISCLAIMER:  These files are not commissioned or supported by the
LPI.  We created it to make our own lives easier, and figured that
other folks might benefit from it.  This template is no substitute
for reading the appropriate style and formatting guides provided
by the LPI, as they are subject to change.  Don't blame us if the
LPI complains about your format (or rejects your abstract).


Now, get back to work and write that abstract!

Ross A. Beyer (Ross.A.Beyer@nasa.gov) and 
Moses P. Milazzo (moses@usgs.gov)



## Changelog

Apr 2018
- Discovered that the old margin handling was leaving too much margin at the top of the page because
	those LaTeX commands are confusing, have updated to use the geometry package, which is easier to
	control and produces better results.

Oct 2017
- The 'releases' below are from back in the SVN days, so this is the last one of these:
- Put in examples that use biber (which is better at making LPSC-style, compact 
	numbered reference paragraphs), and commented out the Bibtex stuff.

Release 1.4, Jan 2016
- Minor modification to make things consistent with the current style 
	of the LPI template.
- Added some additional preaching about color schemes.
- Added some information about dealing with double-wide-floats and
    the science.bst file.  Thanks to Lucy Lim.

Release 1.3, Jul 2011
- The \newcommand that set the bibliography font size needed to be 
	changed to a \renewcommand.  Thanks to Joseph Paul Cohen.


Release 1.2, Dec 2010
- Updated with hyperref examples (clickable URLs etc.)
- Added unsrtetal.bst, which converts the references to 
	'Author1 et al.' when needed to keep the bibliography short.

Release 1.1, Jan 2008
- Just updated information with comments from the LPI

Release 1.0, Jan 2008
