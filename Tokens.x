{
module Tokens where
}

%wrapper "posn"
$digit = 0-9
$alpha = [a-zA-Z]

tokens :-
$white+     ;
  "--".*    ;
  Bool          { tok (\p s -> TokenTypeBool p)}
  Int           { tok (\p s -> TokenTypeInt p)}
  "->"          { tok (\p s -> TokenTypeArr p)}
  \:            { tok (\p s -> TokenHasType p)}
  \\            { tok (\p s -> TokenLambda p)}
  check         { tok (\p s -> TokenCheck p)}
  $digit+       { tok (\p s -> TokenInt p (read s))}
  true          { tok (\p s -> TokenTrue p)}
  false         { tok (\p s -> TokenFalse p)}
  var           { tok (\p s -> TokenVar p)}
  \+            { tok (\p s -> TokenPlus p)}
  \-            { tok (\p s -> TokenMinus p)}
  \/            { tok (\p s -> TokenDiv p)}
  \*            { tok (\p s -> TokenMul p)}
  \<            { tok (\p s -> TokenLT p)}
  \>            { tok (\p s -> TokenMT p)}
  \=            { tok (\p s -> TokenEq p)}
  \+=           { tok (\p s -> TokenPlusEquals p)}
  \-=           { tok (\p s -> TokenMinusEquals p)}
  if            { tok (\p s -> TokenIf p)}
  then          { tok (\p s -> TokenThen p)}
  else          { tok (\p s -> TokenElse p)}
  for           { tok (\p s -> TokenFor p)}
  next          { tok (\p s -> TokenNext p)}
  while         { tok (\p s -> TokenWhile p)}
  do            { tok (\p s -> TokenDo p)}
  \(            { tok (\p s -> TokenLParen p)}
  \)            { tok (\p s -> TokenRParen p)}
  stream\[      { tok (\p s -> TokenOpenStream p} 
  \]            { tok (\p s -> TokenCloseStream p)}
  print         { tok (\p s -> TokenPrint p)}
  println       { tok (\p s -> TokenPrintLine p)}
  \;            { tok (\p s -> TokenEndOfLine p)}
  \{            { tok (\p s -> TokenLeftCurly p)}
  \}            { tok (\p s -> TokenRightCurly p)}
  \&&           { tok (\p s -> TokenAnd p)}
  \||           { tok (\p s -> TokenOr p)}
  \!            { tok (\p s -> TokenNot p)}
  \!=           { tok (\p s -> TokenNotEqual p)}
  \~            { tok (\p s -> TokenConcatenate p)}
  $alpha [$slpha $digit \_ \']* { tok (\p s -> TokenVar p s)}
  
{
  tok f p s = f p s

  data Token =
    TokenTypeBool AlexPosn        |
    TokenTypeInt AlexPosn         |
    TokenTypeArr AlexPosn         |
    TokenInt AlexPosn Int         |
    TokenCheck AlexPosn           |
    TokenTrue AlexPosn            |
    TokenFalse AlexPosn           |
    TokenVar AlexPosn String      |
    TokenLambda AlexPosn          |
    TokenAdd AlexPosn             |
    TokenSub AlexPosn             |
    TokenDiv AlexPosn             |
    TokenMul AlexPosn             |
    TokenLT AlexPosn              |
    TokenMT AlexPosn              |
    TokenEq AlexPosn              |
    TokenIf AlexPosn              |
    TokenThen AlexPosn            |
    TokenElse AlexPosn            |
    TokenFor AlexPosn             |
    TokenNext AlexPosn            |
    TokenWhile AlexPosn           |
    TokenDo AlexPosn              |
    TokenLParen AlexPosn          |
    TokenRParen AlexPosn          |
    TokenOpenStream AlexPosn      |
    TokenCloseStream AlexPosn     |
    TokenPrint AlexPosn           |
    TokenPrintLine AlexPosn       |   
    TokenEndOfLine AlexPosn       |
    TokenLeftCurly AlexPosn       |
    TokenRightCurly AlexPosn      |
    TokenAnd AlexPosn             |
    TokenOr AlexPosn              |
    TokenNot AlexPosn             |
    TokenNotEqual AlexPosn        |
    TokenConcatenate AlexPosn     
    deriving (Eq, Show)

tokenPosn :: Token -> String
tokenPosn (TokenTypeBool (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTypeInt (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTypeArr (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenInt (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenCheck (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTrue (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenFalse (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenVar (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLambda (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenAdd (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenSub (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenDiv (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenMul (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLT (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenMT (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenEq (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenIf (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenThen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenElse (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenFor (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenNext (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenWhile (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenDo (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenOpenStream (AlexPn a l c)) = show (l) ++ ":" ++ show(c)
tokenPosn (TokenCloseStream (AlexPn a l c)) = show (l) ++ ":" ++ show(c)
tokenPosn (TokenPrint (AlexPn a l c)) = show (l) ++ ":" ++ show(c)
tokenPosn (TokenPrintLine (AlexPn a l c)) = show (l) ++ ":" ++ show(c)
tokenPosn (TokenEndOfLine (AlexPn a l c)) = show (l) ++ ":" ++ show(c)
tokenPosn (TokenLeftCurly (AlexPn a l c)) = show (l) ++ ":" ++ show(c)
tokenPosn (TokenRightCurly (AlexPn a l c)) = show (l) ++ ":" ++ show(c)
tokenPosn (TokenAnd (AlexPn a l c)) = show (l) ++ ":" ++ show(c)
tokenPosn (TokenOr (AlexPn a l c)) = show (l) ++ ":" ++ show(c)
tokenPosn (TokenNot (AlexPn a l c)) = show (l) ++ ":" ++ show(c)
tokenPosn (TokenNotEqual (AlexPn a l c)) = show (l) ++ ":" ++ show(c)
tokenPosn (TokenConcatenate (AlexPn a l c)) = show (l) ++ ":" ++ show(c)

}
