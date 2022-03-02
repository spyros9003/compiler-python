%{
#include <stdio.h>
#include <string.h>
#include <stdlib.h>


FILE *yyin;
 
void yyerror(const char *s);
extern char* yytext;
extern int myline;

int sfalmata=0;
%}


%token CLASS
%token NL
%token INDENT
%token DEDENT
%token SEMIC
%token LEFT_PARENTH
%token RIGHT_PARENTH
%token PRINT
%token IF
%token FOR
%token WHILE
%token IMPORT
%token ELIF
%token ELSE
%token DDOT
%token IN
%token DEF
%token EQUAL
%token RETURN
%token BREAK
%token CONTINUE
%token COMMA
%token LEFT_BRA
%token RIGHT_BRA
%token LEFT_AGK
%token RIGHT_AGK
%token OR
%token AND
%token NOT
%token LESS
%token GREATER
%token EQEQ
%token GEQ
%token LEQ
%token NEQ
%token IS
%token PLUS
%token MINUS
%token MUL
%token DIV
%token INTEGER
%token FLOAT
%token IDENTIFIER
%token LAMBDA
%token ITEMS_FUNC
%token SETD_FUNC
%token DOT
%token STAR
%token SELF


%%

arxiko: orismos_klasis|entoli_import  orismos_klasis|entoli_import orismos_klasis kliseis;

orismos_klasis: CLASS  onoma_klasis DDOT NL swma;

onoma_klasis:  IDENTIFIER;

swma: lista_entolwn;

lista_entolwn: entoli| entoli  lista_entolwn ;

entoli: INDENT apli_entoli |INDENT sintheti_entoli|INDENT INDENT apli_entoli |INDENT INDENT sintheti_entoli|INDENT INDENT INDENT apli_entoli |INDENT INDENT INDENT sintheti_entoli ;

apli_entoli: entoli_break|entoli_continue|entoli_items|entoli_etd|entoli_anathesis|entoli_return|entoli_print|anathesi_dim;


anathesi_dim: SELF DOT IDENTIFIER EQUAL IDENTIFIER NL;

arithmitiki_ekfrasi: lektiki_monada arithmitikos_telestis lektiki_monada;

arithmitikos_telestis: PLUS|MINUS|MUL|DIV;

stoxos_anadromi: lektiki_monada;

entoli_return: RETURN NL|RETURN lista_ekfrasewn NL;

entoli_print: PRINT LEFT_PARENTH lista_ekfrasewn RIGHT_PARENTH NL;

ekfrasi_anathesis:   ekfrasi;

ekfrasi:  ekfrasi_sinthiki|lektiki_monada|lambda_ekfrasi;

lambda_ekfrasi:  LAMBDA DDOT  ekfrasi  | LAMBDA lista_parametrwn DDOT ekfrasi ;


ekfrasi_sinthiki:  lektiki_monada sxesiakos_telestis lektiki_monada| ekfrasi_sinthiki logikos_telestis ekfrasi_sinthiki|NOT ekfrasi_sinthiki;

entoli_if:IF ekfrasi_anathesis DDOT NL swma else_anadromi|IF ekfrasi_anathesis DDOT swma else_anadromi ELSE DDOT  NL swma;

else_anadromi: ELIF ekfrasi_anathesis DDOT NL swma else_anadromi|;

entoli_anathesis:  lista_stoxwn EQUAL stoxos_anadromi NL| lista_stoxwn EQUAL arithmitiki_ekfrasi NL| lista_stoxwn EQUAL leksiko NL|lista_stoxwn EQUAL onoma_klasis LEFT_PARENTH lista_parametrwn RIGHT_PARENTH NL;


sintheti_entoli: orismos_sinartisis|entoli_if|entoli_for;

entoli_break: BREAK NL;


lista_parametrwn:  orismos_parametrou param_anad;

param_anad: COMMA orismos_parametrou param_anad|;

orismos_parametrou:  parametros |parametros EQUAL ekfrasi;

entoli_etd: IDENTIFIER DOT SETD_FUNC LEFT_PARENTH IDENTIFIER COMMA IDENTIFIER RIGHT_PARENTH NL;

entoli_continue: CONTINUE NL;

entoli_for:  FOR lista_stoxwn IN lista_ekfrasewn DDOT   NL swma;

lista_ekfrasewn:  ekfrasi ekfr_anadromi|ekfrasi ekfr_anadromi COMMA;

ekfr_anadromi: COMMA ekfrasi ekfr_anadromi|;

lista_stoxwn:  stoxos stox_an|stoxos stox_an COMMA;

stox_an: COMMA stoxos stox_an|;

lektiki_monada: INTEGER|IDENTIFIER|FLOAT;

logikos_telestis: AND|OR;

sxesiakos_telestis:  LESS | GREATER | EQEQ | GEQ | LEQ | NEQ|IS| IS NOT |IN| NOT IN;


stoxos:  IDENTIFIER| LEFT_PARENTH RIGHT_PARENTH|LEFT_PARENTH lista_stoxwn RIGHT_PARENTH |LEFT_BRA RIGHT_BRA|LEFT_BRA lista_stoxwn RIGHT_BRA;


orismos_sinartisis:  DEF onoma_sinartisis LEFT_PARENTH RIGHT_PARENTH DDOT NL swma|DEF onoma_sinartisis LEFT_PARENTH lista_parametrwn RIGHT_PARENTH DDOT  NL swma;

onoma_sinartisis: IDENTIFIER;


leksiko:  LEFT_AGK  RIGHT_AGK|LEFT_AGK lista_leksikou RIGHT_AGK;

lista_leksikou:  kleidi_dedomena kleidi_anadromi;

parametros:lektiki_monada| SELF;

kleidi_anadromi: COMMA kleidi_dedomena kleidi_anadromi|;

kleidi_dedomena: ekfrasi DDOT ekfrasi;

kliseis: klisi kliseis|klisi;

klisi:entoli_anathesis|klisi_sinartisis;

klisi_sinartisis: IDENTIFIER DOT onoma_sinartisis LEFT_PARENTH lista_parametrwn RIGHT_PARENTH NL;
entoli_import: IMPORT mymodule entoli_import|;

mymodule: onoma_module COMMA mymodule  NL |onoma_module NL;

onoma_module: IDENTIFIER;

entoli_items: IDENTIFIER DOT ITEMS_FUNC NL; 







%%

void yyerror(const char *s) {

sfalmata++;
	printf("Error in line: %d\n",myline);	
}
int main(int argc, char* argv[]) {


		yyin = fopen(argv[1], "r");
	    
		yyparse();
		
		if (sfalmata==0) 
		
{
  printf("Program WITHOUT errors\n");
  
  
}

else

{
   printf("Program WITH errors\n");

}		
			
}


