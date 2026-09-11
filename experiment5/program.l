```lex
%{
#include<stdio.h>

char change(char c)
{
    if(c>='a' && c<='z')
        return c-32;
    return c+32;
}
%}

%%
[a-zA-Z]  { putchar(change(yytext[0])); }
.         { printf("Invalid character: %s",yytext); }
%%

int main()
{
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}
```
