%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Thesis LaTeX Template - THESIS CLASS FILE
%
% This template has been downloaded from:
% http://www.latextemplates.com
%
% This class file defines the structure and design of the template.
%
% There is one part of this file that needs to be filled out - the variables
% dictating the document particulars such as the author name, university
% name, etc. You will find these in the commented "DOCUMENT VARIABLES"
% section below.
%
% The other two easily-editable sections are the margin sizes and abstract.
% These have both been commented for easy editing. Advanced LaTeX
% users will have no trouble editing the rest of the document to their liking.
%
% Original header:
%% This is file `Thesis.cls', based on 'ECSthesis.cls', by Steve R. Gunn
%% generated with the docstrip utility.
%%
%% Created by Steve R. Gunn, modified by Sunil Patel: www.sunilpatel.co.uk
%% Further modified by www.latextemplates.com
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{CIITThesis}
              [2007/22/02 v1.0
   LaTeX document class]
\def\baseclass{book}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\def\@checkoptions#1#2{
  \edef\@curroptions{\@ptionlist{\@currname.\@currext}}
  \@tempswafalse
  \@tfor\@this:=#2\do{
    \@expandtwoargs\in@{,\@this,}{,\@curroptions,}
    \ifin@ \@tempswatrue \@break@tfor \fi}
  \let\@this\@empty
  \if@tempswa \else \PassOptionsToClass{#1}{\baseclass}\fi
}
\@checkoptions{11pt}{{10pt}{11pt}{12pt}}
\PassOptionsToClass{a4paper}{\baseclass}
\ProcessOptions\relax
\LoadClass{\baseclass}
\newcommand\bhrule{\typeout{------------------------------------------------------------------------------}}

\newcommand\Declaration[1]{
\btypeout{Declaration of Authorship}
\addtotoc{Declaration of Authorship}
\thispagestyle{plain}
\null\vfil
%\vskip 60\p@
\begin{center}{\huge\bf Declaration of Authorship\par}\end{center}
%\vskip 60\p@
{\normalsize #1}
\vfil\vfil\null
%\cleardoublepage
}

\newcommand\btypeout[1]{\bhrule\typeout{\space #1}\bhrule}
\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space \number\year}
\usepackage{setspace}
\onehalfspacing
\setlength{\parindent}{0pt}
\setlength{\parskip}{2.0ex plus0.5ex minus0.2ex}
\usepackage{vmargin}

\RequirePackage[utf8]{inputenc} % Allows the use of international characters (e.g. Umlauts)

%----------------------------------------------------------------------------------------
%	MARGINS
%----------------------------------------------------------------------------------------
\setmarginsrb  { 1.5in}  % left margin
                        { 0.6in}  % top margin
                        { 1.0in}  % right margin
                        { 0.8in}  % bottom margin
                        {  20pt}  % head height
                        {0.25in}  % head sep
                        {   9pt}  % foot height
                        { 0.3in}  % foot sep
%----------------------------------------------------------------------------------------
\raggedbottom
\setlength{\topskip}{1\topskip \@plus 5\p@}
\doublehyphendemerits=10000       % No consecutive line hyphens.
\brokenpenalty=10000              % No broken words across columns/pages.
\widowpenalty=9999                % Almost no widows at bottom of page.
\clubpenalty=9999                 % Almost no orphans at top of page.
\interfootnotelinepenalty=9999    % Almost never break footnotes.

\usepackage{fancyhdr}

\lhead[\rm\thepage]{\fancyplain{}{\sl{\rightmark}}}
\rhead[\fancyplain{}{\sl{\leftmark}}]{\rm\thepage}
\chead{}\lfoot{}\rfoot{}\cfoot{}

\pagestyle{plain}
\fancyhf{} % Start with clearing everything in the header and footer
\fancyfoot[C]{\thepage}
%\fancypagestyle{fancy}%{%
    %\renewcommand{\headrulewidth}{0pt}%
 %   \fancyhf{}%
  %  \fancyfoot[C]{\thepage}%

\renewcommand{\chaptermark}[1]{\btypeout{\thechapter\space #1}\markboth{\@chapapp\ \thechapter\ #1}{\@chapapp\ \thechapter\ #1}}
\renewcommand{\sectionmark}[1]{}
\renewcommand{\subsectionmark}[1]{}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
%\thispagestyle{empty}
\newpage

\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\usepackage{amsmath,amsfonts,amssymb,amscd,amsthm,xspace}
\theoremstyle{plain}
\newtheorem{example}{Example}[chapter]
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{axiom}[theorem]{Axiom}
\theoremstyle{definition}
\newtheorem{definition}[theorem]{Definition}
\theoremstyle{remark}
\newtheorem{remark}[theorem]{Remark}
\usepackage[centerlast,small,sc]{caption}
\setlength{\captionmargin}{20pt}
\newcommand{\fref}[1]{Figure~\ref{#1}}
\newcommand{\tref}[1]{Table~\ref{#1}}
\newcommand{\eref}[1]{Equation~\ref{#1}}
\newcommand{\cref}[1]{Chapter~\ref{#1}}
\newcommand{\sref}[1]{Section~\ref{#1}}
\newcommand{\aref}[1]{Appendix~\ref{#1}}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{.85}
\renewcommand{\textfraction}{0.1}
\renewcommand{\dbltopfraction}{.85}
\renewcommand{\floatpagefraction}{0.75}
\renewcommand{\dblfloatpagefraction}{.75}
%\setcounter{topnumber}{9}
\setcounter{bottomnumber}{9}
\setcounter{totalnumber}{20}
\setcounter{dbltopnumber}{9}
\usepackage{graphicx}
\usepackage{epstopdf}
\usepackage{booktabs}
\usepackage{rotating}
\usepackage{listings}
\usepackage{lstpatch}
\lstset{captionpos=b,
        frame=tb,
        basicstyle=\scriptsize\ttfamily,
        showstringspaces=false,
        keepspaces=true}
\lstdefinestyle{matlab} {
        language=Matlab,
        keywordstyle=\color{blue},
        commentstyle=\color[rgb]{0.13,0.55,0.13}\em,
        stringstyle=\color[rgb]{0.7,0,0} }
\usepackage[pdfpagemode={UseOutlines},bookmarks=true,bookmarksopen=true,
   bookmarksopenlevel=0,bookmarksnumbered=true,hypertexnames=false,
   colorlinks,linkcolor={blue},citecolor={blue},urlcolor={red},
   pdfstartview={FitV},unicode,breaklinks=true]{hyperref}
\pdfstringdefDisableCommands{
   \let\\\space
}
\newcommand*{\external}[1]{\def\extname{#1}}
\newcommand*{\supervisor}[1]{\def\supname{#1}}
\newcommand*{\cosupervisor}[1]{\def\cosupname{#1}}
\newcommand*{\hod}[1]{\def\hodname{#1}}
\newcommand*{\dean}[1]{\def\deanname{#1}}
\newcommand*{\chairman}[1]{\def\chairname{#1}}
\newcommand*{\thesistitle}[1]{\def\ttitle{#1}}
\newcommand*{\examiner}[1]{\def\examname{#1}}
\newcommand*{\degree}[1]{\def\degreename{#1}}
\newcommand*{\authors}[1]{\def\authornames{#1}}
\newcommand*{\addresses}[1]{\def\addressnames{#1}}
\newcommand*{\university}[1]{\def\univname{#1}}
\newcommand*{\UNIVERSITY}[1]{\def\UNIVNAME{#1}}
\newcommand*{\department}[1]{\def\deptname{#1}}
\newcommand*{\DEPARTMENT}[1]{\def\DEPTNAME{#1}}
\newcommand*{\campus}[1]{\def\campusname{#1}}
\newcommand*{\CAMPUS}[1]{\def\CAMPUSNAME{#1}}
\newcommand*{\PROGRAM}[1]{\def\PROGNAME{#1}}
\newcommand*{\program}[1]{\def\progname{#1}}
\newcommand*{\group}[1]{\def\groupname{#1}}
\newcommand*{\GROUP}[1]{\def\GROUPNAME{#1}}
\newcommand*{\faculty}[1]{\def\facname{#1}}
\newcommand*{\FACULTY}[1]{\def\FACNAME{#1}}
\newcommand*{\subject}[1]{\def\subjectname{#1}}
\newcommand*{\keywords}[1]{\def\keywordnames{#1}}
\newcommand*{\regnum}[1]{\def\regnum{#1}}
\newcommand*{\semester}[1]{\def\semname{#1}}
\newcommand*{\SEMESTER}[1]{\def\SEMNAME{#1}}
\newcommand*{\logo}[1]{\def\logofile{#1}}

%----------------------------------------------------------------------------------------
%	DOCUMENT VARIABLES
%	Fill in the lines below to update the thesis template
%	If you wish to cite each of the variables defined below, look at the
%	section above for the citation command e.g. \examiner{} below is
%	defined as \examname above so you cite it as \examname
%----------------------------------------------------------------------------------------

%\thesistitle{Scheduling of Sporadic Events in Wireless Sensor Networks} % Your thesis title - this is used in the title and abstract
%-------------------------------------------------
%\supervisor{Dr. James \textsc{Smith}} % You supervisor's name - this is used in the title page
%-------------------------------------------------
\examiner{} % Your examiner's name - this is not currently used anywhere in the template, cite it with \examname if you want it
%-------------------------------------------------
\degree{Doctor of Philosophy} % Your degree name - this is currently used in the title page and abstract

%-------------------------------------------------

%-------------------------------------------------
\addresses{} % Your address - this is not currently used anywhere in the template, cite it with \addressnames if you want it
%-------------------------------------------------
\subject{} % Your subject area - this is not currently used anywhere in the template, cite it with \subjectname if you want it
%-------------------------------------------------
\keywords{} % Keywords for your thesis - this is not currently used anywhere in the template, cite it with \keywordnames if you want it
%-------------------------------------------------

%-------------------------------------------------
\UNIVERSITY{\texorpdfstring{ % Your university's URL
                {UNIVERSITY NAME (IN BLOCK CAPITALS)}} % Your university's name in capitals - this is currently used in the abstract page
                {UNIVERSITY NAME (IN BLOCK CAPITALS)}}
%-------------------------------------------------
\CAMPUS{\texorpdfstring{ % Your university's URL
                {ISLAMABAD}} % Your university's name in capitals - this is currently used in the abstract page
                {ISLAMABAD}}
%-------------------------------------------------
\PROGRAM{\texorpdfstring{ % Your university's URL
                {COMPUTER SCIENCE}} % Your university's name in capitals - this is currently used in the abstract page
                {COMPUTER SCIENCE}}
%-------------------------------------------------
\department{\texorpdfstring{\href{Department or School Web Site URL Here (include http://)} % Your department's URL
                {Department or School Name}} % Your department's name - used in the title page and abstract
                {Department or School Name}}
%-------------------------------------------------
\DEPARTMENT{\texorpdfstring{\href{Department or School Web Site URL Here (include http://)} % Your department's URL
                {DEPARTMENT OR SCHOOL NAME (IN BLOCK CAPITALS)}} % Your department's name in capitals - this is not currently used anywhere in the template, cite it with \DEPTNAME if you want it
                {DEPARTMENT OR SCHOOL NAME (IN BLOCK CAPITALS)}}
%-------------------------------------------------
\group{\texorpdfstring{\href{Research Group Web Site URL Here (include http://)} % Your research group's URL
                {Research Group Name}} % Your research group's name - this is currently used in the title page
                {Research Group Name}}
%-------------------------------------------------
\GROUP{\texorpdfstring{\href{Research Group Web Site URL Here (include http://)} % Your research group's URL
                {RESEARCH GROUP NAME (IN BLOCK CAPITALS)}} % Your research group's name in capitals - this is not currently used anywhere in the template, cite it with \GROUPNAME if you want it
                {RESEARCH GROUP NAME (IN BLOCK CAPITALS)}}
%-------------------------------------------------
\faculty{\texorpdfstring{\href{Faculty Web Site URL Here (include http://)} % Your faculty's URL
                {Faculty Name}} % Your faculty's name - this is currently used in the abstract page
                {Faculty Name}}
%-------------------------------------------------
\FACULTY{\texorpdfstring{\href{Faculty Web Site URL Here (include http://)} % Your faculty's URL
                {FACULTY NAME (IN BLOCK CAPITALS)}} % Your faculty's name in capitals - this is not currently used anywhere in the template, cite it with \FACNAME if you want it
                {FACULTY NAME (IN BLOCK CAPITALS)}}
%-------------------------------------------------
%-------------------------------------------------
\SEMESTER{\texorpdfstring{%\href{Faculty Web Site URL Here (include http://)} % Your faculty's URL
                {FALL, 2017}} % Your faculty's name in capitals - this is not currently used anywhere in the template, cite it with \FACNAME if you want it
                {FALL, 2017}}
%----------------------------------------------------------------------------------------

% The default title page, this is not used in this www.latextemplates.com version
\renewcommand\maketitle{
  \btypeout{Title Page}
%  \thispagestyle{empty}
  \begin{titlepage}
    \let\footnotesize\small
    \let\footnoterule\relax
    \let \footnote \thanks
    \setcounter{footnote}{0}
   % \null\vfil
  %  \vskip .1\p@

  \end{titlepage}
%  \thispagestyle{empty}
    \begin{center}
      \setlength{\parskip}{0pt}
      {\LARGE \@title \par}
\bigskip
\bigskip
\bigskip
\vfill
      \includegraphics[height=2in, width=2.1in]{\logofile}
       \vfill
\bigskip
\bigskip
\bigskip
      {\large \emph{By} \par}
      \smallskip
      {\Large{\authornames} \par}
      {\Large{\regnum} \par}
%\bigskip
%\bigskip
%\bigskip
      {\Large{PhD Thesis}\par}
      {\Large{ In} \par}
      {\Large{ \progname} \par}
      \vfill
\bigskip
\bigskip
\bigskip
\bigskip


%      {\large in the \par}
      {\LARGE {\univname} \par}
      {\LARGE {\campusname~-~Pakistan} \par}
      \bigskip
      \bigskip
      \bigskip
      {\Large \semname \par}
      \bigskip
    \end{center}
    \par
    \@thanks
    \vfil\null



    \newpage

%  \thispagestyle{empty}

    \begin{center}
%\begin{flushright}
	\hspace{-1.5cm}\includegraphics[height=0.5in, width=.55in]{\logofile}
%\end{flushright}
      {	\Large \textbf{\univname} \par  }
 \vskip 30\p@
      {\LARGE\@title \par}
    \vskip25\p@
  {\large { A Thesis Presented to} \par}
 \vskip 30\p@
      \Large {\univname , Islamabad}
    \vskip 35\p@
     \large { In partial fulfillment 			\par
     % \bigskip
      of the requirements for the degree of	\par}
    \vskip40\p@
      {\LARGE{PhD (Computer Engineering)}}		\par
    \vskip 20\p@

      {By}\par
      {\large \authornames}\par
      {\large \regnum}\par
% \vskip 10\p@
 {\Large{\semname}}
    \newpage
%{\LARGE\@title\par}
\end{center}




  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
  \cleardoublepage
}
\newcommand*\varhrulefill[1][0.4pt]{\leavevmode\leaders\hrule height#1\hfill\kern0pt}
\newcommand{\signatureline}[1]{%
  \begin{tabular}{@{}p{1\linewidth}@{}}
    %\hline \\
     #1 \noindent\varhrulefill[.1mm]
  \end{tabular}
}

\newcommand{\externalline}[1]{%
  \begin{tabular}{@{}p{.6\linewidth}@{}}
    %\hline \\
     #1 \noindent\varhrulefill[.1mm]
  \end{tabular}
}

\newcommand\makefinalapproval{
%  \btypeout{Approval Page}
%  \thispagestyle{empty}
%  \begin{approval}
    \let\footnotesize\small
    \let\footnoterule\relax
    \let \footnote \thanks
%    \setcounter{footnote}{0}

      \setlength{\parskip}{0pt}
      {\centering \LARGE \bf Final Approval \hrule height .1mm\par }
      \bigskip
      {\centering\large \bigskip This thesis titled \par}
      \bigskip
      {\centering\LARGE  \ttitle \par}
      \bigskip
      {\centering By \par}
      {\centering\Large\emph{\authornames} \par}
      {\centering\Large\emph{\underline{\regnum}} \par}
      \smallskip
      {\centering Has been approved \par}
      \bigskip
      {\centering For the \univname, \campusname \par}
      \bigskip
      {\signatureline{External Examinar 1:}\par}
       %{\centering\hspace{2cm} \externalline{\underline{Prof. Dr. Muhammad Sher}}\par\hspace{2cm}\externalline{Professor and Dean, Faculty of Basic and Applied Sciences, International Islamic University, Islamabad}\par}
      %%{\centering \hspace{1.1cm} {{Prof. Dr. Ijaz Mansoor Qureshi,}}\par \hspace{1cm} {{Department of Electrical Engineering,}}\par \hspace{0.7cm} {{Air University, Islamabad}}\par}
\bigskip
      {\signatureline{External Examinar 2:}\par}
      %%{\centering \hspace{1.1cm} {{Prof. Dr. Habibullah Jamal,}}\par \hspace{1cm} {{Faculty of Engineering Sciences,}}\par \hspace{0.5cm} {{Ghulam Ishaq Khan Institute of Engineering Sciences and Technology, Swabi}}\par}
\bigskip

      {\signatureline{Supervisor:}\par}
      {\centering\supname, \par Department of Computer Science, Islamabad \par}
\bigskip
      {\signatureline{HoD:}\par}
      {\centering\hodname, \par Department of \progname, Islamabad \par}

%\bigskip
 %     {\signatureline{Chairperson:}\par}
  %    {\centering\chairname, \par Department of \progname, Islamabad \par}
\bigskip
      %{\signatureline{Dean faculty of Engineering:}\par}
%      {\centering\deanname \par}
%\bigskip
%       {\signatureline{Co-supervisor:}\par}
    %  {\centering\cosupname, Assistant Professor, \par Department of \progname, Islamabad \par}
      {\signatureline{Dean:}\par}
      {\centering\deanname, \par Faculty of \progname, Islamabad \par}
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
  \cleardoublepage
}
\newcommand\makefi{
%  \thispagestyle{empty}
    \let\footnotesize\small
    \let\footnoterule\relax
    \let \footnote \thanks
      \setlength{\parskip}{0pt}
      {\centering\LARGE \ttitle \bigskip\hrule\par}
      \bigskip
      \bigskip
      {\normalsize{A Post Graduate Thesis submitted to the department of Electrical Engineering as partial fulfillment of the requirements for the award of Degree of PhD (Electrical Engineering)}
      \par}


      \bigskip
     \bigskip
    \bigskip
      \bigskip
      {\LARGE
      \begin{center}
      \begin{tabular}{|l|l|}
      \hline

\rowcolor{lightgray} \hline {Name} & {Registration Number}\\\hline
      \authornames & \regnum\\
      \hline
      \end{tabular}
      \end{center}
      }
       \bigskip
    \bigskip
      \bigskip
      \bigskip
      \bigskip
      \bigskip
      {\Large\textbf{Supervisor}\par}
      \bigskip
      \bigskip
      \bigskip
     \bigskip
      \bigskip
      \bigskip
      {\Large\supname, \par}
     %{\Large  Associate Professor,\par}
      {\large Associate Professor, Department of Computer Science, \par COMSATS Institute of Information Technology,  \par Islamabad. \par}
      %{\Large \univname,\par}
      %{\Large Islamabad\par}
  %{\Large April, 2017}% to write date under supervisor credentials.

      \bigskip
      \bigskip
      \bigskip
      \bigskip
      \bigskip
      \bigskip
   %   {\LARGE\textbf{Co-Supervisor}\par}
      %{\Large\cosupname, Assistant Professor, \par}
%      {\Large Assistant Professor\par}
      %{\Large Department of \progname, \par COMSATS Institute of Information Technology, Islamabad. \par}
%      {\Large \univname,\par}
%      {\Large Islamabad\par}


  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
  \cleardoublepage
}
\newcommand\makeded{
%  \thispagestyle{empty}

%  \setlength{\parskip}{0pt}
      {\centering\Huge \bf  \bigskip\par}
 {.}
 {\vskip 150\p@\par\center\Large\textbf {DEDICATION}\par}
 \vskip 30\p@
 {\center\Large {To  my beloved family, teachers, and friends}\par}
% \vskip 10\p@
% {\center\Large\textbf{\&}\par}
% \vskip 10\p@
% {\center\Large\textbf {COMSATS Institute of Information Technology}\par}


  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
  \cleardoublepage
}
\newcommand\makedeclaration{
%\begin{declaration}
 % \thispagestyle{empty}
  \bigskip
  {\centering \Large \bf \underline{{Author's Declaration}}\par}
  \bigskip
  {I \authornames, \regnum~hereby state that my PhD thesis titled ``User Comfort Aware Energy Management System for Smart Homes'' is my own work and has not been submitted previously by me for taking any degree from this University i.e., COMSATS Institute of Information Technology or anywhere else in the country/ world. \par}
  {At any time if my statement is found to be incorrect even after I graduate the University has the right to withdraw my PhD degree.\par}
  \bigskip
\bigskip
\bigskip
\bigskip
\bigskip
\bigskip
\bigskip
{Date:\noindent\varhrulefill[.1mm]\noindent \hfill\hfill Signature of the student: \par}\bigskip

  \bigskip
  \bigskip
  %{\hfill\hfill\hfill\noindent\varhrulefill[.1mm]\par}
{\raggedleft \bf \authornames \par \par}
  {\raggedleft \regnum \par \par}



%  {Date:\noindent\varhrulefill[.5mm]\noindent \hfill\hfill \par}%Signature of Student:

%  {\hfill\hfill\hfill\noindent\varhrulefill[.5mm]\par}
  %{\raggedleft \authornames\parc\par}
  %\cleardoublepage
%\end{declaration}
\setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
  \cleardoublepage


}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand\makeplagundertaking{
%\begin{declaration}
 % \thispagestyle{empty}
  \bigskip
  {\centering \Large \bf \underline{{Plagiarism Undertaking}}\par}
  \bigskip
  {I solemnly declare that research work presented in this thesis titled, ``User Comfort Aware Energy Management System for Smart Homes'' is solely my research work with no significant contribution from any other person. Small contribution/ help wherever taken has been duly acknowledged and that complete thesis has been written by me. \par}
  {I understand the zero tolarnace policy of HEC and COMSATS Institute of Information Technology towards plagiarism. Therefore, I as an author of the above titled thesis declare that no portion of my thesis has been plagiarized and any material used as reference is properly referred/ cited. \par}
  {I undertake if I am found guilty of any formal plagiarism in the above titled thesis even after award of PhD degree, the University reserves the right to withdraw/ revoke my PhD degree and that HEC and the university has the right to publish my name on the HEC/ university website on which names of students are placed who submitted plagiarized thesis. \par}
  \bigskip
\bigskip
\bigskip
\bigskip
\bigskip
\bigskip
\bigskip
{Date:\noindent\varhrulefill[.1mm]\noindent \hfill\hfill Signature of the student: \par}\bigskip

  \bigskip
  \bigskip
  %{\hfill\hfill\hfill\noindent\varhrulefill[.1mm]\par}
%  {\hfill\hfill\hfill\noindent\varhrulefill[.1mm]\par}
{\raggedleft \bf \authornames \par \par}
  {\raggedleft \regnum \par \par}



%  {Date:\noindent\varhrulefill[.5mm]\noindent \hfill\hfill \par}%Signature of Student:

%  {\hfill\hfill\hfill\noindent\varhrulefill[.5mm]\par}
  %{\raggedleft \authornames\parc\par}
  %\cleardoublepage
%\end{declaration}
\setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
  \cleardoublepage


}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand\makecertificateofapproval{
%  \btypeout{Approval Page}
%  \thispagestyle{empty}
%  \begin{approval}
    \let\footnotesize\small
    \let\footnoterule\relax
    \let \footnote \thanks
%    \setcounter{footnote}{0}

      \setlength{\parskip}{0pt}
      %\centering \Large \bf \underline
      {\centering \Large \bf \underline{Certificate of Approval}\par }
      \bigskip
      %{\centering\large  Realistic Scheduling Mechanisms for Smart Homes\par}
      \bigskip
      {\normalsize{This is to certify that the research work presented in this theis, entitled ``User Comfort Aware Energy Management System for Smart Homes'' was conducted by Mr. Muhammad Babar Rasheed under the supervision of Dr. Nadeem Javaid. No part of this thesis has been submitted anywhere else for any other degree. This thesis is submitted to the Dempartment of Electrical Engineering, COMSATS Institute of Information Technology Islamabad, in the partial fulfillment of the requirement for the degree of Doctor of Philosophy in the field of electrical engineering.}
      \par}
      \bigskip
      \bigskip
      \bigskip
      \bigskip
      {Muhammad Babar Rasheed \hfill\hfill Signature::\noindent\varhrulefill[.1mm] \par}\bigskip
      {\textbf{Examinations Committe:} \par}
      \bigskip
      \bigskip
      \bigskip
      \bigskip
{External Examiner 1: ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ External Examinar 2: \par}\bigskip
{(Designation and Office Address) \hfill\hfill (Designation and Office Address)\par}\bigskip
{................................................... \hfill ................................................... \par}\bigskip
{................................................... \hfill ................................................... \par}\bigskip
%{................................................... \hfill ................................................... \par}\bigskip

\bigskip
\bigskip
\bigskip
{Dr. Nadeem Javaid ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~Prof. Dr. M.Junaid Mughal \par}%\bigskip
{Supervisor, ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Chairperson/HoD,\par}%\bigskip
{Department of Computer Science\hfill\hfill  Department of Electrical Engineering  \par}%\bigskip
{CIIT, Islamabad.~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~CIIT, Islamabad.  \par}%\bigskip
\bigskip
\bigskip
\bigskip
\bigskip
\bigskip
{Prof. Dr. Shahid A Khan\par}%\bigskip
{Dean, Faculty of Engineering  \par}%\bigskip
%{Faculty of Engineering \par}%\bigskip
{CIIT.  \par}%\bigskip
      %{\centering\LARGE  \ttitle \par}
%      \bigskip
%      {\centering By \par}
%      {\centering\Large\emph{\authornames} \par}
%      {\centering\Large\emph{\underline{\regnum}} \par}
%      \smallskip
%      {\centering Has been approved \par}
%      \bigskip
%      {\centering For the \univname, \campusname \par}
%      \bigskip
%      {\signatureline{External Examinar 1:}\par}
%       %{\centering\hspace{2cm} \externalline{\underline{Prof. Dr. Muhammad Sher}}\par\hspace{2cm}\externalline{Professor and Dean, Faculty of Basic and Applied Sciences, International Islamic University, Islamabad}\par}
%      %%{\centering \hspace{1.1cm} {{Prof. Dr. Ijaz Mansoor Qureshi,}}\par \hspace{1cm} {{Department of Electrical Engineering,}}\par \hspace{0.7cm} {{Air University, Islamabad}}\par}
%\bigskip
%      {\signatureline{External Examinar 2:}\par}
%      %%{\centering \hspace{1.1cm} {{Prof. Dr. Habibullah Jamal,}}\par \hspace{1cm} {{Faculty of Engineering Sciences,}}\par \hspace{0.5cm} {{Ghulam Ishaq Khan Institute of Engineering Sciences and Technology, Swabi}}\par}
%\bigskip
%
%      {\signatureline{Supervisor:}\par}
%      {\centering\supname, \par Department of Computer Science, Islamabad \par}
%\bigskip
%      {\signatureline{HoD:}\par}
%      {\centering\hodname, \par Department of \progname, Islamabad \par}
%
%%\bigskip
% %     {\signatureline{Chairperson:}\par}
%  %    {\centering\chairname, \par Department of \progname, Islamabad \par}
%\bigskip
%      %{\signatureline{Dean faculty of Engineering:}\par}
%%      {\centering\deanname \par}
%%\bigskip
%%       {\signatureline{Co-supervisor:}\par}
%    %  {\centering\cosupname, Assistant Professor, \par Department of \progname, Islamabad \par}
%      {\signatureline{Dean:}\par}
%      {\centering\deanname, \par Faculty of \progname, Islamabad \par}
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
  \cleardoublepage
}
\newcommand\makecertificate{
%  \begin{certificate}
 % \thispagestyle{empty}
  \bigskip

  {\centering \Large \bf {Certificate}\par}
  \bigskip
  {It is certified that \authornames, \regnum~~has carried out all the work related to this thesis under my supervision at the Department of \progname, COMSATS Institute of Information Technology, \campusname~and the work fulfills the requirement for award of PhD degree.\par}
\bigskip
\bigskip
\bigskip\bigskip\bigskip\bigskip\bigskip\bigskip
  {Date:\noindent\varhrulefill[.1mm]\noindent \hfill \hfill Supervisor:~~~~~~~~~~~~\par}\bigskip
  \bigskip
  \bigskip
  \bigskip
  {\hfill\hfill\hfill\noindent\varhrulefill[.1mm]\par}
  {\raggedleft \supname, \par \par}
  {\raggedleft Associate Professor~~\par}
  %{\raggedleft Department of Computer science, \par}
  %{\raggedleft\univname, \campusname .\par}
\bigskip
\bigskip
 % {Date:\noindent\varhrulefill[.1mm]\noindent \hfill\hfill Co-supervisor:\par}\bigskip
\bigskip
\bigskip
\bigskip
 % {\hfill\hfill\hfill\noindent\varhrulefill[.1mm]\par}
%  {\raggedleft \cosupname, \par \par}
  %{\raggedleft Assistant Professor,}
  %{\raggedleft Department of~\progname, \par}
  %{\raggedleft\univname, \campusname .\par}
 \bigskip\bigskip\bigskip
  {Head of Department:}


  \bigskip\bigskip\bigskip\bigskip
  {\noindent\varhrulefill[.1mm] \hfill\hfill  \par}
  {\hodname,\par}
  %{Head\par}
  {Department of Electrical Engineering\par}
 % {\univname,~\campusname . \par}
  \cleardoublepage
%\end{certificate}

}%----------------------------------------------------------------------------------------
%	ABSTRACT PAGE DESIGN
%----------------------------------------------------------------------------------------

    \newpage
\newenvironment{abstract}[1]
{
  \btypeout{Abstract Page}
  \thispagestyle{empty}
  \null\vfil
  \begin{center}
    \setlength{\parskip}{0pt}
    {\huge\uppercase{{\textbf{ABSTRACT}}} \par}
    \bigskip

  \end{center}
\textit{#1}}
%----------------------------------------------------------------------------------------
{
  \vfil\vfil\vfil\null
  \cleardoublepage
}
\addtocounter{secnumdepth}{1}
\setcounter{tocdepth}{6}
\newcounter{dummy}

\newcommand\addtotoc[1]{
\refstepcounter{dummy}
\addcontentsline{toc}{chapter}{#1}
}

\renewcommand\tableofcontents{
\btypeout{Table of Contents}
%\addtotoc{Contents}
\begin{spacing}{1}{
   %\setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
   \chapter*{\vspace{-2cm}\contentsname \vspace{-1cm}
       \@mkboth{
          \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}
    \@starttoc{toc}
   \if@restonecol\twocolumn\fi
  \cleardoublepage
}\end{spacing}
}

\renewcommand\listoffigures{
\btypeout{List of Figures }
%\addtotoc{List of Figures}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
\chapter*{\vspace{-2cm}\hspace{-8.5cm}\large\MakeUppercase\listfigurename \hrule \vspace{-2cm}
         \@mkboth{\MakeUppercase\listfigurename}
              {\MakeUppercase\listfigurename}}
    \@starttoc{lof}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
}\end{spacing}
}
\renewcommand\listoftables{
\btypeout{List of Tables}
%\addtotoc{List of Tables}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\vspace{-2cm}\hspace{-9cm}\large\MakeUppercase\listtablename \hrule \vspace{-2cm}
          \@mkboth{
          \MakeUppercase\listtablename}{\MakeUppercase\listtablename}}
    \@starttoc{lot}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
}\end{spacing}
}
\newcommand\listsymbolname{Abbreviations}
\usepackage{longtable}
\newcommand\listofsymbols[2]{
\btypeout{\listsymbolname}
\addtotoc{\listsymbolname}
    \chapter*{\listsymbolname
      \@mkboth{
          \MakeUppercase\listsymbolname}{\MakeUppercase\listsymbolname}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}
\newcommand\listconstants{Physical Constants}
\usepackage{longtable}
\newcommand\listofconstants[2]{
\btypeout{\listconstants}
\addtotoc{\listconstants}
    \chapter*{\listconstants
      \@mkboth{
          \MakeUppercase\listconstants}{\MakeUppercase\listconstants}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}
\newcommand\listnomenclature{Symbols}
\usepackage{longtable}
\newcommand\listofnomenclature[2]{
\btypeout{\listnomenclature}
\addtotoc{\listnomenclature}
    \chapter*{\listnomenclature
      \@mkboth{
          \MakeUppercase\listnomenclature}{\MakeUppercase\listnomenclature}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}
\newcommand\acknowledgements[1]{
\btypeout{Acknowledgements}
\addtotoc{Acknowledgements}
\thispagestyle{plain}
\begin{center}{\huge{\textit{Acknowledgements}} \par}\end{center}
{\normalsize #1}
\vfil\vfil\null

}
\newcommand\dedicatory[1]{
\btypeout{Dedicatory}
\thispagestyle{plain}
\null\vfil
\vskip 60\p@
\begin{center}{\Large \sl #1}\end{center}
\vfil\null
\cleardoublepage
}
\renewcommand\backmatter{
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \addtotoc{\bibname}
  \btypeout{\bibname}
  \@mainmatterfalse}
\endinput
