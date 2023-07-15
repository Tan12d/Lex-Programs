%{
#include <stdio.h>
#include <string.h>
int i=0,j=0;
%}

%%
scanf { i++; fprintf(yyout,"readf"); }
printf { j++; fprintf(yyout,"writef"); }
%%

int main()
{
	yyin= fopen("pro.c","r");
	yyout= fopen("pro1.c","w");
	yylex();
	
	printf("\nprintf= %d\n",j);
	printf("scanf= %d\n",i);

	return 0;
}

int yywrap()
{
	return 1;
}
