% ==================================================================
% winning.cls
% Class file for "Winning at a Losing Game"
% ==================================================================

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{winning}[2025/10/26 v0.2 Winning at a Losing Game class]

% -----
% Base class: memoir
% -----
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}}
\ProcessOptions\relax
\LoadClass[11pt,twoside,onecolumn]{memoir}

% ==================================================================
% PACKAGES AND GLOBAL SETUP
% ==================================================================

\RequirePackage[T1]{fontenc}
\RequirePackage{fontspec}
\setmainfont{Cardo}

% Layout: prefer memoir for now
% \setstocksize{9in}{6in}
% \settrimmedsize{9in}{6in}{*}
% \settypeblocksize{*}{30pc}{1.618}
% \setlrmargins{*}{*}{1.2}
% \setulmargins{*}{*}{1.2}
% \checkandfixthelayout

\RequirePackage{graphicx}
\RequirePackage{marginnote}
\RequirePackage{soul}

\RequirePackage{imakeidx}
\makeindex

\RequirePackage{enotez}
\setenotez{
    backref=true,
    totoc,
    split=chapter
}

\RequirePackage{hyperref}
\hypersetup{
    colorlinks=true,
    linkcolor=black,
    citecolor=black,
    filecolor=black,
    urlcolor=black,
    linktoc=page,
    bookmarks=true
}

\RequirePackage[
    backend=biber,
    natbib=true,
    style=authoryear,
    sorting=ynt,
    url=false,
    eprint=false,
    isbn=false
]{biblatex}

% --------------------------------------------------
% *** CRITICAL BEHAVIOR DECISION ***
% Map all footnotes to endnotes.
% This guarantees: nothing appears as a page footnote.
% --------------------------------------------------
\let\footnote=\endnote

% ==================================================================
% CUSTOM MACROS / COMMANDS
% ==================================================================

% 1. Handy cite macro.
% First use of a source: full citation in an endnote.
% Usage in chapters:  "...which others have noted\safecite{smith1999}."
%
% Under the hood this just wraps \fullcite in an \endnote,
% so it respects the global "everything is an endnote" rule.
\newcommand{\safecite}[1]{%
    \endnote{\fullcite{#1}}%
}



% Minor cleanup: remove the trailing semicolon+space in the last item if you care.
% You can leave it ugly for now or we can refine later.

% Epigraph width
\setlength{\epigraphwidth}{0.8\textwidth}

% Attribution macro
\newcommand{\attrib}[1]{%
    \nopagebreak{\raggedleft\footnotesize #1\par}
}

% Book title macro
\RequirePackage{xspace}
\newcommand{\winning}{\textit{Winning at a Losing Game }\xspace}

% Title page layout registers
\newlength{\tpheight}\setlength{\tpheight}{0.9\textheight}
\newlength{\txtheight}\setlength{\txtheight}{0.9\tpheight}
\newlength{\tpwidth}\setlength{\tpwidth}{0.9\textwidth}
\newlength{\txtwidth}\setlength{\txtwidth}{0.9\tpwidth}
\newlength{\drop}

% Custom title page
\newcommand*{\titleGM}{%
  \begingroup
    \drop = 0.1\txtheight
    \vspace*{\baselineskip}
    \vfill
    \hbox{%
      \hspace*{0.2\txtwidth}%
      \rule{1pt}{\txtheight}%
      \hspace*{0.05\txtwidth}%
      \parbox[b]{\txtwidth}{%
        \vbox{%
          \vspace{\drop}
          {\noindent\HUGE\bfseries Winning at a Losing Game}\\[1\baselineskip]
          {\Large\itshape Medicine's Limit in Caring for the Dying}\\[6\baselineskip]
          {\Large Timothy B. Elder}\par
          \vspace{0.5\txtheight}
        }%
      }%
    }%
    \vfill
    \null
  \endgroup
}

% Convenience wrappers
\newcommand{\printbookendnotes}{%
    \printendnotes
}

\newcommand{\printbookindex}{%
    \clearpage
    \addcontentsline{toc}{chapter}{Index}%
    \printindex
}

\endinput