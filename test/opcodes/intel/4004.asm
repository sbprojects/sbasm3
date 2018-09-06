                .LF     test.lst
;---------------------------------------------------------------------------
;   4004.asm
;
;   Opcode test for the SB-Assembler 4004 cross
;
;---------------------------------------------------------------------------

                .CR 	4004     	    Select the intended overlay
                .TF     test.hex,int
                .LI     TON

                .OR     $0000

;---------------------------------------------------------------------------
;   Implied Addressing Mode Instructions
;---------------------------------------------------------------------------

                NOP

                WRM
                WMP
                WRR
                WPM
                WR0
                WR1
                WR2
                WR3
                SBM
                RDM
                RDR
                ADM
                RD0
                RD1
                RD2
                RD3

                CLB
                CLC
                IAC
                CMC
                CMA
                RAL
                RAR
                TCC
                DAC
                TCS
                STC
                DAA
                KBP
                DCL

;---------------------------------------------------------------------------
;   Pointer Pair Instructions
;---------------------------------------------------------------------------

                SRC     0P
                SRC     1P
                SRC     2P
                SRC     3P
                SRC     4P
                SRC     5P
                SRC     6P
                SRC     7P

                FIN     0P
                FIN     1P
                FIN     2P
                FIN     3P
                FIN     4P
                FIN     5P
                FIN     6P
                FIN     7P

                JIN     0
                JIN     2
                JIN     4
                JIN     6
                JIN     8
                JIN     10
                JIN     12
                JIN     14

;---------------------------------------------------------------------------
;   Pointer Pair Instructions
;---------------------------------------------------------------------------

VALUE           =       $76543210

                BBL     #VALUE
                BBL     #VALUE/16
                BBL     /VALUE
                BBL     /VALUE/16
                BBL     =VALUE
                BBL     =VALUE/16
                BBL     \VALUE
                BBL     \VALUE/16
                BBL     8
                BBL     9
                BBL     10
                BBL     11
                BBL     12
                BBL     13
                BBL     14
                BBL     15

                LDM     #VALUE
                LDM     #VALUE/16
                LDM     /VALUE
                LDM     /VALUE/16
                LDM     =VALUE
                LDM     =VALUE/16
                LDM     \VALUE
                LDM     \VALUE/16
                LDM     8
                LDM     9
                LDM     10
                LDM     11
                LDM     12
                LDM     13
                LDM     14
                LDM     15

;---------------------------------------------------------------------------
;   Register Instructions
;---------------------------------------------------------------------------

                INC     0
                INC     1
                INC     2
                INC     3
                INC     4
                INC     5
                INC     6
                INC     7
                INC     8
                INC     9
                INC     10
                INC     11
                INC     12
                INC     13
                INC     14
                INC     15

                ADD     0
                ADD     1
                ADD     2
                ADD     3
                ADD     4
                ADD     5
                ADD     6
                ADD     7
                ADD     8
                ADD     9
                ADD     10
                ADD     11
                ADD     12
                ADD     13
                ADD     14
                ADD     15

                SUB     0
                SUB     1
                SUB     2
                SUB     3
                SUB     4
                SUB     5
                SUB     6
                SUB     7
                SUB     8
                SUB     9
                SUB     10
                SUB     11
                SUB     12
                SUB     13
                SUB     14
                SUB     15

                LD      0
                LD      1
                LD      2
                LD      3
                LD      4
                LD      5
                LD      6
                LD      7
                LD      8
                LD      9
                LD      10
                LD      11
                LD      12
                LD      13
                LD      14
                LD      15

                XCH     0
                XCH     1
                XCH     2
                XCH     3
                XCH     4
                XCH     5
                XCH     6
                XCH     7
                XCH     8
                XCH     9
                XCH     10
                XCH     11
                XCH     12
                XCH     13
                XCH     14
                XCH     15

;---------------------------------------------------------------------------
;   Pointer Pair Instructions
;---------------------------------------------------------------------------

                JUN     $123
                JMS     $123

;---------------------------------------------------------------------------
;   Pointer Pair Instructions
;---------------------------------------------------------------------------

                FIM     0P,#VALUE
                FIM     1P,/VALUE
                FIM     2P,=VALUE
                FIM     3P,\VALUE
                FIM     4P,0
                FIM     5P,$FF
                FIM     6P,123
                FIM     7P,VALUE

;---------------------------------------------------------------------------
;   ISZ Instruction
;---------------------------------------------------------------------------

DEST
                JCN     0,DEST
                JCN     1,DEST          = JNT
                JCN     2,DEST          = JC
                JCN     3,DEST
                JCN     4,DEST          = JZ
                JCN     5,DEST
                JCN     6,DEST
                JCN     7,DEST
                JCN     8,DEST
                JCN     9,DEST          = JT
                JCN     10,DEST         = JNC
                JCN     11,DEST
                JCN     12,DEST         = JNZ
                JCN     13,DEST
                JCN     14,DEST
                JCN     15,DEST

                ISZ     0,DEST
                ISZ     1,DEST
                ISZ     2,DEST
                ISZ     3,DEST
                ISZ     4,DEST
                ISZ     5,DEST
                ISZ     6,DEST
                ISZ     7,DEST
                ISZ     8,DEST
                ISZ     9,DEST
                ISZ     10,DEST
                ISZ     11,DEST
                ISZ     12,DEST
                ISZ     13,DEST
                ISZ     14,DEST
                ISZ     15,DEST

;---------------------------------------------------------------------------
;   Branch Instructions
;---------------------------------------------------------------------------

                JNT     DEST
                JC      DEST
                JZ      DEST
                JT      DEST
                JNC     DEST
                JNZ     DEST
