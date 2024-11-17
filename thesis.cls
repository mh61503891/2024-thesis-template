\ProvidesClass{thesis}[2024/11/17 v3.00 thesis by M.Higashino]

% jlreq – Japanese document class based on requirements for Japanese text layout
% https://ctan.org/pkg/jlreq
\LoadClass[
  report,
  paper=a4paper,
  jafontsize=12pt,
  oneside,
  dvipdfmx,
]{jlreq}
\jlreqsetup{
  thebibliography_heading={
    \chapter*{\refname}
    \addcontentsline{toc}{chapter}{\refname}
  },
}
\NewPageStyle{thesis}{
  running_head_position=top-left,
  nombre_position=top-right,
  odd_running_head=_chapter,
  even_running_head=_chapter,
  mark_format={_chapter={第\thechapter 章\quad #1}},
}
\pagestyle{thesis}

% amsmath – AMS mathematical facilities for LaTeX
% https://ctan.org/pkg/amsmath
\RequirePackage{amsmath}

% amsfonts – TeX fonts from the American Mathematical Society
% https://ctan.org/pkg/amsfonts
\RequirePackage{amsfonts}

% numprint – Print numbers with separators and exponent if necessary
% https://ctan.org/pkg/numprint
\RequirePackage{numprint}

% siunitx – A comprehensive (SI) units package
% https://ctan.org/pkg/siunitx
\RequirePackage{siunitx}

% url – Verbatim with URL-sensitive line breaks
% https://ctan.org/pkg/url
\RequirePackage{url}

% ascmac – Boxes and picture macros with Japanese vertical writing support
% https://ctan.org/pkg/ascmac
\RequirePackage{ascmac}

% graphicx – Enhanced support for graphics
% https://ctan.org/pkg/graphicx
\RequirePackage[dvipdfmx]{graphicx}

% subcaption – Support for sub-captions
% https://ctan.org/pkg/subcaption
\RequirePackage{silence}
\WarningFilter{caption}{Unknown document class (or package)}
\RequirePackage[skip=0pt]{subcaption}

% hyperref – Extensive support for hypertext in LaTeX
% https://ctan.org/pkg/hyperref
% 他のパッケージよりも後ろで読み込む必要がある。
\RequirePackage[dvipdfmx]{hyperref}
\hypersetup{
  hidelinks,
  setpagesize=false,
  bookmarksopen,
  bookmarksnumbered,
  breaklinks,
}

% pxjahyper – Hyperref support for pLaTeX
% https://ctan.org/pkg/pxjahyper
% hyperref.styが生成するしおりの文字化けを自動で防ぐ。
\RequirePackage[dvipdfmx]{pxjahyper}

% commands
\newcommand\figref[1]{図~\ref{#1}}
\newcommand\tabref[1]{表~\ref{#1}}

% acknowledge
\def\acknowledgename{謝辞}
\def\acknowledge{
  \chapter*{\acknowledgename}
  \addcontentsline{toc}{chapter}{\acknowledgename}
}

% makethesistitle
\RequirePackage{xkeyval}
\define@cmdkeys{thesis}[thesis@]{
  type,
  organization,
  division,
  title,
  studentnumber,
  author,
  date,
}
\def\makethesistitle[#1]{
  \setkeys{thesis}{#1}
  \thispagestyle{empty}
  \begin{center}
  \vspace*{3cm}
  \LARGE{\thesis@type\par} % 種類
  \vspace*{1cm}
  \Huge{\textbf{\thesis@title}\par} % 題目
  \vfill
  \Large{\thesis@date\par} % 日付
  \vspace*{1cm}
  \Large{\thesis@organization\par} % 組織
  \Large{\thesis@division\par} % 所属
  \LARGE{\thesis@studentnumber\quad\thesis@author\par} % 学生番号 著者
  \end{center}
}

% maketableofcontents
\def\maketableofcontents{
  \newpage
  \setcounter{tocdepth}{3}
  \tableofcontents
  \newpage
  \listoffigures
  \newpage
  \listoftables
}
