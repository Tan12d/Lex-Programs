%{
#include <stdio.h>
#include <string.h>
int i=0,o=0, j, flag=0, y=0;
char id[10][10], op[10][10];
int number[10][10];
%}

%%
[a-zA-Z][a-zA-Z0-9]*  { flag++, strcpy(id[i],yytext); i++; }
[0-9]+(\.[0-9]+)? { y=1; strcpy(number[o],yytext); o++; }
[-+*/()] { flag--, strcpy(op[j],yytext); j++; }
.|\n { return 0;}
%%

int main()
{
	printf("\nEnter the arithmetic expression:");
	yylex();
	
	if(flag!=1 && y!=1)
	{
		printf("\nInvalid Arithmetic Expression");
	}
	
	else
	{
		printf("Valid Arithmetic Expression");
	
		printf("\nIdentifiers are:");
		for(int k=0;k<i;k++)
		{
			printf("%s\t",id[k]);
		}
		
		printf("\nNumbers are:");
		for(int x=0;x<o;x++)
		{
			printf("%s\t",number[x]);
		}
		
		printf("\nOperators are:");
		for(int k=0;k<j;k++)
		{
			printf("%s\t",op[k]);
		}
	}          
}

int yywrap()
{
	return 1;
}
