# HKN Review Session Master Slide Repository

The basic idea of the code structure is you write the content in a file in a class's `topics` directory.
If you write your module in Markdown it gets auto-compiled to LaTeX.

In the respective document for a given exam (`mt1.tex`, `mt2.tex`, `mt3.tex`, `final.tex`) place `\input{topics/filename}` if it is a `.tex` or `\input{md-topics/filename}` if it is a `.md`.

As much of the common stuff to every review session (disclaimer, slide posting location, etc.) is defined in the `standard-content.tex` file. There is simple parameterization. This content is included with `\input{../standard-content}`.

All formatting that is universal to all classes belongs in `master-header.tex`.
If a class needs libraries unlikely to be used by other classes (like the EE's with circuitikz) then they can include that in `header.tex` in their class directory.

To see the example run `./render_slides.sh example-class mt1`.

# Requirements

`pandoc` is needed to compile markdown to LaTeX. Fun fact: `pandoc` is written and maintained by a UC Berkeley Philosophy Professor.

A fully working LaTeX installation (including beamer, pdfLaTeX, and latexmk) is required. Painful fact: TeX was originally written by a professor at the Leland Stanford Junior University. Neutral fact: LaTeX was originally authored by someone working in industry.

GNU Bash extensions are used by `./render_slides.sh`, so be sure to use a genuine bash [If you don't know what this means you're fine].

# Acknowledgements

Slide content has been written by generations of the Mu Chapter of HKN.

File structure and compiling code originally written by Parth Nobel with design input from George Hutchinson and Naomi Sagan.

