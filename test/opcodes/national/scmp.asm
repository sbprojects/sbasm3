                .LF     test.lst
;---------------------------------------------------------------------------
;   scmp.asm
;
;   Opcode test for the SB-Assembler SC/MP cross
;
;---------------------------------------------------------------------------

                .CR 	scmp	 		Select the intended overlay
                .TF     test.hex,int
                .LI     TON

                .OR     $0001           The SC/MP can't start at $0000 !

;---------------------------------------------------------------------------
;   Implied Addressing Mode Instructions
;---------------------------------------------------------------------------

                HALT
                XAE
                CCL
                SCL
                DINT
                IEN
                CSA
                CAS
                NOP
                SIO
                SR
                SRL
                RR
                RRL
                LDE
                ANE
                ORE
                XRE
                DAE
                ADE
                CAE

;---------------------------------------------------------------------------
;   Immediate Addressing Mode Instructions
;---------------------------------------------------------------------------

                XPAL    PC
                XPAL    P0      Alternative to pointer PC
                XPAL    P1
                XPAL    P2
                XPAL    P3

                XPAH    PC
                XPAH    P0      Alternative to pointer PC
                XPAH    P1
                XPAH    P2
                XPAH    P3

                XPPC    PC
                XPPC    P0      Alternative to pointer PC
                XPPC    P1
                XPPC    P2
                XPPC    P3

# Pseudo instruction (complement of JS)
                RET     PC      Does nothing (swaps PC with PC)
                RET     P0      Same as RET PC
                RET     P1
                RET     P2
                RET     P3

;---------------------------------------------------------------------------
;   Immediate Addressing Mode Instructions
;---------------------------------------------------------------------------

DATA			.EQ     $78563412
                DLY     DATA
                LDI     DATA
                ANI     DATA
                ORI     DATA
                XRI     DATA
                DAI     DATA
                ADI     DATA
                CAI     DATA

                LDI     #DATA       Alternate notation
                LDI     /DATA
                LDI     =DATA
                LDI     \DATA

;---------------------------------------------------------------------------
;   Memory reference Instructinos
;---------------------------------------------------------------------------

                LD      TEST        Optional (PC) omtitted, absolute address
                LD      10(PC)      Displacement of 10 on PC
                LD      -10(P0)     Displacement of -10 on P0 (same as PC)
                LD      10(P1)
                LD      -10(P2)
                LD      10(P3)
                LD      (PC)        Displacement is 0
                LD      (P0)
                LD      (P1)
                LD      (P2)
                LD      (P3)
                LD      E           Displacement is register E (not abs!)
                LD      E(PC)
                LD      E(P0)
                LD      E(P1)
                LD      E(P2)
                LD      E(P3)
                LD      @-20(P1)
                LD      @20(P2)
                LD      @-20(P3)
                LD      @E(P1)
                LD      @E(P2)
                LD      @E(P3)
                LD      @(P1)
                LD      @(P2)
                LD      @(P3)

TEST            .DA     #$A5        Some arbitrary data

                ST      TEST        These can have the same operands as LD
                ST      10(P0)
                ST      10(P1)
                ST      10(P2)
                ST      10(P3)
                AND     -10(P0)
                AND     -10(P1)
                AND     -10(P2)
                AND     -10(P3)
                OR      @10(P1)
                OR      @10(P2)
                OR      @10(P3)
                XOR     @-10(P1)
                XOR     @-10(P2)
                XOR     @-10(P3)
                DAD     E(P0)
                DAD     E(P1)
                DAD     E(P2)
                DAD     E(P3)
                ADD     @E(P1)
                ADD     @E(P2)
                ADD     @E(P3)
                CAD     (P0)
                CAD     (P1)
                CAD     (P2)
                CAD     (P3)

;---------------------------------------------------------------------------
;   Memory reference Instructinos (Illegal addressing modes)
;---------------------------------------------------------------------------

#               LD      @20
#               LD      @-20(PC)
#               LD      @20(P0)
#               LD      @E
#               LD      @E(PC)
#               LD      @E(P0)
#               OR      @10(P0)
#               X0R     @-10(P0)
#               ADD     @E(P0)
#               CAD     @(PC)

;---------------------------------------------------------------------------
;   Transfer Instructinos
;---------------------------------------------------------------------------

                JMP     LABEL       Optional (PC) omtitted, absolute address
                JMP     10(PC)      Displacement of 10 on PC
                JMP     -10(P0)     Displacement of -10 on P0 (same as PC)
                JMP     10(P1)
                JMP     -10(P2)
                JMP     10(P3)
                JMP     (PC)        Displacement is 0
                JMP     (P0)
                JMP     (P1)
                JMP     (P2)
                JMP     (P3)

LABEL

                JP      LABEL       These can have the same operands as LD
                JP      10(P0)
                JP      10(P1)
                JP      10(P2)
                JP      10(P3)
                JZ      LABEL
                JZ      -10(P0)
                JZ      -10(P1)
                JZ      -10(P2)
                JZ      -10(P3)
                JNZ     LABEL
                JNZ     (P0)
                JNZ     (P1)
                JNZ     (P2)
                JNZ     (P3)
                ILD     LABEL
                ILD     10(P0)
                ILD     10(P1)
                ILD     10(P2)
                ILD     10(P3)
                DLD     LABEL
                DLD     -10(P0)
                DLD     -10(P1)
                DLD     -10(P2)
                DLD     -10(P3)

;---------------------------------------------------------------------------
;   Pseudo Instructinos
;---------------------------------------------------------------------------

                JS      P1,$1234
                JS      P2,$5678
                JS      P3,$9ABC
