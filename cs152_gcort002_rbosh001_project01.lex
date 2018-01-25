/*******************************************************************************
 * CS152: Design of Compilers
 * Gabriel F. Cortez and Rick Boshae
 *
 * Project Phase 1: LEXICAL ANALYZER
 *
 * Usage: (1) $ flex cs152_gcort002_rbosh001_project01.lex
 *        (2) $ gcc lex.yy.c -lfl
 *        (3) $ ./a.out
 *            stdin> TODO: // Determine input
 *            stdin> Ctrl-D
*******************************************************************************/

%{/*Include library for atof() call */

#include<math.h>

int currentLine = 1;
int currentColumn = 1;
%}

DIGIT	[0-9]
CHAR	[a-zA-Z]

%%

"function"      { printf("FUCNTION\n"); currentColumn += yyleng; }

"beginparams"   { printf("BEGIN_PARAMS\n"); currentColumn += yyleng; }

"endparams"     { printf("END_PARAMS\n"); currentColumn += yyleng; }

"beginlocals"   { printf("BEGIN_LOCALS\n"); currentColumn += yyleng; }

"endlocals"     { printf("END_LOCALS\n"); currentColumn += yyleng; }

"beginbody"     { printf("BEGIN_BODY\n"); currentColumn += yyleng; }

"endbody"       { printf("END_BODY\n"); currentColumn += yyleng; }

"integer"       { printf("INTEGER\n"); currentColumn += yyleng; }

"array"         { printf("ARRAY\n"); currentColumn += yyleng; }

"of"            { printf("OF\n"); currentColumn += yyleng; }

"if"            { printf("IF\n"); currentColumn += yyleng; }

"then"          { printf("THEN\n"); currentColumn += yyleng; }

"endif"         { printf("ENDIF\n"); currentColumn += yyleng; }

"else"          { printf("ELSE\n"); currentColumn += yyleng; }

"while"         { printf("WHILE\n"); currentColumn += yyleng; }

"do"            { printf("DO\n"); currentColumn += yyleng; }

"foreach"       { printf("FOREACH\n"); currentColumn += yyleng; }

"in"            { printf("IN\n"); currentColumn += yyleng; }

"beginloop"     { printf("BEGINLOOP\n"); currentColumn += yyleng; }

"endloop"       { printf("ENDLOOP\n"); currentColumn += yyleng; }

"continue"      { printf("CONTINUE\n"); currentColumn += yyleng; }

"read"          { printf("READ\n"); currentColumn += yyleng; }

"write"         { printf("WRITE\n"); currentColumn += yyleng; }

"and"           { printf("AND\n"); currentColumn += yyleng; }

"or"            { printf("OR\n"); currentColumn += yyleng; }

"not"           { printf("NOT\n"); currentColumn += yyleng; }

"true"          { printf("TRUE\n"); currentColumn += yyleng; }

"false"         { printf("FALSE\n"); currentColumn += yyleng; }

"return"        { printf("RETURN\n"); currentColumn += yyleng; }

"+"             { printf("PLUS\n"); currentColumn += yyleng; }

"-"             { printf("SUB\n"); currentColumn += yyleng; }

"*"             { printf("MULT\n"); currentColumn += yyleng; }

"/"             { printf("DIV\n"); currentColumn += yyleng; }

"%"             { printf("MOD\n"); currentColumn += yyleng; }

"=="            { printf("EQ\n"); currentColumn += yyleng; }

"<>"            { printf("NEQ\n"); currentColumn += yyleng; }

"<"             { printf("LT\n"); currentColumn += yyleng; }

"<="            { printf("LTE\n"); currentColumn += yyleng; }

">="            { printf("GTE\n"); currentColumn += yyleng; }

{CHAR}{ {CHAR|DIGIT}*{"_"}*{CHAR|DIGIT}+ }*
                { printf("IDENT %s\n", yytext); currentColumn += yyleng; }

{DIGIT}+        { printf("NUMBER %d\n", atoi(yytext)); currentColumn += yyleng; }

";"             { printf("SEMICOLON\n"); currentColumn += yyleng; }

":"             { printf("COLON\n"); currentColumn += yyleng; }

","             { printf("COMMA\n"); currentColumn += yyleng; }

"_"             { printf("UNDERSCORE\n"); currentColumn += yyleng; }

"("             { printf("L_PAREN\n"); currentColumn += yyleng; }

")"             { printf("R_PAREN\n"); currentColumn += yyleng; }

"["             { printf("L_SQUARE_BRACKET\n"); currentColumn += yyleng; }

"]"             { printf("R_SQUARE_BRACKET\n"); currentColumn += yyleng; }

":="            { printf("ASSIGN\n"); currentColumn += yyleng; }
