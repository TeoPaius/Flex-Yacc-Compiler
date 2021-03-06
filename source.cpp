#include <stdlib.h>
#include <stdio.h>
#include "scanner.h"
#include "lex.yy.c"

extern int yylex();
extern int yylineno;
extern char* yytext;

char *names[] = {};

int main()
{
    int ntoken, vtoken;

    ntoken = yylex();
    while(ntoken)
    {
        printf("%d\n", ntoken);
        if(ntoken == -1)
            return 0;
        ntoken = yylex();
    }
    return 0;
}