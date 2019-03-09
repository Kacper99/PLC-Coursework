{
    module Grammar where
    import Tokens
}

%name parseCalc
%tokenType { Token }
%error { parseError }
%tokenType
    Bool    { TokenBool _ }
    Int     { TokenInt _ }
    arr     { TokenArr _ }
    check   { TokenCheck _ }
    digit   { TokenDigit _ $$ }
    true    { TokenTrue }
    false   { TokenFalse }
    var     { TokenVar _ $$ } 
    '+'     { TokenAdd _ }
    '-'     { TokenSub _ }
    '/'     { TokenDiv _ }
    '*'     { TokenMul _ }
    '<'     { TokenLT _ }
    '>'     { TokenMT _ }
    '='     { TokenEq _ }
    if      { TokenIf _ }
    then    { TokenThen _ }
    else    { TokenElse _ }
    lam     { TokeLambda _ }
    for     { TokenFor _ }
    next    { TokenNext _ }
    while   { TokenWhile _ }
    do      { TokenDo _ }
    '('     { TokenLParen _ }
    ')'     { TokenRParen _ }

%nonassoc if
%nonassoc then
%nonassoc else
%nonassoc int true '(' ')'
%left lam
%left '<' '>' arr
%left '+' '-'
%left '/' '*'

%%
Exp : if Bool then Exp else Exp                 { Cond $2 $4 $6 }
    | for Int do Exp next                       { For $2 $4 }
    | true                                      { True }
    | false                                     { False }
    | while Bool do Exp next                    { While $2 $4 }
    | lam '(' var ':' Type ')' Exp %prec APP    { Lam $3 $5 $7 }
    | Exp '<' Exp                               { LT $1 $3 }
    | Exp '>' Exp                               { GT $1 $3 }
    | Exp '=' Exp                               { ET $1 $3 }
    | Exp '+' Exp                               { Add $1 $3 }
    | Exp '-' Exp                               { Sub $1 $3 }
    | Exp '/' Exp                               { Div $1 $3 }
    | Exp '*' Exp                               { Mul $1 $3 }
    | Exp Exp %prec APP                         { App $1 $2 }
    | '(' Exp ')'                               { $2 }

Bool : check Exp                                { Check $2 }

Type : Int                                      { Int }
    | Bool                                      { Bool } 
    | Type arr Type                             { Fun $1 $3 }


{
    parseError :: [Token] -> a
    parseError _ = error "Parse error"
    parseError (t:ts) = error ("Parse error at line:column " ++ (tokenPosn t))

    data Type = Int | Bool | Fun Type Type
        deriving (Show,Eq)
    
    type Environment = [ (String,Exp) ]

    data Expr = Cond Bool Expr Expr
            | LT Expr Expr | GT Expr Expr | ET Expr Expr
            | if Bool Expr Expr
            | For Int Expr
            | While Bool Expr
            | Lam String Type Expr
            | Add Expr Expr | Sub Expr Expr
            | Div Expr Expr | Mul Expr Expr
            | Var String
            | App Expr Expr
            | Int Int
            | True | False
            | Cl String Type Expr Environment

        deriving (Show,Eq)
}