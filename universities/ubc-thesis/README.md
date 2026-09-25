# UBC Thesis LaTeX Template

[![Open in LetX](https://img.shields.io/badge/Open%20in-LetX-9333EA.svg)](https://letx.app/templates/universities/ubc-thesis/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

An unofficial UBC dissertation template with the Faculty of Graduate and Postdoctoral Studies title page, the committee page as ii, and the abstract, lay summary and preface pages.

Edit and compile it in your browser at **[letx.app](https://letx.app/templates/universities/ubc-thesis/)**, with no LaTeX install and real-time collaboration. A compile takes a few seconds.

![UBC Thesis preview](preview.png)

## What is in it
- Document class: `report` with `12pt, oneside, openany`
- Compiler: pdflatex
- Files: `main.tex`, `preamble.tex`, `references.bib`, and 10 section files under `front/`, `sections/`

## Use it online
Open **[UBC Thesis on LetX](https://letx.app/templates/universities/ubc-thesis/)** and click *Open as Template*. It is free.

## <a name="compile"></a>Compile locally
```bash
git clone https://github.com/Shahriar-Labs/latex-templates.git
cd latex-templates/universities/ubc-thesis
latexmk -pdf main.tex
```

## About
Part of the free, open-source [LetX template library](https://letx.app/templates/): university and thesis templates for students, researchers and professionals. Built by [Shahriar Labs](https://shahriarlabs.com).

## License
MIT. See [LICENSE](LICENSE).
