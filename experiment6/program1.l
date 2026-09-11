%{
#include <stdio.h>

int convert(char str[])
{
    int n = 0, i;

    for(i = 0; str[i] != '\0'; i++)
        n = n * 10 + (str[i] - '0');

    return n;
}

void toHex(int n)
{
    char hex[] = "0123456789ABCDEF";

    if(n >= 16)
        toHex(n / 16);

    putchar(hex[n % 16]);
}
%}

%%
[0-9]+ {
    int n = convert(yytext);

    printf("Decimal: %s\n", yytext);
    printf("Hexadecimal: ");
    toHex(n);
    printf("\n");
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
