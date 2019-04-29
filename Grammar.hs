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
happyExpList = Happy_Data_Array.listArray (0,252) ([0,0,24576,0,0,0,4,0,16384,0,0,0,0,0,0,64,0,8,0,0,144,2592,1280,0,0,8,0,0,32,0,1008,0,48,0,0,0,0,0,2048,0,7168,32768,0,0,32,0,144,2560,1280,256,0,1,36864,0,10,5,9,160,80,0,32768,0,0,64,0,36864,0,8,0,0,0,4,16128,0,256,0,384,2048,0,63,0,1,0,256,0,0,256,0,0,0,0,0,63,4,3,15,160,80,144,2560,1280,2304,40960,20480,36864,0,10,5,9,0,0,144,0,0,2304,40960,20480,36864,0,10,5,9,160,80,144,2560,1280,2304,40960,20480,36864,0,10,5,9,160,80,144,2560,1280,2304,41472,20480,0,0,0,0,0,0,0,16128,0,768,61440,3,4096,0,0,0,0,512,0,0,8192,0,0,0,2,0,0,60,0,0,960,0,0,0,0,0,0,0,2048,0,0,32768,0,0,0,0,16128,0,0,61440,3,0,0,63,0,3,16368,32768,49,0,1024,3,0,0,0,0,0,0,0,15,160,80,0,0,0,256,0,0,0,0,0,0,0,1024,0,0,256,0,0,0,0,0,0,0,0,8,0,0,144,2592,1280,0,0,0,0,1023,6148,3,0,12352,0,0,16384,0,3840,40960,20480,61440,0,10,5,9,160,80,144,2560,1280,2304,40960,20480,36864,0,10,5,9,160,80,144,2560,1280,2304,0,0,36864,0,0,0,0,0,0,0,0,0,61440,3,12288,0,63,0,3,1008,0,48,16128,0,768,61440,3,12288,0,63,0,3,0,0,0,0,0,0,2304,41472,20480,0,0,0,0,0,2048,0,0,0,0,0,0,0,0,0,128,0,0,8,0,0,16384,0,2304,41472,20480,0,0,128,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Program","Statements","Block","Exp","Outs","Vars","Types","BoolExp","List","int","true","false","var","'+'","'-'","'/'","'*'","'%'","'^'","'<'","'>'","'<='","'>='","'='","'+='","'-='","if","then","else","','","'('","')'","'['","']'","';'","'{'","'}'","'&&'","'||'","'!'","'!='","'=='","globals","start","'|'","'~'","'\\~'","'sum'","%eof"]
        bit_start = st * 52
        bit_end = (st + 1) * 52
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..51]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (46) = happyShift action_4
action_0 (47) = happyShift action_2
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (47) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (39) = happyShift action_6
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (52) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (39) = happyShift action_5
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (16) = happyShift action_19
action_5 (9) = happyGoto action_18
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (13) = happyShift action_11
action_6 (16) = happyShift action_12
action_6 (30) = happyShift action_13
action_6 (34) = happyShift action_14
action_6 (36) = happyShift action_15
action_6 (49) = happyShift action_16
action_6 (51) = happyShift action_17
action_6 (5) = happyGoto action_7
action_6 (6) = happyGoto action_8
action_6 (7) = happyGoto action_9
action_6 (10) = happyGoto action_10
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (40) = happyShift action_44
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (38) = happyShift action_43
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (17) = happyShift action_35
action_9 (18) = happyShift action_36
action_9 (19) = happyShift action_37
action_9 (20) = happyShift action_38
action_9 (21) = happyShift action_39
action_9 (22) = happyShift action_40
action_9 (49) = happyShift action_41
action_9 (50) = happyShift action_42
action_9 _ = happyReduce_5

action_10 _ = happyReduce_22

action_11 (48) = happyShift action_34
action_11 _ = happyReduce_30

action_12 (27) = happyShift action_30
action_12 (28) = happyShift action_31
action_12 (29) = happyShift action_32
action_12 (48) = happyShift action_33
action_12 _ = happyReduce_31

action_13 (34) = happyShift action_29
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (13) = happyShift action_11
action_14 (16) = happyShift action_23
action_14 (34) = happyShift action_14
action_14 (36) = happyShift action_15
action_14 (49) = happyShift action_16
action_14 (51) = happyShift action_17
action_14 (7) = happyGoto action_28
action_14 (10) = happyGoto action_10
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (13) = happyShift action_26
action_15 (37) = happyShift action_27
action_15 (12) = happyGoto action_25
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (13) = happyShift action_11
action_16 (16) = happyShift action_23
action_16 (34) = happyShift action_14
action_16 (36) = happyShift action_15
action_16 (49) = happyShift action_16
action_16 (51) = happyShift action_17
action_16 (7) = happyGoto action_24
action_16 (10) = happyGoto action_10
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (13) = happyShift action_11
action_17 (16) = happyShift action_23
action_17 (34) = happyShift action_14
action_17 (36) = happyShift action_15
action_17 (49) = happyShift action_16
action_17 (51) = happyShift action_17
action_17 (7) = happyGoto action_22
action_17 (10) = happyGoto action_10
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (40) = happyShift action_21
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (27) = happyShift action_20
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (13) = happyShift action_71
action_20 (16) = happyShift action_72
action_20 (36) = happyShift action_15
action_20 (10) = happyGoto action_70
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (47) = happyShift action_69
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (17) = happyShift action_35
action_22 (18) = happyShift action_36
action_22 (19) = happyShift action_37
action_22 (20) = happyShift action_38
action_22 (21) = happyShift action_39
action_22 (22) = happyShift action_40
action_22 (49) = happyShift action_41
action_22 _ = happyReduce_18

action_23 (28) = happyShift action_31
action_23 (29) = happyShift action_32
action_23 (48) = happyShift action_33
action_23 _ = happyReduce_31

action_24 (17) = happyShift action_35
action_24 (18) = happyShift action_36
action_24 (19) = happyShift action_37
action_24 (20) = happyShift action_38
action_24 (21) = happyShift action_39
action_24 (22) = happyShift action_40
action_24 (49) = happyShift action_41
action_24 _ = happyReduce_19

action_25 (37) = happyShift action_68
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (33) = happyShift action_67
action_26 _ = happyReduce_45

action_27 _ = happyReduce_33

action_28 (17) = happyShift action_35
action_28 (18) = happyShift action_36
action_28 (19) = happyShift action_37
action_28 (20) = happyShift action_38
action_28 (21) = happyShift action_39
action_28 (22) = happyShift action_40
action_28 (35) = happyShift action_66
action_28 (49) = happyShift action_41
action_28 (50) = happyShift action_42
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (13) = happyShift action_11
action_29 (14) = happyShift action_63
action_29 (15) = happyShift action_64
action_29 (16) = happyShift action_23
action_29 (34) = happyShift action_65
action_29 (36) = happyShift action_15
action_29 (49) = happyShift action_16
action_29 (51) = happyShift action_17
action_29 (7) = happyGoto action_61
action_29 (10) = happyGoto action_10
action_29 (11) = happyGoto action_62
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (13) = happyShift action_11
action_30 (16) = happyShift action_23
action_30 (34) = happyShift action_14
action_30 (36) = happyShift action_15
action_30 (49) = happyShift action_16
action_30 (51) = happyShift action_17
action_30 (7) = happyGoto action_60
action_30 (10) = happyGoto action_10
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (13) = happyShift action_11
action_31 (16) = happyShift action_23
action_31 (34) = happyShift action_14
action_31 (36) = happyShift action_15
action_31 (49) = happyShift action_16
action_31 (51) = happyShift action_17
action_31 (7) = happyGoto action_59
action_31 (10) = happyGoto action_10
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (13) = happyShift action_11
action_32 (16) = happyShift action_23
action_32 (34) = happyShift action_14
action_32 (36) = happyShift action_15
action_32 (49) = happyShift action_16
action_32 (51) = happyShift action_17
action_32 (7) = happyGoto action_58
action_32 (10) = happyGoto action_10
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (13) = happyShift action_55
action_33 (16) = happyShift action_56
action_33 (8) = happyGoto action_57
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (13) = happyShift action_55
action_34 (16) = happyShift action_56
action_34 (8) = happyGoto action_54
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (13) = happyShift action_11
action_35 (16) = happyShift action_23
action_35 (34) = happyShift action_14
action_35 (36) = happyShift action_15
action_35 (49) = happyShift action_16
action_35 (51) = happyShift action_17
action_35 (7) = happyGoto action_53
action_35 (10) = happyGoto action_10
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (13) = happyShift action_11
action_36 (16) = happyShift action_23
action_36 (34) = happyShift action_14
action_36 (36) = happyShift action_15
action_36 (49) = happyShift action_16
action_36 (51) = happyShift action_17
action_36 (7) = happyGoto action_52
action_36 (10) = happyGoto action_10
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (13) = happyShift action_11
action_37 (16) = happyShift action_23
action_37 (34) = happyShift action_14
action_37 (36) = happyShift action_15
action_37 (49) = happyShift action_16
action_37 (51) = happyShift action_17
action_37 (7) = happyGoto action_51
action_37 (10) = happyGoto action_10
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (13) = happyShift action_11
action_38 (16) = happyShift action_23
action_38 (34) = happyShift action_14
action_38 (36) = happyShift action_15
action_38 (49) = happyShift action_16
action_38 (51) = happyShift action_17
action_38 (7) = happyGoto action_50
action_38 (10) = happyGoto action_10
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (13) = happyShift action_11
action_39 (16) = happyShift action_23
action_39 (34) = happyShift action_14
action_39 (36) = happyShift action_15
action_39 (49) = happyShift action_16
action_39 (51) = happyShift action_17
action_39 (7) = happyGoto action_49
action_39 (10) = happyGoto action_10
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (13) = happyShift action_11
action_40 (16) = happyShift action_23
action_40 (34) = happyShift action_14
action_40 (36) = happyShift action_15
action_40 (49) = happyShift action_16
action_40 (51) = happyShift action_17
action_40 (7) = happyGoto action_48
action_40 (10) = happyGoto action_10
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (13) = happyShift action_11
action_41 (16) = happyShift action_23
action_41 (34) = happyShift action_14
action_41 (36) = happyShift action_15
action_41 (49) = happyShift action_16
action_41 (51) = happyShift action_17
action_41 (7) = happyGoto action_47
action_41 (10) = happyGoto action_10
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (13) = happyShift action_11
action_42 (16) = happyShift action_23
action_42 (34) = happyShift action_14
action_42 (36) = happyShift action_15
action_42 (49) = happyShift action_16
action_42 (51) = happyShift action_17
action_42 (7) = happyGoto action_46
action_42 (10) = happyGoto action_10
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (13) = happyShift action_11
action_43 (16) = happyShift action_12
action_43 (30) = happyShift action_13
action_43 (34) = happyShift action_14
action_43 (36) = happyShift action_15
action_43 (49) = happyShift action_16
action_43 (51) = happyShift action_17
action_43 (5) = happyGoto action_45
action_43 (6) = happyGoto action_8
action_43 (7) = happyGoto action_9
action_43 (10) = happyGoto action_10
action_43 _ = happyReduce_4

action_44 _ = happyReduce_1

action_45 _ = happyReduce_3

action_46 (17) = happyShift action_35
action_46 (18) = happyShift action_36
action_46 (19) = happyShift action_37
action_46 (20) = happyShift action_38
action_46 (21) = happyShift action_39
action_46 (22) = happyShift action_40
action_46 (49) = happyShift action_41
action_46 (50) = happyShift action_42
action_46 _ = happyReduce_17

action_47 (17) = happyShift action_35
action_47 (18) = happyShift action_36
action_47 (19) = happyShift action_37
action_47 (20) = happyShift action_38
action_47 (21) = happyShift action_39
action_47 (22) = happyShift action_40
action_47 (49) = happyShift action_41
action_47 _ = happyReduce_16

action_48 _ = happyReduce_13

action_49 (22) = happyShift action_40
action_49 _ = happyReduce_12

action_50 (22) = happyShift action_40
action_50 _ = happyReduce_10

action_51 (22) = happyShift action_40
action_51 _ = happyReduce_11

action_52 (19) = happyShift action_37
action_52 (20) = happyShift action_38
action_52 (21) = happyShift action_39
action_52 (22) = happyShift action_40
action_52 _ = happyReduce_9

action_53 (19) = happyShift action_37
action_53 (20) = happyShift action_38
action_53 (21) = happyShift action_39
action_53 (22) = happyShift action_40
action_53 _ = happyReduce_8

action_54 _ = happyReduce_20

action_55 (48) = happyShift action_88
action_55 _ = happyReduce_24

action_56 (48) = happyShift action_87
action_56 _ = happyReduce_25

action_57 _ = happyReduce_21

action_58 (17) = happyShift action_35
action_58 (18) = happyShift action_36
action_58 (19) = happyShift action_37
action_58 (20) = happyShift action_38
action_58 (21) = happyShift action_39
action_58 (22) = happyShift action_40
action_58 _ = happyReduce_15

action_59 (17) = happyShift action_35
action_59 (18) = happyShift action_36
action_59 (19) = happyShift action_37
action_59 (20) = happyShift action_38
action_59 (21) = happyShift action_39
action_59 (22) = happyShift action_40
action_59 _ = happyReduce_14

action_60 (17) = happyShift action_35
action_60 (18) = happyShift action_36
action_60 (19) = happyShift action_37
action_60 (20) = happyShift action_38
action_60 (21) = happyShift action_39
action_60 (22) = happyShift action_40
action_60 (49) = happyShift action_41
action_60 (50) = happyShift action_42
action_60 _ = happyReduce_6

action_61 (17) = happyShift action_35
action_61 (18) = happyShift action_36
action_61 (19) = happyShift action_37
action_61 (20) = happyShift action_38
action_61 (21) = happyShift action_39
action_61 (22) = happyShift action_40
action_61 (23) = happyShift action_81
action_61 (24) = happyShift action_82
action_61 (25) = happyShift action_83
action_61 (26) = happyShift action_84
action_61 (44) = happyShift action_85
action_61 (45) = happyShift action_86
action_61 (49) = happyShift action_41
action_61 (50) = happyShift action_42
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (35) = happyShift action_78
action_62 (41) = happyShift action_79
action_62 (42) = happyShift action_80
action_62 _ = happyFail (happyExpListPerState 62)

action_63 _ = happyReduce_42

action_64 _ = happyReduce_43

action_65 (13) = happyShift action_11
action_65 (14) = happyShift action_63
action_65 (15) = happyShift action_64
action_65 (16) = happyShift action_23
action_65 (34) = happyShift action_65
action_65 (36) = happyShift action_15
action_65 (49) = happyShift action_16
action_65 (51) = happyShift action_17
action_65 (7) = happyGoto action_76
action_65 (10) = happyGoto action_10
action_65 (11) = happyGoto action_77
action_65 _ = happyFail (happyExpListPerState 65)

action_66 _ = happyReduce_23

action_67 (13) = happyShift action_26
action_67 (12) = happyGoto action_75
action_67 _ = happyFail (happyExpListPerState 67)

action_68 _ = happyReduce_32

action_69 (39) = happyShift action_74
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (33) = happyShift action_73
action_70 _ = happyReduce_28

action_71 _ = happyReduce_30

action_72 _ = happyReduce_31

action_73 (16) = happyShift action_19
action_73 (9) = happyGoto action_102
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (13) = happyShift action_11
action_74 (16) = happyShift action_12
action_74 (30) = happyShift action_13
action_74 (34) = happyShift action_14
action_74 (36) = happyShift action_15
action_74 (49) = happyShift action_16
action_74 (51) = happyShift action_17
action_74 (5) = happyGoto action_101
action_74 (6) = happyGoto action_8
action_74 (7) = happyGoto action_9
action_74 (10) = happyGoto action_10
action_74 _ = happyFail (happyExpListPerState 74)

action_75 _ = happyReduce_46

action_76 (17) = happyShift action_35
action_76 (18) = happyShift action_36
action_76 (19) = happyShift action_37
action_76 (20) = happyShift action_38
action_76 (21) = happyShift action_39
action_76 (22) = happyShift action_40
action_76 (23) = happyShift action_81
action_76 (24) = happyShift action_82
action_76 (25) = happyShift action_83
action_76 (26) = happyShift action_84
action_76 (35) = happyShift action_66
action_76 (44) = happyShift action_85
action_76 (45) = happyShift action_86
action_76 (49) = happyShift action_41
action_76 (50) = happyShift action_42
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (35) = happyShift action_100
action_77 (41) = happyShift action_79
action_77 (42) = happyShift action_80
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (39) = happyShift action_99
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (13) = happyShift action_11
action_79 (14) = happyShift action_63
action_79 (15) = happyShift action_64
action_79 (16) = happyShift action_23
action_79 (34) = happyShift action_65
action_79 (36) = happyShift action_15
action_79 (49) = happyShift action_16
action_79 (51) = happyShift action_17
action_79 (7) = happyGoto action_61
action_79 (10) = happyGoto action_10
action_79 (11) = happyGoto action_98
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (13) = happyShift action_11
action_80 (14) = happyShift action_63
action_80 (15) = happyShift action_64
action_80 (16) = happyShift action_23
action_80 (34) = happyShift action_65
action_80 (36) = happyShift action_15
action_80 (49) = happyShift action_16
action_80 (51) = happyShift action_17
action_80 (7) = happyGoto action_61
action_80 (10) = happyGoto action_10
action_80 (11) = happyGoto action_97
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (13) = happyShift action_11
action_81 (16) = happyShift action_23
action_81 (34) = happyShift action_14
action_81 (36) = happyShift action_15
action_81 (49) = happyShift action_16
action_81 (51) = happyShift action_17
action_81 (7) = happyGoto action_96
action_81 (10) = happyGoto action_10
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (13) = happyShift action_11
action_82 (16) = happyShift action_23
action_82 (34) = happyShift action_14
action_82 (36) = happyShift action_15
action_82 (49) = happyShift action_16
action_82 (51) = happyShift action_17
action_82 (7) = happyGoto action_95
action_82 (10) = happyGoto action_10
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (13) = happyShift action_11
action_83 (16) = happyShift action_23
action_83 (34) = happyShift action_14
action_83 (36) = happyShift action_15
action_83 (49) = happyShift action_16
action_83 (51) = happyShift action_17
action_83 (7) = happyGoto action_94
action_83 (10) = happyGoto action_10
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (13) = happyShift action_11
action_84 (16) = happyShift action_23
action_84 (34) = happyShift action_14
action_84 (36) = happyShift action_15
action_84 (49) = happyShift action_16
action_84 (51) = happyShift action_17
action_84 (7) = happyGoto action_93
action_84 (10) = happyGoto action_10
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (13) = happyShift action_11
action_85 (16) = happyShift action_23
action_85 (34) = happyShift action_14
action_85 (36) = happyShift action_15
action_85 (49) = happyShift action_16
action_85 (51) = happyShift action_17
action_85 (7) = happyGoto action_92
action_85 (10) = happyGoto action_10
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (13) = happyShift action_11
action_86 (16) = happyShift action_23
action_86 (34) = happyShift action_14
action_86 (36) = happyShift action_15
action_86 (49) = happyShift action_16
action_86 (51) = happyShift action_17
action_86 (7) = happyGoto action_91
action_86 (10) = happyGoto action_10
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (13) = happyShift action_55
action_87 (16) = happyShift action_56
action_87 (8) = happyGoto action_90
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (13) = happyShift action_55
action_88 (16) = happyShift action_56
action_88 (8) = happyGoto action_89
action_88 _ = happyFail (happyExpListPerState 88)

action_89 _ = happyReduce_26

action_90 _ = happyReduce_27

action_91 (17) = happyShift action_35
action_91 (18) = happyShift action_36
action_91 (19) = happyShift action_37
action_91 (20) = happyShift action_38
action_91 (21) = happyShift action_39
action_91 (22) = happyShift action_40
action_91 (49) = happyShift action_41
action_91 (50) = happyShift action_42
action_91 _ = happyReduce_38

action_92 (17) = happyShift action_35
action_92 (18) = happyShift action_36
action_92 (19) = happyShift action_37
action_92 (20) = happyShift action_38
action_92 (21) = happyShift action_39
action_92 (22) = happyShift action_40
action_92 (49) = happyShift action_41
action_92 (50) = happyShift action_42
action_92 _ = happyReduce_39

action_93 (17) = happyShift action_35
action_93 (18) = happyShift action_36
action_93 (19) = happyShift action_37
action_93 (20) = happyShift action_38
action_93 (21) = happyShift action_39
action_93 (22) = happyShift action_40
action_93 (49) = happyShift action_41
action_93 (50) = happyShift action_42
action_93 _ = happyReduce_37

action_94 (17) = happyShift action_35
action_94 (18) = happyShift action_36
action_94 (19) = happyShift action_37
action_94 (20) = happyShift action_38
action_94 (21) = happyShift action_39
action_94 (22) = happyShift action_40
action_94 (49) = happyShift action_41
action_94 (50) = happyShift action_42
action_94 _ = happyReduce_36

action_95 (17) = happyShift action_35
action_95 (18) = happyShift action_36
action_95 (19) = happyShift action_37
action_95 (20) = happyShift action_38
action_95 (21) = happyShift action_39
action_95 (22) = happyShift action_40
action_95 (49) = happyShift action_41
action_95 (50) = happyShift action_42
action_95 _ = happyReduce_35

action_96 (17) = happyShift action_35
action_96 (18) = happyShift action_36
action_96 (19) = happyShift action_37
action_96 (20) = happyShift action_38
action_96 (21) = happyShift action_39
action_96 (22) = happyShift action_40
action_96 (49) = happyShift action_41
action_96 (50) = happyShift action_42
action_96 _ = happyReduce_34

action_97 _ = happyReduce_41

action_98 _ = happyReduce_40

action_99 (13) = happyShift action_11
action_99 (16) = happyShift action_12
action_99 (30) = happyShift action_13
action_99 (34) = happyShift action_14
action_99 (36) = happyShift action_15
action_99 (49) = happyShift action_16
action_99 (51) = happyShift action_17
action_99 (5) = happyGoto action_104
action_99 (6) = happyGoto action_8
action_99 (7) = happyGoto action_9
action_99 (10) = happyGoto action_10
action_99 _ = happyFail (happyExpListPerState 99)

action_100 _ = happyReduce_44

action_101 (40) = happyShift action_103
action_101 _ = happyFail (happyExpListPerState 101)

action_102 _ = happyReduce_29

action_103 _ = happyReduce_2

action_104 (40) = happyShift action_105
action_104 _ = happyFail (happyExpListPerState 104)

action_105 (32) = happyShift action_106
action_105 _ = happyFail (happyExpListPerState 105)

action_106 (39) = happyShift action_107
action_106 _ = happyFail (happyExpListPerState 106)

action_107 (13) = happyShift action_11
action_107 (16) = happyShift action_12
action_107 (30) = happyShift action_13
action_107 (34) = happyShift action_14
action_107 (36) = happyShift action_15
action_107 (49) = happyShift action_16
action_107 (51) = happyShift action_17
action_107 (5) = happyGoto action_108
action_107 (6) = happyGoto action_8
action_107 (7) = happyGoto action_9
action_107 (10) = happyGoto action_10
action_107 _ = happyFail (happyExpListPerState 107)

action_108 (40) = happyShift action_109
action_108 _ = happyFail (happyExpListPerState 108)

action_109 _ = happyReduce_7

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
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (TmPower happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  7 happyReduction_14
happyReduction_14 (HappyAbsSyn7  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn7
		 (TmPlusEqual happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  7 happyReduction_15
happyReduction_15 (HappyAbsSyn7  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn7
		 (TmMinusEqual happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  7 happyReduction_16
happyReduction_16 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (TmGet happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  7 happyReduction_17
happyReduction_17 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (TmRemove happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_2  7 happyReduction_18
happyReduction_18 (HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (TmSum happy_var_2
	)
happyReduction_18 _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_2  7 happyReduction_19
happyReduction_19 (HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (TmOutList happy_var_2
	)
happyReduction_19 _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  7 happyReduction_20
happyReduction_20 (HappyAbsSyn8  happy_var_3)
	_
	(HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn7
		 (TmOut ((TmInt happy_var_1) : happy_var_3)
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  7 happyReduction_21
happyReduction_21 (HappyAbsSyn8  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn7
		 (TmOut ((TmVar happy_var_1) : happy_var_3)
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  7 happyReduction_22
happyReduction_22 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  7 happyReduction_23
happyReduction_23 _
	(HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (happy_var_2
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  8 happyReduction_24
happyReduction_24 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn8
		 ([TmInt happy_var_1]
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  8 happyReduction_25
happyReduction_25 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn8
		 ([TmVar happy_var_1]
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  8 happyReduction_26
happyReduction_26 (HappyAbsSyn8  happy_var_3)
	_
	(HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn8
		 (TmInt happy_var_1 : happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  8 happyReduction_27
happyReduction_27 (HappyAbsSyn8  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn8
		 (TmVar happy_var_1 : happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  9 happyReduction_28
happyReduction_28 (HappyAbsSyn10  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn9
		 ([TmSetVar happy_var_1 happy_var_3]
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happyReduce 5 9 happyReduction_29
happyReduction_29 ((HappyAbsSyn9  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 ((TmSetVar happy_var_1 happy_var_3) : happy_var_5
	) `HappyStk` happyRest

happyReduce_30 = happySpecReduce_1  10 happyReduction_30
happyReduction_30 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn10
		 (TmInt happy_var_1
	)
happyReduction_30 _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_1  10 happyReduction_31
happyReduction_31 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn10
		 (TmVar happy_var_1
	)
happyReduction_31 _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  10 happyReduction_32
happyReduction_32 _
	(HappyAbsSyn12  happy_var_2)
	_
	 =  HappyAbsSyn10
		 (TmList happy_var_2
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_2  10 happyReduction_33
happyReduction_33 _
	_
	 =  HappyAbsSyn10
		 (TmList []
	)

happyReduce_34 = happySpecReduce_3  11 happyReduction_34
happyReduction_34 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn11
		 (TmLT happy_var_1 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  11 happyReduction_35
happyReduction_35 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn11
		 (TmGT happy_var_1 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  11 happyReduction_36
happyReduction_36 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn11
		 (TmLTEQ happy_var_1 happy_var_3
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  11 happyReduction_37
happyReduction_37 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn11
		 (TmGTEQ happy_var_1 happy_var_3
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  11 happyReduction_38
happyReduction_38 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn11
		 (TmEQ happy_var_1 happy_var_3
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_3  11 happyReduction_39
happyReduction_39 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn11
		 (TmNEQ happy_var_1 happy_var_3
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  11 happyReduction_40
happyReduction_40 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (TmAnd happy_var_1 happy_var_3
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  11 happyReduction_41
happyReduction_41 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (TmOr happy_var_1 happy_var_3
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_1  11 happyReduction_42
happyReduction_42 _
	 =  HappyAbsSyn11
		 (TmTrue
	)

happyReduce_43 = happySpecReduce_1  11 happyReduction_43
happyReduction_43 _
	 =  HappyAbsSyn11
		 (TmFalse
	)

happyReduce_44 = happySpecReduce_3  11 happyReduction_44
happyReduction_44 _
	(HappyAbsSyn11  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (happy_var_2
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_1  12 happyReduction_45
happyReduction_45 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn12
		 ([TmInt happy_var_1]
	)
happyReduction_45 _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_3  12 happyReduction_46
happyReduction_46 (HappyAbsSyn12  happy_var_3)
	_
	(HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn12
		 ((TmInt happy_var_1) : happy_var_3
	)
happyReduction_46 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 52 52 notHappyAtAll (HappyState action) sts stk []

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
	TokenPower _ -> cont 22;
	TokenLT _ -> cont 23;
	TokenMT _ -> cont 24;
	TokenLTEQ _ -> cont 25;
	TokenMTEQ _ -> cont 26;
	TokenEq _ -> cont 27;
	TokenPlusEquals _ -> cont 28;
	TokenMinusEquals _ -> cont 29;
	TokenIf _ -> cont 30;
	TokenThen _ -> cont 31;
	TokenElse _ -> cont 32;
	TokenComma _ -> cont 33;
	TokenLParen _ -> cont 34;
	TokenRParen _ -> cont 35;
	TokenOpenStream _ -> cont 36;
	TokenCloseStream _ -> cont 37;
	TokenEndStatement _ -> cont 38;
	TokenLeftCurly _ -> cont 39;
	TokenRightCurly _ -> cont 40;
	TokenAnd _ -> cont 41;
	TokenOr _ -> cont 42;
	TokenNot _ -> cont 43;
	TokenNotEqual _ -> cont 44;
	TokenEqual _ -> cont 45;
	TokenGlobals _ -> cont 46;
	TokenStart _ -> cont 47;
	TokenPipe _ -> cont 48;
	TokenGet _ -> cont 49;
	TokenRemove _ -> cont 50;
	TokenSum _ -> cont 51;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 52 tk tks = happyError' (tks, explist)
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
          | TmPower Expr Expr

          | TmPlusEqual String Expr
          | TmMinusEqual String Expr

          | TmGet Expr Expr
          | TmRemove Expr Expr
          | TmSum Expr
          | TmOutList Expr

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

