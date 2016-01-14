%{
#include <stdio.h>
#include <string.h>

void yyerror(const char *str) {
    fprintf(stderr, "error: %s\n", str);
}

int yywrap() {
    // it means that we parse only one file
    // and there is no next one
    return 1;
}

int main(void) {
    yyparse();
}
%}

%token NUMBER OP_ADD OP_SUB OP_DIV OP_MUL

%%

commands
    : /* empty */
    | commands command

command
    : add
    | sub
    | div
    | mul

add
    : NUMBER NUMBER OP_ADD
    {
        printf("%d + %d = %d\n", $1, $1, $1+$2);
    }

sub
    : NUMBER NUMBER OP_SUB
    {
        printf("%d - %d = %d\n", $1, $1, $1-$2);
    }

div
    : NUMBER NUMBER OP_DIV
    {
        printf("%d / %d = %d\n", $1, $1, $1/$2);
    }

mul
    : NUMBER NUMBER OP_MUL
    {
        printf("%d * %d = %d\n", $1, $1, $1*$2);
    }

%%
