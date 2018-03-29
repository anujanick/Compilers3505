# Compilers3505

ifelse ~ if a given "if" statement doesnt have a corresponding "else", add an empty "else{}" statement.

forwhile ~ convert the given "for" and "dowhile" loop to "while" loop such that its semantic meaning is maintained.

boolean ~ generates three address code for boolean expressions, array and ifelse statements by using three different input files.

labelledtree ~ create a labelled tree using labelling algorithm

dag ~ generates dag from given set of c statements for a basic block by generating leaders and blocks.

constantfolding ~ it generates dag for a given block of statements and removes constant folding.

symbol table ~ symbol table is generated for the given statements.

syntax tree ~ creation of syntax tree for arithmetic expression.

threeaddress ~ creates three address statements.



Execution:

lex <filename>.l
  
yacc <filename>.y
  
For files with stdio.h header file execute using gcc

For files using bits header file use g++

<gcc/g++> lex.yy.c y.tab.c

./a.out

