VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL Clk
        SIGNAL New_PC(5:0)
        SIGNAL N
        SIGNAL OV
        SIGNAL Z
        SIGNAL C
        SIGNAL PC(5:0)
        SIGNAL PC(5:1)
        SIGNAL Instr(18:16)
        SIGNAL Instr(4:0)
        SIGNAL Instr(23:0)
        SIGNAL Instr(10:7)
        SIGNAL RegDest
        SIGNAL Instr(3:0)
        SIGNAL RegBase
        SIGNAL Instr(18:15)
        SIGNAL Instr(14:11)
        SIGNAL WrReg(3:0)
        SIGNAL XLXN_61(3:0)
        SIGNAL RegWr
        SIGNAL CE_NF
        SIGNAL CE_OVF
        SIGNAL CE_ZF
        SIGNAL CE_CF
        SIGNAL RdData1(15:0)
        SIGNAL RdData2(15:0)
        SIGNAL ALUOP(2:0)
        SIGNAL Instr(23:19)
        SIGNAL MemWr
        SIGNAL Mem2Reg
        SIGNAL Branch
        SIGNAL Instr(8:4)
        SIGNAL INW0(15:0)
        SIGNAL INW1(15:0)
        SIGNAL OUTW0(15:0)
        SIGNAL XLXN_120(15:0)
        SIGNAL ALUOut(15:0)
        SIGNAL WrData(15:0)
        SIGNAL Instr(15:12)
        PORT Input Clk
        PORT Input INW0(15:0)
        PORT Input INW1(15:0)
        PORT Output OUTW0(15:0)
        BEGIN BLOCKDEF PC_Update
            TIMESTAMP 2022 1 12 10 2 15
            RECTANGLE N 64 -512 400 0 
            LINE N 64 -480 0 -480 
            LINE N 64 -416 0 -416 
            LINE N 64 -352 0 -352 
            LINE N 64 -288 0 -288 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 400 -492 464 -468 
            LINE N 400 -480 464 -480 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF ProgCnt
            TIMESTAMP 2022 1 12 9 42 50
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF ROM32x24
            TIMESTAMP 2022 1 13 14 24 35
            RECTANGLE N 64 -64 320 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF MUX2V4
            TIMESTAMP 2022 1 12 10 15 26
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF ctrl
            TIMESTAMP 2022 1 13 14 37 8
            RECTANGLE N 64 -704 320 0 
            RECTANGLE N 0 -684 64 -660 
            LINE N 64 -672 0 -672 
            LINE N 320 -672 384 -672 
            LINE N 320 -608 384 -608 
            LINE N 320 -544 384 -544 
            LINE N 320 -480 384 -480 
            LINE N 320 -416 384 -416 
            LINE N 320 -352 384 -352 
            LINE N 320 -288 384 -288 
            LINE N 320 -224 384 -224 
            LINE N 320 -160 384 -160 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF File_Regs
            TIMESTAMP 2022 1 12 10 31 12
            RECTANGLE N 64 -384 384 0 
            LINE N 64 -352 0 -352 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 384 -364 448 -340 
            LINE N 384 -352 448 -352 
            RECTANGLE N 384 -300 448 -276 
            LINE N 384 -288 448 -288 
        END BLOCKDEF
        BEGIN BLOCKDEF ALU
            TIMESTAMP 2022 1 12 11 7 2
            RECTANGLE N 64 -704 320 0 
            LINE N 64 -672 0 -672 
            LINE N 64 -608 0 -608 
            LINE N 64 -544 0 -544 
            LINE N 64 -480 0 -480 
            LINE N 64 -416 0 -416 
            RECTANGLE N 0 -364 64 -340 
            LINE N 64 -352 0 -352 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -672 384 -672 
            LINE N 320 -512 384 -512 
            LINE N 320 -352 384 -352 
            LINE N 320 -192 384 -192 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF DataMem
            TIMESTAMP 2022 1 12 9 56 0
            RECTANGLE N 64 -384 368 0 
            LINE N 64 -352 0 -352 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 368 -364 432 -340 
            LINE N 368 -352 432 -352 
            RECTANGLE N 368 -44 432 -20 
            LINE N 368 -32 432 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF MUX2V16
            TIMESTAMP 2022 1 13 14 37 30
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 PC_Update
            PIN N N
            PIN OV OV
            PIN Z Z
            PIN C C
            PIN Branch Branch
            PIN PC(5:0) PC(5:0)
            PIN New_PC(5:0) New_PC(5:0)
            PIN BranchType(2:0) Instr(18:16)
            PIN Offset(4:0) Instr(4:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 ProgCnt
            PIN Clk Clk
            PIN New_PC(5:0) New_PC(5:0)
            PIN PC(5:0) PC(5:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 ROM32x24
            PIN Addr(4:0) PC(5:1)
            PIN Data(23:0) Instr(23:0)
        END BLOCK
        BEGIN BLOCK XLXI_8 ALU
            PIN Clk Clk
            PIN CE_CF CE_CF
            PIN CE_NF CE_NF
            PIN CE_OVF CE_OVF
            PIN CE_ZF CE_ZF
            PIN RdData1(15:0) RdData1(15:0)
            PIN RdData2(15:0) RdData2(15:0)
            PIN LSR_lit4(3:0) Instr(3:0)
            PIN BTSTZ_bit4(3:0) Instr(15:12)
            PIN ALUOP(2:0) ALUOP(2:0)
            PIN C C
            PIN N N
            PIN OV OV
            PIN Z Z
            PIN Y(15:0) ALUOut(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_9 DataMem
            PIN Clk Clk
            PIN Wr MemWr
            PIN INW0(15:0) INW0(15:0)
            PIN INW1(15:0) INW1(15:0)
            PIN Addr(4:0) Instr(8:4)
            PIN DataIn(15:0) RdData2(15:0)
            PIN OUTW0(15:0) OUTW0(15:0)
            PIN DataOut(15:0) XLXN_120(15:0)
        END BLOCK
        BEGIN BLOCK U_MUX_RegD MUX2V4
            PIN Y(3:0) WrReg(3:0)
            PIN Sel RegDest
            PIN I0(3:0) Instr(3:0)
            PIN I1(3:0) Instr(10:7)
        END BLOCK
        BEGIN BLOCK XLXI_7 File_Regs
            PIN Clk Clk
            PIN WrEn RegWr
            PIN RdReg1(3:0) XLXN_61(3:0)
            PIN RdReg2(3:0) Instr(3:0)
            PIN WrReg(3:0) WrReg(3:0)
            PIN WrData(15:0) WrData(15:0)
            PIN RdData1(15:0) RdData1(15:0)
            PIN RdData2(15:0) RdData2(15:0)
        END BLOCK
        BEGIN BLOCK U_MUX_Regb MUX2V4
            PIN Y(3:0) XLXN_61(3:0)
            PIN Sel RegBase
            PIN I0(3:0) Instr(14:11)
            PIN I1(3:0) Instr(18:15)
        END BLOCK
        BEGIN BLOCK XLXI_6 ctrl
            PIN OP(4:0) Instr(23:19)
            PIN MemWr MemWr
            PIN Mem2Reg Mem2Reg
            PIN RegWr RegWr
            PIN RegDest RegDest
            PIN RegBase RegBase
            PIN Branch Branch
            PIN CE_NF CE_NF
            PIN CE_OVF CE_OVF
            PIN CE_ZF CE_ZF
            PIN CE_CF CE_CF
            PIN ALUOP(2:0) ALUOP(2:0)
        END BLOCK
        BEGIN BLOCK XLXI_10 MUX2V16
            PIN Sel Mem2Reg
            PIN I0(15:0) ALUOut(15:0)
            PIN I1(15:0) XLXN_120(15:0)
            PIN Y(15:0) WrData(15:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 5440 3520
        BEGIN INSTANCE XLXI_1 896 768 M0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 480 1136 R0
        END INSTANCE
        BEGIN BRANCH Clk
            WIRE 464 1040 480 1040
        END BRANCH
        IOMARKER 464 1040 Clk R180 28
        BEGIN BRANCH New_PC(5:0)
            WIRE 304 288 432 288
            WIRE 304 288 304 672
            WIRE 304 672 304 1104
            WIRE 304 1104 480 1104
            BEGIN DISPLAY 304 672 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH N
            WIRE 896 288 944 288
            WIRE 944 288 1008 288
            BEGIN DISPLAY 944 288 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OV
            WIRE 896 352 944 352
            WIRE 944 352 1008 352
            BEGIN DISPLAY 944 352 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Z
            WIRE 896 416 944 416
            WIRE 944 416 1008 416
            BEGIN DISPLAY 944 416 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH C
            WIRE 896 480 944 480
            WIRE 944 480 1008 480
            BEGIN DISPLAY 944 480 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Branch
            WIRE 896 544 944 544
            WIRE 944 544 1008 544
            BEGIN DISPLAY 944 544 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PC(5:0)
            WIRE 864 1040 960 1040
            WIRE 960 1040 960 1104
            WIRE 960 1104 960 1184
            WIRE 896 736 960 736
            WIRE 960 736 960 864
            WIRE 960 864 960 1040
            BEGIN DISPLAY 960 864 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 960 1104 1056 1104
        BEGIN BRANCH PC(5:1)
            WIRE 1056 1104 1136 1104
            WIRE 1136 1104 1216 1104
            BEGIN DISPLAY 1136 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(18:16)
            WIRE 896 608 992 608
            WIRE 992 608 1072 608
            BEGIN DISPLAY 992 608 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(4:0)
            WIRE 896 672 1184 672
            WIRE 1184 672 1616 672
            BEGIN DISPLAY 1184 672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_3 1216 1136 R0
        END INSTANCE
        BEGIN INSTANCE U_MUX_RegD 1984 1392 R0
            BEGIN DISPLAY 80 24 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Instr(23:0)
            WIRE 1600 1104 1712 1104
            WIRE 1712 1104 1712 1296
            WIRE 1712 1296 1712 1664
            WIRE 1712 1664 1712 1920
            WIRE 1712 1920 1712 2032
            WIRE 1712 544 1712 672
            WIRE 1712 672 1712 752
            WIRE 1712 752 1712 816
            WIRE 1712 816 1712 1024
            WIRE 1712 1024 1712 1104
            BEGIN DISPLAY 1712 1920 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1712 672 1616 672
        BEGIN BRANCH RegDest
            WIRE 1840 1360 1920 1360
            WIRE 1920 1360 1984 1360
            BEGIN DISPLAY 1920 1360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1712 1296 1808 1296
        BEGIN BRANCH Instr(10:7)
            WIRE 1808 1296 1872 1296
            WIRE 1872 1296 1984 1296
            BEGIN DISPLAY 1872 1296 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_7 2704 1184 R0
        END INSTANCE
        BUSTAP 1712 1024 1808 1024
        BEGIN BRANCH Instr(3:0)
            WIRE 1808 1024 1888 1024
            WIRE 1888 1024 2176 1024
            WIRE 2176 1024 2704 1024
            WIRE 1888 1024 1888 1232
            WIRE 1888 1232 1984 1232
            BEGIN DISPLAY 2176 1024 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegBase
            WIRE 1808 880 1904 880
            WIRE 1904 880 1968 880
            BEGIN DISPLAY 1904 880 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(18:15)
            WIRE 1808 816 1856 816
            WIRE 1856 816 1968 816
            BEGIN DISPLAY 1856 816 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(14:11)
            WIRE 1808 752 1856 752
            WIRE 1856 752 1968 752
            BEGIN DISPLAY 1856 752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_MUX_Regb 1968 912 R0
            BEGIN DISPLAY 96 24 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BUSTAP 1712 752 1808 752
        BUSTAP 1712 816 1808 816
        BEGIN BRANCH WrReg(3:0)
            WIRE 2368 1232 2448 1232
            WIRE 2448 1232 2528 1232
            WIRE 2528 1088 2704 1088
            WIRE 2528 1088 2528 1232
            BEGIN DISPLAY 2448 1232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_61(3:0)
            WIRE 2352 752 2528 752
            WIRE 2528 752 2528 960
            WIRE 2528 960 2704 960
        END BRANCH
        BEGIN BRANCH Clk
            WIRE 2608 832 2640 832
            WIRE 2640 832 2704 832
            BEGIN DISPLAY 2640 832 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegWr
            WIRE 2608 896 2656 896
            WIRE 2656 896 2704 896
            BEGIN DISPLAY 2656 896 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RdData1(15:0)
            WIRE 3152 832 3344 832
            WIRE 3344 832 3616 832
            BEGIN DISPLAY 3344 832 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_8 3616 1184 R0
        END INSTANCE
        BEGIN BRANCH RdData2(15:0)
            WIRE 3152 896 3344 896
            WIRE 3344 896 3616 896
            BEGIN DISPLAY 3344 896 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Clk
            WIRE 3504 512 3552 512
            WIRE 3552 512 3616 512
            BEGIN DISPLAY 3552 512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_CF
            WIRE 3504 576 3568 576
            WIRE 3568 576 3616 576
            BEGIN DISPLAY 3568 576 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_NF
            WIRE 3504 640 3552 640
            WIRE 3552 640 3616 640
            BEGIN DISPLAY 3552 640 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_OVF
            WIRE 3504 704 3568 704
            WIRE 3568 704 3616 704
            BEGIN DISPLAY 3568 704 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_ZF
            WIRE 3504 768 3568 768
            WIRE 3568 768 3616 768
            BEGIN DISPLAY 3568 768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH C
            WIRE 4000 512 4016 512
            WIRE 4016 512 4048 512
            BEGIN DISPLAY 4016 512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH N
            WIRE 4000 672 4032 672
            WIRE 4032 672 4064 672
            BEGIN DISPLAY 4032 672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OV
            WIRE 4000 832 4032 832
            WIRE 4032 832 4064 832
            BEGIN DISPLAY 4032 832 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Z
            WIRE 4000 992 4016 992
            WIRE 4016 992 4064 992
            BEGIN DISPLAY 4016 992 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(3:0)
            WIRE 3408 1024 3488 1024
            WIRE 3488 1024 3504 1024
            WIRE 3504 1024 3616 1024
            BEGIN DISPLAY 3504 1024 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(15:12)
            WIRE 3408 1088 3488 1088
            WIRE 3488 1088 3504 1088
            WIRE 3504 1088 3616 1088
            BEGIN DISPLAY 3504 1088 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOP(2:0)
            WIRE 3408 1152 3504 1152
            WIRE 3504 1152 3520 1152
            WIRE 3520 1152 3616 1152
            BEGIN DISPLAY 3504 1152 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(23:19)
            WIRE 1808 1664 1872 1664
            WIRE 1872 1664 1968 1664
            BEGIN DISPLAY 1872 1664 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_6 1968 2336 R0
        END INSTANCE
        BEGIN BRANCH MemWr
            WIRE 2352 1664 2400 1664
            WIRE 2400 1664 2464 1664
            BEGIN DISPLAY 2400 1664 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Mem2Reg
            WIRE 2352 1728 2400 1728
            WIRE 2400 1728 2464 1728
            BEGIN DISPLAY 2400 1728 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegWr
            WIRE 2352 1792 2400 1792
            WIRE 2400 1792 2464 1792
            BEGIN DISPLAY 2400 1792 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegDest
            WIRE 2352 1856 2384 1856
            WIRE 2384 1856 2464 1856
            BEGIN DISPLAY 2384 1856 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegBase
            WIRE 2352 1920 2400 1920
            WIRE 2400 1920 2464 1920
            BEGIN DISPLAY 2400 1920 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Branch
            WIRE 2352 1984 2400 1984
            WIRE 2400 1984 2464 1984
            BEGIN DISPLAY 2400 1984 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_NF
            WIRE 2352 2048 2400 2048
            WIRE 2400 2048 2464 2048
            BEGIN DISPLAY 2400 2048 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_OVF
            WIRE 2352 2112 2400 2112
            WIRE 2400 2112 2464 2112
            BEGIN DISPLAY 2400 2112 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_ZF
            WIRE 2352 2176 2416 2176
            WIRE 2416 2176 2464 2176
            BEGIN DISPLAY 2416 2176 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_CF
            WIRE 2352 2240 2400 2240
            WIRE 2400 2240 2464 2240
            BEGIN DISPLAY 2400 2240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1712 1664 1808 1664
        BEGIN INSTANCE XLXI_9 4384 864 R0
        END INSTANCE
        BEGIN BRANCH Clk
            WIRE 4272 512 4320 512
            WIRE 4320 512 4384 512
            BEGIN DISPLAY 4320 512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MemWr
            WIRE 4272 576 4320 576
            WIRE 4320 576 4384 576
            BEGIN DISPLAY 4320 576 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(8:4)
            WIRE 4272 768 4320 768
            WIRE 4320 768 4384 768
            BEGIN DISPLAY 4320 768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RdData2(15:0)
            WIRE 4256 832 4272 832
            WIRE 4272 832 4384 832
            BEGIN DISPLAY 4272 832 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH INW0(15:0)
            WIRE 4352 640 4384 640
        END BRANCH
        IOMARKER 4352 640 INW0(15:0) R180 28
        BEGIN BRANCH INW1(15:0)
            WIRE 4352 704 4384 704
        END BRANCH
        IOMARKER 4352 704 INW1(15:0) R180 28
        BEGIN BRANCH OUTW0(15:0)
            WIRE 4816 512 4832 512
        END BRANCH
        IOMARKER 4832 512 OUTW0(15:0) R0 28
        BEGIN BRANCH XLXN_120(15:0)
            WIRE 4816 832 4832 832
            WIRE 4832 832 4832 1088
            WIRE 4832 1088 4992 1088
        END BRANCH
        BEGIN BRANCH ALUOut(15:0)
            WIRE 4000 1152 4480 1152
            WIRE 4480 1152 4992 1152
            BEGIN DISPLAY 4480 1152 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_10 4992 1184 R0
        END INSTANCE
        BEGIN BRANCH Mem2Reg
            WIRE 4928 1024 4960 1024
            WIRE 4960 1024 4992 1024
            BEGIN DISPLAY 4960 1024 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WrData(15:0)
            WIRE 2640 1152 2704 1152
            WIRE 2640 1152 2640 1264
            WIRE 2640 1264 3312 1264
            WIRE 3312 1264 5424 1264
            WIRE 5376 1024 5424 1024
            WIRE 5424 1024 5424 1264
            BEGIN DISPLAY 3312 1264 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOP(2:0)
            WIRE 2352 2304 2400 2304
            WIRE 2400 2304 2448 2304
            BEGIN DISPLAY 2400 2304 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
