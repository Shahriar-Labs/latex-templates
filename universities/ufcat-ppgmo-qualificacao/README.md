# UFCAT PPGMO Qualificação LaTeX Template

[![Open in LetX](https://img.shields.io/badge/Open%20in-LetX-9333EA.svg)](https://letx.app/templates/universities/ufcat-ppgmo-qualificacao/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

Template for the qualifying exam text (Exame de Qualificação) and Estudos Dirigidos of the Programa de Pós-Graduação em Modelagem e Otimização (PPGMO), Universidade Federal de Catalão (UFCAT), Brazil. It follows the ABNT norms through abnTeX2 and is written in Portuguese.

Modelo para o texto do Exame de Qualificação e dos Estudos Dirigidos do PPGMO/UFCAT, conforme as normas da ABNT (abnTeX2).

![UFCAT PPGMO Qualificação preview](preview.png)

## What is in it
- Document class: `templateppgmo.cls`, built on `abntex2` with `12pt, openright, twoside, a4paper`
- Compiler: pdflatex
- Files: `main.tex`, `templateppgmo.cls`, `referencias.bib`, `latexmkrc` and the logos under `figuras/`
- Cover page, abstract, lists of figures, tables, algorithms and acronyms, and an ABNT bibliography

The list of acronyms uses the `nomencl` package. The `latexmkrc` file runs `makeindex` for it automatically.

## Use it online
Open **[UFCAT PPGMO Qualificação on LetX](https://letx.app/templates/universities/ufcat-ppgmo-qualificacao/)** and click *Open as Template*. It is free.

## <a name="compile"></a>Compile locally
```bash
git clone https://github.com/Shahriar-Labs/latex-templates.git
cd latex-templates/universities/ufcat-ppgmo-qualificacao
latexmk -pdf main.tex
```

## License
MIT. See [LICENSE](LICENSE). The class loads abnTeX2, which is distributed under the LPPL.
