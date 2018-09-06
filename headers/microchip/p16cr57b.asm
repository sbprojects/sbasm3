;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC16CR57B processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC16CR57B microcontroller.  These names
;  are taken to match the data sheets as closely as possible.
;==========================================================================

;==========================================================================
;
;       Select cross overlay
;
;==========================================================================

                  .CR   pic12
                  .MS   2048

;==========================================================================
;
;       Register Definitions
;
;==========================================================================

W                .EQ  $0000
F                .EQ  $0001

;----- Register Files -----------------------------------------------------

;-----Bank0------------------
INDF             .EQ  $0000
TMR0             .EQ  $0001
PCL              .EQ  $0002
STATUS           .EQ  $0003
FSR              .EQ  $0004
PORTA            .EQ  $0005
PORTB            .EQ  $0006
PORTC            .EQ  $0007

;----- STATUS Bits -----------------------------------------------------
C                .EQ  $0000
DC               .EQ  $0001
Z                .EQ  $0002
NOT_PD           .EQ  $0003
NOT_TO           .EQ  $0004

PA0              .EQ  $0005
PA1              .EQ  $0006
PA2              .EQ  $0007


;----- PORTA Bits -----------------------------------------------------
RA0              .EQ  $0000
RA1              .EQ  $0001
RA2              .EQ  $0002
RA3              .EQ  $0003
T0CKI            .EQ  $0004


;----- PORTB Bits -----------------------------------------------------
RB0              .EQ  $0000
RB1              .EQ  $0001
RB2              .EQ  $0002
RB3              .EQ  $0003
RB4              .EQ  $0004
RB5              .EQ  $0005
RB6              .EQ  $0006
RB7              .EQ  $0007


;----- PORTC Bits -----------------------------------------------------
RC0              .EQ  $0000
RC1              .EQ  $0001
RC2              .EQ  $0002
RC3              .EQ  $0003
RC4              .EQ  $0004
RC5              .EQ  $0005
RC6              .EQ  $0006
RC7              .EQ  $0007



;----- OPTION_REG Bits -----------------------------------------------------
PSA              .EQ  $0003
T0SE             .EQ  $0004
T0CS             .EQ  $0005


;----- TRISC Bits -----------------------------------------------------
TRISC0           .EQ  $0000
TRISC1           .EQ  $0001
TRISC2           .EQ  $0002
TRISC3           .EQ  $0003
TRISC4           .EQ  $0004
TRISC5           .EQ  $0005
TRISC6           .EQ  $0006
TRISC7           .EQ  $0007


;----- TRISB Bits -----------------------------------------------------
TRISB0           .EQ  $0000
TRISB1           .EQ  $0001
TRISB2           .EQ  $0002
TRISB3           .EQ  $0003
TRISB4           .EQ  $0004
TRISB5           .EQ  $0005
TRISB6           .EQ  $0006
TRISB7           .EQ  $0007


;----- TRISA Bits -----------------------------------------------------
TRISA0           .EQ  $0000
TRISA1           .EQ  $0001
TRISA2           .EQ  $0002
TRISA3           .EQ  $0003
TRISA4           .EQ  $0004



;==========================================================================
;
;       RAM Definitions
;
;==========================================================================

_MAXRAM          .EQ  $007F

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

_CP_ON               .EQ  $0007  Code protection on
_CP_OFF              .EQ  $0FFF  Code protection off


;----- IDLOC Equates --------------------------------------------------
_IDLOC0          .EQ  $800
_IDLOC1          .EQ  $801
_IDLOC2          .EQ  $802
_IDLOC3          .EQ  $803
