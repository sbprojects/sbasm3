;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC16F526 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC16F526 microcontroller.  These names
;  are taken to match the data sheets as closely as possible.
;==========================================================================

;==========================================================================
;
;       Select cross overlay
;
;==========================================================================

                  .CR   pic12
                  .MS   1024

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
OSCCAL           .EQ  $0005
PORTB            .EQ  $0006
PORTC            .EQ  $0007
CM1CON0          .EQ  $0008
ADCON0           .EQ  $0009
ADRES            .EQ  $000A
CM2CON0          .EQ  $000B
VRCON            .EQ  $000C

;-----Bank1------------------
EECON            .EQ  $0021
EEDATA           .EQ  $0025
EEADR            .EQ  $0026

;----- STATUS Bits -----------------------------------------------------
C                .EQ  $0000
DC               .EQ  $0001
Z                .EQ  $0002
NOT_PD           .EQ  $0003
NOT_TO           .EQ  $0004
PA0              .EQ  $0005
CWUF             .EQ  $0006
RBWUF            .EQ  $0007


;----- OSCCAL Bits -----------------------------------------------------
CAL0             .EQ  $0001
CAL1             .EQ  $0002
CAL2             .EQ  $0003
CAL3             .EQ  $0004
CAL4             .EQ  $0005
CAL5             .EQ  $0006
CAL6             .EQ  $0007


;----- PORTB Bits -----------------------------------------------------
RB0              .EQ  $0000
RB1              .EQ  $0001
RB2              .EQ  $0002
RB3              .EQ  $0003
RB4              .EQ  $0004
RB5              .EQ  $0005


;----- PORTC Bits -----------------------------------------------------
RC0              .EQ  $0000
RC1              .EQ  $0001
RC2              .EQ  $0002
RC3              .EQ  $0003
RC4              .EQ  $0004
RC5              .EQ  $0005


;----- CM1CON0 Bits -----------------------------------------------------
NOT_C1WU         .EQ  $0000
C1PREF           .EQ  $0001
C1NREF           .EQ  $0002
C1ON             .EQ  $0003
NOT_C1T0CS       .EQ  $0004
C1POL            .EQ  $0005
NOT_C1OUTEN      .EQ  $0006
C1OUT            .EQ  $0007


;----- ADCON0 Bits -----------------------------------------------------
ADON             .EQ  $0000
GO_NOT_DONE      .EQ  $0001

GO               .EQ  $0001
CHS0             .EQ  $0002
CHS1             .EQ  $0003
ADCS0            .EQ  $0004
ADCS1            .EQ  $0005
ANS0             .EQ  $0006
ANS1             .EQ  $0007

NOT_DONE         .EQ  $0001


;----- ADRES Bits -----------------------------------------------------
ADRES0           .EQ  $0000
ADRES1           .EQ  $0001
ADRES2           .EQ  $0002
ADRES3           .EQ  $0003
ADRES4           .EQ  $0004
ADRES5           .EQ  $0005
ADRES6           .EQ  $0006
ADRES7           .EQ  $0007


;----- CM2CON0 Bits -----------------------------------------------------
NOT_C2WU         .EQ  $0000
C2PREF1          .EQ  $0001
C2NREF           .EQ  $0002
C2ON             .EQ  $0003
C2PREF2          .EQ  $0004
C2POL            .EQ  $0005
NOT_C2OUTEN      .EQ  $0006
C2OUT            .EQ  $0007


;----- VRCON Bits -----------------------------------------------------
VRR              .EQ  $0005
VROE             .EQ  $0006
VREN             .EQ  $0007

VR0              .EQ  $0000
VR1              .EQ  $0001
VR2              .EQ  $0002
VR3              .EQ  $0003


;----- EECON Bits -----------------------------------------------------
RD               .EQ  $0000
WR               .EQ  $0001
WREN             .EQ  $0002
WRERR            .EQ  $0003
FREE             .EQ  $0004



;----- OPTION_REG Bits -----------------------------------------------------
PSA              .EQ  $0003
T0SE             .EQ  $0004
T0CS             .EQ  $0005
NOT_RBPU         .EQ  $0006
NOT_RBWU         .EQ  $0007

PS0              .EQ  $0000
PS1              .EQ  $0001
PS2              .EQ  $0002


;----- TRISC Bits -----------------------------------------------------
TRISC0           .EQ  $0000
TRISC1           .EQ  $0001
TRISC2           .EQ  $0002
TRISC3           .EQ  $0003
TRISC4           .EQ  $0004
TRISC5           .EQ  $0005


;----- TRISB Bits -----------------------------------------------------
TRISB0           .EQ  $0000
TRISB1           .EQ  $0001
TRISB2           .EQ  $0002
TRISB3           .EQ  $0003
TRISB4           .EQ  $0004
TRISB5           .EQ  $0005



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
_FOSC_LP             .EQ  $0FF8  LP oscillator and 18 ms DRT
_LP_OSC              .EQ  $0FF8  LP oscillator and 18 ms DRT
_FOSC_XT             .EQ  $0FF9  XT oscillator and 18 ms DRT
_XT_OSC              .EQ  $0FF9  XT oscillator and 18 ms DRT
_FOSC_HS             .EQ  $0FFA  HS oscillator and 18 ms DRT
_HS_OSC              .EQ  $0FFA  HS oscillator and 18 ms DRT
_FOSC_EC             .EQ  $0FFB  EC oscillator with RB4 function on RB4/OSC2/CLKOUT and 1 ms DRT
_EC_OSC              .EQ  $0FFB  EC oscillator with RB4 function on RB4/OSC2/CLKOUT and 1 ms DRT
_FOSC_INTRC_RB4      .EQ  $0FFC  INTRC with RB4 function on RB4/OSC2/CLKOUT and 1 ms DRT
_IntRC_OSC_RB4       .EQ  $0FFC  INTRC with RB4 function on RB4/OSC2/CLKOUT and 1 ms DRT
_FOSC_INTRC_CLKOUT   .EQ  $0FFD  INTRC with CLKOUT function on RB4/OSC2/CLKOUT and 1 ms DRT
_IntRC_OSC_CLKOUT    .EQ  $0FFD  INTRC with CLKOUT function on RB4/OSC2/CLKOUT and 1 ms DRT
_FOSC_ExtRC_RB4      .EQ  $0FFE  EXTRC with RB4 function on RB4/OSC2/CLKOUT and 1 ms DRT
_ExtRC_OSC_RB4       .EQ  $0FFE  EXTRC with RB4 function on RB4/OSC2/CLKOUT and 1 ms DRT
_FOSC_ExtRC_CLKOUT   .EQ  $0FFF  EXTRC with CLKOUT function on RB4/OSC2/CLKOUT and 1 ms DRT
_ExtRC_OSC_CLKOUT    .EQ  $0FFF  EXTRC with CLKOUT function on RB4/OSC2/CLKOUT and 1 ms DRT

_WDTE_OFF            .EQ  $0FF7  Disabled
_WDTE_ON             .EQ  $0FFF  Enabled

_CP_ON               .EQ  $0FEF  Code protection on
_CP_OFF              .EQ  $0FFF  Code protection off

_MCLRE_OFF           .EQ  $0FDF  RB3/MCLR functions as RB3, MCLR internally tied to Vdd
_MCLRE_ON            .EQ  $0FFF  RB3/MCLR functions as MCLR

_IOSCFS_4MHz         .EQ  $0FBF  4 MHz INTOSC Speed
_IOSCFS_8MHz         .EQ  $0FFF  8 MHz INTOSC Speed

_CPDF_ON             .EQ  $0F7F  Code protection on
_CPDF_OFF            .EQ  $0FFF  Code protection off


;----- IDLOC Equates --------------------------------------------------
_IDLOC0          .EQ  $440
_IDLOC1          .EQ  $441
_IDLOC2          .EQ  $442
_IDLOC3          .EQ  $443
