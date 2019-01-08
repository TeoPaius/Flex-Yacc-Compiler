%{
#include "scanner.h"
%}

%%

"aaa"       return IDENTIFIER;
"ccc"       return CONSTANT;
"bbb"       return TYPE;
.           printf("wrong symbol");

%%

int yywrap(void)
{
    return 1;
}