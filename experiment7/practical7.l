%{
#include<stdio.h>
%}

%%
.*COM$   { printf("Line ends with COM\n"); }
.*       { printf("Line does not end with COM\n"); }
%%

int main()
{
    printf("Tilak Barapatre 1079\n");
    printf("Enter line: ");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}
