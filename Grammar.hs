{-# OPTIONS_GHC -w #-}
module Grammar where
import Tokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.9

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,136) ([0,0,3072,0,0,512,0,32768,0,0,0,0,0,2048,0,16,0,32768,1028,4,0,0,64,0,0,4,57344,1,0,0,0,256,32768,0,64,0,16,0,2,0,0,0,256,0,128,0,2048,0,0,0,0,512,0,2048,0,0,32,0,120,64,0,18,16,32768,4,0,8192,1,0,18432,16384,0,4608,4096,0,1152,1024,0,288,256,0,16456,64,0,0,0,0,0,0,0,0,0,0,0,4096,0,0,0,24576,0,0,6144,0,0,0,0,0,0,0,4,0,0,1,0,0,32768,7,0,57344,7,192,0,512,6,0,0,0,0,0,0,2,0,0,0,0,0,0,32,0,2048,0,4096,0,0,1152,1028,0,0,0,0,32768,0,0,30,16,32768,7,4,8192,1,1,18432,16384,0,4608,4096,0,1152,1024,0,288,0,0,72,0,0,0,0,0,0,0,0,30,0,32768,7,0,57344,1,0,30720,0,0,0,0,0,0,0,0,0,512,0,0,256,0,0,0,0,0,0,4608,4112,0,0,0,1,0,4,0,0,2048,0,4114,16,0,0,256,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Program","Statements","Block","Exp","Outs","Vars","BoolExp","List","int","true","false","var","'+'","'-'","'/'","'*'","'<'","'>'","'='","if","then","else","while","do","','","'('","')'","'['","']'","print","println","';'","'{'","'}'","'&&'","'||'","'!'","'!='","'=='","globals","start","'|'","%eof"]
        bit_start = st * 46
        bit_end = (st + 1) * 46
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..45]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (43) = happyShift action_4
action_0 (44) = happyShift action_2
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (44) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (36) = happyShift action_6
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (46) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (36) = happyShift action_5
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (15) = happyShift action_15
action_5 (9) = happyGoto action_14
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (12) = happyShift action_10
action_6 (15) = happyShift action_11
action_6 (23) = happyShift action_12
action_6 (31) = happyShift action_13
action_6 (5) = happyGoto action_7
action_6 (6) = happyGoto action_8
action_6 (7) = happyGoto action_9
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (37) = happyShift action_29
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (35) = happyShift action_28
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (16) = happyShift action_24
action_9 (17) = happyShift action_25
action_9 (18) = happyShift action_26
action_9 (19) = happyShift action_27
action_9 _ = happyReduce_5

action_10 (45) = happyShift action_23
action_10 _ = happyReduce_14

action_11 (22) = happyShift action_21
action_11 (45) = happyShift action_22
action_11 _ = happyReduce_15

action_12 (29) = happyShift action_20
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (12) = happyShift action_19
action_13 (11) = happyGoto action_18
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (37) = happyShift action_17
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (22) = happyShift action_16
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (12) = happyShift action_48
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (44) = happyShift action_47
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (32) = happyShift action_46
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (28) = happyShift action_45
action_19 _ = happyReduce_31

action_20 (12) = happyShift action_10
action_20 (13) = happyShift action_43
action_20 (14) = happyShift action_44
action_20 (15) = happyShift action_32
action_20 (31) = happyShift action_13
action_20 (7) = happyGoto action_41
action_20 (10) = happyGoto action_42
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (12) = happyShift action_10
action_21 (15) = happyShift action_32
action_21 (31) = happyShift action_13
action_21 (7) = happyGoto action_40
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (12) = happyShift action_37
action_22 (15) = happyShift action_38
action_22 (8) = happyGoto action_39
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (12) = happyShift action_37
action_23 (15) = happyShift action_38
action_23 (8) = happyGoto action_36
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (12) = happyShift action_10
action_24 (15) = happyShift action_32
action_24 (31) = happyShift action_13
action_24 (7) = happyGoto action_35
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (12) = happyShift action_10
action_25 (15) = happyShift action_32
action_25 (31) = happyShift action_13
action_25 (7) = happyGoto action_34
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (12) = happyShift action_10
action_26 (15) = happyShift action_32
action_26 (31) = happyShift action_13
action_26 (7) = happyGoto action_33
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (12) = happyShift action_10
action_27 (15) = happyShift action_32
action_27 (31) = happyShift action_13
action_27 (7) = happyGoto action_31
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (12) = happyShift action_10
action_28 (15) = happyShift action_11
action_28 (23) = happyShift action_12
action_28 (31) = happyShift action_13
action_28 (5) = happyGoto action_30
action_28 (6) = happyGoto action_8
action_28 (7) = happyGoto action_9
action_28 _ = happyReduce_4

action_29 _ = happyReduce_1

action_30 _ = happyReduce_3

action_31 _ = happyReduce_10

action_32 (45) = happyShift action_22
action_32 _ = happyReduce_15

action_33 _ = happyReduce_11

action_34 (18) = happyShift action_26
action_34 (19) = happyShift action_27
action_34 _ = happyReduce_9

action_35 (18) = happyShift action_26
action_35 (19) = happyShift action_27
action_35 _ = happyReduce_8

action_36 _ = happyReduce_12

action_37 (45) = happyShift action_60
action_37 _ = happyReduce_17

action_38 (45) = happyShift action_59
action_38 _ = happyReduce_18

action_39 _ = happyReduce_13

action_40 (16) = happyShift action_24
action_40 (17) = happyShift action_25
action_40 (18) = happyShift action_26
action_40 (19) = happyShift action_27
action_40 _ = happyReduce_6

action_41 (16) = happyShift action_24
action_41 (17) = happyShift action_25
action_41 (18) = happyShift action_26
action_41 (19) = happyShift action_27
action_41 (20) = happyShift action_55
action_41 (21) = happyShift action_56
action_41 (41) = happyShift action_57
action_41 (42) = happyShift action_58
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (30) = happyShift action_52
action_42 (38) = happyShift action_53
action_42 (39) = happyShift action_54
action_42 _ = happyFail (happyExpListPerState 42)

action_43 _ = happyReduce_29

action_44 _ = happyReduce_30

action_45 (12) = happyShift action_19
action_45 (11) = happyGoto action_51
action_45 _ = happyFail (happyExpListPerState 45)

action_46 _ = happyReduce_16

action_47 (36) = happyShift action_50
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (28) = happyShift action_49
action_48 _ = happyReduce_21

action_49 (15) = happyShift action_15
action_49 (9) = happyGoto action_71
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (12) = happyShift action_10
action_50 (15) = happyShift action_11
action_50 (23) = happyShift action_12
action_50 (31) = happyShift action_13
action_50 (5) = happyGoto action_70
action_50 (6) = happyGoto action_8
action_50 (7) = happyGoto action_9
action_50 _ = happyFail (happyExpListPerState 50)

action_51 _ = happyReduce_32

action_52 (24) = happyShift action_69
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (12) = happyShift action_10
action_53 (13) = happyShift action_43
action_53 (14) = happyShift action_44
action_53 (15) = happyShift action_32
action_53 (31) = happyShift action_13
action_53 (7) = happyGoto action_41
action_53 (10) = happyGoto action_68
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (12) = happyShift action_10
action_54 (13) = happyShift action_43
action_54 (14) = happyShift action_44
action_54 (15) = happyShift action_32
action_54 (31) = happyShift action_13
action_54 (7) = happyGoto action_41
action_54 (10) = happyGoto action_67
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (12) = happyShift action_10
action_55 (15) = happyShift action_32
action_55 (31) = happyShift action_13
action_55 (7) = happyGoto action_66
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (12) = happyShift action_10
action_56 (15) = happyShift action_32
action_56 (31) = happyShift action_13
action_56 (7) = happyGoto action_65
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (12) = happyShift action_10
action_57 (15) = happyShift action_32
action_57 (31) = happyShift action_13
action_57 (7) = happyGoto action_64
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (12) = happyShift action_10
action_58 (15) = happyShift action_32
action_58 (31) = happyShift action_13
action_58 (7) = happyGoto action_63
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (12) = happyShift action_37
action_59 (15) = happyShift action_38
action_59 (8) = happyGoto action_62
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (12) = happyShift action_37
action_60 (15) = happyShift action_38
action_60 (8) = happyGoto action_61
action_60 _ = happyFail (happyExpListPerState 60)

action_61 _ = happyReduce_19

action_62 _ = happyReduce_20

action_63 (16) = happyShift action_24
action_63 (17) = happyShift action_25
action_63 (18) = happyShift action_26
action_63 (19) = happyShift action_27
action_63 _ = happyReduce_25

action_64 (16) = happyShift action_24
action_64 (17) = happyShift action_25
action_64 (18) = happyShift action_26
action_64 (19) = happyShift action_27
action_64 _ = happyReduce_26

action_65 (16) = happyShift action_24
action_65 (17) = happyShift action_25
action_65 (18) = happyShift action_26
action_65 (19) = happyShift action_27
action_65 _ = happyReduce_24

action_66 (16) = happyShift action_24
action_66 (17) = happyShift action_25
action_66 (18) = happyShift action_26
action_66 (19) = happyShift action_27
action_66 _ = happyReduce_23

action_67 _ = happyReduce_28

action_68 _ = happyReduce_27

action_69 (36) = happyShift action_73
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (37) = happyShift action_72
action_70 _ = happyFail (happyExpListPerState 70)

action_71 _ = happyReduce_22

action_72 _ = happyReduce_2

action_73 (12) = happyShift action_10
action_73 (15) = happyShift action_11
action_73 (23) = happyShift action_12
action_73 (31) = happyShift action_13
action_73 (5) = happyGoto action_74
action_73 (6) = happyGoto action_8
action_73 (7) = happyGoto action_9
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (37) = happyShift action_75
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (25) = happyShift action_76
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (36) = happyShift action_77
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (12) = happyShift action_10
action_77 (15) = happyShift action_11
action_77 (23) = happyShift action_12
action_77 (31) = happyShift action_13
action_77 (5) = happyGoto action_78
action_77 (6) = happyGoto action_8
action_77 (7) = happyGoto action_9
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (37) = happyShift action_79
action_78 _ = happyFail (happyExpListPerState 78)

action_79 _ = happyReduce_7

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
	(HappyAbsSyn9  happy_var_3) `HappyStk`
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
	(HappyAbsSyn10  happy_var_3) `HappyStk`
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

happyReduce_12 = happySpecReduce_3  7 happyReduction_12
happyReduction_12 (HappyAbsSyn8  happy_var_3)
	_
	(HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn7
		 (TmOut ((TmInt happy_var_1) : happy_var_3)
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  7 happyReduction_13
happyReduction_13 (HappyAbsSyn8  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn7
		 (TmOut ((TmVar happy_var_1) : happy_var_3)
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  7 happyReduction_14
happyReduction_14 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn7
		 (TmInt happy_var_1
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  7 happyReduction_15
happyReduction_15 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn7
		 (TmVar happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  7 happyReduction_16
happyReduction_16 _
	(HappyAbsSyn11  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (TmList happy_var_2
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  8 happyReduction_17
happyReduction_17 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn8
		 ([TmInt happy_var_1]
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  8 happyReduction_18
happyReduction_18 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn8
		 ([TmVar happy_var_1]
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  8 happyReduction_19
happyReduction_19 (HappyAbsSyn8  happy_var_3)
	_
	(HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn8
		 (TmInt happy_var_1 : happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  8 happyReduction_20
happyReduction_20 (HappyAbsSyn8  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn8
		 (TmVar happy_var_1 : happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  9 happyReduction_21
happyReduction_21 (HappyTerminal (TokenInt _ happy_var_3))
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn9
		 ([TmSetVar happy_var_1 (TmInt happy_var_3)]
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happyReduce 5 9 happyReduction_22
happyReduction_22 ((HappyAbsSyn9  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 ((TmSetVar happy_var_1 (TmInt happy_var_3)) : happy_var_5
	) `HappyStk` happyRest

happyReduce_23 = happySpecReduce_3  10 happyReduction_23
happyReduction_23 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn10
		 (TmLT happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  10 happyReduction_24
happyReduction_24 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn10
		 (TmGT happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  10 happyReduction_25
happyReduction_25 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn10
		 (TmEQ happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  10 happyReduction_26
happyReduction_26 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn10
		 (TmNEQ happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  10 happyReduction_27
happyReduction_27 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (TmAnd happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  10 happyReduction_28
happyReduction_28 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (TmOr happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_1  10 happyReduction_29
happyReduction_29 _
	 =  HappyAbsSyn10
		 (TmTrue
	)

happyReduce_30 = happySpecReduce_1  10 happyReduction_30
happyReduction_30 _
	 =  HappyAbsSyn10
		 (TmFalse
	)

happyReduce_31 = happySpecReduce_1  11 happyReduction_31
happyReduction_31 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn11
		 ([TmInt happy_var_1]
	)
happyReduction_31 _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  11 happyReduction_32
happyReduction_32 (HappyAbsSyn11  happy_var_3)
	_
	(HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn11
		 ((TmInt happy_var_1) : happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 46 46 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenInt _ happy_dollar_dollar -> cont 12;
	TokenTrue _ -> cont 13;
	TokenFalse _ -> cont 14;
	TokenVar _ happy_dollar_dollar -> cont 15;
	TokenAdd _ -> cont 16;
	TokenMinus _ -> cont 17;
	TokenDiv _ -> cont 18;
	TokenMul _ -> cont 19;
	TokenLT _ -> cont 20;
	TokenMT _ -> cont 21;
	TokenEq _ -> cont 22;
	TokenIf _ -> cont 23;
	TokenThen _ -> cont 24;
	TokenElse _ -> cont 25;
	TokenWhile _ -> cont 26;
	TokenDo _ -> cont 27;
	TokenComma _ -> cont 28;
	TokenLParen _ -> cont 29;
	TokenRParen _ -> cont 30;
	TokenOpenStream _ -> cont 31;
	TokenCloseStream _ -> cont 32;
	TokenPrint _ -> cont 33;
	TokenPrintLine _ -> cont 34;
	TokenEndStatement _ -> cont 35;
	TokenLeftCurly _ -> cont 36;
	TokenRightCurly _ -> cont 37;
	TokenAnd _ -> cont 38;
	TokenOr _ -> cont 39;
	TokenNot _ -> cont 40;
	TokenNotEqual _ -> cont 41;
	TokenEqual _ -> cont 42;
	TokenGlobals _ -> cont 43;
	TokenStart _ -> cont 44;
	TokenPipe _ -> cont 45;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 46 tk tks = happyError' (tks, explist)
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

          | TmOut [Expr]

          | TmInt Int
          | TmVar String
          | TmList [Expr]

          | TmLT Expr Expr
          | TmGT Expr Expr
          | TmEQ Expr Expr
          | TmNEQ Expr Expr
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

