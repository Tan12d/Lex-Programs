%{
#include <stdio.h>
int cc=0, wc=0, lc=0;
%}

%%
[\n] { lc++; }
[^\t\n ]+ { wc++; cc+=yyleng; }
. { cc++; }
%%

int main()
{
	yyin= fopen("textfile.txt", "r");
	yylex();
	
	FILE *file= fopen("textfile.txt", "r");
	
	int ch;
	printf("\nFile Content:\n");
	while((ch=fgetc(file))!=EOF)
	{
		putchar(ch);
	}
	
	printf("\n\nFile contains:");
	printf("\nCharacters: %d",cc);
	printf("\nWords: %d",wc);
	printf("\nLines: %d\n",(lc+1));
	
	fclose(file);
	fclose(yyin);
}

int yywrap()
{
	return 1;
}
