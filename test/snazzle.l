%{
<<<<<<< HEAD
#include "snazzle.tab.h"
=======
#include <cstdio>

#include "snazzle.tab.h"  // to get the token types from Bison
extern int yylex();

>>>>>>> 4e41c277c9a5ef06dcd280ce3bb4dce5308102e7
%}
%option noyywrap
%%
[ \t\n] ;
sNaZZle        { return SNAZZLE; }
type           { return TYPE; }
end            { return END; }
[0-9]+\.[0-9]+ { yylval.fval = atof(yytext); return FLOAT; }
[0-9]+         { yylval.ival = atoi(yytext); return INT; }
[a-zA-Z0-9]+   {
	// We have to strdup because we can't rely on yytext not changing underneath us:
	yylval.sval = strdup(yytext);
	return STRING;
}
.              ;
%%
