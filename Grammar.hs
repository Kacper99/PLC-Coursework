{-# OPTIONS_GHC -w #-}
module Grammar where
import Tokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.9

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12
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
	| HappyAbsSyn12 t12

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,180) ([0,0,3072,0,0,512,0,32768,0,0,0,0,0,2048,0,32,0,0,16393,20,0,0,64,0,0,4,49152,7,0,0,0,256,0,8,64,0,64,0,36,80,0,1,32,0,0,64,0,512,0,9216,16384,0,0,0,128,0,2048,0,0,32,0,0,0,0,496,8,0,0,16384,61440,16384,1,9216,20480,0,2304,0,0,576,0,0,144,320,0,36,80,0,9,20,16384,2,5,36864,16384,1,9216,20736,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,112,0,0,28,0,0,0,0,0,0,256,0,0,64,0,0,0,1984,0,0,8176,12288,0,0,386,0,0,0,0,0,0,3840,5120,0,0,0,0,16,0,0,0,0,0,0,128,0,32768,0,0,0,0,0,0,0,256,8192,0,0,2048,0,0,0,0,32,0,0,16393,20,0,0,0,0,33279,768,0,8192,24,0,32768,0,960,1280,0,240,320,0,36,80,0,9,20,16384,2,5,36864,16384,1,9216,20480,0,2304,5120,0,576,0,0,144,0,0,0,0,0,0,0,0,124,0,0,31,0,49152,7,0,61440,1,0,31744,0,0,7936,0,0,0,0,0,0,0,16384,4098,5,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,1024,0,0,1,0,0,32,36864,17408,1,0,0,4,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Program","Statements","Block","Exp","Outs","Vars","Types","BoolExp","List","int","true","false","var","'+'","'-'","'/'","'*'","'%'","'<'","'>'","'<='","'>='","'='","if","then","else","','","'('","')'","'['","']'","';'","'{'","'}'","'&&'","'||'","'!'","'!='","'=='","globals","start","'|'","%eof"]
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

action_5 (16) = happyShift action_16
action_5 (9) = happyGoto action_15
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (13) = happyShift action_10
action_6 (16) = happyShift action_11
action_6 (27) = happyShift action_12
action_6 (31) = happyShift action_13
action_6 (33) = happyShift action_14
action_6 (5) = happyGoto action_7
action_6 (6) = happyGoto action_8
action_6 (7) = happyGoto action_9
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (37) = happyShift action_34
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (35) = happyShift action_33
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (17) = happyShift action_28
action_9 (18) = happyShift action_29
action_9 (19) = happyShift action_30
action_9 (20) = happyShift action_31
action_9 (21) = happyShift action_32
action_9 _ = happyReduce_5

action_10 (45) = happyShift action_27
action_10 _ = happyReduce_15

action_11 (26) = happyShift action_25
action_11 (45) = happyShift action_26
action_11 _ = happyReduce_16

action_12 (31) = happyShift action_24
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (13) = happyShift action_10
action_13 (16) = happyShift action_23
action_13 (31) = happyShift action_13
action_13 (33) = happyShift action_14
action_13 (7) = happyGoto action_22
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (13) = happyShift action_20
action_14 (34) = happyShift action_21
action_14 (12) = happyGoto action_19
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (37) = happyShift action_18
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (26) = happyShift action_17
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (13) = happyShift action_56
action_17 (16) = happyShift action_57
action_17 (33) = happyShift action_58
action_17 (10) = happyGoto action_55
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (44) = happyShift action_54
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (34) = happyShift action_53
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (30) = happyShift action_52
action_20 _ = happyReduce_41

action_21 _ = happyReduce_18

action_22 (17) = happyShift action_28
action_22 (18) = happyShift action_29
action_22 (19) = happyShift action_30
action_22 (20) = happyShift action_31
action_22 (21) = happyShift action_32
action_22 (32) = happyShift action_51
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (45) = happyShift action_26
action_23 _ = happyReduce_16

action_24 (13) = happyShift action_10
action_24 (14) = happyShift action_48
action_24 (15) = happyShift action_49
action_24 (16) = happyShift action_23
action_24 (31) = happyShift action_50
action_24 (33) = happyShift action_14
action_24 (7) = happyGoto action_46
action_24 (11) = happyGoto action_47
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (13) = happyShift action_10
action_25 (16) = happyShift action_23
action_25 (31) = happyShift action_13
action_25 (33) = happyShift action_14
action_25 (7) = happyGoto action_45
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (13) = happyShift action_42
action_26 (16) = happyShift action_43
action_26 (8) = happyGoto action_44
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (13) = happyShift action_42
action_27 (16) = happyShift action_43
action_27 (8) = happyGoto action_41
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (13) = happyShift action_10
action_28 (16) = happyShift action_23
action_28 (31) = happyShift action_13
action_28 (33) = happyShift action_14
action_28 (7) = happyGoto action_40
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (13) = happyShift action_10
action_29 (16) = happyShift action_23
action_29 (31) = happyShift action_13
action_29 (33) = happyShift action_14
action_29 (7) = happyGoto action_39
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (13) = happyShift action_10
action_30 (16) = happyShift action_23
action_30 (31) = happyShift action_13
action_30 (33) = happyShift action_14
action_30 (7) = happyGoto action_38
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (13) = happyShift action_10
action_31 (16) = happyShift action_23
action_31 (31) = happyShift action_13
action_31 (33) = happyShift action_14
action_31 (7) = happyGoto action_37
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (13) = happyShift action_10
action_32 (16) = happyShift action_23
action_32 (31) = happyShift action_13
action_32 (33) = happyShift action_14
action_32 (7) = happyGoto action_36
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (13) = happyShift action_10
action_33 (16) = happyShift action_11
action_33 (27) = happyShift action_12
action_33 (31) = happyShift action_13
action_33 (33) = happyShift action_14
action_33 (5) = happyGoto action_35
action_33 (6) = happyGoto action_8
action_33 (7) = happyGoto action_9
action_33 _ = happyReduce_4

action_34 _ = happyReduce_1

action_35 _ = happyReduce_3

action_36 _ = happyReduce_12

action_37 _ = happyReduce_10

action_38 _ = happyReduce_11

action_39 (19) = happyShift action_30
action_39 (20) = happyShift action_31
action_39 (21) = happyShift action_32
action_39 _ = happyReduce_9

action_40 (19) = happyShift action_30
action_40 (20) = happyShift action_31
action_40 (21) = happyShift action_32
action_40 _ = happyReduce_8

action_41 _ = happyReduce_13

action_42 (45) = happyShift action_76
action_42 _ = happyReduce_20

action_43 (45) = happyShift action_75
action_43 _ = happyReduce_21

action_44 _ = happyReduce_14

action_45 (17) = happyShift action_28
action_45 (18) = happyShift action_29
action_45 (19) = happyShift action_30
action_45 (20) = happyShift action_31
action_45 (21) = happyShift action_32
action_45 _ = happyReduce_6

action_46 (17) = happyShift action_28
action_46 (18) = happyShift action_29
action_46 (19) = happyShift action_30
action_46 (20) = happyShift action_31
action_46 (21) = happyShift action_32
action_46 (22) = happyShift action_69
action_46 (23) = happyShift action_70
action_46 (24) = happyShift action_71
action_46 (25) = happyShift action_72
action_46 (41) = happyShift action_73
action_46 (42) = happyShift action_74
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (32) = happyShift action_66
action_47 (38) = happyShift action_67
action_47 (39) = happyShift action_68
action_47 _ = happyFail (happyExpListPerState 47)

action_48 _ = happyReduce_38

action_49 _ = happyReduce_39

action_50 (13) = happyShift action_10
action_50 (14) = happyShift action_48
action_50 (15) = happyShift action_49
action_50 (16) = happyShift action_23
action_50 (31) = happyShift action_50
action_50 (33) = happyShift action_14
action_50 (7) = happyGoto action_64
action_50 (11) = happyGoto action_65
action_50 _ = happyFail (happyExpListPerState 50)

action_51 _ = happyReduce_19

action_52 (13) = happyShift action_20
action_52 (12) = happyGoto action_63
action_52 _ = happyFail (happyExpListPerState 52)

action_53 _ = happyReduce_17

action_54 (36) = happyShift action_62
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (30) = happyShift action_61
action_55 _ = happyReduce_24

action_56 _ = happyReduce_26

action_57 _ = happyReduce_27

action_58 (13) = happyShift action_20
action_58 (34) = happyShift action_60
action_58 (12) = happyGoto action_59
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (34) = happyShift action_91
action_59 _ = happyFail (happyExpListPerState 59)

action_60 _ = happyReduce_29

action_61 (16) = happyShift action_16
action_61 (9) = happyGoto action_90
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (13) = happyShift action_10
action_62 (16) = happyShift action_11
action_62 (27) = happyShift action_12
action_62 (31) = happyShift action_13
action_62 (33) = happyShift action_14
action_62 (5) = happyGoto action_89
action_62 (6) = happyGoto action_8
action_62 (7) = happyGoto action_9
action_62 _ = happyFail (happyExpListPerState 62)

action_63 _ = happyReduce_42

action_64 (17) = happyShift action_28
action_64 (18) = happyShift action_29
action_64 (19) = happyShift action_30
action_64 (20) = happyShift action_31
action_64 (21) = happyShift action_32
action_64 (22) = happyShift action_69
action_64 (23) = happyShift action_70
action_64 (24) = happyShift action_71
action_64 (25) = happyShift action_72
action_64 (32) = happyShift action_51
action_64 (41) = happyShift action_73
action_64 (42) = happyShift action_74
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (32) = happyShift action_88
action_65 (38) = happyShift action_67
action_65 (39) = happyShift action_68
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (36) = happyShift action_87
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (13) = happyShift action_10
action_67 (14) = happyShift action_48
action_67 (15) = happyShift action_49
action_67 (16) = happyShift action_23
action_67 (31) = happyShift action_50
action_67 (33) = happyShift action_14
action_67 (7) = happyGoto action_46
action_67 (11) = happyGoto action_86
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (13) = happyShift action_10
action_68 (14) = happyShift action_48
action_68 (15) = happyShift action_49
action_68 (16) = happyShift action_23
action_68 (31) = happyShift action_50
action_68 (33) = happyShift action_14
action_68 (7) = happyGoto action_46
action_68 (11) = happyGoto action_85
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (13) = happyShift action_10
action_69 (16) = happyShift action_23
action_69 (31) = happyShift action_13
action_69 (33) = happyShift action_14
action_69 (7) = happyGoto action_84
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (13) = happyShift action_10
action_70 (16) = happyShift action_23
action_70 (31) = happyShift action_13
action_70 (33) = happyShift action_14
action_70 (7) = happyGoto action_83
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (13) = happyShift action_10
action_71 (16) = happyShift action_23
action_71 (31) = happyShift action_13
action_71 (33) = happyShift action_14
action_71 (7) = happyGoto action_82
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (13) = happyShift action_10
action_72 (16) = happyShift action_23
action_72 (31) = happyShift action_13
action_72 (33) = happyShift action_14
action_72 (7) = happyGoto action_81
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (13) = happyShift action_10
action_73 (16) = happyShift action_23
action_73 (31) = happyShift action_13
action_73 (33) = happyShift action_14
action_73 (7) = happyGoto action_80
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (13) = happyShift action_10
action_74 (16) = happyShift action_23
action_74 (31) = happyShift action_13
action_74 (33) = happyShift action_14
action_74 (7) = happyGoto action_79
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (13) = happyShift action_42
action_75 (16) = happyShift action_43
action_75 (8) = happyGoto action_78
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (13) = happyShift action_42
action_76 (16) = happyShift action_43
action_76 (8) = happyGoto action_77
action_76 _ = happyFail (happyExpListPerState 76)

action_77 _ = happyReduce_22

action_78 _ = happyReduce_23

action_79 (17) = happyShift action_28
action_79 (18) = happyShift action_29
action_79 (19) = happyShift action_30
action_79 (20) = happyShift action_31
action_79 (21) = happyShift action_32
action_79 _ = happyReduce_34

action_80 (17) = happyShift action_28
action_80 (18) = happyShift action_29
action_80 (19) = happyShift action_30
action_80 (20) = happyShift action_31
action_80 (21) = happyShift action_32
action_80 _ = happyReduce_35

action_81 (17) = happyShift action_28
action_81 (18) = happyShift action_29
action_81 (19) = happyShift action_30
action_81 (20) = happyShift action_31
action_81 (21) = happyShift action_32
action_81 _ = happyReduce_33

action_82 (17) = happyShift action_28
action_82 (18) = happyShift action_29
action_82 (19) = happyShift action_30
action_82 (20) = happyShift action_31
action_82 (21) = happyShift action_32
action_82 _ = happyReduce_32

action_83 (17) = happyShift action_28
action_83 (18) = happyShift action_29
action_83 (19) = happyShift action_30
action_83 (20) = happyShift action_31
action_83 (21) = happyShift action_32
action_83 _ = happyReduce_31

action_84 (17) = happyShift action_28
action_84 (18) = happyShift action_29
action_84 (19) = happyShift action_30
action_84 (20) = happyShift action_31
action_84 (21) = happyShift action_32
action_84 _ = happyReduce_30

action_85 _ = happyReduce_37

action_86 _ = happyReduce_36

action_87 (13) = happyShift action_10
action_87 (16) = happyShift action_11
action_87 (27) = happyShift action_12
action_87 (31) = happyShift action_13
action_87 (33) = happyShift action_14
action_87 (5) = happyGoto action_93
action_87 (6) = happyGoto action_8
action_87 (7) = happyGoto action_9
action_87 _ = happyFail (happyExpListPerState 87)

action_88 _ = happyReduce_40

action_89 (37) = happyShift action_92
action_89 _ = happyFail (happyExpListPerState 89)

action_90 _ = happyReduce_25

action_91 _ = happyReduce_28

action_92 _ = happyReduce_2

action_93 (37) = happyShift action_94
action_93 _ = happyFail (happyExpListPerState 93)

action_94 (29) = happyShift action_95
action_94 _ = happyFail (happyExpListPerState 94)

action_95 (36) = happyShift action_96
action_95 _ = happyFail (happyExpListPerState 95)

action_96 (13) = happyShift action_10
action_96 (16) = happyShift action_11
action_96 (27) = happyShift action_12
action_96 (31) = happyShift action_13
action_96 (33) = happyShift action_14
action_96 (5) = happyGoto action_97
action_96 (6) = happyGoto action_8
action_96 (7) = happyGoto action_9
action_96 _ = happyFail (happyExpListPerState 96)

action_97 (37) = happyShift action_98
action_97 _ = happyFail (happyExpListPerState 97)

action_98 _ = happyReduce_7

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

happyReduce_7 = happyReduce 11 6 happyReduction_7
happyReduction_7 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_10) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (TmIf happy_var_3 happy_var_6 happy_var_10
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
	(HappyAbsSyn12  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (TmList happy_var_2
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_2  7 happyReduction_18
happyReduction_18 _
	_
	 =  HappyAbsSyn7
		 (TmList []
	)

happyReduce_19 = happySpecReduce_3  7 happyReduction_19
happyReduction_19 _
	(HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (happy_var_2
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  8 happyReduction_20
happyReduction_20 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn8
		 ([TmInt happy_var_1]
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  8 happyReduction_21
happyReduction_21 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn8
		 ([TmVar happy_var_1]
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  8 happyReduction_22
happyReduction_22 (HappyAbsSyn8  happy_var_3)
	_
	(HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn8
		 (TmInt happy_var_1 : happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  8 happyReduction_23
happyReduction_23 (HappyAbsSyn8  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn8
		 (TmVar happy_var_1 : happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  9 happyReduction_24
happyReduction_24 (HappyAbsSyn10  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn9
		 ([TmSetVar happy_var_1 happy_var_3]
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happyReduce 5 9 happyReduction_25
happyReduction_25 ((HappyAbsSyn9  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 ((TmSetVar happy_var_1 happy_var_3) : happy_var_5
	) `HappyStk` happyRest

happyReduce_26 = happySpecReduce_1  10 happyReduction_26
happyReduction_26 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn10
		 (TmInt happy_var_1
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  10 happyReduction_27
happyReduction_27 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn10
		 (TmVar happy_var_1
	)
happyReduction_27 _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  10 happyReduction_28
happyReduction_28 _
	(HappyAbsSyn12  happy_var_2)
	_
	 =  HappyAbsSyn10
		 (TmList happy_var_2
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_2  10 happyReduction_29
happyReduction_29 _
	_
	 =  HappyAbsSyn10
		 (TmList []
	)

happyReduce_30 = happySpecReduce_3  11 happyReduction_30
happyReduction_30 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn11
		 (TmLT happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  11 happyReduction_31
happyReduction_31 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn11
		 (TmGT happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  11 happyReduction_32
happyReduction_32 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn11
		 (TmLTEQ happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  11 happyReduction_33
happyReduction_33 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn11
		 (TmGTEQ happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  11 happyReduction_34
happyReduction_34 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn11
		 (TmEQ happy_var_1 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  11 happyReduction_35
happyReduction_35 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn11
		 (TmNEQ happy_var_1 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  11 happyReduction_36
happyReduction_36 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (TmAnd happy_var_1 happy_var_3
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  11 happyReduction_37
happyReduction_37 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (TmOr happy_var_1 happy_var_3
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_1  11 happyReduction_38
happyReduction_38 _
	 =  HappyAbsSyn11
		 (TmTrue
	)

happyReduce_39 = happySpecReduce_1  11 happyReduction_39
happyReduction_39 _
	 =  HappyAbsSyn11
		 (TmFalse
	)

happyReduce_40 = happySpecReduce_3  11 happyReduction_40
happyReduction_40 _
	(HappyAbsSyn11  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (happy_var_2
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_1  12 happyReduction_41
happyReduction_41 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn12
		 ([TmInt happy_var_1]
	)
happyReduction_41 _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_3  12 happyReduction_42
happyReduction_42 (HappyAbsSyn12  happy_var_3)
	_
	(HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn12
		 ((TmInt happy_var_1) : happy_var_3
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 46 46 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenInt _ happy_dollar_dollar -> cont 13;
	TokenTrue _ -> cont 14;
	TokenFalse _ -> cont 15;
	TokenVar _ happy_dollar_dollar -> cont 16;
	TokenAdd _ -> cont 17;
	TokenMinus _ -> cont 18;
	TokenDiv _ -> cont 19;
	TokenMul _ -> cont 20;
	TokenMod _ -> cont 21;
	TokenLT _ -> cont 22;
	TokenMT _ -> cont 23;
	TokenLTEQ _ -> cont 24;
	TokenMTEQ _ -> cont 25;
	TokenEq _ -> cont 26;
	TokenIf _ -> cont 27;
	TokenThen _ -> cont 28;
	TokenElse _ -> cont 29;
	TokenComma _ -> cont 30;
	TokenLParen _ -> cont 31;
	TokenRParen _ -> cont 32;
	TokenOpenStream _ -> cont 33;
	TokenCloseStream _ -> cont 34;
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
          | TmMod Expr Expr

          | TmOut [Expr]

          | TmInt Int
          | TmVar String
          | TmList [Expr]

          | TmLT Expr Expr
          | TmGT Expr Expr
          | TmLTEQ Expr Expr
          | TmGTEQ Expr Expr
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

