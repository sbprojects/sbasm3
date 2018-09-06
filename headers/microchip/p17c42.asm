; This header file defines configurations, registers, and other useful bits of
; information for the PIC17C42 microcontroller.  These names are taken to match
; the data sheets as closely as possible.

;==========================================================================
;
;       Revision History
;
;==========================================================================

;Rev:   Date:    Reason:

;1.03   07/15/96 Corrected MAXRAM
;1.02   06/28/96 Corrected MAXRAM, BADRAM, and registers in upper banks
;1.01   04/10/96 Added _WDT_OFF value, PSx values
;1.00   10/31/95 Initial Release

;==========================================================================
;
;       Select cross overlay
;
;==========================================================================

                  .CR   pic16
                  .MS   2048

;==========================================================================
;
;       Register Definitions
;
;==========================================================================

W                               .EQ     $0000
F                               .EQ     $0001

BANK0                           .EQ     $0000
BANK1                           .EQ     $0001
BANK2                           .EQ     $0002
BANK3                           .EQ     $0003

;----- Register Files -----------------------------------------------------

INDF0                           .EQ     $0000
FSR0                            .EQ     $0001
PCL                             .EQ     $0002
PCLATH                          .EQ     $0003
ALUSTA                          .EQ     $0004
T0STA                           .EQ     $0005
CPUSTA                          .EQ     $0006
INTSTA                          .EQ     $0007
INDF1                           .EQ     $0008
FSR1                            .EQ     $0009
WREG                            .EQ     $000A
TMR0L                           .EQ     $000B
TMR0H                           .EQ     $000C
TBLPTRL                         .EQ     $000D
TBLPTRH                         .EQ     $000E
BSR                             .EQ     $000F
PORTA                           .EQ     $0010
DDRB                            .EQ     $0011
PORTB                           .EQ     $0012
RCSTA                           .EQ     $0013
RCREG                           .EQ     $0014
TXSTA                           .EQ     $0015
TXREG                           .EQ     $0016
SPBRG                           .EQ     $0017
; PRODL                           .EQ     $0018 ; not on the 17C42
; PRODH                           .EQ     $0019 ; not on the 17C42

DDRC                            .EQ     $0110
PORTC                           .EQ     $0111
DDRD                            .EQ     $0112
PORTD                           .EQ     $0113
DDRE                            .EQ     $0114
PORTE                           .EQ     $0115
PIR                             .EQ     $0116
PIE                             .EQ     $0117

TMR1                            .EQ     $0210
TMR2                            .EQ     $0211
TMR3L                           .EQ     $0212
TMR3H                           .EQ     $0213
PR1                             .EQ     $0214
PR2                             .EQ     $0215
PR3L                            .EQ     $0216
PR3H                            .EQ     $0217

CA1L                            .EQ     $0216
CA1H                            .EQ     $0217

PW1DCL                          .EQ     $0310
PW2DCL                          .EQ     $0311
PW1DCH                          .EQ     $0312
PW2DCH                          .EQ     $0313
CA2L                            .EQ     $0314
CA2H                            .EQ     $0315
TCON1                           .EQ     $0316
TCON2                           .EQ     $0317

;----- ALUSTA Bits --------------------------------------------------------

FS3                             .EQ     $0007
FS2                             .EQ     $0006
FS1                             .EQ     $0005
FS0                             .EQ     $0004
OV                              .EQ     $0003
Z                               .EQ     $0002
DC                              .EQ     $0001
C                               .EQ     $0000

;----- CPUSTA Bits --------------------------------------------------------

STKAV                           .EQ     $0005
GLINTD                          .EQ     $0004
NOT_TO                          .EQ     $0003
NOT_PD                          .EQ     $0002

;----- INTSTA Bits --------------------------------------------------------

PEIF                            .EQ     $0007
T0CKIF                          .EQ     $0006
T0IF                            .EQ     $0005
INTF                            .EQ     $0004
PEIE                            .EQ     $0003
T0CKIE                          .EQ     $0002
T0IE                            .EQ     $0001
INTE                            .EQ     $0000

;----- PIE Bits -----------------------------------------------------------

RBIE                            .EQ     $0007
TMR3IE                          .EQ     $0006
TMR2IE                          .EQ     $0005
TMR1IE                          .EQ     $0004
CA2IE                           .EQ     $0003
CA1IE                           .EQ     $0002
TXIE                            .EQ     $0001
RCIE                            .EQ     $0000

;----- PIR Bits -----------------------------------------------------------

RBIF                            .EQ     $0007
TMR3IF                          .EQ     $0006
TMR2IF                          .EQ     $0005
TMR1IF                          .EQ     $0004
CA2IF                           .EQ     $0003
CA1IF                           .EQ     $0002
TXIF                            .EQ     $0001
RCIF                            .EQ     $0000

;----- PORTA Bits ---------------------------------------------------------

NOT_RBPU			.EQ	$0007
T0CKI				.EQ	$0001
INT				.EQ	$0000

;----- RCSTA Bits ---------------------------------------------------------

SPEN                            .EQ     $0007
RX9                             .EQ     $0006
RC9                             .EQ     $0006    ; Backward compatibility only
NOT_RC8                         .EQ     $0006    ; Backward compatibility only
RC8_9                           .EQ     $0006    ; Backward compatibility only
SREN                            .EQ     $0005
CREN                            .EQ     $0004
FERR                            .EQ     $0002
OERR                            .EQ     $0001
RX9D                            .EQ     $0000
RCD8                            .EQ     $0000    ; Backward compatibility only

;----- T0STA Bits --------------------------------------------------------

INTEDG                          .EQ     $0007
T0SE                            .EQ     $0006
T0CS                            .EQ     $0005
T0PS3                           .EQ     $0004
PS3                             .EQ     $0004
T0PS2                           .EQ     $0003
PS2                             .EQ     $0003
T0PS1                           .EQ     $0002
PS1                             .EQ     $0002
T0PS0                           .EQ     $0001
PS0                             .EQ     $0001

;----- TCON1 Bits ---------------------------------------------------------

CA2ED1                          .EQ     $0007
CA2ED0                          .EQ     $0006
CA1ED1                          .EQ     $0005
CA1ED0                          .EQ     $0004
T16                             .EQ     $0003
TMR3CS                          .EQ     $0002
TMR2CS                          .EQ     $0001
TMR1CS                          .EQ     $0000

;----- TCON2 Bits ---------------------------------------------------------

CA2OVF                          .EQ     $0007
CA1OVF                          .EQ     $0006
PWM2ON                          .EQ     $0005
PWM1ON                          .EQ     $0004
CA1                             .EQ     $0003
NOT_PR3                         .EQ     $0003
CA1_PR3                         .EQ     $0003
TMR3ON                          .EQ     $0002
TMR2ON                          .EQ     $0001
TMR1ON                          .EQ     $0000

;----- TXSTA Bits ---------------------------------------------------------

CSRC                            .EQ     $0007
TX9                             .EQ     $0006
NOT_TX8                         .EQ     $0006    ; Backward compatibility only
TX8_9                           .EQ     $0006    ; Backward compatibility only
TXEN                            .EQ     $0005
SYNC                            .EQ     $0004
TRMT                            .EQ     $0001
TX9D                            .EQ     $0000
TXD8                            .EQ     $0000    ; Backward compatibility only

;==========================================================================
;
;       RAM Definition
;
;==========================================================================

_MAXRAM              .EQ  $3FF

;==========================================================================
;
;       Configuration Bits
;
;==========================================================================

_PMC_MODE                       .EQ     $FFAF
_XMC_MODE                       .EQ     $FFBF
_MC_MODE                        .EQ     $FFEF
_MP_MODE                        .EQ     $FFFF
_WDT_NORM                       .EQ     $FFF3
_WDT_OFF                        .EQ     $FFF3
_WDT_64                         .EQ     $FFF7
_WDT_256                        .EQ     $FFFB
_WDT_1                          .EQ     $FFFF
_LF_OSC                         .EQ     $FFFC
_RC_OSC                         .EQ     $FFFD
_XT_OSC                         .EQ     $FFFE
_EC_OSC                         .EQ     $FFFF
