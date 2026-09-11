%{
#include <stdio.h>
%}

%%

pen     { printf("The word 'pen' is found.\n"); }

.|\n    ;

%%

int main(){
    printf("enter a paragraph: \n");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}
