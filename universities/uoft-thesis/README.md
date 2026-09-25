# UofT Thesis LaTeX Template

[![Open in LetX](https://img.shields.io/badge/Open%20in-LetX-9333EA.svg)](https://letx.app/templates/universities/uoft-thesis/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

An unofficial University of Toronto thesis template on the two-sided book layout these university theses share, in TeX Gyre Pagella with the school's colour and name on the title page. Check the school's own guide before submitting.

Edit and compile it in your browser at **[letx.app](https://letx.app/templates/universities/uoft-thesis/)**, with no LaTeX install and real-time collaboration. A compile takes a few seconds.

![UofT Thesis preview](preview.png)

## What is in it
- Document class: `book` with `11pt, twoside, openright`
- Compiler: pdflatex
- Files: `main.tex`, `preamble.tex`, and 24 section files under `sections/`

## Use it online
Open **[UofT Thesis on LetX](https://letx.app/templates/universities/uoft-thesis/)** and click *Open as Template*. It is free.

## <a name="compile"></a>Compile locally
```bash
git clone https://github.com/Shahriar-Labs/latex-templates.git
cd latex-templates/universities/uoft-thesis
latexmk -pdf main.tex
```

## About
Part of the free, open-source [LetX template library](https://letx.app/templates/): university and thesis templates for students, researchers and professionals. Built by [Shahriar Labs](https://shahriarlabs.com).

## License
MIT. See [LICENSE](LICENSE).
