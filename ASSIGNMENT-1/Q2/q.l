%{
#include <stdio.h>
#include <string.h>
int i=0;
int j=0;
%}

%%
[aeiouAEIOU] { i++; }
[^aeiouAEIOU\n] { j++; }
\n { printf("Vowels: %d Consonants: %d", i,j,yytext); }
%%

int main()
{
	printf("\nEnter the string: ");	
	yylex();
	return 1;
}

int yywrap()
{
	return 1;
}
