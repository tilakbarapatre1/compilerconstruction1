%{
#include <stdio.h>
int count = 0;
%}

%%

"//".* { count++; }
.|\n    ;

%%

int main(){
    printf("Enter a C code: ");
    yylex();
    printf("The frequency of single line comment is/are : %d\n", count);
    return 0;
}

int yywrap(){
    return 1;
}
