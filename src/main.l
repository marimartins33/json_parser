
%{
#include <stdlib.h> 

void yyerror(char *c);

#include "y.tab.h"

%}


%%

\{ {return '{';}
\} {return '}';}
[\n] {return '\n';}

%%

int yywrap() {
  return 1;
}
