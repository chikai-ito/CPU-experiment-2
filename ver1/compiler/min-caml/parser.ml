type token =
  | BOOL of (bool)
  | INT of (int)
  | FLOAT of (float)
  | NOT
  | FSQRT
  | FLOOR
  | ITOF
  | INTIN
  | FLOATIN
  | OUT
  | FTOI
  | MINUS
  | PLUS
  | AST
  | SLASH
  | MINUS_DOT
  | PLUS_DOT
  | AST_DOT
  | SLASH_DOT
  | EQUAL
  | LESS_GREATER
  | LESS_EQUAL
  | GREATER_EQUAL
  | LESS
  | GREATER
  | IF
  | THEN
  | ELSE
  | IDENT of (Id.t)
  | LET
  | IN
  | REC
  | COMMA
  | ARRAY_CREATE
  | DOT
  | LESS_MINUS
  | SEMICOLON
  | LPAREN
  | RPAREN
  | EOF

open Parsing;;
let _ = parse_error;;
# 2 "parser.mly"
(* parserが利用する変数、関数、型などの定義 *)
open Syntax
open Lexing
let addtyp x = (x, Type.gentyp ())
# 51 "parser.ml"
let yytransl_const = [|
  260 (* NOT *);
  261 (* FSQRT *);
  262 (* FLOOR *);
  263 (* ITOF *);
  264 (* INTIN *);
  265 (* FLOATIN *);
  266 (* OUT *);
  267 (* FTOI *);
  268 (* MINUS *);
  269 (* PLUS *);
  270 (* AST *);
  271 (* SLASH *);
  272 (* MINUS_DOT *);
  273 (* PLUS_DOT *);
  274 (* AST_DOT *);
  275 (* SLASH_DOT *);
  276 (* EQUAL *);
  277 (* LESS_GREATER *);
  278 (* LESS_EQUAL *);
  279 (* GREATER_EQUAL *);
  280 (* LESS *);
  281 (* GREATER *);
  282 (* IF *);
  283 (* THEN *);
  284 (* ELSE *);
  286 (* LET *);
  287 (* IN *);
  288 (* REC *);
  289 (* COMMA *);
  290 (* ARRAY_CREATE *);
  291 (* DOT *);
  292 (* LESS_MINUS *);
  293 (* SEMICOLON *);
  294 (* LPAREN *);
  295 (* RPAREN *);
    0 (* EOF *);
    0|]

let yytransl_block = [|
  257 (* BOOL *);
  258 (* INT *);
  259 (* FLOAT *);
  285 (* IDENT *);
    0|]

let yylhs = "\255\255\
\002\000\002\000\002\000\002\000\002\000\002\000\002\000\001\000\
\001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
\001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
\001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
\001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
\001\000\001\000\003\000\007\000\007\000\004\000\004\000\005\000\
\005\000\006\000\006\000\000\000"

let yylen = "\002\000\
\003\000\002\000\001\000\001\000\001\000\001\000\005\000\001\000\
\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
\003\000\003\000\003\000\006\000\002\000\003\000\003\000\003\000\
\003\000\006\000\005\000\002\000\001\000\008\000\007\000\003\000\
\003\000\001\000\004\000\002\000\001\000\002\000\001\000\003\000\
\003\000\003\000\003\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\042\000\003\000\004\000\005\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\006\000\000\000\000\000\000\000\000\000\000\000\000\000\
\009\000\010\000\011\000\013\000\014\000\015\000\016\000\012\000\
\017\000\029\000\000\000\000\000\000\000\000\000\000\000\002\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\
\020\000\021\000\000\000\000\000\032\000\033\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\044\000\000\000\000\000\
\051\000\050\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\007\000\000\000\000\000\000\000\000\000"

let yydgoto = "\002\000\
\022\000\023\000\065\000\060\000\024\000\067\000\093\000"

let yysindex = "\004\000\
\158\255\000\000\000\000\000\000\000\000\000\000\158\255\158\255\
\158\255\158\255\158\255\158\255\158\255\158\255\158\255\158\255\
\158\255\000\000\246\254\069\255\116\255\177\002\001\255\223\254\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\073\002\004\255\252\254\253\254\030\255\000\000\
\185\255\158\255\158\255\158\255\158\255\158\255\158\255\158\255\
\158\255\158\255\158\255\158\255\158\255\158\255\158\255\158\255\
\158\255\245\254\250\254\069\255\158\255\158\255\158\255\005\255\
\007\255\002\255\240\254\019\255\250\254\000\000\070\255\070\255\
\000\000\000\000\070\255\070\255\000\000\000\000\062\255\062\255\
\062\255\062\255\062\255\062\255\225\002\177\002\158\255\250\254\
\225\002\099\002\125\002\005\255\043\255\158\255\035\255\037\255\
\047\255\158\255\213\255\158\255\158\255\000\000\158\255\177\002\
\000\000\000\000\158\255\045\002\033\255\203\002\177\002\177\002\
\151\002\000\000\158\255\158\255\203\002\177\002"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\082\000\101\000\185\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\040\000\129\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\157\000\000\000\213\000\241\000\
\000\000\000\000\027\001\066\001\000\000\000\000\099\001\127\001\
\155\001\183\001\211\001\231\001\248\000\006\001\000\000\073\000\
\255\000\000\000\000\000\063\255\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\045\001\
\000\000\000\000\000\000\000\000\001\000\245\001\218\001\056\255\
\000\000\000\000\000\000\000\000\003\002\017\002"

let yygindex = "\000\000\
\255\255\254\255\000\000\000\000\000\000\000\000\002\000"

let yytablesize = 1018
let yytable = "\061\000\
\007\000\004\000\005\000\006\000\001\000\025\000\026\000\027\000\
\028\000\029\000\030\000\031\000\032\000\033\000\034\000\035\000\
\096\000\039\000\036\000\041\000\059\000\037\000\097\000\063\000\
\064\000\066\000\087\000\038\000\068\000\018\000\004\000\005\000\
\006\000\092\000\095\000\058\000\069\000\094\000\021\000\047\000\
\071\000\072\000\073\000\074\000\075\000\076\000\077\000\078\000\
\079\000\080\000\081\000\082\000\083\000\084\000\085\000\086\000\
\098\000\088\000\018\000\089\000\090\000\091\000\103\000\105\000\
\068\000\106\000\107\000\021\000\115\000\004\000\005\000\006\000\
\046\000\042\000\043\000\044\000\045\000\046\000\047\000\048\000\
\049\000\052\000\045\000\044\000\045\000\099\000\043\000\048\000\
\049\000\000\000\000\000\000\000\104\000\102\000\000\000\000\000\
\108\000\018\000\110\000\111\000\008\000\112\000\000\000\000\000\
\000\000\113\000\021\000\000\000\000\000\000\000\000\000\000\000\
\000\000\117\000\118\000\003\000\004\000\005\000\006\000\007\000\
\008\000\009\000\010\000\011\000\012\000\013\000\014\000\015\000\
\036\000\000\000\000\000\016\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\017\000\000\000\000\000\
\018\000\019\000\000\000\000\000\000\000\020\000\000\000\000\000\
\000\000\021\000\040\000\000\000\041\000\003\000\004\000\005\000\
\006\000\007\000\008\000\009\000\010\000\011\000\012\000\013\000\
\014\000\015\000\000\000\000\000\000\000\016\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\017\000\
\037\000\000\000\018\000\019\000\000\000\000\000\000\000\020\000\
\000\000\000\000\000\000\021\000\042\000\043\000\044\000\045\000\
\046\000\047\000\048\000\049\000\050\000\051\000\052\000\053\000\
\054\000\055\000\000\000\000\000\019\000\000\000\000\000\000\000\
\000\000\056\000\000\000\000\000\000\000\057\000\000\000\070\000\
\042\000\043\000\044\000\045\000\046\000\047\000\048\000\049\000\
\050\000\051\000\052\000\053\000\054\000\055\000\000\000\000\000\
\018\000\000\000\000\000\000\000\000\000\056\000\000\000\049\000\
\000\000\057\000\000\000\109\000\000\000\000\000\048\000\000\000\
\000\000\007\000\007\000\007\000\000\000\040\000\000\000\000\000\
\000\000\000\000\000\000\000\000\007\000\007\000\007\000\007\000\
\007\000\007\000\007\000\007\000\007\000\007\000\007\000\007\000\
\007\000\007\000\031\000\007\000\007\000\007\000\000\000\007\000\
\000\000\007\000\000\000\007\000\000\000\007\000\007\000\007\000\
\047\000\047\000\047\000\000\000\035\000\000\000\000\000\000\000\
\000\000\000\000\000\000\047\000\047\000\047\000\047\000\047\000\
\047\000\047\000\047\000\047\000\047\000\047\000\047\000\047\000\
\047\000\030\000\047\000\047\000\047\000\000\000\047\000\000\000\
\047\000\046\000\046\000\046\000\047\000\047\000\047\000\000\000\
\000\000\000\000\000\000\000\000\046\000\046\000\046\000\046\000\
\046\000\046\000\046\000\046\000\046\000\046\000\046\000\046\000\
\046\000\046\000\022\000\046\000\046\000\046\000\000\000\046\000\
\000\000\046\000\000\000\000\000\000\000\046\000\046\000\046\000\
\008\000\008\000\008\000\008\000\008\000\008\000\008\000\008\000\
\008\000\008\000\008\000\008\000\008\000\008\000\023\000\008\000\
\008\000\000\000\000\000\008\000\000\000\008\000\000\000\000\000\
\000\000\008\000\000\000\008\000\036\000\036\000\036\000\036\000\
\036\000\036\000\036\000\036\000\036\000\036\000\036\000\036\000\
\036\000\036\000\026\000\036\000\036\000\000\000\000\000\036\000\
\000\000\036\000\000\000\000\000\000\000\036\000\000\000\036\000\
\041\000\041\000\041\000\041\000\041\000\041\000\041\000\041\000\
\041\000\041\000\041\000\041\000\041\000\041\000\027\000\041\000\
\041\000\000\000\000\000\041\000\000\000\041\000\000\000\000\000\
\000\000\041\000\000\000\041\000\037\000\037\000\037\000\037\000\
\037\000\037\000\037\000\037\000\037\000\037\000\037\000\037\000\
\037\000\037\000\024\000\037\000\037\000\000\000\000\000\037\000\
\000\000\034\000\000\000\000\000\000\000\037\000\000\000\037\000\
\019\000\019\000\000\000\000\000\019\000\019\000\025\000\000\000\
\019\000\019\000\019\000\019\000\019\000\019\000\000\000\019\000\
\019\000\000\000\000\000\019\000\028\000\019\000\000\000\000\000\
\000\000\019\000\000\000\019\000\018\000\018\000\000\000\000\000\
\018\000\018\000\039\000\000\000\018\000\018\000\018\000\018\000\
\018\000\018\000\000\000\018\000\018\000\000\000\000\000\018\000\
\038\000\018\000\049\000\049\000\000\000\018\000\049\000\018\000\
\049\000\048\000\048\000\000\000\049\000\048\000\049\000\048\000\
\040\000\040\000\000\000\048\000\040\000\048\000\031\000\031\000\
\000\000\000\000\031\000\031\000\040\000\000\000\031\000\031\000\
\031\000\031\000\031\000\031\000\000\000\031\000\031\000\000\000\
\000\000\031\000\000\000\031\000\000\000\000\000\000\000\031\000\
\000\000\031\000\000\000\000\000\000\000\000\000\000\000\035\000\
\035\000\000\000\000\000\035\000\000\000\030\000\030\000\000\000\
\000\000\030\000\030\000\035\000\000\000\030\000\030\000\030\000\
\030\000\030\000\030\000\000\000\030\000\030\000\000\000\000\000\
\030\000\000\000\030\000\000\000\000\000\000\000\030\000\000\000\
\030\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\022\000\022\000\
\022\000\022\000\022\000\022\000\000\000\022\000\022\000\000\000\
\000\000\022\000\000\000\022\000\000\000\000\000\000\000\022\000\
\000\000\022\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\023\000\023\000\023\000\023\000\023\000\023\000\
\000\000\023\000\023\000\000\000\000\000\023\000\000\000\023\000\
\000\000\000\000\000\000\023\000\000\000\023\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\026\000\026\000\
\026\000\026\000\026\000\026\000\000\000\026\000\026\000\000\000\
\000\000\026\000\000\000\026\000\000\000\000\000\000\000\026\000\
\000\000\026\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\027\000\027\000\027\000\027\000\027\000\027\000\
\000\000\027\000\027\000\000\000\000\000\027\000\000\000\027\000\
\000\000\000\000\000\000\027\000\000\000\027\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\024\000\024\000\
\024\000\024\000\024\000\024\000\000\000\024\000\024\000\000\000\
\000\000\024\000\000\000\024\000\034\000\034\000\000\000\024\000\
\034\000\024\000\025\000\025\000\025\000\025\000\025\000\025\000\
\034\000\025\000\025\000\000\000\000\000\025\000\000\000\025\000\
\000\000\000\000\000\000\025\000\000\000\025\000\000\000\028\000\
\028\000\000\000\000\000\028\000\000\000\000\000\000\000\000\000\
\000\000\028\000\000\000\028\000\000\000\039\000\039\000\000\000\
\000\000\039\000\000\000\000\000\000\000\000\000\000\000\039\000\
\000\000\039\000\000\000\038\000\038\000\000\000\000\000\038\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\038\000\
\042\000\043\000\044\000\045\000\046\000\047\000\048\000\049\000\
\050\000\051\000\052\000\053\000\054\000\055\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\056\000\000\000\000\000\
\000\000\057\000\000\000\114\000\042\000\043\000\044\000\045\000\
\046\000\047\000\048\000\049\000\050\000\051\000\052\000\053\000\
\054\000\055\000\000\000\062\000\000\000\000\000\000\000\000\000\
\000\000\056\000\000\000\000\000\000\000\057\000\042\000\043\000\
\044\000\045\000\046\000\047\000\048\000\049\000\050\000\051\000\
\052\000\053\000\054\000\055\000\000\000\000\000\100\000\000\000\
\000\000\000\000\000\000\056\000\000\000\000\000\000\000\057\000\
\042\000\043\000\044\000\045\000\046\000\047\000\048\000\049\000\
\050\000\051\000\052\000\053\000\054\000\055\000\000\000\000\000\
\000\000\000\000\000\000\101\000\000\000\056\000\000\000\000\000\
\000\000\057\000\042\000\043\000\044\000\045\000\046\000\047\000\
\048\000\049\000\050\000\051\000\052\000\053\000\054\000\055\000\
\000\000\000\000\000\000\000\000\000\000\116\000\000\000\056\000\
\000\000\000\000\000\000\057\000\042\000\043\000\044\000\045\000\
\046\000\047\000\048\000\049\000\050\000\051\000\052\000\053\000\
\054\000\055\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\056\000\000\000\000\000\000\000\057\000\042\000\043\000\
\044\000\045\000\046\000\047\000\048\000\049\000\050\000\051\000\
\052\000\053\000\054\000\055\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\056\000\042\000\043\000\044\000\045\000\
\046\000\047\000\048\000\049\000\050\000\051\000\052\000\053\000\
\054\000\055\000"

let yycheck = "\033\001\
\000\000\001\001\002\001\003\001\001\000\007\000\008\000\009\000\
\010\000\011\000\012\000\013\000\014\000\015\000\016\000\017\000\
\033\001\020\000\029\001\021\000\023\000\032\001\039\001\020\001\
\029\001\029\001\038\001\038\001\035\001\029\001\001\001\002\001\
\003\001\029\001\033\001\035\001\039\000\031\001\038\001\000\000\
\042\000\043\000\044\000\045\000\046\000\047\000\048\000\049\000\
\050\000\051\000\052\000\053\000\054\000\055\000\056\000\057\000\
\038\001\060\000\029\001\061\000\062\000\063\000\020\001\029\001\
\035\001\029\001\020\001\038\001\036\001\001\001\002\001\003\001\
\000\000\012\001\013\001\014\001\015\001\016\001\017\001\018\001\
\019\001\000\000\020\001\014\001\015\001\087\000\031\001\018\001\
\019\001\255\255\255\255\255\255\094\000\092\000\255\255\255\255\
\098\000\029\001\100\000\101\000\000\000\103\000\255\255\255\255\
\255\255\107\000\038\001\255\255\255\255\255\255\255\255\255\255\
\255\255\115\000\116\000\000\001\001\001\002\001\003\001\004\001\
\005\001\006\001\007\001\008\001\009\001\010\001\011\001\012\001\
\000\000\255\255\255\255\016\001\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\026\001\255\255\255\255\
\029\001\030\001\255\255\255\255\255\255\034\001\255\255\255\255\
\255\255\038\001\039\001\255\255\000\000\000\001\001\001\002\001\
\003\001\004\001\005\001\006\001\007\001\008\001\009\001\010\001\
\011\001\012\001\255\255\255\255\255\255\016\001\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\026\001\
\000\000\255\255\029\001\030\001\255\255\255\255\255\255\034\001\
\255\255\255\255\255\255\038\001\012\001\013\001\014\001\015\001\
\016\001\017\001\018\001\019\001\020\001\021\001\022\001\023\001\
\024\001\025\001\255\255\255\255\000\000\255\255\255\255\255\255\
\255\255\033\001\255\255\255\255\255\255\037\001\255\255\039\001\
\012\001\013\001\014\001\015\001\016\001\017\001\018\001\019\001\
\020\001\021\001\022\001\023\001\024\001\025\001\255\255\255\255\
\000\000\255\255\255\255\255\255\255\255\033\001\255\255\000\000\
\255\255\037\001\255\255\039\001\255\255\255\255\000\000\255\255\
\255\255\001\001\002\001\003\001\255\255\000\000\255\255\255\255\
\255\255\255\255\255\255\255\255\012\001\013\001\014\001\015\001\
\016\001\017\001\018\001\019\001\020\001\021\001\022\001\023\001\
\024\001\025\001\000\000\027\001\028\001\029\001\255\255\031\001\
\255\255\033\001\255\255\035\001\255\255\037\001\038\001\039\001\
\001\001\002\001\003\001\255\255\000\000\255\255\255\255\255\255\
\255\255\255\255\255\255\012\001\013\001\014\001\015\001\016\001\
\017\001\018\001\019\001\020\001\021\001\022\001\023\001\024\001\
\025\001\000\000\027\001\028\001\029\001\255\255\031\001\255\255\
\033\001\001\001\002\001\003\001\037\001\038\001\039\001\255\255\
\255\255\255\255\255\255\255\255\012\001\013\001\014\001\015\001\
\016\001\017\001\018\001\019\001\020\001\021\001\022\001\023\001\
\024\001\025\001\000\000\027\001\028\001\029\001\255\255\031\001\
\255\255\033\001\255\255\255\255\255\255\037\001\038\001\039\001\
\012\001\013\001\014\001\015\001\016\001\017\001\018\001\019\001\
\020\001\021\001\022\001\023\001\024\001\025\001\000\000\027\001\
\028\001\255\255\255\255\031\001\255\255\033\001\255\255\255\255\
\255\255\037\001\255\255\039\001\012\001\013\001\014\001\015\001\
\016\001\017\001\018\001\019\001\020\001\021\001\022\001\023\001\
\024\001\025\001\000\000\027\001\028\001\255\255\255\255\031\001\
\255\255\033\001\255\255\255\255\255\255\037\001\255\255\039\001\
\012\001\013\001\014\001\015\001\016\001\017\001\018\001\019\001\
\020\001\021\001\022\001\023\001\024\001\025\001\000\000\027\001\
\028\001\255\255\255\255\031\001\255\255\033\001\255\255\255\255\
\255\255\037\001\255\255\039\001\012\001\013\001\014\001\015\001\
\016\001\017\001\018\001\019\001\020\001\021\001\022\001\023\001\
\024\001\025\001\000\000\027\001\028\001\255\255\255\255\031\001\
\255\255\000\000\255\255\255\255\255\255\037\001\255\255\039\001\
\012\001\013\001\255\255\255\255\016\001\017\001\000\000\255\255\
\020\001\021\001\022\001\023\001\024\001\025\001\255\255\027\001\
\028\001\255\255\255\255\031\001\000\000\033\001\255\255\255\255\
\255\255\037\001\255\255\039\001\012\001\013\001\255\255\255\255\
\016\001\017\001\000\000\255\255\020\001\021\001\022\001\023\001\
\024\001\025\001\255\255\027\001\028\001\255\255\255\255\031\001\
\000\000\033\001\027\001\028\001\255\255\037\001\031\001\039\001\
\033\001\027\001\028\001\255\255\037\001\031\001\039\001\033\001\
\027\001\028\001\255\255\037\001\031\001\039\001\012\001\013\001\
\255\255\255\255\016\001\017\001\039\001\255\255\020\001\021\001\
\022\001\023\001\024\001\025\001\255\255\027\001\028\001\255\255\
\255\255\031\001\255\255\033\001\255\255\255\255\255\255\037\001\
\255\255\039\001\255\255\255\255\255\255\255\255\255\255\027\001\
\028\001\255\255\255\255\031\001\255\255\012\001\013\001\255\255\
\255\255\016\001\017\001\039\001\255\255\020\001\021\001\022\001\
\023\001\024\001\025\001\255\255\027\001\028\001\255\255\255\255\
\031\001\255\255\033\001\255\255\255\255\255\255\037\001\255\255\
\039\001\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\020\001\021\001\
\022\001\023\001\024\001\025\001\255\255\027\001\028\001\255\255\
\255\255\031\001\255\255\033\001\255\255\255\255\255\255\037\001\
\255\255\039\001\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\020\001\021\001\022\001\023\001\024\001\025\001\
\255\255\027\001\028\001\255\255\255\255\031\001\255\255\033\001\
\255\255\255\255\255\255\037\001\255\255\039\001\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\020\001\021\001\
\022\001\023\001\024\001\025\001\255\255\027\001\028\001\255\255\
\255\255\031\001\255\255\033\001\255\255\255\255\255\255\037\001\
\255\255\039\001\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\020\001\021\001\022\001\023\001\024\001\025\001\
\255\255\027\001\028\001\255\255\255\255\031\001\255\255\033\001\
\255\255\255\255\255\255\037\001\255\255\039\001\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\020\001\021\001\
\022\001\023\001\024\001\025\001\255\255\027\001\028\001\255\255\
\255\255\031\001\255\255\033\001\027\001\028\001\255\255\037\001\
\031\001\039\001\020\001\021\001\022\001\023\001\024\001\025\001\
\039\001\027\001\028\001\255\255\255\255\031\001\255\255\033\001\
\255\255\255\255\255\255\037\001\255\255\039\001\255\255\027\001\
\028\001\255\255\255\255\031\001\255\255\255\255\255\255\255\255\
\255\255\037\001\255\255\039\001\255\255\027\001\028\001\255\255\
\255\255\031\001\255\255\255\255\255\255\255\255\255\255\037\001\
\255\255\039\001\255\255\027\001\028\001\255\255\255\255\031\001\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\039\001\
\012\001\013\001\014\001\015\001\016\001\017\001\018\001\019\001\
\020\001\021\001\022\001\023\001\024\001\025\001\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\033\001\255\255\255\255\
\255\255\037\001\255\255\039\001\012\001\013\001\014\001\015\001\
\016\001\017\001\018\001\019\001\020\001\021\001\022\001\023\001\
\024\001\025\001\255\255\027\001\255\255\255\255\255\255\255\255\
\255\255\033\001\255\255\255\255\255\255\037\001\012\001\013\001\
\014\001\015\001\016\001\017\001\018\001\019\001\020\001\021\001\
\022\001\023\001\024\001\025\001\255\255\255\255\028\001\255\255\
\255\255\255\255\255\255\033\001\255\255\255\255\255\255\037\001\
\012\001\013\001\014\001\015\001\016\001\017\001\018\001\019\001\
\020\001\021\001\022\001\023\001\024\001\025\001\255\255\255\255\
\255\255\255\255\255\255\031\001\255\255\033\001\255\255\255\255\
\255\255\037\001\012\001\013\001\014\001\015\001\016\001\017\001\
\018\001\019\001\020\001\021\001\022\001\023\001\024\001\025\001\
\255\255\255\255\255\255\255\255\255\255\031\001\255\255\033\001\
\255\255\255\255\255\255\037\001\012\001\013\001\014\001\015\001\
\016\001\017\001\018\001\019\001\020\001\021\001\022\001\023\001\
\024\001\025\001\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\033\001\255\255\255\255\255\255\037\001\012\001\013\001\
\014\001\015\001\016\001\017\001\018\001\019\001\020\001\021\001\
\022\001\023\001\024\001\025\001\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\033\001\012\001\013\001\014\001\015\001\
\016\001\017\001\018\001\019\001\020\001\021\001\022\001\023\001\
\024\001\025\001"

let yynames_const = "\
  NOT\000\
  FSQRT\000\
  FLOOR\000\
  ITOF\000\
  INTIN\000\
  FLOATIN\000\
  OUT\000\
  FTOI\000\
  MINUS\000\
  PLUS\000\
  AST\000\
  SLASH\000\
  MINUS_DOT\000\
  PLUS_DOT\000\
  AST_DOT\000\
  SLASH_DOT\000\
  EQUAL\000\
  LESS_GREATER\000\
  LESS_EQUAL\000\
  GREATER_EQUAL\000\
  LESS\000\
  GREATER\000\
  IF\000\
  THEN\000\
  ELSE\000\
  LET\000\
  IN\000\
  REC\000\
  COMMA\000\
  ARRAY_CREATE\000\
  DOT\000\
  LESS_MINUS\000\
  SEMICOLON\000\
  LPAREN\000\
  RPAREN\000\
  EOF\000\
  "

let yynames_block = "\
  BOOL\000\
  INT\000\
  FLOAT\000\
  IDENT\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Syntax.t) in
    Obj.repr(
# 73 "parser.mly"
    ( _2 )
# 487 "parser.ml"
               : 'simple_exp))
; (fun __caml_parser_env ->
    Obj.repr(
# 75 "parser.mly"
    ( Unit )
# 493 "parser.ml"
               : 'simple_exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : bool) in
    Obj.repr(
# 77 "parser.mly"
    ( Bool(_1) )
# 500 "parser.ml"
               : 'simple_exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 79 "parser.mly"
    ( Int(_1) )
# 507 "parser.ml"
               : 'simple_exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : float) in
    Obj.repr(
# 81 "parser.mly"
    ( Float(_1) )
# 514 "parser.ml"
               : 'simple_exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Id.t) in
    Obj.repr(
# 83 "parser.mly"
    ( Var(_1) )
# 521 "parser.ml"
               : 'simple_exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 4 : 'simple_exp) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : Syntax.t) in
    Obj.repr(
# 85 "parser.mly"
    ( Get(_1, _4) )
# 529 "parser.ml"
               : 'simple_exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'simple_exp) in
    Obj.repr(
# 89 "parser.mly"
    ( _1 )
# 536 "parser.ml"
               : Syntax.t))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : Syntax.t) in
    Obj.repr(
# 92 "parser.mly"
    ( Not(_2) )
# 543 "parser.ml"
               : Syntax.t))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : Syntax.t) in
    Obj.repr(
# 95 "parser.mly"
       ( FSqrt(_2) )
# 550 "parser.ml"
               : Syntax.t))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : Syntax.t) in
    Obj.repr(
# 98 "parser.mly"
       ( Floor(_2) )
# 557 "parser.ml"
               : Syntax.t))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : Syntax.t) in
    Obj.repr(
# 101 "parser.mly"
       ( Ftoi(_2) )
# 564 "parser.ml"
               : Syntax.t))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : Syntax.t) in
    Obj.repr(
# 104 "parser.mly"
       ( Itof(_2) )
# 571 "parser.ml"
               : Syntax.t))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : Syntax.t) in
    Obj.repr(
# 107 "parser.mly"
       ( In(_2) )
# 578 "parser.ml"
               : Syntax.t))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : Syntax.t) in
    Obj.repr(
# 110 "parser.mly"
       ( Fin(_2) )
# 585 "parser.ml"
               : Syntax.t))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : Syntax.t) in
    Obj.repr(
# 113 "parser.mly"
    ( Out(_2) )
# 592 "parser.ml"
               : Syntax.t))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : Syntax.t) in
    Obj.repr(
# 116 "parser.mly"
    ( match _2 with
    | Float(f) -> Float(-.f) (* -1.23などは型エラーではないので別扱い *)
    | e -> Neg(e) )
# 601 "parser.ml"
               : Syntax.t))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Syntax.t) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Syntax.t) in
    Obj.repr(
# 120 "parser.mly"
    ( Add(_1, _3) )
# 609 "parser.ml"
               : Syntax.t))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Syntax.t) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Syntax.t) in
    Obj.repr(
# 122 "parser.mly"
    ( Sub(_1, _3) )
# 617 "parser.ml"
               : Syntax.t))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Syntax.t) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Syntax.t) in
    Obj.repr(
# 124 "parser.mly"
    ( Mul(_1, _3) )
# 625 "parser.ml"
               : Syntax.t))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Syntax.t) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Syntax.t) in
    Obj.repr(
# 126 "parser.mly"
    ( Div(_1, _3) )
# 633 "parser.ml"
               : Syntax.t))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Syntax.t) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Syntax.t) in
    Obj.repr(
# 128 "parser.mly"
    ( Eq(_1, _3) )
# 641 "parser.ml"
               : Syntax.t))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Syntax.t) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Syntax.t) in
    Obj.repr(
# 130 "parser.mly"
    ( Not(Eq(_1, _3)) )
# 649 "parser.ml"
               : Syntax.t))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Syntax.t) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Syntax.t) in
    Obj.repr(
# 132 "parser.mly"
    ( Not(LE(_3, _1)) )
# 657 "parser.ml"
               : Syntax.t))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Syntax.t) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Syntax.t) in
    Obj.repr(
# 134 "parser.mly"
    ( Not(LE(_1, _3)) )
# 665 "parser.ml"
               : Syntax.t))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Syntax.t) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Syntax.t) in
    Obj.repr(
# 136 "parser.mly"
    ( LE(_1, _3) )
# 673 "parser.ml"
               : Syntax.t))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Syntax.t) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Syntax.t) in
    Obj.repr(
# 138 "parser.mly"
    ( LE(_3, _1) )
# 681 "parser.ml"
               : Syntax.t))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : Syntax.t) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : Syntax.t) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : Syntax.t) in
    Obj.repr(
# 141 "parser.mly"
    ( If(_2, _4, _6) )
# 690 "parser.ml"
               : Syntax.t))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : Syntax.t) in
    Obj.repr(
# 144 "parser.mly"
    ( FNeg(_2) )
# 697 "parser.ml"
               : Syntax.t))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Syntax.t) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Syntax.t) in
    Obj.repr(
# 146 "parser.mly"
    ( FAdd(_1, _3) )
# 705 "parser.ml"
               : Syntax.t))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Syntax.t) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Syntax.t) in
    Obj.repr(
# 148 "parser.mly"
    ( FSub(_1, _3) )
# 713 "parser.ml"
               : Syntax.t))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Syntax.t) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Syntax.t) in
    Obj.repr(
# 150 "parser.mly"
    ( FMul(_1, _3) )
# 721 "parser.ml"
               : Syntax.t))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Syntax.t) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Syntax.t) in
    Obj.repr(
# 152 "parser.mly"
    ( FDiv(_1, _3) )
# 729 "parser.ml"
               : Syntax.t))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : Id.t) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : Syntax.t) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : Syntax.t) in
    Obj.repr(
# 155 "parser.mly"
    ( Let(addtyp _2, _4, _6) )
# 738 "parser.ml"
               : Syntax.t))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'fundef) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : Syntax.t) in
    Obj.repr(
# 158 "parser.mly"
    ( LetRec(_3, _5) )
# 746 "parser.ml"
               : Syntax.t))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'simple_exp) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'actual_args) in
    Obj.repr(
# 161 "parser.mly"
    ( App(_1, _2) )
# 754 "parser.ml"
               : Syntax.t))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'elems) in
    Obj.repr(
# 164 "parser.mly"
    ( Tuple(_1) )
# 761 "parser.ml"
               : Syntax.t))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 5 : 'pat) in
    let _6 = (Parsing.peek_val __caml_parser_env 2 : Syntax.t) in
    let _8 = (Parsing.peek_val __caml_parser_env 0 : Syntax.t) in
    Obj.repr(
# 166 "parser.mly"
    ( LetTuple(_3, _6, _8) )
# 770 "parser.ml"
               : Syntax.t))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 6 : 'simple_exp) in
    let _4 = (Parsing.peek_val __caml_parser_env 3 : Syntax.t) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : Syntax.t) in
    Obj.repr(
# 168 "parser.mly"
    ( Put(_1, _4, _7) )
# 779 "parser.ml"
               : Syntax.t))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Syntax.t) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Syntax.t) in
    Obj.repr(
# 170 "parser.mly"
    ( Let((Id.gentmp Type.Unit, Type.Unit), _1, _3) )
# 787 "parser.ml"
               : Syntax.t))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'simple_exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'simple_exp) in
    Obj.repr(
# 173 "parser.mly"
    ( Array(_2, _3) )
# 795 "parser.ml"
               : Syntax.t))
; (fun __caml_parser_env ->
    Obj.repr(
# 175 "parser.mly"
    ( failwith
        (
          let pos = Parsing.symbol_start_pos () in
          let lnum = pos.pos_lnum in
          let cnum = pos.pos_cnum in
          let bol = pos.pos_bol in
          Printf.printf "line %d character %d\n" lnum (cnum - bol);
          Printf.sprintf "parse error near characters %d-%d"
           (Parsing.symbol_start ())
           (Parsing.symbol_end ())) )
# 810 "parser.ml"
               : Syntax.t))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : Id.t) in
    let _2 = (Parsing.peek_val __caml_parser_env 2 : 'formal_args) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : Syntax.t) in
    Obj.repr(
# 188 "parser.mly"
    ( { name = addtyp _1; args = _2; body = _4 } )
# 819 "parser.ml"
               : 'fundef))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : Id.t) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'formal_args) in
    Obj.repr(
# 192 "parser.mly"
    ( addtyp _1 :: _2 )
# 827 "parser.ml"
               : 'formal_args))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Id.t) in
    Obj.repr(
# 194 "parser.mly"
    ( [addtyp _1] )
# 834 "parser.ml"
               : 'formal_args))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'actual_args) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'simple_exp) in
    Obj.repr(
# 199 "parser.mly"
    ( _1 @ [_2] )
# 842 "parser.ml"
               : 'actual_args))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'simple_exp) in
    Obj.repr(
# 202 "parser.mly"
    ( [_1] )
# 849 "parser.ml"
               : 'actual_args))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'elems) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Syntax.t) in
    Obj.repr(
# 206 "parser.mly"
    ( _1 @ [_3] )
# 857 "parser.ml"
               : 'elems))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Syntax.t) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Syntax.t) in
    Obj.repr(
# 208 "parser.mly"
    ( [_1; _3] )
# 865 "parser.ml"
               : 'elems))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'pat) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Id.t) in
    Obj.repr(
# 212 "parser.mly"
    ( _1 @ [addtyp _3] )
# 873 "parser.ml"
               : 'pat))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Id.t) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Id.t) in
    Obj.repr(
# 214 "parser.mly"
    ( [addtyp _1; addtyp _3] )
# 881 "parser.ml"
               : 'pat))
(* Entry exp *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let exp (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Syntax.t)
