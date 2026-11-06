%==============================================================================
% Universidade Federal de Catalão - UFCAT
% Instituto de Matemática e Tecnologia - IMTec
% Programa de Pós-Graduação em Modelagem e Otimização - PPGMO
% Classe para o texto do Exame de Qualificação e Estudos Dirigidos
% NÃO ALTERE ESTE ARQUIVO: ele define a formatação oficial do programa.
%==============================================================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{templateppgmo}[2026/09/30 v2.0 Classe PPGMO/UFCAT por Vaston G. Costa]

%==============================================================================
% Utilizando a classe abntex
%==============================================================================
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{abntex2}}
\ProcessOptions	
\LoadClass[12pt,openright,twoside,a4paper]{abntex2} % frente e verso

%==============================================================================
% Pacotes requeridos
%==============================================================================

% Permitir assentos para português do Brasil
\RequirePackage[utf8]{inputenc}

% Separação silábica correta para português do Brasil
\RequirePackage[brazil]{babel}

% Permite hifenização de palavras com acentos e cedilhas
\RequirePackage[T1]{fontenc}

% Pdf com links e bookmarks
\RequirePackage{hyperref}

% Paginas com as citações na bibl
\RequirePackage[brazilian,hyperpageref]{backref}	

% Pacote para citações e referências nas normas da ABNT
\RequirePackage[alf,bibjustif,abnt-last-names=abnt,abnt-etal-text=it,abnt-repeated-title-omit=yes]{abntex2cite}

% Pacote para criação da lista de siglas e abreviaturas
\RequirePackage{nomencl}

% Pacote para definição de novos corpos flutuantes
\RequirePackage{float}

% Pacote para definição dos captions
\RequirePackage{caption}

% Pacote para a definição dos ambientes matemáticos
\RequirePackage{amsthm}

% Pacote para referenciar a última página do documento
\RequirePackage{lastpage}

% Pacote para escrever texto sem separação silábica
\RequirePackage{hyphenat}

% Pacote para incluir páginas de PDF
\RequirePackage{pdfpages}

%Para inserir algoritmo
\RequirePackage[linesnumbered, algoruled, vlined, algochapter, portuguese]{algorithm2e}


% Mapear caracteres especiais no PDF
%\RequirePackage{cmap}		

% Usa a fonte Latin Modern		
\RequirePackage{lmodern}	

% Cria o indice	
\RequirePackage{makeidx}            

% Indenta o primeiro parágrafo de cada seção.
\RequirePackage{indentfirst}		

% Controle das cores
\RequirePackage{color}				

% Inclusão de gráficos
\RequirePackage{graphicx}	

%Para inserir marca d'água


\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}

%==============================================================================
% Definição e redefinição de comandos usados na classe
%==============================================================================

\RequirePackage{calc,soul,fourier}

% Configurações do pacote backref
% Usado sem a opção hyperpageref de backref
\renewcommand{\backrefpagesname}{Citado na(s) página(s):~}
% Texto padrão antes do número das páginas
\renewcommand{\backref}{}
% Define os textos da citação
\renewcommand*{\backrefalt}[4]{
	\ifcase #1 %
		Nenhuma citação no texto.%
   \or
		Citado na página #2.%
   \else
		Citado #1 vezes nas páginas #2.%
	\fi}%
	
  \definecolor{nicered}{rgb}{0,0,0}
  \makeatletter
  \newlength\dlf@normtxtw
  \setlength\dlf@normtxtw{\textwidth}
  \def\myhelvetfont{\def\sfdefault{mdput}}
  \newsavebox{\feline@chapter}
\newcommand\feline@chapter@marker[1][4cm]{%
\sbox\feline@chapter{%
\resizebox{!}{#1}{\fboxsep=1pt%
\colorbox{nicered}{\color{white}\bfseries\sffamily\thechapter}%
}}%
\rotatebox{90}{%
\resizebox{%
\heightof{\usebox{\feline@chapter}}+\depthof{\usebox{\feline@chapter}}}%
{!}{\scshape\so\@chapapp}}\quad%
\raisebox{\depthof{\usebox{\feline@chapter}}}{\usebox{\feline@chapter}}%
}
\newcommand\feline@chm[1][4cm]{%
\sbox\feline@chapter{\feline@chapter@marker[#1]}%
\makebox[0pt][l]{% aka \rlap
\makebox[1cm][r]{\usebox\feline@chapter}%
}}
\makechapterstyle{default}{
%\renewcommand\chapnamefont{\Large\scshape}
%\renewcommand\chaptitlefont{\Large\bfseries\scshape\color{nicered}}
%\renewcommand\chapternamenum{\space}
%\renewcommand\printchaptername{\normalfont\Large}
%
%\renewcommand\printchapternum{\null\hfill\feline@chm[2.5cm]\par}
%\renewcommand\afterchapternum{\par\vskip\midchapskip}
%\renewcommand\printchaptertitle[1]{\chaptitlefont\raggedleft ##1\par}
}
\makeatother

\makeatletter
\newcommand\thefontsize[1]{{#1 O tamanho da fonte: \f@size pt\par}}
\makeatother
\sffamily


%\chapterstyle{crosshead}
%\renewcommand{\chaptitlefont}{\sffamily\Large}

%\renewcommand{\ABNTEXpartfont}{\sffamily\centering}
%\renewcommand{\ABNTEXchapterfont}{\centering\sffamily}


% Permite comandos com @ no nome
\makeatletter

% Comando para definição do departamento
\newcommand{\departamento}[1]{
\gdef\@departamento{#1}
}

\newcommand{\tipodetrabalho}[1]{
\gdef\@tipodetrabalho{#1}
}


% Comando para definição do curso e sua modalidade
\newcommand{\curso}[3]{
\gdef\@tipodocurso{#1}
\gdef\@curso{#2}
\gdef\@graucurso{#3}
}

% Comando para definição do nome e sobrenome do author
\renewcommand\autor[3][Nome para Referencia]{
\global\def\@authname{#2}
\global\def\@authsurn{#3}
\def\ABNTautordata{#2 #3}
\renewcommand{\imprimirautor}{#2 #3}
\def\ABNTautorreferencia{#1}
\def\ABNTautordatabib{#3, #2}
\global\def\@author{#2 #3}
}

% Redefinição do comando de orientador
\renewcommand{\orientador}[3][\orientadorname:]{
\renewcommand{\imprimirorientadorRotulo}{#1}
\def\ABNTorientadordatabib{#3, #2}
\renewcommand{\imprimirorientador}{#2 #3}
}


% Comando com o nome completo do curso
\providecommand{\@cursocompleto}{ {\@tipodocurso} em {\@curso}}

% Definição do comando de área de concentração
\newcommand{\area}[1]{
\global\def\@area{#1}
}

% Redefinição do comando de data do ABNTex
\renewcommand{\data}[3]{
\date{#1}{#2}{#3}
}

% Redefinição do comando \date do Latex
\renewcommand{\date}[3]{
\gdef\@day{#1}
\gdef\@month{#2}
\gdef\@year{#3}
}

% Define a data
\date{\number\day}{\monthname}{\number\year}

% Comando para definição dos membros da banca
\newcount\@membrobancaconta\@membrobancaconta0
\newcommand\membrobanca[2]{
\global\@namedef{NomeMembroBanca:\expandafter\the\@membrobancaconta}{#1}
\global\@namedef{LocalMembroBanca:\expandafter\the\@membrobancaconta}{#2}
\global\advance\@membrobancaconta by 1
}

% Comando para definição das palavras chaves
\newcount\@palavraconta\@palavraconta0
\newcommand\palavrachave[1]{
\global\@namedef{Palavra:\expandafter\the\@palavraconta}{#1}
\global\advance\@palavraconta by 1
}

\newcount\@wordconta\@wordconta0
\newcommand\keyword[1]{
\global\@namedef{Keyword:\expandafter\the\@wordconta}{#1}
\global\advance\@wordconta by 1
}

% Comando para definição da dedicatória
\newcommand{\textodedicatoria}[1]{
\gdef\@dedicatoria{#1}
}

% Comando para definição dos agradecimentos
\newcommand{\textoagradecimentos}[1]{
\gdef\@agradecimentos{#1}
}

% Comando para definição da epígrafe
\newcommand{\textoepigrafe}[1]{
\gdef\@epigrafe{#1}
}

% Comando para inserir simbolos na lista de símbolos
\newcommand{\simbolo}[2]{
\addcontentsline{los}{simbolo}{\ensuremath{#1} --- #2}
}

% Comando para definição do resumo e palavras chaves
\newcommand{\textoresumo}[1]{
\gdef\@resumo{#1}
}

\newcommand{\textoabstract}[1]{
\gdef\@abstract{#1}
}

% Opção para exibir a lista de figuras
\newcommand{\incluilistadefiguras}{
\gdef\@incluilistadefiguras{true}
}

% Opção para exibir a lista de tabelas
\newcommand{\incluilistadetabelas}{
\gdef\@incluilistadetabelas{true}
}

% Opção para exibir a lista de siglas
\newcommand{\incluilistadesiglas}{
\gdef\@incluilistadesiglas{true}
}

% Opção para exibir a lista de símbolos
\newcommand{\incluilistadesimbolos}{
\gdef\@incluilistadesimbolos{true}
}

% Opção para exibir a lista de quadros
\newcommand{\incluilistadequadros}{
\gdef\@incluilistadequadros{true}
}

% Opção para exibir a lista de algoritmos
\newcommand{\incluilistadealgoritmos}{
\gdef\@incluilistadealgoritmos{true}
}

% Opção para exibir a lista de códigos
\newcommand{\incluilistadecodigos}{
\gdef\@incluilistadecodigos{true}
}


% Comando para criação de abreviaturas e siglas
\newcommand{\sigla}[2]{\nomenclature{#1}{#2}}

% Comando para criar a lista de palavras chaves
\newcommand{\palavraschaves}
{% O caractere % no fim de cada linha é necessário para que o comando não imprima espaços desnecessários
\newcount\@palavracontatemp% Contador temporário
\newtoks\@palavratoks% Registrador de tokens para concatenar as palavras
\@palavratoks={}% Inicialmente nenhuma palavra
\ifnum\@palavraconta>0% Verifica se foi definida pelo menos uma palavra chave
 \@palavracontatemp=0% Inicializa o contador temporário para a primeira palavra
 \@palavratoks=\expandafter{\csname Palavra:\the\@palavracontatemp \endcsname}% Insere a primeira palavra no registrador
 \@palavracontatemp=1% Inicializa o contador temporário para a segunda palavra
 \@whilenum \@palavracontatemp<\@palavraconta \do {% Enquanto o contador não atingir a última palavra
   \@palavratoks=\expandafter\expandafter\expandafter{% Concatena as palavras
   \expandafter\the\expandafter\@palavratoks%
   \expandafter,\expandafter\space%
   \csname Palavra:\the\@palavracontatemp\endcsname%
   }%
   \advance\@palavracontatemp by 1% Incrementa o contador
   }
\fi%
\the\@palavratoks% Retorna a lista de palavras concatenadas
}


% Comando para criar a lista de keywords
\newcommand{\keywords}
{% O caractere % no fim de cada linha é necessário para que o comando não imprima espaços desnecessários
\newcount\@wordcontatemp% Contador temporário
\newtoks\@wordtoks% Registrador de tokens para concatenar as palavras
\@wordtoks={}% Inicialmente nenhuma palavra
\ifnum\@wordconta>0% Verifica se foi definida pelo menos uma palavra chave
 \@wordcontatemp=0% Inicializa o contador temporário para a primeira palavra
 \@wordtoks=\expandafter{\csname Keyword:\the\@wordcontatemp \endcsname}% Insere a primeira palavra no registrador
 \@wordcontatemp=1% Inicializa o contador temporário para a segunda palavra
 \@whilenum \@wordcontatemp<\@wordconta \do {% Enquanto o contador não atingir a última palavra
   \@wordtoks=\expandafter\expandafter\expandafter{% Concatena as palavras
   \expandafter\the\expandafter\@wordtoks%
   \expandafter,\expandafter\space%
   \csname Keyword:\the\@wordcontatemp\endcsname%
   }%
   \advance\@wordcontatemp by 1% Incrementa o contador
   }
\fi%
\the\@wordtoks% Retorna a lista de palavras concatenadas
}


%==============================================================================
% Configurações diversas
%==============================================================================

% Configuração do pacote nomencl
% Comando necessário para a criação da lista de abreviaturas
\makenomenclature
% Separa as abreviaturas de suas definições com um hífen
\renewcommand{\nomlabel}[1]{#1 ---}
% Traduz o título da lista de abreviaturas
\renewcommand{\nomname}{LISTA DE ABREVIATURAS E SIGLAS}

%alteração da fonte dos capítulos, seções e subseções
\renewcommand{\ABNTEXchapterfont}{\bfseries}


% Comentário a ser inserido na folha de rosto
\preambulo{Qualificação apresentada como requisito parcial para a obtenção do título de {\@graucurso} em {\@curso} pela {\imprimirinstituicao}.}

% Recuo dos parágrafos
\setlength{\parindent}{1.15cm}% Controle do espaçamento 
\setlength{\parskip}{0.2cm}  % tente também \onelineskip

% Níveis de subseções
\setcounter{tocdepth}{4}
\setcounter{secnumdepth}{4}


%==============================================================================
% Definição dos ambientes matemáticos
%==============================================================================

\theoremstyle{definition}
\newtheorem{teorema}{Teorema}
\newtheorem{proposicao}{Proposição}
\newtheorem{lema}{Lema}
\newtheorem{corolario}{Corolário}
\newtheorem{exemplo}{Exemplo}
\newtheorem{observacao}{Observação}
\newtheorem{definicao}{Definição}
\newenvironment{demonstracao}{\begin{proof}[Demonstração]}{\end{proof}}


%==========================================
% Tipo de trabalho
%===============================


%==============================================================================
% Capa
%==============================================================================

% Criação da Capa (Baseada na capa do ABNTex)
\renewcommand{\imprimircapa}
{
% A capa reinicia a contagem de páginas (titlingpage); um nome próprio para as
% páginas da capa evita links internos duplicados (page.1, page.2) no PDF.
\renewcommand{\thepage}{capa.\arabic{page}}%
\pdfbookmark{Capa}{ppgmocapa}
\begin{capa}%

% Cabeçalho: logos com largura fixa nas laterais e texto centralizado no meio,
% sem sobreposição (as três caixas somam exatamente \textwidth).
\noindent\makebox[\textwidth][c]{%
\begin{minipage}[c]{2.2cm}
\includegraphics[width=2cm]{figuras/logoPPGMO.jpg}
\end{minipage}%
\begin{minipage}[c]{\dimexpr\textwidth-4.6cm\relax}
\centering
{\large\MakeUppercase{\imprimirinstituicao}\par}
{\small\MakeUppercase{\@departamento}\par}
{\small\MakeUppercase{\@cursocompleto}\par}
\end{minipage}%
\begin{minipage}[c]{2.4cm}
\raggedleft\includegraphics[width=2.2cm]{figuras/ufcat.jpg}
\end{minipage}%
}

  % \flushright

  \center

  \vspace*{\fill}

  {\Large\textbf{\imprimirautor}}

  \vspace*{\fill}

  {\ABNTEXchapterfont\sc\Large\imprimirtitulo}

  \vspace*{\fill}

  \ifthenelse{\equal{\@tipodetrabalho}{}}{

  \vspace*{\fill}



  \ifthenelse{\equal{\@graucurso}{Mestre}}{
  {\MakeUppercase{\textbf{Qualificação de Mestrado}}}
  }
  {
  {\MakeUppercase{\textbf{Tese de Doutorado}}}
  }
  }
  {
  \ifthenelse{\equal{\@tipodetrabalho}{1}}{
  \MakeUppercase{{\Large\textbf{Estudo Dirigido 1}}}
  }
  {
  \MakeUppercase{{\Large\textbf{Estudo Dirigido 2}}}
  }
  \vspace*{1cm}

  {\Large\textbf{Aluno: \imprimirautor}}

  {\Large\textbf{Orientador: \imprimirorientador}}
  }
  \vspace*{\fill}

  {\MakeUppercase{\imprimirlocal}}, 
   % \par
   {\@year}

   \vspace*{1cm}
   \end{capa}%
   \renewcommand{\thepage}{\arabic{page}}%

}% fim da \capa

\let\@oldbibliography\bibliography
\providecommand{\ABNTbibliographyname}{REFER\^{E}NCIAS}
\renewcommand{\bibliography}[1]
{
\renewcommand{\bibname}{REFERÊNCIAS}
\if@openright\cleardoublepage\else\clearpage\fi
\phantomsection
\@oldbibliography{#1}
}


\addto\captionsbrazil{%
  \renewcommand{\listfigurename}%
    {LISTA DE FIGURAS}%
    }

\addto\captionsbrazil{%
  \renewcommand{\listtablename}%
    {LISTA DE TABELAS}%
    }

\addto\captionsbrazil{%
  \renewcommand{\indexname}%
    {\'INDICE}%
    }

\addto\captionsbrazil{%
\renewcommand\contentsname{SUM\'ARIO}
}


\providecommand{\listadesiglasname}{LISTA DE ABREVIATURAS E SIGLAS}
% \providecommand{  \renewcommand{\indexname}{SUM\'ARIO}}
 % \providecommand{ \renewcommand{\listfigurename}{LSITA DE FIGURAS}}
 % \providecommand{ \renewcommand{\listtablename}{LISTA DE TABELAS}}

%==============================================================================
% Folha de Rosto
%==============================================================================

% Criação da folha de rosto (baseada na folha de rosto do ABNTex)
\renewcommand{\folhaderostocontent}{
\begin{center}

\vspace*{1cm}
{\large\MakeUppercase{\ABNTautordata}}

\vspace*{\fill}\vspace*{\fill}
{\ABNTEXchapterfont\sc\Large\imprimirtitulo}
\vspace*{\fill}

    \abntex@ifnotempty{\imprimirpreambulo}{%
    \hspace{.45\textwidth}
    \begin{minipage}{.5\textwidth}
    \SingleSpacing
    \imprimirpreambulo
       \end{minipage}%
       \vspace*{\fill}
    }%

    {
    \imprimirorientadorRotulo: \\ 
    \large\imprimirorientador
    }
    \abntex@ifnotempty{\imprimircoorientador}{%
    {
    \par
    \imprimircoorientadorRotulo: \\
    \large\imprimircoorientador
       }%
    }%
    \vspace*{\fill}


    {\MakeUppercase{\imprimirlocal}}
    \par
    {\@year}
    \vspace*{\fill}

    \end{center}


    }



%==============================================================================
% Ficha Catalografica
%==============================================================================
\newcommand{\arquivofichacatalografica}{}
\newcommand{\inserirfichacatalografica}[1]{\renewcommand{\arquivofichacatalografica}{#1}}

\newcommand{\imprimifichacatalografica}{
\ifthenelse{\not\equal{\arquivofichacatalografica}{}}
{
\begin{fichacatalografica}
\includepdf[pages={1}]{\arquivofichacatalografica}
\end{fichacatalografica}
}	
}



%==============================================================================
% Folha de Aprovação antes da defesa
%==============================================================================

% Definição da folha de aprovação

\newcommand{\arquivofolhaaprovacao}{}
\newcommand{\inserirfolhaaprovacao}[1]{\renewcommand{\arquivofolhaaprovacao}{#1}}



\newcommand{\folhadeaprovacaoUFG}
{
\ifthenelse{\not\equal{\arquivofolhaaprovacao}{}}
{
\begin{folhadeaprovacao}
\includepdf[pages={1}]{\arquivofolhaaprovacao}
\end{folhadeaprovacao}
	}%fim if
	{
	\begin{folhadeaprovacao}
 \begin{center}
 \vspace*{1cm}
 {\large\MakeUppercase{\imprimirautor}}

 \vspace*{\fill}\vspace*{\fill}
 {\ABNTEXchapterfont\sc\Large\imprimirtitulo}
 \vspace*{\fill}

 \hspace{.45\textwidth}
 \begin{minipage}{.5\textwidth}
 Dissertação apresentada ao {\@cursocompleto} da {\imprimirinstituicao}.
        \end{minipage}%
        \vspace*{\fill}
        \end{center}
        
        \begin{center}
        Trabalho aprovado em {\@day} de {\@month} de {\@year}.
        \end{center}   
        
        

        \assinatura{\textbf{\imprimirorientador} \\ \imprimirorientadorRotulo} 

        \abntex@ifnotempty{\imprimircoorientador}{
        \assinatura{\textbf{\imprimircoorientador} \\ \imprimircoorientadorRotulo}
        }
        \count1=0
        \@whilenum \count1<\@membrobancaconta \do {
        \assinatura{
        \textbf{ \csname NomeMembroBanca:\the\count1 \endcsname }\\
        \csname LocalMembroBanca:\the\count1 \endcsname
        }
        \advance\count1 by 1
        }
        
        \vspace*{\fill}  
        \begin{center}
        
        {\imprimirlocal}
        \par
        {\@year}
        \vspace*{1cm}
        \end{center}

        \end{folhadeaprovacao}
	}%fim else
	}





%==============================================================================
% Dedicatória
%==============================================================================

% Criação da dedicatória
\newcommand{\inserededicatoria}
{
\@ifundefined{@dedicatoria}{}{
\begin{dedicatoria}
\vspace*{\fill}
\centering
\noindent
\textit{\@dedicatoria}
\vspace*{\fill}
\end{dedicatoria}
}
}

%==============================================================================
% Agradecimentos
%==============================================================================

% Criação dos agradecimentos
\newcommand{\insereagradecimentos}
{
\@ifundefined{@agradecimentos}{}{
\begin{agradecimentos}
\@agradecimentos
\end{agradecimentos}
}
}

%==============================================================================
% Epígrafe
%==============================================================================

% Criação da epígrafe
\newcommand{\insereepigrafe}
{
\@ifundefined{@epigrafe}{}{
\begin{epigrafe}
\vspace*{\fill}
\begin{center}
\textit{\@epigrafe}
\end{center}
\end{epigrafe}	 

}
}

%==============================================================================
% Lista de Símbolos
%==============================================================================

% Apresentação dos símbolos na lista de símbolos
\newcommand\l@simbolo[2]{\par #1}

% Criação da lista de símbolos
\newcommand{\inserelistadesimbolos}
{
\@ifundefined{@incluilistadesimbolos}{}{
		%\if@openright\cleardoublepage\else\clearpage\fi
    \phantomsection
    %\pdfbookmark{Lista de Símbolos}{ufgcaclistadesimbolos}
    \pretextualchapter{LISTA DE SÍMBOLOS}
    {\setlength{\parindent}{0cm}
    \@starttoc{los}
    }
    \cleardoublepage
    }
    }

%==============================================================================
% Criação dos Ambientes Flutuantes para Quadros, Algoritmos e Códigos
%==============================================================================

\newcommand{\listquadroname}{LISTA DE QUADROS}
\newcommand{\quadroname}{Quadro}
\newcommand{\quadrorefname}{Quadro}

\newcommand{\listalgoritmoname}{LISTA DE ALGORITMOS}
\newcommand{\algoritmoname}{Algoritmo}
\newcommand{\algoritmorefname}{Algoritmo}

\newcommand{\listcodigoname}{LISTA DE CÓDIGOS}
\newcommand{\codigoname}{Código}
\newcommand{\codigorefname}{Código}



%QUADRO
\newfloat{quadro}{htbp}{qud}[chapter]
\renewcommand{\thequadro}{\thechapter.\@arabic\c@quadro}

\newlistof{listofquadros}{qud}{\listquadroname}
\newlistentry[chapter]{quadro}{qud}{0}
\cftsetindents{quadro}{0em}{2.3em}


\renewcommand{\cftquadroname}{\quadroname\space}
\renewcommand{\cftquadroaftersnum}{\space--}


%ALGORITMO
\floatstyle{ruled}
\newfloat{algoritmo}{htbp}{alg}[chapter]
\renewcommand{\thealgoritmo}{\thechapter.\@arabic\c@algoritmo}

\newlistof{listofalgoritmos}{alg}{\listalgoritmoname}
\newlistentry[chapter]{algoritmo}{alg}{0}
\cftsetindents{algoritmo}{0em}{2.3em}

\renewcommand{\cftalgoritmoname}{\algoritmoname\space}
\renewcommand{\cftalgoritmoaftersnum}{\space--}


%CODIGO
\floatstyle{ruled}
\newfloat{codigo}{htbp}{cod}[chapter]
\renewcommand{\thecodigo}{\thechapter.\@arabic\c@codigo}

\newlistof{listofcodigos}{cod}{\listcodigoname}
\newlistentry[chapter]{codigo}{cod}{0}
\cftsetindents{codigo}{0em}{2.3em}

\renewcommand{\cftcodigoname}{\codigoname\space}
\renewcommand{\cftcodigoaftersnum}{\space--}

\floatname{quadro}{\quadroname}
\floatname{algoritmo}{\algoritmoname}
\floatname{codigo}{\codigoname}

\ifthenelse{\equal{\ABNTEXisarticle}{true}}{%
\counterwithout{section}{chapter}
\counterwithout{quadro}{section}
\counterwithout{algoritmo}{section}
\counterwithout{codigo}{section}
}{%else
\counterwithout{quadro}{chapter}
\counterwithout{algoritmo}{chapter}
\counterwithout{codigo}{chapter}
}

\renewcommand{\cfttableaftersnum}{\space--}
\renewcommand{\cftfigureaftersnum}{\space--}

% Comando para configurar os captions no documento
\captionsetup[quadro]{position=top, labelsep=endash, font=footnotesize}
\captionsetup[table]{position=top, labelsep=endash, font=footnotesize}
\captionsetup[figure]{position=top, labelsep=endash, font=footnotesize}
\captionsetup[codigo]{position=top, labelsep=endash}
\captionsetup[algoritmo]{position=top, labelsep=endash}

%==============================================================================
% Resumo
%==============================================================================

% Criação do resumo e palavras chaves no documento
\newcommand{\insereresumo}
{
\@ifundefined{@resumo}{}{
\if@openright\cleardoublepage\else\clearpage\fi
\phantomsection
\begin{resumo}[RESUMO]
%{\MakeUppercase{\ABNTautorreferencia}}. {\textit{\imprimirtitulo}.} \@year. \pageref{LastPage} f. \ifthenelse{\equal{\@graucurso}{Mestre}}{Dissertação (Mestrado)}{Tese (Doutorado)} -- \@departamento, \imprimirinstituicao, \imprimirlocal.
      %\end{flushleft}
      \vskip 36pt
      \@resumo

      \vspace{\onelineskip}

      \noindent
      \textbf{Palavras-chaves:}\palavraschaves.
      \end{resumo}
      }
      }

      \newcommand{\insereabstract}
      {
      \@ifundefined{@abstract}{}{
      \if@openright\cleardoublepage\else\clearpage\fi
      \phantomsection
      \begin{resumo}[ABSTRACT]
      %{\MakeUppercase{\ABNTautorreferencia}}. {\textit{\imprimirtitulo}.} \@year. \pageref{LastPage} f. \ifthenelse{\equal{\@graucurso}{Mestre}}{Master Thesis}{Doctoral Thesis} - \@departamento, \imprimirinstituicao, \imprimirlocal.
      \vskip 36pt
      \@abstract

      \vspace{\onelineskip}

      \noindent
      \textbf{Keywords:}\keywords.
      \end{resumo}
      }
      }


%==============================================================================
% Definição de comandos a serem inseridos diretamente no início do documento
%==============================================================================

\newcommand{\inserelistadefiguras}
{
\@ifundefined{@incluilistadefiguras}{}{
\phantomsection
\pdfbookmark{LISTA DE FIGURAS}{ufgcaclistadefiguras}
\listoffigures*
\cleardoublepage
}
}

\newcommand{\inserelistadetabelas}
{
\@ifundefined{@incluilistadetabelas}{}{
\phantomsection
\pdfbookmark{LISTA DE TABELAS}{ufgcaclistadetabelas}
\listoftables*
\cleardoublepage
}
}

\newcommand{\inserelistadesiglas}
{
\@ifundefined{@incluilistadesiglas}{}{
\phantomsection
\pdfbookmark{LISTA DE SIGLAS}{ufgcaclistadesiglas}
\printnomenclature
\cleardoublepage
}
}

\newcommand{\inserelistadequadros}
{
\@ifundefined{@incluilistadequadros}{}{
\phantomsection
\pdfbookmark{LISTA DE QUADROS}{ufgcaclistadequadros}
\listofquadros*
\cleardoublepage
}
}

% \newcommand{\inserelistadealgoritmos}
% {
% \@ifundefined{@incluilistadealgoritmos}{}{
% \phantomsection
% \pdfbookmark{LISTA DE ALGORITMOS}{ufgcaclistadealgoritmos}
% \listofalgoritmos*
% \cleardoublepage
% }
% }

\newcommand{\inserelistadealgoritmos}
{
\@ifundefined{@incluilistadealgoritmos}{}{
\phantomsection
\pdfbookmark{LISTA DE ALGORITMOS}{ufgcaclistadealgoritmos}
{
\makeatletter

\renewcommand\numberline[1]{
  \leftskip -0.7em
  \rightskip 1.6em
  \parfillskip -\rightskip
  \parindent 0em
  \@tempdima 2.0em
  \vspace{0em} \advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
  Algoritmo \normalfont ##1 ~~ }
\makeatother
\listofalgorithms
}
\cleardoublepage
}
}

\newcommand{\inserelistadecodigos}
{
\@ifundefined{@incluilistadecodigos}{}{
\phantomsection
\pdfbookmark{LISTA DE CÓDIGOS}{ufgcaclistadecodigos}
\listofcodigos*
\cleardoublepage
}
}

%==============================================================================
% Início do Documento
%==============================================================================

% Comandos a serem inseridos no início do documento
% ---
% compila o indice
% ---

% Ajustes de diagramação: permite um pouco mais de espaço entre palavras antes
% de deixar uma linha ultrapassar a margem (evita avisos Overfull \hbox) e não
% estica o espaço vertical para preencher a página (evita Underfull \vbox).
\setlength{\emergencystretch}{2em}
\raggedbottom

% alterando o aspecto da cor azul
\definecolor{blue}{RGB}{41,5,195}

% informações do PDF
\hypersetup{
 	pdfproducer={LaTeX with abnTeX2}, 	% producer of the document
   	colorlinks=true,       		% false: boxed links; true: colored links
    	linkcolor=blue,          	% color of internal links
    	citecolor=blue,        		% color of links to bibliography
    	filecolor=magenta,      		% color of file links
     urlcolor=blue,
     bookmarksdepth=4,
     breaklinks=true,
     }

     \makeindex

     \AtBeginDocument{

     \chapterstyle{bianchi}
%\chapterstyle{madsen}
%\chapterstyle{lyhne}
%\chapterstyle{dash}
%\chapterstyle{bringhurst}
%\chapterstyle{one}
%\chapterstyle{ell}
%\chapterstyle{default}
%\chapterstyle{daleif1}
\pretextual

\ifthenelse{\equal{\@tipodetrabalho}{}}{
\imprimircapa

\imprimirfolhaderosto*

%\imprimifichacatalografica

%\folhadeaprovacaoUFG

%\inserededicatoria

%\insereagradecimentos

%\insereepigrafe

\insereresumo

\insereabstract

\inserelistadefiguras

\inserelistadetabelas

\inserelistadequadros

\inserelistadesiglas

\inserelistadesimbolos

\inserelistadealgoritmos

\inserelistadecodigos
}
{
\imprimircapa

\insereresumo
}



\phantomsection
\pdfbookmark{Sumário}{ppgmosumario}
\tableofcontents*
\cleardoublepage


\mainmatter
}


\makeatother
