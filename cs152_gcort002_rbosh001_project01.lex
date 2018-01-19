/****************************************************************
  CS152: Design of Compilers
  Gabriel F. Cortez and Rick Boshae
  
  Project Phase 1: LEXICAL ANALYZER

****************************************************************/

%{/*Include library for atof() call */

#include<math.h>

int currentLine = 1;
int currentColumn = 1;
%}

DIGIT	[0-9]
CHAR	[a-zA-Z]

PLUS	[+]
MINUS	[-]
MULT	[*]
DIV		[/]
MOD		[%]
