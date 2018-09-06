                .LF     test.lst
;---------------------------------------------------------------------------
;   6804.ASM
;
;   Opcode test for the SB-Assembler 6804 cross
;
;---------------------------------------------------------------------------

                .CR     6804      And now for something completely different
                .TF     test.hex,hex
                .LI     TON

;---------------------------------------------------------------------------
;   Inherent addressing mode instructions
;---------------------------------------------------------------------------

                ASLA                    Compound instruction
                CLRA                    Compound instruction
                CLRX                    Compound instruction
                CLRY                    Compound instruction
                CLX                     Compound instruction (compatibility)
                CLY                     Compound instruction (compatibility)
                COMA
                DECA                    Compound instruction
                DECX                    Compound instruction
                DECY                    Compound instruction
                DEX                     Compound instruction (compatibility)
                DEY                     Compound instruction (compatibility)
                INCA                    Compound instruction
                INCX                    Compound instruction
                INCY                    Compound instruction
                INX                     Compound instruction (compatibility)
                INY                     Compound instruction (compatibility)
                NOP                     Compound instruction
                ROLA
                RTI
                RTS
                TAX                     Compound instruction
                TAY                     Compound instruction
                TXA                     Compound instruction
                TYA                     Compound instruction

;---------------------------------------------------------------------------
;   Branch instructions
;---------------------------------------------------------------------------

BRANCHES        BCC     BRANCHES
                BCS     BRANCHES
                BEQ     BRANCHES
                BNE     .LOCAL
                BHS     .LOCAL          Alternative to BCC
.LOCAL          BLO     .LOCAL          Alternative to BCS

;---------------------------------------------------------------------------
;   Extended addressing instructions
;---------------------------------------------------------------------------

                JMP     $89A
                JSR     $0FFF

;---------------------------------------------------------------------------
;   Multiple operand type instructions
;---------------------------------------------------------------------------

                LDA     #$12
                LDA     $12
                LDA     ,X
                LDA     ,Y
                LDA     X
                LDA     Y

                STA     $12
                STA     ,X
                STA     ,Y
                STA     X
                STA     Y

                ADD     #$12
                ADD     $12
                ADD     ,X
                ADD     ,Y
                ADD     X               Not short direct!
                ADD     Y               Not short direct!

                SUB     #$12
                SUB     $12
                SUB     ,X
                SUB     ,Y
                SUB     X               Not short direct!
                SUB     Y               Not short direct!

                CMP     #$12
                CMP     $12
                CMP     ,X
                CMP     ,Y
                CMP     X               Not short direct!
                CMP     Y               Not short direct!

                AND     #$12
                AND     $12
                AND     ,X
                ADD     ,Y
                AND     X               Not short direct!
                AND     Y               Not short direct!

                INC     $12
                INC     ,X
                INC     ,Y
                INC     X               Increment X register!
                INC     Y               Increment X register!

                DEC     $12
                DEC     ,X
                DEC     ,Y
                DEC     X               Decrement X register!
                DEC     Y               Decrement X register!

                MVI     A,#$12
                MVI     X,#$12
                MVI     Y,#$12
                MVI     $50,#$12
                LDXI    #$12            Compound instruction
                LDYI    /$1234          Compound instruction
                LDX     #$12            Alternative to LDXI
                LDY     /$1234          Alternative to LDYI

;---------------------------------------------------------------------------
;   Bit manipulation instructions
;---------------------------------------------------------------------------

BITTEST         BCLR    7,A
                BCLR    6,X
                BCLR    5,Y
                BCLR    4,$12

                BSET    3,A
                BSET    2,X
                BSET    1,Y
                BSET    0,$12

                BRCLR   7,$12,BITTEST
                BRCLR   5,$12,BITTEST

                BRSET   2,$12,BITTEST
                BRSET   0,$12,BITTEST

;---------------------------------------------------------------------------
;   Address/data options
;---------------------------------------------------------------------------

                LDA     <FORWARD
                LDA     >X
                LDA     #$12345678
                LDA     /$12345678
                LDA     =$12345678
                LDA     \$12345678
FORWARD         .EQ     $81
