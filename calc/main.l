%{
#include <stdio.h>
#include "y.tab.h"
%}

%%
[0-9]+                  yylval = atoi(yytext); return NUMBER;
\+                      return OP_ADD;
-                       return OP_SUB;
\/                      return OP_DIV;
\*                      return OP_MUL;
\n                      /* ignore end of line */;
[ \t]+                  /* ignore whitespace */;
%%
