# Operational Runbook LaTeX Template

[![Open in LetX](https://img.shields.io/badge/Open%20in-LetX-9333EA.svg)](https://letx.app/templates/tech-docs/runbook-operational-procedure/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

An operational runbook on letter paper with the system overview, an alert-to-action mapping, remediation steps in Bera Mono code, and an escalation ladder with contacts.

Edit and compile it in your browser at **[letx.app](https://letx.app/templates/tech-docs/runbook-operational-procedure/)**, with no LaTeX install and real-time collaboration. A compile takes a few seconds.

![Operational Runbook preview](preview.png)

## What is in it
- Document class: `article` with `10pt, letterpaper`
- Compiler: pdflatex
- Files: `main.tex`, `preamble.tex`, `references.bib`, and 4 section files under `sections/`

## Use it online
Open **[Operational Runbook on LetX](https://letx.app/templates/tech-docs/runbook-operational-procedure/)** and click *Open as Template*. It is free.

## <a name="compile"></a>Compile locally
```bash
git clone https://github.com/Shahriar-Labs/latex-templates.git
cd latex-templates/tech-docs/runbook-operational-procedure
latexmk -pdf main.tex
```

## About
Part of the free, open-source [LetX template library](https://letx.app/templates/): technical documentation templates for students, researchers and professionals. Built by [Shahriar Labs](https://shahriarlabs.com).

## License
MIT. See [LICENSE](LICENSE).
