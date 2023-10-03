% Intro Options
\ProvidesClass{plushcv}[2021/11/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[lmargin=0.9cm, vmargin=0.85cm, rmargin=0.9cm]{geometry}
\usepackage[hidelinks]{hyperref}
\usepackage{enumitem}
\usepackage{graphicx}
\usepackage{multicol}
\usepackage{pifont}
\usepackage[document]{ragged2e}


% Publications
\usepackage{cite}
\renewcommand\refname{\vskip -1.5cm}

% Color definitions
\usepackage[usenames,dvipsnames]{xcolor}
\definecolor{date}{HTML}{666666}
\definecolor{title}{HTML}{1C4FD9}
\definecolor{primary}{HTML}{334055}
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{65748A}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Main Title Font Definitions
%Used for Name  and Section Headings
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def \pathtitlefont {fonts/hankenGrotesk/} 
\def \firstnamefont {HankenGrotesk-SemiBold}
\def \secondnamefont {HankenGrotesk-SemiBold}
\def \titlefont {\firstnamefont}





%Main Font Definitions
\def \pathmainfont {fonts/hankenGrotesk/}
\def \mainfont {HankenGrotesk-Light}
\def \mainfontbold {HankenGrotesk-SemiBold}
\def \regular {HankenGrotesk-Regular}
\def \medium {HankenGrotesk-Medium}
\def \light {HankenGrotesk-Light}
\def \mainfontsize {9.5}
\def \mainsansfont {HankenGrotesk-Light}

%Main Subheading Font Definitions
%Used for company name and sub-skills
\def \pathsubheadingfont {\pathtitlefont}
\def \subheadingfont {\titlefont}
\def \subheadingsize {8}

%Main Job Descriptor and Location Font Definitions
%Used for company name and sub-skills
\def \pathdescriptorfont {\pathsubheadingfont}
\def \descriptorfont {\secondnamefont}
\def \descriptorsize {10}
\def \pathlocationfont {\pathsubheadingfont}
\def \locationfont {\subheadingfont}
\def \locationsize {8pt}

%Main Monospace Font Definitions 
%Used for Job Title and Contact Line 
\def \pathmonofont {fonts/hankenGrotesk/}
\def \monofont {HankenGrotesk-Light}


% Set main fonts
\usepackage{fontspec}
\setmainfont[Color=primary, Path = \pathmainfont,BoldFont=\mainfontbold,UprightFeatures={SizeFeatures={Size=\mainfontsize}},
  BoldFeatures={SizeFeatures={Size=\mainfontsize}}]{\mainfont}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = \pathmainfont,UprightFeatures={SizeFeatures={Size=\mainfontsize}}
  ]{\mainsansfont}

% Date command
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{isodate}
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\newcommand{\lastupdated}{\begin{textblock}{60}(155,5)
\color{date}\fontspec[Path = \pathmainfont]{\mainfont}\fontsize{8pt}{10pt}\selectfont 
Last Updated on \today
\end{textblock}}

% Name command


\newcommand{\namesection}[4]{
\begin{multicols}{2}
\begin{minipage}{0.45\textwidth} 
\RaggedRight{
\color{title}
\fontsize{40pt}{30pt}
\fontspec[Path = \pathtitlefont]{\firstnamefont}\selectfont #1 
\fontspec[Path = \pathtitlefont]{\secondnamefont}\selectfont #2
} \\[5pt]

\noindent\makebox[\linewidth]{\color{title}\rule{\paperwidth}{0pt}}
\vspace{-30pt}

\RaggedRight{\fontspec[Path = \pathmonofont]{\monofont}\fontsize{10pt}{8pt}\selectfont\textcolor{subheadings}{#3}}


\end{minipage}

\hspace{4.7cm} 
\begin{minipage}{0.55\textwidth}
\RaggedRight
\fontspec[Path = \pathmonofont]{\monofont}\fontsize{10pt}{8pt}\selectfont\textcolor{primary}{#4}
   
\end{minipage}
\end{multicols}

% \noindent\makebox[\linewidth]{\color{title}\rule{\paperwidth}{0pt}}
% \vspace{0.8pt}
}



% bottom sections starting from experience

% Section separators
\usepackage{titlesec}
\titlespacing{\section}{0pt}{5pt}{5pt}
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectiontopsep}{\vspace{4pt}} % Adjust the top space as needed
\newcommand{\sectionbottomsep}{\vspace{15pt}}

% Headings command
\titleformat{\section}{\color{title}
\scshape\fontspec[Path = \pathtitlefont]{\titlefont}\fontsize{16pt}{24pt}\selectfont \raggedright}{}{0em}{}

% Define a new command \workexperience with three arguments
\newcommand{\workexperience}[4]{%
\RaggedRight{
\color{black}
\fontsize{11pt}{30pt}
\fontspec[Path = \pathmainfont]{\light}\selectfont #1 
\textbullet{}\
\fontspec[Path = \pathtitlefont]{\secondnamefont}\selectfont #2
}
{\color{subheadings}\fontsize{10pt}{30pt}
\fontspec[Path = \pathmainfont]{\light}\selectfont #3 \rule[0.7ex]{1.3em}{0.5pt} #4}%
}

% Define a new command \projectheading with 2 arguments
\newcommand{\projectheading}[2]{
\RaggedRight{
    \fontsize{11pt}{30pt}
    \color{black}
    \fontspec[Path = \pathtitlefont]{\secondnamefont}\selectfont #1
}
\color{subheadings}\fontsize{10pt}{30pt} #2
    
}


% define new commmand for programming category
\newcommand{\skillcat}[1]{
\RaggedRight{
    \fontsize{11pt}{30pt}
    \color{black}
    \fontspec[Path = \pathtitlefont]{\secondnamefont}\selectfont #1
}    
}

% define achievementItem
\newcommand{\achievementitem}[2]{%
\RaggedRight{
\color{black}
\fontsize{11pt}{30pt}
\fontspec[Path = \pathmainfont]{\light}\selectfont #1
}
{\color{subheadings}\fontsize{10pt}{30pt}
\fontspec[Path = \pathmainfont]{\light}\selectfont #2
}%
}

% Sh 2 arub witheadgumentsings commandh
\titleformat{\subsection}{
\color{subheadings}\fontspec[Path = \pathsubheadingfont ]{\subheadingfont}\fontsize{\subheadingsize}{14pt}\selectfont\bfseries\uppercase}{}{0em}{}

%Subheadings on the right
\newcommand{\runsubsection}[1]{
\color{subheadings}\fontspec[Path = \pathsubheadingfont ]{\subheadingfont}\fontsize{\subheadingsize}{14pt}\selectfont\bfseries\uppercase {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{
\color{subheadings}\raggedright\scshape\fontspec[Path = \pathdescriptorfont]{\descriptorfont}\fontsize{\descriptorsize}{13pt}\selectfont {#1 \\} \normalfont}

% Location command
\newcommand{\location}[1]{
\color{headings}\raggedright\fontspec[Path = \pathlocationfont]{\locationfont}\fontsize{\locationsize}{12pt}\selectfont {#1\\} \normalfont}

%Contact Line
\newcommand{\contactline}[6]{%
  \begingroup
  #1\\[2.5pt]
  #2\\[2.5pt]
  #3\\[2.5pt]
  #4\\[2.5pt]
  #5\\[2.5pt]
  #6
  \endgroup
}



% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
\vspace{-\topsep}\begin{itemize}[label=\textbullet{}, leftmargin=10pt]\itemsep1pt \parskip4pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}

