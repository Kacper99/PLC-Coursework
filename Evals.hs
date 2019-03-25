module Evals where
import Grammar

-- Data structure as defined in Grammar.y:
-- type Environment = [ (String,Exp) ]

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
eval ((TmAdd e@(TmInt n) (TmList l)), env) = (TmList (e : l), env) -- Add to start of list
eval ((TmAdd (TmList l) e@(TmInt n)), env) = (TmList (l ++ [e]), env) -- Add to end of list
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
eval ((TmSub e1 e2), env) = eval ((TmSub e1' e2'), env)
                          where (e1', _) = eval (e1, env)
                                (e2', _) = eval (e2, env)

evalLoop :: [Expr] -> Environment -> String -> State
evalLoop ((TmGlobals e@(v:vs)):es) env line | checkIfBinded s env = evalLoop es env line
                                                      | otherwise = evalLoop es newEnv line
                                                      where newEnv = bindVars e env
                                                            (TmSetVar s _ ) = v
evalLoop ((TmStart es):_) env line = evalLoop es env line
evalLoop prog env line = evLoop (prog, newEnv) 
                       where newEnv = (parseStream line "" 0) ++ env

-- evalLoop :: [Expr] -> Expr
-- evalLoop e = e'
--             where (e', _) = evLoop (e, [])


evLoop :: ([Expr], Environment) -> State
evLoop ((e:[]), env) = eval (e, env)
evLoop ((e:es), env) = evLoop (es, env')
                     where (_, env') = eval (e, env)


parseStream :: String -> String -> Int ->[(String, Expr)]
parseStream [] curr acc = [("stream" ++ show (acc), TmInt (newInt))]
                        where newInt = read curr :: Int
parseStream (c:cs) curr acc | c == ' ' = ("stream" ++ show (acc), TmInt (newInt)) : parseStream cs "" (acc + 1)
                            | otherwise = parseStream cs (curr ++ [c]) acc
                            where newInt = read curr :: Int

isValue :: Expr -> Bool
isValue (TmInt _ ) = True
isValue (TmVar _) = True
isValue _ = False

getVarBinding :: String -> Environment -> Expr
getVarBinding s [] = error "Failed to find binding"
getVarBinding s ((n, e):env) | s == n = e
                             | otherwise = getVarBinding s env

checkIfBinded :: String -> Environment -> Bool
checkIfBinded s [] = False
checkIfBinded s ((n, e): env) | s == n = True
                              | otherwise = checkIfBinded s env

bindVars :: [Expr] -> Environment -> Environment
bindVars [] env = env
bindVars ((TmSetVar s n):es) env = bindVars es newEnv
                                 where newEnv = (s, n) : env