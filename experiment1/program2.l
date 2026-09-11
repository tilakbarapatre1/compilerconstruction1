%{
#include <stdio.h>
int count = 0;
%}

%%

pen { count++; }

.|\n    ;

%%

int main(){
    printf("Enter a paragraph: ");
    yylex();
    printf("The frequency of word pen is : %d\n", count);
    return 0;
}

int yywrap(){
    return 1;
}
