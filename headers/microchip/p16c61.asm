; P16C61.INC  Standard Header File, Version 1.00    Microchip Technology, Inc.

; This header file defines configurations, registers, and other useful bits of
; information for the PIC16C61 microcontroller.  These names are taken to match
; the data sheets as closely as possible.

;==========================================================================
;
;       Revision History
;
;==========================================================================

;Rev:   Date:    Reason:

;1.00   10/31/95 Initial Release

;==========================================================================
;
;       Select cross overlay
;
;==========================================================================

                  .CR   pic14
                  .MS   1024

;==========================================================================
;
;       Register Definitions
;
;==========================================================================

W                            .EQ     $0000
F                            .EQ     $0001

;----- Register Files------------------------------------------------------

INDF                         .EQ     $0000
TMR0                         .EQ     $0001
PCL                          .EQ     $0002
STATUS                       .EQ     $0003
FSR                          .EQ     $0004
PORTA                        .EQ     $0005
PORTB                        .EQ     $0006
PCLATH                       .EQ     $000A
INTCON                       .EQ     $000B

OPTION_REG                   .EQ     $0081
TRISA                        .EQ     $0085
TRISB                        .EQ     $0086

;----- OPTION Bits --------------------------------------------------------

NOT_RBPU                     .EQ     $0007
INTEDG                       .EQ     $0006
T0CS                         .EQ     $0005
T0SE                         .EQ     $0004
PSA                          .EQ     $0003
PS2                          .EQ     $0002
PS1                          .EQ     $0001
PS0                          .EQ     $0000

;----- STATUS Bits --------------------------------------------------------

IRP                          .EQ     $0007
RP1                          .EQ     $0006
RP0                          .EQ     $0005
NOT_TO                       .EQ     $0004
NOT_PD                       .EQ     $0003
Z                            .EQ     $0002
DC                           .EQ     $0001
C                            .EQ     $0000

;----- INTCON Bits --------------------------------------------------------

GIE                          .EQ     $0007
T0IE                         .EQ     $0005
INTE                         .EQ     $0004
RBIE                         .EQ     $0003
T0IF                         .EQ     $0002
INTF                         .EQ     $0001
RBIF                         .EQ     $0000

;==========================================================================
;
;       RAM Definition
;
;==========================================================================

_MAXRAM          .EQ  $AF

;==========================================================================
;
;       Configuration Bits
;
;==========================================================================

_CP_ON                       .EQ     $3FEF
_CP_OFF                      .EQ     $3FFF
_PWRTE_ON                    .EQ     $3FFF
_PWRTE_OFF                   .EQ     $3FF7
_WDT_ON                      .EQ     $3FFF
_WDT_OFF                     .EQ     $3FFB
_LP_OSC                      .EQ     $3FFC
_XT_OSC                      .EQ     $3FFD
_HS_OSC                      .EQ     $3FFE
_RC_OSC                      .EQ     $3FFF

