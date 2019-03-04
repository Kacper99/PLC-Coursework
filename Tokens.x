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
  $digit+       { tok (\p s -> TokenInt p (read s))}
  true          { tok (\p s -> TokenTrue p)}
  false         { tok (\p s -> TokenFalse p)}
  \+            { tok (\p s -> TokenPlus p)}
  \-            { tok (\p s -> TokenMinus p)}
  if            { tok (\p s -> TokenIf p)}
  then          { tok (\p s -> TokenThen p)}
  else          { tok (\p s -> TokenElse p)}
  
{
tok f p s = f p s

data KaddyToken =
  TokenTypeBool AlexPosn        |
  TokenTypeInt AlexPosn         |
  TokenInt AlexPosn Int         |
  TokenTrue AlexPosn            
  deriving (Eq, Show)



}
