# SIGGRAPH Technical Paper LaTeX Template

[![Open in LetX](https://img.shields.io/badge/Open%20in-LetX-9333EA.svg)](https://letx.app/templates/conferences/siggraph-technical-paper/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

A SIGGRAPH technical paper on ACM's acmart class in the acmtog format, with the anonymous and review options, the paper ID on every page, and a TikZ figure of the training loop.

Edit and compile it in your browser at **[letx.app](https://letx.app/templates/conferences/siggraph-technical-paper/)**, with no LaTeX install and real-time collaboration. A compile takes a few seconds.

![SIGGRAPH Technical Paper preview](preview.png)

## What is in it
- Document class: `acmart` with `acmtog, anonymous, review`
- Compiler: pdflatex
- Files: `main.bib`, `main.tex`, `preamble.tex`, and 7 section files under `sections/`

## Use it online
Open **[SIGGRAPH Technical Paper on LetX](https://letx.app/templates/conferences/siggraph-technical-paper/)** and click *Open as Template*. It is free.

## <a name="compile"></a>Compile locally
```bash
git clone https://github.com/Shahriar-Labs/latex-templates.git
cd latex-templates/conferences/siggraph-technical-paper
latexmk -pdf main.tex
```

## About
Part of the free, open-source [LetX template library](https://letx.app/templates/): conference paper templates for students, researchers and professionals. Built by [Shahriar Labs](https://shahriarlabs.com).

## License
MIT. See [LICENSE](LICENSE).
