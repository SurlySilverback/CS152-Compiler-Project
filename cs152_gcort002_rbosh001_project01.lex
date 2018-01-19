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

%%

"+" {
      printf("PLUS\n");
      currentColumn += yyleng;
    }

"-" {
      printf("SUB\n");
      currentColumn += yyleng;
    }

"*" {
      printf("MULT\n");
      currentColumn += yyleng;
    }

"/" {
      printf("DIV\n");
      currentColumn += yyleng;
    }

"%" {
      printf("MOD\n");
      currentColumn += yyleng;
    }

"==" {
      printf("EQ\n");
      currentColumn += yyleng;
    }

"<>" {
      printf("NEQ\n");
      currentColumn += yyleng;
    }

"<" {
      printf("LT\n");
      currentColumn += yyleng;
    }

"<=" {
      printf("LTE\n");
      currentColumn += yyleng;
    }

">=" {
      printf("GTE\n");
      currentColumn += yyleng;
    }

";" {
      printf("SEMICOLON\n");
      currentColumn += yyleng;
    }

":" {
      printf("COLON\n");
      currentColumn += yyleng;
    }

"," {
      printf("COMMA\n");
      currentColumn += yyleng;
    }

"(" {
      printf("L_PAREN\n");
      currentColumn += yyleng;
    }

")" {
      printf("R_PAREN\n");
      currentColumn += yyleng;
    }

"[" {
      printf("L_SQUARE_BRACKET\n");
      currentColumn += yyleng;
    }

"]" {
      printf("R_SQUARE_BRACKET\n");
      currentColumn += yyleng;
    }

":=" {
      printf("ASSIGN\n");
      currentColumn += yyleng;
    }
