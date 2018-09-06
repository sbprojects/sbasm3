                .LF     test.lst
;---------------------------------------------------------------------------
;   8085.asm
;
;   Opcode test for the SB-Assembler 8085 cross
;
;---------------------------------------------------------------------------

                .CR     8085            And now it's an 8085 assembler
                .TF     test.hex,hex
                .LI     TON

;---------------------------------------------------------------------------
;   Inherent addressing mode instructions
;---------------------------------------------------------------------------

                CMA
                CMC
                DAA
                DI
                EI
                HLT
                NOP
                PCHL
                RAL
                RAR
                RC
                RET
                RIM                     Unique to 8085
                RLC
                RM
                RNC
                RNZ
                RP
                RPE
                RPO
                RRC
                RZ
                SIM                     Unique to 8085
                SPHL
                STC
                XCHG
                XTHL

;---------------------------------------------------------------------------
;   Absolute addressing mode instructions
;---------------------------------------------------------------------------

BACK            CALL    BACK
                CC      BACK
                CM      BACK
                CNC     BACK
                CNZ     BACK
                CP      BACK
                CPE     BACK
                CPO     BACK
                CZ      BACK
                JC      BACK
                JM      BACK

                JMP     FORWARD
                JNC     FORWARD
                JNZ     FORWARD
                JP      FORWARD
                JPE     FORWARD
                JPO     FORWARD
                JZ      FORWARD
                LDA     FORWARD
                LHLD    FORWARD
                SHLD    FORWARD
                STA     FORWARD
FORWARD

;---------------------------------------------------------------------------
;   Mathemetical instructions
;---------------------------------------------------------------------------

                ADC     B
                ADC     C
                ADC     D
                ADC     E
                ADC     H
                ADC     L
                ADC     M
                ADC     A

                ADD     B
                ADD     C
                ADD     D
                ADD     E
                ADD     H
                ADD     L
                ADD     M
                ADD     A

                ANA     B
                ANA     C
                ANA     D
                ANA     E
                ANA     H
                ANA     L
                ANA     M
                ANA     A

                CMP     B
                CMP     C
                CMP     D
                CMP     E
                CMP     H
                CMP     L
                CMP     M
                CMP     A

                DCR     B
                DCR     C
                DCR     D
                DCR     E
                DCR     H
                DCR     L
                DCR     M
                DCR     A

                INR     B
                INR     C
                INR     D
                INR     E
                INR     H
                INR     L
                INR     M
                INR     A

                ORA     B
                ORA     C
                ORA     D
                ORA     E
                ORA     H
                ORA     L
                ORA     M
                ORA     A

                SBB     B
                SBB     C
                SBB     D
                SBB     E
                SBB     H
                SBB     L
                SBB     M
                SBB     A

                SUB     B
                SUB     C
                SUB     D
                SUB     E
                SUB     H
                SUB     L
                SUB     M
                SUB     A

                XRA     B
                XRA     C
                XRA     D
                XRA     E
                XRA     H
                XRA     L
                XRA     M
                XRA     A

;---------------------------------------------------------------------------
;   Immediate addressing instructions
;---------------------------------------------------------------------------

                ACI     $12
                ADI     $12
                ANI     $12
                CPI     $12

                LXI     B,$1234
                LXI     D,$1234
                LXI     H,$1234
                LXI     SP,$1234

                MVI     B,$12
                MVI     C,$12
                MVI     D,$12
                MVI     E,$12
                MVI     H,$12
                MVI     L,$12
                MVI     M,$12
                MVI     A,$12

                ORI     $12
                SBI     $12
                SUI     $12
                XRI     $12

;---------------------------------------------------------------------------
;   MOV register to register instruction
;---------------------------------------------------------------------------

                MOV     B,B
                MOV     B,C
                MOV     B,D
                MOV     B,E
                MOV     B,H
                MOV     B,L
                MOV     B,M
                MOV     B,A

                MOV     C,B
                MOV     C,C
                MOV     C,D
                MOV     C,E
                MOV     C,H
                MOV     C,L
                MOV     C,M
                MOV     C,A

                MOV     D,B
                MOV     D,C
                MOV     D,D
                MOV     D,E
                MOV     D,H
                MOV     D,L
                MOV     D,M
                MOV     D,A

                MOV     E,B
                MOV     E,C
                MOV     E,D
                MOV     E,E
                MOV     E,H
                MOV     E,L
                MOV     E,M
                MOV     E,A

                MOV     H,B
                MOV     H,C
                MOV     H,D
                MOV     H,E
                MOV     H,H
                MOV     H,L
                MOV     H,M
                MOV     H,A

                MOV     L,B
                MOV     L,C
                MOV     L,D
                MOV     L,E
                MOV     L,H
                MOV     L,L
                MOV     L,M
                MOV     L,A

                MOV     M,B
                MOV     M,C
                MOV     M,D
                MOV     M,E
                MOV     M,H
                MOV     M,L
;               MOV     M,M         This one's illegal! Is HLT instruction
                MOV     M,A

                MOV     A,B
                MOV     A,C
                MOV     A,D
                MOV     A,E
                MOV     A,H
                MOV     A,L
                MOV     A,M
                MOV     A,A

;---------------------------------------------------------------------------
;   In/Out instructions
;---------------------------------------------------------------------------

                IN      $12
                OUT     $12

;---------------------------------------------------------------------------
;   Register pair instructions
;---------------------------------------------------------------------------

                DAD     B
                DAD     D
                DAD     H
                DAD     SP

                DCX     B
                DCX     D
                DCX     H
                DCX     SP

                INX     B
                INX     D
                INX     H
                INX     SP

                POP     B
                POP     D
                POP     H
                POP     PSW

                PUSH    B
                PUSH    D
                PUSH    H
                PUSH    PSW

                LDAX    B
                LDAX    D
                STAX    B
                STAX    D

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

                RST     $00             And now with alternative syntax
                RST     $08
                RST     $10
                RST     $18
                RST     $20
                RST     $28
                RST     $30
                RST     $38

;---------------------------------------------------------------------------
;   Immediate addressing mode notation options
;---------------------------------------------------------------------------

DATA            .EQ     $12345678

                MVI     A,DATA          Normal Intel notation
                MVI     A,#DATA         Has same effect as the line above
                MVI     A,/DATA         Use 2nd byte of long word imm mode
                MVI     A,=DATA         Use 3d byte of long word imm mode
                MVI     A,\DATA         Use MSB of long word in imm mode

                ADI     DATA            Normal Intel notation
                ADI     #DATA           Has the same effect
                ADI     /DATA           Use 2nd byte of long word imm mode
                ADI     =DATA           Use 3d byte of long word imm mode
                ADI     \DATA           Use MSB of long word in imm mode

                LXI     H,DATA          Normal Intel notation
                LXI     H,#DATA         Has same effect (LSW)
                LXI     H,/DATA         Use middle 2 bytes fo long word
                LXI     H,=DATA         Use MSW of long word
                LXI     H,\DATA         Use MSB of long word (MSB=0)
