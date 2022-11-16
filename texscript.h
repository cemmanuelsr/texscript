#ifndef YY_YY_Y_TAB_H_INCLUDED
#define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
#define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
#define YYTOKENTYPE
enum yytokentype {
  COMMA = 258,
  CIRCUMFLEX = 259,
  UNDERSCORE = 260,
  DOUBLE_BACK_SLASH = 261,
  COLON = 262,
  COMMERCE_E = 263,
  T_PLUS = 264,
  T_MINUS = 265,
  T_DIV = 266,
  T_MULT = 267,
  T_ASSIGN = 268,
  T_AND = 269,
  T_OR = 270,
  T_CONCAT = 271,
  OPENING_BLOCK = 272,
  CLOSING_BLOCK = 273,
  OPENING_BRACKET = 274,
  CLOSING_BRACKET = 275,
  OPENING_CURLY_BRACKET = 276,
  CLOSING_CURLY_BRACKET = 277,
  LOG_GT = 278,
  LOG_GE = 279,
  LOG_LT = 280,
  LOG_LE = 281,
  LOG_NOT = 282,
  LOG_EQ = 283,
  LOG_NEQ = 284,
  PRINTF = 285,
  TO = 286,
  TEXT = 287,
  LOOP = 288,
  OPENING_IF = 289,
  ENDING_IF = 290,
  SCANF = 291,
  T_NUMBER = 292,
  T_RETURN = 293,
  T_IDENTIFIER = 294
};
#endif
/* Tokens.  */
#define COMMA 258
#define CIRCUMFLEX 259
#define UNDERSCORE 260
#define DOUBLE_BACK_SLASH 261
#define COLON 262
#define COMMERCE_E 263
#define T_PLUS 264
#define T_MINUS 265
#define T_DIV 266
#define T_MULT 267
#define T_ASSIGN 268
#define T_AND 269
#define T_OR 270
#define T_CONCAT 271
#define OPENING_BLOCK 272
#define CLOSING_BLOCK 273
#define OPENING_BRACKET 274
#define CLOSING_BRACKET 275
#define OPENING_CURLY_BRACKET 276
#define CLOSING_CURLY_BRACKET 277
#define LOG_GT 278
#define LOG_GE 279
#define LOG_LT 280
#define LOG_LE 281
#define LOG_NOT 282
#define LOG_EQ 283
#define LOG_NEQ 284
#define PRINTF 285
#define TO 286
#define TEXT 287
#define LOOP 288
#define OPENING_IF 289
#define ENDING_IF 290
#define SCANF 291
#define T_NUMBER 292
#define T_RETURN 293
#define T_IDENTIFIER 294

/* Value type.  */
#if !defined YYSTYPE && !defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
#define YYSTYPE_IS_TRIVIAL 1
#define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;

int yyparse(void);

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
