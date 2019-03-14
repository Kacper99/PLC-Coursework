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
eval ((TmInt n), env) = ((TmInt n), env)

eval ((TmApp (TmSetVar s e) e2), env) = (e2, (s,e'):env)
                                      where (e', _) = eval (e, env)

eval ((TmAdd (TmInt n) (TmInt m)), env) = (TmInt (n + m), env)
eval ((TmAdd (TmVar s) (TmInt m)), env) = (TmInt (n + m), env)
                                        where (TmInt n) = getVarBinding s env
eval ((TmAdd (TmInt n) (TmVar s)), env) = (TmInt (n + m), env)
                                        where (TmInt m) = getVarBinding s env
eval ((TmAdd (TmVar s1) (TmVar s2)), env) = (TmInt (n + m), env)
                                        where (TmInt n) = getVarBinding s1 env
                                              (TmInt m) = getVarBinding s2 env
eval ((TmAdd e1 e2), env) = ((TmAdd e1' e2'), env)
                          where (e1', _) = eval (e1, env)
                                (e2', _) = eval (e2, env)


evalLoop :: Expr -> Expr
evalLoop e = evalLoop' (e, [])
    where evalLoop' (e, env) = if (isValue e') then e' else evalLoop' (e', env')
                            where (e', env') = eval (e, env)

isValue :: Expr -> Bool
isValue (TmInt _ ) = True
isValue _ = False

getVarBinding :: String -> Environment -> Expr
getVarBinding s [] = error "Failed to find binding"
getVarBinding s ((n, e):env) | s == n = e
                             | otherwise = getVarBinding s env