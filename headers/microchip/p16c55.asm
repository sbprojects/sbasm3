;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC16C55 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC16C55 microcontroller.  These names
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
PORTA            .EQ  $05
PORTB            .EQ  $06
PORTC            .EQ  $07

;----- STATUS Bits -----------------------------------------------------
C                .EQ  0
DC               .EQ  1
Z                .EQ  2
NOT_PD           .EQ  3
NOT_TO           .EQ  4


;----- PORTA Bits -----------------------------------------------------
RA0              .EQ  0
RA1              .EQ  1
RA2              .EQ  2
RA3              .EQ  3
T0CKI            .EQ  4


;----- PORTB Bits -----------------------------------------------------
RB0              .EQ  0
RB1              .EQ  1
RB2              .EQ  2
RB3              .EQ  3
RB4              .EQ  4
RB5              .EQ  5
RB6              .EQ  6
RB7              .EQ  7


;----- PORTC Bits -----------------------------------------------------
RC0              .EQ  0
RC1              .EQ  1
RC2              .EQ  2
RC3              .EQ  3
RC4              .EQ  4
RC5              .EQ  5
RC6              .EQ  6
RC7              .EQ  7



;----- OPTION_REG Bits -----------------------------------------------------
PSA              .EQ  3
T0SE             .EQ  4
T0CS             .EQ  5


;----- TRISC Bits -----------------------------------------------------
TRISC0           .EQ  0
TRISC1           .EQ  1
TRISC2           .EQ  2
TRISC3           .EQ  3
TRISC4           .EQ  4
TRISC5           .EQ  5
TRISC6           .EQ  6
TRISC7           .EQ  7


;----- TRISB Bits -----------------------------------------------------
TRISB0           .EQ  0
TRISB1           .EQ  1
TRISB2           .EQ  2
TRISB3           .EQ  3
TRISB4           .EQ  4
TRISB5           .EQ  5
TRISB6           .EQ  6
TRISB7           .EQ  7


;----- TRISA Bits -----------------------------------------------------
TRISA0           .EQ  0
TRISA1           .EQ  1
TRISA2           .EQ  2
TRISA3           .EQ  3
TRISA4           .EQ  4



;==========================================================================
;
;       RAM Definitions
;
;==========================================================================

_MAXRAM      .EQ   $001F

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
_CONFIG         .EQ  $FFF

;----- CONFIG Options --------------------------------------------------
_OSC_LP              .EQ  $0FFC  LP oscillator
_LP_OSC              .EQ  $0FFC  LP oscillator
_OSC_XT              .EQ  $0FFD  XT oscillator
_XT_OSC              .EQ  $0FFD  XT oscillator
_OSC_HS              .EQ  $0FFE  HS oscillator
_HS_OSC              .EQ  $0FFE  HS oscillator
_OSC_RC              .EQ  $0FFF  RC oscillator
_RC_OSC              .EQ  $0FFF  RC oscillator

_WDT_OFF             .EQ  $0FFB  WDT disabled
_WDT_ON              .EQ  $0FFF  WDT enabled

_CP_ON               .EQ  $0FF7  Code protection on
_CP_OFF              .EQ  $0FFF  Code protection off


;----- IDLOC .EQates --------------------------------------------------
_IDLOC0          .EQ  $200
_IDLOC1          .EQ  $201
_IDLOC2          .EQ  $202
_IDLOC3          .EQ  $203


