% Document Head
\documentclass[notoc,notitlepage]{tufte-book}
% \nonstopmode % uncomment to enable nonstopmode
\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{3}
\renewcommand{\baselinestretch}{1.1}

\usepackage{classnotetitle}

\title{Title}
\author{Johnson Ng}
\subtitle{Subtitle}
\credentials{BMath (Hons), Pure Mathematics major, Actuarial Science Minor}
\institution{University of Waterloo}

\input{latex-classnotes-preamble.tex}

\begin{document}
\hypersetup{pageanchor=false}
\maketitle
\hypersetup{pageanchor=true}
\tableofcontents

\chapter*{\faBook List of Definitions}
\theoremlisttype{all}
\listtheorems{defn}

\chapter*{\faCoffee List of Theorems}
\theoremlisttype{allname}
\listtheorems{axiom,lemma,thm,crly,propo}



\nobibliography*
\bibliography{bibliography}

\pagestyle{empty}
\printindex

\end{document}
