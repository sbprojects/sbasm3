                .LF     test.lst
;---------------------------------------------------------------------------
;   MAB8400.ASM
;
;   Opcode test for the SB-Assembler MAB8400 cross
;
;---------------------------------------------------------------------------

                .CR     MAB8400         You know what this does
                .TF     test.hex,hex
                .LI     TON

;---------------------------------------------------------------------------
;   Branch instructions
;---------------------------------------------------------------------------

                JB0     TEST
                JB1     TEST
                JB2     TEST
                JB3     TEST
                JB4     TEST
                JB5     TEST
                JB6     TEST
                JB7     TEST
TEST            JC      TEST
                JNC     TEST
                JNT0    TEST
                JNT1    TEST
                JNTF    TEST
                JNZ     TEST
                JTF     TEST
                JT0     TEST
                JT1     TEST
                JZ      TEST

;---------------------------------------------------------------------------
;   Single operand instructions
;---------------------------------------------------------------------------

                CLR     A
                CLR     C
                CPL     A
                CPL     C
                DA      A
                DEC     A
                DEC     R0
                DEC     R1
                DEC     R2
                DEC     R3
                DEC     R4
                DEC     R5
                DEC     R6
                DEC     R7
                DEC     @R0
                DEC     @R1
                INC     A
                INC     R0
                INC     R1
                INC     R2
                INC     R3
                INC     R4
                INC     R5
                INC     R6
                INC     R7
                INC     @R0
                INC     @R1
                RL      A
                RLC     A
                RR      A
                RRC     A
                SWAP    A

;---------------------------------------------------------------------------
;   Special instructions
;---------------------------------------------------------------------------

                DIS     I
                DIS     TCNTI
                DIS     SI              New instruction
                EN      I               New instruction
                EN      SI
                EN      TCNTI
                JMPP    @A
                SEL     MB0
                SEL     MB1
                SEL     MB2             New instruction
                SEL     MB3             New instruction
                SEL     RB0
                SEL     RB1
                STOP    TCNT
                STRT    CNT
                STRT    T

;---------------------------------------------------------------------------
;   Implied instructions
;---------------------------------------------------------------------------

                NOP
                RET
                RETR

;---------------------------------------------------------------------------
;   Math instructions
;---------------------------------------------------------------------------

                ADD     A,R0
                ADD     A,R1
                ADD     A,R2
                ADD     A,R3
                ADD     A,R4
                ADD     A,R5
                ADD     A,R6
                ADD     A,R7
                ADD     A,@R0
                ADD     A,@R1
                ADD     A,#$12
                ADDC    A,R0
                ADDC    A,R1
                ADDC    A,R2
                ADDC    A,R3
                ADDC    A,R4
                ADDC    A,R5
                ADDC    A,R6
                ADDC    A,R7
                ADDC    A,@R0
                ADDC    A,@R1
                ADDC    A,#$12
                ANL     A,R0
                ANL     A,R1
                ANL     A,R2
                ANL     A,R3
                ANL     A,R4
                ANL     A,R5
                ANL     A,R6
                ANL     A,R7
                ANL     A,@R0
                ANL     A,@R1
                ANL     A,#$12
                ANL     P0,#$12
                ANL     P1,#$12
                ANL     P2,#$12
                ORL     A,R0
                ORL     A,R1
                ORL     A,R2
                ORL     A,R3
                ORL     A,R4
                ORL     A,R5
                ORL     A,R6
                ORL     A,R7
                ORL     A,@R0
                ORL     A,@R1
                ORL     A,#$12
                ORL     P0,#$12
                ORL     P1,#$12
                ORL     P2,#$12
                XCH     A,R0
                XCH     A,R1
                XCH     A,R2
                XCH     A,R3
                XCH     A,R4
                XCH     A,R5
                XCH     A,R6
                XCH     A,R7
                XCH     A,@R0
                XCH     A,@R1
                XCHD    A,@R0
                XCHD    A,@R1
                XRL     A,R0
                XRL     A,R1
                XRL     A,R2
                XRL     A,R3
                XRL     A,R4
                XRL     A,R5
                XRL     A,R6
                XRL     A,R7
                XRL     A,@R0
                XRL     A,@R1
                XRL     A,#$12

;---------------------------------------------------------------------------
;   JMP and CALL instructions
;---------------------------------------------------------------------------

                CALL    TEST
                JMP     TEST

;---------------------------------------------------------------------------
;   IN / OUT  instructions
;---------------------------------------------------------------------------

                IN      A,P0            Changed instruction
                IN      A,P1
                IN      A,P2
                MOVP    A,@A
                OUTL    P0,A            Changed opcode
                OUTL    P1,A
                OUTL    P2,A

;---------------------------------------------------------------------------
;   DJNZ instruction
;---------------------------------------------------------------------------

                DJNZ    R0,TEST
                DJNZ    R1,TEST
                DJNZ    R2,TEST
                DJNZ    R3,TEST
                DJNZ    R4,TEST
                DJNZ    R5,TEST
                DJNZ    R6,TEST
                DJNZ    R7,TEST
                DJNZ    @R0,TEST        New instruction
                DJNZ    @R1,TEST        New instruction

;---------------------------------------------------------------------------
;   MOV instructions
;---------------------------------------------------------------------------

                MOV     A,#$12
                MOV     A,PSW
                MOV     A,R0
                MOV     A,R1
                MOV     A,R2
                MOV     A,R3
                MOV     A,R4
                MOV     A,R5
                MOV     A,R6
                MOV     A,R7
                MOV     A,@R0
                MOV     A,@R1
                MOV     A,S0            New instruction
                MOV     A,S1            New instruction
                MOV     A,T
                MOV     PSW,A
                MOV     R0,A
                MOV     R1,A
                MOV     R2,A
                MOV     R3,A
                MOV     R4,A
                MOV     R5,A
                MOV     R6,A
                MOV     R7,A
                MOV     R0,#$12
                MOV     R1,#$12
                MOV     R2,#$12
                MOV     R3,#$12
                MOV     R4,#$12
                MOV     R5,#$12
                MOV     R6,#$12
                MOV     R7,#$12
                MOV     @R0,A
                MOV     @R1,A
                MOV     @R0,#$12
                MOV     @R1,#$12
                MOV     T,A
                MOV     S0,A            New instruction
                MOV     S1,A            New instruction
                MOV     S2,A            New instruction
                MOV     S0,#$12         New instruction
                MOV     S1,#$12         New instruction
                MOV     S2,#$12         New instruction

;---------------------------------------------------------------------------
;   Immediate data options
;---------------------------------------------------------------------------

                MOV     A,#$12345678
                MOV     A,/$12345678
                MOV     A,=$12345678
                MOV     A,\$12345678
