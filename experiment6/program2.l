%{
#include <stdio.h>

int convert(char str[])
{
    int n = 0, i, x;

    for(i = 0; str[i] != '\0'; i++)
    {
        if(str[i] >= '0' && str[i] <= '9')
            x = str[i] - '0';
        else
            x = str[i] - 'A' + 10;

        n = n * 16 + x;
    }

    return n;
}
%}

%%
[0-9A-F]+ {
    int n = convert(yytext);

    printf("Hexadecimal: %s\n", yytext);
    printf("Decimal: %d\n", n);
}
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

