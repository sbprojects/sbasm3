                .LF     test.lst
;---------------------------------------------------------------------------
;   directives.asm
;
;   Directive test for the SB-Assembler AVR cross family
;
;   Valid for all family members
;
;---------------------------------------------------------------------------

        .CR     AVR     And now for something completely different
        .FA     XMEGA

        .TF     test.hex, int
        .LI     TON

;---------------------------------------------------------------------------
;   Memory select directives
;---------------------------------------------------------------------------

        .DS         Data segment (RAM)
        .ES         EEPROM segment
        .CS         Code segment

;---------------------------------------------------------------------------
;   Define register
;---------------------------------------------------------------------------

REG1    .DE     R16
REG2    .DE     R30

        ADD     REG1,REG2

;---------------------------------------------------------------------------
;   Boundary Sync
;---------------------------------------------------------------------------

        .DA     #$11
        .EV
        .DA     $2233
        .EV
        .DA     #$44
        .EV

;---------------------------------------------------------------------------
;   Select family (is extensively tested in opcode tests)
;---------------------------------------------------------------------------

        .FA     TINY
        .FA     AVR
        .FA     MEGA
        .FA     XMEGA
        .FA     REDUCED
        .FA     MINIMAL
        .FA     CLASSIC8K
        .FA     CLASSIC128K
        .FA     ENHANCED8K
        .FA     ENHANCED128K
        .FA     ENHANCED4M

;---------------------------------------------------------------------------
;   Memory size
;---------------------------------------------------------------------------

        .MS     $100

;        RJMP    $100    Uncomment this to get range error
;        JMP     $100    Uncomment this to get range error

        .OR     $FF

        NOP
;        NOP             Uncomment this to get a warning
