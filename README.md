# Texscript

## EBNF

```
BLOCK = "\[", { STATEMENT }, "\]" ;
STATEMENT = ( ( λ | ASSIGNMENT | PRINT | LOOP | CONDITIONAL | FUNCTION ), "\n" | ( "$$", { STATEMENT }, "$$" ) ) ;
ASSIGNMENT = IDENTIFIER, "\gets", BIN_EXPRESSION ;
PRINT = "write", "\to", "\text", "{", BIN_EXPRESSION, "}" ;
LOOP = "\sum", { "_", ASSIGNMENT, { ",", ASSIGNMENT } }, { "^", BIN_EXPRESSION }, STATEMENT ;
CONDITIONAL = "\begin{cases}", CONDITION, { "\\", CONDITION }, "\end{cases}" ;
CONDITION = STATEMENT, "&", BIN_EXPRESSION ;
FUNCTION = IDENTIFIER, ":", "(", ARGUMENTS, ")", "\to", "(", RETURNS, ")", STATEMENT ;
ARGUMENTS = IDENTIFIER, { ",", IDENTIFIER } ;
RETURNS = IDENTIFIER, { ",", IDENTIFIER } ;
BIN_EXPRESSION = EXPRESSION, { ( "=" | ">" | "<" | "\neq" | "\leq" | "\geq | "\in" | "\notin" ), EXPRESSION } ;
EXPRESSION = TERM, { ( "+" | "-" | "||" | "\cup" ), TERM } ;
TERM = ( ( POW_EXPRESSION, { ( "\cdot" | "&&" ), POW_EXPRESSION } ) | ( "\frac", "{", EXPRESSION, "}", "{", EXPRESSION, "}" ) ;
POW_EXPRESSION = FACTOR, { ( "^" ), FACTOR } ;
FACTOR = ( ( "+" | "-" | "\neg" ), FACTOR ) | NUMBER | "(", EXPRESSION, ")" | IDENTIFIER | "read", "(", ")" ;
IDENTIFIER = LETTER, { LETTER | DIGIT | "_" } ;
NUMBER = DIGIT, { DIGIT } ;
LETTER = ( a | ... | z | A | ... | Z ) ;
DIGIT = ( 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 0 ) ;
```
