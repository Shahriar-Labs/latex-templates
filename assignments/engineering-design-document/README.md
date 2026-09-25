# Engineering Design Document LaTeX Template

[![Open in LetX](https://img.shields.io/badge/Open%20in-LetX-9333EA.svg)](https://letx.app/templates/assignments/engineering-design-document/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

Technical engineering design document (EDD) LaTeX template, document-control box, overview & goals, functional/non-functional requirement tables, a TikZ architecture diagram, interfaces, testing and risks.

Edit and compile it in your browser at **[letx.app](https://letx.app/templates/assignments/engineering-design-document/)**, with no LaTeX install and real-time collaboration. A compile takes a few seconds.

![Engineering Design Document preview](preview.png)

## What is in it
- Document class: `article` with `11pt, a4paper`
- Compiler: pdflatex
- Files: `main.tex`, `preamble.tex`, and 7 section files under `sections/`

## Use it online
Open **[Engineering Design Document on LetX](https://letx.app/templates/assignments/engineering-design-document/)** and click *Open as Template*. It is free.

## <a name="compile"></a>Compile locally
```bash
git clone https://github.com/Shahriar-Labs/latex-templates.git
cd latex-templates/assignments/engineering-design-document
latexmk -pdf main.tex
```

## About
Part of the free, open-source [LetX template library](https://letx.app/templates/): assignment and notes templates for students, researchers and professionals. Built by [Shahriar Labs](https://shahriarlabs.com).

## License
MIT. See [LICENSE](LICENSE).
