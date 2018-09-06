                .LF     test.lst
;--------------------------------------------------------------------------
;   Z8.ASM
;
;   Opcode test for the SB-Assembler Z8 cross
;
;--------------------------------------------------------------------------

                .CR     Z8
                .TF     test.hex,hex
                .LI     TON

;--------------------------------------------------------------------------

WORK            .EQ     $74
REG             .EQ     $57
PAIR            .EQ     $36
                .RP     $70             Set register pointer

;--------------------------------------------------------------------------
;   LD INSTRUCTIONS
;--------------------------------------------------------------------------

                LD      R0,#$12
                LD      R15,#$12
                LD      WORK,#$12
                LD      R0,REG
                LD      R14,R15
                LD      WORK,REG
                LD      REG,R0
                LD      REG,WORK
                LD      R0,@R1
                LD      WORK,@WORK+1
                LD      WORK,@REG
                LD      @R1,R0
                LD      @WORK,R15
                LD      REG,REG+1
                LD      REG,@REG+1
                LD      REG,#$12
                LD      @WORK,#$12
                LD      @REG,#$12
                LD      @REG+1,REG
                LD      R0,$71(R2)
                LD      WORK,WORK+1(WORK+2)
                LD      $70(R1),R2
                LD      WORK(WORK+1),WORK+2

;--------------------------------------------------------------------------
;   MATH INSTRUCTIONS
;--------------------------------------------------------------------------

                ADC     R0,R15
                ADC     WORK,R0
                ADC     R0,@R15
                ADC     R15,@WORK
                ADC     REG,REG+1
                ADC     REG,@REG+1
                ADC     R0,#$12
                ADC     WORK,#$12
                ADC     REG,#$12
                ADC     @R0,#$12
                ADC     @WORK,#$12
                ADC     @REG,#$12
                ADD     R0,R15
                ADD     WORK,R0
                ADD     R0,@R15
                ADD     R15,@WORK
                ADD     REG,REG+1
                ADD     REG,@REG+1
                ADD     R0,#$12
                ADD     WORK,#$12
                ADD     REG,#$12
                ADD     @R0,#$12
                ADD     @WORK,#$12
                ADD     @REG,#$12
                AND     R0,R15
                AND     WORK,R0
                AND     R0,@R15
                AND     R15,@WORK
                AND     REG,REG+1
                AND     REG,@REG+1
                AND     R0,#$12
                AND     WORK,#$12
                AND     REG,#$12
                AND     @R0,#$12
                AND     @WORK,#$12
                AND     @REG,#$12
                CP      R0,R15
                CP      WORK,R0
                CP      R0,@R15
                CP      R15,@WORK
                CP      REG,REG+1
                CP      REG,@REG+1
                CP      R0,#$12
                CP      WORK,#$12
                CP      REG,#$12
                CP      @R0,#$12
                CP      @WORK,#$12
                CP      @REG,#$12
                SBC     R0,R15
                SBC     WORK,R0
                SBC     R0,@R15
                SBC     R15,@WORK
                SBC     REG,REG+1
                SBC     REG,@REG+1
                SBC     R0,#$12
                SBC     WORK,#$12
                SBC     REG,#$12
                SBC     @R0,#$12
                SBC     @WORK,#$12
                SBC     @REG,#$12
                SUB     R0,R15
                SUB     WORK,R0
                SUB     R0,@R15
                SUB     R15,@WORK
                SUB     REG,REG+1
                SUB     REG,@REG+1
                SUB     R0,#$12
                SUB     WORK,#$12
                SUB     REG,#$12
                SUB     @R0,#$12
                SUB     @WORK,#$12
                SUB     @REG,#$12
                TCM     R0,R15
                TCM     WORK,R0
                TCM     R0,@R15
                TCM     R15,@WORK
                TCM     REG,REG+1
                TCM     REG,@REG+1
                TCM     R0,#$12
                TCM     WORK,#$12
                TCM     REG,#$12
                TCM     @R0,#$12
                TCM     @WORK,#$12
                TCM     @REG,#$12
                OR      R0,R15
                OR      WORK,R0
                OR      R0,@R15
                OR      R15,@WORK
                OR      REG,REG+1
                OR      REG,@REG+1
                OR      R0,#$12
                OR      WORK,#$12
                OR      REG,#$12
                OR      @R0,#$12
                OR      @WORK,#$12
                OR      @REG,#$12
                TM      R0,R15
                TM      WORK,R0
                TM      R0,@R15
                TM      R15,@WORK
                TM      REG,REG+1
                TM      REG,@REG+1
                TM      R0,#$12
                TM      WORK,#$12
                TM      REG,#$12
                TM      @R0,#$12
                TM      @WORK,#$12
                TM      @REG,#$12
                XOR     R0,R15
                XOR     WORK,R0
                XOR     R0,@R15
                XOR     R15,@WORK
                XOR     REG,REG+1
                XOR     REG,@REG+1
                XOR     R0,#$12
                XOR     WORK,#$12
                XOR     REG,#$12
                XOR     @R0,#$12
                XOR     @WORK,#$12
                XOR     @REG,#$12

;--------------------------------------------------------------------------
;   SINGLE OPERAND INSTRUCTIONS
;--------------------------------------------------------------------------

                CLR     R0
                CLR     WORK
                CLR     REG
                CLR     @R0
                CLR     @WORK
                CLR     @REG
                COM     R0
                COM     WORK
                COM     REG
                COM     @R0
                COM     @WORK
                COM     @REG
                DA      R0
                DA      WORK
                DA      REG
                DA      @R0
                DA      @WORK
                DA      @REG
                DEC     R0
                DEC     WORK
                DEC     REG
                DEC     @R0
                DEC     @WORK
                DEC     @REG
                INC     R0
                INC     WORK
                INC     REG
                INC     @R0
                INC     @WORK
                INC     @REG
                RL      R0
                RL      WORK
                RL      REG
                RL      @R0
                RL      @WORK
                RL      @REG
                RLC     R0
                RLC     WORK
                RLC     REG
                RLC     @R0
                RLC     @WORK
                RLC     @REG
                RR      R0
                RR      WORK
                RR      REG
                RR      @R0
                RR      @WORK
                RR      @REG
                RRC     R0
                RRC     WORK
                RRC     REG
                RRC     @R0
                RRC     @WORK
                RRC     @REG
                SRA     R0
                SRA     WORK
                SRA     REG
                SRA     @R0
                SRA     @WORK
                SRA     @REG
                SWAP    R0
                SWAP    WORK
                SWAP    REG
                SWAP    @R0
                SWAP    @WORK
                SWAP    @REG
                POP     R0
                POP     WORK
                POP     REG
                POP     @R0
                POP     @WORK
                POP     @REG
                PUSH    R0
                PUSH    WORK
                PUSH    REG
                PUSH    @R0
                PUSH    @WORK
                PUSH    @REG

;--------------------------------------------------------------------------
;   IMPLIED INSTRUCTIONS
;--------------------------------------------------------------------------

                CCF
                DI
                EI
                HALT            Only on CMOS devices
                IRET
                NOP
                RCF
                RET
                SCF
                STOP            Only on CMOS devices
                WDH             Only on some CMOS devices
                WDT             Only on CMOS devices

;--------------------------------------------------------------------------
;   BRANCH INSTRUCTIONS
;--------------------------------------------------------------------------

REV             DJNZ    R0,REV
                DJNZ    WORK,REV
                DJNZ    R0,FWD
                DJNZ    WORK,FWD
                JR      F,$+2
                JR      LT,REV
                JR      LE,REV
                JR      ULE,REV
                JR      OV,REV
                JR      MI,REV
                JR      Z,REV
                JR      EQ,REV
                JR      C,REV
                JR      ULT,REV
                JR      REV
                JR      FWD
                JR      GE,FWD
                JR      GT,FWD
                JR      UGT,FWD
                JR      NOV,FWD
                JR      PL,FWD
                JR      NZ,FWD
                JR      NE,FWD
                JR      NC,FWD
                JR      UGE,FWD

;--------------------------------------------------------------------------
;   JP AND CALL INSTRUCTIONS
;--------------------------------------------------------------------------

FWD             CALL    FWD
                CALL    @PAIR
                CALL    @RR4
                JP      F,0
                JP      LT,FWD
                JP      LE,FWD
                JP      ULE,FWD
                JP      OV,FWD
                JP      MI,FWD
                JP      Z,FWD
                JP      EQ,FWD
                JP      C,FWD
                JP      ULT,FWD
                JP      FWD
                JP      GE,FWD
                JP      GT,FWD
                JP      UGT,FWD
                JP      NOV,FWD
                JP      PL,FWD
                JP      NZ,FWD
                JP      NE,FWD
                JP      NC,FWD
                JP      UGE,FWD
                JP      @PAIR
                JP      @RR6

;--------------------------------------------------------------------------
;   WORD INSTRUCTIONS
;--------------------------------------------------------------------------

                DECW    RR0
                DECW    PAIR
                DECW    WORK
                DECW    @R1
                DECW    @WORK
                DECW    @REG
                INCW    RR14
                INCW    PAIR
                INCW    WORK
                INCW    @R1
                INCW    @WORK
                INCW    @REG

;--------------------------------------------------------------------------
;   LOAD MEMORY INSTRUCTIONS
;--------------------------------------------------------------------------

                LDC     R0,@RR2
                LDC     WORK,@RR8
                LDC     R1,@WORK
                LDC     @RR14,R3
                LDC     @WORK,R1
                LDCI    @R5,@RR4
                LDCI    @WORK,@RR6
                LDCI    @RR8,@R7
                LDE     R0,@RR2
                LDE     WORK,@RR8
                LDE     R1,@WORK
                LDE     @RR14,R3
                LDE     @WORK,R1
                LDEI    @R5,@RR4
                LDEI    @WORK,@RR6
                LDEI    @RR8,@R7

;--------------------------------------------------------------------------
;   SRP INSTRUCTION
;--------------------------------------------------------------------------

                SRP     #$20

;--------------------------------------------------------------------------
; Data byte options
;--------------------------------------------------------------------------

                LD      R0,#$12345678
                LD      R0,/$12345678
                LD      R0,=$12345678
                LD      R0,\$12345678

                .DL     $12345678

