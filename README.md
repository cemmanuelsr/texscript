# Texscript

## Diagrama Sintático

![diagrama sintatico](assets/diagrama-sintatico.svg)

## EBNF

```
PROGRAM = { DECLARATION } ;
DECLARATION = IDENTIFIER, ( : | IDENTIFIER, {",", IDENTIFIER} ), BLOCK ;
BLOCK = "\[", { STATEMENT }, "\]" ;
STATEMENT = ( IDENTIFIER, "\gets", REL_EXPRESSION | "Write", "(", REL_EXPRESSION, ")" | LOOP | CONDITIONAL | "return", REL_EXPRESSION | BLOCK ) ;
LOOP = "\sum", "^", "{", REL_EXPRESSION, "}", STATEMENT ;
CONDITIONAL = "If", "(", REL_EXPRESSION, ")", STATEMENT, ( \lambda | "Else", STATEMENT ) ;
REL_EXPRESSION = EXPRESSION, { ("\eq" | ">" | "<" | "\cup"), EXPRESSION } ;
EXPRESSION = TERM, { ("+" | "-" | "\lor"), TERM } ;
TERM = ( "\frac", "{", FACTOR, "}", "{", FACTOR, "}" | MULTIPLY_AND ) ;
MULTIPLY_AND = FACTOR, { ("\cdot" | "\land"), FACTOR } ;
FACTOR = ( NUMBER | STRING | FUNC_CALL | UNARY_OP | "(", REL_EXPRESSION, ")" | "Read", "(", ")" ) ;
FUNC_CALL = IDENTIFIER, "(", ( \lambda | REL_EXPRESSION, { ",", REL_EXPRESSION } ), ")" ;
UNARY_OP = ( "+", "-", "\neg" ), FACTOR ;
IDENTIFIER = LETTER, { LETTER | DIGIT | "_" } ;
NUMBER = DIGIT, { DIGIT } ;
LETTER = ( a | ... | z | A | ... | Z ) ;
DIGIT = ( 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 0 ) ;
```
