% Document Head
\documentclass[11pt, oneside]{book}
\input{latex-classnotes-preamble.tex}

% Main Body
\title{Title}
\author{Johnson Ng}

\begin{document}
\hypersetup{pageanchor=false}
\maketitle
\hypersetup{pageanchor=true}
\tableofcontents

\chapter*{List of Definitions}
\theoremlisttype{all}
\listtheorems{defn}

\chapter*{List of Theorems}
\theoremlisttype{allname}
\listtheorems{axiom,lemma,thm,crly,propo}



\end{document}
