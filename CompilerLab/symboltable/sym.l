A [a-zA-Z_]
D [0-9]

%{
#include<stdio.h>
#include "y.tab.h"
extern yylval;
	int x = 0, o = 0, c = 0;
%}

%%

"int"						{x++; return INT;}
"float"						{x++; return FLOAT;}
"char"						{x++; return CHAR;}
"double"					{x++; return DOUBLE;}
{A}({A}|{D})*				{	yylval = (int)yytext;	
								if(x > 0) return ID;
								return 0;
							}
","							return C;
\n							return NL;
";"							{x--; return SE;}
"{"							{o++; return OPEN;}
"}"							{ 	c++;
								if(o<c) return 0;
								return CLOSE;
							}

%%
