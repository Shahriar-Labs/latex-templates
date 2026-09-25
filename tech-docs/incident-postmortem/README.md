# Incident Postmortem LaTeX Template

[![Open in LetX](https://img.shields.io/badge/Open%20in-LetX-9333EA.svg)](https://letx.app/templates/tech-docs/incident-postmortem/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

An incident postmortem in Lato with the timeline, impact assessment, root cause analysis, detection and resolution metrics, an action item tracker, lessons learned and sign-off.

Edit and compile it in your browser at **[letx.app](https://letx.app/templates/tech-docs/incident-postmortem/)**, with no LaTeX install and real-time collaboration. A compile takes a few seconds.

![Incident Postmortem preview](preview.png)

## What is in it
- Document class: `article` with `11pt, a4paper`
- Compiler: pdflatex
- Files: `main.tex`, `preamble.tex`, and 9 section files under `sections/`

## Use it online
Open **[Incident Postmortem on LetX](https://letx.app/templates/tech-docs/incident-postmortem/)** and click *Open as Template*. It is free.

## <a name="compile"></a>Compile locally
```bash
git clone https://github.com/Shahriar-Labs/latex-templates.git
cd latex-templates/tech-docs/incident-postmortem
latexmk -pdf main.tex
```

## About
Part of the free, open-source [LetX template library](https://letx.app/templates/): technical documentation templates for students, researchers and professionals. Built by [Shahriar Labs](https://shahriarlabs.com).

## License
MIT. See [LICENSE](LICENSE).
