lexer grammar DecafLexer;

@header {
package decaf;
}

options
{
  language=Java;
}

tokens
{
  TK_class
}

PROGRAM: 'Program';
BREAK: 'break';
CALLOUT: 'callout';
CLASS: 'class';
CONTINUE: 'continue';
RETURN: 'return';
VOID: 'void';

IF:'if';
ELSE:'else';
FOR:'for';
INT: 'int';
BOOLEAN: 'boolean';
BOOLEANLITERAL: 'true'|'false';

LCURLY:'{';
RCURLY:'}';
LCOL:'[';
RCOL:']';
LPAR:'(';
RPAR:')';

VIRGULA : ',';
DPONTOS: ':';
PVIRGULA : ';';

VEZES:'*';
DIV:'/';
MENOS:'-';
MAIS:'+';
RESTO: '%';
EXCLAMACAO:'!';
E:'&&';
OU:'||';

IGUAL:'==';
DIFERENTEDE:'!=';
MAIORQUE:'>';
MENORQUE:'<';
MAIORIGUAL:'>=';
MENORIGUAL:'<=';
MAISIGUAL:'+=';
MENOSIGUAL:'-=';
ATRIB:'=';

WS : [ \t\r\n]+ -> skip;

SL_COMMENT : '//'(~'\n')*'\n' -> skip;

ID : (LETRAS|'_')(LETRAS|NUM|'_')*;
CHAR : '\'' (ESC|LETRAS|NUM|OUTROS) '\'';
STRING : '"'(LETRAS|NUM|SIMBOLOS)* '"';
INTLITERAL : NUM(NUM)*;
HEXLITERAL : '0x'(NUM|HEXDIGIT)+;

fragment ESC : '\\'('n'|'t'|'\\'|'"');
fragment LETRAS : ('a'..'z'|'A'..'Z');
fragment NUM  : ('0'..'9');
fragment SIMBOLOS : (' '|'!'|'"'|'#'|'$'|'%'|'&'|'\\\''|'('|')'|'*'|'+'|','|'-'|'.'|'/'|':'|';'|'<'|'='|'>'|'?'|'@'|'['|']'|'^'|'_'|'´'|'`'|'{'|'|'|'}'|'~'|'\t'|'\\'|'\"');
fragment OUTROS: (' '|'!'|'#'|'$'|'%'|'&'|'('|')'|'*'|'+'|','|'-'|'.'|'/'|':'|';'|'<'|'='|'>'|'?'|'@'|'['|']'|'^'|'_'|'´'|'`'|'{'|'|'|'}'|'~');
fragment HEXDIGIT : ('a'..'f'|'A'..'F');

