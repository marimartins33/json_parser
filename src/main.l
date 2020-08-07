
%{
#include <stdlib.h> 

void yyerror(char *c);

#include "y.tab.h"

%}


%%

\{ {return '{';}
\} {return '}';}
\: {return ':';}
\" {return '"';}
[0-9]+ {return INT;}
[A-za-z0-9]+ {return STR;}
[0-9]+[.][0-9]= {return FLT;}
. ;
[\n] {return '\n';}

%%

int yywrap() {
  return 1;
}
