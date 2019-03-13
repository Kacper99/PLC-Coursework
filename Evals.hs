module Evals where
import Grammar

-- Data structure as defined in Grammar.y:
-- data Type = Int | Bool | Fun Type Type
-- deriving (Show,Eq)
-- 
-- type Environment = [ (String,Exp) ]
-- 
-- data Expr = Cond Bool Expr Expr
--     | LT Expr Expr | GT Expr Expr | ET Expr Expr
--     | if Bool Expr Expr
--     | For Int Expr
--     | While Bool Expr
--     | Lam String Type Expr
--     | Add Expr Expr | Sub Expr Expr
--     | Div Expr Expr | Mul Expr Expr
--     | Var String
--     | App Expr Expr
--     | Int Int
--     | True | False
--     | Cl String Type Expr Environment

data Frame = HCompare Expr Environment
            | LTH Expr Expr | MTH Expr Expr | ETH Expr Expr
            | HAdd Expr Environment
            | HIf Expr Expr Environment | HWhile Bool Expr
            | AddH Expr Expr | SubH Expr Expr
            | DivH Expr Expr | MulH Expr Expr

type State = (Expr, Environment)

eval :: State -> State
eval ((TmApp (TmSetVar s e) e'), env) = (e, (s, evalLoop e):env) --When setting a variable add it to the enviroment

evalLoop :: Expr -> Expr
evalLoop e = evalLoop' (e, [])
    where evalLoop' (e, env) = if (e' == e) && (isValue e') then e' else evalLoop' (e', env')
                            where (e', env') = eval (e, env)

isValue :: Expr -> Bool
isValue (TmInt _ ) = True
isValue _ = False