; This header file defines configurations, registers, and other useful bits of
; information for the PIC17C766 microcontroller.  These names are taken to match
; the data sheets as closely as possible.

;==========================================================================
;
;       Revision History
;
;==========================================================================

;Rev:   Date:    Reason:

;1.00   05/01/98 Initial Release

;==========================================================================
;
;       Select cross overlay
;
;==========================================================================

                  .CR   pic16
                  .MS   8192

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
BANK4                           .EQ     $0004
BANK5                           .EQ     $0005
BANK6                           .EQ     $0006
BANK7                           .EQ     $0007
BANK8                           .EQ     $0008	; added 5/2/01 BD - Apps

GPR_BANK0                       .EQ    $0000
GPR_BANK1                       .EQ    $0008
GPR_BANK2                       .EQ    $0010
GPR_BANK3                       .EQ    $0018

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

;----- Bank 0 -------------------------------------------------------------

PORTA                           .EQ     $0010
DDRB                            .EQ     $0011
PORTB                           .EQ     $0012
RCSTA                           .EQ     $0013
RCSTA1                          .EQ     $0013
RCREG                           .EQ     $0014    ; Backward compatibility only
RCREG1                          .EQ     $0014
TXSTA                           .EQ     $0015    ; Backward compatibility only
TXSTA1                          .EQ     $0015
TXREG                           .EQ     $0016    ; Backward compatibility only
TXREG1                          .EQ     $0016
SPBRG                           .EQ     $0017    ; Backward compatibility only
SPBRG1                          .EQ     $0017

;----- Bank 1 -------------------------------------------------------------

DDRC                            .EQ     $0110
PORTC                           .EQ     $0111
DDRD                            .EQ     $0112
PORTD                           .EQ     $0113
DDRE                            .EQ     $0114
PORTE                           .EQ     $0115
PIR                             .EQ     $0116    ; Backward compatibility only
PIR1                            .EQ     $0116
PIE                             .EQ     $0117    ; Backward compatibility only
PIE1                            .EQ     $0117

;----- Bank 2 -------------------------------------------------------------

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

;----- Bank 3 -------------------------------------------------------------

PW1DCL                          .EQ     $0310
PW2DCL                          .EQ     $0311
PW1DCH                          .EQ     $0312
PW2DCH                          .EQ     $0313
CA2L                            .EQ     $0314
CA2H                            .EQ     $0315
TCON1                           .EQ     $0316
TCON2                           .EQ     $0317

;----- Bank 4 -------------------------------------------------------------

PIR2                            .EQ     $0410
PIE2                            .EQ     $0411

RCSTA2                          .EQ     $0413
RCREG2                          .EQ     $0414
TXSTA2                          .EQ     $0415
TXREG2                          .EQ     $0416
SPBRG2                          .EQ     $0417

;----- Bank 5 -------------------------------------------------------------

DDRF                            .EQ     $0510
PORTF                           .EQ     $0511
DDRG                            .EQ     $0512
PORTG                           .EQ     $0513
ADCON0                          .EQ     $0514
ADCON1                          .EQ     $0515
ADRESL                          .EQ     $0516
ADRESH                          .EQ     $0517

;----- Bank 6 -------------------------------------------------------------

SSPADD                          .EQ     $0610
SSPCON1                         .EQ     $0611
SSPCON2                         .EQ     $0612
SSPSTAT                         .EQ     $0613
SSPBUF                          .EQ     $0614

;----- Bank 7 -------------------------------------------------------------

PW3DCL                          .EQ     $0710
PW3DCH                          .EQ     $0711
CA3L                            .EQ     $0712
CA3H                            .EQ     $0713
CA4L                            .EQ     $0714
CA4H                            .EQ     $0715
TCON3                           .EQ     $0716

;----- Bank 8 -------------------------------------------------------------

DDRH                            .EQ     $0810
PORTH                           .EQ     $0811
DDRJ                            .EQ     $0812
PORTJ                           .EQ     $0813


;----- Unbanked -----------------------------------------------------------

PRODL                           .EQ     $0018
PL                              .EQ     $0018    ; Backward compatibility only
PRODH                           .EQ     $0019
PH                              .EQ     $0019    ; Backward compatibility only

;----- Special Function Register Bit Definitions --------------------------
;
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
TO                              .EQ     $0003
NOT_PD                          .EQ     $0002
PD                              .EQ     $0002
NOT_POR                         .EQ     $0001
POR                             .EQ     $0001
NOT_BOR                         .EQ     $0000
BOR                             .EQ     $0000

;----- INTSTA Bits --------------------------------------------------------

PEIF                            .EQ     $0007
T0CKIF                          .EQ     $0006
T0IF                            .EQ     $0005
INTF                            .EQ     $0004
PEIE                            .EQ     $0003
T0CKIE                          .EQ     $0002
T0IE                            .EQ     $0001
INTE                            .EQ     $0000

;----- PIR1 Bits ----------------------------------------------------------

RBIF                            .EQ     $0007
TMR3IF                          .EQ     $0006
TMR2IF                          .EQ     $0005
TMR1IF                          .EQ     $0004
CA2IF                           .EQ     $0003
CA1IF                           .EQ     $0002
TXIF                            .EQ     $0001    ; Backward compatibility only
TX1IF                           .EQ     $0001
RCIF                            .EQ     $0000    ; Backward compatibility only
RC1IF                           .EQ     $0000

;----- PIE1 Bits -----------------------------------------------------------

RBIE                            .EQ     $0007
TMR3IE                          .EQ     $0006
TMR2IE                          .EQ     $0005
TMR1IE                          .EQ     $0004
CA2IE                           .EQ     $0003
CA1IE                           .EQ     $0002
TXIE                            .EQ     $0001    ; Backward compatibility only
TX1IE                           .EQ     $0001
RCIE                            .EQ     $0000    ; Backward compatibility only
RC1IE                           .EQ     $0000

;----- PORTA Bits ---------------------------------------------------------

NOT_RBPU                        .EQ    $0007
RBPU                            .EQ    $0007

;----- RCSTA1 and 2 Bits --------------------------------------------------

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
PS3                             .EQ     $0004    ; Backward compatibility only
T0PS2                           .EQ     $0003
PS2                             .EQ     $0003    ; Backward compatibility only
T0PS1                           .EQ     $0002
PS1                             .EQ     $0002    ; Backward compatibility only
T0PS0                           .EQ     $0001
PS0                             .EQ     $0001    ; Backward compatibility only

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
PR3                             .EQ     $0003
CA1_PR3                         .EQ     $0003
TMR3ON                          .EQ     $0002
TMR2ON                          .EQ     $0001
TMR1ON                          .EQ     $0000

;----- PIR2 Bits ----------------------------------------------------------

SSPIF                           .EQ    $0007
BCLIF                           .EQ    $0006
ADIF                            .EQ    $0005
CA4IF                           .EQ    $0003
CA3IF                           .EQ    $0002
TX2IF                           .EQ    $0001
RC2IF                           .EQ    $0000

;----- PIE2 Bits ----------------------------------------------------------

SSPIE                           .EQ    $0007
BCLIE                           .EQ    $0006
ADIE                            .EQ    $0005
CA4IE                           .EQ    $0003
CA3IE                           .EQ    $0002
TX2IE                           .EQ    $0001
RC2IE                           .EQ    $0000

;----- TXSTA1 and 2 Bits --------------------------------------------------

CSRC                            .EQ     $0007
TX9                             .EQ     $0006
NOT_TX8                         .EQ     $0006    ; Backward compatibility only
TX8_9                           .EQ     $0006    ; Backward compatibility only
TXEN                            .EQ     $0005
SYNC                            .EQ     $0004
TRMT                            .EQ     $0001
TX9D                            .EQ     $0000
TXD8                            .EQ     $0000    ; Backward compatibility only

;----- ADCON0 Bits --------------------------------------------------------

CHS3                            .EQ    $0007
CHS2                            .EQ    $0006
CHS1                            .EQ    $0005
CHS0                            .EQ    $0004
GO                              .EQ    $0002
NOT_DONE                        .EQ    $0002
DONE                            .EQ    $0002
ADON                            .EQ    $0000

;----- ADCON1 Bits --------------------------------------------------------

ADCS1                           .EQ    $0007
ADCS0                           .EQ    $0006
ADFM                            .EQ    $0005
PCFG3                           .EQ    $0003
PCFG2                           .EQ    $0002
PCFG1                           .EQ    $0001
PCFG0                           .EQ    $0000

;----- SSPCON1 Bits -------------------------------------------------------

WCOL                            .EQ    $0007
SSPOV                           .EQ    $0006
SSPEN                           .EQ    $0005
CKP                             .EQ    $0004
SSPM3                           .EQ    $0003
SSPM2                           .EQ    $0002
SSPM1                           .EQ    $0001
SSPM0                           .EQ    $0000

;----- SSPCON2 Bits -------------------------------------------------------

GCEN                            .EQ    $0007
ACKSTAT                         .EQ    $0006
AKSTAT                          .EQ    $0006
ACKDT                           .EQ    $0005
AKDT                            .EQ    $0005
ACKEN                           .EQ    $0004
AKEN                            .EQ    $0004
RCEN                            .EQ    $0003
PEN                             .EQ    $0002
RSEN                            .EQ    $0001
SEN                             .EQ    $0000

;----- SSPSTAT Bits -------------------------------------------------------

SMP                             .EQ    $0007
CKE                             .EQ    $0006
D                               .EQ    $0005
NOT_A                           .EQ    $0005
D_A                             .EQ    $0005
P                               .EQ    $0004
S                               .EQ    $0003
R                               .EQ    $0002
NOT_W                           .EQ    $0002
R_W                             .EQ    $0002
UA                              .EQ    $0001
BF                              .EQ    $0000

;----- TCON3 Bits ---------------------------------------------------------

CA4OVF                          .EQ    $0006
CA3OVF                          .EQ    $0005
CA4ED1                          .EQ    $0004
CA4ED0                          .EQ    $0003
CA3ED1                          .EQ    $0002
CA3ED0                          .EQ    $0001
PWM3ON                          .EQ    $0000

;----- PW2DCL Bit ---------------------------------------------------------

TM2PW2                          .EQ    $0005


;----- PW3DCL Bit ---------------------------------------------------------

TM2PW3                          .EQ    $0005

;==========================================================================
;
;       RAM Definition
;
;==========================================================================

_MAXRAM                  .EQ  $8FF

;==========================================================================
;
;       Configuration Bits
;
;==========================================================================

_PMC_MODE                       .EQ     $7FAF
_XMC_MODE                       .EQ     $FFBF
_MC_MODE                        .EQ     $FFEF
_MP_MODE                        .EQ     $FFFF

_BODEN_OFF                      .EQ     $BFFF
_BODEN_ON                       .EQ     $FFFF

_WDT_NORM                       .EQ     $FFF3
_WDT_OFF                        .EQ     $FFF3
_WDT_64                         .EQ     $FFF7
_WDT_256                        .EQ     $FFFB
_WDT_1                          .EQ     $FFFF
_WDT_0                          .EQ     $FFFF

_LF_OSC                         .EQ     $FFFC
_RC_OSC                         .EQ     $FFFD
_XT_OSC                         .EQ     $FFFE
_EC_OSC                         .EQ     $FFFF
