;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC10F222 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC10F222 microcontroller.  These names
;  are taken to match the data sheets as closely as possible.
;
;  Note that the processor must be selected before this file is included.
;  The processor may be selected the following ways:
;==========================================================================

;==========================================================================
;
;       Select cross overlay
;
;==========================================================================

                  .CR   pic12
                  .MS   512

;==========================================================================
;
;       Register Definitions
;
;==========================================================================

;----- Register Files -----------------------------------------------------

;-----Bank0------------------
INDF             .EQ  $00
TMR0             .EQ  $01
PCL              .EQ  $02
STATUS           .EQ  $03
FSR              .EQ  $04
OSCCAL           .EQ  $05
GPIO             .EQ  $06
ADCON0           .EQ  $07
ADRES            .EQ  $08

;----- STATUS Bits -----------------------------------------------------
C                .EQ  0
DC               .EQ  1
Z                .EQ  2
NOT_PD           .EQ  3
NOT_TO           .EQ  4
GPWUF            .EQ  7


;----- OSCCAL Bits -----------------------------------------------------
FOSC4            .EQ  0

CAL0             .EQ  1
CAL1             .EQ  2
CAL2             .EQ  3
CAL3             .EQ  4
CAL4             .EQ  5
CAL5             .EQ  6
CAL6             .EQ  7


;----- GPIO Bits -----------------------------------------------------
GP0              .EQ  0
GP1              .EQ  1
GP2              .EQ  2
GP3              .EQ  3


;----- ADCON0 Bits -----------------------------------------------------
ADON             .EQ  0
GO_NOT_DONE      .EQ  1

GO               .EQ  1
CHS0             .EQ  2
CHS1             .EQ  3
ANS0             .EQ  6
ANS1             .EQ  7

NOT_DONE         .EQ  1


;----- ADRES Bits -----------------------------------------------------
ADRES0           .EQ  0
ADRES1           .EQ  1
ADRES2           .EQ  2
ADRES3           .EQ  3
ADRES4           .EQ  4
ADRES5           .EQ  5
ADRES6           .EQ  6
ADRES7           .EQ  7



;----- OPTION_REG Bits -----------------------------------------------------
PSA              .EQ  3
T0SE             .EQ  4
T0CS             .EQ  5
NOT_GPPU         .EQ  6
NOT_GPWU         .EQ  7
PS0              .EQ  0
PS1              .EQ  1
PS2              .EQ  2


;----- TRISIO Bits -----------------------------------------------------
TRISIO0          .EQ  0
TRISIO1          .EQ  1
TRISIO2          .EQ  2


;==========================================================================
;
;       RAM Definitions
;
;==========================================================================

_MAXRAM          .EQ   $001F

;==========================================================================
;
;       Configuration Bits
;
;   NAME            Address
;   CONFIG             FFFh
;
;==========================================================================

; The following is an assignment of address values for all of the
; configuration registers for the purpose of table reads
_CONFIG      .EQ  $FFF

;----- CONFIG Options --------------------------------------------------
_IOSCFS_4MHZ .EQ  $0FFE   4 MHz
_IOSCFS_8MHZ .EQ  $0FFF   8 MHz

_IOFSCS_4MHZ .EQ  $0FFE   4 MHz
_IOFSCS_8MHZ .EQ  $0FFF   8 MHz

_MCPU_ON     .EQ  $0FFD   Pull-up enabled
_MCPU_OFF    .EQ  $0FFF   Pull-up disabled

_WDTE_OFF    .EQ  $0FFB   WDT disabled
_WDT_OFF     .EQ  $0FFB   WDT disabled
_WDTE_ON     .EQ  $0FFF   WDT enabled
_WDT_ON      .EQ  $0FFF   WDT enabled

_CP_ON       .EQ  $0FF7   Code protection on
_CP_OFF      .EQ  $0FFF   Code protection off

_MCLRE_OFF   .EQ  $0FEF   GP3/MCLR pin function is digital I/O, MCLR internally tied to VDD
_MCLRE_ON    .EQ  $0FFF   GP3/MCLR pin function is MCLR


;----- IDLOC .EQates --------------------------------------------------
_IDLOC0         .EQ  $200
_IDLOC1         .EQ  $201
_IDLOC2         .EQ  $202
_IDLOC3         .EQ  $203

