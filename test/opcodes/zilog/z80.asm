                .LF     test.lst
;---------------------------------------------------------------------------
;   Z80.ASM
;
;   Opcode test for the SB-Assembler Z80 cross
;
;---------------------------------------------------------------------------

                .CR     Z80             It's a Z80 assembler now
                .TF     test.hex,hex
                .LI     TON

;---------------------------------------------------------------------------
;   Inherent addressing mode instructions
;---------------------------------------------------------------------------

                CCF
                CPL
                DAA
                DI
                EI
                EXX
                HALT
                NOP
                RLA
                RLCA
                RRA
                RRCA
                SCF

                CPD
                CPDR
                CPI
                CPIR
                IND
                INDR
                INI
                INIR
                LDD
                LDDR
                LDI
                LDIR
                NEG
                OTDR
                OTIR
                OUTD
                OUTI
                RCF                     Compound instruction
                RETI
                RETN
                RLD
                RRD

;---------------------------------------------------------------------------
;   LD instructions
;---------------------------------------------------------------------------

                LD      A,A
                LD      A,B
                LD      A,C
                LD      A,D
                LD      A,E
                LD      A,H
                LD      A,L

                LD      B,A
                LD      B,B
                LD      B,C
                LD      B,D
                LD      B,E
                LD      B,H
                LD      B,L

                LD      C,A
                LD      C,B
                LD      C,C
                LD      C,D
                LD      C,E
                LD      C,H
                LD      C,L

                LD      D,A
                LD      D,B
                LD      D,C
                LD      D,D
                LD      D,E
                LD      D,H
                LD      D,L

                LD      E,A
                LD      E,B
                LD      E,C
                LD      E,D
                LD      E,E
                LD      E,H
                LD      E,L

                LD      H,A
                LD      H,B
                LD      H,C
                LD      H,D
                LD      H,E
                LD      H,H
                LD      H,L

                LD      L,A
                LD      L,B
                LD      L,C
                LD      L,D
                LD      L,E
                LD      L,H
                LD      L,L

                LD      A,(HL)
                LD      B,(HL)
                LD      C,(HL)
                LD      D,(HL)
                LD      E,(HL)
                LD      H,(HL)
                LD      L,(HL)

                LD      A,DATA
                LD      B,DATA
                LD      C,DATA
                LD      D,DATA
                LD      E,DATA
                LD      H,DATA
                LD      L,DATA
                LD      (HL),DATA
                LD      (IX+2),DATA
                LD      (IY+2),DATA

                LD      A,(IX+2)
                LD      B,(IX+2)
                LD      C,(IX+2)
                LD      D,(IX+2)
                LD      E,(IX+2)
                LD      H,(IX+2)
                LD      L,(IX+2)

                LD      A,(IY-2)
                LD      B,(IY-2)
                LD      C,(IY-2)
                LD      D,(IY-2)
                LD      E,(IY-2)
                LD      H,(IY-2)
                LD      L,(IY-2)

                LD      A,(BC)
                LD      A,(DE)
                LD      A,(MEMORY)

                LD      A,I
                LD      I,A
                LD      A,R
                LD      R,A

                LD      (HL),A
                LD      (HL),B
                LD      (HL),C
                LD      (HL),D
                LD      (HL),E
                LD      (HL),H
                LD      (HL),L

                LD      (IX+2),A
                LD      (IX+2),B
                LD      (IX+2),C
                LD      (IX+2),D
                LD      (IX+2),E
                LD      (IX+2),H
                LD      (IX+2),L

                LD      (IY-2),A
                LD      (IY-2),B
                LD      (IY-2),C
                LD      (IY-2),D
                LD      (IY-2),E
                LD      (IY-2),H
                LD      (IY-2),L

                LD      (BC),A
                LD      (DE),A
                LD      (MEMORY),A
 
                LD      (HL),10
                LD      (IX+5),$1234
                LD      (IY-5),$FF

                LD      (MEMORY),BC
                LD      (MEMORY),DE
                LD      (MEMORY),HL
                LD      (MEMORY),SP
                LD      (MEMORY),IX
                LD      (MEMORY),IY

                LD      BC,DATA
                LD      DE,DATA
                LD      HL,DATA
                LD      SP,DATA
                LD      IX,DATA
                LD      IY,DATA

                LD      BC,(MEMORY)
                LD      DE,(MEMORY)
                LD      HL,(MEMORY)
                LD      SP,(MEMORY)
                LD      IX,(MEMORY)
                LD      IY,(MEMORY)

                LD      SP,HL
                LD      SP,IX
                LD      SP,IY

DATA            .EQ     $1234
MEMORY          .EQ     $5678

;---------------------------------------------------------------------------
;   PUSH and POP instructions
;---------------------------------------------------------------------------

                POP     AF
                POP     BC
                POP     DE
                POP     HL
                POP     IX
                POP     IY

                PUSH    AF
                PUSH    BC
                PUSH    DE
                PUSH    HL
                PUSH    IX
                PUSH    IY

;---------------------------------------------------------------------------
;   MATH instructions
;---------------------------------------------------------------------------

                ADC     A
                ADC     A,A
                ADC     B
                ADC     A,B
                ADC     C
                ADC     A,C
                ADC     D
                ADC     A,D
                ADC     E
                ADC     A,E
                ADC     H
                ADC     A,H
                ADC     L
                ADC     A,L
                ADC     (HL)
                ADC     A,(HL)
                ADC     (IX+2)
                ADC     A,(IX+2)
                ADC     (IY-2)
                ADC     A,(IY-2)
                ADC     10
                ADC     A,10

                ADD     A
                ADD     A,A
                ADD     B
                ADD     A,B
                ADD     C
                ADD     A,C
                ADD     D
                ADD     A,D
                ADD     E
                ADD     A,E
                ADD     H
                ADD     A,H
                ADD     L
                ADD     A,L
                ADD     (HL)
                ADD     A,(HL)
                ADD     (IX+2)
                ADD     A,(IX+2)
                ADD     (IY-2)
                ADD     A,(IY-2)
                ADD     #$10
                ADD     A,#$10

                AND     A
                AND     A,A
                AND     B
                AND     A,B
                AND     C
                AND     A,C
                AND     D
                AND     A,D
                AND     E
                AND     A,E
                AND     H
                AND     A,H
                AND     L
                AND     A,L
                AND     (HL)
                AND     A,(HL)
                AND     (IX+2)
                AND     A,(IX+2)
                AND     (IY-2)
                AND     A,(IY-2)
                AND     $20
                AND     A,$20

                CP      A
                CP      A,A
                CP      B
                CP      A,B
                CP      C
                CP      A,C
                CP      D
                CP      A,D
                CP      E
                CP      A,E
                CP      H
                CP      A,H
                CP      L
                CP      A,L
                CP      (HL)
                CP      A,(HL)
                CP      (IX+2)
                CP      A,(IX+2)
                CP      (IY-2)
                CP      A,(IY-2)
                CP      $30
                CP      A,$30

                OR      A
                OR      A,A
                OR      B
                OR      A,B
                OR      C
                OR      A,C
                OR      D
                OR      A,D
                OR      E
                OR      A,E
                OR      H
                OR      A,H
                OR      L
                OR      A,L
                OR      (HL)
                OR      A,(HL)
                OR      (IX+2)
                OR      A,(IX+2)
                OR      (IY-2)
                OR      A,(IY-2)
                OR      $40
                OR      A,$40

                SBC     A
                SBC     A,A
                SBC     B
                SBC     A,B
                SBC     C
                SBC     A,C
                SBC     D
                SBC     A,D
                SBC     E
                SBC     A,E
                SBC     H
                SBC     A,H
                SBC     L
                SBC     A,L
                SBC     (HL)
                SBC     A,(HL)
                SBC     (IX+2)
                SBC     A,(IX+2)
                SBC     (IY-2)
                SBC     A,(IY-2)
                SBC     $50
                SBC     A,$50

                SUB     A
                SUB     A,A
                SUB     B
                SUB     A,B
                SUB     C
                SUB     A,C
                SUB     D
                SUB     A,D
                SUB     E
                SUB     A,E
                SUB     H
                SUB     A,H
                SUB     L
                SUB     A,L
                SUB     (HL)
                SUB     A,(HL)
                SUB     (IX+2)
                SUB     A,(IX+2)
                SUB     (IY-2)
                SUB     A,(IY-2)
                SUB     $60
                SUB     A,$60

                XOR     A
                XOR     A,A
                XOR     B
                XOR     A,B
                XOR     C
                XOR     A,C
                XOR     D
                XOR     A,D
                XOR     E
                XOR     A,E
                XOR     H
                XOR     A,H
                XOR     L
                XOR     A,L
                XOR     (HL)
                XOR     A,(HL)
                XOR     (IX+2)
                XOR     A,(IX+2)
                XOR     (IY-2)
                XOR     A,(IY-2)
                XOR     $70
                XOR     A,$70

;---------------------------------------------------------------------------
;   16 bit MATH instructions
;---------------------------------------------------------------------------

                ADC     HL,BC
                ADC     HL,DE
                ADC     HL,HL
                ADC     HL,SP

                ADD     HL,BC
                ADD     HL,DE
                ADD     HL,HL
                ADD     HL,SP
                ADD     IX,BC
                ADD     IX,DE
                ADD     IX,IX
                ADD     IX,SP
                ADD     IY,BC
                ADD     IY,DE
                ADD     IY,IY
                ADD     IY,SP

                SBC     HL,BC
                SBC     HL,DE
                SBC     HL,HL
                SBC     HL,SP

;---------------------------------------------------------------------------
;   DEC and INC instructions
;---------------------------------------------------------------------------

                INC     A
                INC     B
                INC     C
                INC     D
                INC     E
                INC     H
                INC     L
                INC     (HL)
                INC     (IX+0)
                INC     (IY+0)
                INC     BC
                INC     DE
                INC     HL
                INC     SP
                INC     IX
                INC     IY

                DEC     A
                DEC     B
                DEC     C
                DEC     D
                DEC     E
                DEC     H
                DEC     L
                DEC     (HL)
                DEC     (IX+0)
                DEC     (IY+0)
                DEC     BC
                DEC     DE
                DEC     HL
                DEC     SP
                DEC     IX
                DEC     IY

;---------------------------------------------------------------------------
;   JP and CALL instructions
;---------------------------------------------------------------------------

LABEL           JP      LABEL
                JP      NZ,LABEL
                JP      Z, LABEL
                JP      NC,LABEL
                JP      C,LABEL
                JP      PO,LABEL
                JP      PE,LABEL
                JP      P, LABEL
                JP      M,LABEL
                JP      (HL)
                JP      (IX)
                JP      (IY)

                CALL    LABEL
                CALL    NZ,LABEL
                CALL    Z,LABEL
                CALL    NC,LABEL
                CALL    C,LABEL
                CALL    PO,LABEL
                CALL    PE,LABEL
                CALL    P,LABEL
                CALL    M,LABEL

;---------------------------------------------------------------------------
;   JR and DJNZ instructions
;---------------------------------------------------------------------------

REVERSE         JR      REVERSE
                JR      NZ,REVERSE
                JR      Z,REVERSE
                JR      NC,FORWARD
                JR      C, FORWARD
FORWARD         DJNZ    FORWARD

;---------------------------------------------------------------------------
;   RET instruction
;---------------------------------------------------------------------------

                RET
                RET     NZ
                RET     Z
                RET     NC
                RET     C
                RET     PO
                RET     PE
                RET     P
                RET     M

;---------------------------------------------------------------------------
;   SHIFT and ROTATE instructions
;---------------------------------------------------------------------------

                RLC     A
                RLC     B
                RLC     C
                RLC     D
                RLC     E
                RLC     H
                RLC     L
                RLC     (HL)
                RLC     (IX+0)
                RLC     (IY+0)

                RL      A
                RL      B
                RL      C
                RL      D
                RL      E
                RL      H
                RL      L
                RL      (HL)
                RL      (IX+0)
                RL      (IY+0)

                RRC     A
                RRC     B
                RRC     C
                RRC     D
                RRC     E
                RRC     H
                RRC     L
                RRC     (HL)
                RRC     (IX+0)
                RRC     (IY+0)

                RR      A
                RR      B
                RR      C
                RR      D
                RR      E
                RR      H
                RR      L
                RR      (HL)
                RR      (IX+0)
                RR      (IY+0)

                SLA     A
                SLA     B
                SLA     C
                SLA     D
                SLA     E
                SLA     H
                SLA     L
                SLA     (HL)
                SLA     (IX+0)
                SLA     (IY+0)

                SRA     A
                SRA     B
                SRA     C
                SRA     D
                SRA     E
                SRA     H
                SRA     L
                SRA     (HL)
                SRA     (IX+0)
                SRA     (IY+0)

                SRL     A
                SRL     B
                SRL     C
                SRL     D
                SRL     E
                SRL     H
                SRL     L
                SRL     (HL)
                SRL     (IX+0)
                SRL     (IY+0)

;---------------------------------------------------------------------------
;   Bit manipulation instructions
;---------------------------------------------------------------------------

                BIT     0,A
                BIT     0,B
                BIT     0,C
                BIT     0,D
                BIT     0,E
                BIT     0,H
                BIT     0,L
                BIT     0,(HL)
                BIT     0,(IX+127)
                BIT     0,(IY-128)

                RES     0,A
                RES     0,B
                RES     0,C
                RES     0,D
                RES     0,E
                RES     0,H
                RES     0,L
                RES     0,(HL)
                RES     0,(IX+127)
                RES     0,(IY-128)

                SET     0,A
                SET     0,B
                SET     0,C
                SET     0,D
                SET     0,E
                SET     0,H
                SET     0,L
                SET     0,(HL)
                SET     0,(IX+127)
                SET     0,(IY-128)

;---------------------------------------------------------------------------
;   IN/OUT instructions
;---------------------------------------------------------------------------

                IN      A,($12)
                IN      A,(C)
                IN      B,(C)
                IN      C,(C)
                IN      D,(C)
                IN      E,(C)
                IN      H,(C)
                IN      L,(C)

                OUT     ($12),A
                OUT     (C),A
                OUT     (C),B
                OUT     (C),C
                OUT     (C),D
                OUT     (C),E
                OUT     (C),H
                OUT     (C),L

;---------------------------------------------------------------------------
;   EX instruction
;---------------------------------------------------------------------------

                EX      DE,HL
                EX      AF,AF'
                EX      (SP),HL
                EX      (SP),IX
                EX      (SP),IY

;---------------------------------------------------------------------------
;   IM instruction
;---------------------------------------------------------------------------

                IM      0
                IM      1
                IM      2

;---------------------------------------------------------------------------
;   Restart instruction
;---------------------------------------------------------------------------

                RST     0
                RST     1
                RST     2
                RST     3
                RST     4
                RST     5
                RST     6
                RST     7
                RST     $00
                RST     $08
                RST     $10
                RST     $18
                RST     $20
                RST     $28
                RST     $30
                RST     $38

;---------------------------------------------------------------------------
;   Address/data options
;---------------------------------------------------------------------------

                LD      A,(IX)
                LD      A,(IX+0)        Normal notation
                LD      A,(IX)          Short notation

                ADD     A,B             Normal Zilog notation
                ADD     B               Short notation

                SUB     B               Normal Zilog notation
                SUB     A,B             Long notation (like ADD)

                LD      A,$12           Immediate 8 bit data, Zilog notation
                LD      A,#$12          The same in SB-Assembler notation
                LD      A,/$12345678    Uses 2nd LSB
                LD      A,=$12345678    Uses 2nd MSB
                LD      A,\$12345678    Uses MSB

                LD      HL,$1234        Immediate 16 bit data, Zilog notation
                LD      HL,#$1234       The same in SB-Assembler notation
                LD      HL,/$12345678   Use middle 2 bytes of long word
                LD      HL,=$12345678   Use MSW
                LD      HL,\$12345678   Load MSB in L and 0 in H
