{-# OPTIONS_GHC -w #-}
module Grammar where
import Tokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.9

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,124) ([0,0,1536,0,0,64,0,1024,0,0,0,0,0,4,512,0,0,8228,32,0,0,128,0,0,2,15360,0,0,0,0,0,256,0,0,2048,0,64,0,0,0,2048,0,256,0,1024,0,0,0,0,64,0,64,0,16384,0,15360,8192,0,576,512,0,36,32,16384,2,2,9216,8192,0,576,512,0,8228,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,12288,0,0,960,0,0,252,4096,0,4096,48,0,0,0,0,0,16384,0,0,0,0,0,0,16384,0,0,4,0,2,0,9216,8224,0,0,0,0,16384,0,49152,3,2,15360,8192,0,576,512,0,36,32,16384,2,2,49152,3,0,15360,0,0,960,0,0,0,0,0,0,0,0,16384,0,0,2048,0,0,0,0,0,0,576,514,0,0,2048,0,2048,0,0,0,4,576,514,0,0,2048,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Program","Statements","Block","Exp","Vars","BoolExp","List","int","true","false","var","'+'","'-'","'/'","'*'","'<'","'>'","'='","if","then","else","while","do","','","'('","')'","'['","']'","print","println","';'","'{'","'}'","'&&'","'||'","'!'","'!='","'=='","globals","start","%eof"]
        bit_start = st * 44
        bit_end = (st + 1) * 44
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..43]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (42) = happyShift action_4
action_0 (43) = happyShift action_2
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (43) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (35) = happyShift action_6
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (44) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (35) = happyShift action_5
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (14) = happyShift action_15
action_5 (8) = happyGoto action_14
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (11) = happyShift action_10
action_6 (14) = happyShift action_11
action_6 (22) = happyShift action_12
action_6 (30) = happyShift action_13
action_6 (5) = happyGoto action_7
action_6 (6) = happyGoto action_8
action_6 (7) = happyGoto action_9
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (36) = happyShift action_27
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (34) = happyShift action_26
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (15) = happyShift action_22
action_9 (16) = happyShift action_23
action_9 (17) = happyShift action_24
action_9 (18) = happyShift action_25
action_9 _ = happyReduce_5

action_10 _ = happyReduce_12

action_11 (21) = happyShift action_21
action_11 _ = happyReduce_13

action_12 (28) = happyShift action_20
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (11) = happyShift action_19
action_13 (10) = happyGoto action_18
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (36) = happyShift action_17
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (21) = happyShift action_16
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (11) = happyShift action_42
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (43) = happyShift action_41
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (31) = happyShift action_40
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (27) = happyShift action_39
action_19 _ = happyReduce_24

action_20 (11) = happyShift action_10
action_20 (12) = happyShift action_37
action_20 (13) = happyShift action_38
action_20 (14) = happyShift action_30
action_20 (30) = happyShift action_13
action_20 (7) = happyGoto action_35
action_20 (9) = happyGoto action_36
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (11) = happyShift action_10
action_21 (14) = happyShift action_30
action_21 (30) = happyShift action_13
action_21 (7) = happyGoto action_34
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (11) = happyShift action_10
action_22 (14) = happyShift action_30
action_22 (30) = happyShift action_13
action_22 (7) = happyGoto action_33
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (11) = happyShift action_10
action_23 (14) = happyShift action_30
action_23 (30) = happyShift action_13
action_23 (7) = happyGoto action_32
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (11) = happyShift action_10
action_24 (14) = happyShift action_30
action_24 (30) = happyShift action_13
action_24 (7) = happyGoto action_31
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (11) = happyShift action_10
action_25 (14) = happyShift action_30
action_25 (30) = happyShift action_13
action_25 (7) = happyGoto action_29
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (11) = happyShift action_10
action_26 (14) = happyShift action_11
action_26 (22) = happyShift action_12
action_26 (30) = happyShift action_13
action_26 (5) = happyGoto action_28
action_26 (6) = happyGoto action_8
action_26 (7) = happyGoto action_9
action_26 _ = happyReduce_4

action_27 _ = happyReduce_1

action_28 _ = happyReduce_3

action_29 _ = happyReduce_10

action_30 _ = happyReduce_13

action_31 _ = happyReduce_11

action_32 (17) = happyShift action_24
action_32 (18) = happyShift action_25
action_32 _ = happyReduce_9

action_33 (17) = happyShift action_24
action_33 (18) = happyShift action_25
action_33 _ = happyReduce_8

action_34 (15) = happyShift action_22
action_34 (16) = happyShift action_23
action_34 (17) = happyShift action_24
action_34 (18) = happyShift action_25
action_34 _ = happyReduce_6

action_35 (15) = happyShift action_22
action_35 (16) = happyShift action_23
action_35 (17) = happyShift action_24
action_35 (18) = happyShift action_25
action_35 (19) = happyShift action_49
action_35 (20) = happyShift action_50
action_35 (41) = happyShift action_51
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (29) = happyShift action_46
action_36 (37) = happyShift action_47
action_36 (38) = happyShift action_48
action_36 _ = happyFail (happyExpListPerState 36)

action_37 _ = happyReduce_22

action_38 _ = happyReduce_23

action_39 (11) = happyShift action_19
action_39 (10) = happyGoto action_45
action_39 _ = happyFail (happyExpListPerState 39)

action_40 _ = happyReduce_14

action_41 (35) = happyShift action_44
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (27) = happyShift action_43
action_42 _ = happyReduce_15

action_43 (14) = happyShift action_15
action_43 (8) = happyGoto action_59
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (11) = happyShift action_10
action_44 (14) = happyShift action_11
action_44 (22) = happyShift action_12
action_44 (30) = happyShift action_13
action_44 (5) = happyGoto action_58
action_44 (6) = happyGoto action_8
action_44 (7) = happyGoto action_9
action_44 _ = happyFail (happyExpListPerState 44)

action_45 _ = happyReduce_25

action_46 (23) = happyShift action_57
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (11) = happyShift action_10
action_47 (12) = happyShift action_37
action_47 (13) = happyShift action_38
action_47 (14) = happyShift action_30
action_47 (30) = happyShift action_13
action_47 (7) = happyGoto action_35
action_47 (9) = happyGoto action_56
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (11) = happyShift action_10
action_48 (12) = happyShift action_37
action_48 (13) = happyShift action_38
action_48 (14) = happyShift action_30
action_48 (30) = happyShift action_13
action_48 (7) = happyGoto action_35
action_48 (9) = happyGoto action_55
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (11) = happyShift action_10
action_49 (14) = happyShift action_30
action_49 (30) = happyShift action_13
action_49 (7) = happyGoto action_54
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (11) = happyShift action_10
action_50 (14) = happyShift action_30
action_50 (30) = happyShift action_13
action_50 (7) = happyGoto action_53
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (11) = happyShift action_10
action_51 (14) = happyShift action_30
action_51 (30) = happyShift action_13
action_51 (7) = happyGoto action_52
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (15) = happyShift action_22
action_52 (16) = happyShift action_23
action_52 (17) = happyShift action_24
action_52 (18) = happyShift action_25
action_52 _ = happyReduce_19

action_53 (15) = happyShift action_22
action_53 (16) = happyShift action_23
action_53 (17) = happyShift action_24
action_53 (18) = happyShift action_25
action_53 _ = happyReduce_18

action_54 (15) = happyShift action_22
action_54 (16) = happyShift action_23
action_54 (17) = happyShift action_24
action_54 (18) = happyShift action_25
action_54 _ = happyReduce_17

action_55 _ = happyReduce_21

action_56 _ = happyReduce_20

action_57 (35) = happyShift action_61
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (36) = happyShift action_60
action_58 _ = happyFail (happyExpListPerState 58)

action_59 _ = happyReduce_16

action_60 _ = happyReduce_2

action_61 (11) = happyShift action_10
action_61 (14) = happyShift action_11
action_61 (22) = happyShift action_12
action_61 (30) = happyShift action_13
action_61 (5) = happyGoto action_62
action_61 (6) = happyGoto action_8
action_61 (7) = happyGoto action_9
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (36) = happyShift action_63
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (24) = happyShift action_64
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (35) = happyShift action_65
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (11) = happyShift action_10
action_65 (14) = happyShift action_11
action_65 (22) = happyShift action_12
action_65 (30) = happyShift action_13
action_65 (5) = happyGoto action_66
action_65 (6) = happyGoto action_8
action_65 (7) = happyGoto action_9
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (36) = happyShift action_67
action_66 _ = happyFail (happyExpListPerState 66)

action_67 _ = happyReduce_7

happyReduce_1 = happyReduce 4 4 happyReduction_1
happyReduction_1 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 ([TmStart happy_var_3]
	) `HappyStk` happyRest

happyReduce_2 = happyReduce 8 4 happyReduction_2
happyReduction_2 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 ([TmGlobals happy_var_3] ++ [TmStart happy_var_7]
	) `HappyStk` happyRest

happyReduce_3 = happySpecReduce_3  5 happyReduction_3
happyReduction_3 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1 : happy_var_3
	)
happyReduction_3 _ _ _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_2  5 happyReduction_4
happyReduction_4 _
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 ([happy_var_1]
	)
happyReduction_4 _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_1  6 happyReduction_5
happyReduction_5 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  6 happyReduction_6
happyReduction_6 (HappyAbsSyn7  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn6
		 (TmSetVar happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happyReduce 12 6 happyReduction_7
happyReduction_7 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_11) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (TmIf happy_var_3 happy_var_7 happy_var_11
	) `HappyStk` happyRest

happyReduce_8 = happySpecReduce_3  7 happyReduction_8
happyReduction_8 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (TmAdd happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  7 happyReduction_9
happyReduction_9 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (TmSub happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  7 happyReduction_10
happyReduction_10 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (TmMult happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  7 happyReduction_11
happyReduction_11 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (TmDiv happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  7 happyReduction_12
happyReduction_12 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn7
		 (TmInt happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  7 happyReduction_13
happyReduction_13 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn7
		 (TmVar happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  7 happyReduction_14
happyReduction_14 _
	(HappyAbsSyn10  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (TmList happy_var_2
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  8 happyReduction_15
happyReduction_15 (HappyTerminal (TokenInt _ happy_var_3))
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn8
		 ([TmSetVar happy_var_1 (TmInt happy_var_3)]
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happyReduce 5 8 happyReduction_16
happyReduction_16 ((HappyAbsSyn8  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 ((TmSetVar happy_var_1 (TmInt happy_var_3)) : happy_var_5
	) `HappyStk` happyRest

happyReduce_17 = happySpecReduce_3  9 happyReduction_17
happyReduction_17 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn9
		 (TmLT happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  9 happyReduction_18
happyReduction_18 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn9
		 (TmGT happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  9 happyReduction_19
happyReduction_19 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn9
		 (TmEQ happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  9 happyReduction_20
happyReduction_20 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (TmAnd happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  9 happyReduction_21
happyReduction_21 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (TmOr happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  9 happyReduction_22
happyReduction_22 _
	 =  HappyAbsSyn9
		 (TmTrue
	)

happyReduce_23 = happySpecReduce_1  9 happyReduction_23
happyReduction_23 _
	 =  HappyAbsSyn9
		 (TmFalse
	)

happyReduce_24 = happySpecReduce_1  10 happyReduction_24
happyReduction_24 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn10
		 ([TmInt happy_var_1]
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  10 happyReduction_25
happyReduction_25 (HappyAbsSyn10  happy_var_3)
	_
	(HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn10
		 ((TmInt happy_var_1) : happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 44 44 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenInt _ happy_dollar_dollar -> cont 11;
	TokenTrue _ -> cont 12;
	TokenFalse _ -> cont 13;
	TokenVar _ happy_dollar_dollar -> cont 14;
	TokenAdd _ -> cont 15;
	TokenMinus _ -> cont 16;
	TokenDiv _ -> cont 17;
	TokenMul _ -> cont 18;
	TokenLT _ -> cont 19;
	TokenMT _ -> cont 20;
	TokenEq _ -> cont 21;
	TokenIf _ -> cont 22;
	TokenThen _ -> cont 23;
	TokenElse _ -> cont 24;
	TokenWhile _ -> cont 25;
	TokenDo _ -> cont 26;
	TokenComma _ -> cont 27;
	TokenLParen _ -> cont 28;
	TokenRParen _ -> cont 29;
	TokenOpenStream _ -> cont 30;
	TokenCloseStream _ -> cont 31;
	TokenPrint _ -> cont 32;
	TokenPrintLine _ -> cont 33;
	TokenEndStatement _ -> cont 34;
	TokenLeftCurly _ -> cont 35;
	TokenRightCurly _ -> cont 36;
	TokenAnd _ -> cont 37;
	TokenOr _ -> cont 38;
	TokenNot _ -> cont 39;
	TokenNotEqual _ -> cont 40;
	TokenEqual _ -> cont 41;
	TokenGlobals _ -> cont 42;
	TokenStart _ -> cont 43;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 44 tk tks = happyError' (tks, explist)
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
          | TmMult Expr Expr
          | TmDiv Expr Expr

          | TmInt Int
          | TmVar String
          | TmList [Expr]

          | TmLT Expr Expr
          | TmGT Expr Expr
          | TmEQ Expr Expr
          | TmAnd Expr Expr
          | TmOr Expr Expr
          | TmTrue | TmFalse

          | TmStart [Expr]
          | TmGlobals [Expr]
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

