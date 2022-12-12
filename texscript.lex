%{
#include <stdio.h>
#include <string.h>
%}

%%

","             { return COMMA; }
"^"             { return HAT; }
":"             { return COLON; }
"+"             { return T_PLUS; }
"-"             { return T_MINUS; }
"\frac"         { return T_DIV; }
"\cdot"         { return T_MULT; }
"\gets"         { return T_ASSIGN; }
"\land"         { return T_AND; }
"\lor"          { return T_OR; }
"\cup"          { return T_CONCAT; }

"\["            { return OPENING_BLOCK; }
"\]"            { return CLOSING_BLOCK; }
"("             { return OPENING_PARENTHESIS; }
")"             { return CLOSING_PARENTHESIS; }
"{"             { return OPENING_BRACKET; }
"}"             { return CLOSING_BRACKET; }

">"                       { return LOG_GT; }
"<"                       { return LOG_LT; }
"\neg"                    { return LOG_NOT; }
"\eq"                     { return LOG_EQ; }
"\neq"                    { return LOG_NEQ; }

"Write"                   { return PRINTF; }
"If"                      { return IF; }
"Else"                    { return ELSE; }
"\sum"                    { return LOOP; }
"Read"                    { return SCANF; }

[1-9][0-9]*               { return T_NUMBER; }
"return"                  { return T_RETURN; }
[A-z_][0-9A-z_]+          { return T_IDENTIFIER; }

%%

