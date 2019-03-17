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
eval ((TmVar s, env)) = (getVarBinding s env, env)

eval ((TmSetVar s e), env) = ((TmVar s), (s, e'):env)
                           where (e', env') = (eval (e, env))

-- If statement
eval ((TmIf b e1 e2), env) | b' == TmTrue = evLoop (e1, env)
                           | b' == TmFalse = evLoop (e2, env)
                           | otherwise = error "You've managed to fuck it up hard"
                           where (b', _) = eval (b, env)

-- Boolean expressions
eval ((TmLT e1 e2), env) | e1n < e2n = (TmTrue, env)
                         | otherwise = (TmFalse, env)
                         where ((TmInt e1n), _) = eval (e1, env)
                               ((TmInt e2n), _) = eval (e2, env)

eval ((TmGT e1 e2), env) | e1n > e2n = (TmTrue, env)
                         | otherwise = (TmFalse, env)
                         where ((TmInt e1n), _) = eval (e1, env)
                               ((TmInt e2n), _) = eval (e2, env)

-- Adding
eval ((TmAdd (TmInt n) (TmInt m)), env) = (TmInt (n + m), env)
-- eval ((TmAdd (TmVar s) (TmInt m)), env) = (TmInt (n + m), env)
--                                         where (TmInt n) = getVarBinding s env
-- eval ((TmAdd (TmInt n) (TmVar s)), env) = (TmInt (n + m), env)
--                                         where (TmInt m) = getVarBinding s env
-- eval ((TmAdd (TmVar s1) (TmVar s2)), env) = (TmInt (n + m), env)
--                                         where (TmInt n) = getVarBinding s1 env
--                                               (TmInt m) = getVarBinding s2 env
eval ((TmAdd e1 e2), env) = eval ((TmAdd e1' e2'), env)
                          where (e1', _) = eval (e1, env)
                                (e2', _) = eval (e2, env)


-- eval ((TmAdd e1 e2, env)) = case (e1', e2') of
--                             (TmInt n, TmInt m) -> (TmInt (n + m), env)
--                             (e1', e2') -> if (e1 == e1') && (e2 == e2') then error "can't reduce in add" else eval ((TmAdd e1' e2'), env)
--                             _ -> error "No fucking idea"
--                             where (e1', _) = eval (e1, env)
--                                   (e2', _) = eval (e2, env)
                        
-- Subtracting
eval ((TmSub (TmInt n) (TmInt m)), env) = (TmInt (n - m), env)
eval ((TmSub (TmVar s) (TmInt m)), env) = (TmInt (n - m), env)
                                        where (TmInt n) = getVarBinding s env
eval ((TmSub (TmInt n) (TmVar s)), env) = (TmInt (n - m), env)
                                        where (TmInt m) = getVarBinding s env
eval ((TmSub (TmVar s1) (TmVar s2)), env) = (TmInt (n - m), env)
                                        where (TmInt n) = getVarBinding s1 env
                                              (TmInt m) = getVarBinding s2 env
eval ((TmSub e1 e2), env) = ((TmSub e1' e2'), env)
                          where (e1', _) = eval (e1, env)
                                (e2', _) = eval (e2, env)


evalLoop' :: Expr -> Expr
evalLoop' e = evalLoop'' (e, [])
    where evalLoop'' (e, env) = if (isValue e') then e' else evalLoop'' (e', env')
                             where (e', env') = eval (e, env)

evalLoop :: [Expr] -> Expr
evalLoop e = e'
            where (e', _) = evLoop (e, [])


evLoop :: ([Expr], Environment) -> State
evLoop ((e:[]), env) = eval (e, env)
evLoop ((e:es), env) = evLoop (es, env')
                     where (_, env') = eval (e, env)


isValue :: Expr -> Bool
isValue (TmInt _ ) = True
isValue (TmVar _) = True
isValue _ = False

getVarBinding :: String -> Environment -> Expr
getVarBinding s [] = error "Failed to find binding"
getVarBinding s ((n, e):env) | s == n = e
                             | otherwise = getVarBinding s env