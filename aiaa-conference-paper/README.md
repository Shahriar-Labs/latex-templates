# AIAA Conference Paper — Free LaTeX Template

[![Open in LetX](https://img.shields.io/badge/Open%20in-LetX-9333EA.svg)](https://letx.app/templates/conferences/aiaa-conference-paper)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Compile Tested](https://img.shields.io/badge/Compile-Tested-success.svg)](#compile)

**AIAA technical conference paper template for aerospace & space engineering — title, author affiliations, equations, a figure, a table, and references. Ready for AIAA submissions.**

Edit and compile this template instantly in your browser — no LaTeX install — at **[letx.app](https://letx.app/templates/conferences/aiaa-conference-paper)**, with real-time collaboration and one-second compiles.

![AIAA Conference Paper preview](preview.png)

## Features
- **AIAA** technical-conference class (`aiaa-tc`) for aerospace & space papers
- Author affiliation footnotes (AIAA member grades)
- Displayed equations, a pgfplots figure, and a `booktabs` table
- Inline bibliography with `\cite`
- Realistic low-thrust Mars-transfer trajectory-optimization content

## Use it online (recommended)
Open **[AIAA Conference Paper on LetX »](https://letx.app/templates/conferences/aiaa-conference-paper)** and click *Open as Template* — it compiles in ~1 second, in your browser, free.

## <a name="compile"></a>Compile locally
```bash
git clone https://github.com/Shahriar-Labs/aiaa-conference-paper.git
cd aiaa-conference-paper
latexmk -pdf main.tex
```
Compiler: **pdflatex** (see `metadata.json`).

## About
Part of the free, open-source [LetX template library](https://letx.app/templates) — conference templates for students, researchers, and professionals. Built by [Shahriar Labs](https://shahriarlabs.com).

## License
MIT — free for personal and commercial use. See [LICENSE](LICENSE).
