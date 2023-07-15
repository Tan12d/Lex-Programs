%{
#include <stdio.h>
int cc=0;
%}

%%
. { cc++; }
%%

int main()
{
	yyin= fopen("input.txt", "r");
	yylex();
	
	 FILE *file = fopen("input.txt", "r");
	
	char ch;
	
	int sc=0, tc=0, wc=0, lc=0;
	
	if(yyin==NULL)
	{
		printf("File Not Found");
		exit(1);
	}
	
	int ch1;
    while ((ch1 = fgetc(file)) != EOF) {
        putchar(ch1);
    }
	

	for(int i=0;i<cc;i++)
	{
		if(yytext[i]==' ')
		{
			sc++;
		}
		
		if(yytext[i]=='\t')
		{
			tc++;
		}		
	}
		
	printf("\nFile Contents...");
	printf("\nCharacters: %d",cc);
	printf("\nSpaces: %d",sc);
	printf("\nTabs: %d",tc);	
	
	fclose(file);
	fclose(yyin);
}

int yywrap()
{
	return 1;
}
