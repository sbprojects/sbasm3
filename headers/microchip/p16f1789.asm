;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC16F1789 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC16F1789 microcontroller.  These names
;  are taken to match the data sheets as closely as possible.
;==========================================================================

;==========================================================================
;
;       Select cross overlay
;
;==========================================================================

                  .CR   pic14e
                  .MS   16384

;==========================================================================
;
;       Register Definitions
;
;==========================================================================

W                .EQ  $0000
F                .EQ  $0001

;----- Register Files -----------------------------------------------------

;-----Bank0------------------
INDF0            .EQ  $0000
INDF1            .EQ  $0001
PCL              .EQ  $0002
STATUS           .EQ  $0003
FSR0             .EQ  $0004
FSR0L            .EQ  $0004
FSR0H            .EQ  $0005
FSR1             .EQ  $0006
FSR1L            .EQ  $0006
FSR1H            .EQ  $0007
BSR              .EQ  $0008
WREG             .EQ  $0009
PCLATH           .EQ  $000A
INTCON           .EQ  $000B
PORTA            .EQ  $000C
PORTB            .EQ  $000D
PORTC            .EQ  $000E
PORTD            .EQ  $000F
PORTE            .EQ  $0010
PIR1             .EQ  $0011
PIR2             .EQ  $0012
PIR3             .EQ  $0013
PIR4             .EQ  $0014
TMR0             .EQ  $0015
TMR1             .EQ  $0016
TMR1L            .EQ  $0016
TMR1H            .EQ  $0017
T1CON            .EQ  $0018
T1GCON           .EQ  $0019
TMR2             .EQ  $001A
PR2              .EQ  $001B
T2CON            .EQ  $001C

;-----Bank1------------------
TRISA            .EQ  $008C
TRISB            .EQ  $008D
TRISC            .EQ  $008E
TRISD            .EQ  $008F
TRISE            .EQ  $0090
PIE1             .EQ  $0091
PIE2             .EQ  $0092
PIE3             .EQ  $0093
PIE4             .EQ  $0094
OPTION_REG       .EQ  $0095
PCON             .EQ  $0096
WDTCON           .EQ  $0097
OSCTUNE          .EQ  $0098
OSCCON           .EQ  $0099
OSCSTAT          .EQ  $009A
ADRES            .EQ  $009B
ADRESL           .EQ  $009B
ADRESH           .EQ  $009C
ADCON0           .EQ  $009D
ADCON1           .EQ  $009E
ADCON2           .EQ  $009F

;-----Bank2------------------
LATA             .EQ  $010C
LATB             .EQ  $010D
LATC             .EQ  $010E
LATD             .EQ  $010F
LATE             .EQ  $0110
CM1CON0          .EQ  $0111
CM1CON1          .EQ  $0112
CM2CON0          .EQ  $0113
CM2CON1          .EQ  $0114
CMOUT            .EQ  $0115
BORCON           .EQ  $0116
FVRCON           .EQ  $0117
DAC1CON0         .EQ  $0118
DAC1CON1         .EQ  $0119
CM4CON0          .EQ  $011A
CM4CON1          .EQ  $011B
APFCON2          .EQ  $011C
APFCON           .EQ  $011D
APFCON0          .EQ  $011D
APFCON1          .EQ  $011D
CM3CON0          .EQ  $011E
CM3CON1          .EQ  $011F

;-----Bank3------------------
ANSELA           .EQ  $018C
ANSELB           .EQ  $018D
ANSELC           .EQ  $018E
ANSELD           .EQ  $018F
ANSELE           .EQ  $0190
EEADR            .EQ  $0191
EEADRL           .EQ  $0191
EEADRH           .EQ  $0192
EEDAT            .EQ  $0193
EEDATL           .EQ  $0193
EEDATH           .EQ  $0194
EECON1           .EQ  $0195
EECON2           .EQ  $0196
VREGCON          .EQ  $0197
RC1REG           .EQ  $0199
RCREG            .EQ  $0199
RCREG1           .EQ  $0199
TX1REG           .EQ  $019A
TXREG            .EQ  $019A
TXREG1           .EQ  $019A
SP1BRG           .EQ  $019B
SP1BRGL          .EQ  $019B
SPBRG            .EQ  $019B
SPBRG1           .EQ  $019B
SPBRGL           .EQ  $019B
SP1BRGH          .EQ  $019C
SPBRGH           .EQ  $019C
SPBRGH1          .EQ  $019C
RC1STA           .EQ  $019D
RCSTA            .EQ  $019D
RCSTA1           .EQ  $019D
TX1STA           .EQ  $019E
TXSTA            .EQ  $019E
TXSTA1           .EQ  $019E
BAUD1CON         .EQ  $019F
BAUDCON          .EQ  $019F
BAUDCON1         .EQ  $019F
BAUDCTL          .EQ  $019F
BAUDCTL1         .EQ  $019F

;-----Bank4------------------
WPUA             .EQ  $020C
WPUB             .EQ  $020D
WPUC             .EQ  $020E
WPUD             .EQ  $020F
WPUE             .EQ  $0210
SSP1BUF          .EQ  $0211
SSPBUF           .EQ  $0211
SSP1ADD          .EQ  $0212
SSPADD           .EQ  $0212
SSP1MSK          .EQ  $0213
SSPMSK           .EQ  $0213
SSP1STAT         .EQ  $0214
SSPSTAT          .EQ  $0214
SSP1CON          .EQ  $0215
SSP1CON1         .EQ  $0215
SSPCON           .EQ  $0215
SSPCON1          .EQ  $0215
SSP1CON2         .EQ  $0216
SSPCON2          .EQ  $0216
SSP1CON3         .EQ  $0217
SSPCON3          .EQ  $0217

;-----Bank5------------------
ODCONA           .EQ  $028C
ODCONB           .EQ  $028D
ODCONC           .EQ  $028E
ODCOND           .EQ  $028F
ODCONE           .EQ  $0290
CCPR1            .EQ  $0291
CCPR1L           .EQ  $0291
CCPR1H           .EQ  $0292
CCP1CON          .EQ  $0293
CCPR2            .EQ  $0298
CCPR2L           .EQ  $0298
CCPR2H           .EQ  $0299
CCP2CON          .EQ  $029A

;-----Bank6------------------
SLRCONA          .EQ  $030C
SLRCONB          .EQ  $030D
SLRCONC          .EQ  $030E
SLRCOND          .EQ  $030F
SLRCONE          .EQ  $0310
CCPR3            .EQ  $0311
CCPR3L           .EQ  $0311
CCPR3H           .EQ  $0312
CCP3CON          .EQ  $0313

;-----Bank7------------------
INLVLA           .EQ  $038C
INLVLB           .EQ  $038D
INLVLC           .EQ  $038E
INLVLD           .EQ  $038F
INLVLE           .EQ  $0390
IOCAP            .EQ  $0391
IOCAN            .EQ  $0392
IOCAF            .EQ  $0393
IOCBP            .EQ  $0394
IOCBN            .EQ  $0395
IOCBF            .EQ  $0396
IOCCP            .EQ  $0397
IOCCN            .EQ  $0398
IOCCF            .EQ  $0399
IOCEP            .EQ  $039D
IOCEN            .EQ  $039E
IOCEF            .EQ  $039F

;-----Bank10------------------
OPA1CON          .EQ  $0511
OPA2CON          .EQ  $0513
OPA3CON          .EQ  $0515
CLKRCON          .EQ  $051A

;-----Bank11------------------
DAC2CON0         .EQ  $0591
DAC2CON1         .EQ  $0592
DAC2REF          .EQ  $0592
DAC3CON0         .EQ  $0593
DAC3CON1         .EQ  $0594
DAC3REF          .EQ  $0594
DAC4CON0         .EQ  $0595
DAC4CON1         .EQ  $0596
DAC4REF          .EQ  $0596

;-----Bank29------------------
PSMC1CON         .EQ  $0E91
PSMC1MDL         .EQ  $0E92
PSMC1SYNC        .EQ  $0E93
PSMC1CLK         .EQ  $0E94
PSMC1OEN         .EQ  $0E95
PSMC1POL         .EQ  $0E96
PSMC1BLNK        .EQ  $0E97
PSMC1REBS        .EQ  $0E98
PSMC1FEBS        .EQ  $0E99
PSMC1PHS         .EQ  $0E9A
PSMC1DCS         .EQ  $0E9B
PSMC1PRS         .EQ  $0E9C
PSMC1ASDC        .EQ  $0E9D
PSMC1ASDL        .EQ  $0E9E
PSMC1ASDS        .EQ  $0E9F
PSMC1INT         .EQ  $0EA0
PSMC1PH          .EQ  $0EA1
PSMC1PHL         .EQ  $0EA1
PSMC1PHH         .EQ  $0EA2
PSMC1DC          .EQ  $0EA3
PSMC1DCL         .EQ  $0EA3
PSMC1DCH         .EQ  $0EA4
PSMC1PR          .EQ  $0EA5
PSMC1PRL         .EQ  $0EA5
PSMC1PRH         .EQ  $0EA6
PSMC1TMR         .EQ  $0EA7
PSMC1TMRL        .EQ  $0EA7
PSMC1TMRH        .EQ  $0EA8
PSMC1DBR         .EQ  $0EA9
PSMC1DBF         .EQ  $0EAA
PSMC1BLKR        .EQ  $0EAB
PSMC1BLKF        .EQ  $0EAC
PSMC1FFA         .EQ  $0EAD
PSMC1STR0        .EQ  $0EAE
PSMC1STR1        .EQ  $0EAF
PSMC2CON         .EQ  $0EB1
PSMC2MDL         .EQ  $0EB2
PSMC2SYNC        .EQ  $0EB3
PSMC2CLK         .EQ  $0EB4
PSMC2OEN         .EQ  $0EB5
PSMC2POL         .EQ  $0EB6
PSMC2BLNK        .EQ  $0EB7
PSMC2REBS        .EQ  $0EB8
PSMC2FEBS        .EQ  $0EB9
PSMC2PHS         .EQ  $0EBA
PSMC2DCS         .EQ  $0EBB
PSMC2PRS         .EQ  $0EBC
PSMC2ASDC        .EQ  $0EBD
PSMC2ASDL        .EQ  $0EBE
PSMC2ASDS        .EQ  $0EBF
PSMC2INT         .EQ  $0EC0
PSMC2PH          .EQ  $0EC1
PSMC2PHL         .EQ  $0EC1
PSMC2PHH         .EQ  $0EC2
PSMC2DC          .EQ  $0EC3
PSMC2DCL         .EQ  $0EC3
PSMC2DCH         .EQ  $0EC4
PSMC2PR          .EQ  $0EC5
PSMC2PRL         .EQ  $0EC5
PSMC2PRH         .EQ  $0EC6
PSMC2TMR         .EQ  $0EC7
PSMC2TMRL        .EQ  $0EC7
PSMC2TMRH        .EQ  $0EC8
PSMC2DBR         .EQ  $0EC9
PSMC2DBF         .EQ  $0ECA
PSMC2BLKR        .EQ  $0ECB
PSMC2BLKF        .EQ  $0ECC
PSMC2FFA         .EQ  $0ECD
PSMC2STR0        .EQ  $0ECE
PSMC2STR1        .EQ  $0ECF
PSMC3CON         .EQ  $0ED1
PSMC3MDL         .EQ  $0ED2
PSMC3SYNC        .EQ  $0ED3
PSMC3CLK         .EQ  $0ED4
PSMC3OEN         .EQ  $0ED5
PSMC3POL         .EQ  $0ED6
PSMC3BLNK        .EQ  $0ED7
PSMC3REBS        .EQ  $0ED8
PSMC3FEBS        .EQ  $0ED9
PSMC3PHS         .EQ  $0EDA
PSMC3DCS         .EQ  $0EDB
PSMC3PRS         .EQ  $0EDC
PSMC3ASDC        .EQ  $0EDD
PSMC3ASDL        .EQ  $0EDE
PSMC3ASDS        .EQ  $0EDF
PSMC3INT         .EQ  $0EE0
PSMC3PH          .EQ  $0EE1
PSMC3PHL         .EQ  $0EE1
PSMC3PHH         .EQ  $0EE2
PSMC3DC          .EQ  $0EE3
PSMC3DCL         .EQ  $0EE3
PSMC3DCH         .EQ  $0EE4
PSMC3PR          .EQ  $0EE5
PSMC3PRL         .EQ  $0EE5
PSMC3PRH         .EQ  $0EE6
PSMC3TMR         .EQ  $0EE7
PSMC3TMRL        .EQ  $0EE7
PSMC3TMRH        .EQ  $0EE8
PSMC3DBR         .EQ  $0EE9
PSMC3DBF         .EQ  $0EEA
PSMC3BLKR        .EQ  $0EEB
PSMC3BLKF        .EQ  $0EEC
PSMC3FFA         .EQ  $0EED
PSMC3STR0        .EQ  $0EEE
PSMC3STR1        .EQ  $0EEF

;-----Bank30------------------
PSMC4CON         .EQ  $0F11
PSMC4MDL         .EQ  $0F12
PSMC4SYNC        .EQ  $0F13
PSMC4CLK         .EQ  $0F14
PSMC4OEN         .EQ  $0F15
PSMC4POL         .EQ  $0F16
PSMC4BLNK        .EQ  $0F17
PSMC4REBS        .EQ  $0F18
PSMC4FEBS        .EQ  $0F19
PSMC4PHS         .EQ  $0F1A
PSMC4DCS         .EQ  $0F1B
PSMC4PRS         .EQ  $0F1C
PSMC4ASDC        .EQ  $0F1D
PSMC4ASDL        .EQ  $0F1E
PSMC4ASDS        .EQ  $0F1F
PSMC4INT         .EQ  $0F20
PSMC4PH          .EQ  $0F21
PSMC4PHL         .EQ  $0F21
PSMC4PHH         .EQ  $0F22
PSMC4DC          .EQ  $0F23
PSMC4DCL         .EQ  $0F23
PSMC4DCH         .EQ  $0F24
PSMC4PR          .EQ  $0F25
PSMC4PRL         .EQ  $0F25
PSMC4PRH         .EQ  $0F26
PSMC4TMR         .EQ  $0F27
PSMC4TMRL        .EQ  $0F27
PSMC4TMRH        .EQ  $0F28
PSMC4DBR         .EQ  $0F29
PSMC4DBF         .EQ  $0F2A
PSMC4BLKR        .EQ  $0F2B
PSMC4BLKF        .EQ  $0F2C
PSMC4FFA         .EQ  $0F2D
PSMC4STR0        .EQ  $0F2E
PSMC4STR1        .EQ  $0F2F

;-----Bank31------------------
STATUS_SHAD      .EQ  $0FE4
WREG_SHAD        .EQ  $0FE5
BSR_SHAD         .EQ  $0FE6
PCLATH_SHAD      .EQ  $0FE7
FSR0L_SHAD       .EQ  $0FE8
FSR0H_SHAD       .EQ  $0FE9
FSR1L_SHAD       .EQ  $0FEA
FSR1H_SHAD       .EQ  $0FEB
STKPTR           .EQ  $0FED
TOSL             .EQ  $0FEE
TOSH             .EQ  $0FEF

;----- STATUS Bits -----------------------------------------------------
C                .EQ  $0000
DC               .EQ  $0001
Z                .EQ  $0002
NOT_PD           .EQ  $0003
NOT_TO           .EQ  $0004


;----- BSR Bits -----------------------------------------------------
BSR0             .EQ  $0000
BSR1             .EQ  $0001
BSR2             .EQ  $0002
BSR3             .EQ  $0003
BSR4             .EQ  $0004



;----- INTCON Bits -----------------------------------------------------
IOCIF            .EQ  $0000
INTF             .EQ  $0001
TMR0IF           .EQ  $0002
IOCIE            .EQ  $0003
INTE             .EQ  $0004
TMR0IE           .EQ  $0005
PEIE             .EQ  $0006
GIE              .EQ  $0007

T0IF             .EQ  $0002
T0IE             .EQ  $0005


;----- PORTA Bits -----------------------------------------------------
RA0              .EQ  $0000
RA1              .EQ  $0001
RA2              .EQ  $0002
RA3              .EQ  $0003
RA4              .EQ  $0004
RA5              .EQ  $0005
RA6              .EQ  $0006
RA7              .EQ  $0007



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



;----- PORTD Bits -----------------------------------------------------
RD0              .EQ  $0000
RD1              .EQ  $0001
RD2              .EQ  $0002
RD3              .EQ  $0003
RD4              .EQ  $0004
RD5              .EQ  $0005
RD6              .EQ  $0006
RD7              .EQ  $0007



;----- PORTE Bits -----------------------------------------------------
RE0              .EQ  $0000
RE1              .EQ  $0001
RE2              .EQ  $0002
RE3              .EQ  $0003



;----- PIR1 Bits -----------------------------------------------------
TMR1IF           .EQ  $0000
TMR2IF           .EQ  $0001
CCP1IF           .EQ  $0002
SSP1IF           .EQ  $0003
TXIF             .EQ  $0004
RCIF             .EQ  $0005
ADIF             .EQ  $0006
TMR1GIF          .EQ  $0007


;----- PIR2 Bits -----------------------------------------------------
CCP2IF           .EQ  $0000
C3IF             .EQ  $0001
C4IF             .EQ  $0002
BCL1IF           .EQ  $0003
EEIF             .EQ  $0004
C1IF             .EQ  $0005
C2IF             .EQ  $0006
OSFIF            .EQ  $0007


;----- PIR3 Bits -----------------------------------------------------
CCP3IF           .EQ  $0004


;----- PIR4 Bits -----------------------------------------------------
PSMC1SIF         .EQ  $0000
PSMC2SIF         .EQ  $0001
PSMC3SIF         .EQ  $0002
PSMC4SIF         .EQ  $0003
PSMC1TIF         .EQ  $0004
PSMC2TIF         .EQ  $0005
PSMC3TIF         .EQ  $0006
PSMC4TIF         .EQ  $0007


;----- T1CON Bits -----------------------------------------------------
TMR1ON           .EQ  $0000
NOT_T1SYNC       .EQ  $0002
T1OSCEN          .EQ  $0003
T1CKPS0          .EQ  $0004
T1CKPS1          .EQ  $0005
TMR1CS0          .EQ  $0006
TMR1CS1          .EQ  $0007



;----- T1GCON Bits -----------------------------------------------------
T1GSS0           .EQ  $0000
T1GSS1           .EQ  $0001
T1GVAL           .EQ  $0002
T1GGO            .EQ  $0003
T1GSPM           .EQ  $0004
T1GTM            .EQ  $0005
T1GPOL           .EQ  $0006
TMR1GE           .EQ  $0007



;----- T2CON Bits -----------------------------------------------------
T2CKPS0          .EQ  $0000
T2CKPS1          .EQ  $0001
TMR2ON           .EQ  $0002
T2OUTPS0         .EQ  $0003
T2OUTPS1         .EQ  $0004
T2OUTPS2         .EQ  $0005
T2OUTPS3         .EQ  $0006



;----- TRISA Bits -----------------------------------------------------
TRISA0           .EQ  $0000
TRISA1           .EQ  $0001
TRISA2           .EQ  $0002
TRISA3           .EQ  $0003
TRISA4           .EQ  $0004
TRISA5           .EQ  $0005
TRISA6           .EQ  $0006
TRISA7           .EQ  $0007



;----- TRISB Bits -----------------------------------------------------
TRISB0           .EQ  $0000
TRISB1           .EQ  $0001
TRISB2           .EQ  $0002
TRISB3           .EQ  $0003
TRISB4           .EQ  $0004
TRISB5           .EQ  $0005
TRISB6           .EQ  $0006
TRISB7           .EQ  $0007



;----- TRISC Bits -----------------------------------------------------
TRISC0           .EQ  $0000
TRISC1           .EQ  $0001
TRISC2           .EQ  $0002
TRISC3           .EQ  $0003
TRISC4           .EQ  $0004
TRISC5           .EQ  $0005
TRISC6           .EQ  $0006
TRISC7           .EQ  $0007



;----- TRISD Bits -----------------------------------------------------
TRISD0           .EQ  $0000
TRISD1           .EQ  $0001
TRISD2           .EQ  $0002
TRISD3           .EQ  $0003
TRISD4           .EQ  $0004
TRISD5           .EQ  $0005
TRISD6           .EQ  $0006
TRISD7           .EQ  $0007



;----- TRISE Bits -----------------------------------------------------
TRISE0           .EQ  $0000
TRISE1           .EQ  $0001
TRISE2           .EQ  $0002
TRISE3           .EQ  $0003



;----- PIE1 Bits -----------------------------------------------------
TMR1IE           .EQ  $0000
TMR2IE           .EQ  $0001
CCP1IE           .EQ  $0002
SSP1IE           .EQ  $0003
TXIE             .EQ  $0004
RCIE             .EQ  $0005
ADIE             .EQ  $0006
TMR1GIE          .EQ  $0007


;----- PIE2 Bits -----------------------------------------------------
CCP2IE           .EQ  $0000
C3IE             .EQ  $0001
C4IE             .EQ  $0002
BCL1IE           .EQ  $0003
EEIE             .EQ  $0004
C1IE             .EQ  $0005
C2IE             .EQ  $0006
OSFIE            .EQ  $0007


;----- PIE3 Bits -----------------------------------------------------
CCP3IE           .EQ  $0004


;----- PIE4 Bits -----------------------------------------------------
PSMC1SIE         .EQ  $0000
PSMC2SIE         .EQ  $0001
PSMC3SIE         .EQ  $0002
PSMC4SIE         .EQ  $0003
PSMC1TIE         .EQ  $0004
PSMC2TIE         .EQ  $0005
PSMC3TIE         .EQ  $0006
PSMC4TIE         .EQ  $0007

PMSC3TIE         .EQ  $0006


;----- OPTION_REG Bits -----------------------------------------------------
PS0              .EQ  $0000
PS1              .EQ  $0001
PS2              .EQ  $0002
PSA              .EQ  $0003
TMR0SE           .EQ  $0004
TMR0CS           .EQ  $0005
INTEDG           .EQ  $0006
NOT_WPUEN        .EQ  $0007

T0SE             .EQ  $0004
T0CS             .EQ  $0005


;----- PCON Bits -----------------------------------------------------
NOT_BOR          .EQ  $0000
NOT_POR          .EQ  $0001
NOT_RI           .EQ  $0002
NOT_RMCLR        .EQ  $0003
NOT_RWDT         .EQ  $0004
STKUNF           .EQ  $0006
STKOVF           .EQ  $0007


;----- WDTCON Bits -----------------------------------------------------
SWDTEN           .EQ  $0000
WDTPS0           .EQ  $0001
WDTPS1           .EQ  $0002
WDTPS2           .EQ  $0003
WDTPS3           .EQ  $0004
WDTPS4           .EQ  $0005



;----- OSCTUNE Bits -----------------------------------------------------
TUN0             .EQ  $0000
TUN1             .EQ  $0001
TUN2             .EQ  $0002
TUN3             .EQ  $0003
TUN4             .EQ  $0004
TUN5             .EQ  $0005



;----- OSCCON Bits -----------------------------------------------------
SCS0             .EQ  $0000
SCS1             .EQ  $0001
IRCF0            .EQ  $0003
IRCF1            .EQ  $0004
IRCF2            .EQ  $0005
IRCF3            .EQ  $0006
SPLLEN           .EQ  $0007



;----- OSCSTAT Bits -----------------------------------------------------
HFIOFS           .EQ  $0000
LFIOFR           .EQ  $0001
MFIOFR           .EQ  $0002
HFIOFL           .EQ  $0003
HFIOFR           .EQ  $0004
OSTS             .EQ  $0005
PLLR             .EQ  $0006
T1OSCR           .EQ  $0007


;----- ADCON0 Bits -----------------------------------------------------
ADON             .EQ  $0000
GO_NOT_DONE      .EQ  $0001
CHS0             .EQ  $0002
CHS1             .EQ  $0003
CHS2             .EQ  $0004
CHS3             .EQ  $0005
CHS4             .EQ  $0006
ADRMD            .EQ  $0007

ADGO             .EQ  $0001

GO               .EQ  $0001

DONE             .EQ  $0001


;----- ADCON1 Bits -----------------------------------------------------
ADPREF0          .EQ  $0000
ADPREF1          .EQ  $0001
ADNREF           .EQ  $0002
ADCS0            .EQ  $0004
ADCS1            .EQ  $0005
ADCS2            .EQ  $0006
ADFM             .EQ  $0007



;----- ADCON2 Bits -----------------------------------------------------
CHSN0            .EQ  $0000
CHSN1            .EQ  $0001
CHSN2            .EQ  $0002
CHSN3            .EQ  $0003
TRIGSEL0         .EQ  $0004
TRIGSEL1         .EQ  $0005
TRIGSEL2         .EQ  $0006
TRIGSEL3         .EQ  $0007



;----- LATA Bits -----------------------------------------------------
LATA0            .EQ  $0000
LATA1            .EQ  $0001
LATA2            .EQ  $0002
LATA3            .EQ  $0003
LATA4            .EQ  $0004
LATA5            .EQ  $0005
LATA6            .EQ  $0006
LATA7            .EQ  $0007



;----- LATB Bits -----------------------------------------------------
LATB0            .EQ  $0000
LATB1            .EQ  $0001
LATB2            .EQ  $0002
LATB3            .EQ  $0003
LATB4            .EQ  $0004
LATB5            .EQ  $0005
LATB6            .EQ  $0006
LATB7            .EQ  $0007



;----- LATC Bits -----------------------------------------------------
LATC0            .EQ  $0000
LATC1            .EQ  $0001
LATC2            .EQ  $0002
LATC3            .EQ  $0003
LATC4            .EQ  $0004
LATC5            .EQ  $0005
LATC6            .EQ  $0006
LATC7            .EQ  $0007



;----- LATD Bits -----------------------------------------------------
LATD0            .EQ  $0000
LATD1            .EQ  $0001
LATD2            .EQ  $0002
LATD3            .EQ  $0003
LATD4            .EQ  $0004
LATD5            .EQ  $0005
LATD6            .EQ  $0006
LATD7            .EQ  $0007



;----- LATE Bits -----------------------------------------------------
LATE0            .EQ  $0000
LATE1            .EQ  $0001
LATE2            .EQ  $0002



;----- CM1CON0 Bits -----------------------------------------------------
C1SYNC           .EQ  $0000
C1HYS            .EQ  $0001
C1SP             .EQ  $0002
C1ZLF            .EQ  $0003
C1POL            .EQ  $0004
C1OE             .EQ  $0005
C1OUT            .EQ  $0006
C1ON             .EQ  $0007


;----- CM1CON1 Bits -----------------------------------------------------
C1INTN           .EQ  $0006
C1INTP           .EQ  $0007

C1NCH0           .EQ  $0000
C1NCH1           .EQ  $0001
C1NCH2           .EQ  $0002
C1PCH0           .EQ  $0003
C1PCH1           .EQ  $0004
C1PCH2           .EQ  $0005


;----- CM2CON0 Bits -----------------------------------------------------
C2SYNC           .EQ  $0000
C2HYS            .EQ  $0001
C2SP             .EQ  $0002
C2ZLF            .EQ  $0003
C2POL            .EQ  $0004
C2OE             .EQ  $0005
C2OUT            .EQ  $0006
C2ON             .EQ  $0007


;----- CM2CON1 Bits -----------------------------------------------------
C2INTN           .EQ  $0006
C2INTP           .EQ  $0007

C2NCH0           .EQ  $0000
C2NCH1           .EQ  $0001
C2NCH2           .EQ  $0002
C2PCH0           .EQ  $0003
C2PCH1           .EQ  $0004
C2PCH2           .EQ  $0005


;----- CMOUT Bits -----------------------------------------------------
MC1OUT           .EQ  $0000
MC2OUT           .EQ  $0001
MC3OUT           .EQ  $0002
MC4OUT           .EQ  $0003


;----- BORCON Bits -----------------------------------------------------
BORRDY           .EQ  $0000
BORFS            .EQ  $0006
SBOREN           .EQ  $0007


;----- FVRCON Bits -----------------------------------------------------
ADFVR0           .EQ  $0000
ADFVR1           .EQ  $0001
CDAFVR0          .EQ  $0002
CDAFVR1          .EQ  $0003
TSRNG            .EQ  $0004
TSEN             .EQ  $0005
FVRRDY           .EQ  $0006
FVREN            .EQ  $0007



;----- DAC1CON0 Bits -----------------------------------------------------
DAC1NSS          .EQ  $0000
DAC1OE2          .EQ  $0004
DAC1OE1          .EQ  $0005
DAC1EN           .EQ  $0007

DAC1PSS0         .EQ  $0002
DAC1PSS1         .EQ  $0003

DACNSS           .EQ  $0000
DACOE0           .EQ  $0004
DACOE1           .EQ  $0005
DACEN            .EQ  $0007

DACPSS0          .EQ  $0002
DACPSS1          .EQ  $0003


;----- DAC1CON1 Bits -----------------------------------------------------
DAC1R0           .EQ  $0000
DAC1R1           .EQ  $0001
DAC1R2           .EQ  $0002
DAC1R3           .EQ  $0003
DAC1R4           .EQ  $0004
DAC1R5           .EQ  $0005
DAC1R6           .EQ  $0006
DAC1R7           .EQ  $0007

DACR0            .EQ  $0000
DACR1            .EQ  $0001
DACR2            .EQ  $0002
DACR3            .EQ  $0003
DACR4            .EQ  $0004
DACR5            .EQ  $0005
DACR6            .EQ  $0006
DACR7            .EQ  $0007


;----- CM4CON0 Bits -----------------------------------------------------
C4SYNC           .EQ  $0000
C4HYS            .EQ  $0001
C4SP             .EQ  $0002
C4ZLF            .EQ  $0003
C4POL            .EQ  $0004
C4OE             .EQ  $0005
C4OUT            .EQ  $0006
C4ON             .EQ  $0007


;----- CM4CON1 Bits -----------------------------------------------------
C4INTN           .EQ  $0006
C4INTP           .EQ  $0007

C4NCH0           .EQ  $0000
C4NCH1           .EQ  $0001
C4NCH2           .EQ  $0002
C4PCH0           .EQ  $0003
C4PCH1           .EQ  $0004
C4PCH2           .EQ  $0005


;----- APFCON2 Bits -----------------------------------------------------
CCP3SEL          .EQ  $0000


;----- APFCON Bits -----------------------------------------------------
CCP2SEL          .EQ  $0000
RXSEL            .EQ  $0001
TXSEL            .EQ  $0002
SDISEL           .EQ  $0003
SCKSEL           .EQ  $0004
SDOSEL           .EQ  $0005
CCP1SEL          .EQ  $0006
C2OUTSEL         .EQ  $0007


;----- APFCON0 Bits -----------------------------------------------------
CCP2SEL          .EQ  $0000
RXSEL            .EQ  $0001
TXSEL            .EQ  $0002
SDISEL           .EQ  $0003
SCKSEL           .EQ  $0004
SDOSEL           .EQ  $0005
CCP1SEL          .EQ  $0006
C2OUTSEL         .EQ  $0007


;----- APFCON1 Bits -----------------------------------------------------
CCP2SEL          .EQ  $0000
RXSEL            .EQ  $0001
TXSEL            .EQ  $0002
SDISEL           .EQ  $0003
SCKSEL           .EQ  $0004
SDOSEL           .EQ  $0005
CCP1SEL          .EQ  $0006
C2OUTSEL         .EQ  $0007


;----- CM3CON0 Bits -----------------------------------------------------
C3SYNC           .EQ  $0000
C3HYS            .EQ  $0001
C3SP             .EQ  $0002
C3ZLF            .EQ  $0003
C3POL            .EQ  $0004
C3OE             .EQ  $0005
C3OUT            .EQ  $0006
C3ON             .EQ  $0007


;----- CM3CON1 Bits -----------------------------------------------------
C3INTN           .EQ  $0006
C3INTP           .EQ  $0007

C3NCH0           .EQ  $0000
C3NCH1           .EQ  $0001
C3NCH2           .EQ  $0002
C3PCH0           .EQ  $0003
C3PCH1           .EQ  $0004
C3PCH2           .EQ  $0005


;----- ANSELA Bits -----------------------------------------------------
ANSA0            .EQ  $0000
ANSA1            .EQ  $0001
ANSA2            .EQ  $0002
ANSA3            .EQ  $0003
ANSA4            .EQ  $0004
ANSA5            .EQ  $0005
ANSA7            .EQ  $0007



;----- ANSELB Bits -----------------------------------------------------
ANSB0            .EQ  $0000
ANSB1            .EQ  $0001
ANSB2            .EQ  $0002
ANSB3            .EQ  $0003
ANSB4            .EQ  $0004
ANSB5            .EQ  $0005
ANSB6            .EQ  $0006



;----- ANSELC Bits -----------------------------------------------------
ANSC0            .EQ  $0000
ANSC1            .EQ  $0001
ANSC2            .EQ  $0002
ANSC3            .EQ  $0003
ANSC4            .EQ  $0004
ANSC5            .EQ  $0005
ANSC6            .EQ  $0006
ANSC7            .EQ  $0007


;----- ANSELD Bits -----------------------------------------------------
ANSD0            .EQ  $0000
ANSD1            .EQ  $0001
ANSD2            .EQ  $0002



;----- ANSELE Bits -----------------------------------------------------
ANSE0            .EQ  $0000
ANSE1            .EQ  $0001
ANSE2            .EQ  $0002



;----- EECON1 Bits -----------------------------------------------------
RD               .EQ  $0000
WR               .EQ  $0001
WREN             .EQ  $0002
WRERR            .EQ  $0003
FREE             .EQ  $0004
LWLO             .EQ  $0005
CFGS             .EQ  $0006
EEPGD            .EQ  $0007


;----- VREGCON Bits -----------------------------------------------------
VREGPM           .EQ  $0001


;----- RC1STA Bits -----------------------------------------------------
RX9D             .EQ  $0000
OERR             .EQ  $0001
FERR             .EQ  $0002
ADDEN            .EQ  $0003
CREN             .EQ  $0004
SREN             .EQ  $0005
RX9              .EQ  $0006
SPEN             .EQ  $0007


;----- RCSTA Bits -----------------------------------------------------
RX9D             .EQ  $0000
OERR             .EQ  $0001
FERR             .EQ  $0002
ADDEN            .EQ  $0003
CREN             .EQ  $0004
SREN             .EQ  $0005
RX9              .EQ  $0006
SPEN             .EQ  $0007


;----- RCSTA1 Bits -----------------------------------------------------
RX9D             .EQ  $0000
OERR             .EQ  $0001
FERR             .EQ  $0002
ADDEN            .EQ  $0003
CREN             .EQ  $0004
SREN             .EQ  $0005
RX9              .EQ  $0006
SPEN             .EQ  $0007


;----- TX1STA Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SENDB            .EQ  $0003
SYNC             .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007


;----- TXSTA Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SENDB            .EQ  $0003
SYNC             .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007


;----- TXSTA1 Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SENDB            .EQ  $0003
SYNC             .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007


;----- BAUD1CON Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
SCKP             .EQ  $0004
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007


;----- BAUDCON Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
SCKP             .EQ  $0004
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007


;----- BAUDCON1 Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
SCKP             .EQ  $0004
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007


;----- BAUDCTL Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
SCKP             .EQ  $0004
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007


;----- BAUDCTL1 Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
SCKP             .EQ  $0004
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007


;----- WPUA Bits -----------------------------------------------------
WPUA0            .EQ  $0000
WPUA1            .EQ  $0001
WPUA2            .EQ  $0002
WPUA3            .EQ  $0003
WPUA4            .EQ  $0004
WPUA5            .EQ  $0005
WPUA6            .EQ  $0006
WPUA7            .EQ  $0007



;----- WPUB Bits -----------------------------------------------------
WPUB0            .EQ  $0000
WPUB1            .EQ  $0001
WPUB2            .EQ  $0002
WPUB3            .EQ  $0003
WPUB4            .EQ  $0004
WPUB5            .EQ  $0005
WPUB6            .EQ  $0006
WPUB7            .EQ  $0007



;----- WPUC Bits -----------------------------------------------------
WPUC0            .EQ  $0000
WPUC1            .EQ  $0001
WPUC2            .EQ  $0002
WPUC3            .EQ  $0003
WPUC4            .EQ  $0004
WPUC5            .EQ  $0005
WPUC6            .EQ  $0006
WPUC7            .EQ  $0007



;----- WPUD Bits -----------------------------------------------------
WPUD0            .EQ  $0000
WPUD1            .EQ  $0001
WPUD2            .EQ  $0002
WPUD3            .EQ  $0003
WPUD4            .EQ  $0004
WPUD5            .EQ  $0005
WPUD6            .EQ  $0006
WPUD7            .EQ  $0007



;----- WPUE Bits -----------------------------------------------------
WPUE0            .EQ  $0000
WPUE1            .EQ  $0001
WPUE2            .EQ  $0002
WPUE3            .EQ  $0003



;----- SSP1BUF Bits -----------------------------------------------------
SSP1BUF0         .EQ  $0000
SSP1BUF1         .EQ  $0001
SSP1BUF2         .EQ  $0002
SSP1BUF3         .EQ  $0003
SSP1BUF4         .EQ  $0004
SSP1BUF5         .EQ  $0005
SSP1BUF6         .EQ  $0006
SSP1BUF7         .EQ  $0007


BUF0             .EQ  $0000
BUF1             .EQ  $0001
BUF2             .EQ  $0002
BUF3             .EQ  $0003
BUF4             .EQ  $0004
BUF5             .EQ  $0005
BUF6             .EQ  $0006
BUF7             .EQ  $0007



;----- SSPBUF Bits -----------------------------------------------------
SSP1BUF0         .EQ  $0000
SSP1BUF1         .EQ  $0001
SSP1BUF2         .EQ  $0002
SSP1BUF3         .EQ  $0003
SSP1BUF4         .EQ  $0004
SSP1BUF5         .EQ  $0005
SSP1BUF6         .EQ  $0006
SSP1BUF7         .EQ  $0007


BUF0             .EQ  $0000
BUF1             .EQ  $0001
BUF2             .EQ  $0002
BUF3             .EQ  $0003
BUF4             .EQ  $0004
BUF5             .EQ  $0005
BUF6             .EQ  $0006
BUF7             .EQ  $0007



;----- SSP1ADD Bits -----------------------------------------------------
SSP1ADD0         .EQ  $0000
SSP1ADD1         .EQ  $0001
SSP1ADD2         .EQ  $0002
SSP1ADD3         .EQ  $0003
SSP1ADD4         .EQ  $0004
SSP1ADD5         .EQ  $0005
SSP1ADD6         .EQ  $0006
SSP1ADD7         .EQ  $0007


ADD0             .EQ  $0000
ADD1             .EQ  $0001
ADD2             .EQ  $0002
ADD3             .EQ  $0003
ADD4             .EQ  $0004
ADD5             .EQ  $0005
ADD6             .EQ  $0006
ADD7             .EQ  $0007



;----- SSPADD Bits -----------------------------------------------------
SSP1ADD0         .EQ  $0000
SSP1ADD1         .EQ  $0001
SSP1ADD2         .EQ  $0002
SSP1ADD3         .EQ  $0003
SSP1ADD4         .EQ  $0004
SSP1ADD5         .EQ  $0005
SSP1ADD6         .EQ  $0006
SSP1ADD7         .EQ  $0007


ADD0             .EQ  $0000
ADD1             .EQ  $0001
ADD2             .EQ  $0002
ADD3             .EQ  $0003
ADD4             .EQ  $0004
ADD5             .EQ  $0005
ADD6             .EQ  $0006
ADD7             .EQ  $0007



;----- SSP1MSK Bits -----------------------------------------------------
SSP1MSK0         .EQ  $0000
SSP1MSK1         .EQ  $0001
SSP1MSK2         .EQ  $0002
SSP1MSK3         .EQ  $0003
SSP1MSK4         .EQ  $0004
SSP1MSK5         .EQ  $0005
SSP1MSK6         .EQ  $0006
SSP1MSK7         .EQ  $0007


MSK0             .EQ  $0000
MSK1             .EQ  $0001
MSK2             .EQ  $0002
MSK3             .EQ  $0003
MSK4             .EQ  $0004
MSK5             .EQ  $0005
MSK6             .EQ  $0006
MSK7             .EQ  $0007



;----- SSPMSK Bits -----------------------------------------------------
SSP1MSK0         .EQ  $0000
SSP1MSK1         .EQ  $0001
SSP1MSK2         .EQ  $0002
SSP1MSK3         .EQ  $0003
SSP1MSK4         .EQ  $0004
SSP1MSK5         .EQ  $0005
SSP1MSK6         .EQ  $0006
SSP1MSK7         .EQ  $0007


MSK0             .EQ  $0000
MSK1             .EQ  $0001
MSK2             .EQ  $0002
MSK3             .EQ  $0003
MSK4             .EQ  $0004
MSK5             .EQ  $0005
MSK6             .EQ  $0006
MSK7             .EQ  $0007



;----- SSP1STAT Bits -----------------------------------------------------
BF               .EQ  $0000
UA               .EQ  $0001
R_NOT_W          .EQ  $0002
S                .EQ  $0003
P                .EQ  $0004
D_NOT_A          .EQ  $0005
CKE              .EQ  $0006
SMP              .EQ  $0007


;----- SSPSTAT Bits -----------------------------------------------------
BF               .EQ  $0000
UA               .EQ  $0001
R_NOT_W          .EQ  $0002
S                .EQ  $0003
P                .EQ  $0004
D_NOT_A          .EQ  $0005
CKE              .EQ  $0006
SMP              .EQ  $0007


;----- SSP1CON Bits -----------------------------------------------------
CKP              .EQ  $0004
SSPEN            .EQ  $0005
SSPOV            .EQ  $0006
WCOL             .EQ  $0007

SSPM0            .EQ  $0000
SSPM1            .EQ  $0001
SSPM2            .EQ  $0002
SSPM3            .EQ  $0003


;----- SSP1CON1 Bits -----------------------------------------------------
CKP              .EQ  $0004
SSPEN            .EQ  $0005
SSPOV            .EQ  $0006
WCOL             .EQ  $0007

SSPM0            .EQ  $0000
SSPM1            .EQ  $0001
SSPM2            .EQ  $0002
SSPM3            .EQ  $0003


;----- SSPCON Bits -----------------------------------------------------
CKP              .EQ  $0004
SSPEN            .EQ  $0005
SSPOV            .EQ  $0006
WCOL             .EQ  $0007

SSPM0            .EQ  $0000
SSPM1            .EQ  $0001
SSPM2            .EQ  $0002
SSPM3            .EQ  $0003


;----- SSPCON1 Bits -----------------------------------------------------
CKP              .EQ  $0004
SSPEN            .EQ  $0005
SSPOV            .EQ  $0006
WCOL             .EQ  $0007

SSPM0            .EQ  $0000
SSPM1            .EQ  $0001
SSPM2            .EQ  $0002
SSPM3            .EQ  $0003


;----- SSP1CON2 Bits -----------------------------------------------------
SEN              .EQ  $0000
RSEN             .EQ  $0001
PEN              .EQ  $0002
RCEN             .EQ  $0003
ACKEN            .EQ  $0004
ACKDT            .EQ  $0005
ACKSTAT          .EQ  $0006
GCEN             .EQ  $0007


;----- SSPCON2 Bits -----------------------------------------------------
SEN              .EQ  $0000
RSEN             .EQ  $0001
PEN              .EQ  $0002
RCEN             .EQ  $0003
ACKEN            .EQ  $0004
ACKDT            .EQ  $0005
ACKSTAT          .EQ  $0006
GCEN             .EQ  $0007


;----- SSP1CON3 Bits -----------------------------------------------------
DHEN             .EQ  $0000
AHEN             .EQ  $0001
SBCDE            .EQ  $0002
SDAHT            .EQ  $0003
BOEN             .EQ  $0004
SCIE             .EQ  $0005
PCIE             .EQ  $0006
ACKTIM           .EQ  $0007


;----- SSPCON3 Bits -----------------------------------------------------
DHEN             .EQ  $0000
AHEN             .EQ  $0001
SBCDE            .EQ  $0002
SDAHT            .EQ  $0003
BOEN             .EQ  $0004
SCIE             .EQ  $0005
PCIE             .EQ  $0006
ACKTIM           .EQ  $0007


;----- ODCONA Bits -----------------------------------------------------
ODCONA0          .EQ  $0000
ODCONA1          .EQ  $0001
ODCONA2          .EQ  $0002
ODCONA3          .EQ  $0003
ODCONA4          .EQ  $0004
ODCONA5          .EQ  $0005
ODCONA6          .EQ  $0006
ODCONA7          .EQ  $0007



;----- ODCONB Bits -----------------------------------------------------
ODCONB0          .EQ  $0000
ODCONB1          .EQ  $0001
ODCONB2          .EQ  $0002
ODCONB3          .EQ  $0003
ODCONB4          .EQ  $0004
ODCONB5          .EQ  $0005
ODCONB6          .EQ  $0006
ODCONB7          .EQ  $0007



;----- ODCONC Bits -----------------------------------------------------
ODCONC0          .EQ  $0000
ODCONC1          .EQ  $0001
ODCONC2          .EQ  $0002
ODCONC3          .EQ  $0003
ODCONC4          .EQ  $0004
ODCONC5          .EQ  $0005
ODCONC6          .EQ  $0006
ODCONC7          .EQ  $0007



;----- ODCOND Bits -----------------------------------------------------
ODCOND0          .EQ  $0000
ODCOND1          .EQ  $0001
ODCOND2          .EQ  $0002
ODCOND3          .EQ  $0003
ODCOND4          .EQ  $0004
ODCOND5          .EQ  $0005
ODCOND6          .EQ  $0006
ODCOND7          .EQ  $0007



;----- ODCONE Bits -----------------------------------------------------
ODCONE0          .EQ  $0000
ODCONE1          .EQ  $0001
ODCONE2          .EQ  $0002



;----- CCP1CON Bits -----------------------------------------------------
CCP1M0           .EQ  $0000
CCP1M1           .EQ  $0001
CCP1M2           .EQ  $0002
CCP1M3           .EQ  $0003
DC1B0            .EQ  $0004
DC1B1            .EQ  $0005


;----- CCP2CON Bits -----------------------------------------------------
CCP2M0           .EQ  $0000
CCP2M1           .EQ  $0001
CCP2M2           .EQ  $0002
CCP2M3           .EQ  $0003
DC2B0            .EQ  $0004
DC2B1            .EQ  $0005


;----- SLRCONA Bits -----------------------------------------------------
SLRCONA0         .EQ  $0000
SLRCONA1         .EQ  $0001
SLRCONA2         .EQ  $0002
SLRCONA3         .EQ  $0003
SLRCONA4         .EQ  $0004
SLRCONA5         .EQ  $0005
SLRCONA6         .EQ  $0006
SLRCONA7         .EQ  $0007



;----- SLRCONB Bits -----------------------------------------------------
SLRCONB0         .EQ  $0000
SLRCONB1         .EQ  $0001
SLRCONB2         .EQ  $0002
SLRCONB3         .EQ  $0003
SLRCONB4         .EQ  $0004
SLRCONB5         .EQ  $0005
SLRCONB6         .EQ  $0006
SLRCONB7         .EQ  $0007



;----- SLRCONC Bits -----------------------------------------------------
SLRCONC0         .EQ  $0000
SLRCONC1         .EQ  $0001
SLRCONC2         .EQ  $0002
SLRCONC3         .EQ  $0003
SLRCONC4         .EQ  $0004
SLRCONC5         .EQ  $0005
SLRCONC6         .EQ  $0006
SLRCONC7         .EQ  $0007



;----- SLRCOND Bits -----------------------------------------------------
SLRCOND0         .EQ  $0000
SLRCOND1         .EQ  $0001
SLRCOND2         .EQ  $0002
SLRCOND3         .EQ  $0003
SLRCOND4         .EQ  $0004
SLRCOND5         .EQ  $0005
SLRCOND6         .EQ  $0006
SLRCOND7         .EQ  $0007



;----- SLRCONE Bits -----------------------------------------------------
SLRCONE0         .EQ  $0000
SLRCONE1         .EQ  $0001
SLRCONE2         .EQ  $0002



;----- CCP3CON Bits -----------------------------------------------------
CCP3M0           .EQ  $0000
CCP3M1           .EQ  $0001
CCP3M2           .EQ  $0002
CCP3M3           .EQ  $0003
DC3B0            .EQ  $0004
DC3B1            .EQ  $0005


;----- INLVLA Bits -----------------------------------------------------
INLVLA0          .EQ  $0000
INLVLA1          .EQ  $0001
INLVLA2          .EQ  $0002
INLVLA3          .EQ  $0003
INLVLA4          .EQ  $0004
INLVLA5          .EQ  $0005
INLVLA6          .EQ  $0006
INLVLA7          .EQ  $0007



;----- INLVLB Bits -----------------------------------------------------
INLVLB0          .EQ  $0000
INLVLB1          .EQ  $0001
INLVLB2          .EQ  $0002
INLVLB3          .EQ  $0003
INLVLB4          .EQ  $0004
INLVLB5          .EQ  $0005
INLVLB6          .EQ  $0006
INLVLB7          .EQ  $0007



;----- INLVLC Bits -----------------------------------------------------
INLVLC0          .EQ  $0000
INLVLC1          .EQ  $0001
INLVLC2          .EQ  $0002
INLVLC3          .EQ  $0003
INLVLC4          .EQ  $0004
INLVLC5          .EQ  $0005
INLVLC6          .EQ  $0006
INLVLC7          .EQ  $0007



;----- INLVLD Bits -----------------------------------------------------
INLVLD0          .EQ  $0000
INLVLD1          .EQ  $0001
INLVLD2          .EQ  $0002
INLVLD3          .EQ  $0003
INLVLD4          .EQ  $0004
INLVLD5          .EQ  $0005
INLVLD6          .EQ  $0006
INLVLD7          .EQ  $0007



;----- INLVLE Bits -----------------------------------------------------
INLVLE0          .EQ  $0000
INLVLE1          .EQ  $0001
INLVLE2          .EQ  $0002
INLVLE3          .EQ  $0003



;----- IOCAP Bits -----------------------------------------------------
IOCAP0           .EQ  $0000
IOCAP1           .EQ  $0001
IOCAP2           .EQ  $0002
IOCAP3           .EQ  $0003
IOCAP4           .EQ  $0004
IOCAP5           .EQ  $0005
IOCAP6           .EQ  $0006
IOCAP7           .EQ  $0007



;----- IOCAN Bits -----------------------------------------------------
IOCAN0           .EQ  $0000
IOCAN1           .EQ  $0001
IOCAN2           .EQ  $0002
IOCAN3           .EQ  $0003
IOCAN4           .EQ  $0004
IOCAN5           .EQ  $0005
IOCAN6           .EQ  $0006
IOCAN7           .EQ  $0007



;----- IOCAF Bits -----------------------------------------------------
IOCAF0           .EQ  $0000
IOCAF1           .EQ  $0001
IOCAF2           .EQ  $0002
IOCAF3           .EQ  $0003
IOCAF4           .EQ  $0004
IOCAF5           .EQ  $0005
IOCAF6           .EQ  $0006
IOCAF7           .EQ  $0007



;----- IOCBP Bits -----------------------------------------------------
IOCBP0           .EQ  $0000
IOCBP1           .EQ  $0001
IOCBP2           .EQ  $0002
IOCBP3           .EQ  $0003
IOCBP4           .EQ  $0004
IOCBP5           .EQ  $0005
IOCBP6           .EQ  $0006
IOCBP7           .EQ  $0007



;----- IOCBN Bits -----------------------------------------------------
IOCBN0           .EQ  $0000
IOCBN1           .EQ  $0001
IOCBN2           .EQ  $0002
IOCBN3           .EQ  $0003
IOCBN4           .EQ  $0004
IOCBN5           .EQ  $0005
IOCBN6           .EQ  $0006
IOCBN7           .EQ  $0007



;----- IOCBF Bits -----------------------------------------------------
IOCBF0           .EQ  $0000
IOCBF1           .EQ  $0001
IOCBF2           .EQ  $0002
IOCBF3           .EQ  $0003
IOCBF4           .EQ  $0004
IOCBF5           .EQ  $0005
IOCBF6           .EQ  $0006
IOCBF7           .EQ  $0007



;----- IOCCP Bits -----------------------------------------------------
IOCCP0           .EQ  $0000
IOCCP1           .EQ  $0001
IOCCP2           .EQ  $0002
IOCCP3           .EQ  $0003
IOCCP4           .EQ  $0004
IOCCP5           .EQ  $0005
IOCCP6           .EQ  $0006
IOCCP7           .EQ  $0007



;----- IOCCN Bits -----------------------------------------------------
IOCCN0           .EQ  $0000
IOCCN1           .EQ  $0001
IOCCN2           .EQ  $0002
IOCCN3           .EQ  $0003
IOCCN4           .EQ  $0004
IOCCN5           .EQ  $0005
IOCCN6           .EQ  $0006
IOCCN7           .EQ  $0007



;----- IOCCF Bits -----------------------------------------------------
IOCCF0           .EQ  $0000
IOCCF1           .EQ  $0001
IOCCF2           .EQ  $0002
IOCCF3           .EQ  $0003
IOCCF4           .EQ  $0004
IOCCF5           .EQ  $0005
IOCCF6           .EQ  $0006
IOCCF7           .EQ  $0007



;----- IOCEP Bits -----------------------------------------------------
IOCEP3           .EQ  $0003


;----- IOCEN Bits -----------------------------------------------------
IOCEN3           .EQ  $0003


;----- IOCEF Bits -----------------------------------------------------
IOCEF3           .EQ  $0003


;----- OPA1CON Bits -----------------------------------------------------
OPA1PCH0         .EQ  $0000
OPA1PCH1         .EQ  $0001
OPA1PCH2         .EQ  $0002

OPA1SP           .EQ  $0006
OPA1EN           .EQ  $0007

SP               .EQ  $0006
EN               .EQ  $0007

PCH0             .EQ  $0000
PCH1             .EQ  $0001
PCH2             .EQ  $0002


;----- OPA2CON Bits -----------------------------------------------------
OPA2PCH0         .EQ  $0000
OPA2PCH1         .EQ  $0001
OPA2PCH2         .EQ  $0002

OPA2SP           .EQ  $0006
OPA2EN           .EQ  $0007

SP               .EQ  $0006
EN               .EQ  $0007

PCH0             .EQ  $0000
PCH1             .EQ  $0001
PCH2             .EQ  $0002


;----- OPA3CON Bits -----------------------------------------------------
OPA3PCH0         .EQ  $0000
OPA3PCH1         .EQ  $0001
OPA3PCH2         .EQ  $0002

OPA3SP           .EQ  $0006
OPA3EN           .EQ  $0007

SP               .EQ  $0006
EN               .EQ  $0007

PCH0             .EQ  $0000
PCH1             .EQ  $0001
PCH2             .EQ  $0002


;----- CLKRCON Bits -----------------------------------------------------
CLKRDIV0         .EQ  $0000
CLKRDIV1         .EQ  $0001
CLKRDIV2         .EQ  $0002
CLKRDC0          .EQ  $0003
CLKRDC1          .EQ  $0004
CLKRSLR          .EQ  $0005
CLKROE           .EQ  $0006
CLKREN           .EQ  $0007



;----- DAC2CON0 Bits -----------------------------------------------------
DAC2OE2          .EQ  $0004
DAC2OE1          .EQ  $0005
DAC2EN           .EQ  $0007


;----- DAC3CON0 Bits -----------------------------------------------------
DAC3OE2          .EQ  $0004
DAC3OE1          .EQ  $0005
DAC3EN           .EQ  $0007


;----- DAC4CON0 Bits -----------------------------------------------------
DAC4OE2          .EQ  $0004
DAC4OE1          .EQ  $0005
DAC4EN           .EQ  $0007


;----- PSMC1CON Bits -----------------------------------------------------
P1DBRE           .EQ  $0004
P1DBFE           .EQ  $0005
PSMC1LD          .EQ  $0006
PSMC1EN          .EQ  $0007

P1MODE0          .EQ  $0000
P1MODE1          .EQ  $0001
P1MODE2          .EQ  $0002
P1MODE3          .EQ  $0003


;----- PSMC1MDL Bits -----------------------------------------------------
P1MDLBIT         .EQ  $0005
P1MDLPOL         .EQ  $0006
P1MDLEN          .EQ  $0007

P1MSRC0          .EQ  $0000
P1MSRC1          .EQ  $0001
P1MSRC2          .EQ  $0002
P1MSRC3          .EQ  $0003


;----- PSMC1SYNC Bits -----------------------------------------------------
P1SYNC0          .EQ  $0000
P1SYNC1          .EQ  $0001
P1SYNC2          .EQ  $0002
P1DCPOL          .EQ  $0005
P1PRPOL          .EQ  $0006
P1POFST          .EQ  $0007


;----- PSMC1CLK Bits -----------------------------------------------------
P1CSRC0          .EQ  $0000
P1CSRC1          .EQ  $0001
P1CPRE0          .EQ  $0004
P1CPRE1          .EQ  $0005



;----- PSMC1OEN Bits -----------------------------------------------------
P1OEA            .EQ  $0000
P1OEB            .EQ  $0001
P1OEC            .EQ  $0002
P1OED            .EQ  $0003
P1OEE            .EQ  $0004
P1OEF            .EQ  $0005


;----- PSMC1POL Bits -----------------------------------------------------
P1POLA           .EQ  $0000
P1POLB           .EQ  $0001
P1POLC           .EQ  $0002
P1POLD           .EQ  $0003
P1POLE           .EQ  $0004
P1POLF           .EQ  $0005
P1INPOL          .EQ  $0006


;----- PSMC1BLNK Bits -----------------------------------------------------
P1REBM0          .EQ  $0000
P1REBM1          .EQ  $0001
P1FEBM0          .EQ  $0004
P1FEBM1          .EQ  $0005


;----- PSMC1REBS Bits -----------------------------------------------------
P1REBSC1         .EQ  $0001
P1REBSC2         .EQ  $0002
P1REBSC3         .EQ  $0003
P1REBSC4         .EQ  $0004
P1REBSIN         .EQ  $0007


;----- PSMC1FEBS Bits -----------------------------------------------------
P1FEBSC1         .EQ  $0001
P1FEBSC2         .EQ  $0002
P1FEBSC3         .EQ  $0003
P1FEBSC4         .EQ  $0004
P1FEBSIN         .EQ  $0007


;----- PSMC1PHS Bits -----------------------------------------------------
P1PHST           .EQ  $0000
P1PHSC1          .EQ  $0001
P1PHSC2          .EQ  $0002
P1PHSC3          .EQ  $0003
P1PHSC4          .EQ  $0004
P1PHSIN          .EQ  $0007


;----- PSMC1DCS Bits -----------------------------------------------------
P1DCST           .EQ  $0000
P1DCSC1          .EQ  $0001
P1DCSC2          .EQ  $0002
P1DCSC3          .EQ  $0003
P1DCSC4          .EQ  $0004
P1DCSIN          .EQ  $0007


;----- PSMC1PRS Bits -----------------------------------------------------
P1PRST           .EQ  $0000
P1PRSC1          .EQ  $0001
P1PRSC2          .EQ  $0002
P1PRSC3          .EQ  $0003
P1PRSC4          .EQ  $0004
P1PRSIN          .EQ  $0007


;----- PSMC1ASDC Bits -----------------------------------------------------
P1ASDOV          .EQ  $0000
P1ARSEN          .EQ  $0005
P1ASDEN          .EQ  $0006
P1ASE            .EQ  $0007


;----- PSMC1ASDL Bits -----------------------------------------------------
P1ASDLA          .EQ  $0000
P1ASDLB          .EQ  $0001
P1ASDLC          .EQ  $0002
P1ASDLD          .EQ  $0003
P1ASDLE          .EQ  $0004
P1ASDLF          .EQ  $0005


;----- PSMC1ASDS Bits -----------------------------------------------------
P1ASDSC1         .EQ  $0001
P1ASDSC2         .EQ  $0002
P1ASDSC3         .EQ  $0003
P1ASDSC4         .EQ  $0004
P1ASDSIN         .EQ  $0007


;----- PSMC1INT Bits -----------------------------------------------------
P1TPRIF          .EQ  $0000
P1TDCIF          .EQ  $0001
P1TPHIF          .EQ  $0002
P1TOVIF          .EQ  $0003
P1TPRIE          .EQ  $0004
P1TDCIE          .EQ  $0005
P1TPHIE          .EQ  $0006
P1TOVIE          .EQ  $0007


;----- PSMC1PHL Bits -----------------------------------------------------
PSMC1PH0         .EQ  $0000
PSMC1PH1         .EQ  $0001
PSMC1PH2         .EQ  $0002
PSMC1PH3         .EQ  $0003
PSMC1PH4         .EQ  $0004
PSMC1PH5         .EQ  $0005
PSMC1PH6         .EQ  $0006
PSMC1PH7         .EQ  $0007


;----- PSMC1PHH Bits -----------------------------------------------------
PSMC1PH8         .EQ  $0000
PSMC1PH9         .EQ  $0001
PSMC1PH10        .EQ  $0002
PSMC1PH11        .EQ  $0003
PSMC1PH12        .EQ  $0004
PSMC1PH13        .EQ  $0005
PSMC1PH14        .EQ  $0006
PSMC1PH15        .EQ  $0007


;----- PSMC1DCL Bits -----------------------------------------------------
PSMC1DC0         .EQ  $0000
PSMC1DC1         .EQ  $0001
PSMC1DC2         .EQ  $0002
PSMC1DC3         .EQ  $0003
PSMC1DC4         .EQ  $0004
PSMC1DC5         .EQ  $0005
PSMC1DC6         .EQ  $0006
PSMC1DC7         .EQ  $0007


;----- PSMC1DCH Bits -----------------------------------------------------
PSMC1DC8         .EQ  $0000
PSMC1DC9         .EQ  $0001
PSMC1DC10        .EQ  $0002
PSMC1DC11        .EQ  $0003
PSMC1DC12        .EQ  $0004
PSMC1DC13        .EQ  $0005
PSMC1DC14        .EQ  $0006
PSMC1DC15        .EQ  $0007


;----- PSMC1PRL Bits -----------------------------------------------------
PSMC1PR0         .EQ  $0000
PSMC1PR1         .EQ  $0001
PSMC1PR2         .EQ  $0002
PSMC1PR3         .EQ  $0003
PSMC1PR4         .EQ  $0004
PSMC1PR5         .EQ  $0005
PSMC1PR6         .EQ  $0006
PSMC1PR7         .EQ  $0007


;----- PSMC1PRH Bits -----------------------------------------------------
PSMC1PR8         .EQ  $0000
PSMC1PR9         .EQ  $0001
PSMC1PR10        .EQ  $0002
PSMC1PR11        .EQ  $0003
PSMC1PR12        .EQ  $0004
PSMC1PR13        .EQ  $0005
PSMC1PR14        .EQ  $0006
PSMC1PR15        .EQ  $0007


;----- PSMC1TMRL Bits -----------------------------------------------------
PSMC1TMR0        .EQ  $0000
PSMC1TMR1        .EQ  $0001
PSMC1TMR2        .EQ  $0002
PSMC1TMR3        .EQ  $0003
PSMC1TMR4        .EQ  $0004
PSMC1TMR5        .EQ  $0005
PSMC1TMR6        .EQ  $0006
PSMC1TMR7        .EQ  $0007


;----- PSMC1TMRH Bits -----------------------------------------------------
PSMC1TMR8        .EQ  $0000
PSMC1TMR9        .EQ  $0001
PSMC1TMR10       .EQ  $0002
PSMC1TMR11       .EQ  $0003
PSMC1TMR12       .EQ  $0004
PSMC1TMR13       .EQ  $0005
PSMC1TMR14       .EQ  $0006
PSMC1TMR15       .EQ  $0007


;----- PSMC1DBR Bits -----------------------------------------------------
PSMC1DBR0        .EQ  $0000
PSMC1DBR1        .EQ  $0001
PSMC1DBR2        .EQ  $0002
PSMC1DBR3        .EQ  $0003
PSMC1DBR4        .EQ  $0004
PSMC1DBR5        .EQ  $0005
PSMC1DBR6        .EQ  $0006
PSMC1DBR7        .EQ  $0007


;----- PSMC1DBF Bits -----------------------------------------------------
PSMC1DBF0        .EQ  $0000
PSMC1DBF1        .EQ  $0001
PSMC1DBF2        .EQ  $0002
PSMC1DBF3        .EQ  $0003
PSMC1DBF4        .EQ  $0004
PSMC1DBF5        .EQ  $0005
PSMC1DBF6        .EQ  $0006
PSMC1DBF7        .EQ  $0007


;----- PSMC1BLKR Bits -----------------------------------------------------
PSMC1BLKR0       .EQ  $0000
PSMC1BLKR1       .EQ  $0001
PSMC1BLKR2       .EQ  $0002
PSMC1BLKR3       .EQ  $0003
PSMC1BLKR4       .EQ  $0004
PSMC1BLKR5       .EQ  $0005
PSMC1BLKR6       .EQ  $0006
PSMC1BLKR7       .EQ  $0007


;----- PSMC1BLKF Bits -----------------------------------------------------
PSMC1BLKF0       .EQ  $0000
PSMC1BLKF1       .EQ  $0001
PSMC1BLKF2       .EQ  $0002
PSMC1BLKF3       .EQ  $0003
PSMC1BLKF4       .EQ  $0004
PSMC1BLKF5       .EQ  $0005
PSMC1BLKF6       .EQ  $0006
PSMC1BLKF7       .EQ  $0007


;----- PSMC1FFA Bits -----------------------------------------------------
PSMC1FFA0        .EQ  $0000
PSMC1FFA1        .EQ  $0001
PSMC1FFA2        .EQ  $0002
PSMC1FFA3        .EQ  $0003


;----- PSMC1STR0 Bits -----------------------------------------------------
P1STRA           .EQ  $0000
P1STRB           .EQ  $0001
P1STRC           .EQ  $0002
P1STRD           .EQ  $0003
P1STRE           .EQ  $0004
P1STRF           .EQ  $0005


;----- PSMC1STR1 Bits -----------------------------------------------------
P1HSMEN          .EQ  $0000
P1LSMEN          .EQ  $0001
P1SSYNC          .EQ  $0007


;----- PSMC2CON Bits -----------------------------------------------------
P2DBRE           .EQ  $0004
P2DBFE           .EQ  $0005
PSMC2LD          .EQ  $0006
PSMC2EN          .EQ  $0007

P2MODE0          .EQ  $0000
P2MODE1          .EQ  $0001
P2MODE2          .EQ  $0002
P2MODE3          .EQ  $0003


;----- PSMC2MDL Bits -----------------------------------------------------
P2MDLBIT         .EQ  $0005
P2MDLPOL         .EQ  $0006
P2MDLEN          .EQ  $0007

P2MSRC0          .EQ  $0000
P2MSRC1          .EQ  $0001
P2MSRC2          .EQ  $0002
P2MSRC3          .EQ  $0003


;----- PSMC2SYNC Bits -----------------------------------------------------
P2SYNC0          .EQ  $0000
P2SYNC1          .EQ  $0001
P2SYNC2          .EQ  $0002
P2DCPOL          .EQ  $0005
P2PRPOL          .EQ  $0006
P2POFST          .EQ  $0007


;----- PSMC2CLK Bits -----------------------------------------------------
P2CSRC0          .EQ  $0000
P2CSRC1          .EQ  $0001
P2CPRE0          .EQ  $0004
P2CPRE1          .EQ  $0005



;----- PSMC2OEN Bits -----------------------------------------------------
P2OEA            .EQ  $0000
P2OEB            .EQ  $0001


;----- PSMC2POL Bits -----------------------------------------------------
P2POLA           .EQ  $0000
P2POLB           .EQ  $0001
P2INPOL          .EQ  $0006


;----- PSMC2BLNK Bits -----------------------------------------------------
P2REBM0          .EQ  $0000
P2REBM1          .EQ  $0001
P2FEBM0          .EQ  $0004
P2FEBM1          .EQ  $0005


;----- PSMC2REBS Bits -----------------------------------------------------
P2REBSC1         .EQ  $0001
P2REBSC2         .EQ  $0002
P2REBSC3         .EQ  $0003
P2REBSC4         .EQ  $0004
P2REBSIN         .EQ  $0007


;----- PSMC2FEBS Bits -----------------------------------------------------
P2FEBSC1         .EQ  $0001
P2FEBSC2         .EQ  $0002
P2FEBSC3         .EQ  $0003
P2FEBSC4         .EQ  $0004
P2FEBSIN         .EQ  $0007


;----- PSMC2PHS Bits -----------------------------------------------------
P2PHST           .EQ  $0000
P2PHSC1          .EQ  $0001
P2PHSC2          .EQ  $0002
P2PHSC3          .EQ  $0003
P2PHSC4          .EQ  $0004
P2PHSIN          .EQ  $0007


;----- PSMC2DCS Bits -----------------------------------------------------
P2DCST           .EQ  $0000
P2DCSC1          .EQ  $0001
P2DCSC2          .EQ  $0002
P2DCSC3          .EQ  $0003
P2DCSC4          .EQ  $0004
P2DCSIN          .EQ  $0007


;----- PSMC2PRS Bits -----------------------------------------------------
P2PRST           .EQ  $0000
P2PRSC1          .EQ  $0001
P2PRSC2          .EQ  $0002
P2PRSC3          .EQ  $0003
P2PRSC4          .EQ  $0004
P2PRSIN          .EQ  $0007


;----- PSMC2ASDC Bits -----------------------------------------------------
P2ASDOV          .EQ  $0000
P2ARSEN          .EQ  $0005
P2ASDEN          .EQ  $0006
P2ASE            .EQ  $0007


;----- PSMC2ASDL Bits -----------------------------------------------------
P2ASDLA          .EQ  $0000
P2ASDLB          .EQ  $0001


;----- PSMC2ASDS Bits -----------------------------------------------------
P2ASDSC1         .EQ  $0001
P2ASDSC2         .EQ  $0002
P2ASDSC3         .EQ  $0003
P2ASDSC4         .EQ  $0004
P2ASDSIN         .EQ  $0007


;----- PSMC2INT Bits -----------------------------------------------------
P2TPRIF          .EQ  $0000
P2TDCIF          .EQ  $0001
P2TPHIF          .EQ  $0002
P2TOVIF          .EQ  $0003
P2TPRIE          .EQ  $0004
P2TDCIE          .EQ  $0005
P2TPHIE          .EQ  $0006
P2TOVIE          .EQ  $0007


;----- PSMC2PHL Bits -----------------------------------------------------
PSMC2PH0         .EQ  $0000
PSMC2PH1         .EQ  $0001
PSMC2PH2         .EQ  $0002
PSMC2PH3         .EQ  $0003
PSMC2PH4         .EQ  $0004
PSMC2PH5         .EQ  $0005
PSMC2PH6         .EQ  $0006
PSMC2PH7         .EQ  $0007


;----- PSMC2PHH Bits -----------------------------------------------------
PSMC2PH8         .EQ  $0000
PSMC2PH9         .EQ  $0001
PSMC2PH10        .EQ  $0002
PSMC2PH11        .EQ  $0003
PSMC2PH12        .EQ  $0004
PSMC2PH13        .EQ  $0005
PSMC2PH14        .EQ  $0006
PSMC2PH15        .EQ  $0007


;----- PSMC2DCL Bits -----------------------------------------------------
PSMC2DC0         .EQ  $0000
PSMC2DC1         .EQ  $0001
PSMC2DC2         .EQ  $0002
PSMC2DC3         .EQ  $0003
PSMC2DC4         .EQ  $0004
PSMC2DC5         .EQ  $0005
PSMC2DC6         .EQ  $0006
PSMC2DC7         .EQ  $0007


;----- PSMC2DCH Bits -----------------------------------------------------
PSMC2DC8         .EQ  $0000
PSMC2DC9         .EQ  $0001
PSMC2DC10        .EQ  $0002
PSMC2DC11        .EQ  $0003
PSMC2DC12        .EQ  $0004
PSMC2DC13        .EQ  $0005
PSMC2DC14        .EQ  $0006
PSMC2DC15        .EQ  $0007


;----- PSMC2PRL Bits -----------------------------------------------------
PSMC2PR0         .EQ  $0000
PSMC2PR1         .EQ  $0001
PSMC2PR2         .EQ  $0002
PSMC2PR3         .EQ  $0003
PSMC2PR4         .EQ  $0004
PSMC2PR5         .EQ  $0005
PSMC2PR6         .EQ  $0006
PSMC2PR7         .EQ  $0007


;----- PSMC2PRH Bits -----------------------------------------------------
PSMC2PR8         .EQ  $0000
PSMC2PR9         .EQ  $0001
PSMC2PR10        .EQ  $0002
PSMC2PR11        .EQ  $0003
PSMC2PR12        .EQ  $0004
PSMC2PR13        .EQ  $0005
PSMC2PR14        .EQ  $0006
PSMC2PR15        .EQ  $0007


;----- PSMC2TMRL Bits -----------------------------------------------------
PSMC2TMR0        .EQ  $0000
PSMC2TMR1        .EQ  $0001
PSMC2TMR2        .EQ  $0002
PSMC2TMR3        .EQ  $0003
PSMC2TMR4        .EQ  $0004
PSMC2TMR5        .EQ  $0005
PSMC2TMR6        .EQ  $0006
PSMC2TMR7        .EQ  $0007


;----- PSMC2TMRH Bits -----------------------------------------------------
PSMC2TMR8        .EQ  $0000
PSMC2TMR9        .EQ  $0001
PSMC2TMR10       .EQ  $0002
PSMC2TMR11       .EQ  $0003
PSMC2TMR12       .EQ  $0004
PSMC2TMR13       .EQ  $0005
PSMC2TMR14       .EQ  $0006
PSMC2TMR15       .EQ  $0007


;----- PSMC2DBR Bits -----------------------------------------------------
PSMC2DBR0        .EQ  $0000
PSMC2DBR1        .EQ  $0001
PSMC2DBR2        .EQ  $0002
PSMC2DBR3        .EQ  $0003
PSMC2DBR4        .EQ  $0004
PSMC2DBR5        .EQ  $0005
PSMC2DBR6        .EQ  $0006
PSMC2DBR7        .EQ  $0007


;----- PSMC2DBF Bits -----------------------------------------------------
PSMC2DBF0        .EQ  $0000
PSMC2DBF1        .EQ  $0001
PSMC2DBF2        .EQ  $0002
PSMC2DBF3        .EQ  $0003
PSMC2DBF4        .EQ  $0004
PSMC2DBF5        .EQ  $0005
PSMC2DBF6        .EQ  $0006
PSMC2DBF7        .EQ  $0007


;----- PSMC2BLKR Bits -----------------------------------------------------
PSMC2BLKR0       .EQ  $0000
PSMC2BLKR1       .EQ  $0001
PSMC2BLKR2       .EQ  $0002
PSMC2BLKR3       .EQ  $0003
PSMC2BLKR4       .EQ  $0004
PSMC2BLKR5       .EQ  $0005
PSMC2BLKR6       .EQ  $0006
PSMC2BLKR7       .EQ  $0007


;----- PSMC2BLKF Bits -----------------------------------------------------
PSMC2BLKF0       .EQ  $0000
PSMC2BLKF1       .EQ  $0001
PSMC2BLKF2       .EQ  $0002
PSMC2BLKF3       .EQ  $0003
PSMC2BLKF4       .EQ  $0004
PSMC2BLKF5       .EQ  $0005
PSMC2BLKF6       .EQ  $0006
PSMC2BLKF7       .EQ  $0007


;----- PSMC2FFA Bits -----------------------------------------------------
PSMC2FFA0        .EQ  $0000
PSMC2FFA1        .EQ  $0001
PSMC2FFA2        .EQ  $0002
PSMC2FFA3        .EQ  $0003


;----- PSMC2STR0 Bits -----------------------------------------------------
P2STRA           .EQ  $0000
P2STRB           .EQ  $0001


;----- PSMC2STR1 Bits -----------------------------------------------------
P2HSMEN          .EQ  $0000
P2LSMEN          .EQ  $0001
P2SSYNC          .EQ  $0007


;----- PSMC3CON Bits -----------------------------------------------------
P3DBRE           .EQ  $0004
P3DBFE           .EQ  $0005
PSMC3LD          .EQ  $0006
PSMC3EN          .EQ  $0007

P3MODE0          .EQ  $0000
P3MODE1          .EQ  $0001
P3MODE2          .EQ  $0002
P3MODE3          .EQ  $0003


;----- PSMC3MDL Bits -----------------------------------------------------
P3MDLBIT         .EQ  $0005
P3MDLPOL         .EQ  $0006
P3MDLEN          .EQ  $0007

P3MSRC0          .EQ  $0000
P3MSRC1          .EQ  $0001
P3MSRC2          .EQ  $0002
P3MSRC3          .EQ  $0003


;----- PSMC3SYNC Bits -----------------------------------------------------
P3SYNC0          .EQ  $0000
P3SYNC1          .EQ  $0001
P3SYNC2          .EQ  $0002
P3DCPOL          .EQ  $0005
P3PRPOL          .EQ  $0006
P3POFST          .EQ  $0007


;----- PSMC3CLK Bits -----------------------------------------------------
P3CSRC0          .EQ  $0000
P3CSRC1          .EQ  $0001
P3CPRE0          .EQ  $0004
P3CPRE1          .EQ  $0005



;----- PSMC3OEN Bits -----------------------------------------------------
P3OEA            .EQ  $0000
P3OEB            .EQ  $0001
P3OEC            .EQ  $0002
P3OED            .EQ  $0003
P3OEE            .EQ  $0004
P3OEF            .EQ  $0005


;----- PSMC3POL Bits -----------------------------------------------------
P3POLA           .EQ  $0000
P3POLB           .EQ  $0001
P3POLC           .EQ  $0002
P3POLD           .EQ  $0003
P3POLE           .EQ  $0004
P3POLF           .EQ  $0005
P3INPOL          .EQ  $0006


;----- PSMC3BLNK Bits -----------------------------------------------------
P3REBM0          .EQ  $0000
P3REBM1          .EQ  $0001
P3FEBM0          .EQ  $0004
P3FEBM1          .EQ  $0005


;----- PSMC3REBS Bits -----------------------------------------------------
P3REBSC1         .EQ  $0001
P3REBSC2         .EQ  $0002
P3REBSC3         .EQ  $0003
P3REBSC4         .EQ  $0004
P3REBSIN         .EQ  $0007


;----- PSMC3FEBS Bits -----------------------------------------------------
P3FEBSC1         .EQ  $0001
P3FEBSC2         .EQ  $0002
P3FEBSC3         .EQ  $0003
P3FEBSC4         .EQ  $0004
P3FEBSIN         .EQ  $0007


;----- PSMC3PHS Bits -----------------------------------------------------
P3PHST           .EQ  $0000
P3PHSC1          .EQ  $0001
P3PHSC2          .EQ  $0002
P3PHSC3          .EQ  $0003
P3PHSC4          .EQ  $0004
P3PHSIN          .EQ  $0007


;----- PSMC3DCS Bits -----------------------------------------------------
P3DCST           .EQ  $0000
P3DCSC1          .EQ  $0001
P3DCSC2          .EQ  $0002
P3DCSC3          .EQ  $0003
P3DCSC4          .EQ  $0004
P3DCSIN          .EQ  $0007


;----- PSMC3PRS Bits -----------------------------------------------------
P3PRST           .EQ  $0000
P3PRSC1          .EQ  $0001
P3PRSC2          .EQ  $0002
P3PRSC3          .EQ  $0003
P3PRSC4          .EQ  $0004
P3PRSIN          .EQ  $0007


;----- PSMC3ASDC Bits -----------------------------------------------------
P3ASDOV          .EQ  $0000
P3ARSEN          .EQ  $0005
P3ASDEN          .EQ  $0006
P3ASE            .EQ  $0007


;----- PSMC3ASDL Bits -----------------------------------------------------
P3ASDLA          .EQ  $0000
P3ASDLB          .EQ  $0001
P3ASDLC          .EQ  $0002
P3ASDLD          .EQ  $0003
P3ASDLE          .EQ  $0004
P3ASDLF          .EQ  $0005


;----- PSMC3ASDS Bits -----------------------------------------------------
P3ASDSC1         .EQ  $0001
P3ASDSC2         .EQ  $0002
P3ASDSC3         .EQ  $0003
P3ASDSC4         .EQ  $0004
P3ASDSIN         .EQ  $0007


;----- PSMC3INT Bits -----------------------------------------------------
P3TPRIF          .EQ  $0000
P3TDCIF          .EQ  $0001
P3TPHIF          .EQ  $0002
P3TOVIF          .EQ  $0003
P3TPRIE          .EQ  $0004
P3TDCIE          .EQ  $0005
P3TPHIE          .EQ  $0006
P3TOVIE          .EQ  $0007


;----- PSMC3PHL Bits -----------------------------------------------------
PSMC3PH0         .EQ  $0000
PSMC3PH1         .EQ  $0001
PSMC3PH2         .EQ  $0002
PSMC3PH3         .EQ  $0003
PSMC3PH4         .EQ  $0004
PSMC3PH5         .EQ  $0005
PSMC3PH6         .EQ  $0006
PSMC3PH7         .EQ  $0007


;----- PSMC3PHH Bits -----------------------------------------------------
PSMC3PH8         .EQ  $0000
PSMC3PH9         .EQ  $0001
PSMC3PH10        .EQ  $0002
PSMC3PH11        .EQ  $0003
PSMC3PH12        .EQ  $0004
PSMC3PH13        .EQ  $0005
PSMC3PH14        .EQ  $0006
PSMC3PH15        .EQ  $0007


;----- PSMC3DCL Bits -----------------------------------------------------
PSMC3DC0         .EQ  $0000
PSMC3DC1         .EQ  $0001
PSMC3DC2         .EQ  $0002
PSMC3DC3         .EQ  $0003
PSMC3DC4         .EQ  $0004
PSMC3DC5         .EQ  $0005
PSMC3DC6         .EQ  $0006
PSMC3DC7         .EQ  $0007


;----- PSMC3DCH Bits -----------------------------------------------------
PSMC3DC8         .EQ  $0000
PSMC3DC9         .EQ  $0001
PSMC3DC10        .EQ  $0002
PSMC3DC11        .EQ  $0003
PSMC3DC12        .EQ  $0004
PSMC3DC13        .EQ  $0005
PSMC3DC14        .EQ  $0006
PSMC3DC15        .EQ  $0007


;----- PSMC3PRL Bits -----------------------------------------------------
PSMC3PR0         .EQ  $0000
PSMC3PR1         .EQ  $0001
PSMC3PR2         .EQ  $0002
PSMC3PR3         .EQ  $0003
PSMC3PR4         .EQ  $0004
PSMC3PR5         .EQ  $0005
PSMC3PR6         .EQ  $0006
PSMC3PR7         .EQ  $0007


;----- PSMC3PRH Bits -----------------------------------------------------
PSMC3PR8         .EQ  $0000
PSMC3PR9         .EQ  $0001
PSMC3PR10        .EQ  $0002
PSMC3PR11        .EQ  $0003
PSMC3PR12        .EQ  $0004
PSMC3PR13        .EQ  $0005
PSMC3PR14        .EQ  $0006
PSMC3PR15        .EQ  $0007


;----- PSMC3TMRL Bits -----------------------------------------------------
PSMC3TMR0        .EQ  $0000
PSMC3TMR1        .EQ  $0001
PSMC3TMR2        .EQ  $0002
PSMC3TMR3        .EQ  $0003
PSMC3TMR4        .EQ  $0004
PSMC3TMR5        .EQ  $0005
PSMC3TMR6        .EQ  $0006
PSMC3TMR7        .EQ  $0007


;----- PSMC3TMRH Bits -----------------------------------------------------
PSMC3TMR8        .EQ  $0000
PSMC3TMR9        .EQ  $0001
PSMC3TMR10       .EQ  $0002
PSMC3TMR11       .EQ  $0003
PSMC3TMR12       .EQ  $0004
PSMC3TMR13       .EQ  $0005
PSMC3TMR14       .EQ  $0006
PSMC3TMR15       .EQ  $0007


;----- PSMC3DBR Bits -----------------------------------------------------
PSMC3DBR0        .EQ  $0000
PSMC3DBR1        .EQ  $0001
PSMC3DBR2        .EQ  $0002
PSMC3DBR3        .EQ  $0003
PSMC3DBR4        .EQ  $0004
PSMC3DBR5        .EQ  $0005
PSMC3DBR6        .EQ  $0006
PSMC3DBR7        .EQ  $0007


;----- PSMC3DBF Bits -----------------------------------------------------
PSMC3DBF0        .EQ  $0000
PSMC3DBF1        .EQ  $0001
PSMC3DBF2        .EQ  $0002
PSMC3DBF3        .EQ  $0003
PSMC3DBF4        .EQ  $0004
PSMC3DBF5        .EQ  $0005
PSMC3DBF6        .EQ  $0006
PSMC3DBF7        .EQ  $0007


;----- PSMC3BLKR Bits -----------------------------------------------------
PSMC3BLKR0       .EQ  $0000
PSMC3BLKR1       .EQ  $0001
PSMC3BLKR2       .EQ  $0002
PSMC3BLKR3       .EQ  $0003
PSMC3BLKR4       .EQ  $0004
PSMC3BLKR5       .EQ  $0005
PSMC3BLKR6       .EQ  $0006
PSMC3BLKR7       .EQ  $0007


;----- PSMC3BLKF Bits -----------------------------------------------------
PSMC3BLKF0       .EQ  $0000
PSMC3BLKF1       .EQ  $0001
PSMC3BLKF2       .EQ  $0002
PSMC3BLKF3       .EQ  $0003
PSMC3BLKF4       .EQ  $0004
PSMC3BLKF5       .EQ  $0005
PSMC3BLKF6       .EQ  $0006
PSMC3BLKF7       .EQ  $0007


;----- PSMC3FFA Bits -----------------------------------------------------
PSMC3FFA0        .EQ  $0000
PSMC3FFA1        .EQ  $0001
PSMC3FFA2        .EQ  $0002
PSMC3FFA3        .EQ  $0003


;----- PSMC3STR0 Bits -----------------------------------------------------
P3STRA           .EQ  $0000
P3STRB           .EQ  $0001
P3STRC           .EQ  $0002
P3STRD           .EQ  $0003
P3STRE           .EQ  $0004
P3STRF           .EQ  $0005


;----- PSMC3STR1 Bits -----------------------------------------------------
P3HSMEN          .EQ  $0000
P3LSMEN          .EQ  $0001
P3SSYNC          .EQ  $0007


;----- PSMC4CON Bits -----------------------------------------------------
P4DBRE           .EQ  $0004
P4DBFE           .EQ  $0005
PSMC4LD          .EQ  $0006
PSMC4EN          .EQ  $0007

P4MODE0          .EQ  $0000
P4MODE1          .EQ  $0001
P4MODE2          .EQ  $0002
P4MODE3          .EQ  $0003


;----- PSMC4MDL Bits -----------------------------------------------------
P4MDLBIT         .EQ  $0005
P4MDLPOL         .EQ  $0006
P4MDLEN          .EQ  $0007

P4MSRC0          .EQ  $0000
P4MSRC1          .EQ  $0001
P4MSRC2          .EQ  $0002
P4MSRC3          .EQ  $0003


;----- PSMC4SYNC Bits -----------------------------------------------------
P4SYNC0          .EQ  $0000
P4SYNC1          .EQ  $0001
P4SYNC2          .EQ  $0002
P4DCPOL          .EQ  $0005
P4PRPOL          .EQ  $0006
P4POFST          .EQ  $0007


;----- PSMC4CLK Bits -----------------------------------------------------
P4CSRC0          .EQ  $0000
P4CSRC1          .EQ  $0001
P4CPRE0          .EQ  $0004
P4CPRE1          .EQ  $0005



;----- PSMC4OEN Bits -----------------------------------------------------
P4OEA            .EQ  $0000
P4OEB            .EQ  $0001


;----- PSMC4POL Bits -----------------------------------------------------
P4POLA           .EQ  $0000
P4POLB           .EQ  $0001
P4INPOL          .EQ  $0006


;----- PSMC4BLNK Bits -----------------------------------------------------
P4REBM0          .EQ  $0000
P4REBM1          .EQ  $0001
P4FEBM0          .EQ  $0004
P4FEBM1          .EQ  $0005


;----- PSMC4REBS Bits -----------------------------------------------------
P4REBSC1         .EQ  $0001
P4REBSC2         .EQ  $0002
P4REBSC3         .EQ  $0003
P4REBSC4         .EQ  $0004
P4REBSIN         .EQ  $0007


;----- PSMC4FEBS Bits -----------------------------------------------------
P4FEBSC1         .EQ  $0001
P4FEBSC2         .EQ  $0002
P4FEBSC3         .EQ  $0003
P4FEBSC4         .EQ  $0004
P4FEBSIN         .EQ  $0007


;----- PSMC4PHS Bits -----------------------------------------------------
P4PHST           .EQ  $0000
P4PHSC1          .EQ  $0001
P4PHSC2          .EQ  $0002
P4PHSC3          .EQ  $0003
P4PHSC4          .EQ  $0004
P4PHSIN          .EQ  $0007


;----- PSMC4DCS Bits -----------------------------------------------------
P4DCST           .EQ  $0000
P4DCSC1          .EQ  $0001
P4DCSC2          .EQ  $0002
P4DCSC3          .EQ  $0003
P4DCSC4          .EQ  $0004
P4DCSIN          .EQ  $0007


;----- PSMC4PRS Bits -----------------------------------------------------
P4PRST           .EQ  $0000
P4PRSC1          .EQ  $0001
P4PRSC2          .EQ  $0002
P4PRSC3          .EQ  $0003
P4PRSC4          .EQ  $0004
P4PRSIN          .EQ  $0007


;----- PSMC4ASDC Bits -----------------------------------------------------
P4ASDOV          .EQ  $0000
P4ARSEN          .EQ  $0005
P4ASDEN          .EQ  $0006
P4ASE            .EQ  $0007


;----- PSMC4ASDL Bits -----------------------------------------------------
P4ASDLA          .EQ  $0000
P4ASDLB          .EQ  $0001


;----- PSMC4ASDS Bits -----------------------------------------------------
P4ASDSC1         .EQ  $0001
P4ASDSC2         .EQ  $0002
P4ASDSC3         .EQ  $0003
P4ASDSC4         .EQ  $0004
P4ASDSIN         .EQ  $0007


;----- PSMC4INT Bits -----------------------------------------------------
P4TPRIF          .EQ  $0000
P4TDCIF          .EQ  $0001
P4TPHIF          .EQ  $0002
P4TOVIF          .EQ  $0003
P4TPRIE          .EQ  $0004
P4TDCIE          .EQ  $0005
P4TPHIE          .EQ  $0006
P4TOVIE          .EQ  $0007


;----- PSMC4PHL Bits -----------------------------------------------------
PSMC4PH0         .EQ  $0000
PSMC4PH1         .EQ  $0001
PSMC4PH2         .EQ  $0002
PSMC4PH3         .EQ  $0003
PSMC4PH4         .EQ  $0004
PSMC4PH5         .EQ  $0005
PSMC4PH6         .EQ  $0006
PSMC4PH7         .EQ  $0007


;----- PSMC4PHH Bits -----------------------------------------------------
PSMC4PH8         .EQ  $0000
PSMC4PH9         .EQ  $0001
PSMC4PH10        .EQ  $0002
PSMC4PH11        .EQ  $0003
PSMC4PH12        .EQ  $0004
PSMC4PH13        .EQ  $0005
PSMC4PH14        .EQ  $0006
PSMC4PH15        .EQ  $0007


;----- PSMC4DCL Bits -----------------------------------------------------
PSMC4DC0         .EQ  $0000
PSMC4DC1         .EQ  $0001
PSMC4DC2         .EQ  $0002
PSMC4DC3         .EQ  $0003
PSMC4DC4         .EQ  $0004
PSMC4DC5         .EQ  $0005
PSMC4DC6         .EQ  $0006
PSMC4DC7         .EQ  $0007


;----- PSMC4DCH Bits -----------------------------------------------------
PSMC4DC8         .EQ  $0000
PSMC4DC9         .EQ  $0001
PSMC4DC10        .EQ  $0002
PSMC4DC11        .EQ  $0003
PSMC4DC12        .EQ  $0004
PSMC4DC13        .EQ  $0005
PSMC4DC14        .EQ  $0006
PSMC4DC15        .EQ  $0007


;----- PSMC4PRL Bits -----------------------------------------------------
PSMC4PR0         .EQ  $0000
PSMC4PR1         .EQ  $0001
PSMC4PR2         .EQ  $0002
PSMC4PR3         .EQ  $0003
PSMC4PR4         .EQ  $0004
PSMC4PR5         .EQ  $0005
PSMC4PR6         .EQ  $0006
PSMC4PR7         .EQ  $0007


;----- PSMC4PRH Bits -----------------------------------------------------
PSMC4PR8         .EQ  $0000
PSMC4PR9         .EQ  $0001
PSMC4PR10        .EQ  $0002
PSMC4PR11        .EQ  $0003
PSMC4PR12        .EQ  $0004
PSMC4PR13        .EQ  $0005
PSMC4PR14        .EQ  $0006
PSMC4PR15        .EQ  $0007


;----- PSMC4TMRL Bits -----------------------------------------------------
PSMC4TMR0        .EQ  $0000
PSMC4TMR1        .EQ  $0001
PSMC4TMR2        .EQ  $0002
PSMC4TMR3        .EQ  $0003
PSMC4TMR4        .EQ  $0004
PSMC4TMR5        .EQ  $0005
PSMC4TMR6        .EQ  $0006
PSMC4TMR7        .EQ  $0007


;----- PSMC4TMRH Bits -----------------------------------------------------
PSMC4TMR8        .EQ  $0000
PSMC4TMR9        .EQ  $0001
PSMC4TMR10       .EQ  $0002
PSMC4TMR11       .EQ  $0003
PSMC4TMR12       .EQ  $0004
PSMC4TMR13       .EQ  $0005
PSMC4TMR14       .EQ  $0006
PSMC4TMR15       .EQ  $0007


;----- PSMC4DBR Bits -----------------------------------------------------
PSMC4DBR0        .EQ  $0000
PSMC4DBR1        .EQ  $0001
PSMC4DBR2        .EQ  $0002
PSMC4DBR3        .EQ  $0003
PSMC4DBR4        .EQ  $0004
PSMC4DBR5        .EQ  $0005
PSMC4DBR6        .EQ  $0006
PSMC4DBR7        .EQ  $0007


;----- PSMC4DBF Bits -----------------------------------------------------
PSMC4DBF0        .EQ  $0000
PSMC4DBF1        .EQ  $0001
PSMC4DBF2        .EQ  $0002
PSMC4DBF3        .EQ  $0003
PSMC4DBF4        .EQ  $0004
PSMC4DBF5        .EQ  $0005
PSMC4DBF6        .EQ  $0006
PSMC4DBF7        .EQ  $0007


;----- PSMC4BLKR Bits -----------------------------------------------------
PSMC4BLKR0       .EQ  $0000
PSMC4BLKR1       .EQ  $0001
PSMC4BLKR2       .EQ  $0002
PSMC4BLKR3       .EQ  $0003
PSMC4BLKR4       .EQ  $0004
PSMC4BLKR5       .EQ  $0005
PSMC4BLKR6       .EQ  $0006
PSMC4BLKR7       .EQ  $0007


;----- PSMC4BLKF Bits -----------------------------------------------------
PSMC4BLKF0       .EQ  $0000
PSMC4BLKF1       .EQ  $0001
PSMC4BLKF2       .EQ  $0002
PSMC4BLKF3       .EQ  $0003
PSMC4BLKF4       .EQ  $0004
PSMC4BLKF5       .EQ  $0005
PSMC4BLKF6       .EQ  $0006
PSMC4BLKF7       .EQ  $0007


;----- PSMC4FFA Bits -----------------------------------------------------
PSMC4FFA0        .EQ  $0000
PSMC4FFA1        .EQ  $0001
PSMC4FFA2        .EQ  $0002
PSMC4FFA3        .EQ  $0003


;----- PSMC4STR0 Bits -----------------------------------------------------
P4STRA           .EQ  $0000
P4STRB           .EQ  $0001


;----- PSMC4STR1 Bits -----------------------------------------------------
P4HSMEN          .EQ  $0000
P4LSMEN          .EQ  $0001
P4SSYNC          .EQ  $0007


;----- STATUS_SHAD Bits -----------------------------------------------------
C_SHAD           .EQ  $0000
DC_SHAD          .EQ  $0001
Z_SHAD           .EQ  $0002



;==========================================================================
;
;       RAM Definitions
;
;==========================================================================

_MAXRAM          .EQ  $0FFF

;==========================================================================
;
;       Configuration Bits
;
;   NAME            Address
;   CONFIG1           8007h
;   CONFIG2           8008h
;
;==========================================================================

; The following is an assignment of address values for all of the
; configuration registers for the purpose of table reads
_CONFIG1        .EQ  $8007
_CONFIG2        .EQ  $8008

;----- CONFIG1 Options --------------------------------------------------
_FOSC_LP             .EQ  $3FF8  LP Oscillator, Low-power crystal connected between OSC1 and OSC2 pins
_FOSC_XT             .EQ  $3FF9  XT Oscillator, Crystal/resonator connected between OSC1 and OSC2 pins
_FOSC_HS             .EQ  $3FFA  HS Oscillator, High-speed crystal/resonator connected between OSC1 and OSC2 pins
_FOSC_EXTRC          .EQ  $3FFB  EXTRC oscillator: External RC circuit connected to CLKIN pin
_FOSC_INTOSC         .EQ  $3FFC  INTOSC oscillator: I/O function on CLKIN pin
_FOSC_ECL            .EQ  $3FFD  ECL, External Clock, Low Power Mode (0-0.5 MHz): device clock supplied to CLKIN pin
_FOSC_ECM            .EQ  $3FFE  ECM, External Clock, Medium Power Mode (0.5-4 MHz): device clock supplied to CLKIN pin
_FOSC_ECH            .EQ  $3FFF  ECH, External Clock, High Power Mode (4-32 MHz): device clock supplied to CLKIN pin

_WDTE_OFF            .EQ  $3FE7  WDT disabled
_WDTE_SWDTEN         .EQ  $3FEF  WDT controlled by the SWDTEN bit in the WDTCON register
_WDTE_NSLEEP         .EQ  $3FF7  WDT enabled while running and disabled in Sleep
_WDTE_ON             .EQ  $3FFF  WDT enabled

_PWRTE_ON            .EQ  $3FDF  PWRT enabled
_PWRTE_OFF           .EQ  $3FFF  PWRT disabled

_MCLRE_OFF           .EQ  $3FBF  MCLR/VPP pin function is digital input
_MCLRE_ON            .EQ  $3FFF  MCLR/VPP pin function is MCLR

_CP_ON               .EQ  $3F7F  Program memory code protection is enabled
_CP_OFF              .EQ  $3FFF  Program memory code protection is disabled

_CPD_ON              .EQ  $3EFF  Data memory code protection is enabled
_CPD_OFF             .EQ  $3FFF  Data memory code protection is disabled

_BOREN_OFF           .EQ  $39FF  Brown-out Reset disabled
_BOREN_SBODEN        .EQ  $3BFF  Brown-out Reset controlled by the SBOREN bit in the BORCON register
_BOREN_NSLEEP        .EQ  $3DFF  Brown-out Reset enabled while running and disabled in Sleep
_BOREN_ON            .EQ  $3FFF  Brown-out Reset enabled

_CLKOUTEN_ON         .EQ  $37FF  CLKOUT function is enabled on the CLKOUT pin
_CLKOUTEN_OFF        .EQ  $3FFF  CLKOUT function is disabled. I/O or oscillator function on the CLKOUT pin

_IESO_OFF            .EQ  $2FFF  Internal/External Switchover mode is disabled
_IESO_ON             .EQ  $3FFF  Internal/External Switchover mode is enabled

_FCMEN_OFF           .EQ  $1FFF  Fail-Safe Clock Monitor is disabled
_FCMEN_ON            .EQ  $3FFF  Fail-Safe Clock Monitor is enabled

;----- CONFIG2 Options --------------------------------------------------
_WRT_ALL             .EQ  $3FFC  000h to 7FFh write protected, no addresses may be modified by EECON control
_WRT_HALF            .EQ  $3FFD  000h to FFFh write protected, 1000h to 1FFFh may be modified by EECON control
_WRT_BOOT            .EQ  $3FFE  000h to 1FFh write protected, 200h to 1FFFh may be modified by EECON control
_WRT_OFF             .EQ  $3FFF  Write protection off

_VCAPEN_ON           .EQ  $3FDF  Vcap functionality is enabled on RA6 (Vddcore is connected to the pad)
_VCAPEN_OFF          .EQ  $3FFF  Vcap functionality is disabled on RA6.

_PLLEN_OFF           .EQ  $3EFF  4x PLL disabled
_PLLEN_ON            .EQ  $3FFF  4x PLL enabled

_STVREN_OFF          .EQ  $3DFF  Stack Overflow or Underflow will not cause a Reset
_STVREN_ON           .EQ  $3FFF  Stack Overflow or Underflow will cause a Reset

_BORV_HI             .EQ  $3BFF  Brown-out Reset Voltage (Vbor), high trip point selected.
_BORV_LO             .EQ  $3FFF  Brown-out Reset Voltage (Vbor), low trip point selected.

_LPBOR_ON            .EQ  $37FF  Low power brown-out is enabled
_LPBOR_OFF           .EQ  $3FFF  Low power brown-out is disabled

_LVP_OFF             .EQ  $1FFF  High-voltage on MCLR/VPP must be used for programming
_LVP_ON              .EQ  $3FFF  Low-voltage programming enabled

;----- DEVID Equates --------------------------------------------------
_DEVID1          .EQ  $8006

;----- IDLOC Equates --------------------------------------------------
_IDLOC0          .EQ  $8000
_IDLOC1          .EQ  $8001
_IDLOC2          .EQ  $8002
_IDLOC3          .EQ  $8003
