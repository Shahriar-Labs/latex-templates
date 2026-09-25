# Yale Thesis LaTeX Template

[![Open in LetX](https://img.shields.io/badge/Open%20in-LetX-9333EA.svg)](https://letx.app/templates/universities/yale-thesis/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

An unofficial Yale dissertation template: the abstract before the title page, the Graduate School's title wording, the copyright notice 3in down, double spacing and Roman numbers from iii.

Edit and compile it in your browser at **[letx.app](https://letx.app/templates/universities/yale-thesis/)**, with no LaTeX install and real-time collaboration. A compile takes a few seconds.

![Yale Thesis preview](preview.png)

## What is in it
- Document class: `report` with `12pt, oneside`
- Compiler: pdflatex
- Files: `main.tex`, `preamble.tex`, `references.bib`, and 10 section files under `front/`, `sections/`

## Use it online
Open **[Yale Thesis on LetX](https://letx.app/templates/universities/yale-thesis/)** and click *Open as Template*. It is free.

## <a name="compile"></a>Compile locally
```bash
git clone https://github.com/Shahriar-Labs/latex-templates.git
cd latex-templates/universities/yale-thesis
latexmk -pdf main.tex
```

## About
Part of the free, open-source [LetX template library](https://letx.app/templates/): university and thesis templates for students, researchers and professionals. Built by [Shahriar Labs](https://shahriarlabs.com).

## License
MIT. See [LICENSE](LICENSE).
