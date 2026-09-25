# Technical Design Document LaTeX Template

[![Open in LetX](https://img.shields.io/badge/Open%20in-LetX-9333EA.svg)](https://letx.app/templates/tech-docs/technical-design-document/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

A technical design document in Lato with Inconsolata code, covering the system architecture, data model and schemas, and an alternatives considered section.

Edit and compile it in your browser at **[letx.app](https://letx.app/templates/tech-docs/technical-design-document/)**, with no LaTeX install and real-time collaboration. A compile takes a few seconds.

![Technical Design Document preview](preview.png)

## What is in it
- Document class: `article` with `11pt, a4paper`
- Compiler: pdflatex
- Files: `main.tex`, `preamble.tex`, `references.bib`, and 4 section files under `sections/`

## Use it online
Open **[Technical Design Document on LetX](https://letx.app/templates/tech-docs/technical-design-document/)** and click *Open as Template*. It is free.

## <a name="compile"></a>Compile locally
```bash
git clone https://github.com/Shahriar-Labs/latex-templates.git
cd latex-templates/tech-docs/technical-design-document
latexmk -pdf main.tex
```

## About
Part of the free, open-source [LetX template library](https://letx.app/templates/): technical documentation templates for students, researchers and professionals. Built by [Shahriar Labs](https://shahriarlabs.com).

## License
MIT. See [LICENSE](LICENSE).
