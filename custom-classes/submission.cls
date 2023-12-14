% this is my first package
% 
% (c) Timothy Elder
%
%% This program can be redistributed and/or modified under the terms
%% of the LaTeX Project Public License Distributed from CTAN archives
%% in directory macros/latex/base/lppl.txt.
% 
\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesClass{submission}[2023/12/13 v1.0 TE's Custom LaTeX Class]
\LoadClass[12pt, oneside]{article}
\let\providelength\relax
\let\providecounter\relax

\RequirePackage{booktabs}
\RequirePackage{setspace}
\doublespacing

%% URLs style
\RequirePackage{color}
\RequirePackage[colorlinks=true, linkcolor=blue, filecolor=blue, urlcolor=blue, citecolor = blue]{hyperref}
  \urlstyle{same}

% Set up geometry
\RequirePackage{geometry}
\geometry{
    top=1in,
    bottom=1in,
    left=1in,
    right=1in
}

%% Figure Environment
\newenvironment{Figure}
  {\par\medskip\noindent\minipage{\linewidth}}
  {\endminipage\par\medskip}

\RequirePackage{titlesec}

\RequirePackage{etoolbox}
\RequirePackage{relsize}

% Quote environment 
\AtBeginEnvironment{quote}{\smaller\singlespacing}                

%% Abstract Styling
% \renewenvironment{abstract}{\noindent\itshape\ignorespaces\leftskip=1cm\rightskip=1cm}{\par\medskip}

% Section title formatting
\titleformat{\section}
  {\centering\large\bfseries\MakeUppercase}
  {\thesection}
  {1em}
  {}

% Subsection title formatting
\titleformat{\subsection}
  {\centering\normalfont\MakeUppercase}
  {\thesubsection}
  {1em}
  {}

%% Caption Styling
\RequirePackage{caption}
  \captionsetup{labelfont=bf}
\RequirePackage{floatrow}
  \floatsetup[figure]{capposition=top}
  \floatsetup[table]{capposition=top}

\endinput
%%
%% End of file `mypackage.sty'.