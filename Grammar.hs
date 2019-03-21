{-# OPTIONS_GHC -w #-}
module Grammar where
import Tokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.9

data HappyAbsSyn t4 t5 t6 t7 t8
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,88) ([2304,2056,0,2057,8,0,32768,0,48,0,0,0,0,1024,0,0,512,0,1,0,0,0,0,0,128,2304,2056,0,0,16,0,256,0,15,8,2304,2048,0,9,8,2304,2048,0,2057,8,0,0,0,0,0,0,0,0,0,0,12288,0,0,816,0,0,1024,0,0,0,0,0,0,1,0,0,0,0,0,0,0,16,0,9,8,2304,2048,0,48,0,12288,0,0,0,256,2304,2056,0,0,512,0,32,0,0,256,2304,2056,0,0,512,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Statements","Block","Exp","BoolExp","List","int","true","false","var","'+'","'-'","'/'","'*'","'<'","'>'","'='","if","then","else","while","do","','","'('","')'","'['","']'","print","println","';'","'{'","'}'","'&&'","'||'","'!'","'!='","'=='","%eof"]
        bit_start = st * 40
        bit_end = (st + 1) * 40
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..39]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (9) = happyShift action_4
action_0 (12) = happyShift action_5
action_0 (20) = happyShift action_6
action_0 (28) = happyShift action_7
action_0 (4) = happyGoto action_8
action_0 (5) = happyGoto action_9
action_0 (6) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (9) = happyShift action_4
action_1 (12) = happyShift action_5
action_1 (20) = happyShift action_6
action_1 (28) = happyShift action_7
action_1 (5) = happyGoto action_2
action_1 (6) = happyGoto action_3
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (32) = happyShift action_17
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (13) = happyShift action_15
action_3 (14) = happyShift action_16
action_3 _ = happyReduce_3

action_4 _ = happyReduce_8

action_5 (19) = happyShift action_14
action_5 _ = happyReduce_9

action_6 (26) = happyShift action_13
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (9) = happyShift action_12
action_7 (8) = happyGoto action_11
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (40) = happyAccept
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (32) = happyShift action_10
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (9) = happyShift action_4
action_10 (12) = happyShift action_5
action_10 (20) = happyShift action_6
action_10 (28) = happyShift action_7
action_10 (4) = happyGoto action_18
action_10 (5) = happyGoto action_9
action_10 (6) = happyGoto action_3
action_10 _ = happyReduce_2

action_11 (29) = happyShift action_28
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (25) = happyShift action_27
action_12 _ = happyReduce_15

action_13 (9) = happyShift action_4
action_13 (10) = happyShift action_25
action_13 (11) = happyShift action_26
action_13 (12) = happyShift action_20
action_13 (28) = happyShift action_7
action_13 (6) = happyGoto action_23
action_13 (7) = happyGoto action_24
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (9) = happyShift action_4
action_14 (12) = happyShift action_20
action_14 (28) = happyShift action_7
action_14 (6) = happyGoto action_22
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (9) = happyShift action_4
action_15 (12) = happyShift action_20
action_15 (28) = happyShift action_7
action_15 (6) = happyGoto action_21
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (9) = happyShift action_4
action_16 (12) = happyShift action_20
action_16 (28) = happyShift action_7
action_16 (6) = happyGoto action_19
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (9) = happyShift action_4
action_17 (12) = happyShift action_5
action_17 (20) = happyShift action_6
action_17 (28) = happyShift action_7
action_17 (4) = happyGoto action_18
action_17 (5) = happyGoto action_9
action_17 (6) = happyGoto action_3
action_17 _ = happyFail (happyExpListPerState 17)

action_18 _ = happyReduce_1

action_19 _ = happyReduce_7

action_20 _ = happyReduce_9

action_21 _ = happyReduce_6

action_22 (13) = happyShift action_15
action_22 (14) = happyShift action_16
action_22 _ = happyReduce_4

action_23 (13) = happyShift action_15
action_23 (14) = happyShift action_16
action_23 (17) = happyShift action_31
action_23 (18) = happyShift action_32
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (27) = happyShift action_30
action_24 _ = happyFail (happyExpListPerState 24)

action_25 _ = happyReduce_13

action_26 _ = happyReduce_14

action_27 (9) = happyShift action_12
action_27 (8) = happyGoto action_29
action_27 _ = happyFail (happyExpListPerState 27)

action_28 _ = happyReduce_10

action_29 _ = happyReduce_16

action_30 (21) = happyShift action_35
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (9) = happyShift action_4
action_31 (12) = happyShift action_20
action_31 (28) = happyShift action_7
action_31 (6) = happyGoto action_34
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (9) = happyShift action_4
action_32 (12) = happyShift action_20
action_32 (28) = happyShift action_7
action_32 (6) = happyGoto action_33
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (13) = happyShift action_15
action_33 (14) = happyShift action_16
action_33 _ = happyReduce_12

action_34 (13) = happyShift action_15
action_34 (14) = happyShift action_16
action_34 _ = happyReduce_11

action_35 (33) = happyShift action_36
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (9) = happyShift action_4
action_36 (12) = happyShift action_5
action_36 (20) = happyShift action_6
action_36 (28) = happyShift action_7
action_36 (4) = happyGoto action_37
action_36 (5) = happyGoto action_9
action_36 (6) = happyGoto action_3
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (34) = happyShift action_38
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (22) = happyShift action_39
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (33) = happyShift action_40
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (9) = happyShift action_4
action_40 (12) = happyShift action_5
action_40 (20) = happyShift action_6
action_40 (28) = happyShift action_7
action_40 (4) = happyGoto action_41
action_40 (5) = happyGoto action_9
action_40 (6) = happyGoto action_3
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (34) = happyShift action_42
action_41 _ = happyFail (happyExpListPerState 41)

action_42 _ = happyReduce_5

happyReduce_1 = happySpecReduce_3  4 happyReduction_1
happyReduction_1 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1 : happy_var_3
	)
happyReduction_1 _ _ _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_2  4 happyReduction_2
happyReduction_2 _
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 ([happy_var_1]
	)
happyReduction_2 _ _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  5 happyReduction_3
happyReduction_3 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_3  5 happyReduction_4
happyReduction_4 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn5
		 (TmSetVar happy_var_1 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happyReduce 12 5 happyReduction_5
happyReduction_5 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_11) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TmIf happy_var_3 happy_var_7 happy_var_11
	) `HappyStk` happyRest

happyReduce_6 = happySpecReduce_3  6 happyReduction_6
happyReduction_6 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (TmAdd happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  6 happyReduction_7
happyReduction_7 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (TmSub happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  6 happyReduction_8
happyReduction_8 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn6
		 (TmInt happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  6 happyReduction_9
happyReduction_9 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn6
		 (TmVar happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  6 happyReduction_10
happyReduction_10 _
	(HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (TmList happy_var_2
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  7 happyReduction_11
happyReduction_11 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn7
		 (TmLT happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  7 happyReduction_12
happyReduction_12 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn7
		 (TmGT happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  7 happyReduction_13
happyReduction_13 _
	 =  HappyAbsSyn7
		 (TmTrue
	)

happyReduce_14 = happySpecReduce_1  7 happyReduction_14
happyReduction_14 _
	 =  HappyAbsSyn7
		 (TmFalse
	)

happyReduce_15 = happySpecReduce_1  8 happyReduction_15
happyReduction_15 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn8
		 ([TmInt happy_var_1]
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  8 happyReduction_16
happyReduction_16 (HappyAbsSyn8  happy_var_3)
	_
	(HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn8
		 ((TmInt happy_var_1) : happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 40 40 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenInt _ happy_dollar_dollar -> cont 9;
	TokenTrue _ -> cont 10;
	TokenFalse _ -> cont 11;
	TokenVar _ happy_dollar_dollar -> cont 12;
	TokenAdd _ -> cont 13;
	TokenMinus _ -> cont 14;
	TokenDiv _ -> cont 15;
	TokenMul _ -> cont 16;
	TokenLT _ -> cont 17;
	TokenMT _ -> cont 18;
	TokenEq _ -> cont 19;
	TokenIf _ -> cont 20;
	TokenThen _ -> cont 21;
	TokenElse _ -> cont 22;
	TokenWhile _ -> cont 23;
	TokenDo _ -> cont 24;
	TokenComma _ -> cont 25;
	TokenLParen _ -> cont 26;
	TokenRParen _ -> cont 27;
	TokenOpenStream _ -> cont 28;
	TokenCloseStream _ -> cont 29;
	TokenPrint _ -> cont 30;
	TokenPrintLine _ -> cont 31;
	TokenEndStatement _ -> cont 32;
	TokenLeftCurly _ -> cont 33;
	TokenRightCurly _ -> cont 34;
	TokenAnd _ -> cont 35;
	TokenOr _ -> cont 36;
	TokenNot _ -> cont 37;
	TokenNotEqual _ -> cont 38;
	TokenEqual _ -> cont 39;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 40 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
parseCalc tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError _ = error "Parse error"
parseError (t:ts) = error ("Parse error at line:column " ++ (tokenPosn t))

data Type = Int | Bool
    deriving (Show,Eq)

type Environment = [ (String,Expr) ]

data Expr = TmIf Expr [Expr] [Expr]
          | TmSetVar String Expr

          | TmAdd Expr Expr
          | TmSub Expr Expr

          | TmInt Int
          | TmVar String
          | TmList [Expr]

          | TmLT Expr Expr
          | TmGT Expr Expr
          | TmTrue | TmFalse
          deriving (Show,Eq)
{-# LINE 1 "templates/GenericTemplate.hs" #-}





































































































































































































-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 











data Happy_IntList = HappyCons Int Happy_IntList




















infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action




indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.

