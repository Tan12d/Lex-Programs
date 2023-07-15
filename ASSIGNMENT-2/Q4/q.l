%{
#include <stdio.h>
%}

%%
[01]*11 { printf("\n%s Accepted\n",yytext); }
[01]*[00|10|01|0|1]  { printf("\n%s Rejected\n",yytext); }
[[a-zA-Z0-9!@#$%^&*`()_]* { printf("Invalid"); }
%%

int main()
{
	printf("\nEnter the number:");
	yylex();
	
	return 0;
}

int yywrap()
{
	return 1;
}
