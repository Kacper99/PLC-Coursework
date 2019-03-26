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
happyExpList = Happy_Data_Array.listArray (0,203) ([0,0,12288,0,0,8192,0,0,32,0,0,0,0,0,32,32768,0,0,36864,4096,5,0,0,64,0,0,16,0,31,0,0,0,0,0,0,16384,0,3584,16384,0,0,1,36864,0,5,4096,0,8,0,0,64,0,512,0,36864,0,4,0,0,8192,0,0,8,0,32768,0,0,0,0,0,31,2,0,3072,16384,61440,0,5,36864,0,5,36864,0,5,36864,0,5,36864,0,0,36864,0,0,36864,0,5,36864,0,5,36864,0,5,36864,0,5,36864,0,5,36864,4096,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,28,0,0,28,0,0,0,0,0,0,16384,0,0,16384,0,0,0,0,31,0,0,31,0,0,31,0,0,511,3072,0,0,386,0,0,0,0,0,0,61440,0,5,0,0,0,4096,0,0,0,0,0,0,0,32,0,32768,0,0,0,0,0,0,0,32768,0,0,36864,4096,5,0,0,0,0,511,3074,0,0,386,0,0,32,61440,0,5,61440,0,5,36864,0,5,36864,0,5,36864,0,5,36864,0,5,36864,0,5,36864,0,5,36864,0,0,36864,0,0,0,0,0,0,0,0,0,31,0,0,31,0,0,31,0,0,31,0,0,31,0,0,31,0,0,0,0,0,0,0,36864,4096,5,0,0,0,0,0,64,0,0,0,0,0,0,0,0,64,0,16384,0,0,0,32,36864,4096,5,0,0,64,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Program","Statements","Block","Exp","Outs","Vars","Types","BoolExp","List","int","true","false","var","'+'","'-'","'/'","'*'","'%'","'<'","'>'","'<='","'>='","'='","'+='","'-='","if","then","else","','","'('","')'","'['","']'","';'","'{'","'}'","'&&'","'||'","'!'","'!='","'=='","globals","start","'|'","%eof"]
        bit_start = st * 48
        bit_end = (st + 1) * 48
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..47]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (45) = happyShift action_4
action_0 (46) = happyShift action_2
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (46) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (38) = happyShift action_6
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (48) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (38) = happyShift action_5
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (16) = happyShift action_17
action_5 (9) = happyGoto action_16
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (13) = happyShift action_11
action_6 (16) = happyShift action_12
action_6 (29) = happyShift action_13
action_6 (33) = happyShift action_14
action_6 (35) = happyShift action_15
action_6 (5) = happyGoto action_7
action_6 (6) = happyGoto action_8
action_6 (7) = happyGoto action_9
action_6 (10) = happyGoto action_10
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (39) = happyShift action_37
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (37) = happyShift action_36
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (17) = happyShift action_31
action_9 (18) = happyShift action_32
action_9 (19) = happyShift action_33
action_9 (20) = happyShift action_34
action_9 (21) = happyShift action_35
action_9 _ = happyReduce_5

action_10 _ = happyReduce_17

action_11 (47) = happyShift action_30
action_11 _ = happyReduce_25

action_12 (26) = happyShift action_26
action_12 (27) = happyShift action_27
action_12 (28) = happyShift action_28
action_12 (47) = happyShift action_29
action_12 _ = happyReduce_26

action_13 (33) = happyShift action_25
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (13) = happyShift action_11
action_14 (16) = happyShift action_24
action_14 (33) = happyShift action_14
action_14 (35) = happyShift action_15
action_14 (7) = happyGoto action_23
action_14 (10) = happyGoto action_10
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (13) = happyShift action_21
action_15 (36) = happyShift action_22
action_15 (12) = happyGoto action_20
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (39) = happyShift action_19
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (26) = happyShift action_18
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (13) = happyShift action_61
action_18 (16) = happyShift action_62
action_18 (35) = happyShift action_15
action_18 (10) = happyGoto action_60
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (46) = happyShift action_59
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (36) = happyShift action_58
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (32) = happyShift action_57
action_21 _ = happyReduce_40

action_22 _ = happyReduce_28

action_23 (17) = happyShift action_31
action_23 (18) = happyShift action_32
action_23 (19) = happyShift action_33
action_23 (20) = happyShift action_34
action_23 (21) = happyShift action_35
action_23 (34) = happyShift action_56
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (27) = happyShift action_27
action_24 (28) = happyShift action_28
action_24 (47) = happyShift action_29
action_24 _ = happyReduce_26

action_25 (13) = happyShift action_11
action_25 (14) = happyShift action_53
action_25 (15) = happyShift action_54
action_25 (16) = happyShift action_24
action_25 (33) = happyShift action_55
action_25 (35) = happyShift action_15
action_25 (7) = happyGoto action_51
action_25 (10) = happyGoto action_10
action_25 (11) = happyGoto action_52
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (13) = happyShift action_11
action_26 (16) = happyShift action_24
action_26 (33) = happyShift action_14
action_26 (35) = happyShift action_15
action_26 (7) = happyGoto action_50
action_26 (10) = happyGoto action_10
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (13) = happyShift action_11
action_27 (16) = happyShift action_24
action_27 (33) = happyShift action_14
action_27 (35) = happyShift action_15
action_27 (7) = happyGoto action_49
action_27 (10) = happyGoto action_10
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (13) = happyShift action_11
action_28 (16) = happyShift action_24
action_28 (33) = happyShift action_14
action_28 (35) = happyShift action_15
action_28 (7) = happyGoto action_48
action_28 (10) = happyGoto action_10
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (13) = happyShift action_45
action_29 (16) = happyShift action_46
action_29 (8) = happyGoto action_47
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (13) = happyShift action_45
action_30 (16) = happyShift action_46
action_30 (8) = happyGoto action_44
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (13) = happyShift action_11
action_31 (16) = happyShift action_24
action_31 (33) = happyShift action_14
action_31 (35) = happyShift action_15
action_31 (7) = happyGoto action_43
action_31 (10) = happyGoto action_10
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (13) = happyShift action_11
action_32 (16) = happyShift action_24
action_32 (33) = happyShift action_14
action_32 (35) = happyShift action_15
action_32 (7) = happyGoto action_42
action_32 (10) = happyGoto action_10
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (13) = happyShift action_11
action_33 (16) = happyShift action_24
action_33 (33) = happyShift action_14
action_33 (35) = happyShift action_15
action_33 (7) = happyGoto action_41
action_33 (10) = happyGoto action_10
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (13) = happyShift action_11
action_34 (16) = happyShift action_24
action_34 (33) = happyShift action_14
action_34 (35) = happyShift action_15
action_34 (7) = happyGoto action_40
action_34 (10) = happyGoto action_10
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (13) = happyShift action_11
action_35 (16) = happyShift action_24
action_35 (33) = happyShift action_14
action_35 (35) = happyShift action_15
action_35 (7) = happyGoto action_39
action_35 (10) = happyGoto action_10
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (13) = happyShift action_11
action_36 (16) = happyShift action_12
action_36 (29) = happyShift action_13
action_36 (33) = happyShift action_14
action_36 (35) = happyShift action_15
action_36 (5) = happyGoto action_38
action_36 (6) = happyGoto action_8
action_36 (7) = happyGoto action_9
action_36 (10) = happyGoto action_10
action_36 _ = happyReduce_4

action_37 _ = happyReduce_1

action_38 _ = happyReduce_3

action_39 _ = happyReduce_12

action_40 _ = happyReduce_10

action_41 _ = happyReduce_11

action_42 (19) = happyShift action_33
action_42 (20) = happyShift action_34
action_42 (21) = happyShift action_35
action_42 _ = happyReduce_9

action_43 (19) = happyShift action_33
action_43 (20) = happyShift action_34
action_43 (21) = happyShift action_35
action_43 _ = happyReduce_8

action_44 _ = happyReduce_15

action_45 (47) = happyShift action_78
action_45 _ = happyReduce_19

action_46 (47) = happyShift action_77
action_46 _ = happyReduce_20

action_47 _ = happyReduce_16

action_48 (17) = happyShift action_31
action_48 (18) = happyShift action_32
action_48 (19) = happyShift action_33
action_48 (20) = happyShift action_34
action_48 (21) = happyShift action_35
action_48 _ = happyReduce_14

action_49 (17) = happyShift action_31
action_49 (18) = happyShift action_32
action_49 (19) = happyShift action_33
action_49 (20) = happyShift action_34
action_49 (21) = happyShift action_35
action_49 _ = happyReduce_13

action_50 (17) = happyShift action_31
action_50 (18) = happyShift action_32
action_50 (19) = happyShift action_33
action_50 (20) = happyShift action_34
action_50 (21) = happyShift action_35
action_50 _ = happyReduce_6

action_51 (17) = happyShift action_31
action_51 (18) = happyShift action_32
action_51 (19) = happyShift action_33
action_51 (20) = happyShift action_34
action_51 (21) = happyShift action_35
action_51 (22) = happyShift action_71
action_51 (23) = happyShift action_72
action_51 (24) = happyShift action_73
action_51 (25) = happyShift action_74
action_51 (43) = happyShift action_75
action_51 (44) = happyShift action_76
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (34) = happyShift action_68
action_52 (40) = happyShift action_69
action_52 (41) = happyShift action_70
action_52 _ = happyFail (happyExpListPerState 52)

action_53 _ = happyReduce_37

action_54 _ = happyReduce_38

action_55 (13) = happyShift action_11
action_55 (14) = happyShift action_53
action_55 (15) = happyShift action_54
action_55 (16) = happyShift action_24
action_55 (33) = happyShift action_55
action_55 (35) = happyShift action_15
action_55 (7) = happyGoto action_66
action_55 (10) = happyGoto action_10
action_55 (11) = happyGoto action_67
action_55 _ = happyFail (happyExpListPerState 55)

action_56 _ = happyReduce_18

action_57 (13) = happyShift action_21
action_57 (12) = happyGoto action_65
action_57 _ = happyFail (happyExpListPerState 57)

action_58 _ = happyReduce_27

action_59 (38) = happyShift action_64
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (32) = happyShift action_63
action_60 _ = happyReduce_23

action_61 _ = happyReduce_25

action_62 _ = happyReduce_26

action_63 (16) = happyShift action_17
action_63 (9) = happyGoto action_92
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (13) = happyShift action_11
action_64 (16) = happyShift action_12
action_64 (29) = happyShift action_13
action_64 (33) = happyShift action_14
action_64 (35) = happyShift action_15
action_64 (5) = happyGoto action_91
action_64 (6) = happyGoto action_8
action_64 (7) = happyGoto action_9
action_64 (10) = happyGoto action_10
action_64 _ = happyFail (happyExpListPerState 64)

action_65 _ = happyReduce_41

action_66 (17) = happyShift action_31
action_66 (18) = happyShift action_32
action_66 (19) = happyShift action_33
action_66 (20) = happyShift action_34
action_66 (21) = happyShift action_35
action_66 (22) = happyShift action_71
action_66 (23) = happyShift action_72
action_66 (24) = happyShift action_73
action_66 (25) = happyShift action_74
action_66 (34) = happyShift action_56
action_66 (43) = happyShift action_75
action_66 (44) = happyShift action_76
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (34) = happyShift action_90
action_67 (40) = happyShift action_69
action_67 (41) = happyShift action_70
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (38) = happyShift action_89
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (13) = happyShift action_11
action_69 (14) = happyShift action_53
action_69 (15) = happyShift action_54
action_69 (16) = happyShift action_24
action_69 (33) = happyShift action_55
action_69 (35) = happyShift action_15
action_69 (7) = happyGoto action_51
action_69 (10) = happyGoto action_10
action_69 (11) = happyGoto action_88
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (13) = happyShift action_11
action_70 (14) = happyShift action_53
action_70 (15) = happyShift action_54
action_70 (16) = happyShift action_24
action_70 (33) = happyShift action_55
action_70 (35) = happyShift action_15
action_70 (7) = happyGoto action_51
action_70 (10) = happyGoto action_10
action_70 (11) = happyGoto action_87
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (13) = happyShift action_11
action_71 (16) = happyShift action_24
action_71 (33) = happyShift action_14
action_71 (35) = happyShift action_15
action_71 (7) = happyGoto action_86
action_71 (10) = happyGoto action_10
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (13) = happyShift action_11
action_72 (16) = happyShift action_24
action_72 (33) = happyShift action_14
action_72 (35) = happyShift action_15
action_72 (7) = happyGoto action_85
action_72 (10) = happyGoto action_10
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (13) = happyShift action_11
action_73 (16) = happyShift action_24
action_73 (33) = happyShift action_14
action_73 (35) = happyShift action_15
action_73 (7) = happyGoto action_84
action_73 (10) = happyGoto action_10
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (13) = happyShift action_11
action_74 (16) = happyShift action_24
action_74 (33) = happyShift action_14
action_74 (35) = happyShift action_15
action_74 (7) = happyGoto action_83
action_74 (10) = happyGoto action_10
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (13) = happyShift action_11
action_75 (16) = happyShift action_24
action_75 (33) = happyShift action_14
action_75 (35) = happyShift action_15
action_75 (7) = happyGoto action_82
action_75 (10) = happyGoto action_10
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (13) = happyShift action_11
action_76 (16) = happyShift action_24
action_76 (33) = happyShift action_14
action_76 (35) = happyShift action_15
action_76 (7) = happyGoto action_81
action_76 (10) = happyGoto action_10
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (13) = happyShift action_45
action_77 (16) = happyShift action_46
action_77 (8) = happyGoto action_80
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (13) = happyShift action_45
action_78 (16) = happyShift action_46
action_78 (8) = happyGoto action_79
action_78 _ = happyFail (happyExpListPerState 78)

action_79 _ = happyReduce_21

action_80 _ = happyReduce_22

action_81 (17) = happyShift action_31
action_81 (18) = happyShift action_32
action_81 (19) = happyShift action_33
action_81 (20) = happyShift action_34
action_81 (21) = happyShift action_35
action_81 _ = happyReduce_33

action_82 (17) = happyShift action_31
action_82 (18) = happyShift action_32
action_82 (19) = happyShift action_33
action_82 (20) = happyShift action_34
action_82 (21) = happyShift action_35
action_82 _ = happyReduce_34

action_83 (17) = happyShift action_31
action_83 (18) = happyShift action_32
action_83 (19) = happyShift action_33
action_83 (20) = happyShift action_34
action_83 (21) = happyShift action_35
action_83 _ = happyReduce_32

action_84 (17) = happyShift action_31
action_84 (18) = happyShift action_32
action_84 (19) = happyShift action_33
action_84 (20) = happyShift action_34
action_84 (21) = happyShift action_35
action_84 _ = happyReduce_31

action_85 (17) = happyShift action_31
action_85 (18) = happyShift action_32
action_85 (19) = happyShift action_33
action_85 (20) = happyShift action_34
action_85 (21) = happyShift action_35
action_85 _ = happyReduce_30

action_86 (17) = happyShift action_31
action_86 (18) = happyShift action_32
action_86 (19) = happyShift action_33
action_86 (20) = happyShift action_34
action_86 (21) = happyShift action_35
action_86 _ = happyReduce_29

action_87 _ = happyReduce_36

action_88 _ = happyReduce_35

action_89 (13) = happyShift action_11
action_89 (16) = happyShift action_12
action_89 (29) = happyShift action_13
action_89 (33) = happyShift action_14
action_89 (35) = happyShift action_15
action_89 (5) = happyGoto action_94
action_89 (6) = happyGoto action_8
action_89 (7) = happyGoto action_9
action_89 (10) = happyGoto action_10
action_89 _ = happyFail (happyExpListPerState 89)

action_90 _ = happyReduce_39

action_91 (39) = happyShift action_93
action_91 _ = happyFail (happyExpListPerState 91)

action_92 _ = happyReduce_24

action_93 _ = happyReduce_2

action_94 (39) = happyShift action_95
action_94 _ = happyFail (happyExpListPerState 94)

action_95 (31) = happyShift action_96
action_95 _ = happyFail (happyExpListPerState 95)

action_96 (38) = happyShift action_97
action_96 _ = happyFail (happyExpListPerState 96)

action_97 (13) = happyShift action_11
action_97 (16) = happyShift action_12
action_97 (29) = happyShift action_13
action_97 (33) = happyShift action_14
action_97 (35) = happyShift action_15
action_97 (5) = happyGoto action_98
action_97 (6) = happyGoto action_8
action_97 (7) = happyGoto action_9
action_97 (10) = happyGoto action_10
action_97 _ = happyFail (happyExpListPerState 97)

action_98 (39) = happyShift action_99
action_98 _ = happyFail (happyExpListPerState 98)

action_99 _ = happyReduce_7

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
happyReduction_13 (HappyAbsSyn7  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn7
		 (TmPlusEqual happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  7 happyReduction_14
happyReduction_14 (HappyAbsSyn7  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn7
		 (TmMinusEqual happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  7 happyReduction_15
happyReduction_15 (HappyAbsSyn8  happy_var_3)
	_
	(HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn7
		 (TmOut ((TmInt happy_var_1) : happy_var_3)
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  7 happyReduction_16
happyReduction_16 (HappyAbsSyn8  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn7
		 (TmOut ((TmVar happy_var_1) : happy_var_3)
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  7 happyReduction_17
happyReduction_17 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

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
happyReduction_23 (HappyAbsSyn10  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn9
		 ([TmSetVar happy_var_1 happy_var_3]
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happyReduce 5 9 happyReduction_24
happyReduction_24 ((HappyAbsSyn9  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 ((TmSetVar happy_var_1 happy_var_3) : happy_var_5
	) `HappyStk` happyRest

happyReduce_25 = happySpecReduce_1  10 happyReduction_25
happyReduction_25 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn10
		 (TmInt happy_var_1
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  10 happyReduction_26
happyReduction_26 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn10
		 (TmVar happy_var_1
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  10 happyReduction_27
happyReduction_27 _
	(HappyAbsSyn12  happy_var_2)
	_
	 =  HappyAbsSyn10
		 (TmList happy_var_2
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_2  10 happyReduction_28
happyReduction_28 _
	_
	 =  HappyAbsSyn10
		 (TmList []
	)

happyReduce_29 = happySpecReduce_3  11 happyReduction_29
happyReduction_29 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn11
		 (TmLT happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  11 happyReduction_30
happyReduction_30 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn11
		 (TmGT happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  11 happyReduction_31
happyReduction_31 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn11
		 (TmLTEQ happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  11 happyReduction_32
happyReduction_32 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn11
		 (TmGTEQ happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  11 happyReduction_33
happyReduction_33 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn11
		 (TmEQ happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  11 happyReduction_34
happyReduction_34 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn11
		 (TmNEQ happy_var_1 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  11 happyReduction_35
happyReduction_35 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (TmAnd happy_var_1 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  11 happyReduction_36
happyReduction_36 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (TmOr happy_var_1 happy_var_3
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_1  11 happyReduction_37
happyReduction_37 _
	 =  HappyAbsSyn11
		 (TmTrue
	)

happyReduce_38 = happySpecReduce_1  11 happyReduction_38
happyReduction_38 _
	 =  HappyAbsSyn11
		 (TmFalse
	)

happyReduce_39 = happySpecReduce_3  11 happyReduction_39
happyReduction_39 _
	(HappyAbsSyn11  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (happy_var_2
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_1  12 happyReduction_40
happyReduction_40 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn12
		 ([TmInt happy_var_1]
	)
happyReduction_40 _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  12 happyReduction_41
happyReduction_41 (HappyAbsSyn12  happy_var_3)
	_
	(HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn12
		 ((TmInt happy_var_1) : happy_var_3
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 48 48 notHappyAtAll (HappyState action) sts stk []

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
	TokenPlusEquals _ -> cont 27;
	TokenMinusEquals _ -> cont 28;
	TokenIf _ -> cont 29;
	TokenThen _ -> cont 30;
	TokenElse _ -> cont 31;
	TokenComma _ -> cont 32;
	TokenLParen _ -> cont 33;
	TokenRParen _ -> cont 34;
	TokenOpenStream _ -> cont 35;
	TokenCloseStream _ -> cont 36;
	TokenEndStatement _ -> cont 37;
	TokenLeftCurly _ -> cont 38;
	TokenRightCurly _ -> cont 39;
	TokenAnd _ -> cont 40;
	TokenOr _ -> cont 41;
	TokenNot _ -> cont 42;
	TokenNotEqual _ -> cont 43;
	TokenEqual _ -> cont 44;
	TokenGlobals _ -> cont 45;
	TokenStart _ -> cont 46;
	TokenPipe _ -> cont 47;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 48 tk tks = happyError' (tks, explist)
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

          | TmPlusEqual String Expr
          | TmMinusEqual String Expr

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

