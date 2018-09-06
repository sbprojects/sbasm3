                .LF     test.lst
;---------------------------------------------------------------------------
;   test-st7.asm
;
;   Opcode test for the SB-Assembler ST7 cross
;
;---------------------------------------------------------------------------

                .CR     ST7
                .TF     test.hex,hex
                .LI     TON

;---------------------------------------------------------------------------
; Some constants used during the test
;---------------------------------------------------------------------------

DATA            .EQ     $56
SHORT           .EQ     $12
LONG            .EQ     $1234
IND             .EQ     $78

;---------------------------------------------------------------------------
; Inherent instructions
;---------------------------------------------------------------------------

                HALT
                IRET
                NOP
                RCF
                RET
                RIM
                RSP
                SCF
                SIM
                TRAP
                WFI

;---------------------------------------------------------------------------
; Instructions with only the Accu as destination
;---------------------------------------------------------------------------

                ADC     A,#DATA
                ADC     A,SHORT
                ADC     A,LONG
                ADC     A,(X)
                ADC     A,(SHORT,X)
                ADC     A,(LONG,X)
                ADC     A,(Y)
                ADC     A,(SHORT,Y)
                ADC     A,(LONG,Y)
                ADC     A,[IND]
                ADC     A,[IND.W]
                ADC     A,([IND],X)
                ADC     A,([IND.W],X)
                ADC     A,([IND],Y)
                ADC     A,([IND.W],Y)

                ADD     A,#DATA
                ADD     A,SHORT
                ADD     A,LONG
                ADD     A,(X)
                ADD     A,(SHORT,X)
                ADD     A,(LONG,X)
                ADD     A,(Y)
                ADD     A,(SHORT,Y)
                ADD     A,(LONG,Y)
                ADD     A,[IND]
                ADD     A,[IND.W]
                ADD     A,([IND],X)
                ADD     A,([IND.W],X)
                ADD     A,([IND],Y)
                ADD     A,([IND.W],Y)

                AND     A,#DATA
                AND     A,SHORT
                AND     A,LONG
                AND     A,(X)
                AND     A,(SHORT,X)
                AND     A,(LONG,X)
                AND     A,(Y)
                AND     A,(SHORT,Y)
                AND     A,(LONG,Y)
                AND     A,[IND]
                AND     A,[IND.W]
                AND     A,([IND],X)
                AND     A,([IND.W],X)
                AND     A,([IND],Y)
                AND     A,([IND.W],Y)

                BCP     A,#DATA
                BCP     A,SHORT
                BCP     A,LONG
                BCP     A,(X)
                BCP     A,(SHORT,X)
                BCP     A,(LONG,X)
                BCP     A,(Y)
                BCP     A,(SHORT,Y)
                BCP     A,(LONG,Y)
                BCP     A,[IND]
                BCP     A,[IND.W]
                BCP     A,([IND],X)
                BCP     A,([IND.W],X)
                BCP     A,([IND],Y)
                BCP     A,([IND.W],Y)

                OR      A,#DATA
                OR      A,SHORT
                OR      A,LONG
                OR      A,(X)
                OR      A,(SHORT,X)
                OR      A,(LONG,X)
                OR      A,(Y)
                OR      A,(SHORT,Y)
                OR      A,(LONG,Y)
                OR      A,[IND]
                OR      A,[IND.W]
                OR      A,([IND],X)
                OR      A,([IND.W],X)
                OR      A,([IND],Y)
                OR      A,([IND.W],Y)

                SBC     A,#DATA
                SBC     A,SHORT
                SBC     A,LONG
                SBC     A,(X)
                SBC     A,(SHORT,X)
                SBC     A,(LONG,X)
                SBC     A,(Y)
                SBC     A,(SHORT,Y)
                SBC     A,(LONG,Y)
                SBC     A,[IND]
                SBC     A,[IND.W]
                SBC     A,([IND],X)
                SBC     A,([IND.W],X)
                SBC     A,([IND],Y)
                SBC     A,([IND.W],Y)

                SUB     A,#DATA
                SUB     A,SHORT
                SUB     A,LONG
                SUB     A,(X)
                SUB     A,(SHORT,X)
                SUB     A,(LONG,X)
                SUB     A,(Y)
                SUB     A,(SHORT,Y)
                SUB     A,(LONG,Y)
                SUB     A,[IND]
                SUB     A,[IND.W]
                SUB     A,([IND],X)
                SUB     A,([IND.W],X)
                SUB     A,([IND],Y)
                SUB     A,([IND.W],Y)

                XOR     A,#DATA
                XOR     A,SHORT
                XOR     A,LONG
                XOR     A,(X)
                XOR     A,(SHORT,X)
                XOR     A,(LONG,X)
                XOR     A,(Y)
                XOR     A,(SHORT,Y)
                XOR     A,(LONG,Y)
                XOR     A,[IND]
                XOR     A,[IND.W]
                XOR     A,([IND],X)
                XOR     A,([IND.W],X)
                XOR     A,([IND],Y)
                XOR     A,([IND.W],Y)

                LD      A,#DATA
                LD      A,SHORT
                LD      A,LONG
                LD      A,(X)
                LD      A,(SHORT,X)
                LD      A,(LONG,X)
                LD      A,(Y)
                LD      A,(SHORT,Y)
                LD      A,(LONG,Y)
                LD      A,[IND]
                LD      A,[IND.W]
                LD      A,([IND],X)
                LD      A,([IND.W],X)
                LD      A,([IND],Y)
                LD      A,([IND.W],Y)

                LD      SHORT,A
                LD      LONG,A
                LD      (X),A
                LD      (SHORT,X),A
                LD      (LONG,X),A
                LD      (Y),A
                LD      (SHORT,Y),A
                LD      (LONG,Y),A
                LD      [IND],A
                LD      [IND.W],A
                LD      ([IND],X),A
                LD      ([IND.W],X),A
                LD      ([IND],Y),A
                LD      ([IND.W],Y),A

                LD      X,#DATA
                LD      X,SHORT
                LD      X,LONG
                LD      X,(X)
                LD      X,(SHORT,X)
                LD      X,(LONG,X)
                LD      X,[IND]
                LD      X,[IND.W]
                LD      X,([IND],X)
                LD      X,([IND.W],X)

                LD      SHORT,X
                LD      LONG,X
                LD      (X),X
                LD      (SHORT,X),X
                LD      (LONG,X),X
                LD      [IND],X
                LD      [IND.W],X
                LD      ([IND],X),X
                LD      ([IND.W],X),X

                LD      Y,#DATA
                LD      Y,SHORT
                LD      Y,LONG
                LD      Y,(Y)
                LD      Y,(SHORT,Y)
                LD      Y,(LONG,Y)
                LD      Y,[IND]
                LD      Y,[IND.W]
                LD      Y,([IND],Y)
                LD      Y,([IND.W],Y)

                LD      SHORT,Y
                LD      LONG,Y
                LD      (Y),Y
                LD      (SHORT,Y),Y
                LD      (LONG,Y),Y
                LD      [IND],Y
                LD      [IND.W],Y
                LD      ([IND],Y),Y
                LD      ([IND.W],Y),Y

                LD      X,A
                LD      A,X
                LD      Y,A
                LD      A,Y
                LD      Y,X
                LD      X,Y
                LD      A,S
                LD      S,A
                LD      X,S
                LD      S,X
                LD      Y,S
                LD      S,Y

                CP      A,#DATA
                CP      A,SHORT
                CP      A,LONG
                CP      A,(X)
                CP      A,(SHORT,X)
                CP      A,(LONG,X)
                CP      A,(Y)
                CP      A,(SHORT,Y)
                CP      A,(LONG,Y)
                CP      A,[IND]
                CP      A,[IND.W]
                CP      A,([IND],X)
                CP      A,([IND.W],X)
                CP      A,([IND],Y)
                CP      A,([IND.W],Y)

                CP      X,#DATA
                CP      X,SHORT
                CP      X,LONG
                CP      X,(X)
                CP      X,(SHORT,X)
                CP      X,(LONG,X)
                CP      X,[IND]
                CP      X,[IND.W]
                CP      X,([IND],X)
                CP      X,([IND.W],X)

                CP      Y,#DATA
                CP      Y,SHORT
                CP      Y,LONG
                CP      Y,(Y)
                CP      Y,(SHORT,Y)
                CP      Y,(LONG,Y)
                CP      Y,[IND]
                CP      Y,[IND.W]
                CP      Y,([IND],Y)
                CP      Y,([IND.W],Y)

                CALL    SHORT
                CALL    LONG
                CALL    (X)
                CALL    (SHORT,X)
                CALL    (LONG,X)
                CALL    (Y)
                CALL    (SHORT,Y)
                CALL    (LONG,Y)
                CALL    [IND]
                CALL    [IND.W]
                CALL    ([IND],X)
                CALL    ([IND.W],X)
                CALL    ([IND],Y)
                CALL    ([IND.W],Y)

                CLR     A
                CLR     X
                CLR     Y
                CLR     SHORT
                CLR     (X)
                CLR     (SHORT,X)
                CLR     (Y)
                CLR     (SHORT,Y)
                CLR     [IND]
                CLR     ([IND],X)
                CLR     ([IND],Y)

                CPL     A
                CPL     X
                CPL     Y
                CPL     SHORT
                CPL     (X)
                CPL     (SHORT,X)
                CPL     (Y)
                CPL     (SHORT,Y)
                CPL     [IND]
                CPL     ([IND],X)
                CPL     ([IND],Y)

                DEC     A
                DEC     X
                DEC     Y
                DEC     SHORT
                DEC     (X)
                DEC     (SHORT,X)
                DEC     (Y)
                DEC     (SHORT,Y)
                DEC     [IND]
                DEC     ([IND],X)
                DEC     ([IND],Y)

                INC     A
                INC     X
                INC     Y
                INC     SHORT
                INC     (X)
                INC     (SHORT,X)
                INC     (Y)
                INC     (SHORT,Y)
                INC     [IND]
                INC     ([IND],X)
                INC     ([IND],Y)

                JP      SHORT
                JP      LONG
                JP      (X)
                JP      (SHORT,X)
                JP      (LONG,X)
                JP      (Y)
                JP      (SHORT,Y)
                JP      (LONG,Y)
                JP      [IND]
                JP      [IND.W]
                JP      ([IND],X)
                JP      ([IND.W],X)
                JP      ([IND],Y)
                JP      ([IND.W],Y)

                NEG     A
                NEG     X
                NEG     Y
                NEG     SHORT
                NEG     (X)
                NEG     (SHORT,X)
                NEG     (Y)
                NEG     (SHORT,Y)
                NEG     [IND]
                NEG     ([IND],X)
                NEG     ([IND],Y)

                RLC     A
                RLC     X
                RLC     Y
                RLC     SHORT
                RLC     (X)
                RLC     (SHORT,X)
                RLC     (Y)
                RLC     (SHORT,Y)
                RLC     [IND]
                RLC     ([IND],X)
                RLC     ([IND],Y)

                RRC     A
                RRC     X
                RRC     Y
                RRC     SHORT
                RRC     (X)
                RRC     (SHORT,X)
                RRC     (Y)
                RRC     (SHORT,Y)
                RRC     [IND]
                RRC     ([IND],X)
                RRC     ([IND],Y)

                SLA     A
                SLA     X
                SLA     Y
                SLA     SHORT
                SLA     (X)
                SLA     (SHORT,X)
                SLA     (Y)
                SLA     (SHORT,Y)
                SLA     [IND]
                SLA     ([IND],X)
                SLA     ([IND],Y)

                SLL     A
                SLL     X
                SLL     Y
                SLL     SHORT
                SLL     (X)
                SLL     (SHORT,X)
                SLL     (Y)
                SLL     (SHORT,Y)
                SLL     [IND]
                SLL     ([IND],X)
                SLL     ([IND],Y)

                SRA     A
                SRA     X
                SRA     Y
                SRA     SHORT
                SRA     (X)
                SRA     (SHORT,X)
                SRA     (Y)
                SRA     (SHORT,Y)
                SRA     [IND]
                SRA     ([IND],X)
                SRA     ([IND],Y)

                SRL     A
                SRL     X
                SRL     Y
                SRL     SHORT
                SRL     (X)
                SRL     (SHORT,X)
                SRL     (Y)
                SRL     (SHORT,Y)
                SRL     [IND]
                SRL     ([IND],X)
                SRL     ([IND],Y)

                SWAP    A
                SWAP    X
                SWAP    Y
                SWAP    SHORT
                SWAP    (X)
                SWAP    (SHORT,X)
                SWAP    (Y)
                SWAP    (SHORT,Y)
                SWAP    [IND]
                SWAP    ([IND],X)
                SWAP    ([IND],Y)

                TNZ     A
                TNZ     X
                TNZ     Y
                TNZ     SHORT
                TNZ     (X)
                TNZ     (SHORT,X)
                TNZ     (Y)
                TNZ     (SHORT,Y)
                TNZ     [IND]
                TNZ     ([IND],X)
                TNZ     ([IND],Y)

                POP     A
                POP     X
                POP     Y
                POP     CC

                PUSH    A
                PUSH    X
                PUSH    Y
                PUSH    CC

                MUL     X,A
                MUL     Y,A

BACK            CALLR   BACK
                CALLR   [IND]
                JRA     BACK
                JRA     [IND]
                JRC     BACK
                JRC     [IND]
                JREQ    BACK
                JREQ    [IND]
                JRF     BACK
                JRF     [IND]
                JRH     BACK
                JRH     [IND]
                JRIH    BACK
                JRIH    [IND]
                JRIL    BACK
                JRIL    [IND]
                JRM     BACK
                JRM     [IND]
                JRMI    BACK
                JRMI    [IND]
                JRNC    FORW
                JRNC    [IND]
                JRNE    FORW
                JRNE    [IND]
                JRNH    FORW
                JRNH    [IND]
                JRNM    FORW
                JRNM    [IND]
                JRPL    FORW
                JRPL    [IND]
                JRT     FORW
                JRT     [IND]
                JRUGE   FORW
                JRUGE   [IND]
                JRUGT   FORW
                JRUGT   [IND]
                JRULE   FORW
                JRULE   [IND]
                JRULT   FORW
                JRULT   [IND]

                BRES    SHORT,#0
                BRES    [IND],#1
                BSET    SHORT,#2
                BSET    [IND],#3
                BTJF    SHORT,#4,FORW
                BTJF    [IND],#5,FORW
                BTJT    SHORT,#6,BACK
FORW            BTJT    [IND],#7,BACK

