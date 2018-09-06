;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC16C432 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC16C432 microcontroller.  These names
;  are taken to match the data sheets as closely as possible.
;==========================================================================

;==========================================================================
;
;       Select cross overlay
;
;==========================================================================

                  .CR   pic14
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
PCLATH           .EQ  $000A
INTCON           .EQ  $000B
PIR1             .EQ  $000C
CMCON            .EQ  $001F

;-----Bank1------------------
OPTION_REG       .EQ  $0081
TRISA            .EQ  $0085
TRISB            .EQ  $0086
PIE1             .EQ  $008C
PCON             .EQ  $008E
LININTF          .EQ  $0090
VRCON            .EQ  $009F

;----- STATUS Bits -----------------------------------------------------
C                .EQ  $0000
DC               .EQ  $0001
Z                .EQ  $0002
NOT_PD           .EQ  $0003
NOT_TO           .EQ  $0004
IRP              .EQ  $0007

RP0              .EQ  $0005
RP1              .EQ  $0006


;----- PORTA Bits -----------------------------------------------------
RA0              .EQ  $0000
LINRX            .EQ  $0001
RA2              .EQ  $0002
RA3              .EQ  $0003
RA4              .EQ  $0004


;----- PORTB Bits -----------------------------------------------------
RB0              .EQ  $0000
RB1              .EQ  $0001
RB2              .EQ  $0002
RB3              .EQ  $0003
RB4              .EQ  $0004
RB5              .EQ  $0005
RB6              .EQ  $0006
RB7              .EQ  $0007


;----- INTCON Bits -----------------------------------------------------
RBIF             .EQ  $0000
INTF             .EQ  $0001
T0IF             .EQ  $0002
RBIE             .EQ  $0003
INTE             .EQ  $0004
T0IE             .EQ  $0005
PEIE             .EQ  $0006
GIE              .EQ  $0007

TMR0IF           .EQ  $0002
TMR0IE           .EQ  $0005


;----- PIR1 Bits -----------------------------------------------------
CMIF             .EQ  $0006


;----- CMCON Bits -----------------------------------------------------
CIS              .EQ  $0003
C1OUT            .EQ  $0006
C2OUT            .EQ  $0007

CM0              .EQ  $0000
CM1              .EQ  $0001
CM2              .EQ  $0002


;----- OPTION_REG Bits -----------------------------------------------------
PSA              .EQ  $0003
T0SE             .EQ  $0004
T0CS             .EQ  $0005
INTEDG           .EQ  $0006
NOT_RBPU         .EQ  $0007

PS0              .EQ  $0000
PS1              .EQ  $0001
PS2              .EQ  $0002


;----- TRISA Bits -----------------------------------------------------
TRISA0           .EQ  $0000
TLINRX           .EQ  $0001
TRISA2           .EQ  $0002
TRISA3           .EQ  $0003
TRISA4           .EQ  $0004


;----- TRISB Bits -----------------------------------------------------
TRISB0           .EQ  $0000
TRISB1           .EQ  $0001
TRISB2           .EQ  $0002
TRISB3           .EQ  $0003
TRISB4           .EQ  $0004
TRISB5           .EQ  $0005
TRISB6           .EQ  $0006
TRISB7           .EQ  $0007


;----- PIE1 Bits -----------------------------------------------------
CMIE             .EQ  $0006


;----- PCON Bits -----------------------------------------------------
NOT_BOR          .EQ  $0000
NOT_POR          .EQ  $0001

NOT_BO           .EQ  $0000


;----- LININTF Bits -----------------------------------------------------
LINVDD           .EQ  $0000
LINTX            .EQ  $0002


;----- VRCON Bits -----------------------------------------------------
VRR              .EQ  $0005
VROE             .EQ  $0006
VREN             .EQ  $0007

VR0              .EQ  $0000
VR1              .EQ  $0001
VR2              .EQ  $0002
VR3              .EQ  $0003




;==========================================================================
;
;       RAM Definitions
;
;==========================================================================

_MAXRAM          .EQ  $00FF

;==========================================================================
;
;       Configuration Bits
;
;   NAME            Address
;   CONFIG1           2007h
;
;==========================================================================

; The following is an assignment of address values for all of the
; configuration registers for the purpose of table reads
_CONFIG1        .EQ  $2007

;----- CONFIG1 Options --------------------------------------------------
_FOSC_LP             .EQ  $3FFC LP oscillator
_LP_OSC              .EQ  $3FFC LP oscillator
_FOSC_XT             .EQ  $3FFD XT oscillator
_XT_OSC              .EQ  $3FFD XT oscillator
_FOSC_HS             .EQ  $3FFE HS oscillator
_HS_OSC              .EQ  $3FFE HS oscillator
_FOSC_RC             .EQ  $3FFF RC oscillator
_RC_OSC              .EQ  $3FFF RC oscillator

_WDTE_OFF            .EQ  $3FFB WDT disabled
_WDT_OFF             .EQ  $3FFB WDT disabled
_WDTE_ON             .EQ  $3FFF WDT enabled
_WDT_ON              .EQ  $3FFF WDT enabled

_PWRTE_ON            .EQ  $3FF7 PWRT enabled
_PWRTE_OFF           .EQ  $3FFF PWRT disabled

_CP_ALL              .EQ  $00CF All memory is code protected
_CP_75               .EQ  $15DF 0200h-07FFh code protected
_CP_50               .EQ  $2AEF 0400h-07FFh code protected
_CP_OFF              .EQ  $3FFF Code protection off

_BOREN_OFF           .EQ  $3FBF BOR disabled
_BODEN_OFF           .EQ  $3FBF BOR disabled
_BOREN_ON            .EQ  $3FFF BOR enabled
_BODEN_ON            .EQ  $3FFF BOR enabled


;----- IDLOC .EQates --------------------------------------------------
_IDLOC0          .EQ  $2000
_IDLOC1          .EQ  $2001
_IDLOC2          .EQ  $2002
_IDLOC3          .EQ  $2003

