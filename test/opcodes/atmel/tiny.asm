                .LF     test.lst
;---------------------------------------------------------------------------
;   tiny.asm
;
;   Opcode test for the SB-Assembler AVR cross family
;
;   Valid for Reduced core
;     These cores have only 16 registers (R16..R31)
;
;---------------------------------------------------------------------------

                .CR     AVR     And now for something completely different
                .FA     tiny

                .TF     test.hex, int
                .OR     $2000   Avoid range errors for jumps and calls
                .LI     TON

;---------------------------------------------------------------------------
; Inherent addressing mode
;---------------------------------------------------------------------------

                BREAK
                CLC
                CLH
                CLI
                CLN
                CLS
                CLT
                CLV
                CLZ
                ICALL       Instruction not available on all devices
                IJMP        Instruction not available on all devices
                NOP
                RET
                RETI
                SEC
                SEH
                SEI
                SEN
                SES
                SET
                SEV
                SEZ
                SLEEP
                WDR

;---------------------------------------------------------------------------
; Register pair operand instructions
;---------------------------------------------------------------------------

                ADC     R17, R17
                ADC     R17, R18
                ADC     R17, R20
                ADC     R17, R24
                ADC     R18, R17
                ADC     R20, R17
                ADC     R24, R17

                ADD     17, 17          Numeric values are translated to
                ADD     17, 18             registers automatically
                ADD     17, 20
                ADD     17, 24
                ADD     18, 16
                ADD     20, 17
                ADD     24, 17

                AND     R17, R17
                AND     R17, R18
                AND     R17, R20
                AND     R17, R24
                AND     R18, R17
                AND     R20, R17
                AND     R24, R17

                CP      R17, R17
                CP      R17, R18
                CP      R17, R20
                CP      R17, R24
                CP      R18, R17
                CP      R20, R17
                CP      R24, R17

                CPC     R17, R17
                CPC     R17, R18
                CPC     R17, R20
                CPC     R17, R24
                CPC     R18, R17
                CPC     R20, R17
                CPC     R24, R17

                CPSE    R17, R17
                CPSE    R17, R18
                CPSE    R17, R20
                CPSE    R17, R24
                CPSE    R18, R17
                CPSE    R20, R17
                CPSE    R24, R17

                EOR     R17, R17
                EOR     R17, R18
                EOR     R17, R20
                EOR     R17, R24
                EOR     R18, R17
                EOR     R20, R17
                EOR     R24, R17

                MOV     R17, R17
                MOV     R17, R18
                MOV     R17, R20
                MOV     R17, R24
                MOV     R18, R17
                MOV     R20, R17
                MOV     R24, R17

                OR      R17, R17
                OR      R17, R18
                OR      R17, R20
                OR      R17, R24
                OR      R18, R17
                OR      R20, R17
                OR      R24, R17

                SBC     R17, R17
                SBC     R17, R18
                SBC     R17, R20
                SBC     R17, R24
                SBC     R18, R17
                SBC     R20, R17
                SBC     R24, R17

                SUB     R17, R17
                SUB     R17, R18
                SUB     R17, R20
                SUB     R17, R24
                SUB     R18, R17
                SUB     R20, R17
                SUB     R24, R17

;---------------------------------------------------------------------------
; Register immediate operand instructions
;---------------------------------------------------------------------------

                ANDI    R17, 1
                ANDI    R17, 2
                ANDI    R17, 4
                ANDI    R17, 8
                ANDI    R17, 16
                ANDI    R17, 32
                ANDI    R17, 64
                ANDI    R17, 128
                ANDI    R18, 1
                ANDI    R20, 1
                ANDI    R24, 1
                ANDI    R17, #$12345678     # Prefix is optional (use LSB)
                ANDI    R17, /$12345678     / Use 2nd LSB
                ANDI    R17, =$12345678     = User 2nd MSB
                ANDI    R17, \$12345678     \ Use MSB

                CBR     R17, 1
                CBR     R17, 2
                CBR     R17, 4
                CBR     R17, 8
                CBR     R17, 16
                CBR     R17, 32
                CBR     R17, 64
                CBR     R17, 128
                CBR     R18, 1
                CBR     R20, 1
                CBR     R24, 1

                CPI     R17, 1
                CPI     R17, 2
                CPI     R17, 4
                CPI     R17, 8
                CPI     R17, 16
                CPI     R17, 32
                CPI     R17, 64
                CPI     R17, 128
                CPI     R18, 1
                CPI     R20, 1
                CPI     R24, 1

                LDI     R17, 1
                LDI     R17, 2
                LDI     R17, 4
                LDI     R17, 8
                LDI     R17, 16
                LDI     R17, 32
                LDI     R17, 64
                LDI     R17, 128
                LDI     R18, 1
                LDI     R20, 1
                LDI     R24, 1

                ORI     R17, 1
                ORI     R17, 2
                ORI     R17, 4
                ORI     R17, 8
                ORI     R17, 16
                ORI     R17, 32
                ORI     R17, 64
                ORI     R17, 128
                ORI     R18, 1
                ORI     R20, 1
                ORI     R24, 1

                SBCI    R17, 1
                SBCI    R17, 2
                SBCI    R17, 4
                SBCI    R17, 8
                SBCI    R17, 16
                SBCI    R17, 32
                SBCI    R17, 64
                SBCI    R17, 128
                SBCI    R18, 1
                SBCI    R20, 1
                SBCI    R24, 1

                SBR     R17, 1
                SBR     R17, 2
                SBR     R17, 4
                SBR     R17, 8
                SBR     R17, 16
                SBR     R17, 32
                SBR     R17, 64
                SBR     R17, 128
                SBR     R18, 1
                SBR     R20, 1
                SBR     R24, 1

                SUBI    R17, 1
                SUBI    R17, 2
                SUBI    R17, 4
                SUBI    R17, 8
                SUBI    R17, 16
                SUBI    R17, 32
                SUBI    R17, 64
                SUBI    R17, 128
                SUBI    R18, 1
                SUBI    R20, 1
                SUBI    R24, 1

;---------------------------------------------------------------------------
; Single register operand instructions
;---------------------------------------------------------------------------

                ASR     R17
                ASR     R18
                ASR     R20
                ASR     R24

                CLR     R17
                CLR     R18
                CLR     R20
                CLR     R24

                COM     R17
                COM     R18
                COM     R20
                COM     R24

                DEC     R17
                DEC     R18
                DEC     R20
                DEC     R24

                INC     R17
                INC     R18
                INC     R20
                INC     R24

                LSL     R17
                LSL     R18
                LSL     R20
                LSL     R24

                LSR     R17
                LSR     R18
                LSR     R20
                LSR     R24

                NEG     R17
                NEG     R18
                NEG     R20
                NEG     R24

                POP     R17
                POP     R18
                POP     R20
                POP     R24

                PUSH    R17
                PUSH    R18
                PUSH    R20
                PUSH    R24

                ROL     R17
                ROL     R18
                ROL     R20
                ROL     R24

                ROR     R17
                ROR     R18
                ROR     R20
                ROR     R24

                SER     R17
                SER     R18
                SER     R20
                SER     R24

                SWAP    R17
                SWAP    R18
                SWAP    R20
                SWAP    R24

                TST     R17
                TST     R18
                TST     R20
                TST     R24

;---------------------------------------------------------------------------
; Branch instructions
;---------------------------------------------------------------------------

                BRBC    1,$+1-64
                BRBC    1,$+1-32
                BRBC    1,$+1-16
                BRBC    1,$+1-8
                BRBC    1,$+1-4
                BRBC    1,$+1-2
                BRBC    1,$+1
                BRBC    1,$+1+1
                BRBC    1,$+1+2
                BRBC    1,$+1+4
                BRBC    1,$+1+8
                BRBC    1,$+1+16
                BRBC    1,$+1+32
                BRBC    2,$+1
                BRBC    4,$+1

                BRBS    1,$+1-64
                BRBS    1,$+1-32
                BRBS    1,$+1-16
                BRBS    1,$+1-8
                BRBS    1,$+1-4
                BRBS    1,$+1-2
                BRBS    1,$+1
                BRBS    1,$+1+1
                BRBS    1,$+1+2
                BRBS    1,$+1+4
                BRBS    1,$+1+8
                BRBS    1,$+1+16
                BRBS    1,$+1+32
                BRBS    2,$+1
                BRBS    4,$+1

                BRCC    $+1-64
                BRCC    $+1-32
                BRCC    $+1-16
                BRCC    $+1-8
                BRCC    $+1-4
                BRCC    $+1-2
                BRCC    $+1
                BRCC    $+1+1
                BRCC    $+1+2
                BRCC    $+1+4
                BRCC    $+1+8
                BRCC    $+1+16
                BRCC    $+1+32

                BRCS    $+1-64
                BRCS    $+1-32
                BRCS    $+1-16
                BRCS    $+1-8
                BRCS    $+1-4
                BRCS    $+1-2
                BRCS    $+1
                BRCS    $+1+1
                BRCS    $+1+2
                BRCS    $+1+4
                BRCS    $+1+8
                BRCS    $+1+16
                BRCS    $+1+32

                BREQ    $+1-64
                BREQ    $+1-32
                BREQ    $+1-16
                BREQ    $+1-8
                BREQ    $+1-4
                BREQ    $+1-2
                BREQ    $+1
                BREQ    $+1+1
                BREQ    $+1+2
                BREQ    $+1+4
                BREQ    $+1+8
                BREQ    $+1+16
                BREQ    $+1+32

                BRGE    $+1-64
                BRGE    $+1-32
                BRGE    $+1-16
                BRGE    $+1-8
                BRGE    $+1-4
                BRGE    $+1-2
                BRGE    $+1
                BRGE    $+1+1
                BRGE    $+1+2
                BRGE    $+1+4
                BRGE    $+1+8
                BRGE    $+1+16
                BRGE    $+1+32

                BRHC    $+1-64
                BRHC    $+1-32
                BRHC    $+1-16
                BRHC    $+1-8
                BRHC    $+1-4
                BRHC    $+1-2
                BRHC    $+1
                BRHC    $+1+1
                BRHC    $+1+2
                BRHC    $+1+4
                BRHC    $+1+8
                BRHC    $+1+16
                BRHC    $+1+32

                BRHS    $+1-64
                BRHS    $+1-32
                BRHS    $+1-16
                BRHS    $+1-8
                BRHS    $+1-4
                BRHS    $+1-2
                BRHS    $+1
                BRHS    $+1+1
                BRHS    $+1+2
                BRHS    $+1+4
                BRHS    $+1+8
                BRHS    $+1+16
                BRHS    $+1+32

                BRID    $+1-64
                BRID    $+1-32
                BRID    $+1-16
                BRID    $+1-8
                BRID    $+1-4
                BRID    $+1-2
                BRID    $+1
                BRID    $+1+1
                BRID    $+1+2
                BRID    $+1+4
                BRID    $+1+8
                BRID    $+1+16
                BRID    $+1+32

                BRIE    $+1-64
                BRIE    $+1-32
                BRIE    $+1-16
                BRIE    $+1-8
                BRIE    $+1-4
                BRIE    $+1-2
                BRIE    $+1
                BRIE    $+1+1
                BRIE    $+1+2
                BRIE    $+1+4
                BRIE    $+1+8
                BRIE    $+1+16
                BRIE    $+1+32

                BRLO    $+1-64
                BRLO    $+1-32
                BRLO    $+1-16
                BRLO    $+1-8
                BRLO    $+1-4
                BRLO    $+1-2
                BRLO    $+1
                BRLO    $+1+1
                BRLO    $+1+2
                BRLO    $+1+4
                BRLO    $+1+8
                BRLO    $+1+16
                BRLO    $+1+32

                BRLT    $+1-64
                BRLT    $+1-32
                BRLT    $+1-16
                BRLT    $+1-8
                BRLT    $+1-4
                BRLT    $+1-2
                BRLT    $+1
                BRLT    $+1+1
                BRLT    $+1+2
                BRLT    $+1+4
                BRLT    $+1+8
                BRLT    $+1+16
                BRLT    $+1+32

                BRMI    $+1-64
                BRMI    $+1-32
                BRMI    $+1-16
                BRMI    $+1-8
                BRMI    $+1-4
                BRMI    $+1-2
                BRMI    $+1
                BRMI    $+1+1
                BRMI    $+1+2
                BRMI    $+1+4
                BRMI    $+1+8
                BRMI    $+1+16
                BRMI    $+1+32

                BRNE    $+1-64
                BRNE    $+1-32
                BRNE    $+1-16
                BRNE    $+1-8
                BRNE    $+1-4
                BRNE    $+1-2
                BRNE    $+1
                BRNE    $+1+1
                BRNE    $+1+2
                BRNE    $+1+4
                BRNE    $+1+8
                BRNE    $+1+16
                BRNE    $+1+32

                BRPL    $+1-64
                BRPL    $+1-32
                BRPL    $+1-16
                BRPL    $+1-8
                BRPL    $+1-4
                BRPL    $+1-2
                BRPL    $+1
                BRPL    $+1+1
                BRPL    $+1+2
                BRPL    $+1+4
                BRPL    $+1+8
                BRPL    $+1+16
                BRPL    $+1+32

                BRSH    $+1-64
                BRSH    $+1-32
                BRSH    $+1-16
                BRSH    $+1-8
                BRSH    $+1-4
                BRSH    $+1-2
                BRSH    $+1
                BRSH    $+1+1
                BRSH    $+1+2
                BRSH    $+1+4
                BRSH    $+1+8
                BRSH    $+1+16
                BRSH    $+1+32

                BRTC    $+1-64
                BRTC    $+1-32
                BRTC    $+1-16
                BRTC    $+1-8
                BRTC    $+1-4
                BRTC    $+1-2
                BRTC    $+1
                BRTC    $+1+1
                BRTC    $+1+2
                BRTC    $+1+4
                BRTC    $+1+8
                BRTC    $+1+16
                BRTC    $+1+32

                BRTS    $+1-64
                BRTS    $+1-32
                BRTS    $+1-16
                BRTS    $+1-8
                BRTS    $+1-4
                BRTS    $+1-2
                BRTS    $+1
                BRTS    $+1+1
                BRTS    $+1+2
                BRTS    $+1+4
                BRTS    $+1+8
                BRTS    $+1+16
                BRTS    $+1+32

                BRVC    $+1-64
                BRVC    $+1-32
                BRVC    $+1-16
                BRVC    $+1-8
                BRVC    $+1-4
                BRVC    $+1-2
                BRVC    $+1
                BRVC    $+1+1
                BRVC    $+1+2
                BRVC    $+1+4
                BRVC    $+1+8
                BRVC    $+1+16
                BRVC    $+1+32

                BRVS    $+1-64
                BRVS    $+1-32
                BRVS    $+1-16
                BRVS    $+1-8
                BRVS    $+1-4
                BRVS    $+1-2
                BRVS    $+1
                BRVS    $+1+1
                BRVS    $+1+2
                BRVS    $+1+4
                BRVS    $+1+8
                BRVS    $+1+16
                BRVS    $+1+32

;---------------------------------------------------------------------------
; Jump and CALL instructions
;---------------------------------------------------------------------------

                RCALL   $+1-2048
                RCALL   $+1-1024
                RCALL   $+1-512
                RCALL   $+1-256
                RCALL   $+1-128
                RCALL   $+1-64
                RCALL   $+1-32
                RCALL   $+1-16
                RCALL   $+1-8
                RCALL   $+1-4
                RCALL   $+1-2
                RCALL   $+1
                RCALL   $+1+1
                RCALL   $+1+2
                RCALL   $+1+4
                RCALL   $+1+8
                RCALL   $+1+16
                RCALL   $+1+32
                RCALL   $+1+64
                RCALL   $+1+128
                RCALL   $+1+256
                RCALL   $+1+512
                RCALL   $+1+1024

                RJMP    $+1-2048
                RJMP    $+1-1024
                RJMP    $+1-512
                RJMP    $+1-256
                RJMP    $+1-128
                RJMP    $+1-64
                RJMP    $+1-32
                RJMP    $+1-16
                RJMP    $+1-8
                RJMP    $+1-4
                RJMP    $+1-2
                RJMP    $+1
                RJMP    $+1+1
                RJMP    $+1+2
                RJMP    $+1+4
                RJMP    $+1+8
                RJMP    $+1+16
                RJMP    $+1+32
                RJMP    $+1+64
                RJMP    $+1+128
                RJMP    $+1+256
                RJMP    $+1+512
                RJMP    $+1+1024

;---------------------------------------------------------------------------
; Register bit operand instructions
;---------------------------------------------------------------------------

                BLD     R17, 1
                BLD     R17, 2
                BLD     R17, 4
                BLD     R18, 1
                BLD     R20, 1
                BLD     R24, 1

                BST     R17, 1
                BST     R17, 2
                BST     R17, 4
                BST     R18, 1
                BST     R20, 1
                BST     R24, 1

                SBRC    R17, 1
                SBRC    R17, 2
                SBRC    R17, 4
                SBRC    R18, 1
                SBRC    R20, 1
                SBRC    R24, 1

                SBRS    R17, 1
                SBRS    R17, 2
                SBRS    R17, 4
                SBRS    R18, 1
                SBRS    R20, 1
                SBRS    R24, 1

;---------------------------------------------------------------------------
; I/O bit operand instructions
;---------------------------------------------------------------------------

                CBI     1, 1
                CBI     1, 2
                CBI     1, 4
                CBI     2, 1
                CBI     4, 1
                CBI     8, 1
                CBI     16, 1

                SBI     1, 1
                SBI     1, 2
                SBI     1, 4
                SBI     2, 1
                SBI     4, 1
                SBI     8, 1
                SBI     16, 1

                SBIC    1, 1
                SBIC    1, 2
                SBIC    1, 4
                SBIC    2, 1
                SBIC    4, 1
                SBIC    8, 1
                SBIC    16, 1

                SBIS    1, 1
                SBIS    1, 2
                SBIS    1, 4
                SBIS    2, 1
                SBIS    4, 1
                SBIS    8, 1
                SBIS    16, 1

;---------------------------------------------------------------------------
; LD and ST instructions
;---------------------------------------------------------------------------

                LD      R17, X
                LD      R18, X
                LD      R20, X
                LD      R24, X
                LD      R17, X+
                LD      R18, X+
                LD      R20, X+
                LD      R24, X+
                LD      R17, -X
                LD      R18, -X
                LD      R20, -X
                LD      R24, -X

                LD      R17, Y
                LD      R18, Y
                LD      R20, Y
                LD      R24, Y
                LD      R17, Y+
                LD      R18, Y+
                LD      R20, Y+
                LD      R24, Y+
                LD      R17, -Y
                LD      R18, -Y
                LD      R20, -Y
                LD      R24, -Y

                LD      R17, Z
                LD      R18, Z
                LD      R20, Z
                LD      R24, Z
                LD      R17, Z+
                LD      R18, Z+
                LD      R20, Z+
                LD      R24, Z+
                LD      R17, -Z
                LD      R18, -Z
                LD      R20, -Z
                LD      R24, -Z

                ST      X, 17
                ST      X, 18
                ST      X, 20
                ST      X, 24
                ST      X+, R17
                ST      X+, R18
                ST      X+, R20
                ST      X+, R24
                ST      -X, R17
                ST      -X, R18
                ST      -X, R20
                ST      -X, R24

                ST      Y, R17
                ST      Y, R18
                ST      Y, R20
                ST      Y, R24
                ST      Y+, R17
                ST      Y+, R18
                ST      Y+, R20
                ST      Y+, R24
                ST      -Y, R17
                ST      -Y, R18
                ST      -Y, R20
                ST      -Y, R24

                ST      Z, R17
                ST      Z, R18
                ST      Z, R20
                ST      Z, R24
                ST      Z+, R17
                ST      Z+, R18
                ST      Z+, R20
                ST      Z+, R24
                ST      -Z, R17
                ST      -Z, R18
                ST      -Z, R20
                ST      -Z, R24

;---------------------------------------------------------------------------
; LDS and STS instructions
;---------------------------------------------------------------------------

                LDS     R17, 1
                LDS     R18, 1
                LDS     R20, 1
                LDS     R24, 1
                LDS     R17, 2
                LDS     R17, 4
                LDS     R17, 8
                LDS     R17, 16
                LDS     R17, 32
                LDS     R17, 64
                LDS     R17, 128

                STS     1, R17
                STS     1, R18
                STS     1, R20
                STS     1, R24
                STS     2, R17
                STS     4, R17
                STS     8, R17
                STS     16, R17
                STS     32, R17
                STS     64, R17
                STS     128, R17

;---------------------------------------------------------------------------
; I/O instructions
;---------------------------------------------------------------------------

                IN      R17, 1
                IN      R18, 1
                IN      R20, 1
                IN      R24, 1
                IN      R17, 2
                IN      R17, 4
                IN      R17, 8
                IN      R17, 16
                IN      R17, 32

                OUT     1, R17
                OUT     1, R18
                OUT     1, R20
                OUT     1, R24
                OUT     2, R17
                OUT     4, R17
                OUT     8, R17
                OUT     16, R17
                OUT     32, R17

;---------------------------------------------------------------------------
; Bit clear and set instructions
;---------------------------------------------------------------------------

                BCLR    1
                BCLR    2
                BCLR    4

                BSET    1
                BSET    2
                BSET    4

;---------------------------------------------------------------------------
; Immediate addressing mode notation options
;---------------------------------------------------------------------------

DATA            .EQ     $12345678

                LDI     R17, DATA       Normal Atmel notation
                LDI     R17, #DATA      Has same effect as the line above
                LDI     R17, /DATA      Use 2nd byte of long word imm mode
                LDI     R17, =DATA      Use 3d byte of long word imm mode
                LDI     R17, \DATA      Use MSB of long word in imm mode


