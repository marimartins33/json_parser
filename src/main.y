%{
#include <stdio.h>
  #include <stdlib.h>
void yyerror(char *c);
int yylex(void);
%}

%token '{' '}' ':' '"'  INT STR FLT '\n'

%%

S:
 O '\n' {printf("VALIDO\n");}
;

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
  | FLT {}
  | INT '\n'
; 


%%

void yyerror(char *s) {printf("INVALIDO\n");
}

int main() {
  yyparse();
    return 0;

}
