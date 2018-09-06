                .LF     test.lst
;--------------------------------------------------------------------------
;   68HC05.ASM
;
;   Opcode test for the SB-Assembler 68HC05 cross
;
;--------------------------------------------------------------------------

                .CR     68HC05   And now for something completely different
                .TF     test.hex,hex
                .LI     TON

;--------------------------------------------------------------------------
;   Inherent addressing mode instructions
;--------------------------------------------------------------------------

                ASLA                    Same as LSLA
                ASLX                    Same as LSLX
                ASRA
                ASRX
                CLC
                CLI
                CLRA
                CLRX
                COMA
                COMX
                DECA
                DECX
                DEX                     Compatibility
                INCA
                INCX
                INX                     Compatibility
                LSLA
                LSLX
                LSRA
                LSRX
                MUL                     Unique to 68HC05
                NEGA
                NEGX
                NOP
                ROLA
                ROLX
                RORA
                RORX
                RSP
                RTI
                RTS
                SEC
                SEI
                STOP                    New instruction
                SWI
                TAX
                TSTA
                TSTX
                TXA
                WAIT                    New instruction

;--------------------------------------------------------------------------
;   Branch instructions
;--------------------------------------------------------------------------

BRANCHES        BCC     BRANCHES
                BCS     BRANCHES
                BEQ     BRANCHES
                BHCC    BRANCHES
                BHCS    BRANCHES
                BHI     BRANCHES
                BIH     BRANCHES
                BIL     BRANCHES
                BLS     BRANCHES
                BMC     .LOCAL
                BMI     .LOCAL
                BMS     .LOCAL
                BNE     .LOCAL
                BPL     .LOCAL
                BRA     .LOCAL
                BRN     .LOCAL
.LOCAL          BSR     .LOCAL
                BHS     .LOCAL          Same as BCC
                BLO     .LOCAL          Same as BCS

;--------------------------------------------------------------------------
;   Multiple operand type instructions
;--------------------------------------------------------------------------

                ADC     #$12
                ADC     $12
                ADC     $1234
                ADC     $1234,X
                ADC     $12,X
                ADC     ,X

                ADD     #$12
                ADD     $12
                ADD     $1234
                ADD     $1234,X
                ADD     $12,X
                ADD     ,X

                AND     #$12
                AND     $12
                AND     $1234
                AND     $1234,X
                AND     $12,X
                AND     ,X

                ASL     $12             Same as LSL
                ASL     $12,X
                ASL     ,X

                ASR     $12
                ASR     $12,X
                ASR     ,X

                BIT     #$12
                BIT     $12
                BIT     $1234
                BIT     $1234,X
                BIT     $12,X
                BIT     ,X

                CLR     $12
                CLR     $12,X
                CLR     ,X

                CMP     #$12
                CMP     $12
                CMP     $1234
                CMP     $1234,X
                CMP     $12,X
                CMP     ,X

                COM     $12
                COM     $12,X
                COM     ,X

                CPX     #$12
                CPX     $12
                CPX     $1234
                CPX     $1234,X
                CPX     $12,X
                CPX     ,X

                DEC     $12
                DEC     $12,X
                DEC     ,X

                EOR     #$12
                EOR     $12
                EOR     $1234
                EOR     $1234,X
                EOR     $12,X
                EOR     ,X

                INC     $12
                INC     $12,X
                INC     ,X

                JMP     $12
                JMP     $1234
                JMP     $1234,X
                JMP     $12,X
                JMP     ,X

                JSR     $12
                JSR     $1234
                JSR     $1234,X
                JSR     $12,X
                JSR     ,X

                LDA     #$12
                LDA     $12
                LDA     $1234
                LDA     $1234,X
                LDA     $12,X
                LDA     ,X

                LDX     #$12
                LDX     $12
                LDX     $1234
                LDX     $1234,X
                LDX     $12,X
                LDX     ,X

                LSL     $12
                LSL     $12,X
                LSL     ,X

                LSR     $12
                LSR     $12,X
                LSR     ,X

                NEG     $12
                NEG     $12,X
                NEG     ,X

                ORA     #$12
                ORA     $12
                ORA     $1234
                ORA     $1234,X
                ORA     $12,X
                ORA     ,X

                ROL     $12
                ROL     $12,X
                ROL     ,X

                ROR     $12
                ROR     $12,X
                ROR     ,X

                SBC     #$12
                SBC     $12
                SBC     $1234
                SBC     $1234,X
                SBC     $12,X
                SBC     ,X

                STA     $12
                STA     $1234
                STA     $1234,X
                STA     $12,X
                STA     ,X

                STX     $12
                STX     $1234
                STX     $1234,X
                STX     $12,X
                STX     ,X

                SUB     #$12
                SUB     $12
                SUB     $1234
                SUB     $1234,X
                SUB     $12,X
                SUB     ,X

                TST     $12
                TST     $12,X
                TST     ,X

;--------------------------------------------------------------------------
;   Bit manipulation and test instructions
;--------------------------------------------------------------------------

                BCLR    0,$12
                BCLR    7,$12

                BSET    0,$12
                BSET    7,$12

BITTEST         BRCLR   0,$12,BITTEST
                BRCLR   7,$12,BITTEST

                BRSET   0,$12,BITTEST
                BRSET   7,$12,BITTEST

;--------------------------------------------------------------------------
;   Address/data options
;--------------------------------------------------------------------------

                LDA     #$12345678
                LDA     /$12345678
                LDA     =$12345678
                LDA     \$12345678

                .DA     #$12345678
                .DA     /$12345678
                .DA     =$12345678
                .DA     \$12345678
                .DA     $1234

                LDA     <$12
                LDA     >$12

                LDA     0,X
                LDA     ,X
                LDA     X
