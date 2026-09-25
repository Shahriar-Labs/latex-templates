# FPGA Design Specification LaTeX Template

[![Open in LetX](https://img.shields.io/badge/Open%20in-LetX-9333EA.svg)](https://letx.app/templates/engineering/fpga-design-spec/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

An FPGA design specification on letter paper with the system architecture, a CSR register map, interface protocols and timing handshakes, and a resource utilisation summary.

Edit and compile it in your browser at **[letx.app](https://letx.app/templates/engineering/fpga-design-spec/)**, with no LaTeX install and real-time collaboration. A compile takes a few seconds.

![FPGA Design Specification preview](preview.png)

## What is in it
- Document class: `article` with `10pt, letterpaper`
- Compiler: pdflatex
- Files: `main.tex`, `preamble.tex`, and 6 section files under `sections/`

## Use it online
Open **[FPGA Design Specification on LetX](https://letx.app/templates/engineering/fpga-design-spec/)** and click *Open as Template*. It is free.

## <a name="compile"></a>Compile locally
```bash
git clone https://github.com/Shahriar-Labs/latex-templates.git
cd latex-templates/engineering/fpga-design-spec
latexmk -pdf main.tex
```

## About
Part of the free, open-source [LetX template library](https://letx.app/templates/): engineering templates for students, researchers and professionals. Built by [Shahriar Labs](https://shahriarlabs.com).

## License
MIT. See [LICENSE](LICENSE).
