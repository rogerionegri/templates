%%-----------------------------------------------------------------------------
%% The LaTeX Project Public License 
%%-----------------------------------------------------------------------------
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%%
%% Further information about abnTeX2 are available on http://www.abntex.net.br/
%%------------------------------------------------------------------------------


% -----------------------------------------------------------------------------
% Universidade Estadual "Júlio de Mesquita Filho" - UNESP - ICT - São José dos Campos
% Engenharia Ambiental
%
% Customização da classe abnTeX2 (http://www.abntex.net.br/) para as normas da UNESP - ICT
%
%
% Autor: Luccas Zambon Maselli (v.1 -- 03jun2019)
%		 Rogério Galante Negri (v.2 -- 22mai2022)
%
%------------------------------------------------------------------------------
% Codificação: UTF-8
% LaTeX:  abnTeX2          
% -----------------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{configuracoes/utfpr-abntex2}[2016/07/07 v1.0]

% Repassa os parâmetros ao abntex2
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{abntex2}}

\PassOptionsToClass{%
% Opções da classe memoir
    12pt,                     % Tamanho da fonte
    a4paper,                  % Tamanho do papel.
    sumario=tradicional,      % Seleciona o sumário tradicional
    %sumario=abnt-6027-2012
    % Opções do pacote babel
    brazil,                   % Idioma do documento
}{abntex2}

\ProcessOptions\relax
\LoadClass{abntex2}

%\RequirePackage[brazilian, hyperpageref]{backref}       % Produzir índice nas referências
\RequirePackage{makeidx}                                % Produzir índice remissivo de palavras
\RequirePackage{chngcntr}


% -----------------------------------------------------------------------------
% Configurações gerais
% -----------------------------------------------------------------------------

% Retira o espaço extra desnecessário nas frases
\frenchspacing

% Configurações do pacote backref usado sem a opção hyperpageref de backref
%\renewcommand{\backrefpagesname}{Citado na(s) p\'agina(s):~}     %Comentado para remover o "Citado na página..." nas refs.

% Texto padrão antes do número das páginas
\renewcommand{\backref}{}
% Define as listas de item compactas (sem espaçamento entre os itens)
\setlist{noitemsep, topsep=0pt, parsep=0pt, partopsep=0pt}

% Define os textos da citação
%\renewcommand*{\backrefalt}[4]
%{%
%    \ifcase #1
%        Nenhuma cita\c{c}\~ao no texto.
%    \or
%        Citado na p\'agina #2.
%    \else
%        Citado #1 vezes nas p\'aginas #2.
%    \fi
%}

% Define a numeração das equações de forma sequencial
\counterwithout{equation}{chapter}

% -----------------------------------------------------------------------------
% Comandos de dados
% -----------------------------------------------------------------------------

% Comandos de dados - Departamento
\providecommand{\imprimirdepartamento}{}
\newcommand{\departamento}[1]{\renewcommand{\imprimirdepartamento}{#1}}

% Comandos de dados - Programa
\providecommand{\imprimirprograma}{}
\newcommand{\programa}[1]{\renewcommand{\imprimirprograma}{#1}}

% Comandos de dados - Subtítulo do trabalho
\providecommand{\imprimirsubtitulo}{}
\newcommand{\subtitulo}[1]{\renewcommand{\imprimirsubtitulo}{#1}}

% Comandos de dados - Instituição do orientador
\providecommand{\imprimirinstOrientador}{}
\newcommand{\instOrientador}[1]{\renewcommand{\imprimirinstOrientador}{#1}}

% Comandos de dados - Instituição do coorientador
\providecommand{\imprimirinstCoorientador}{}
\newcommand{\instCoorientador}[1]{\renewcommand{\imprimirinstCoorientador}{#1}}

% Comandos de dados -  Tipo de trabalho acadêmico (trabalho de conclusão de curso, tese, dissertação ou projeto de qualificação)
\providecommand{\imprimirprojeto}{}
\newcommand{\projeto}[1]{\renewcommand{\imprimirprojeto}{#1}}

% Comandos de dados - Título Acadêmico a ser alcançado (Bacharel, Tecnólogo)
\providecommand{\imprimirtituloAcademico}{}
\newcommand{\tituloAcademico}[1]{\renewcommand{\imprimirtituloAcademico}{#1}}

%%% Comandos de dados - Titulo em inglês
%%\providecommand{\imprimirTituloIngles}{}
%%\newcommand{\tituloIngles}[1]{\renewcommand{\imprimirTituloIngles}{#1}}


% Comandos de dados - Autor-Citacao
\providecommand{\imprimirautorcitacao}{}
\newcommand{\autorcitacao}[1]{\renewcommand{\imprimirautorcitacao}{#1}}

% Comandos de dados - Nome autor para citação
% Comandos de dados - Titulo em inglês???
\providecommand{\imprimirtitleabstract}{}
\newcommand{\titleabstract}[1]{\renewcommand{\imprimirtitleabstract}{#1}}

% Comandos de dados - Subtitle
\providecommand{\imprimirsubtitle}{}
\newcommand{\subtitle}[1]{\renewcommand{\imprimirsubtitle}{#1}}

% Comandos de dados - Área de concentração com Rótulo
\newcommand{\imprimirareaconcentracaoRotulo}{\'Area de concentra\c{c}\~ao: }
\providecommand{\imprimirareaconcentracao}{}
\newcommand{\areaconcentracao}[1]{\renewcommand{\imprimirareaconcentracao}{#1}}

% Comandos de dados - linha de pesquisa
\newcommand{\imprimirlinhapesquisaRotulo}{Linha de pesquisa: }
\providecommand{\imprimirlinhapesquisa}{}
\newcommand{\linhapesquisa}[1]{\renewcommand{\imprimirlinhapesquisa}{#1}}

% Comandos de dados - Texto da folha de aprovação
\providecommand{\imprimirtextopadraofolhadeaprovacao}{}
\newcommand{\textopadraofolhadeaprovacao}[1]{\renewcommand{\imprimirtextopadraofolhadeaprovacao}{#1}}

% Comandos de dados - Logomarca da instituição
\providecommand{\imprimirlogoinstituicao}{}
\newcommand{\logoinstituicao}[2]{\renewcommand{\imprimirlogoinstituicao}{\includegraphics[width={#1}\textwidth]{#2}}}



% Add. 23mai22
\providecommand{\imprimirinstituicao}{}
\newcommand{\instituicao}[1]{\renewcommand{\imprimirinstituicao}{#1}}

\providecommand{\imprimirInstituicaoCurto}{}
\newcommand{\instituicaoCurto}[1]{\renewcommand{\imprimirInstituicaoCurto}{#1}}

\providecommand{\imprimirInstituicaoCampus}{}
\newcommand{\instituicaoCampus}[1]{\renewcommand{\imprimirInstituicaoCampus}{#1}}



\providecommand{\imprimirtituloAcademicoEn}{}
\newcommand{\tituloAcademicoEn}[1]{\renewcommand{\imprimirtituloAcademicoEn}{#1}}

\providecommand{\imprimirprogramaEn}{}
\newcommand{\programaEn}[1]{\renewcommand{\imprimirprogramaEn}{#1}}

\providecommand{\imprimirInstituicaoCurtoEn}{}
\newcommand{\instituicaoCurtoEn}[1]{\renewcommand{\imprimirInstituicaoCurtoEn}{#1}}

\providecommand{\imprimirInstituicaoCampusEn}{}
\newcommand{\instituicaoCampusEn}[1]{\renewcommand{\imprimirInstituicaoCampusEn}{#1}}






% -----------------------------------------------------------------------------
% Estilo de elementos
% -----------------------------------------------------------------------------

% Elementos pré-textuais
\renewcommand{\pretextual}
{%
    \pagenumbering{gobble}
    \aliaspagestyle{chapter}{empty}
    \pagestyle{empty}
    \aliaspagestyle{cleared}{empty}
    \aliaspagestyle{part}{empty}
}

% Configura layout para elementos textuais
\renewcommand{\textual}
{%
    \pagenumbering{arabic} % A numeração das páginas é em algarismos arábicos, inciando em 1
		\pagestyle{abntchapfirst}
		\renewcommand{\headrulewidth}{0pt}
		\renewcommand{\footrulewidth}{0pt}
    \aliaspagestyle{chapter}{abntchapfirst}
    \nouppercaseheads
    \bookmarksetup{startatroot}
}

% Configura layout para elementos pós-textuais
\renewcommand{\postextual}
{%
    \chapterstyle{abnt}
    %\phantompart   %Removido para omitir um espaço maior que aparece entre os capítulos e as Refs/Apend/Anex.
}

% -----------------------------------------------------------------------------
% Objetos flutuantes
% -----------------------------------------------------------------------------

% Comando que trata a fonte nos objetos flutuantes
\renewcommand{\fonte}[1]
{%
    \begin{SingleSpacing}\par\end{SingleSpacing}
    \centering\small{Fonte: #1}
}

% Comando que trata as notas nos objetos flutuantes
\renewcommand{\nota}[1]
{%
    \begin{SingleSpacing}\par\end{SingleSpacing}
    \begin{tabular}{l p{.85\textwidth}}%
        Nota: & #1
    \end{tabular}
}

% -----------------------------------------------------------------------------
% Parágrafos
% -----------------------------------------------------------------------------

% Tamanho da indentação do parágrafo
\setlength{\parindent}{1.5cm}

% Espaçamento entre um parágrafo e outro
\setlength{\parskip}{0.0cm}

% -----------------------------------------------------------------------------
% Fontes
% -----------------------------------------------------------------------------

% Redefinição de fontes
\renewcommand{\ABNTEXchapterfont}{\normalfont\bfseries}
\renewcommand{\ABNTEXchapterfontsize}{\normalsize}

\renewcommand{\ABNTEXpartfont}{\normalfont}
\renewcommand{\ABNTEXpartfontsize}{\ABNTEXchapterfontsize}

\renewcommand{\ABNTEXsectionfont}{\normalfont\bfseries}
\renewcommand{\ABNTEXsectionfontsize}{\normalsize}

\renewcommand{\ABNTEXsubsectionfont}{\normalfont\itshape\bfseries}
\renewcommand{\ABNTEXsubsectionfontsize}{\normalsize\itshape}

\renewcommand{\ABNTEXsubsubsectionfont}{\normalfont}
\renewcommand{\ABNTEXsubsubsectionfontsize}{\normalsize}

\renewcommand{\ABNTEXsubsubsubsectionfont}{\normalfont}
\renewcommand{\ABNTEXsubsubsubsectionfontsize}{\normalsize}

% -----------------------------------------------------------------------------
% Sumário
% -----------------------------------------------------------------------------

% Travessão no sumário para apêndices e anexos
\renewcommand{\cftchapteraftersnum}{\hfill\textendash\hfill}

% Insere espaço entre os itens do sumário de diferentes capítulos
\setlength{\cftbeforechapterskip}{1.0em \@plus\p@}

%%%RGN: Ajustes da nova versão (maio/2022)

\include{./configuracoes/AjusteSumario}

% -----------------------------------------------------------------------------





% -----------------------------------------------------------------------------
% Listas
% -----------------------------------------------------------------------------

% Define os títulos das listas
\addto\captionsbrazil{%
% Ajusta nomes padrões do babel
    \renewcommand{\listadesiglasname}{LISTA DE ABREVIATURAS E SIGLAS}
    %\renewcommand{\listadesimbolosname}{LISTA DE S\'{I}MBOLOS}
    \renewcommand{\listfigurename}{LISTA DE FIGURAS}
    \renewcommand{\listtablename}{LISTA DE TABELAS}
    \renewcommand{\indexname}{\'{I}NDICE REMISSIVO}
% Ajusta nomes usados com a macro \autoref
    \renewcommand{\pageautorefname}{p\'agina}
    \renewcommand{\sectionautorefname}{Se\c{c}\~ao}
    \renewcommand{\subsectionautorefname}{Subse\c{c}\~ao}
    \renewcommand{\subsubsectionautorefname}{Subsubse\c{c}\~ao}
    \renewcommand{\paragraphautorefname}{Subse\c{c}\~ao}
}

% Cria a lista de quadros
\newcommand{\listofquadrosname}{Lista de Quadros}
\newcommand{\quadroname}{Quadro}
\newfloat[chapter]{quadro}{loq}{\quadroname}
\newlistof{listofquadros}{loq}{\listofquadrosname}
\newlistentry{quadro}{loq}{0}
\counterwithout{quadro}{chapter}
\renewcommand{\cftquadroname}{\quadroname\space}
\renewcommand*{\cftquadroaftersnum}{\hfill--\hfill}


%refaz LoF
%\renewcommand{\cftfigurename}{\textbf{\figurename}\space}
%\renewcommand*{\cftfigureaftersnum}{\hfill--\hfill}
%\renewcommand*{\cftfigurepresnum}{\bfseries}
\renewcommand{\cftfigurename}{{\figurename}\space}
\renewcommand*{\cftfigureaftersnum}{\hfill--\hfill}
\renewcommand*{\cftfigurepresnum}{}



%refaz LoT
%\renewcommand{\cfttablename}{\textbf{\tablename}\space}
%\renewcommand*{\cfttableaftersnum}{\hfill--\hfill}
%\renewcommand*{\cfttablepresnum}{\bfseries}
\renewcommand{\cfttablename}{{\tablename}\space}
\renewcommand*{\cfttableaftersnum}{\hfill--\hfill}
\renewcommand*{\cfttablepresnum}{}


% -----------------------------------------------------------------------------
% Capa
% -----------------------------------------------------------------------------
\makeatletter
\renewcommand{\imprimircapa}{
    \begin{capa}
        \begin{center}
		\begin{SingleSpacing}
		
		\begin{figure}
			\centering
				%\includegraphics[scale=0.7]{./dados/figuras/logo_unesp.png}
				\includegraphics[width=0.9\textwidth]{./dados/figuras/logo_unesp.pdf}
\label{fig:logo_unesp}
		\end{figure}

		\end{SingleSpacing}
        \end{center}
        \vspace{60pt}
	\begin{center}
		\large\imprimirautor
	\end{center}
	\vspace{120pt}
        \begin{center}
        
            \ifx\imprimirtitulo\empty
		  {\ABNTEXchapterfont\large{\MakeUppercase{\imprimirtitulo}}}
	    \else
		  {\ABNTEXchapterfont\large{\MakeUppercase{\imprimirtitulo}: {\imprimirsubtitulo}}}
	    \fi
            
        \end{center}
	\vspace{120pt}
	\begin{center}
	\end{center}
	\vfill
        \begin{center}
		\begin{SingleSpacing}
            		%\large\textbf{\imprimirlocal}\\
            		%\large\textbf{\imprimirdata}
            		\normalsize{\imprimirlocal}\\
            		\normalsize{\imprimirdata}
		\end{SingleSpacing}
    	\end{center}

    \end{capa}

}
\makeatother

% -----------------------------------------------------------------------------
% Folha de rosto
% -----------------------------------------------------------------------------
\makeatletter
\renewcommand{\folhaderostocontent}
{%
    \setcounter{page}{2}
    \begin{center}
        \large\imprimirautor\\
    \end{center}

    %\vspace*{96pt}
    \vspace*{7cm}

    \begin{center}
    
    	\ifx\imprimirtitulo\empty
	   {\ABNTEXchapterfont\large{\MakeUppercase{\imprimirtitulo}}}
	\else
	   {\ABNTEXchapterfont\large{\MakeUppercase{\imprimirtitulo}: {\imprimirsubtitulo}}}
	\fi
    \end{center}

    %\vspace*{60pt}
    \vspace*{4cm}

    \abntex@ifnotempty{\imprimirpreambulo}
    {%
        \SingleSpacing
        %\begin{tabular}{p{.25\textwidth}p{.13\textwidth}p{.44\textwidth}}
        \begin{tabular}{p{.35\textwidth}p{.10\textwidth}p{.40\textwidth}}
            %& \multicolumn{2}{p{.6\textwidth}}{\small\hyphenpenalty=10000{\imprimirpreambulo}} \\ & & \\
            & \multicolumn{2}{p{.55\textwidth}}{\normalsize\hyphenpenalty=10000{\imprimirpreambulo}} \\ & & \\
            \abntex@ifnotempty{\imprimirareaconcentracao}
            {%
                & \multicolumn{2}{p{.5\textwidth}}{\small\hyphenpenalty=10000{\imprimirareaconcentracaoRotulo\imprimirareaconcentracao}} \\ & & \\
            }
            \abntex@ifnotempty{\imprimirlinhapesquisa}
            {%
                & \multicolumn{2}{p{.5\textwidth}}{\small\hyphenpenalty=10000{\imprimirlinhapesquisaRotulo\imprimirlinhapesquisa}} \\ & & \\
            }
            \abntex@ifnotempty{\imprimirorientador}
            {%
                & \small\imprimirorientadorRotulo & \imprimirorientador \\
                %& & \small\imprimirinstOrientador \\ & & \\
            }
            \abntex@ifnotempty{\imprimircoorientador}
            {%
                & \small\imprimircoorientadorRotulo & \imprimircoorientador \\
                & & \small\imprimirinstCoorientador
            }
        \end{tabular}
    }

    %\vspace*{\fill}
		\vfill

    \begin{center}
	\begin{SingleSpacing}
            %\large\textbf{\imprimirlocal}\\
            %\large\textbf{\imprimirdata}
            \normalsize{\imprimirlocal}\\
            \normalsize{\imprimirdata}
	\end{SingleSpacing}
    \end{center}
}
\makeatother

% -----------------------------------------------------------------------------
% Folha de aprovação
% -----------------------------------------------------------------------------
\makeatletter
\newcommand{\imprimirfolhadeaprovacao}
{%
    \begin{folhadeaprovacao}
        \vspace*{\fill}

        \begin{tabular}{p{.45\textwidth}p{.45\textwidth}}
            & \imprimirtextopadraofolhadeaprovacao \\
        \end{tabular}

        \vspace*{\fill}
    \end{folhadeaprovacao}
}
\makeatother

% -----------------------------------------------------------------------------
% Dedicatória
% -----------------------------------------------------------------------------
\renewenvironment{dedicatoria}[1][]
{%
    \ifthenelse{\equal{#1}{}}{%
        \PRIVATEbookmarkthis{\dedicatorianame}
    }{\pretextualchapter{#1}}

    \vspace*{\fill}

    \begin{flushright}
        \begin{minipage}{.5\textwidth}
            \begin{SingleSpacing}
                \setlength\parindent{0pt}
                \setlength\parskip{12pt}
}
{%
            \end{SingleSpacing}
        \end{minipage}
    \end{flushright}
}


% -----------------------------------------------------------------------------
% Epígrafe
% -----------------------------------------------------------------------------
\renewenvironment{epigrafe}[1][]
{%
    \ifthenelse{\equal{#1}{}}
    {%
        \PRIVATEbookmarkthis{\epigraphname}
    }{\pretextualchapter{#1}}

    %\vspace*{\fill}
    \vspace*{0.8\textheight}

    \begin{flushright}
        \begin{minipage}{.75\textwidth}
            %\begin{SingleSpacing}
                \setlength\parindent{2pt}
                \setlength\parskip{12pt}
}
{%
            %\end{SingleSpacing}
        \end{minipage}
    \end{flushright}
}
