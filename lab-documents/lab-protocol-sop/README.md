# Lab Protocol / SOP LaTeX Template

[![Open in LetX](https://img.shields.io/badge/Open%20in-LetX-9333EA.svg)](https://letx.app/templates/lab-documents/lab-protocol-sop/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

Lab protocol / standard operating procedure LaTeX template, header key/value box, safety-warning callout, materials table, numbered procedure, QC criteria, waste disposal and revision-history table.

Edit and compile it in your browser at **[letx.app](https://letx.app/templates/lab-documents/lab-protocol-sop/)**, with no LaTeX install and real-time collaboration. A compile takes a few seconds.

![Lab Protocol / SOP preview](preview.png)

## What is in it
- Document class: `article` with `11pt, a4paper`
- Compiler: pdflatex
- Files: `main.tex`, `preamble.tex`, and 8 section files under `sections/`

## Use it online
Open **[Lab Protocol / SOP on LetX](https://letx.app/templates/lab-documents/lab-protocol-sop/)** and click *Open as Template*. It is free.

## <a name="compile"></a>Compile locally
```bash
git clone https://github.com/Shahriar-Labs/latex-templates.git
cd latex-templates/lab-documents/lab-protocol-sop
latexmk -pdf main.tex
```

## About
Part of the free, open-source [LetX template library](https://letx.app/templates/): lab document templates for students, researchers and professionals. Built by [Shahriar Labs](https://shahriarlabs.com).

## License
MIT. See [LICENSE](LICENSE).
