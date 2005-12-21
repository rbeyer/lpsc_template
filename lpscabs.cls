% This is a LaTeX 2e Class file for creating LPSC abstracts

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lpscabs}[2005/12/20 LPSC Abstract Class]

%% This class file will be based off of the article class, no need to
%% reinvent the wheel.  

% \ExecuteOptions{oneside,openright} % this provides a default option list

\ProcessOptions\relax
\LoadClass[twocolumn,twoside]{article}

%% Okay, now that the options are set and the article class is loaded in,
%% we now need to start detailing how we want this to be different than
%% the default article class.

% We use \sloppy to suppress word division and permit larger interword
% spacing so that lines are broken between words.
\sloppy

%%---------------------------- Global Settings ------------------------

%% Page Style to put numbers at the top.
\pagestyle{myheadings}

\setlength{\topmargin}{0in}         % = 1in because LaTeX adds 1in
\setlength{\topskip}{12pt}          % This is the height of the text.

\setlength{\oddsidemargin}{0in}   	% = 1.5in because LaTeX adds 1in
\setlength{\evensidemargin}{0in}    % = 1in because LaTeX adds 1in

\setlength{\columnsep}{18pt}

\setlength{\textheight}{8.5in}
\setlength{\textwidth}{6.5in}

\newcounter{Author_Number}
\setcounter{Author_Number}{1}

\newsavebox{\AuthorBox}
\newsavebox{\AffilBox}

% Alter some LaTeX defaults for better treatment of figures:
% See p.105 of "TeX Unbound" for suggested values.
% See pp. 199-200 of Lamport's "LaTeX" book for details.
%   General parameters, for ALL pages:
\renewcommand{\topfraction}{0.9}    % max fraction of floats at top
\renewcommand{\bottomfraction}{0.8} % max fraction of floats at bottom
%   Parameters for TEXT pages (not float pages):
\setcounter{topnumber}{2}
\setcounter{bottomnumber}{2}
\setcounter{totalnumber}{4}     % 2 may work better
\setcounter{dbltopnumber}{2}    % for 2-column pages
\renewcommand{\dbltopfraction}{0.9} % fit big float above 2-col. text
\renewcommand{\textfraction}{0.07}  % allow minimal text w. figs
%   Parameters for FLOAT pages (not text pages):
\renewcommand{\floatpagefraction}{0.9}      % require fuller float pages
% N.B.: floatpagefraction MUST be less than topfraction !!
\renewcommand{\dblfloatpagefraction}{0.99}   % require fuller float pages

%%---------------------------- Commands ----------------
%%
%% We need to create some commands that the LPSC template will use

\newenvironment{\titlearea}[1][Please enter a title]{%
\thispagestyle{empty}\onecolumn \noindent{\Large#1} %
}
{}

\newcommand{\runningtitle}[1]{%
\markboth{#1}{#1}

