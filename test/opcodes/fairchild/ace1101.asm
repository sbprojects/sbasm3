                .LF     test.lst
;---------------------------------------------------------------------------
;   ACE1101.ASM
;
;   Opcode test for the SB-Assembler ACE1101 cross
;
;---------------------------------------------------------------------------

                .CR     ACE1101   And now for something completely different
                .OR     $0C00
                .TF     test.hex,hex
                .LI     TON

;---------------------------------------------------------------------------
;   Inherent addressing mode instructions
;---------------------------------------------------------------------------

                IFC
                IFNC
                INTR
                INVC
                NOP
                RC
                RET
                RETI
                SC

;---------------------------------------------------------------------------
;   Single operand instructions
;---------------------------------------------------------------------------

                CLR     A
                CLR     X
                CLR     $12

                DEC     A
                DEC     X
                DEC     $12

                INC     A
                INC     X
                INC     $12

                RLC     A
                RLC     $12

                RRC     A
                RRC     $12

;---------------------------------------------------------------------------
;   Multiple operand instructions
;---------------------------------------------------------------------------

                ADC     A,#$34
                ADC     A,$12
                ADC     A,[X]

                ADD     A,#$34
                ADD     A,$12
                ADD     A,[X]

                AND     A,#$34
                AND     A,$12
                AND     A,[X]

                IFEQ    A,#$12
                IFEQ    A,$34
                IFEQ    A,[X]
                IFEQ    X,#$123
                IFEQ    $34,#$12

                IFGT    A,#$12
                IFGT    A,$34
                IFGT    A,[X]
                IFGT    X,#$123

                IFLT    X,#$123

                IFNE    A,#$12
                IFNE    A,$34
                IFNE    A,[X]

                LD      A,#$12
                LD      A,$34
                LD      A,[X]
                LD      A,[#$12,X]
                LD      X,#$123
                LD      $34,#$12
                LD      $12,$34

                OR      A,#$12
                OR      A,$34
                OR      A,[X]

                ST      A,$34
                ST      A,[X]
                ST      A,[#$12,X]

                SUBC    A,#$12
                SUBC    A,$34
                SUBC    A,[X]

                XOR     A,#$12
                XOR     A,$34
                XOR     A,[X]

;---------------------------------------------------------------------------
;   Bit related instructions
;---------------------------------------------------------------------------

                IFBIT   7,A
                IFBIT   7,$12

                LDC     2,$12

                STC     2,$12

                RBIT    2,$12
                RBIT    2,[X]

                SBIT    2,$12
                SBIT    2,[X]

;---------------------------------------------------------------------------
;   Jump instructions
;---------------------------------------------------------------------------

                JMP     $0CDE

                JSR     $0CDE

                JP      $+1
                JP      $+2
                JP      $+32
                JP      $+0
                JP      $-1
                JP      $-30

;---------------------------------------------------------------------------
;   Addressing options
;---------------------------------------------------------------------------

                LD      A,#$12345678
                LD      A,/$12345678
                LD      A,=$12345678
                LD      A,\$12345678

                LDC     #3,$12                  # sign is optional
                LDC     3,$12
                LDC     #3,$12

                LD      A,[#$12,X]              # sign is optional
                LD      A,[$12,X]

                .DA     $1234
                .DR     $1234
