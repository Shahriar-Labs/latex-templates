# SNU Thesis LaTeX Template

[![Open in LetX](https://img.shields.io/badge/Open%20in-LetX-9333EA.svg)](https://letx.app/templates/universities/snu-thesis/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

An unofficial Seoul National University dissertation template at 19 x 26 cm, with cover, approval page for five examiners, and a Korean abstract at the end. Compiles with XeLaTeX.

Edit and compile it in your browser at **[letx.app](https://letx.app/templates/universities/snu-thesis/)**, with no LaTeX install and real-time collaboration. A compile takes a few seconds.

![SNU Thesis preview](preview.png)

## What is in it
- Document class: `report` with `11pt, twoside, openany`
- Compiler: xelatex
- Files: `main.tex`, `preamble.tex`, `references.bib`, and 9 section files under `front/`, `sections/`

## Use it online
Open **[SNU Thesis on LetX](https://letx.app/templates/universities/snu-thesis/)** and click *Open as Template*. It is free.

## <a name="compile"></a>Compile locally
```bash
git clone https://github.com/Shahriar-Labs/latex-templates.git
cd latex-templates/universities/snu-thesis
latexmk -xelatex main.tex
```

## About
Part of the free, open-source [LetX template library](https://letx.app/templates/): university and thesis templates for students, researchers and professionals. Built by [Shahriar Labs](https://shahriarlabs.com).

## License
MIT. See [LICENSE](LICENSE).
