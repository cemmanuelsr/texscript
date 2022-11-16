%{
#include <stdio.h>

void yyerror(char *c);
int yylex(void);
%}

/* separators */
%token COMMA CIRCUMFLEX UNDERSCORE DOUBLE_BACK_SLASH COLON COMMERCE_E

/* special tokens */
%token T_TYPE T_NUMBER T_RETURN T_IDENTIFIER

/* operations */
%token T_PLUS T_MINUS T_MULT T_DIV T_ASSIGN T_AND T_OR T_CONCAT

/* delimiters */
%token OPENING_BLOCK CLOSING_BLOCK
%token OPENING_BRACKET CLOSING_BRACKET 
%token OPENING_CURLY_BRACKET CLOSING_CURLY_BRACKET

/* logical operations */
%token LOG_GT LOG_GE LOG_LT LOG_LE LOG_AND LOG_OR LOG_EQ LOG_NEQ LOG_NOT

/* reserved words */
%token PRINTF TO TEXT LOOP OPENING_IF ENDING_IF SCANF


%start BLOCK

%%
empty: ;

unary_operator : T_PLUS
               | T_MINUS
               | LOG_NOT
               ;

FACTOR : unary_operator FACTOR
       | T_NUMBER
       | T_IDENTIFIER


term_operator : T_MULT
              | T_AND
              ;

TERM : TERM term_operator FACTOR
     | T_DIV OPENING_CURLY_BRACKET EXPRESSION CLOSING_CURLY_BRACKET OPENING_CURLY_BRACKET EXPRESSION CLOSING_CURLY_BRACKET ;

exp_operator : T_PLUS
             | T_MINUS
             | T_OR
             | T_CONCAT
             ;

EXPRESSION : EXPRESSION exp_operator TERM ;

bin_operator : LOG_EQ
             | LOG_GT
             | LOG_LT
             | LOG_NEQ
             | LOG_GE
             | LOG_LE
             ;

BIN_EXPRESSION : BIN_EXPRESSION bin_operator EXPRESSION ;

ASSIGNMENT : T_IDENTIFIER T_ASSIGN BIN_EXPRESSION ;

PRINT : PRINTF TO TEXT OPENING_CURLY_BRACKET BIN_EXPRESSION CLOSING_CURLY_BRACKET ;

initial_state : UNDERSCORE ASSIGNMENT
              | initial_state COMMA ASSIGNMENT
              ;

guard_clause : CIRCUMFLEX BIN_EXPRESSION ;

WHILE : LOOP initial_state guard_clause STATEMENT ;

condition : STATEMENT COMMERCE_E BIN_EXPRESSION
          | DOUBLE_BACK_SLASH condition
          ;

CONDITIONAL : OPENING_IF condition ENDING_IF ;

arguments : T_IDENTIFIER
          | COMMA T_IDENTIFIER
          ;

returns : arguments ;

FUNCTION : T_IDENTIFIER COLON OPENING_BRACKET arguments CLOSING_BRACKET TO OPENING_BRACKET returns CLOSING_BRACKET STATEMENT ;

STATEMENT : empty
          | ASSIGNMENT
          | PRINT
          | WHILE
          | CONDITIONAL
          | FUNCTION
          | BLOCK
          ;

BLOCK : OPENING_BLOCK STATEMENT CLOSING_BLOCK ;

%%

void yyerror(char *c) {
    printf("Erro: %s\n", c);
}

int main() {
    yyparse();
    return 0;
}
