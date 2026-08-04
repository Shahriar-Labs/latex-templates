import os
import subprocess

content = """%%FILE: main.tex
\\documentclass[aspectratio=169, 11pt]{beamer}

\\input{preamble}

% Metadata
\\title{VertexFlow: Dynamic Scheduling for Heterogeneous Edge Inference}
\\subtitle{Lightning Talk \\& Poster Teaser (Poster \\#304)}
\\author{Sarah Jenkins \\and David K. Sterling}
\\institute{Synapse Institute \\and Apex Labs}
\\date{ICSS 2026}

\\begin{document}

\\input{sections/01-title}
\\input{sections/02-result}
\\input{sections/03-poster}

\\end{document}

%%FILE: preamble.tex
% Preamble for Lightning Talk Poster Teaser
\\usepackage[T1]{fontenc}
\\usepackage[utf8]{inputenc}
\\usepackage[scaled=0.92]{helvet}
\\renewcommand{\\familydefault}{\\sfdefault}
\\usepackage{sfmath}
\\usepackage{microtype}
\\usepackage{amsmath}
\\usepackage{amssymb}
\\usepackage{booktabs}
\\usepackage{graphicx}
\\usepackage{xcolor}
\\usepackage{fontawesome5}

% Custom Color Palette
\\definecolor{primary}{HTML}{0F172A}      % Slate 900 (Midnight)
\\definecolor{secondary}{HTML}{3B82F6}    % Blue 500 (Vibrant Blue)
\\definecolor{accent}{HTML}{EC4899}       % Pink 500 (Vibrant Accent)
\\definecolor{accentteal}{HTML}{14B8A6}   % Teal 500
\\definecolor{bglight}{HTML}{F8FAFC}      % Slate 50
\\definecolor{textdark}{HTML}{1E293B}     % Slate 800
\\definecolor{texthint}{HTML}{64748B}     % Slate 500

% Beamer Theme Settings
\\usetheme{default}
\\setbeamertemplate{navigation symbols}{}

% Typography styling
\\setbeamerfont{title}{size=\\Large, series=\\bfseries}
\\setbeamerfont{subtitle}{size=\\normalsize}
\\setbeamerfont{author}{size=\\small}
\\setbeamerfont{date}{size=\\footnotesize}
\\setbeamerfont{frametitle}{size=\\large, series=\\bfseries}
\\setbeamerfont{framesubtitle}{size=\\small}

% Beamer Color Assignments
\\setbeamercolor{structure}{fg=secondary}
\\setbeamercolor{normal text}{fg=textdark}
\\setbeamercolor{background canvas}{bg=white}
\\setbeamercolor{frametitle}{fg=primary, bg=white}
\\setbeamercolor{framesubtitle}{fg=accent}
\\setbeamercolor{item}{fg=secondary}

% Custom Footline (Clean \\& Simple)
\\setbeamertemplate{footline}{
  \\begin{beamercolorbox}[wd=\\paperwidth,ht=3ex,dp=2ex,leftskip=0.5cm,rightskip=0.5cm]{footline}
    \\color{textdark!10}\\hrule\\vspace{0.1cm}
    \\usebeamerfont{footline}
    \\color{texthint}\\scriptsize VertexFlow \\hfill Poster \\#304 \\hfill \\insertframenumber/\\inserttotalframenumber
  \\end{beamercolorbox}
}

% Customize list bullet points
\\setbeamertemplate{itemize items}[circle]

% TikZ Setup
\\usepackage{tikz}
\\usetikzlibrary{positioning, calc, shapes.geometric, backgrounds, patterns}

% Custom Box Styles (tcolorbox)
\\usepackage[most]{tcolorbox}
\\newtcolorbox{highlightbox}[1][]{
  colback=bglight,
  colframe=secondary,
  arc=3pt,
  boxrule=1.5pt,
  left=8pt,
  right=8pt,
  top=6pt,
  bottom=6pt,
  #1
}
\\newtcolorbox{accentbox}[1][]{
  colback=bglight,
  colframe=accent,
  arc=3pt,
  boxrule=1.5pt,
  left=8pt,
  right=8pt,
  top=6pt,
  bottom=6pt,
  #1
}

% BibLaTeX Setup
\\usepackage[style=numeric, backend=bibtex]{biblatex}
\\addbibresource{references.bib}

%%FILE: sections/01-title.tex
{
\\setbeamercolor{background canvas}{bg=primary}
\\setbeamercolor{normal text}{fg=white}
\\setbeamercolor{author}{fg=white}
\\setbeamercolor{date}{fg=white}

\\begin{frame}[plain]
  % Abstract shapes in the background using TikZ
  \\begin{tikzpicture}[remember picture, overlay]
    % Secondary wave shape
    \\fill[secondary] (current page.south west) -- (current page.north west) -- ($(current page.north west) + (3,0)$) -- ($(current page.south west) + (6,0)$) -- cycle;
    % Accent diagonal line
    \\fill[accent] ($(current page.south west) + (6,0)$) -- ($(current page.south west) + (6.2,0)$) -- ($(current page.north west) + (3.2,0)$) -- ($(current page.north west) + (3,0)$) -- cycle;
    % Teal diagonal line
    \\fill[accentteal] ($(current page.south west) + (6.4,0)$) -- ($(current page.south west) + (6.5,0)$) -- ($(current page.north west) + (3.5,0)$) -- ($(current page.north west) + (3.4,0)$) -- cycle;
  \\end{tikzpicture}
  
  \\begin{columns}[T]
    \\begin{column}{0.35\\textwidth}
      % Empty space to leave room for the TikZ background graphic
    \\end{column}
    
    \\begin{column}{0.6\\textwidth}
      \\color{white}
      \\vspace{0.8cm}
      {\\usebeamerfont{title}\\Large\\bfseries\\inserttitle\\par}
      \\vspace{0.2cm}
      {\\usebeamerfont{subtitle}\\normalsize\\color{bglight!80}\\insertsubtitle\\par}
      
      \\vspace{1.0cm}
      {\\small\\textbf{Authors:} \\insertauthor\\par}
      {\\small\\textbf{Affiliations:} \\insertinstitute\\par}
      
      \\vspace{0.5cm}
      {\\footnotesize\\faGlobe\\ \\href{https://letx.app/m/vertexflow}{\\color{accentteal}\\texttt{letx.app/m/vertexflow}}\\par}
      {\\footnotesize\\faEnvelope\\ \\texttt{\\{jenkins, sterling\\}@synapse.org}\\par}
    \\end{column}
  \\end{columns}
\\end{frame}
}

%%FILE: sections/02-result.tex
\\begin{frame}{Key Result: Heterogeneous Task Stealing}{Outperforming Homogeneous Pipelines}
  \\begin{columns}[T]
    \\begin{column}{0.48\\textwidth}
      \\textbf{Dynamic Workload Balancing}
      \\begin{itemize}
        \\item Edge nodes exhibit transient resource fluctuations.
        \\item Homogeneous pipelines suffer from \\textbf{head-of-line blocking}.
        \\item VertexFlow introduces a zero-overhead task stealing protocol across CPU/GPU cores.
      \\end{itemize}
      
      \\vspace{0.3cm}
      \\begin{highlightbox}
        \\textbf{Performance Gain:} We achieve a \\textbf{5.4$\\times$} speedup in end-to-end inference throughput under dynamic load \\cite{jenkins2026vertexflow}.
      \\end{highlightbox}
    \\end{column}
    
    \\begin{column}{0.48\\textwidth}
      \\centering
      \\textbf{Throughput Comparison (FPS)}
      \\vspace{0.2cm}
      
      \\begin{tikzpicture}[scale=0.95]
        % Draw axes
        \\draw[thick, ->, >=stealth] (0,0) -- (5.5,0) node[right, font=\\scriptsize] {Model};
        \\draw[thick, ->, >=stealth] (0,0) -- (0,3.2) node[above, font=\\scriptsize] {FPS};
        
        % Y-axis labels \\& ticks
        \\foreach \\y/\\label in {0.8/100, 1.6/200, 2.4/300} {
          \\draw (0.1,\\y) -- (-0.1,\\y) node[left, font=\\tiny] {\\label};
          \\draw[very thin, gray!20] (0,\\y) -- (5,\\y);
        }
        
        % Data Bars for ResNet-50
        % Baseline TFLite: 45 FPS (y = 0.36)
        \\fill[gray!40] (0.5,0) rectangle (1.0,0.36);
        % VertexFlow: 243 FPS (y = 1.94)
        \\fill[secondary] (1.0,0) rectangle (1.5,1.94);
        
        % Data Bars for MobileNetV3
        % Baseline TFLite: 120 FPS (y = 0.96)
        \\fill[gray!40] (2.5,0) rectangle (3.0,0.96);
        % VertexFlow: 350 FPS (y = 2.8)
        \\fill[accent] (3.0,0) rectangle (3.5,2.8);
        
        % Labels under bars
        \\node[below, font=\\scriptsize] at (1.25,-0.1) {ResNet-50};
        \\node[below, font=\\scriptsize] at (3.25,-0.1) {MobileNetV3};
        
        % Value labels on top of bars
        \\node[above, font=\\tiny] at (0.75, 0.36) {45};
        \\node[above, font=\\tiny, fg=secondary] at (1.25, 1.94) {\\textbf{243}};
        \\node[above, font=\\tiny] at (2.75, 0.96) {120};
        \\node[above, font=\\tiny, fg=accent] at (3.25, 2.8) {\\textbf{350}};
        
        % Legend
        \\draw[fill=gray!40] (4.0,2.5) rectangle (4.2,2.7);
        \\node[right, font=\\tiny] at (4.3,2.6) {TFLite};
        \\draw[fill=secondary] (4.0,2.1) rectangle (4.2,2.3);
        \\node[right, font=\\tiny] at (4.3,2.2) {Ours};
      \\end{tikzpicture}
      
      \\vspace{0.1cm}
      \\captionof{figure}{VertexFlow throughput vs. standard TFLite runtime.}
    \\end{column}
  \\end{columns}
\\end{frame}

%%FILE: sections/03-poster.tex
{
\\setbeamercolor{background canvas}{bg=primary}
\\setbeamercolor{normal text}{fg=white}
\\setbeamercolor{frametitle}{fg=white, bg=primary}

\\begin{frame}{Join Us at Poster \\#304}{Let's Discuss the Details}
  \\begin{tikzpicture}[remember picture, overlay]
    % Accent diagonal line in background
    \\fill[accent!10] (current page.south east) -- ($(current page.south east) - (4,0)$) -- ($(current page.north east) - (1,0)$) -- (current page.north east) -- cycle;
  \\end{tikzpicture}
  
  \\begin{columns}[T]
    \\begin{column}{0.55\\textwidth}
      \\textbf{\\color{accent}Poster Session II}
      \\begin{itemize}
        \\item \\textbf{Time:} Tuesday, 14:00 -- 17:30
        \\item \\textbf{Location:} Hall B, Section C
        \\item \\textbf{Poster Number:} \\color{accentteal}\\textbf{\\#304}
      \\end{itemize}
      
      \\vspace{0.4cm}
      \\textbf{Discussion Highlights:}
      \\begin{enumerate}
        \\item Mathematical proofs for task stealing overhead bounds.
        \\item Portability across ARM Cortex-M and RISC-V targets.
        \\item Demonstration on actual hardware prototypes.
      \\end{enumerate}
    \\end{column}
    
    \\begin{column}{0.4\\textwidth}
      \\centering
      \\textbf{\\color{accentteal}Scan for Paper \\& Code}
      \\vspace{0.2cm}
      
      % Stylized QR Code using TikZ
      \\begin{tikzpicture}[scale=1.8]
        % QR Border
        \\draw[accent, very thick, rounded corners=2pt] (0,0) rectangle (1.2,1.2);
        
        % Three large QR corners
        \\draw[fill=white, draw=primary, thick] (0.05, 0.85) rectangle (0.35, 1.15);
        \\draw[fill=primary] (0.12, 0.92) rectangle (0.28, 1.08);
        
        \\draw[fill=white, draw=primary, thick] (0.85, 0.85) rectangle (1.15, 1.15);
        \\draw[fill=primary] (0.92, 0.92) rectangle (1.08, 1.08);
        
        \\draw[fill=white, draw=primary, thick] (0.05, 0.05) rectangle (0.35, 0.35);
        \\draw[fill=primary] (0.12, 0.12) rectangle (0.28, 0.28);
        
        % Random data blocks inside the QR Code
        \\fill[primary] (0.5, 1.0) rectangle (0.6, 1.1);
        \\fill[primary] (0.7, 0.9) rectangle (0.8, 1.0);
        \\fill[primary] (0.5, 0.8) rectangle (0.6, 0.9);
        \\fill[primary] (0.6, 0.7) rectangle (0.7, 0.8);
        \\fill[primary] (0.4, 0.5) rectangle (0.5, 0.6);
        \\fill[primary] (0.8, 0.6) rectangle (0.9, 0.7);
        \\fill[primary] (0.9, 0.5) rectangle (1.0, 0.6);
        
        \\fill[primary] (0.5, 0.3) rectangle (0.6, 0.4);
        \\fill[primary] (0.7, 0.2) rectangle (0.8, 0.3);
        \\fill[primary] (0.6, 0.1) rectangle (0.7, 0.2);
        \\fill[primary] (0.8, 0.05) rectangle (0.9, 0.15);
        \\fill[primary] (0.4, 0.1) rectangle (0.5, 0.2);
        \\fill[primary] (0.9, 0.2) rectangle (1.0, 0.3);
        
        \\fill[primary] (0.2, 0.5) rectangle (0.3, 0.6);
        \\fill[primary] (0.1, 0.6) rectangle (0.2, 0.7);
      \\end{tikzpicture}
      
      \\vspace{0.3cm}
      {\\footnotesize\\faGithub\\ \\href{https://github.com/synapse-labs/vertexflow}{\\color{accentteal}\\texttt{github.com/synapse-labs}}\\par}
      {\\footnotesize\\faGlobe\\ \\href{https://letx.app/m/vertexflow}{\\color{accentteal}\\texttt{letx.app/m/vertexflow}}\\par}
    \\end{column}
  \\end{columns}
\\end{frame}
}

%%FILE: references.bib
@inproceedings{jenkins2026vertexflow,
  author    = {Sarah Jenkins and David K. Sterling},
  title     = {VertexFlow: Dynamic Scheduling for Heterogeneous Edge Inference},
  booktitle = {Proceedings of the 14th International Conference on Smart Systems (ICSS)},
  year      = {2026},
  pages     = {112--125}
}
"""

def split_files():
    parts = content.split("%%FILE: ")
    for part in parts:
        if not part.strip():
            continue
        lines = part.splitlines()
        path = lines[0].strip()
        body = "\n".join(lines[1:])
        
        if body.strip().startswith("```"):
            body_lines = body.strip().splitlines()
            if body_lines[0].startswith("```"):
                body_lines = body_lines[1:]
            if body_lines[-1] == "```":
                body_lines = body_lines[:-1]
            body = "\n".join(body_lines)
            
        dir_name = os.path.dirname(path)
        if dir_name and not os.path.exists(dir_name):
            os.makedirs(dir_name)
        with open(path, "w") as f:
            f.write(body)
            
    print("Files split successfully!")

def compile_pdf():
    print("Compiling LaTeX...")
    res = subprocess.run(["latexmk", "-pdf", "main.tex"], capture_output=True, text=True)
    if res.returncode != 0:
        print("LaTeX compilation failed!")
        print("STDOUT:", res.stdout)
        print("STDERR:", res.stderr)
        if os.path.exists("main.log"):
            with open("main.log", "r") as logf:
                print("LOG TAIL:")
                print("".join(logf.readlines()[-100:]))
    else:
        print("LaTeX compilation Succeeded!")

if __name__ == "__main__":
    split_files()
    compile_pdf()
