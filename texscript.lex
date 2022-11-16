%{
#include <stdio.h>
#include <string.h>
%}

%%

","             { return COMMA; }
"^"             { return CIRCUMFLEX; }
"_"             { return UNDERSCORE; }
"\\"            { return DOUBLE_BACK_SLASH; }
":"             { return COLON; }
"&"             { return COMMERCE_E; }

"+"             { return T_PLUS; }
"-"             { return T_MINUS; }
"\frac"         { return T_DIV; }
"\cdot"         { return T_MULT; }
"\gets"         { return T_ASSIGN; }
"&&"            { return T_AND; }
"||"            { return T_OR; }
"\cup"          { return T_CONCAT; }

"\["            { return OPENING_BLOCK; }
"\]"            { return CLOSING_BLOCK; }
"("             { return OPENING_BRACKET; }
")"             { return CLOSING_BRACKET; }
"{"             { return OPENING_CURLY_BRACKET; }
"}"             { return CLOSING_CURLY_BRACKET; }

">"                       { return LOG_GT; }
"\geq"                    { return LOG_GE; }
"<"                       { return LOG_LT; }
"\leq"                    { return LOG_LE; }
"\neg"                    { return LOG_NOT; }
"\eq"                     { return LOG_EQ; }
"\neq"                    { return LOG_NEQ; }

"write"                   { return PRINTF; }
"\to"                     { return TO; }
"\text"                   { return TEXT; }
"\sum"                    { return LOOP; }
"\begin{cases}"           { return OPENING_IF; }
"\end{cases}"             { return ENDING_IF; }
"read"                    { return SCANF; }

[1-9][0-9]*               { return T_NUMBER; }
"ret"                     { return T_RETURN; }
[A-z_][0-9A-z_]+          { return T_IDENTIFIER; }

%%

