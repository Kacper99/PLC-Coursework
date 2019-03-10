{
    module Grammar where
    import Tokens
}

%name parseCalc
%tokenType { Token }
%error { parseError }
%tokenType
    Bool        { TokenBool _ }
    Int         { TokenInt _ }
    arr         { TokenArr _ }
    check       { TokenCheck _ }
    digit       { TokenDigit _ $$ }
    true        { TokenTrue }
    false       { TokenFalse }
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
    lam         { TokeLambda _ }
    for         { TokenFor _ }
    next        { TokenNext _ }
    while       { TokenWhile _ }
    do          { TokenDo _ }
    '('         { TokenLParen _ }
    ')'         { TokenRParen _ }
    stream\[    { TokenOpenStream _}
    \]          { TokenCloseStream _}
    print       { TokenPrint _}
    println     { TokenPrintLn _}
    \;          { TokenEndStatement _}
    \{          { TokenOpenCurly _}
    \}          { TokenCloseCurly _}
    \&&         { TokenAnd _}
    \||         { TokenOr _}
    \!          { TokenNot _}
    \!=         { TokenNotEqual _}
    \~          { TokenConcatenate _}

%%
Exp : 

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