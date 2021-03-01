\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{vanilla}[]

%   This is vanilla.cls, a LaTeX class add some improvements to raw LaTeX.
%   No new macros, just stuff to make the documents look a bit better.

%   OPTIONS
%
\DeclareOption{raggedright}{	% makes all paragraphs left-aligned
	\AtBeginDocument{
		\setlength{\RaggedRightParindent}{1em}
		\RaggedRight
	}
}
\DeclareOption{parskip}{		% changes paragraph indents vor vertical skips
	\AtBeginDocument{\usepackage{parskip}}
	\setlength{\parskip}{\baselineskip}
}
\DeclareOption{casual}{		% removes header numbering --still puts them in toc
	\AtBeginDocument{\setcounter{secnumdepth}{0}}
}
\ExecuteOptions{black}
\ProcessOptions\relax
\LoadClassWithOptions{article}

%	P A C K A G E   D E F I N I T I O N
%
\RequirePackage{geometry}		% page geometry, margin definition
\RequirePackage{emptypage}		% if a page is empty, is is really empty
\RequirePackage[
	hypcap=false				% hypcap=true spits an error
]{caption}						% for caption formatting
\RequirePackage[T1]{fontenc}	% font encoding
\RequirePackage[utf8]{inputenc}
\RequirePackage{cfr-lm}	        % main font
\RequirePackage{ragged2e}		% for better raggedright
\RequirePackage{graphicx}		% for images
\RequirePackage[
	protrusion=true,
	expansion=true,
	final,
	tracking,
]{microtype}					% microtypography: fine-tuning in text
\RequirePackage[hidelinks]{hyperref}	% automatic references in pdf

%	G E O M E T R Y  D E F I N I T I O N
%
\newgeometry{
	textheight = .75\paperheight,
    textwidth = .68\paperwidth,
	marginparsep = 10pt,
	headheight = 15pt,
	tmargin = 80pt,
	%showframe,
}

%   C A P T I O N S  I M P R O V E M E N T
%
\DeclareCaptionLabelFormat{lc}{\MakeLowercase{#1}~#2}
\DeclareCaptionLabelSeparator{mysep}{.\quad}
\captionsetup{
	labelfont = {bf},
	%labelformat = lc,
	labelsep = mysep,
	justification=RaggedRight,
	font={footnotesize},
	singlelinecheck=off,
    width = .7\textwidth,
}