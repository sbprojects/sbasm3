                .LF     test.lst
;--------------------------------------------------------------------------
;   68HC11.ASM
;
;   Opcode test for the SB-Assembler 68HC11 cross
;
;--------------------------------------------------------------------------

                .CR     68HC11   And now for something completely different
                .TF     test.hex,hex
                .LI     TON

;--------------------------------------------------------------------------
;   Inherent addressing mode instructions
;--------------------------------------------------------------------------

                ABA
                ABX
                ABY
                ASLA
                ASLB
                ASLD
                ASRA
                ASRB
                CBA
                CLC
                CLI
                CLRA
                CLRB
                CLRD            Compound instruction
                CLV
                COMA
                COMB
                COMD            Compound instruction
                DAA
                DECA
                DECB
                DES
                DEX
                DEY
                FDIV
                IDIV
                INCA
                INCB
                INS
                INX
                INY
                LSLA
                LSLB
                LSLD
                LSRA
                LSRB
                LSRD
                MUL
                NEGA
                NEGB
                NOP
                PSHA
                PSHB
                PSHD            Compound instruction
                PSHX
                PSHY
                PULA
                PULB
                PULD            Compound instruction
                PULX
                PULY
                ROLA
                ROLB
                ROLD            Compound instruction
                RORA
                RORB
                RORD            Compound instruction
                RTI
                RTS
                SBA
                SEC
                SEI
                SEV
                STOP
                SWI
                TAB
                TAP
                TBA
                TEST
                TPA
                TSTA
                TSTB
                TSX
                TSY
                TXS
                TYS
                WAI
                XGDX
                XGDY

;--------------------------------------------------------------------------
;   Branch instructions
;--------------------------------------------------------------------------

BRANCHES        BCC     BRANCHES
                BCS     BRANCHES
                BEQ     BRANCHES
                BGE     BRANCHES
                BGT     BRANCHES
                BHI     BRANCHES
                BHS     BRANCHES
                BLE     BRANCHES
                BLO     BRANCHES
                BLS     BRANCHES
                BLT     BRANCHES
                BMI     .LOCAL
                BNE     .LOCAL
                BPL     .LOCAL
                BRA     .LOCAL
                BRN     .LOCAL
                BSR     .LOCAL
                BVC     .LOCAL
.LOCAL          BVS     .LOCAL

;--------------------------------------------------------------------------
;   Multiple operand type instructions
;--------------------------------------------------------------------------

                ADCA    #$12
                ADCA    $12
                ADCA    $1234
                ADCA    $12,X
                ADCA    $12,Y

                ADCB    #$12
                ADCB    $12
                ADCB    $1234
                ADCB    $12,X
                ADCB    $12,Y

                ADDA    #$12
                ADDA    $12
                ADDA    $1234
                ADDA    $12,X
                ADDA    $12,Y

                ADDB    #$12
                ADDB    $12
                ADDB    $1234
                ADDB    $12,X
                ADDB    $12,Y

                ADDD    #$1234
                ADDD    $12
                ADDD    $1234
                ADDD    $12,X
                ADDD    $12,Y

                ANDA    #$12
                ANDA    $12
                ANDA    $1234
                ANDA    $12,X
                ANDA    $12,Y

                ANDB    #$12
                ANDB    $12
                ANDB    $1234
                ANDB    $12,X
                ANDB    $12,Y

                ASL     $1234
                ASL     $12,X
                ASL     $12,Y

                ASR     $1234
                ASR     $12,X
                ASR     $12,Y

                BITA    #$12
                BITA    $12
                BITA    $1234
                BITA    $12,X
                BITA    $12,Y

                BITB    #$12
                BITB    $12
                BITB    $1234
                BITB    $12,X
                BITB    $12,Y

                CLR     $1234
                CLR     $12,X
                CLR     $12,Y

                CMPA    #$12
                CMPA    $12
                CMPA    $1234
                CMPA    $12,X
                CMPA    $12,Y

                CMPB    #$12
                CMPB    $12
                CMPB    $1234
                CMPB    $12,X
                CMPB    $12,Y

                COM     $1234
                COM     $12,X
                COM     $12,Y

                CPD     #$1234
                CPD     $12
                CPD     $1234
                CPD     $12,X
                CPD     $12,Y

                CPX     #$1234
                CPX     $12
                CPX     $1234
                CPX     $12,X
                CPX     $12,Y

                CPY     #$1234
                CPY     $12
                CPY     $1234
                CPY     $12,X
                CPY     $12,Y

                DEC     $1234
                DEC     $12,X
                DEC     $12,Y

                EORA    #$12
                EORA    $12
                EORA    $1234
                EORA    $12,X
                EORA    $12,Y

                EORB    #$12
                EORB    $12
                EORB    $1234
                EORB    $12,X
                EORB    $12,Y

                INC     $1234
                INC     $12,X
                INC     $12,Y

                JMP     $1234
                JMP     $12,X
                JMP     $12,Y

                JSR     $12
                JSR     $1234
                JSR     $12,X
                JSR     $12,Y

                LDAA    #$12
                LDAA    $12
                LDAA    $1234
                LDAA    $12,X
                LDAA    $12,Y

                LDAB    #$12
                LDAB    $12
                LDAB    $1234
                LDAB    $12,X
                LDAB    $12,Y

                LDAD    #$1234
                LDAD    $12
                LDAD    $1234
                LDAD    $12,X
                LDAD    $12,Y

                LDA     #$12            Alternative syntax
                LDA     $12
                LDA     $1234
                LDA     $12,X
                LDA     $12,Y

                LDB     #$12            Alternative syntax
                LDB     $12
                LDB     $1234
                LDB     $12,X
                LDB     $12,Y

                LDD     #$1234          Alternative syntax
                LDD     $12
                LDD     $1234
                LDD     $12,X
                LDD     $12,Y

                LDS     #$1234
                LDS     $12
                LDS     $1234
                LDS     $12,X
                LDS     $12,Y

                LDX     #$1234
                LDX     $12
                LDX     $1234
                LDX     $12,X
                LDX     $12,Y

                LDY     #$1234
                LDY     $12
                LDY     $1234
                LDY     $12,X
                LDY     $12,Y
 
                LSL     $1234
                LSL     $12,X
                LSL     $12,Y

                LSR     $1234
                LSR     $12,X
                LSR     $12,Y

                NEG     $1234
                NEG     $12,X
                NEG     $12,Y

                ORAA    #$12
                ORAA    $12
                ORAA    $1234
                ORAA    $12,X
                ORAA    $12,Y

                ORAB    #$12
                ORAB    $12
                ORAB    $1234
                ORAB    $12,X
                ORAB    $12,Y

                ROL     $1234
                ROL     $12,X
                ROL     $12,Y

                ROR     $1234
                ROR     $12,X
                ROR     $12,Y

                SBCA    #$12
                SBCA    $12
                SBCA    $1234
                SBCA    $12,X
                SBCA    $12,Y

                SBCB    #$12
                SBCB    $12
                SBCB    $1234
                SBCB    $12,X
                SBCB    $12,Y

                STAA    $12
                STAA    $1234
                STAA    $12,X
                STAA    $12,Y

                STAB    $12
                STAB    $1234
                STAB    $12,X
                STAB    $12,Y

                STAD    $12
                STAD    $1234
                STAD    $12,X
                STAD    $12,Y

                STA     $12             Alternative syntax
                STA     $1234
                STA     $12,X
                STA     $12,Y

                STB     $12             Alternative syntax
                STB     $1234
                STB     $12,X
                STB     $12,Y

                STD     $12             Alternative syntax
                STD     $1234
                STD     $12,X
                STD     $12,Y

                STS     $12
                STS     $1234
                STS     $12,X
                STS     $12,Y

                STX     $12
                STX     $1234
                STX     $12,X
                STX     $12,Y

                STY     $12
                STY     $1234
                STY     $12,X
                STY     $12,Y

                SUBA    #$12
                SUBA    $12
                SUBA    $1234
                SUBA    $12,X
                SUBA    $12,Y

                SUBB    #$12
                SUBB    $12
                SUBB    $1234
                SUBB    $12,X
                SUBB    $12,Y

                SUBD    #$1234
                SUBD    $12
                SUBD    $1234
                SUBD    $12,X
                SUBD    $12,Y

                TST     $1234
                TST     $12,X
                TST     $12,Y

;--------------------------------------------------------------------------
;   BIT manipulation/branch instructions
;--------------------------------------------------------------------------

BITTEST         BCLR    $12,#$34
                BCLR    $12,X,#$34
                BCLR    $12,Y,#$34

                BSET    $12,#$34
                BSET    $12,X,#$34
                BSET    $12,Y,#$34

                BRCLR   $12,#$34,BITTEST
                BRCLR   $12,X,#$34,BITTEST
                BRCLR   $12,Y,#$34,BITTEST

                BRSET   $12,#$34,BITTEST
                BRSET   $12,X,#$34,BITTEST
                BRSET   $12,Y,#$34,BITTEST

;--------------------------------------------------------------------------
;   Address/data options
;--------------------------------------------------------------------------

                LDAA    #$12345678
                LDAA    /$12345678
                LDAA    =$12345678
                LDAA    \$12345678
                LDD     #$12345678
                LDD     /$12345678
                LDD     =$12345678
                LDD     \$12345678

                .DA     #$12345678
                .DA     /$12345678
                .DA     =$12345678
                .DA     \$12345678

                LDAA    <$12
                LDAA    >$12

                LDAA    0,X
                LDAA    ,X
                LDAA    X
                LDAA    Y
                LDAA    ,Y
                LDAA    0,Y

                BCLR    0,X,#$12
                BCLR    ,X,#$12
                BCLR    X,#$12
                BSET    Y,#$12
                BSET    ,Y,#$12
                BSET    0,Y,#$12

                BCLR    $12,#$34
                BCLR    $12,$34
