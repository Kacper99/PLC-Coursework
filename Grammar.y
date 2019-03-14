{
module Grammar where
import Tokens
}

%name parseCalc
%tokentype { Token }
%error { parseError }
%token
    int         { TokenInt _ $$ }
    true        { TokenTrue _}
    false       { TokenFalse _ }
    var         { TokenVar _ $$ } 
    '+'         { TokenAdd _ }
    '-'         { TokenMinus _ }
    '/'         { TokenDiv _ }
    '*'         { TokenMul _ }
    '<'         { TokenLT _ }
    '>'         { TokenMT _ }
    '='         { TokenEq _ }
    if          { TokenIf _ }
    then        { TokenThen _ }
    else        { TokenElse _ }
    while       { TokenWhile _ }
    do          { TokenDo _ }
    '('         { TokenLParen _ }
    ')'         { TokenRParen _ }
    'stream['   { TokenOpenStream _ }
    ']'         { TokenCloseStream _ }
    print       { TokenPrint _ }
    println     { TokenPrintLine _ }
    ';'         { TokenEndStatement _ }
    '{'         { TokenLeftCurly _ }
    '}'         { TokenRightCurly _ }
    '&&'        { TokenAnd _ }
    '||'        { TokenOr _ }
    '!'         { TokenNot _ }
    '!='        { TokenNotEqual _ }
    '=='        { TokenEqual _ }

%right '='
%left '+' '-'
%left '*' '/'
%right ';'

%%
Statements : Block ';' Statements { $1 : $3}
           | Block { [$1] }

Block : Exp                                                   { $1 }
      | if BoolExp then Exp else Exp                          { TmIf $2 $4 $6}

Exp : var '=' Exp                                             { TmSetVar $1 $3}
    | Exp '+' Exp                                             { TmAdd $1 $3}

    | int                                                     { TmInt $1 }
    | var                                                     { TmVar $1 }

BoolExp : Exp '<' Exp                                         { TmLT $1 $3}
        | Exp '>' Exp                                         { TmMT $1 $3}
        | true                                                { TmTrue }
        | false                                               { TmFalse }

{
parseError :: [Token] -> a
parseError _ = error "Parse error"
parseError (t:ts) = error ("Parse error at line:column " ++ (tokenPosn t))

data Type = Int | Bool
    deriving (Show,Eq)

type Environment = [ (String,Expr) ]

data Expr = TmIf Expr Expr Expr
          | TmSetVar String Expr
          | TmAdd Expr Expr
          | TmInt Int
          | TmVar String

          | TmLT Expr Expr
          | TmMT Expr Expr
          | TmTrue | TmFalse
          deriving (Show,Eq)
}