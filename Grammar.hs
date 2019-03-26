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
happyExpList = Happy_Data_Array.listArray (0,230) ([0,0,12288,0,0,32768,0,0,512,0,0,0,0,0,8192,0,512,0,0,2304,20736,0,0,0,16,0,0,16,0,124,0,6,0,0,0,0,0,16,0,14,64,0,1024,0,2304,20480,0,1024,0,2,0,0,64,0,2048,0,0,9,64,0,0,0,8,0,2048,0,0,512,0,0,0,0,49152,32775,24576,0,3072,16384,49152,3,20,0,9,80,0,36,320,0,144,1280,0,576,0,0,2304,0,0,9216,16384,1,36864,0,5,16384,2,20,0,9,80,0,36,320,0,144,1280,0,576,5120,0,2304,20736,0,0,0,0,0,0,0,0,124,0,6,496,0,8,0,0,0,0,0,0,0,0,0,49152,1,0,0,7,0,0,0,0,0,0,0,1,0,0,4,0,0,0,7936,0,0,31744,0,0,61440,1,6144,49152,127,25344,0,0,386,0,0,0,0,0,0,0,60,320,0,0,0,0,64,0,0,0,0,0,0,0,8,0,32768,0,0,0,0,0,0,0,0,32,0,0,144,1296,0,0,0,0,61440,8223,6336,0,32768,96,0,0,32,49152,3,20,0,15,80,0,36,320,0,144,1280,0,576,5120,0,2304,20480,0,9216,16384,1,36864,0,5,16384,2,0,0,9,0,0,0,0,0,0,0,0,31744,0,1536,61440,1,6144,49152,7,24576,0,31,32768,1,124,0,6,496,0,24,0,0,0,0,0,0,576,5184,0,0,0,0,0,0,16,0,0,0,0,0,0,0,0,1024,0,0,16,0,0,8192,0,576,5184,0,0,0,4,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Program","Statements","Block","Exp","Outs","Vars","Types","BoolExp","List","int","true","false","var","'+'","'-'","'/'","'*'","'%'","'<'","'>'","'<='","'>='","'='","'+='","'-='","if","then","else","','","'('","')'","'['","']'","';'","'{'","'}'","'&&'","'||'","'!'","'!='","'=='","globals","start","'|'","'~'","'\\~'","%eof"]
        bit_start = st * 50
        bit_end = (st + 1) * 50
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..49]
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

action_3 (50) = happyAccept
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

action_7 (39) = happyShift action_39
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (37) = happyShift action_38
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (17) = happyShift action_31
action_9 (18) = happyShift action_32
action_9 (19) = happyShift action_33
action_9 (20) = happyShift action_34
action_9 (21) = happyShift action_35
action_9 (48) = happyShift action_36
action_9 (49) = happyShift action_37
action_9 _ = happyReduce_5

action_10 _ = happyReduce_19

action_11 (47) = happyShift action_30
action_11 _ = happyReduce_27

action_12 (26) = happyShift action_26
action_12 (27) = happyShift action_27
action_12 (28) = happyShift action_28
action_12 (47) = happyShift action_29
action_12 _ = happyReduce_28

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

action_18 (13) = happyShift action_65
action_18 (16) = happyShift action_66
action_18 (35) = happyShift action_15
action_18 (10) = happyGoto action_64
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (46) = happyShift action_63
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (36) = happyShift action_62
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (32) = happyShift action_61
action_21 _ = happyReduce_42

action_22 _ = happyReduce_30

action_23 (17) = happyShift action_31
action_23 (18) = happyShift action_32
action_23 (19) = happyShift action_33
action_23 (20) = happyShift action_34
action_23 (21) = happyShift action_35
action_23 (34) = happyShift action_60
action_23 (48) = happyShift action_36
action_23 (49) = happyShift action_37
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (27) = happyShift action_27
action_24 (28) = happyShift action_28
action_24 (47) = happyShift action_29
action_24 _ = happyReduce_28

action_25 (13) = happyShift action_11
action_25 (14) = happyShift action_57
action_25 (15) = happyShift action_58
action_25 (16) = happyShift action_24
action_25 (33) = happyShift action_59
action_25 (35) = happyShift action_15
action_25 (7) = happyGoto action_55
action_25 (10) = happyGoto action_10
action_25 (11) = happyGoto action_56
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (13) = happyShift action_11
action_26 (16) = happyShift action_24
action_26 (33) = happyShift action_14
action_26 (35) = happyShift action_15
action_26 (7) = happyGoto action_54
action_26 (10) = happyGoto action_10
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (13) = happyShift action_11
action_27 (16) = happyShift action_24
action_27 (33) = happyShift action_14
action_27 (35) = happyShift action_15
action_27 (7) = happyGoto action_53
action_27 (10) = happyGoto action_10
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (13) = happyShift action_11
action_28 (16) = happyShift action_24
action_28 (33) = happyShift action_14
action_28 (35) = happyShift action_15
action_28 (7) = happyGoto action_52
action_28 (10) = happyGoto action_10
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (13) = happyShift action_49
action_29 (16) = happyShift action_50
action_29 (8) = happyGoto action_51
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (13) = happyShift action_49
action_30 (16) = happyShift action_50
action_30 (8) = happyGoto action_48
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (13) = happyShift action_11
action_31 (16) = happyShift action_24
action_31 (33) = happyShift action_14
action_31 (35) = happyShift action_15
action_31 (7) = happyGoto action_47
action_31 (10) = happyGoto action_10
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (13) = happyShift action_11
action_32 (16) = happyShift action_24
action_32 (33) = happyShift action_14
action_32 (35) = happyShift action_15
action_32 (7) = happyGoto action_46
action_32 (10) = happyGoto action_10
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (13) = happyShift action_11
action_33 (16) = happyShift action_24
action_33 (33) = happyShift action_14
action_33 (35) = happyShift action_15
action_33 (7) = happyGoto action_45
action_33 (10) = happyGoto action_10
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (13) = happyShift action_11
action_34 (16) = happyShift action_24
action_34 (33) = happyShift action_14
action_34 (35) = happyShift action_15
action_34 (7) = happyGoto action_44
action_34 (10) = happyGoto action_10
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (13) = happyShift action_11
action_35 (16) = happyShift action_24
action_35 (33) = happyShift action_14
action_35 (35) = happyShift action_15
action_35 (7) = happyGoto action_43
action_35 (10) = happyGoto action_10
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (13) = happyShift action_11
action_36 (16) = happyShift action_24
action_36 (33) = happyShift action_14
action_36 (35) = happyShift action_15
action_36 (7) = happyGoto action_42
action_36 (10) = happyGoto action_10
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (13) = happyShift action_11
action_37 (16) = happyShift action_24
action_37 (33) = happyShift action_14
action_37 (35) = happyShift action_15
action_37 (7) = happyGoto action_41
action_37 (10) = happyGoto action_10
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (13) = happyShift action_11
action_38 (16) = happyShift action_12
action_38 (29) = happyShift action_13
action_38 (33) = happyShift action_14
action_38 (35) = happyShift action_15
action_38 (5) = happyGoto action_40
action_38 (6) = happyGoto action_8
action_38 (7) = happyGoto action_9
action_38 (10) = happyGoto action_10
action_38 _ = happyReduce_4

action_39 _ = happyReduce_1

action_40 _ = happyReduce_3

action_41 (17) = happyShift action_31
action_41 (18) = happyShift action_32
action_41 (19) = happyShift action_33
action_41 (20) = happyShift action_34
action_41 (21) = happyShift action_35
action_41 (48) = happyShift action_36
action_41 (49) = happyShift action_37
action_41 _ = happyReduce_16

action_42 (17) = happyShift action_31
action_42 (18) = happyShift action_32
action_42 (19) = happyShift action_33
action_42 (20) = happyShift action_34
action_42 (21) = happyShift action_35
action_42 (48) = happyShift action_36
action_42 _ = happyReduce_15

action_43 _ = happyReduce_12

action_44 _ = happyReduce_10

action_45 _ = happyReduce_11

action_46 (19) = happyShift action_33
action_46 (20) = happyShift action_34
action_46 (21) = happyShift action_35
action_46 _ = happyReduce_9

action_47 (19) = happyShift action_33
action_47 (20) = happyShift action_34
action_47 (21) = happyShift action_35
action_47 _ = happyReduce_8

action_48 _ = happyReduce_17

action_49 (47) = happyShift action_82
action_49 _ = happyReduce_21

action_50 (47) = happyShift action_81
action_50 _ = happyReduce_22

action_51 _ = happyReduce_18

action_52 (17) = happyShift action_31
action_52 (18) = happyShift action_32
action_52 (19) = happyShift action_33
action_52 (20) = happyShift action_34
action_52 (21) = happyShift action_35
action_52 _ = happyReduce_14

action_53 (17) = happyShift action_31
action_53 (18) = happyShift action_32
action_53 (19) = happyShift action_33
action_53 (20) = happyShift action_34
action_53 (21) = happyShift action_35
action_53 _ = happyReduce_13

action_54 (17) = happyShift action_31
action_54 (18) = happyShift action_32
action_54 (19) = happyShift action_33
action_54 (20) = happyShift action_34
action_54 (21) = happyShift action_35
action_54 (48) = happyShift action_36
action_54 (49) = happyShift action_37
action_54 _ = happyReduce_6

action_55 (17) = happyShift action_31
action_55 (18) = happyShift action_32
action_55 (19) = happyShift action_33
action_55 (20) = happyShift action_34
action_55 (21) = happyShift action_35
action_55 (22) = happyShift action_75
action_55 (23) = happyShift action_76
action_55 (24) = happyShift action_77
action_55 (25) = happyShift action_78
action_55 (43) = happyShift action_79
action_55 (44) = happyShift action_80
action_55 (48) = happyShift action_36
action_55 (49) = happyShift action_37
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (34) = happyShift action_72
action_56 (40) = happyShift action_73
action_56 (41) = happyShift action_74
action_56 _ = happyFail (happyExpListPerState 56)

action_57 _ = happyReduce_39

action_58 _ = happyReduce_40

action_59 (13) = happyShift action_11
action_59 (14) = happyShift action_57
action_59 (15) = happyShift action_58
action_59 (16) = happyShift action_24
action_59 (33) = happyShift action_59
action_59 (35) = happyShift action_15
action_59 (7) = happyGoto action_70
action_59 (10) = happyGoto action_10
action_59 (11) = happyGoto action_71
action_59 _ = happyFail (happyExpListPerState 59)

action_60 _ = happyReduce_20

action_61 (13) = happyShift action_21
action_61 (12) = happyGoto action_69
action_61 _ = happyFail (happyExpListPerState 61)

action_62 _ = happyReduce_29

action_63 (38) = happyShift action_68
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (32) = happyShift action_67
action_64 _ = happyReduce_25

action_65 _ = happyReduce_27

action_66 _ = happyReduce_28

action_67 (16) = happyShift action_17
action_67 (9) = happyGoto action_96
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (13) = happyShift action_11
action_68 (16) = happyShift action_12
action_68 (29) = happyShift action_13
action_68 (33) = happyShift action_14
action_68 (35) = happyShift action_15
action_68 (5) = happyGoto action_95
action_68 (6) = happyGoto action_8
action_68 (7) = happyGoto action_9
action_68 (10) = happyGoto action_10
action_68 _ = happyFail (happyExpListPerState 68)

action_69 _ = happyReduce_43

action_70 (17) = happyShift action_31
action_70 (18) = happyShift action_32
action_70 (19) = happyShift action_33
action_70 (20) = happyShift action_34
action_70 (21) = happyShift action_35
action_70 (22) = happyShift action_75
action_70 (23) = happyShift action_76
action_70 (24) = happyShift action_77
action_70 (25) = happyShift action_78
action_70 (34) = happyShift action_60
action_70 (43) = happyShift action_79
action_70 (44) = happyShift action_80
action_70 (48) = happyShift action_36
action_70 (49) = happyShift action_37
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (34) = happyShift action_94
action_71 (40) = happyShift action_73
action_71 (41) = happyShift action_74
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (38) = happyShift action_93
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (13) = happyShift action_11
action_73 (14) = happyShift action_57
action_73 (15) = happyShift action_58
action_73 (16) = happyShift action_24
action_73 (33) = happyShift action_59
action_73 (35) = happyShift action_15
action_73 (7) = happyGoto action_55
action_73 (10) = happyGoto action_10
action_73 (11) = happyGoto action_92
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (13) = happyShift action_11
action_74 (14) = happyShift action_57
action_74 (15) = happyShift action_58
action_74 (16) = happyShift action_24
action_74 (33) = happyShift action_59
action_74 (35) = happyShift action_15
action_74 (7) = happyGoto action_55
action_74 (10) = happyGoto action_10
action_74 (11) = happyGoto action_91
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (13) = happyShift action_11
action_75 (16) = happyShift action_24
action_75 (33) = happyShift action_14
action_75 (35) = happyShift action_15
action_75 (7) = happyGoto action_90
action_75 (10) = happyGoto action_10
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (13) = happyShift action_11
action_76 (16) = happyShift action_24
action_76 (33) = happyShift action_14
action_76 (35) = happyShift action_15
action_76 (7) = happyGoto action_89
action_76 (10) = happyGoto action_10
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (13) = happyShift action_11
action_77 (16) = happyShift action_24
action_77 (33) = happyShift action_14
action_77 (35) = happyShift action_15
action_77 (7) = happyGoto action_88
action_77 (10) = happyGoto action_10
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (13) = happyShift action_11
action_78 (16) = happyShift action_24
action_78 (33) = happyShift action_14
action_78 (35) = happyShift action_15
action_78 (7) = happyGoto action_87
action_78 (10) = happyGoto action_10
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (13) = happyShift action_11
action_79 (16) = happyShift action_24
action_79 (33) = happyShift action_14
action_79 (35) = happyShift action_15
action_79 (7) = happyGoto action_86
action_79 (10) = happyGoto action_10
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (13) = happyShift action_11
action_80 (16) = happyShift action_24
action_80 (33) = happyShift action_14
action_80 (35) = happyShift action_15
action_80 (7) = happyGoto action_85
action_80 (10) = happyGoto action_10
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (13) = happyShift action_49
action_81 (16) = happyShift action_50
action_81 (8) = happyGoto action_84
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (13) = happyShift action_49
action_82 (16) = happyShift action_50
action_82 (8) = happyGoto action_83
action_82 _ = happyFail (happyExpListPerState 82)

action_83 _ = happyReduce_23

action_84 _ = happyReduce_24

action_85 (17) = happyShift action_31
action_85 (18) = happyShift action_32
action_85 (19) = happyShift action_33
action_85 (20) = happyShift action_34
action_85 (21) = happyShift action_35
action_85 (48) = happyShift action_36
action_85 (49) = happyShift action_37
action_85 _ = happyReduce_35

action_86 (17) = happyShift action_31
action_86 (18) = happyShift action_32
action_86 (19) = happyShift action_33
action_86 (20) = happyShift action_34
action_86 (21) = happyShift action_35
action_86 (48) = happyShift action_36
action_86 (49) = happyShift action_37
action_86 _ = happyReduce_36

action_87 (17) = happyShift action_31
action_87 (18) = happyShift action_32
action_87 (19) = happyShift action_33
action_87 (20) = happyShift action_34
action_87 (21) = happyShift action_35
action_87 (48) = happyShift action_36
action_87 (49) = happyShift action_37
action_87 _ = happyReduce_34

action_88 (17) = happyShift action_31
action_88 (18) = happyShift action_32
action_88 (19) = happyShift action_33
action_88 (20) = happyShift action_34
action_88 (21) = happyShift action_35
action_88 (48) = happyShift action_36
action_88 (49) = happyShift action_37
action_88 _ = happyReduce_33

action_89 (17) = happyShift action_31
action_89 (18) = happyShift action_32
action_89 (19) = happyShift action_33
action_89 (20) = happyShift action_34
action_89 (21) = happyShift action_35
action_89 (48) = happyShift action_36
action_89 (49) = happyShift action_37
action_89 _ = happyReduce_32

action_90 (17) = happyShift action_31
action_90 (18) = happyShift action_32
action_90 (19) = happyShift action_33
action_90 (20) = happyShift action_34
action_90 (21) = happyShift action_35
action_90 (48) = happyShift action_36
action_90 (49) = happyShift action_37
action_90 _ = happyReduce_31

action_91 _ = happyReduce_38

action_92 _ = happyReduce_37

action_93 (13) = happyShift action_11
action_93 (16) = happyShift action_12
action_93 (29) = happyShift action_13
action_93 (33) = happyShift action_14
action_93 (35) = happyShift action_15
action_93 (5) = happyGoto action_98
action_93 (6) = happyGoto action_8
action_93 (7) = happyGoto action_9
action_93 (10) = happyGoto action_10
action_93 _ = happyFail (happyExpListPerState 93)

action_94 _ = happyReduce_41

action_95 (39) = happyShift action_97
action_95 _ = happyFail (happyExpListPerState 95)

action_96 _ = happyReduce_26

action_97 _ = happyReduce_2

action_98 (39) = happyShift action_99
action_98 _ = happyFail (happyExpListPerState 98)

action_99 (31) = happyShift action_100
action_99 _ = happyFail (happyExpListPerState 99)

action_100 (38) = happyShift action_101
action_100 _ = happyFail (happyExpListPerState 100)

action_101 (13) = happyShift action_11
action_101 (16) = happyShift action_12
action_101 (29) = happyShift action_13
action_101 (33) = happyShift action_14
action_101 (35) = happyShift action_15
action_101 (5) = happyGoto action_102
action_101 (6) = happyGoto action_8
action_101 (7) = happyGoto action_9
action_101 (10) = happyGoto action_10
action_101 _ = happyFail (happyExpListPerState 101)

action_102 (39) = happyShift action_103
action_102 _ = happyFail (happyExpListPerState 102)

action_103 _ = happyReduce_7

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
happyReduction_15 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (TmGet happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  7 happyReduction_16
happyReduction_16 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (TmRemove happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  7 happyReduction_17
happyReduction_17 (HappyAbsSyn8  happy_var_3)
	_
	(HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn7
		 (TmOut ((TmInt happy_var_1) : happy_var_3)
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  7 happyReduction_18
happyReduction_18 (HappyAbsSyn8  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn7
		 (TmOut ((TmVar happy_var_1) : happy_var_3)
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  7 happyReduction_19
happyReduction_19 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  7 happyReduction_20
happyReduction_20 _
	(HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (happy_var_2
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  8 happyReduction_21
happyReduction_21 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn8
		 ([TmInt happy_var_1]
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  8 happyReduction_22
happyReduction_22 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn8
		 ([TmVar happy_var_1]
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  8 happyReduction_23
happyReduction_23 (HappyAbsSyn8  happy_var_3)
	_
	(HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn8
		 (TmInt happy_var_1 : happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  8 happyReduction_24
happyReduction_24 (HappyAbsSyn8  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn8
		 (TmVar happy_var_1 : happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  9 happyReduction_25
happyReduction_25 (HappyAbsSyn10  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn9
		 ([TmSetVar happy_var_1 happy_var_3]
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happyReduce 5 9 happyReduction_26
happyReduction_26 ((HappyAbsSyn9  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 ((TmSetVar happy_var_1 happy_var_3) : happy_var_5
	) `HappyStk` happyRest

happyReduce_27 = happySpecReduce_1  10 happyReduction_27
happyReduction_27 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn10
		 (TmInt happy_var_1
	)
happyReduction_27 _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_1  10 happyReduction_28
happyReduction_28 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn10
		 (TmVar happy_var_1
	)
happyReduction_28 _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  10 happyReduction_29
happyReduction_29 _
	(HappyAbsSyn12  happy_var_2)
	_
	 =  HappyAbsSyn10
		 (TmList happy_var_2
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_2  10 happyReduction_30
happyReduction_30 _
	_
	 =  HappyAbsSyn10
		 (TmList []
	)

happyReduce_31 = happySpecReduce_3  11 happyReduction_31
happyReduction_31 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn11
		 (TmLT happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  11 happyReduction_32
happyReduction_32 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn11
		 (TmGT happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  11 happyReduction_33
happyReduction_33 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn11
		 (TmLTEQ happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  11 happyReduction_34
happyReduction_34 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn11
		 (TmGTEQ happy_var_1 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  11 happyReduction_35
happyReduction_35 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn11
		 (TmEQ happy_var_1 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  11 happyReduction_36
happyReduction_36 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn11
		 (TmNEQ happy_var_1 happy_var_3
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  11 happyReduction_37
happyReduction_37 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (TmAnd happy_var_1 happy_var_3
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  11 happyReduction_38
happyReduction_38 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (TmOr happy_var_1 happy_var_3
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_1  11 happyReduction_39
happyReduction_39 _
	 =  HappyAbsSyn11
		 (TmTrue
	)

happyReduce_40 = happySpecReduce_1  11 happyReduction_40
happyReduction_40 _
	 =  HappyAbsSyn11
		 (TmFalse
	)

happyReduce_41 = happySpecReduce_3  11 happyReduction_41
happyReduction_41 _
	(HappyAbsSyn11  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (happy_var_2
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_1  12 happyReduction_42
happyReduction_42 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn12
		 ([TmInt happy_var_1]
	)
happyReduction_42 _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  12 happyReduction_43
happyReduction_43 (HappyAbsSyn12  happy_var_3)
	_
	(HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn12
		 ((TmInt happy_var_1) : happy_var_3
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 50 50 notHappyAtAll (HappyState action) sts stk []

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
	TokenGet _ -> cont 48;
	TokenRemove _ -> cont 49;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 50 tk tks = happyError' (tks, explist)
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

          | TmGet Expr Expr
          | TmRemove Expr Expr

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

