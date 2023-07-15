%{
#include <stdio.h>
#include <string.h>
%}

%%
do|does|did|has|have|had|is|am|are|was|were|be|being|been|may|must|might|should|could|would|shall|will|can|ought { printf("Auxiliary verbs: %s\n", yytext); }
[[:alpha:]]+
.|\n
%%

int main()
{
	printf("\nEnter the string: ");
	yylex();
}

int yywrap() 
{
	return 1;
}
