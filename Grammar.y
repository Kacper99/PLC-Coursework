{
    module Grammar where
    import Tokens
}

%name parseCalc
%tokenType { Token }
%error { parseError }
%tokenType
    Bool        { TokenTypeBool _ }
    Int         { TokenTypeInt _ }
    int         { TokenDigit _ $$ }
    true        { TokenTrue _}
    false       { TokenFalse _ }
    var         { TokenVar _ $$ } 
    '+'         { TokenAdd _ }
    '-'         { TokenSub _ }
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
    stream[     { TokenOpenStream _ }
    ']'         { TokenCloseStream _ }
    print       { TokenPrint _ }
    println     { TokenPrintLine _ }
    ';'         { TokenEndStatement _ }
    '{'         { TokenLeftCurly _ }
    '}'         { TokenRightCurly _ }
    &&          { TokenAnd _ }
    ||          { TokenOr _ }
    '!'         { TokenNot _ }
    !=          { TokenNotEqual _ }
    ==          { TokenEqual _ }
    '~'         { TokenConcatenate _}

%%
Exp : if '(' BoolExp ')' then '{' Exp '}' else '{' Exp '}'  { TmIf $2 $6 $10 }
    | print '(' Exp ')'                                     { TmPrint $3 }
    | foreach '{' Exp '}'                                   { TmForeach $3 }
    | while '(' BoolExp ')' '{' Exp '}'                     { TmWhile $3 $6 }

BoolExp :
        | Variables '<' Variables                               { TmLT $1 $3 }
        | Variables '>' Variables                               { TmMT $1 $3 }
        | Variables '==' Variables                              { TmEq $1 $3 }
        | Variables '!=' Variables                              { TmNEq $1 $3 }
        | BoolExp '&&' BoolExp                              { TmAnd $1 $3 }
        | BoolExp '||' BoolExp                              { TmOr $1 $3 }
        | '!(' BoolExp ')'                                  { TmNot $1 $3 }

Variables : int                                             { TmInt $1 }
          | var                                             { TmVar $1 }
          | true                                              { TmTrue }
          | false                                             { TmFalse }

Body :

Assignment : 

Type : Int                                      { Int }
    | Bool                                      { Bool } 


{
    parseError :: [Token] -> a
    parseError _ = error "Parse error"
    parseError (t:ts) = error ("Parse error at line:column " ++ (tokenPosn t))

    data Type = Int | Bool
        deriving (Show,Eq)
    
    type Environment = [ (String,Exp) ]

    data Expr = 
        deriving (Show,Eq)
}