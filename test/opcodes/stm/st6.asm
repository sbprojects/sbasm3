                .LF     test.lst
;---------------------------------------------------------------------------
;   ST6.ASM
;
;   Opcode test for the SB-Assembler ST6 cross
;
;---------------------------------------------------------------------------

                .CR     ST6     And now for something completely different
                .TF     test.hex,hex
                .LI     TON

;---------------------------------------------------------------------------
;   Just some data
;---------------------------------------------------------------------------

DATA            .EQ     $12
VALUE           .EQ     $12345678

;---------------------------------------------------------------------------
;   Inherent addressing mode instructions
;---------------------------------------------------------------------------

                NOP                     Is actually JRZ $+1
                RET
                RETI
                STOP
                WAIT

;---------------------------------------------------------------------------
;   Single operand instructions
;---------------------------------------------------------------------------

                CLR     A               Is actually SUB A,A
                CLR     X               Is actually LD  X,0
                CLR     Y               Is actually LD  Y,0
                CLR     V               Is actually LD  V,0
                CLR     W               Is actually LD  W,0
                CLR     DATA            Is actually LD  data,0

                COM     A

                DEC     A               Is acutally DEC data
                DEC     X
                DEC     Y
                DEC     V
                DEC     W
                DEC     (X)
                DEC     (Y)
                DEC     DATA

                INC     A
                INC     X
                INC     Y
                INC     V
                INC     W
                INC     (X)
                INC     (Y)
                INC     DATA

                RLC     A
                SLA     A               Is actually ADD A,A

;---------------------------------------------------------------------------
;   Math instructions
;---------------------------------------------------------------------------

                ADD     A,A
                ADD     A,X
                ADD     A,Y
                ADD     A,V
                ADD     A,W
                ADD     A,(X)
                ADD     A,(Y)
                ADD     A,DATA

                AND     A,A
                AND     A,X
                AND     A,Y
                AND     A,V
                AND     A,W
                AND     A,(X)
                AND     A,(Y)
                AND     A,DATA

                CP      A,A
                CP      A,X
                CP      A,Y
                CP      A,V
                CP      A,W
                CP      A,(X)
                CP      A,(Y)
                CP      A,DATA

                SUB     A,A
                SUB     A,X
                SUB     A,Y
                SUB     A,V
                SUB     A,W
                SUB     A,(X)
                SUB     A,(Y)
                SUB     A,DATA

;---------------------------------------------------------------------------
;   Immediate instructions
;---------------------------------------------------------------------------

                ADDI    A,VALUE
                ANDI    A,VALUE
                CPI     A,VALUE
                SUBI    A,VALUE

                LDI     A,VALUE
                LDI     X,VALUE
                LDI     Y,VALUE
                LDI     V,VALUE
                LDI     W,VALUE
                LDI     DATA,VALUE

                LDI     A,#VALUE        Forced imm low byte of low word
                LDI     A,/VALUE        Forced imm high byte of low word
                LDI     A,=VALUE        Forced imm low byte of high word
                LDI     A,\VALUE        Forced imm high byte of high word

;---------------------------------------------------------------------------
;   LD instructions
;---------------------------------------------------------------------------

                LD      A,A
                LD      A,X
                LD      A,Y
                LD      A,V
                LD      A,W
                LD      A,(X)
                LD      A,(Y)
                LD      A,DATA
                LD      X,A
                LD      Y,A
                LD      V,A
                LD      W,A
                LD      (X),A
                LD      (Y),A
                LD      DATA,A

;---------------------------------------------------------------------------
;   Bit manipulation instructions
;---------------------------------------------------------------------------

                RES     0,A
                RES     1,A
                RES     2,A
                RES     3,A
                RES     4,A
                RES     5,A
                RES     6,A
                RES     7,A
                RES     0,DATA
                RES     1,DATA
                RES     2,DATA
                RES     3,DATA
                RES     4,DATA
                RES     5,DATA
                RES     6,DATA
                RES     7,DATA
                RES     0,X
                RES     1,Y
                RES     2,V
                RES     3,W

                SET     0,A
                SET     1,A
                SET     2,A
                SET     3,A
                SET     4,A
                SET     5,A
                SET     6,A
                SET     7,A
                SET     0,DATA
                SET     1,DATA
                SET     2,DATA
                SET     3,DATA
                SET     4,DATA
                SET     5,DATA
                SET     6,DATA
                SET     7,DATA
                SET     4,X
                SET     5,Y
                SET     6,V
                SET     7,W

;---------------------------------------------------------------------------
;   Branch instructions
;---------------------------------------------------------------------------

                JRC     DESTINATION
                JRNC    DESTINATION
                JRNZ    DESTINATION
                JRZ     DESTINATION

;---------------------------------------------------------------------------
;   Bit Test instructions
;---------------------------------------------------------------------------

DESTINATION     JRR     0, DATA, DESTINATION
                JRR     1, A, DESTINATION
                JRR     2, X, DESTINATION
                JRR     3, Y, DESTINATION
                JRR     4, V, DESTINATION
                JRR     5, W, DESTINATION
                JRR     6, DATA, DESTINATION
                JRR     7, DATA, DESTINATION

                JRS     0, DATA, DESTINATION
                JRS     1, A, DESTINATION
                JRS     2, X, DESTINATION
                JRS     3, Y, DESTINATION
                JRS     4, V, DESTINATION
                JRS     5, W, DESTINATION
                JRS     6, DATA, DESTINATION
                JRS     7, DATA, DESTINATION

;---------------------------------------------------------------------------
;   Extended addressing instructions
;---------------------------------------------------------------------------

                CALL    DESTINATION
                JP      DESTINATION


