# University Lecture Slides LaTeX Template

[![Open in LetX](https://img.shields.io/badge/Open%20in-LetX-9333EA.svg)](https://letx.app/templates/presentations/beamer-lecture-slides/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

University lecture slides on Beamer's Madrid theme, teaching distributed consensus: the problem, the FLP impossibility result, the Paxos protocol and key takeaways.

Edit and compile it in your browser at **[letx.app](https://letx.app/templates/presentations/beamer-lecture-slides/)**, with no LaTeX install and real-time collaboration. A compile takes a few seconds.

![University Lecture Slides preview](preview.png)

## What is in it
- Document class: `beamer` with `11pt, aspectratio=169`
- Compiler: pdflatex
- Files: `main.tex`, `preamble.tex`, and 8 section files under `sections/`

## Use it online
Open **[University Lecture Slides on LetX](https://letx.app/templates/presentations/beamer-lecture-slides/)** and click *Open as Template*. It is free.

## <a name="compile"></a>Compile locally
```bash
git clone https://github.com/Shahriar-Labs/latex-templates.git
cd latex-templates/presentations/beamer-lecture-slides
latexmk -pdf main.tex
```

## About
Part of the free, open-source [LetX template library](https://letx.app/templates/): presentation templates for students, researchers and professionals. Built by [Shahriar Labs](https://shahriarlabs.com).

## License
MIT. See [LICENSE](LICENSE).
