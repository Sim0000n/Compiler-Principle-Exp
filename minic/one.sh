#! /bin/sh
rm minic.tab.* lex.yy.c minic
bison -d minic.y
flex minic.l
gcc -o minic minic.tab.c lex.yy.c ast.c smt_als.c
