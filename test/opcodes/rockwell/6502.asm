                .LF     test.lst
;---------------------------------------------------------------------------
;   6502.asm
;
;   Opcode test for the SB-Assembler 6502 cross
;
;---------------------------------------------------------------------------

                .CR     6502            Select the intended overlay
                .TF     test.hex,int
                .LI     TON

;---------------------------------------------------------------------------
;   Implied Addressing Mode Instructions
;---------------------------------------------------------------------------

                BRK
                CLC
                CLD
                CLI
                CLV
                DEX
                DEY
                INX
                INY
                NOP
                PHA
                PHP
                PLA
                PLP
                RTI
                RTS
                SEC
                SED
                SEI
                TAX
                TAY
                TSX
                TXA
                TXS
                TYA

;---------------------------------------------------------------------------
;   Branch Instructions
;---------------------------------------------------------------------------

BRANCHES        BCC     .1
                BCS     .2
                BEQ     .3
                BMI     BRANCHES
.1              BNE     .3
.2              BPL     .2
.3              BVC     .1
                BVS     BRANCHES

;---------------------------------------------------------------------------
;   Multiple Operand Type Instructions
;---------------------------------------------------------------------------

BACK_ZP         .EQ     $12
BACK_ABS        .EQ     $1234
                ADC     #$12
                ADC     BACK_ABS
                ADC     BACK_ZP
                ADC     (BACK_ZP,X)
                ADC     (BACK_ZP),Y
                ADC     BACK_ZP,X
                ADC     BACK_ABS,X
                ADC     BACK_ABS,Y

                AND     #$12
                AND     BACK_ABS
                AND     BACK_ZP
                AND     (BACK_ZP,X)
                AND     (BACK_ZP),Y
                AND     BACK_ZP,X
                AND     BACK_ABS,X
                AND     BACK_ABS,Y

                ASL     BACK_ABS
                ASL     BACK_ZP
                ASL
                ASL     A               Alternative syntax
                ASL     BACK_ZP,X
                ASL     BACK_ABS,X

                BIT     BACK_ABS
                BIT     BACK_ZP

                CMP     #$12
                CMP     BACK_ABS
                CMP     BACK_ZP
                CMP     (BACK_ZP,X)
                CMP     (BACK_ZP),Y
                CMP     BACK_ZP,X
                CMP     BACK_ABS,X
                CMP     BACK_ABS,Y

                CPX     #$12
                CPX     BACK_ABS
                CPX     BACK_ZP

                CPY     #$12
                CPY     BACK_ABS
                CPY     BACK_ZP

                DEC     BACK_ABS
                DEC     BACK_ZP
                DEC     BACK_ZP,X
                DEC     BACK_ABS,X

                EOR     #$12
                EOR     BACK_ABS
                EOR     BACK_ZP
                EOR     (BACK_ZP,X)
                EOR     (BACK_ZP),Y
                EOR     BACK_ZP,X
                EOR     BACK_ABS,X
                EOR     BACK_ABS,Y

                INC     BACK_ABS
                INC     BACK_ZP
                INC     BACK_ZP,X
                INC     BACK_ABS,X

                JMP     BACK_ABS
                JMP     (BACK_ABS)      May trigger 6502 bug error if ($xxFF)

                JSR     BACK_ABS

                LDA     #$12
                LDA     BACK_ABS
                LDA     BACK_ZP
                LDA     (BACK_ZP,X)
                LDA     (BACK_ZP),Y
                LDA     BACK_ZP,X
                LDA     BACK_ABS,X
                LDA     BACK_ABS,Y

                LDX     #$12
                LDX     BACK_ABS
                LDX     BACK_ZP
                LDX     BACK_ABS,Y
                LDX     BACK_ZP,Y

                LDY     #$12
                LDY     BACK_ABS
                LDY     BACK_ZP
                LDY     BACK_ZP,X
                LDY     BACK_ABS,X

                LSR     BACK_ABS
                LSR     BACK_ZP
                LSR
                LSR     A               Alternative syntax
                LSR     BACK_ZP,X
                LSR     BACK_ABS,X

                ORA     #$12
                ORA     BACK_ABS
                ORA     BACK_ZP
                ORA     (BACK_ZP,X)
                ORA     (BACK_ZP),Y
                ORA     BACK_ZP,X
                ORA     BACK_ABS,X
                ORA     BACK_ABS,Y

                ROL     BACK_ABS
                ROL     BACK_ZP
                ROL
                ROL     A               Alternative syntax
                ROL     BACK_ZP,X
                ROL     BACK_ABS,X

                ROR     BACK_ABS
                ROR     BACK_ZP
                ROR
                ROR     A               Alternative syntax
                ROR     BACK_ZP,X
                ROR     BACK_ABS,X

                SBC     #$12
                SBC     BACK_ABS
                SBC     BACK_ZP
                SBC     (BACK_ZP,X)
                SBC     (BACK_ZP),Y
                SBC     BACK_ZP,X
                SBC     BACK_ABS,X
                SBC     BACK_ABS,Y

                STA     BACK_ABS
                STA     BACK_ZP
                STA     (BACK_ZP,X)
                STA     (BACK_ZP),Y
                STA     BACK_ZP,X
                STA     BACK_ABS,X
                STA     BACK_ABS,Y

                STX     BACK_ABS
                STX     BACK_ZP
                STX     BACK_ZP,Y

                STY     BACK_ABS
                STY     BACK_ZP
                STY     BACK_ZP,X

;---------------------------------------------------------------------------
;   Compound Instructions
;---------------------------------------------------------------------------

                ADD     #$12            Translates to CLC, ADC
                ADD     BACK_ABS
                ADD     BACK_ZP
                ADD     (BACK_ZP,X)
                ADD     (BACK_ZP),Y
                ADD     BACK_ZP,X
                ADD     BACK_ABS,X
                ADD     BACK_ABS,Y

                SUB     #$12            Translates to SEC, SBC
                SUB     BACK_ABS
                SUB     BACK_ZP
                SUB     (BACK_ZP,X)
                SUB     (BACK_ZP),Y
                SUB     BACK_ZP,X
                SUB     BACK_ABS,X
                SUB     BACK_ABS,Y

;---------------------------------------------------------------------------
;   Forced Addressing Modes
;---------------------------------------------------------------------------

                ADC     <FORWARD_ZP     Force address to zero page
                ADC     >BACK_ZP        Force address to be absolute
                ADC     >BACK_ZP,X
FORWARD_ZP      .EQ     $EF             Forward referenced label

;---------------------------------------------------------------------------
;   SWEET16 Interpreter Instructions
;---------------------------------------------------------------------------

SWEET16         .EQ     $F689           Default Sweet16 entry point
                JSR     SWEET16         Enter sweet16 mode

SW16            ADD     5
                BC      SW16
                BK
                BM      SW16
                BM1     SW16
                BNC     SW16
                BNM1    SW16
                BNZ     SW16
                BP      SW16
                BR      SW16
                BS      SW16
                BZ      SW16
                CPR     5
                DCR     5
                INR     5
                LD      5
                LD      @5
                LDD     @5
                POP     @5
                POPD    @5
                RS
                SET     5,SWEET16
                ST      5
                ST      @5
                STD     @5
                STP     @5
                SUB     5
                RTN                     Leave sweet16 mode

;---------------------------------------------------------------------------
;   Data Options
;---------------------------------------------------------------------------

                LDA     #$12345678
                LDA     /$12345678
                LDX     =$12345678
                LDY     \$12345678
