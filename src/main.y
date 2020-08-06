

%{
#include <stdio.h>
  #include <stdlib.h>
void yyerror(char *c);
int yylex(void);
%}

%token '{' '}' ':' '"'  INT STR '\n'

%%

S:
 O '\n' {printf("VALIDO\n");}

O: 
  '{' C '}' {}
;

C:
  A {}
;

A:
  N ':' V {}
  | A ',' A {}
;

N:
  '"'STR'"' {}
;

V:
  INT {}
  | O {}
  | STR {}
  | '"'STR'"'{}
; 


%%

void yyerror(char *s) {
}

int main() {
  yyparse();
    return 0;

}
