                .LF     test.lst
;---------------------------------------------------------------------------
;   test-8051.asm
;
;   Opcode test for the SB-Assembler 8051 cross
;
;---------------------------------------------------------------------------

                .CR     8051            It's just like magic, isn't it?!
                .TF     test.hex,hex
                .LI     TON

;---------------------------------------------------------------------------
; Some declarations used for testing addressing modes
;---------------------------------------------------------------------------

DATA            .EQ     $0012
DIRECT          .EQ     $0034
BIT             .EQ     $0056
NEAR0           .EQ     $0012
NEAR1           .EQ     $0123
NEAR2           .EQ     $0234
NEAR3           .EQ     $0345
NEAR4           .EQ     $0456
NEAR5           .EQ     $0567
NEAR6           .EQ     $0678
NEAR7           .EQ     $0789
FAR             .EQ     $5678

;---------------------------------------------------------------------------
; Opcodes $00..$0F
;---------------------------------------------------------------------------

                NOP
                AJMP    NEAR0
                LJMP    FAR
                RR      A
                INC     A
                INC     DIRECT
                INC     @R0
                INC     @R1
                INC     R0
                INC     R1
                INC     R2
                INC     R3
                INC     R4
                INC     R5
                INC     R6
                INC     R7

;---------------------------------------------------------------------------
; Opcodes $10..$1F
;---------------------------------------------------------------------------

                JBC     BIT,BRANCH1
                ACALL   NEAR0
                LCALL   FAR
                RRC     A
                DEC     A
                DEC     DIRECT
                DEC     @R0
                DEC     @R1
                DEC     R0
                DEC     R1
                DEC     R2
                DEC     R3
                DEC     R4
                DEC     R5
                DEC     R6
                DEC     R7

;---------------------------------------------------------------------------
; Opcodes $20..$2F
;---------------------------------------------------------------------------

                JB      BIT,BRANCH1
                AJMP    NEAR1
                RET
                RL      A
                ADD     A,#DATA
                ADD     A,DIRECT
                ADD     A,@R0
                ADD     A,@R1
                ADD     A,R0
                ADD     A,R1
                ADD     A,R2
                ADD     A,R3
                ADD     A,R4
                ADD     A,R5
                ADD     A,R6
                ADD     A,R7

;---------------------------------------------------------------------------
; Opcodes $30..$3F
;---------------------------------------------------------------------------

                JNB     BIT,BRANCH1
                ACALL   NEAR1
                RETI
                RLC     A
                ADDC    A,#DATA
                ADDC    A,DIRECT
                ADDC    A,@R0
                ADDC    A,@R1
                ADDC    A,R0
                ADDC    A,R1
                ADDC    A,R2
                ADDC    A,R3
                ADDC    A,R4
                ADDC    A,R5
                ADDC    A,R6
                ADDC    A,R7

;---------------------------------------------------------------------------
; Opcodes $40..$4F
;---------------------------------------------------------------------------

                JC      BRANCH1
                AJMP    NEAR2
                ORL     DIRECT,A
                ORL     DIRECT,#DATA
                ORL     A,#DATA
                ORL     A,DIRECT
                ORL     A,@R0
                ORL     A,@R1
                ORL     A,R0
                ORL     A,R1
                ORL     A,R2
                ORL     A,R3
                ORL     A,R4
                ORL     A,R5
                ORL     A,R6
                ORL     A,R7

;---------------------------------------------------------------------------
; Opcodes $50..$5F
;---------------------------------------------------------------------------

                JNC     BRANCH1
                ACALL   NEAR2
                ANL     DIRECT,A
                ANL     DIRECT,#DATA
                ANL     A,#DATA
                ANL     A,DIRECT
                ANL     A,@R0
                ANL     A,@R1
                ANL     A,R0
                ANL     A,R1
                ANL     A,R2
                ANL     A,R3
                ANL     A,R4
                ANL     A,R5
                ANL     A,R6
                ANL     A,R7

;---------------------------------------------------------------------------
; Opcodes $60..$6F
;---------------------------------------------------------------------------

BRANCH1         JZ      BRANCH1
                AJMP    NEAR3
                XRL     DIRECT,A
                XRL     DIRECT,#DATA
                XRL     A,#DATA
                XRL     A,DIRECT
                XRL     A,@R0
                XRL     A,@R1
                XRL     A,R0
                XRL     A,R1
                XRL     A,R2
                XRL     A,R3
                XRL     A,R4
                XRL     A,R5
                XRL     A,R6
                XRL     A,R7

;---------------------------------------------------------------------------
; Opcodes $70..$7F
;---------------------------------------------------------------------------

                JNZ     BRANCH1
                ACALL   NEAR3
                ORL     C,BIT
                JMP     @A+DPTR
                MOV     A,#DATA
                MOV     DIRECT,#DATA
                MOV     @R0,#DATA
                MOV     @R1,#DATA
                MOV     R0,#DATA
                MOV     R1,#DATA
                MOV     R2,#DATA
                MOV     R3,#DATA
                MOV     R4,#DATA
                MOV     R5,#DATA
                MOV     R6,#DATA
                MOV     R7,#DATA

;---------------------------------------------------------------------------
; Opcodes $80..$8F
;---------------------------------------------------------------------------

                SJMP    BRANCH1
                AJMP    NEAR4
                ANL     C,BIT
                MOVC    A,@A+PC
                DIV     AB
                MOV     DIRECT,DIRECT+1
                MOV     DIRECT,@R0
                MOV     DIRECT,@R1
                MOV     DIRECT,R0
                MOV     DIRECT,R1
                MOV     DIRECT,R2
                MOV     DIRECT,R3
                MOV     DIRECT,R4
                MOV     DIRECT,R5
                MOV     DIRECT,R6
                MOV     DIRECT,R7

;---------------------------------------------------------------------------
; Opcodes $90..$9F
;---------------------------------------------------------------------------

                MOV     DPTR,#DATA
                ACALL   NEAR4
                MOV     BIT,C
                MOVC    A,@A+DPTR
                SUBB    A,#DATA
                SUBB    A,DIRECT
                SUBB    A,@R0
                SUBB    A,@R1
                SUBB    A,R0
                SUBB    A,R1
                SUBB    A,R2
                SUBB    A,R3
                SUBB    A,R4
                SUBB    A,R5
                SUBB    A,R6
                SUBB    A,R7

;---------------------------------------------------------------------------
; Opcodes $A0..$AF
;---------------------------------------------------------------------------

                ORL     C,/BIT
                AJMP    NEAR5
                MOV     C,BIT
                INC     DPTR
                MUL     AB
                .DA     #$A5            Only reserved opcode in 8051!
                MOV     @R0,DIRECT
                MOV     @R1,DIRECT
                MOV     R0,DIRECT
                MOV     R1,DIRECT
                MOV     R2,DIRECT
                MOV     R3,DIRECT
                MOV     R4,DIRECT
                MOV     R5,DIRECT
                MOV     R6,DIRECT
                MOV     R7,DIRECT

;---------------------------------------------------------------------------
; Opcodes $B0..$BF
;---------------------------------------------------------------------------

                ANL     C,/BIT
                ACALL   NEAR5
                CPL     BIT
                CPL     C
                CJNE    A,#DATA,BRANCH2
                CJNE    A,DIRECT,BRANCH2
                CJNE    @R0,#DATA,BRANCH2
                CJNE    @R1,#DATA,BRANCH2
                CJNE    R0,#DATA,BRANCH2
                CJNE    R1,#DATA,BRANCH2
                CJNE    R2,#DATA,BRANCH2
                CJNE    R3,#DATA,BRANCH2
                CJNE    R4,#DATA,BRANCH2
                CJNE    R5,#DATA,BRANCH2
                CJNE    R6,#DATA,BRANCH2
                CJNE    R7,#DATA,BRANCH2

;---------------------------------------------------------------------------
; Opcodes $C0..$CF
;---------------------------------------------------------------------------

                PUSH    DIRECT
                AJMP    NEAR6
                CLR     BIT
                CLR     C
                SWAP    A
                XCH     A,DIRECT
                XCH     A,@R0
                XCH     A,@R1
                XCH     A,R0
                XCH     A,R1
                XCH     A,R2
                XCH     A,R3
                XCH     A,R4
                XCH     A,R5
                XCH     A,R6
                XCH     A,R7

;---------------------------------------------------------------------------
; Opcodes $D0..$DF
;---------------------------------------------------------------------------

                POP     DIRECT
                ACALL   NEAR6
                SETB    BIT
                SETB    C
                DA      A
BRANCH2         DJNZ    DIRECT,BRANCH2
                XCHD    A,@R0
                XCHD    A,@R1
                DJNZ    R0,BRANCH2
                DJNZ    R1,BRANCH2
                DJNZ    R2,BRANCH2
                DJNZ    R3,BRANCH2
                DJNZ    R4,BRANCH2
                DJNZ    R5,BRANCH2
                DJNZ    R6,BRANCH2
                DJNZ    R7,BRANCH2

;---------------------------------------------------------------------------
; Opcodes $E0..$EF
;---------------------------------------------------------------------------

                MOVX    A,@DPTR
                AJMP    NEAR7
                MOVX    A,@R0
                MOVX    A,@R1
                CLR     A
                MOV     A,DIRECT
                MOV     A,@R0
                MOV     A,@R1
                MOV     A,R0
                MOV     A,R1
                MOV     A,R2
                MOV     A,R3
                MOV     A,R4
                MOV     A,R5
                MOV     A,R6
                MOV     A,R7

;---------------------------------------------------------------------------
; Opcodes $F0..$FF
;---------------------------------------------------------------------------

                MOVX    @DPTR,A
                ACALL   NEAR7
                MOVX    @R0,A
                MOVX    @R1,A
                CPL     A
                MOV     DIRECT,A
                MOV     @R0,A
                MOV     @R1,A
                MOV     R0,A
                MOV     R1,A
                MOV     R2,A
                MOV     R3,A
                MOV     R4,A
                MOV     R5,A
                MOV     R6,A
                MOV     R7,A

;---------------------------------------------------------------------------
; Special tricks performed by the SB-Assembler
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Automatically translates label names into register numbers, depending
; on the current setting of the .RB value and the availability of the
; addressing mode.
; This can also be used the other way around, like in the PUSH instruction.
; Originally PUSH can't push a register, but it can push the memory location
; belonging to the register.
;---------------------------------------------------------------------------

LABEL_IN_RB0    .EQ     $01             Will resolve to R1 if RB=0
LABEL_IN_RB1    .EQ     $09             Will resolve to R1 if RB=1
LABEL_IN_RB2    .EQ     $11             Will resolve to R1 if RB=2
LABEL_IN_RB3    .EQ     $19             Will resolve to R1 if RB=3

                .RB     0               Default register bank
                MOV     A,LABEL_IN_RB0  Uses register mode
                MOV     A,LABEL_IN_RB1  Not in current register bank
                MOV     A,LABEL_IN_RB2  Not in current register bank
                MOV     A,LABEL_IN_RB3  Not in current register bank
                PUSH    R2              Translates to address $02
                MOV     R3,R4           R4 translates to address $04
                MOV     A,>LABEL_IN_RB0 Force direct addressing mode
                CJNE    A,R1,.TRICK     2nd operand is a register

                .RB     1               Assume RB 1 is used
                MOV     A,LABEL_IN_RB0  Not in current register bank
                MOV     A,LABEL_IN_RB1  Uses register mode
                MOV     A,LABEL_IN_RB2  Not in current register bank
                MOV     A,LABEL_IN_RB3  Not in current register bank
                PUSH    R2              Translates to address $0A
                MOV     R3,R4           R4 translates to address $0C
                MOV     A,<LABEL_IN_RB0 Force register mode
                CJNE    A,R1,.TRICK     2nd operand is a register

                .RB     2               Assume RB 2 is used
                MOV     A,LABEL_IN_RB0  Not in current register bank
                MOV     A,LABEL_IN_RB1  Not in current register bank
                MOV     A,LABEL_IN_RB2  Uses register mode
                MOV     A,LABEL_IN_RB3  Not in current register bank
                PUSH    R2              Translates to address $12
                MOV     R3,R4           R4 translates to address $14
                CJNE    A,R1,.TRICK     2nd operand is a register

                .RB     3               Assume RB 3 is used
                MOV     A,LABEL_IN_RB0  Not in current register bank
                MOV     A,LABEL_IN_RB1  Not in current register bank
                MOV     A,LABEL_IN_RB2  Not in current register bank
                MOV     A,LABEL_IN_RB3  Uses register mode
                PUSH    R2              Translates to address $1A
                MOV     R3,R4           R4 translates to address $1C
                CJNE    A,R1,.TRICK     2nd operand is a register

.TRICK
                .RB     0

;---------------------------------------------------------------------------
; JMP and CALL are automatically translated to AJMP/LJMP or ACALL/LCALL
; depending on the current program counter and the destination. The
; assembler will choose the least "expensive" version if possible.
; When a forward referenced label is used the most "expensive" version
; is chosen.
;---------------------------------------------------------------------------

NEAR_ADDRESS    .EQ     $0200
FAR_ADDRESS     .EQ     $1200

                JMP     NEAR_ADDRESS    Translates to AJMP
                JMP     FAR_ADDRESS     Translates to LJMP
                JMP     FORWARD_REF     Translates to LJMP

                CALL    NEAR_ADDRESS    Translates to ACALL
                CALL    FAR_ADDRESS     Translates to LCALL
                CALL    FORWARD_REF     Translates to LCALL

FORWARD_REF     .EQ     $0200           Near, but forward referenced

;---------------------------------------------------------------------------
; Expressions which are followed by a .0 -- .7 are treated as bit addresses.
; The expression should evaluate to a bit addressable memory location
; ($20-$2F,$80,$88,$90,$98,$A0,$A8,$B0,$B8,$C0,$C8,$D0,$D8,$E0,$E8,$F0,$F8)
; The base address for bit addressable RAM will be (address-$20)*8.
; The base address for SFR addresses will remain unchanged.
; The bit number .0 to .7 is added to the resulting base address to get
; the final bit address.
;---------------------------------------------------------------------------

LABEL           .EQ     $20             Must be bit addressable memory!

                MOV     C,$00           Bit number is addressed directly
                MOV     C,$20.0         Same result as previous line
                MOV     C,$7F           Bit number is addressed directly
                MOV     C,$2F.7         Same result as previous line

                MOV     C,$80           Use SFR bit number directly
                MOV     C,$80.0         Same result as previous line
                MOV     C,$FF           Use SFR bit number directly
                MOV     C,$F8.7         Save result as previous line

                MOV     C,LABEL.3       LABEL = bit addressable value
                MOV     C,$20+1.2       Even arithmetic is allowed
                MOV     C,$21.2         Same result as previous line

;---------------------------------------------------------------------------
; New feature in Version 3
; Bit addressing mode is now also available to the .EQ (and =) directive.
; But only for as long as the 8051 cross overlay is loaded. Once it gets
; unloaded the .EQ directive will no longer recognise bit addresses.
;---------------------------------------------------------------------------

SFR             .EQ     $98
BIT_LABEL1      .EQ     $20.0
BIT_LABEL2      .EQ     $2F.7
BIT_LABEL3      .EQ     $80.0
BIT_LABEL4      .EQ     $F8.7
SFR.BIT         .EQ     SFR.3

;---------------------------------------------------------------------------
; Different immediate operands for byte and word sized data.
;---------------------------------------------------------------------------

LONG_VALUE      .EQ     $12345678

                MOV     A,#LONG_VALUE     Use LSB
                MOV     A,/LONG_VALUE     Use 2nd LSB
                MOV     A,=LONG_VALUE     Use 2nd MSB
                MOV     A,\LONG_VALUE     Use MSB

                MOV     DPTR,#LONG_VALUE  Use LSW
                MOV     DPTR,/LONG_VALUE  Use middle 2 bytes
                MOV     DPTR,=LONG_VALUE  Use MSW
                MOV     DPTR,\LONG_VALUE  Use only MSB

;---------------------------------------------------------------------------

