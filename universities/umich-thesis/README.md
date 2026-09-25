# UMich Thesis LaTeX Template

[![Open in LetX](https://img.shields.io/badge/Open%20in-LetX-9333EA.svg)](https://letx.app/templates/universities/umich-thesis/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

An unofficial Rackham dissertation template for Michigan with the handbook's title page and Doctoral Committee block, the identifier page with ORCID, and the abstract last in the front matter.

Edit and compile it in your browser at **[letx.app](https://letx.app/templates/universities/umich-thesis/)**, with no LaTeX install and real-time collaboration. A compile takes a few seconds.

![UMich Thesis preview](preview.png)

## What is in it
- Document class: `report` with `12pt, oneside`
- Compiler: pdflatex
- Files: `main.tex`, `preamble.tex`, `references.bib`, and 10 section files under `front/`, `sections/`

## Use it online
Open **[UMich Thesis on LetX](https://letx.app/templates/universities/umich-thesis/)** and click *Open as Template*. It is free.

## <a name="compile"></a>Compile locally
```bash
git clone https://github.com/Shahriar-Labs/latex-templates.git
cd latex-templates/universities/umich-thesis
latexmk -pdf main.tex
```

## About
Part of the free, open-source [LetX template library](https://letx.app/templates/): university and thesis templates for students, researchers and professionals. Built by [Shahriar Labs](https://shahriarlabs.com).

## License
MIT. See [LICENSE](LICENSE).
