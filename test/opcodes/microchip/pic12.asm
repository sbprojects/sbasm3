                .LF     test.lst
;---------------------------------------------------------------------------
;   pic12.asm
;
;   Opcode test for the SB-Assembler PIC Base-line core cross
;
;---------------------------------------------------------------------------

                .CR     pic12           And now it's a PIC12 assembler
                .TF     test.hex,int
                .LI     TON

;---------------------------------------------------------------------------
;   Some labels to work with
;---------------------------------------------------------------------------

FILE            .EQ     $12             A legal file address
BIT             .EQ     3               Just an arbitrary bit number
PORTA           .EQ     $05             f value for port A

;--------------------------------------------------------------------------
;   Immediate instructions
;--------------------------------------------------------------------------

                RETLW   #$12,#$34,#$56  Multiple operands allowed only here
                RETLW                   Parameter for RETLW is optional
                CALL    $12             Only # prefix is tolerated
                GOTO    $012            Only # prefix is tolerated
                GOTO    $123
                MOVLW   #$12
                IORLW   #$12
                ANDLW   #$12
                XORLW   #$12

;--------------------------------------------------------------------------
;   Implied instructions
;--------------------------------------------------------------------------

                CLRW
                CLRWDT
                NOP
                OPTION
                SLEEP

;--------------------------------------------------------------------------
;   File only instructions
;--------------------------------------------------------------------------

                CLRF    FILE
                MOVWF   FILE
                TRIS    $07             Only 5, 6 and 7 is allowed
                TRIS    PORTA           Labels values are also accepted

;--------------------------------------------------------------------------
;   W and file related instructions
;--------------------------------------------------------------------------

                ADDWF   FILE,W
                ADDWF   FILE,F
                ADDWF   FILE            Omitted destination = destination F

                ADDWF   FILE,1          Any expression will do too as dest
                ADDWF   FILE,0           as long as it evaluates to 0 or 1

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
                INCF    FILE,W
                INCF    FILE,F
                INCF    FILE
                INCFSZ  FILE,W
                INCFSZ  FILE,F
                INCFSZ  FILE
                IORWF   FILE,W
                IORWF   FILE,F
                IORWF   FILE
                MOVF    FILE,W
                MOVF    FILE,F
                MOVF    FILE
                RLF     FILE,W
                RLF     FILE,F
                RLF     FILE
                RRF     FILE,W
                RRF     FILE,F
                RRF     FILE
                SUBWF   FILE,W
                SUBWF   FILE,F
                SUBWF   FILE
                SWAPF   FILE,W
                SWAPF   FILE,F
                SWAPF   FILE
                XORWF   FILE,W
                XORWF   FILE,F
                XORWF   FILE

;--------------------------------------------------------------------------
;   BIT instructions
;--------------------------------------------------------------------------

                BCF     FILE,BIT
                BSF     FILE,BIT
                BTFSC   FILE,BIT
                BTFSS   FILE,BIT

                BCF     $1F,0
                BCF     0,7

;--------------------------------------------------------------------------
;   Pseudo instructions
;--------------------------------------------------------------------------

                ADDCF   FILE,W      BTFSC 3,0  INCF f,d
                ADDCF   FILE,F
                ADDCF   FILE
                ADDDCF  FILE,W      BTFSC 3,1  INCF f.d
                ADDDCF  FILE,F
                ADDDCF  FILE
                B       $123        Same as GOTO
                BC      $123        BTFSC 3,0  GOTO
                BDC     $123        BTFSC 3,1  GOTO
                BNC     $123        BTFSS 3,0  GOTO
                BNDC    $123        BTFSS 3,1  GOTO
                BNZ     $123        BTFSS 3,2  GOTO
                BZ      $123        BTFSC 3,2  GOTO
                CLRC                BCF 3,0
                CLRDC               BCF 3,1
                CLRZ                BCF 3,2
                MOVFW   FILE        MOVF f,0
                NEGF    FILE,W      COMF f,1  INCF f,d
                NEGF    FILE,F
                NEGF    FILE
                SETC                BSF 3,0
                SETDC               BSF 3,1
                SETZ                BSF 3,2
                SKPC                BTFSS 3,0
                SKPDC               BTFSS 3,1
                SKPNC               BTFSC 3,0
                SKPNDC              BTFSC 3,1
                SKPNZ               BTFSC 3,2
                SKPZ                BTFSS 3,2
                SUBCF   FILE,W      BTFSC 3,0  DECF f,d
                SUBCF   FILE,F
                SUBCF   FILE
                SUBDCF  FILE,W      BTFSC 3,1  DECF f,d
                SUBDCF  FILE,F
                SUBDCF  FILE
                TSTF    FILE        MOVF f,1

                .MS     2048        Needs 2 bit operations
                LCALL   $12         2 clear operations before CALL
                LGOTO   $234        1 clear, 1 set before GOTO
                LCALL   $456        1 set, 1 clear before CALL
                LGOTO   $678        2 set before GOTO

                .MS     1024        Needs only 1 bit operation
                LCALL   $12          Clear bit before CALL
                LGOTO   $234         Set bit before GOTO

                .MS     512         Needs no bit operations
                LCALL   $12
                LGOTO   $123

;--------------------------------------------------------------------------
;   Test redirected save function
;--------------------------------------------------------------------------

                .DA     #1,#2,#3    These will be stored as RETWL instr.
                .DA     $1234

                .HS     .11.22

                .OR     512         Set org beyond program size

                .DA     #1,#2,#3    These will be stored as words
                .DA     $1234

                .HS     .33.44

;--------------------------------------------------------------------------
;   ID and CW are located outside program memory
;--------------------------------------------------------------------------

                .OR     $0800           ID directly follows program or
                ;                        EEPROM memory.
                .ID     $1234           Fill ID word
                .ID     #$1234          Directive is # tolerant

                .OR     $0FFF           Standard configuratio word location
                .CW     %0101.1010.1010     Specify configuration word
                .OR     $0FFF           Standard configuratio word location
                .CW     #%0101.1010.1010    .CW is # tolerant

