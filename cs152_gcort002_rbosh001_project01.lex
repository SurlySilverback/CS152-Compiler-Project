/****************************************************************
 *  CS152: Design of Compilers
 * Gabriel F. Cortez and Rick Boshae
 *
 * Project Phase 1: LEXICAL ANALYZER
 *
 * Usage: (1) $ flex cs152_gcort002_rbosh001_project01.lex
 *        (2) $ gcc lex.yy.c -lfl
 *        (3) $ ./a.out
 *            stdin> TODO: // Determine input
 *            stdin> Ctrl-D
****************************************************************/

%{/*Include library for atof() call */

#include<math.h>

int currentLine = 1;
int currentColumn = 1;
%}

DIGIT	[0-9]
CHAR	[a-zA-Z]

%%

"+"
"-"
"*"
"/"
"%"
"=="
"<>"
"<"
"<="
">="
";"
":"
","
"("
")"

{DIGIT}*
