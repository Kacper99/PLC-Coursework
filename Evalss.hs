module Evalss where
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
    
    data Frame = HAdd Expr Enviroment | HApp Expr Enviroment
    
    type Kontinuation = [Frame]
    type State = (Expr, Enviroment, Kontinuation)
    
    eval :: State -> State
    eval ((TmApp (TmSetVar s e) e'), env, k) = (e, (s, eval (e, [], [])):env, k) --When setting a variable add it to the enviroment

    eval (TmAdd e1 e2, env, k) = (e1, env, (HAdd e2 env):k)
    
    evalLoop :: Expr -> Expr
    evalLoop e = evalLoop' (e, [], [])
        where evaloop' (e, env, k) = if (e' == e) && (isValue e') then e' else evalLoop' (e', env', k')
                            where (e', env', k') = eval (e, env, k)
    
    isValue :: Expr -> Bool
    isValue (Tmint _ ) = True
    isValue _ = False