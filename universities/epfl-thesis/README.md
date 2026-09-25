# EPFL Thesis LaTeX Template

[![Open in LetX](https://img.shields.io/badge/Open%20in-LetX-9333EA.svg)](https://letx.app/templates/universities/epfl-thesis/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

An unofficial EPFL thesis template in the doctoral school's section order, with abstracts and keywords in English and French, a single bibliography and a curriculum vitae at the end.

Edit and compile it in your browser at **[letx.app](https://letx.app/templates/universities/epfl-thesis/)**, with no LaTeX install and real-time collaboration. A compile takes a few seconds.

![EPFL Thesis preview](preview.png)

## What is in it
- Document class: `report` with `11pt, oneside, a4paper`
- Compiler: pdflatex
- Files: `main.tex`, `preamble.tex`, `references.bib`, and 9 section files under `front/`, `sections/`

## Use it online
Open **[EPFL Thesis on LetX](https://letx.app/templates/universities/epfl-thesis/)** and click *Open as Template*. It is free.

## <a name="compile"></a>Compile locally
```bash
git clone https://github.com/Shahriar-Labs/latex-templates.git
cd latex-templates/universities/epfl-thesis
latexmk -pdf main.tex
```

## About
Part of the free, open-source [LetX template library](https://letx.app/templates/): university and thesis templates for students, researchers and professionals. Built by [Shahriar Labs](https://shahriarlabs.com).

## License
MIT. See [LICENSE](LICENSE).
