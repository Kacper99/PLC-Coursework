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

%%
Exp : if '(' BoolExp ')' then '{' Exp '}' else '{' Exp '}'  { TmIf $2 $6 $10 }
    | print '(' Exp ')'                                     { TmPrint $3 }
    | while '(' BoolExp ')' '{' Exp '}'                     { TmWhile $3 $6 }
    | var '=' int                                             { TmSetVar $1 $3}
    | Exp Exp                                               { TmApp $1 $2}

BoolExp : Variables '<' Variables                               { TmLT $1 $3 }
        | Variables '>' Variables                               { TmMT $1 $3 }
        | Variables '==' Variables                              { TmEq $1 $3 }
        | Variables '!=' Variables                              { TmNEq $1 $3 }
        | BoolExp '&&' BoolExp                              { TmAnd $1 $3 }
        | BoolExp '||' BoolExp                              { TmOr $1 $3 }

Variables : int                                             { TmInt $1 }
          | var                                             { TmVar $1 }
          | true                                              { TmTrue }
          | false                                             { TmFalse }

Operation : Variables '+' Variables                           {TmAdd $1 $3}
          | Variables '-' Variables                           {TmMinus $1 $3}

{
parseError :: [Token] -> a
parseError _ = error "Parse error"
parseError (t:ts) = error ("Parse error at line:column " ++ (tokenPosn t))

data Type = Int | Bool
    deriving (Show,Eq)

type Environment = [ (String,Expr) ]

data Expr = TmInt Int | TmTrue | TmFalse
    | TmAdd Expr Expr | TmVar String 
    | TmSetVar String Type
    | TmApp Expr Expr
    deriving (Show,Eq)
}