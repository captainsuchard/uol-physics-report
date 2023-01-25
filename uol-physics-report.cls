%%
%% This is file `uol-physics-report.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% uol-physics-report.dtx  (with options: `class')
%% 
%% IMPORTANT NOTICE:
%% 
%% For the copyright see the source file.
%% 
%% Any modified versions of this file must be renamed
%% with new filenames distinct from uol-physics-report.cls.
%% 
%% For distribution of the original source see the terms
%% for copying and modification in the file uol-physics-report.dtx.
%% 
%% This generated file may be distributed as long as the
%% original source files, as listed above, are part of the
%% same distribution. (The sources need not necessarily be
%% in the same archive or directory.)
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uol-physics-report}
[2022/12/13 v0.1 A class providing special environments and commands for writing reports for laboratory courses realized by the Institute of Physics]
\LoadClass[a4paper,12pt,leqno]{article}
\RequirePackage{babel}
\RequirePackage[left=1.75cm,right=1.75cm,top=1.75cm,bottom=2cm,footskip=15pt]{geometry}
\RequirePackage{amsmath,amssymb,amsfonts,amsthm}
\RequirePackage{mathtools}
\RequirePackage{fancyhdr}
\RequirePackage{titling}
\RequirePackage{subcaption}
\RequirePackage{graphicx}
\RequirePackage{float}
\RequirePackage[bottom]{footmisc}
\RequirePackage[useregional]{datetime2}
\RequirePackage{listings}
\RequirePackage[hypcap=true]{caption}
\RequirePackage{pdfpages}
\RequirePackage{siunitx}
\RequirePackage{esdiff}
\RequirePackage{tcolorbox}
\RequirePackage{xcolor}
\RequirePackage{titleref}
\RequirePackage{parskip}
\RequirePackage{setspace}
\RequirePackage[european,siunitx]{circuitikz}
\RequirePackage[pdfusetitle,hidelinks]{hyperref}
\RequirePackage[nameinlink,capitalize]{cleveref}
\RequirePackage{arrayjobx}
\RequirePackage{multido}
\RequirePackage[compact]{titlesec}
\pagestyle{fancy}
\setlength{\headheight}{27.5pt}
\sisetup{group-digits=none, table-alignment=center, locale=DE, uncertainty-mode=separate, output-open-uncertainty = [, output-close-uncertainty = ]}
\fancyhead[L]{\small\multido{\iP=1+1}{\value{partnerCounter}}{\arrayx{PartnerLastNames}(\iP)\ifnumcomp{\iP}{<}{\value{partnerCounter}}{, }{}}}
\fancyhead[C]{\small\@title \\ \@moduleNumber \ -- \@moduleName}
\fancyhead[R]{\small\@date \\ \@semester}
\titleformat{\part}{\large\scshape}{\thepart}{1ex}{}
\titleformat{\section}{\bfseries}{\thesection}{1ex}{}
\titleformat{\subsection}{\slshape}{\thesubsection}{1ex}{}
\titleformat{\subsubsection}{\itshape}{\thesubsubsection}{1ex}{}
\titlespacing*{\part}{0pt}{0pt}{*1}
\titlespacing*{\section}{0pt}{*1}{*1}
\titlespacing*{\subsection}{0pt}{*1}{*1}
\titlespacing*{\subsubsection}{0pt}{*1}{*1}
\newarray\PartnerFirstNames
\newarray\PartnerLastNames
\newarray\PartnerEmails
\newarray\PartnerMatriculationNumbers
\newcounter{partnerCounter}
\newcommand{\rom}[1]{\uppercase\expandafter{\romannumeral #1\relax}}

\newcommand{\partner}[4]{%%
    \addtocounter{partnerCounter}{1}
    \PartnerFirstNames(\value{partnerCounter})={#1}
    \PartnerLastNames(\value{partnerCounter})={#2}
    \PartnerEmails(\value{partnerCounter})={#3}
    \PartnerMatriculationNumbers(\value{partnerCounter})={#4}
}
\newcommand{\module}[2]{
    \renewcommand{\@moduleNumber}{#1}
    \renewcommand{\@moduleName}{#2}
}
\newcommand{\@moduleNumber}{}
\newcommand{\@moduleName}{}
\newcommand{\tutor}[1]{
    \renewcommand{\@tutor}{#1}
}
\newcommand{\@tutor}{}
\newcommand{\supervisor}[1]{
    \renewcommand{\@supervisor}{#1}
}
\newcommand{\@supervisor}{}
\newcommand{\group}[1]{
    \renewcommand{\@group}{#1}
}
\newcommand{\@group}{}
\newcommand{\semester}[1]{
    \renewcommand{\@semester}{#1}
}
\newcommand{\@semester}{}
\renewcommand{\maketitle}{%
\begin{titlepage}
    \begin{center}
        \singlespacing
        \topskip0pt
        \vspace*{\fill}
        \pagenumbering{Roman}
        {\Large \@moduleName \ -- \@semester }\\
        \vspace{4em}
        {\huge \textsc{\thetitle}}\\
        \vspace{4em}
        {\Large \thedate}\\
        \vspace{0.5em}
        {\Large Gruppe \@group}\\
        \vspace{3em}
        \begin{tabular}[t]{c@{\extracolsep{8em}}c}
            {\Large\textbf{Betreuer}} & {\Large\textbf{Tutor}} \\
            {\large \@supervisor} & {\large \@tutor} \\
        \end{tabular}\\
        \vspace{3em}
        {\Large\textbf{Gruppenmitglieder}} \\~\\
        \multido{\iP=1+1}{\value{partnerCounter}}{%
        {\large\textit{\arrayx{PartnerFirstNames}(\iP) \arrayx{PartnerLastNames}(\iP)}} \\ \vspace{0.75em}
        Matrikelnummer: \arrayx{PartnerMatriculationNumbers}(\iP) \\ \vspace{0.5em}
        \href{mailto:\arrayx{PartnerEmails}(\iP)}{\arrayx{PartnerEmails}(\iP)} \\ \vspace{1.5em}
        }
        \vspace*{\fill}
        \thispagestyle{empty}
        \newpage
    \end{center}
    \tableofcontents
\end{titlepage}
\pagenumbering{arabic}
}
\endinput
%%
%% End of file `uol-physics-report.cls'.
