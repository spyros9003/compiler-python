


%{


#include <stdio.h>

#include <string.h>

#include "myparser.tab.h"

int myline=1;

%}

akeraios [-+]?[0-9]+

pragmatikos [-+]?[0-9]+[.][0-9]+

anagnoristis  [a-zA-Z_][a-zA-Z0-9_]*




%%

"class" { return CLASS;}

":" {	return DDOT;}

\n { myline++;	return NL;}

\t  { return INDENT;}

";"            {return SEMIC;}

"("            {return LEFT_PARENTH;}

")"            {return RIGHT_PARENTH;}

"print"        {return PRINT;}

"if"           {return IF;}

"for"          {return FOR;}

"while"        {return WHILE;}

"import"       { return IMPORT;}

"elif"         {return ELIF;}

"else"         {return ELSE;}

"in"           {return IN;}

"def"          { return DEF;}

"="            {return EQUAL;}

"return"      {return RETURN;}

"break"        {  return BREAK;}

"continue"     { return CONTINUE;}

","            {return COMMA;}


"["          {return LEFT_BRA;}

"]"           {return RIGHT_BRA;}


"{"		{return LEFT_AGK;}


"}"		{return RIGHT_AGK;}

"or"            {return OR;}

"and"           {return AND;}

"not"           {return NOT;}

"<"             {return LESS;}

">"             {return GREATER;}

"=="            {return EQEQ;}

">="            {return GEQ;}

"<="            {return LEQ;}

"!="            {return NEQ;}

"is"            {return IS;}

"."		{return DOT;}

"+"             {return PLUS;}

"-"             {return MINUS;}

"*"             {return MUL;}

"\/"            {return DIV;}

"lambda"       {return LAMBDA;}

"items\(\)"    {return ITEMS_FUNC;}

"setdefault"   {return SETD_FUNC;}

"self"      {return SELF;}

"#".*\n    {myline++;      }

{akeraios} {return INTEGER;}

{pragmatikos} {return FLOAT;}

{anagnoristis}    {return IDENTIFIER; } 


%%
