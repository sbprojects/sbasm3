                .LF     test.lst
;---------------------------------------------------------------------------
;   6809.ASM
;
;   Opcode test for the SB-Assembler 6809 cross
;
;---------------------------------------------------------------------------

                .CR     6809      And now for something completely different
                .TF     test.hex,hex
                .LI     TON

;---------------------------------------------------------------------------
;   Inherent addressing mode instructions
;---------------------------------------------------------------------------

                ABX
                ASLA
                ASLB
                ASRA
                ASRB
                CLRA
                CLRB
                COMA
                COMB
                DAA
                DECA
                DECB
                INCA
                INCB
                LSLA
                LSLB
                LSRA
                LSRB
                MUL
                NEGA
                NEGB
                NOP
                ROLA
                ROLB
                RORA
                RORB
                RTI
                RTS
                SEX
                SWI
                SWI2
                SWI3
                SYNC
                TSTA
                TSTB

;---------------------------------------------------------------------------
;   Compatibility and compound inherent addressing mode instructions
;---------------------------------------------------------------------------

                ABA                     Translated to: PSHS B  &  ADDA ,S+
                ASLD                    Translated to: ASLB    &  ROLA
                ASRD                    Translated to: ASRA    &  RORB
                CBA                     Translated to: PSHS B  &  CMPA ,S+
                CLC                     Translated to: ANDCC #$FE
                CLF                     Translated to: ANDCC #$BF
                CLI                     Translated to: ANDCC #$EF
                CLIF                    Translated to: ANDCC #$AF
                CLRD                    Translated to: CLRA    &  CLRB
                CLV                     Translated to: ANDCC #$FD
                COMD                    Translated to: COMA    &  COMB
                DES                     Translated to: LEAS -1,S
                DEX                     Translated to: LEAX -1,X
                DEY                     Translated to: LEAY -1,Y
                DEU                     Translated to: LEAU -1,U
                INS                     Translated to: LEAS 1,S
                INU                     Translated to: LEAU 1,U
                INX                     Translated to: LEAX 1,X
                INY                     Translated to: LEAY 1,Y
                LSLD                    Translated to: LSLB & ROLA
                LSRD                    Translated to: LSRA & RORB
                PSHA                    Translated to: PSHS $02
                PSHB                    Translated to: PSHS $04
                PSHCC                   Translated to: PSHS $01
                PSHD                    Translated to: PSHS $06
                PSHDP                   Translated to: PSHS $08
                PSHPC                   Translated to: PSHS $80
                PSHX                    Translated to: PSHS $10
                PSHY                    Translated to: PSHS $20
                PULA                    Translated to: PULS $02
                PULB                    Translated to: PULS $04
                PULCC                   Translated to: PULS $01
                PULD                    Translated to: PULS $06
                PULDP                   Translated to: PULS $08
                PULPC                   Translated to: PULS $80
                PULX                    Translated to: PULS $10
                PULY                    Translated to: PULS $20
                ROLD                    Translated to: ROLB   &  ROLA
                RORD                    Translated to: RORA   &  RORB
                SBA                     Translated to: PSHS B &  SUBA ,S+
                SEC                     Translated to: ORCC #$01
                SEF                     Translated to: ORCC #$40
                SEI                     Translated to: ORCC #$10
                SEIF                    Translated to: ORCC #$50
                SEV                     Translated to: ORCC #$02
                TAB                     Translated to: TFR A,B  &  TSTA
                TAP                     Translated to: TFR A,P
                TBA                     Translated to: TFR B,A  &  TSTA
                TPA                     Translated to: TFR P,A
                TSX                     Translated to: TFR S,X
                TXS                     Translated to: TFR X,S
                WAI                     Translated to: CWAI #$FF

;---------------------------------------------------------------------------
;   BRANCH instructions
;---------------------------------------------------------------------------

BACK            BCC     BACK
                BCS     FORWARD
                BEQ     BACK
                BGE     FORWARD
                BGT     BACK
                BHI     FORWARD
                BHS     BACK
                BLE     FORWARD
                BLO     BACK
                BLS     FORWARD
                BLT     BACK
                BMI     FORWARD
                BNE     BACK
                BPL     FORWARD
                BRA     BACK
                BRN     FORWARD
                BSR     BACK
                BVC     FORWARD
FORWARD         BVS     BACK

LBRANCH         .EQ     $1234
                LBCC    LBRANCH
                LBCS    LBRANCH
                LBEQ    LBRANCH
                LBGE    LBRANCH
                LBGT    LBRANCH
                LBHI    LBRANCH
                LBHS    LBRANCH
                LBLE    LBRANCH
                LBLO    LBRANCH
                LBLS    LBRANCH
                LBLT    LBRANCH
                LBMI    LBRANCH
                LBNE    LBRANCH
                LBPL    LBRANCH
                LBRA    LBRANCH
                LBRN    LBRANCH
                LBSR    LBRANCH
                LBVC    LBRANCH
                LBVS    LBRANCH

;---------------------------------------------------------------------------
;   Multiple operand type instructions
;---------------------------------------------------------------------------

                ADCA    #$12
                ADCA    $12
                ADCA    $1234
                ADCA    [$1234]

                ADCB    #$12
                ADCB    $12
                ADCB    $1234
                ADCB    [$1234]

                ADDA    #$12
                ADDA    $12
                ADDA    $1234
                ADDA    [$1234]

                ADDB    #$12
                ADDB    $12
                ADDB    $1234
                ADDB    [$1234]

                ADDD    #$1234
                ADDD    $12
                ADDD    $1234
                ADDD    [$1234]

                ANDA    #$12
                ANDA    $12
                ANDA    $1234
                ANDA    [$1234]

                ANDB    #$12
                ANDB    $12
                ANDB    $1234
                ANDB    [$1234]

                ANDCC   #$12

                ASL     $12
                ASL     $1234
                ASL     [$1234]

                ASR     $12
                ASR     $1234
                ASR     [$1234]

                BITA    #$12
                BITA    $12
                BITA    $1234
                BITA    [$1234]

                BITB    #$12
                BITB    $12
                BITB    $1234
                BITB    [$1234]

                CLR     $12
                CLR     $1234
                CLR     [$1234]

                CMPA    #$12
                CMPA    $12
                CMPA    $1234
                CMPA    [$1234]

                CMPB    #$12
                CMPB    $12
                CMPB    $1234
                CMPB    [$1234]

                CMPD    #$1234
                CMPD    $12
                CMPD    $1234
                CMPD    [$1234]

                CMPS    #$1234
                CMPS    $12
                CMPS    $1234
                CMPS    [$1234]

                CMPU    #$1234
                CMPU    $12
                CMPU    $1234
                CMPU    [$1234]

                CMPX    #$1234
                CMPX    $12
                CMPX    $1234
                CMPX    [$1234]

                CMPY    #$1234
                CMPY    $12
                CMPY    $1234
                CMPY    [$1234]

                COM     $12
                COM     $1234
                COM     [$1234]

                CWAI    #$FF

                DEC     $12
                DEC     $1234
                DEC     [$1234]

                EORA    #$12
                EORA    $12
                EORA    $1234
                EORA    [$1234]

                EORB    #$12
                EORB    $12
                EORB    $1234
                EORB    [$1234]

                INC     $12
                INC     $1234
                INC     [$1234]

                JMP     $12
                JMP     $1234
                JMP     [$1234]

                JSR     $12
                JSR     $1234
                JSR     [$1234]

                LDA     #$12
                LDA     $12
                LDA     $1234
                LDA     [$1234]

                LDB     #$12
                LDB     $12
                LDB     $1234
                LDB     [$1234]

                LDD     #$1234
                LDD     $12
                LDD     $1234
                LDD     [$1234]

                LDS     #$1234
                LDS     $12
                LDS     $1234
                LDS     [$1234]

                LDU     #$1234
                LDU     $12
                LDU     $1234
                LDU     [$1234]

                LDX     #$1234
                LDX     $12
                LDX     $1234
                LDX     [$1234]

                LDY     #$1234
                LDY     $12
                LDY     $1234
                LDY     [$1234]

                LEAS    ,S
                LEAU    1,U
                LEAX    -1,X
                LEAY    1,Y

                LSL     $12
                LSL     $1234
                LSL     [$1234]

                LSR     $12
                LSR     $1234
                LSR     [$1234]

                NEG     $12
                NEG     $1234
                NEG     [$1234]

                ORA     #$12
                ORA     $12
                ORA     $1234
                ORA     [$1234]

                ORB     #$12
                ORB     $12
                ORB     $1234
                ORB     [$1234]

                ORCC    #$12

                ROL     $12
                ROL     $1234
                ROL     [$1234]

                ROR     $12
                ROR     $1234
                ROR     [$1234]

                SBCA    #$12
                SBCA    $12
                SBCA    $1234
                SBCA    [$1234]

                SBCB    #$12
                SBCB    $12
                SBCB    $1234
                SBCB    [$1234]

                STA     $12
                STA     $1234
                STA     [$1234]

                STB     $12
                STB     $1234
                STB     [$1234]

                STD     $12
                STD     $1234
                STD     [$1234]

                STS     $12
                STS     $1234
                STS     [$1234]

                STU     $12
                STU     $1234
                STU     [$1234]

                STX     $12
                STX     $1234
                STX     [$1234]

                STY     $12
                STY     $1234
                STY     [$1234]

                SUBA    #$12
                SUBA    $12
                SUBA    $1234
                SUBA    [$1234]

                SUBB    #$12
                SUBB    $12
                SUBB    $1234
                SUBB    [$1234]

                SUBD    #$1234
                SUBD    $12
                SUBD    $1234
                SUBD    [$1234]

                TST     $12
                TST     $1234
                TST     [$1234]

;---------------------------------------------------------------------------
;   Transfer instructions
;---------------------------------------------------------------------------

                EXG     A,B
                EXG     X,Y
                TFR     A,B
                TFR     S,U

;---------------------------------------------------------------------------
;   Stack operations type instructions
;---------------------------------------------------------------------------

                PSHS    A,B,CC,DP,U,X,Y,PC
                PSHU    CC,D,DP,S,X,Y,PC
                PULS    CC,D,DP,U,X,Y,PC
                PULU    A,B,CC,DP,S,X,Y,PC

;---------------------------------------------------------------------------
;   Addressing options
;---------------------------------------------------------------------------

                LDAA    $0012           Resolves to DP mode (LDAA = LDA)
                LDAA    $1234           Resolves to Ext mode
                .DP     $12
                LDAA    $0012           Resolves to Ext mode
                LDAA    $1234           Resolves to DP mode
                .DP     $00

                ADDA    ,X
                ADDA    ,X+
                ADDA    ,X++
                ADDA    ,-X
                ADDA    ,--X
                ADDA    $9,X
                ADDA    -$9,X
                ADDA    $78,X
                ADDA    -$78,X
                ADDA    $1234,X
                ADDA    -$1234,X

                ADDA    ,Y
                ADDA    ,Y+
                ADDA    ,Y++
                ADDA    ,-Y
                ADDA    ,--Y
                ADDA    $9,Y
                ADDA    -$9,Y
                ADDA    $78,Y
                ADDA    -$78,Y
                ADDA    $1234,Y
                ADDA    -$1234,Y

                ADDA    ,U
                ADDA    ,US+
                ADDA    ,U++
                ADDA    ,-U
                ADDA    ,--U
                ADDA    $9,U
                ADDA    -$9,U
                ADDA    $78,U
                ADDA    -$78,U
                ADDA    $1234,U
                ADDA    -$1234,U

                ADDA    ,S
                ADDA    ,SP+
                ADDA    ,S++
                ADDA    ,-S
                ADDA    ,--S
                ADDA    $9,S
                ADDA    -$9,S
                ADDA    $78,S
                ADDA    -$78,S
                ADDA    $1234,S
                ADDA    -$1234,S

                ADDA    [,X]
                ADDA    [,X++]
                ADDA    [,--X]
                ADDA    [$9,X]          Indirect 5-bit doesn't exist!
                ADDA    [-$9,X]         Indirect 5-bit doesn't exist!
                ADDA    [$78,X]
                ADDA    [-$78,X]
                ADDA    [$1234,X]
                ADDA    [-$1234,X]

                ADDA    [,Y]
                ADDA    [,Y++]
                ADDA    [,--Y]
                ADDA    [$9,Y]          Indirect 5-bit doesn't exist!
                ADDA    [-$9,Y]         Indirect 5-bit doesn't exist!
                ADDA    [$78,Y]
                ADDA    [-$78,Y]
                ADDA    [$1234,Y]
                ADDA    [-$1234,Y]

                ADDA    [,U]
                ADDA    [,US++]
                ADDA    [,--U]
                ADDA    [$9,U]          Indirect 5-bit doesn't exist!
                ADDA    [-$9,U]         Indirect 5-bit doesn't exist!
                ADDA    [$78,U]
                ADDA    [-$78,U]
                ADDA    [$1234,U]
                ADDA    [-$1234,U]

                ADDA    [,S]
                ADDA    [,SP++]
                ADDA    [,--S]
                ADDA    [$9,S]          Indirect 5-bit doesn't exist!
                ADDA    [-$9,S]         Indirect 5-bit doesn't exist!
                ADDA    [$78,S]
                ADDA    [-$78,S]
                ADDA    [$1234,S]
                ADDA    [-$1234,S]

                ADDA    A,X
                ADDA    B,Y
                ADDA    D,U
                ADDA    A,S
                ADDA    A,US
                ADDA    A,SP

                ADDA    [A,X]
                ADDA    [B,Y]
                ADDA    [D,U]
                ADDA    [A,S]
                ADDA    [A,US]
                ADDA    [A,SP]

                LDA     $1234,PC
                LDA     -$1234,PC
                LDA     $1234,PCR

;---------------------------------------------------------------------------
;   Data options
;---------------------------------------------------------------------------

                LDA     #$12345678
                LDA     /$12345678
                LDA     =$12345678
                LDA     \$12345678

                LDX     #$12345678
                LDX     /$12345678
                LDX     =$12345678
                LDX     \$12345678

                .DA     #$12345678
                .DA     /$12345678
                .DA     =$12345678
                .DA     \$12345678


