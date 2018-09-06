                .LF     test.lst
                .SF     test.sym
;---------------------------------------------------------------------------
;   pic16.asm
;
;   Opcode test for the SB-Assembler PIC High end core cross
;
;---------------------------------------------------------------------------

                .CR     pic16           And now it's a PIC16 assembler
                .TF     test.hex,int
                .LI     TON

;---------------------------------------------------------------------------
;   Some labels to work with
;---------------------------------------------------------------------------

FILE            .EQ     $12             A legal file address
GPR             .EQ     $123            Can't be in access bank
SFR             .EQ     $F80            Is in access bank
BIT             .EQ     3               Just an arbitrary bit number
A               .EQ     0               Access bank select
B               .EQ     1               BSR select
                .MS     $400            Set maximum memory size to 1k words

;--------------------------------------------------------------------------
;   Immediate instructions
;--------------------------------------------------------------------------

                ADDLW   #$12345678
                ANDLW   /$12345678
                IORLW   =$12345678
                MOVLB   $A
                MOVLW   \$12345678
                MULLW   #$12
                RETLW   #$12,#$34,#$56  Multiple operands allowed only here
                RETLW                   Operand is optional
                SUBLW   #$12
                XORLW   #$12
                BANKSEL $F00

;--------------------------------------------------------------------------
;   W and file related instructions
;--------------------------------------------------------------------------

                ADDWF   FILE,W          Auto Access bank
                ADDWF   FILE,F          Auto Access bank
                ADDWF   FILE            Destination F, Auto Access bank

                ADDWF   FILE,1          Any expression will do too as dest
                ADDWF   FILE,0           as long as it evaluates to 0 or 1

                ADDWF   GPR,W           Auto Access bank mode
                ADDWF   GPR,F           Auto Access bank mode

                ADDWF   GPR,W,A         Forced Access bank. Dangerous!!!!
                ADDWF   GPR,F,A          GPR is not in range of Access bank
                ADDWF   FILE,W,B
                ADDWF   FILE,F,B
                ADDWF   GPR,0,A         Forced Access bank. dangerous!!!!
                ADDWF   GPR,1,A
                ADDWF   FILE,0,B
                ADDWF   FILE,1,B

                ADDWF   SFR,W           Auto Access bank
                ADDWF   SFR,F           Auto Access bank

                ADDWFC  FILE,W
                ADDWFC  FILE,F
                ADDWFC  FILE
                ANDWF   FILE,W
                ANDWF   FILE,F
                ANDWF   FILE
                COMF    FILE,W
                COMF    FILE,F
                COMF    FILE
                DECF    FILE,W
                DECF    FILE,F
                DECF    FILE
                DECFSZ  FILE,W
                DECFSZ  FILE,F
                DECFSZ  FILE
                DCFSNZ  FILE,W
                DCFSNZ  FILE,F
                DCFSNZ  FILE
                INCF    FILE,W
                INCF    FILE,F
                INCF    FILE
                INCFSZ  FILE,W
                INCFSZ  FILE,F
                INCFSZ  FILE
                INFSNZ  FILE,W
                INFSNZ  FILE,F
                INFSNZ  FILE
                IORWF   FILE,W
                IORWF   FILE,F
                IORWF   FILE
                MOVF    FILE,W
                MOVF    FILE,F
                MOVF    FILE
                RLCF    FILE,W
                RLCF    FILE,F
                RLCF    FILE
                RLNCF   FILE,W
                RLNCF   FILE,F
                RLNCF   FILE
                RRCF    FILE,W
                RRCF    FILE,F
                RRCF    FILE
                RRNCF   FILE,W
                RRNCF   FILE,F
                RRNCF   FILE
                SUBFWB  FILE,W
                SUBFWB  FILE,F
                SUBFWB  FILE
                SUBWF   FILE,W
                SUBWF   FILE,F
                SUBWF   FILE
                SUBWFB  FILE,W
                SUBWFB  FILE,F
                SUBWFB  FILE
                SWAPF   FILE,W
                SWAPF   FILE,F
                SWAPF   FILE
                XORWF   FILE,W
                XORWF   FILE,F
                XORWF   FILE

;--------------------------------------------------------------------------
;   Implied instructions
;--------------------------------------------------------------------------

                CLRWDT
                DAW
                NOP
                POP
                PUSH
                RESET
                SLEEP

;--------------------------------------------------------------------------
;   12-bit file to 12-bit file
;--------------------------------------------------------------------------

                MOVFF   0,0
                MOVFF   $FFF,0
                MOVFF   0,$FFC
                MOVFF   $FFF,$FFC

;--------------------------------------------------------------------------
;   Relative instructions
;--------------------------------------------------------------------------

                BC      $+$100      Maximum positive range
                BN      $-$FE       Maximum negative range
                BNC     $+2         All destinations must be to an even
                BNN     $+4          address
                BNOV    $+6
                BNZ     $-2
                BOV     $-4
                BZ      $-6

                BRA     $+$800      Maximum positive range
                RCALL   $-$7FE      Maximum negative range

;--------------------------------------------------------------------------
;   Call and Goto
;--------------------------------------------------------------------------

                CALL    $1FFFFE     Maximum range
                GOTO    $1FFFFE     Maximum range

                CALL    $0000,0     Explicitly don't save to stack
                CALL    $0000,1     Save registers to stack

;--------------------------------------------------------------------------
;   Return instructions
;--------------------------------------------------------------------------

                RETFIE
                RETURN
                RETFIE  0
                RETURN  1

;--------------------------------------------------------------------------
;   File only instructions
;--------------------------------------------------------------------------

                CLRF    FILE
                CLRF    GPR
                CLRF    SFR
                CLRF    GPR,A       Dangerous!!!!
                CLRF    FILE,B

                CPFSEQ  FILE
                CPFSGT  FILE
                CPFSLT  FILE
                MOVWF   FILE
                MULWF   FILE
                NEGF    FILE
                SETF    FILE
                TSTFSZ  FILE

;--------------------------------------------------------------------------
;   BIT instructions
;--------------------------------------------------------------------------

                BCF     FILE,BIT
                BCF     GPR,BIT
                BCF     SFR,BIT
                BCF     FILE,BIT,B
                BCF     GPR,BIT,A   Dangerous!!!!

                BSF     FILE,BIT
                BTFSC   FILE,BIT
                BTFSS   FILE,BIT
                BTG     FILE,BIT

;--------------------------------------------------------------------------
;   LFSR Instruction
;--------------------------------------------------------------------------

                LFSR    0,$000
                LFSR    3,$000
                LFSR    0,$FFF
                LFSR    3,$FFF
                LFSR    2,$A55

;--------------------------------------------------------------------------
;   Table R/W Instructions
;--------------------------------------------------------------------------

                TBLRD   *
                TBLRD   *+
                TBLRD   *-
                TBLRD   +*

                TBLWR   *
                TBLWR   *+
                TBLWR   *-
                TBLWR   +*

;--------------------------------------------------------------------------
;   Pseudo instructions
;--------------------------------------------------------------------------

                CLRC                BCF $FD8,0,0
                CLRDC               BCF $FD8,1,0
                CLRZ                BCF $FD8,2,0
                CLROV               BCF $FD8,3,0
                CLRN                BCF $FD8,4,0
                SETC                BSF $FD8,0,0
                SETDC               BSF $FD8,1,0
                SETZ                BSF $FD8,2,0
                SETOV               BSF $FD8,3,0
                SETN                BSF $FD8,4,0
                SKPC                BTFSS $FD8,0,0
                SKPDC               BTFSS $FD8,1,0
                SKPZ                BTFSS $FD8,2,0
                SKPOV               BTFSS $FD8,3,0
                SKPN                BTFSS $FD8,4,0
                SKPNC               BTFSC $FD8,0,0
                SKPNDC              BTFSC $FD8,1,0
                SKPNZ               BTFSC $FD8,2,0
                SKPNOV              BTFSC $FD8,3,0
                SKPNN               BTFSC $FD8,4,0

;--------------------------------------------------------------------------
;   Test boundary sync when an instruction is stored at an even address
;--------------------------------------------------------------------------

                .DA     #1          Make the address pointer an odd number
THATS_ODD       NOP                 The label should have an even address
                .DA     THATS_ODD   See!

                .DA     #18         A label can get an odd value
VERY_ODD        .DA     #5          As long as it is not an instruction
                .DA     VERY_ODD    See!

;--------------------------------------------------------------------------
;   ID data typically goes here (8 bytes)
;--------------------------------------------------------------------------

                .MS     0           Ignore memory size
                .OR     $200000
                .AS     /SB-Assem/

;--------------------------------------------------------------------------
;   Configuration words typically go here (Multiple words)
;--------------------------------------------------------------------------

                .MS     0           Ignore memory size
                .OR     $200000
                .DA     $1234
                .DA     $5678
                .DA     $9ABC
                .DA     $DEF0

;--------------------------------------------------------------------------
;   EEPROM data typically goes here
;--------------------------------------------------------------------------

                .MS     0           Ignore memory size
                .OR     $F00000
                .HS     .00.01.02.03.04.05.06.07
                .HS     .08.09.0A.0B.0C.0D.0E.0F
