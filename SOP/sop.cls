%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Statement of Purpose Template
%% Author – Aravind Vasudevan
%% Email  – aravind_vasudevan@outlook.com
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{sop}[2018/12/26 Statement of Purpose]

\LoadClass[12pt, a4paper]{article}
\RequirePackage[a4paper, margin=0.6in]{geometry}
\RequirePackage[hidelinks, pdfusetitle]{hyperref}
\RequirePackage{fontspec, xcolor, sectsty, setspace}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Options [color, font]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\definecolor{headingcolor}{HTML}{4d7ea8}
\definecolor{margincolor}{HTML}{2e4b64}

\newcommand\headingcolor{}
\newcommand\margincolor{}

\DeclareOption{color}{
    \renewcommand\headingcolor{\color{headingcolor}}
    \renewcommand\margincolor{\color{margincolor}}
    \sectionfont{\fontsize{14}{15}\selectfont \color{headingcolor}}
}

\DeclareOption{font}{
    \defaultfontfeatures{Mapping=tex-text,Scale=MatchLowercase}
    \setromanfont[Ligatures={Common}]{Adobe Caslon Pro}
    \setmonofont[Scale=0.8]{Monaco}
    \setsansfont[Scale=0.9]{Optima}
}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Make Title
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand\author[2]{
    \gdef\@author{\href{#1}{#2}}
    \hypersetup{pdftitle={\@title},pdfauthor={#2}}
}
\newcommand\email[1]{\gdef\email{\href{mailto:#1}{#1}}}
\renewcommand{\maketitle}{
  \begin{center}
    {\headingcolor \Huge \scshape \@title}
    {\margincolor \rule{\linewidth}{0.5mm}}
    {\normalsize \headingcolor \@author \hfill \email}
  \end{center}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Font / Paragraph Styling
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setlength\parindent{0pt}
\onehalfspacing