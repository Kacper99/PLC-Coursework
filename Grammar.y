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
    '%'         { TokenMod _ }
    '<'         { TokenLT _ }
    '>'         { TokenMT _ }
    '='         { TokenEq _ }
    if          { TokenIf _ }
    then        { TokenThen _ }
    else        { TokenElse _ }
    ','         { TokenComma _ }
    '('         { TokenLParen _ }
    ')'         { TokenRParen _ }
    '['         { TokenOpenStream _ }
    ']'         { TokenCloseStream _ }
    ';'         { TokenEndStatement _ }
    '{'         { TokenLeftCurly _ }
    '}'         { TokenRightCurly _ }
    '&&'        { TokenAnd _ }
    '||'        { TokenOr _ }
    '!'         { TokenNot _ }
    '!='        { TokenNotEqual _ }
    '=='        { TokenEqual _ }
    globals     { TokenGlobals _ }
    start       { TokenStart _ }
    '|'         { TokenPipe _ }

%right '='
%nonassoc '<' '>' '(' ')'
%left '&&' '||'
%left '+' '-'
%left '*' '/' '%'
%left ';'

%%
Program : start '{' Statements '}'                            { [TmStart $3] }
        | globals '{' Vars '}' start '{' Statements '}'       { [TmGlobals $3] ++ [TmStart $7]}

Statements : Block ';' Statements { $1 : $3 }
           | Block ';' { [$1] }

Block : Exp                                                   { $1 }
      | var '=' Exp                                           { TmSetVar $1 $3}
      | if '(' BoolExp ')' then '{' Statements '}' else '{' Statements '}'            { TmIf $3 $7 $11 }

Exp : Exp '+' Exp                                             { TmAdd $1 $3 }
    | Exp '-' Exp                                             { TmSub $1 $3 }
    | Exp '*' Exp                                             { TmMult $1 $3 }
    | Exp '/' Exp                                             { TmDiv $1 $3 }
    | Exp '%' Exp                                             { TmMod $1 $3 }

    | int '|' Outs                                            { TmOut ((TmInt $1) : $3)}
    | var '|' Outs                                            { TmOut ((TmVar $1) : $3)}

    | int                                                     { TmInt $1 }
    | var                                                     { TmVar $1 }
    | '[' List ']'                                            { TmList $2 }

    | '(' Exp ')'                                             { $2 }

Outs : int                                                    { [TmInt $1] }
     | var                                                    { [TmVar $1] }
     | int '|' Outs                                           { TmInt $1 : $3 }
     | var '|' Outs                                           { TmVar $1 : $3 }

Vars : var '=' int                                            { [TmSetVar $1 (TmInt $3)] }
     | var '=' int ',' Vars                                   { (TmSetVar $1 (TmInt $3)) : $5 }

BoolExp : Exp '<' Exp                                         { TmLT $1 $3 }
        | Exp '>' Exp                                         { TmGT $1 $3 }
        | Exp '==' Exp                                        { TmEQ $1 $3 }
        | Exp '!=' Exp                                        { TmNEQ $1 $3 }

        | BoolExp '&&' BoolExp                                { TmAnd $1 $3 }
        | BoolExp '||' BoolExp                                { TmOr $1 $3 }

        | true                                                { TmTrue }
        | false                                               { TmFalse }

List : int                                                    { [TmInt $1] }
     | int ',' List                                           { (TmInt $1) : $3 }
{
parseError :: [Token] -> a
parseError _ = error "Parse error"
parseError (t:ts) = error ("Parse error at line:column " ++ (tokenPosn t))

data Type = Int | Bool
    deriving (Show,Eq)

type Environment = [ (String,Expr) ]

data Expr = TmIf Expr [Expr] [Expr]
          | TmSetVar String Expr

          | TmAdd Expr Expr
          | TmSub Expr Expr
          | TmMult Expr Expr
          | TmDiv Expr Expr
          | TmMod Expr Expr

          | TmOut [Expr]

          | TmInt Int
          | TmVar String
          | TmList [Expr]

          | TmLT Expr Expr
          | TmGT Expr Expr
          | TmEQ Expr Expr
          | TmNEQ Expr Expr
          | TmAnd Expr Expr
          | TmOr Expr Expr
          | TmTrue | TmFalse

          | TmStart [Expr]
          | TmGlobals [Expr]
          deriving (Show,Eq)
}