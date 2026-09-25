# Technical RFC LaTeX Template

[![Open in LetX](https://img.shields.io/badge/Open%20in-LetX-9333EA.svg)](https://letx.app/templates/tech-docs/technical-rfc/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

A technical RFC in the IETF memo style, with a status of this memo, frame format, flow control, error handling, and security and IANA considerations sections.

Edit and compile it in your browser at **[letx.app](https://letx.app/templates/tech-docs/technical-rfc/)**, with no LaTeX install and real-time collaboration. A compile takes a few seconds.

![Technical RFC preview](preview.png)

## What is in it
- Document class: `article` with `11pt`
- Compiler: pdflatex
- Files: `main.tex`, `preamble.tex`, and 8 section files under `sections/`

## Use it online
Open **[Technical RFC on LetX](https://letx.app/templates/tech-docs/technical-rfc/)** and click *Open as Template*. It is free.

## <a name="compile"></a>Compile locally
```bash
git clone https://github.com/Shahriar-Labs/latex-templates.git
cd latex-templates/tech-docs/technical-rfc
latexmk -pdf main.tex
```

## About
Part of the free, open-source [LetX template library](https://letx.app/templates/): technical documentation templates for students, researchers and professionals. Built by [Shahriar Labs](https://shahriarlabs.com).

## License
MIT. See [LICENSE](LICENSE).
