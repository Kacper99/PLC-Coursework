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
happyExpList = Happy_Data_Array.listArray (0,149) ([0,0,384,0,0,8,0,64,0,0,0,0,4096,0,32,0,8192,41473,0,0,16384,0,0,128,0,124,0,0,0,128,32768,0,4,32768,0,9216,5120,0,32,0,0,0,64,0,64,0,64,0,0,0,16384,0,32768,0,0,64,0,1984,8,0,0,2048,3840,1280,0,72,40,16384,2,0,4608,0,0,144,80,32768,32772,2,9216,5120,0,288,160,0,9,5,18432,10368,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,56,0,49152,1,0,0,0,0,0,4096,0,0,128,0,0,0,248,0,49152,31,48,0,12352,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,4096,0,0,2,0,1,0,2304,1296,0,0,0,0,2048,0,7680,2560,0,240,80,32768,32772,2,9216,5120,0,288,160,0,9,5,18432,0,0,576,0,0,0,0,0,0,0,63488,0,0,1984,0,0,62,0,61440,1,0,0,0,0,0,0,0,16384,0,0,1024,0,0,0,0,0,0,288,162,0,0,64,0,512,0,0,2048,0,8210,10,0,0,4,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Program","Statements","Block","Exp","Outs","Vars","BoolExp","List","int","true","false","var","'+'","'-'","'/'","'*'","'%'","'<'","'>'","'='","if","then","else","','","'('","')'","'['","']'","';'","'{'","'}'","'&&'","'||'","'!'","'!='","'=='","globals","start","'|'","%eof"]
        bit_start = st * 43
        bit_end = (st + 1) * 43
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..42]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (40) = happyShift action_4
action_0 (41) = happyShift action_2
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (41) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (33) = happyShift action_6
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (43) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (33) = happyShift action_5
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (15) = happyShift action_16
action_5 (9) = happyGoto action_15
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (12) = happyShift action_10
action_6 (15) = happyShift action_11
action_6 (24) = happyShift action_12
action_6 (28) = happyShift action_13
action_6 (30) = happyShift action_14
action_6 (5) = happyGoto action_7
action_6 (6) = happyGoto action_8
action_6 (7) = happyGoto action_9
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (34) = happyShift action_33
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (32) = happyShift action_32
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (16) = happyShift action_27
action_9 (17) = happyShift action_28
action_9 (18) = happyShift action_29
action_9 (19) = happyShift action_30
action_9 (20) = happyShift action_31
action_9 _ = happyReduce_5

action_10 (42) = happyShift action_26
action_10 _ = happyReduce_15

action_11 (23) = happyShift action_24
action_11 (42) = happyShift action_25
action_11 _ = happyReduce_16

action_12 (28) = happyShift action_23
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (12) = happyShift action_10
action_13 (15) = happyShift action_22
action_13 (28) = happyShift action_13
action_13 (30) = happyShift action_14
action_13 (7) = happyGoto action_21
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (12) = happyShift action_20
action_14 (11) = happyGoto action_19
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (34) = happyShift action_18
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (23) = happyShift action_17
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (12) = happyShift action_53
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (41) = happyShift action_52
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (31) = happyShift action_51
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (27) = happyShift action_50
action_20 _ = happyReduce_33

action_21 (16) = happyShift action_27
action_21 (17) = happyShift action_28
action_21 (18) = happyShift action_29
action_21 (19) = happyShift action_30
action_21 (20) = happyShift action_31
action_21 (29) = happyShift action_49
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (42) = happyShift action_25
action_22 _ = happyReduce_16

action_23 (12) = happyShift action_10
action_23 (13) = happyShift action_47
action_23 (14) = happyShift action_48
action_23 (15) = happyShift action_22
action_23 (28) = happyShift action_13
action_23 (30) = happyShift action_14
action_23 (7) = happyGoto action_45
action_23 (10) = happyGoto action_46
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (12) = happyShift action_10
action_24 (15) = happyShift action_22
action_24 (28) = happyShift action_13
action_24 (30) = happyShift action_14
action_24 (7) = happyGoto action_44
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (12) = happyShift action_41
action_25 (15) = happyShift action_42
action_25 (8) = happyGoto action_43
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (12) = happyShift action_41
action_26 (15) = happyShift action_42
action_26 (8) = happyGoto action_40
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (12) = happyShift action_10
action_27 (15) = happyShift action_22
action_27 (28) = happyShift action_13
action_27 (30) = happyShift action_14
action_27 (7) = happyGoto action_39
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (12) = happyShift action_10
action_28 (15) = happyShift action_22
action_28 (28) = happyShift action_13
action_28 (30) = happyShift action_14
action_28 (7) = happyGoto action_38
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (12) = happyShift action_10
action_29 (15) = happyShift action_22
action_29 (28) = happyShift action_13
action_29 (30) = happyShift action_14
action_29 (7) = happyGoto action_37
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (12) = happyShift action_10
action_30 (15) = happyShift action_22
action_30 (28) = happyShift action_13
action_30 (30) = happyShift action_14
action_30 (7) = happyGoto action_36
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (12) = happyShift action_10
action_31 (15) = happyShift action_22
action_31 (28) = happyShift action_13
action_31 (30) = happyShift action_14
action_31 (7) = happyGoto action_35
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (12) = happyShift action_10
action_32 (15) = happyShift action_11
action_32 (24) = happyShift action_12
action_32 (28) = happyShift action_13
action_32 (30) = happyShift action_14
action_32 (5) = happyGoto action_34
action_32 (6) = happyGoto action_8
action_32 (7) = happyGoto action_9
action_32 _ = happyReduce_4

action_33 _ = happyReduce_1

action_34 _ = happyReduce_3

action_35 _ = happyReduce_12

action_36 _ = happyReduce_10

action_37 _ = happyReduce_11

action_38 (18) = happyShift action_29
action_38 (19) = happyShift action_30
action_38 (20) = happyShift action_31
action_38 _ = happyReduce_9

action_39 (18) = happyShift action_29
action_39 (19) = happyShift action_30
action_39 (20) = happyShift action_31
action_39 _ = happyReduce_8

action_40 _ = happyReduce_13

action_41 (42) = happyShift action_65
action_41 _ = happyReduce_19

action_42 (42) = happyShift action_64
action_42 _ = happyReduce_20

action_43 _ = happyReduce_14

action_44 (16) = happyShift action_27
action_44 (17) = happyShift action_28
action_44 (18) = happyShift action_29
action_44 (19) = happyShift action_30
action_44 (20) = happyShift action_31
action_44 _ = happyReduce_6

action_45 (16) = happyShift action_27
action_45 (17) = happyShift action_28
action_45 (18) = happyShift action_29
action_45 (19) = happyShift action_30
action_45 (20) = happyShift action_31
action_45 (21) = happyShift action_60
action_45 (22) = happyShift action_61
action_45 (38) = happyShift action_62
action_45 (39) = happyShift action_63
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (29) = happyShift action_57
action_46 (35) = happyShift action_58
action_46 (36) = happyShift action_59
action_46 _ = happyFail (happyExpListPerState 46)

action_47 _ = happyReduce_31

action_48 _ = happyReduce_32

action_49 _ = happyReduce_18

action_50 (12) = happyShift action_20
action_50 (11) = happyGoto action_56
action_50 _ = happyFail (happyExpListPerState 50)

action_51 _ = happyReduce_17

action_52 (33) = happyShift action_55
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (27) = happyShift action_54
action_53 _ = happyReduce_23

action_54 (15) = happyShift action_16
action_54 (9) = happyGoto action_76
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (12) = happyShift action_10
action_55 (15) = happyShift action_11
action_55 (24) = happyShift action_12
action_55 (28) = happyShift action_13
action_55 (30) = happyShift action_14
action_55 (5) = happyGoto action_75
action_55 (6) = happyGoto action_8
action_55 (7) = happyGoto action_9
action_55 _ = happyFail (happyExpListPerState 55)

action_56 _ = happyReduce_34

action_57 (25) = happyShift action_74
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (12) = happyShift action_10
action_58 (13) = happyShift action_47
action_58 (14) = happyShift action_48
action_58 (15) = happyShift action_22
action_58 (28) = happyShift action_13
action_58 (30) = happyShift action_14
action_58 (7) = happyGoto action_45
action_58 (10) = happyGoto action_73
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (12) = happyShift action_10
action_59 (13) = happyShift action_47
action_59 (14) = happyShift action_48
action_59 (15) = happyShift action_22
action_59 (28) = happyShift action_13
action_59 (30) = happyShift action_14
action_59 (7) = happyGoto action_45
action_59 (10) = happyGoto action_72
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (12) = happyShift action_10
action_60 (15) = happyShift action_22
action_60 (28) = happyShift action_13
action_60 (30) = happyShift action_14
action_60 (7) = happyGoto action_71
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (12) = happyShift action_10
action_61 (15) = happyShift action_22
action_61 (28) = happyShift action_13
action_61 (30) = happyShift action_14
action_61 (7) = happyGoto action_70
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (12) = happyShift action_10
action_62 (15) = happyShift action_22
action_62 (28) = happyShift action_13
action_62 (30) = happyShift action_14
action_62 (7) = happyGoto action_69
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (12) = happyShift action_10
action_63 (15) = happyShift action_22
action_63 (28) = happyShift action_13
action_63 (30) = happyShift action_14
action_63 (7) = happyGoto action_68
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (12) = happyShift action_41
action_64 (15) = happyShift action_42
action_64 (8) = happyGoto action_67
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (12) = happyShift action_41
action_65 (15) = happyShift action_42
action_65 (8) = happyGoto action_66
action_65 _ = happyFail (happyExpListPerState 65)

action_66 _ = happyReduce_21

action_67 _ = happyReduce_22

action_68 (16) = happyShift action_27
action_68 (17) = happyShift action_28
action_68 (18) = happyShift action_29
action_68 (19) = happyShift action_30
action_68 (20) = happyShift action_31
action_68 _ = happyReduce_27

action_69 (16) = happyShift action_27
action_69 (17) = happyShift action_28
action_69 (18) = happyShift action_29
action_69 (19) = happyShift action_30
action_69 (20) = happyShift action_31
action_69 _ = happyReduce_28

action_70 (16) = happyShift action_27
action_70 (17) = happyShift action_28
action_70 (18) = happyShift action_29
action_70 (19) = happyShift action_30
action_70 (20) = happyShift action_31
action_70 _ = happyReduce_26

action_71 (16) = happyShift action_27
action_71 (17) = happyShift action_28
action_71 (18) = happyShift action_29
action_71 (19) = happyShift action_30
action_71 (20) = happyShift action_31
action_71 _ = happyReduce_25

action_72 _ = happyReduce_30

action_73 _ = happyReduce_29

action_74 (33) = happyShift action_78
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (34) = happyShift action_77
action_75 _ = happyFail (happyExpListPerState 75)

action_76 _ = happyReduce_24

action_77 _ = happyReduce_2

action_78 (12) = happyShift action_10
action_78 (15) = happyShift action_11
action_78 (24) = happyShift action_12
action_78 (28) = happyShift action_13
action_78 (30) = happyShift action_14
action_78 (5) = happyGoto action_79
action_78 (6) = happyGoto action_8
action_78 (7) = happyGoto action_9
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (34) = happyShift action_80
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (26) = happyShift action_81
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (33) = happyShift action_82
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (12) = happyShift action_10
action_82 (15) = happyShift action_11
action_82 (24) = happyShift action_12
action_82 (28) = happyShift action_13
action_82 (30) = happyShift action_14
action_82 (5) = happyGoto action_83
action_82 (6) = happyGoto action_8
action_82 (7) = happyGoto action_9
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (34) = happyShift action_84
action_83 _ = happyFail (happyExpListPerState 83)

action_84 _ = happyReduce_7

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
happyReduction_12 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (TmMod happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  7 happyReduction_13
happyReduction_13 (HappyAbsSyn8  happy_var_3)
	_
	(HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn7
		 (TmOut ((TmInt happy_var_1) : happy_var_3)
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  7 happyReduction_14
happyReduction_14 (HappyAbsSyn8  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn7
		 (TmOut ((TmVar happy_var_1) : happy_var_3)
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  7 happyReduction_15
happyReduction_15 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn7
		 (TmInt happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  7 happyReduction_16
happyReduction_16 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn7
		 (TmVar happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  7 happyReduction_17
happyReduction_17 _
	(HappyAbsSyn11  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (TmList happy_var_2
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  7 happyReduction_18
happyReduction_18 _
	(HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (happy_var_2
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  8 happyReduction_19
happyReduction_19 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn8
		 ([TmInt happy_var_1]
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  8 happyReduction_20
happyReduction_20 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn8
		 ([TmVar happy_var_1]
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  8 happyReduction_21
happyReduction_21 (HappyAbsSyn8  happy_var_3)
	_
	(HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn8
		 (TmInt happy_var_1 : happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  8 happyReduction_22
happyReduction_22 (HappyAbsSyn8  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn8
		 (TmVar happy_var_1 : happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  9 happyReduction_23
happyReduction_23 (HappyTerminal (TokenInt _ happy_var_3))
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn9
		 ([TmSetVar happy_var_1 (TmInt happy_var_3)]
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happyReduce 5 9 happyReduction_24
happyReduction_24 ((HappyAbsSyn9  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 ((TmSetVar happy_var_1 (TmInt happy_var_3)) : happy_var_5
	) `HappyStk` happyRest

happyReduce_25 = happySpecReduce_3  10 happyReduction_25
happyReduction_25 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn10
		 (TmLT happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  10 happyReduction_26
happyReduction_26 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn10
		 (TmGT happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  10 happyReduction_27
happyReduction_27 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn10
		 (TmEQ happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  10 happyReduction_28
happyReduction_28 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn10
		 (TmNEQ happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  10 happyReduction_29
happyReduction_29 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (TmAnd happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  10 happyReduction_30
happyReduction_30 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (TmOr happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_1  10 happyReduction_31
happyReduction_31 _
	 =  HappyAbsSyn10
		 (TmTrue
	)

happyReduce_32 = happySpecReduce_1  10 happyReduction_32
happyReduction_32 _
	 =  HappyAbsSyn10
		 (TmFalse
	)

happyReduce_33 = happySpecReduce_1  11 happyReduction_33
happyReduction_33 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn11
		 ([TmInt happy_var_1]
	)
happyReduction_33 _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  11 happyReduction_34
happyReduction_34 (HappyAbsSyn11  happy_var_3)
	_
	(HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn11
		 ((TmInt happy_var_1) : happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 43 43 notHappyAtAll (HappyState action) sts stk []

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
	TokenMod _ -> cont 20;
	TokenLT _ -> cont 21;
	TokenMT _ -> cont 22;
	TokenEq _ -> cont 23;
	TokenIf _ -> cont 24;
	TokenThen _ -> cont 25;
	TokenElse _ -> cont 26;
	TokenComma _ -> cont 27;
	TokenLParen _ -> cont 28;
	TokenRParen _ -> cont 29;
	TokenOpenStream _ -> cont 30;
	TokenCloseStream _ -> cont 31;
	TokenEndStatement _ -> cont 32;
	TokenLeftCurly _ -> cont 33;
	TokenRightCurly _ -> cont 34;
	TokenAnd _ -> cont 35;
	TokenOr _ -> cont 36;
	TokenNot _ -> cont 37;
	TokenNotEqual _ -> cont 38;
	TokenEqual _ -> cont 39;
	TokenGlobals _ -> cont 40;
	TokenStart _ -> cont 41;
	TokenPipe _ -> cont 42;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 43 tk tks = happyError' (tks, explist)
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
          | TmMod Expr Expr

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

