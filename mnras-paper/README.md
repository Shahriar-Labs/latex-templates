# MNRAS Journal Paper — Free LaTeX Template

[![Open in LetX](https://img.shields.io/badge/Open%20in-LetX-9333EA.svg)](https://letx.app/templates/journal-articles/mnras-paper)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Compile Tested](https://img.shields.io/badge/Compile-Tested-success.svg)](#compile)

**MNRAS journal paper template (Monthly Notices of the Royal Astronomical Society) — two-column, natbib citations, a figure, a table, and equations. Compile-tested and submission-ready.**

Edit and compile this template instantly in your browser — no LaTeX install — at **[letx.app](https://letx.app/templates/journal-articles/mnras-paper)**, with real-time collaboration and one-second compiles.

![MNRAS Journal Paper preview](preview.png)

## Features
- Oxford/RAS **MNRAS** class — for *Monthly Notices of the Royal Astronomical Society*
- Two-column layout with `natbib` author-year citations
- Displayed equations, a self-contained pgfplots figure, and a table
- Inline bibliography — no external `.bib` needed
- Realistic stellar-population / galaxy-evolution sample content

## Use it online (recommended)
Open **[MNRAS Journal Paper on LetX »](https://letx.app/templates/journal-articles/mnras-paper)** and click *Open as Template* — it compiles in ~1 second, in your browser, free.

## <a name="compile"></a>Compile locally
```bash
git clone https://github.com/Shahriar-Labs/mnras-paper.git
cd mnras-paper
latexmk -pdf main.tex
```
Compiler: **pdflatex** (see `metadata.json`).

## About
Part of the free, open-source [LetX template library](https://letx.app/templates) — journal-article templates for students, researchers, and professionals. Built by [Shahriar Labs](https://shahriarlabs.com).

## License
MIT — free for personal and commercial use. See [LICENSE](LICENSE).
