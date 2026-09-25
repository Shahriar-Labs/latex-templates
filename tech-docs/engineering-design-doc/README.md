# Engineering Design Doc LaTeX Template

[![Open in LetX](https://img.shields.io/badge/Open%20in-LetX-9333EA.svg)](https://letx.app/templates/tech-docs/engineering-design-doc/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

An engineering design doc in Lato with context and scope, goals and non-goals, architecture, the API contract, data model, migration plan, observability and a launch checklist.

Edit and compile it in your browser at **[letx.app](https://letx.app/templates/tech-docs/engineering-design-doc/)**, with no LaTeX install and real-time collaboration. A compile takes a few seconds.

![Engineering Design Doc preview](preview.png)

## What is in it
- Document class: `article` with `11pt, a4paper`
- Compiler: pdflatex
- Files: `main.tex`, `preamble.tex`, and 12 section files under `sections/`

## Use it online
Open **[Engineering Design Doc on LetX](https://letx.app/templates/tech-docs/engineering-design-doc/)** and click *Open as Template*. It is free.

## <a name="compile"></a>Compile locally
```bash
git clone https://github.com/Shahriar-Labs/latex-templates.git
cd latex-templates/tech-docs/engineering-design-doc
latexmk -pdf main.tex
```

## About
Part of the free, open-source [LetX template library](https://letx.app/templates/): technical documentation templates for students, researchers and professionals. Built by [Shahriar Labs](https://shahriarlabs.com).

## License
MIT. See [LICENSE](LICENSE).
