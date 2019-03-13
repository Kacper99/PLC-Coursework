module Eval where
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

type Kontinuation = [ Frame ]
-- type State = (Expr,Environment,Kontinuation)
type State = (Expr, Enviroment)

-- Function to unpack a closure to extract underlying lambda term and environment
unpack :: Expr -> Environment -> (Expr,Environment)
unpack (Cl x t e env1) env = ((Lambda x t e) , env1)
unpack e env = (e,[])

-- Loop up a value in an environment and unpack it
getValueBinding :: String -> Environment -> Expr -> Environment
getValueBinding x [] = error "Variable binding not found"
getValueBinding x ((y,e):env) | x == y = unpack e
                              | otherwise = getValueBinding x env

update :: Environment -> String -> Expr -> Environment
update env x e = (x,e) : env

-- Checks for terminated expressions
isValue :: Expr -> Bool
isValue (Int _) = True
isValue True = True
isValue False = False
isValue (Cl _ _ _ _ ) = True
isValue _ = False

-- Small step evaluation function
eval1 :: State -> State
eval1 ((TmVar x),  env, k) = (e', env', k)
                        where (e',env') = getValueBinding x env

-- Rule for terminated evaluations
eval1 (v,env,[]) | isValue v = (v,env,[])

-- Evaluation rules for less than operator

-- Evaluation rules for more than operator

-- Evaluation rules for equal to evaluator

-- Evaluation rules for Add operator

-- Evaluation rules for Subtract operator

-- Evaluation rules for Divide operator

-- Evaluation rules for Multiply operator

-- Evaluatio rules for if-then-else operator

-- Evaluation rules for while-then operator

-- Rules to make closure from lambda abstractions

-- Evaluation rules for application


evalLoop :: Expr -> Expr
evalLoop e = evalLoop' (e, [], [])
    where evaloop' (e, env, k) = if (e' == e) && (isValue e') then e' else evalLoop' (e', env', k')
        where (e', env', k') = eval (e, env, k)

