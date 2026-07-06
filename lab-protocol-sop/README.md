# Lab Protocol / SOP — Free LaTeX Template

[![Open in LetX](https://img.shields.io/badge/Open%20in-LetX-9333EA.svg)](https://letx.app/templates/lab-documents/lab-protocol-sop)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Compile Tested](https://img.shields.io/badge/Compile-Tested-success.svg)](#compile)

**Lab protocol / standard operating procedure LaTeX template — header key/value box, safety-warning callout, materials table, numbered procedure, QC criteria, waste disposal and revision-history table.**

Edit and compile this template instantly in your browser — no LaTeX install — at **[letx.app](https://letx.app/templates/lab-documents/lab-protocol-sop)**, with real-time collaboration and one-second compiles.

![Lab Protocol / SOP preview](preview.png)

## Features
- Header key/value box (title, ID/version, approver)
- Colored safety-warning callout (tcolorbox)
- Materials & equipment table (booktabs)
- Numbered procedure + QC acceptance criteria
- Revision-history table; realistic sample

## Use it online (recommended)
Open **[Lab Protocol / SOP on LetX »](https://letx.app/templates/lab-documents/lab-protocol-sop)** and click *Open as Template* — it compiles in ~1 second, in your browser, free.

## <a name="compile"></a>Compile locally
```bash
git clone https://github.com/Shahriar-Labs/lab-protocol-sop.git
cd lab-protocol-sop
latexmk -pdf main.tex
```
Compiler: **pdflatex** (see `metadata.json`).

## About
Part of the free, open-source [LetX template library](https://letx.app/templates) — lab document templates for students, researchers, and professionals. Built by [Shahriar Labs](https://shahriarlabs.com).

## License
MIT — free for personal and commercial use. See [LICENSE](LICENSE).
