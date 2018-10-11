%{
#include <cstdio>

#include "snazzle.tab.h"  // to get the token types from Bison

%}
%%
[ \t\n]           ;
[0-9]+\.[0-9]+    { yylval.fval = atof(yytext); return FLOAT; }
[0-9]+            { yylval.ival = atoi(yytext); return INT; }
[a-zA-Z0-9]+      {
	// We have to strdup because we can't rely on yytext not changing underneath us:
	yylval.sval = strdup(yytext);
	return STRING;
}
%%
