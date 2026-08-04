%{
#include<stdio.h>
int count=0;
%}
%%
[Aa][a-zA-z]* { count++; }

.|\n
%%
int main() {
printf("paragraph: ");
yylex();
printf("starting with a/A: %d\n", count);
return 0;
}
int yywrap() {
return 1;
}
