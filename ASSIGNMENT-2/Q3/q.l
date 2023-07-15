%{
#include <stdio.h>
%}

%%
[02468] { printf("\n%s is an even number",yytext); }
([0-9]+)[02468]+ { printf("\n%s is an even number",yytext); }
[13579] { printf("\n%s is an odd number",yytext); }
([0-9]+)[13579]+ { printf("\n%s is an odd number",yytext); }
[a-zA-Z0-9!@#$%^&*()_]* { printf("\n%s is an invalid number",yytext); }
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
