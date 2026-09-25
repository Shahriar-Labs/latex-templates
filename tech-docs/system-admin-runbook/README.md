# System Administration Runbook LaTeX Template

[![Open in LetX](https://img.shields.io/badge/Open%20in-LetX-9333EA.svg)](https://letx.app/templates/tech-docs/system-admin-runbook/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

A system administration runbook on A4 with document control, an architecture overview, alert severity classes, common procedures, an incident response workflow and escalation.

Edit and compile it in your browser at **[letx.app](https://letx.app/templates/tech-docs/system-admin-runbook/)**, with no LaTeX install and real-time collaboration. A compile takes a few seconds.

![System Administration Runbook preview](preview.png)

## What is in it
- Document class: `article` with `11pt, a4paper`
- Compiler: pdflatex
- Files: `main.tex`, `preamble.tex`, and 6 section files under `sections/`

## Use it online
Open **[System Administration Runbook on LetX](https://letx.app/templates/tech-docs/system-admin-runbook/)** and click *Open as Template*. It is free.

## <a name="compile"></a>Compile locally
```bash
git clone https://github.com/Shahriar-Labs/latex-templates.git
cd latex-templates/tech-docs/system-admin-runbook
latexmk -pdf main.tex
```

## About
Part of the free, open-source [LetX template library](https://letx.app/templates/): technical documentation templates for students, researchers and professionals. Built by [Shahriar Labs](https://shahriarlabs.com).

## License
MIT. See [LICENSE](LICENSE).
