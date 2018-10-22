%{
	#include<cstdio>
	#include<iostream>
	#include"calculator.tab.h"
	using namespace std;
%}
%option noyywrap

%%
"+" { return ADD; }
"-" { return SUB; }
"*" { return MUL; }
"/" { return DIV; }
"|" { return ABS; }
[0-9]+ { yylval = atoi(yytext); return NUMBER;}
\n { return EOL; }
[ \t] { }
. { cout<<"Mystery character"<<endl; }
%%

 
