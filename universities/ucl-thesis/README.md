# UCL Thesis LaTeX Template

[![Open in LetX](https://img.shields.io/badge/Open%20in-LetX-9333EA.svg)](https://letx.app/templates/universities/ucl-thesis/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

An unofficial UCL PhD thesis template on A4 with a 40mm binding margin, the candidate declaration, a 300-word abstract, an impact statement, and Helvetica-style type throughout.

Edit and compile it in your browser at **[letx.app](https://letx.app/templates/universities/ucl-thesis/)**, with no LaTeX install and real-time collaboration. A compile takes a few seconds.

![UCL Thesis preview](preview.png)

## What is in it
- Document class: `report` with `12pt, oneside, a4paper`
- Compiler: pdflatex
- Files: `main.tex`, `preamble.tex`, `references.bib`, and 9 section files under `front/`, `sections/`

## Use it online
Open **[UCL Thesis on LetX](https://letx.app/templates/universities/ucl-thesis/)** and click *Open as Template*. It is free.

## <a name="compile"></a>Compile locally
```bash
git clone https://github.com/Shahriar-Labs/latex-templates.git
cd latex-templates/universities/ucl-thesis
latexmk -pdf main.tex
```

## About
Part of the free, open-source [LetX template library](https://letx.app/templates/): university and thesis templates for students, researchers and professionals. Built by [Shahriar Labs](https://shahriarlabs.com).

## License
MIT. See [LICENSE](LICENSE).
