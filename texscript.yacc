%{
#include <stdio.h>

void yyerror(char *c);
int yylex(void);
%}

/* separators */
%token COMMA COLON

/* special tokens */
%token T_NUMBER T_RETURN T_IDENTIFIER HAT

/* operations */
%token T_PLUS T_MINUS T_MULT T_DIV T_ASSIGN T_AND T_OR T_CONCAT

/* delimiters */
%token OPENING_BLOCK CLOSING_BLOCK
%token OPENING_PARENTHESIS CLOSING_PARENTHESIS
%token OPENING_BRACKET CLOSING_BRACKET

/* logical operations */
%token LOG_GT LOG_LT LOG_EQ LOG_NOT

/* reserved words */
%token PRINTF IF ELSE LOOP SCANF


%start PROGRAM

%%
empty: ;

unary_operation : T_PLUS
                | T_MINUS
                | LOG_NOT
                ;

arguments : REL_EXPRESSION
          | REL_EXPRESSION COMMA arguments
          ;

FUNC_CALL : T_IDENTIFIER OPENING_PARENTHESIS CLOSING_PARENTHESIS
          | T_IDENTIFIER OPENING_PARENTHESIS arguments CLOSING_PARENTHESIS
          ;

FACTOR : unary_operation FACTOR
       | T_NUMBER
       | T_IDENTIFIER
       | FUNC_CALL
       | OPENING_PARENTHESIS REL_EXPRESSION CLOSING_PARENTHESIS
       | SCANF OPENING_PARENTHESIS CLOSING_PARENTHESIS
       ;


term_operator : T_MULT
              | T_AND
              ;

TERM : TERM 
     | TERM term_operator FACTOR
     | T_DIV OPENING_BRACKET FACTOR CLOSING_BRACKET OPENING_BRACKET FACTOR CLOSING_BRACKET
     ;

exp_operator : T_PLUS
             | T_MINUS
             | T_OR
             ;

EXPRESSION : EXPRESSION 
           | EXPRESSION exp_operator TERM
           ;

rel_operator : LOG_EQ
             | LOG_GT
             | LOG_LT
             | T_CONCAT
             ;

REL_EXPRESSION : REL_EXPRESSION
               | REL_EXPRESSION rel_operator EXPRESSION
               ;

ASSIGNMENT : T_IDENTIFIER T_ASSIGN REL_EXPRESSION ;

PRINT : PRINTF OPENING_PARENTHESIS REL_EXPRESSION CLOSING_PARENTHESIS ;

WHILE : LOOP HAT OPENING_BRACKET REL_EXPRESSION CLOSING_BRACKET STATEMENT ;

CONDITIONAL : IF OPENING_PARENTHESIS REL_EXPRESSION CLOSING_PARENTHESIS STATEMENT
            | IF OPENING_PARENTHESIS REL_EXPRESSION CLOSING_PARENTHESIS ELSE STATEMENT
            ;

STATEMENT : ASSIGNMENT
          | PRINT
          | WHILE
          | CONDITIONAL
          | T_RETURN REL_EXPRESSION
          | BLOCK
          ;

BLOCK : OPENING_BLOCK STATEMENT CLOSING_BLOCK ;

declaration_list : T_IDENTIFIER
                 | T_IDENTIFIER COMMA declaration_list
                 ;

DECLARATION : T_IDENTIFIER BLOCK
            | T_IDENTIFIER COLON declaration_list BLOCK
            ;

PROGRAM : DECLARATION
        | 
        ;

%%

void yyerror(char *c) {
    printf("Erro: %s\n", c);
}

int main() {
    yyparse();
    return 0;
}
