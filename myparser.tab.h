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

#ifndef YY_YY_MYPARSER_TAB_H_INCLUDED
# define YY_YY_MYPARSER_TAB_H_INCLUDED
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
    CLASS = 258,
    NL = 259,
    INDENT = 260,
    DEDENT = 261,
    SEMIC = 262,
    LEFT_PARENTH = 263,
    RIGHT_PARENTH = 264,
    PRINT = 265,
    IF = 266,
    FOR = 267,
    WHILE = 268,
    IMPORT = 269,
    ELIF = 270,
    ELSE = 271,
    DDOT = 272,
    IN = 273,
    DEF = 274,
    EQUAL = 275,
    RETURN = 276,
    BREAK = 277,
    CONTINUE = 278,
    COMMA = 279,
    LEFT_BRA = 280,
    RIGHT_BRA = 281,
    LEFT_AGK = 282,
    RIGHT_AGK = 283,
    OR = 284,
    AND = 285,
    NOT = 286,
    LESS = 287,
    GREATER = 288,
    EQEQ = 289,
    GEQ = 290,
    LEQ = 291,
    NEQ = 292,
    IS = 293,
    PLUS = 294,
    MINUS = 295,
    MUL = 296,
    DIV = 297,
    INTEGER = 298,
    FLOAT = 299,
    IDENTIFIER = 300,
    LAMBDA = 301,
    ITEMS_FUNC = 302,
    SETD_FUNC = 303,
    DOT = 304,
    STAR = 305,
    SELF = 306
  };
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_MYPARSER_TAB_H_INCLUDED  */
