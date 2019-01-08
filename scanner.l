%{
#include "scanner.h"
%}

%%


[ \t\n]                          ;
"main"      return 2;
";"         return 3;
"="         return 4;
"int"       return 5;
"char"      return 6;
"string"    return 7;
"{"         return 8;
"}"         return 9;
"return"    return 10;

[a-zA-Z][a-zA-Z0-9]{0,254}          return IDENTIFIER;
([-]?[1-9][0-9]*)|[0]             return CONSTANT;
\"\w*\"                           return CONSTANT;
\'\w?\'                           return CONSTANT;

.          return -1;

%%

int yywrap(void)
{
    return 1;
}