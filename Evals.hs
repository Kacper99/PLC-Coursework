module Evals where
import Grammar

-- Data structure as defined in Grammar.y:
-- type Environment = [ (String,Exp) ]

type State = (Expr, Environment)

eval :: State -> State
eval s@((TmInt n), env) = s -- Just return the integer
eval ((TmVar s, env)) = (getVarBinding s env, env) -- Just return the value of the variable
eval s@((TmList l , env)) = s
eval ((TmOut l), env) = ((TmOut (varsToBindings l env)), env)

eval ((TmSetVar s e), env) = ((TmVar s), (s, e'):env) -- Return the variable and the variable added to the environment
                           where (e', env') = (eval (e, env))

-- If statement
eval ((TmIf b e1 e2), env) | b' == TmTrue = evLoop (e1, env) -- If the if statement is true evaluate the left expression
                           | b' == TmFalse = evLoop (e2, env) -- If the if statement is false evaluate the right expression instead
                           | otherwise = error "You've managed to fuck it up hard"
                           where (b', _) = eval (b, env) -- Evaluate the boolean expression

-- Boolean expressions
eval ((TmLT e1 e2), env) = case (e1', e2') of -- Less than
                          ((TmInt n), (TmInt m)) -> if n < m then (TmTrue, env) else (TmFalse, env)
                          _ -> error "Incompatible types"
                          where (e1', _) = eval (e1, env)
                                (e2', _) = eval (e2, env)

eval ((TmGT e1 e2), env) = case (e1', e2') of -- Greater than
                          ((TmInt n), (TmInt m)) -> if n > m then (TmTrue, env) else (TmFalse, env)
                          _ -> error "Incompatible types"
                          where (e1', _) = eval (e1, env)
                                (e2', _) = eval (e2, env)
                                
eval ((TmLTEQ e1 e2), env) = case (e1', e2') of -- Less than or equal to
                          ((TmInt n), (TmInt m)) -> if n <= m then (TmTrue, env) else (TmFalse, env)
                          _ -> error "Incompatible types"
                          where (e1', _) = eval (e1, env)
                                (e2', _) = eval (e2, env)

eval ((TmGTEQ e1 e2), env) = case (e1', e2') of -- Greater than or equal to
                          ((TmInt n), (TmInt m)) -> if n >= m then (TmTrue, env) else (TmFalse, env)
                          _ -> error "Incompatible types"
                          where (e1', _) = eval (e1, env)
                                (e2', _) = eval (e2, env)

eval ((TmEQ e1 e2), env) = case (e1n, e2n) of -- Equal
                           ((TmInt n), (TmInt m)) -> if n == m then (TmTrue, env) else (TmFalse, env)
                           ((TmList l1), (TmList l2)) -> if l1 == l2 then (TmTrue, env) else (TmFalse, env)
                           _ -> error "Wrong data types"
                         where (e1n, _) = eval (e1, env)
                               (e2n, _) = eval (e2, env)

eval ((TmNEQ e1 e2), env) | eq == TmTrue = (TmFalse, env) -- Not equal
                          | otherwise = (TmTrue, env)
                          where (eq, env) = eval ((TmEQ e1 e2), env)

eval ((TmAnd e1 e2), env) = if (b1 == TmTrue) && (b2 == TmTrue) then (TmTrue, env) else (TmFalse, env) -- And
                          where (b1, _) = eval (e1, env)
                                (b2, _) = eval (e2, env)

eval ((TmOr e1 e2), env) = if (b1 == TmFalse) && (b2 == TmFalse) then (TmFalse, env) else (TmTrue, env) -- Or
                         where (b1, _) = eval (e1, env)
                               (b2, _) = eval (e2, env)
-- Multiplication
eval ((TmMult e1 e2), env) = case (e1', e2') of
                             ((TmInt n), (TmInt m)) -> (TmInt (n * m), env)
                             _ -> error "Incompatible types"
                             where (e1', _) = eval (e1, env)
                                   (e2', _) = eval (e2, env)

-- Division
eval ((TmDiv e1 e2), env) = case (e1', e2') of
                           ((TmInt n), (TmInt m)) -> (TmInt (n `div` m), env)
                           _ -> error "Incompatible types"
                           where (e1', _) = eval (e1, env)
                                 (e2', _) = eval (e2, env)

-- Modulus
eval ((TmMod e1 e2), env) = case (e1', e2') of
                            ((TmInt n), (TmInt m)) -> (TmInt (n `mod` m), env)
                            _ -> error "Incompatible types"
                            where (e1', _) = eval (e1, env)
                                  (e2', _) = eval (e2, env)

-- Adding
eval ((TmAdd e1 e2), env ) = case (e1', e2') of
                             ((TmInt n), (TmInt m)) -> (TmInt (n + m), env)
                             (e@(TmInt n), (TmList l)) -> (TmList (e : l), env) -- Add to start of list
                             ((TmList l), e@(TmInt n)) -> (TmList (l ++ [e]), env) -- Add to end of list
                             _ -> error "Incompatible types"
                             where (e1', _) = eval (e1, env)
                                   (e2', _) = eval (e2, env)

eval ((TmPlusEqual s e), env) = eval (TmSetVar s (TmAdd (TmVar s) e), env)

-- Subtracting
eval ((TmSub e1 e2), env) = case (e1', e2') of
                            ((TmInt n), (TmInt m)) -> (TmInt (n - m), env)
                            _ -> error "Incompatible types"
                            where (e1', _) = eval (e1, env)
                                  (e2', _) = eval (e2, env)
                                  
eval ((TmPlusEqual s e), env) = eval (TmSetVar s (TmSub (TmVar s) e), env)



evalLoop :: [Expr] -> Environment -> String -> State
evalLoop ((TmGlobals e@(v:vs)):es) env line | checkIfBinded s env = evalLoop es env line
                                                      | otherwise = evalLoop es newEnv line
                                                      where newEnv = bindVars e env
                                                            (TmSetVar s _ ) = v
evalLoop ((TmStart es):_) env line = evalLoop es env line
evalLoop prog env line = evLoop (prog, newEnv) 
                       where newEnv = (parseStream line "" 0) ++ env

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

-- Variable binding stuff
getVarBinding :: String -> Environment -> Expr
getVarBinding s [] = error ("Variable \'" ++ s ++ "\' not declared")
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

varsToBindings :: [Expr] -> Environment -> [Expr]
varsToBindings [] env = []
varsToBindings ((TmVar s):ls) env = (getVarBinding s env) : (varsToBindings ls env)
varsToBindings (l:ls) env = l : (varsToBindings ls env)