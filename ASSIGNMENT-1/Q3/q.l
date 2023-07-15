%{
#include <stdio.h>
#include <string.h>
%}

%%
[-+]?[0-9]+(\.[0-9]+)?([eE][-+]?[0-9]+)? { printf("Input is a number\n"); }
. { printf("Input is not a number");}
%%

int main()
{
	printf("\nEnter the number:");
	yylex();
}

int yywrap()
{
	return 1;
}
