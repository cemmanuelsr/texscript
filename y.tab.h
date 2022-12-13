/* A Bison parser, made by GNU Bison 3.5.1.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2020 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Undocumented macros, especially those whose name start with YY_,
   are private implementation details.  Do not rely on them.  */

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    COMMA = 258,
    COLON = 259,
    T_NUMBER = 260,
    T_RETURN = 261,
    T_IDENTIFIER = 262,
    HAT = 263,
    T_PLUS = 264,
    T_MINUS = 265,
    T_MULT = 266,
    T_DIV = 267,
    T_ASSIGN = 268,
    T_AND = 269,
    T_OR = 270,
    T_CONCAT = 271,
    OPENING_BLOCK = 272,
    CLOSING_BLOCK = 273,
    OPENING_PARENTHESIS = 274,
    CLOSING_PARENTHESIS = 275,
    OPENING_BRACKET = 276,
    CLOSING_BRACKET = 277,
    LOG_GT = 278,
    LOG_LT = 279,
    LOG_EQ = 280,
    LOG_NOT = 281,
    PRINTF = 282,
    IF = 283,
    ELSE = 284,
    LOOP = 285,
    SCANF = 286
  };
#endif
/* Tokens.  */
#define COMMA 258
#define COLON 259
#define T_NUMBER 260
#define T_RETURN 261
#define T_IDENTIFIER 262
#define HAT 263
#define T_PLUS 264
#define T_MINUS 265
#define T_MULT 266
#define T_DIV 267
#define T_ASSIGN 268
#define T_AND 269
#define T_OR 270
#define T_CONCAT 271
#define OPENING_BLOCK 272
#define CLOSING_BLOCK 273
#define OPENING_PARENTHESIS 274
#define CLOSING_PARENTHESIS 275
#define OPENING_BRACKET 276
#define CLOSING_BRACKET 277
#define LOG_GT 278
#define LOG_LT 279
#define LOG_EQ 280
#define LOG_NOT 281
#define PRINTF 282
#define IF 283
#define ELSE 284
#define LOOP 285
#define SCANF 286

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
