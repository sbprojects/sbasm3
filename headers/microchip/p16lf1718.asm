;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC16LF1718 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC16LF1718 microcontroller.  These names
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
PORTE            .EQ  $0010
PIR1             .EQ  $0011
PIR2             .EQ  $0012
PIR3             .EQ  $0013
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
TRISE            .EQ  $0090
PIE1             .EQ  $0091
PIE2             .EQ  $0092
PIE3             .EQ  $0093
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
CM1CON0          .EQ  $0111
CM1CON1          .EQ  $0112
CM2CON0          .EQ  $0113
CM2CON1          .EQ  $0114
CMOUT            .EQ  $0115
BORCON           .EQ  $0116
FVRCON           .EQ  $0117
DAC1CON0         .EQ  $0118
DAC1CON1         .EQ  $0119
DAC2CON0         .EQ  $011A
DAC2CON1         .EQ  $011B
DAC2REF          .EQ  $011B
ZCD1CON          .EQ  $011C

;-----Bank3------------------
ANSELA           .EQ  $018C
ANSELB           .EQ  $018D
ANSELC           .EQ  $018E
PMADR            .EQ  $0191
PMADRL           .EQ  $0191
PMADRH           .EQ  $0192
PMDAT            .EQ  $0193
PMDATL           .EQ  $0193
PMDATH           .EQ  $0194
PMCON1           .EQ  $0195
PMCON2           .EQ  $0196
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
CCPR1            .EQ  $0291
CCPR1L           .EQ  $0291
CCPR1H           .EQ  $0292
CCP1CON          .EQ  $0293
ECCP1CON         .EQ  $0293
CCPR2            .EQ  $0298
CCPR2L           .EQ  $0298
CCPR2H           .EQ  $0299
CCP2CON          .EQ  $029A
ECCP2CON         .EQ  $029A
CCPTMRS          .EQ  $029E

;-----Bank6------------------
SLRCONA          .EQ  $030C
SLRCONB          .EQ  $030D
SLRCONC          .EQ  $030E

;-----Bank7------------------
INLVLA           .EQ  $038C
INLVLB           .EQ  $038D
INLVLC           .EQ  $038E
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

;-----Bank8------------------
TMR4             .EQ  $0415
PR4              .EQ  $0416
T4CON            .EQ  $0417
TMR6             .EQ  $041C
PR6              .EQ  $041D
T6CON            .EQ  $041E

;-----Bank9------------------
NCO1ACC          .EQ  $0498
NCO1ACCL         .EQ  $0498
NCO1ACCH         .EQ  $0499
NCO1ACCU         .EQ  $049A
NCO1INC          .EQ  $049B
NCO1INCL         .EQ  $049B
NCO1INCH         .EQ  $049C
NCO1INCU         .EQ  $049D
NCO1CON          .EQ  $049E
NCO1CLK          .EQ  $049F

;-----Bank10------------------
OPA1CON          .EQ  $0511
OPA2CON          .EQ  $0515

;-----Bank12------------------
PWM3DCL          .EQ  $0617
PWM3DCH          .EQ  $0618
PWM3CON          .EQ  $0619
PWM3CON0         .EQ  $0619
PWM4DCL          .EQ  $061A
PWM4DCH          .EQ  $061B
PWM4CON          .EQ  $061C
PWM4CON0         .EQ  $061C

;-----Bank13------------------
COG1PHR          .EQ  $0691
COG1PHF          .EQ  $0692
COG1BLKR         .EQ  $0693
COG1BLKF         .EQ  $0694
COG1DBR          .EQ  $0695
COG1DBF          .EQ  $0696
COG1CON0         .EQ  $0697
COG1CON1         .EQ  $0698
COG1RIS          .EQ  $0699
COG1RSIM         .EQ  $069A
COG1FIS          .EQ  $069B
COG1FSIM         .EQ  $069C
COG1ASD0         .EQ  $069D
COG1ASD1         .EQ  $069E
COG1STR          .EQ  $069F

;-----Bank28------------------
PPSLOCK          .EQ  $0E0F
INTPPS           .EQ  $0E10
T0CKIPPS         .EQ  $0E11
T1CKIPPS         .EQ  $0E12
T1GPPS           .EQ  $0E13
CCP1PPS          .EQ  $0E14
CCP2PPS          .EQ  $0E15
COGINPPS         .EQ  $0E17
SSPCLKPPS        .EQ  $0E20
SSPDATPPS        .EQ  $0E21
SSPSSPPS         .EQ  $0E22
RXPPS            .EQ  $0E24
CKPPS            .EQ  $0E25
CLCIN0PPS        .EQ  $0E28
CLCIN1PPS        .EQ  $0E29
CLCIN2PPS        .EQ  $0E2A
CLCIN3PPS        .EQ  $0E2B

;-----Bank29------------------
RA0PPS           .EQ  $0E90
RA1PPS           .EQ  $0E91
RA2PPS           .EQ  $0E92
RA3PPS           .EQ  $0E93
RA4PPS           .EQ  $0E94
RA5PPS           .EQ  $0E95
RA6PPS           .EQ  $0E96
RA7PPS           .EQ  $0E97
RB0PPS           .EQ  $0E98
RB1PPS           .EQ  $0E99
RB2PPS           .EQ  $0E9A
RB3PPS           .EQ  $0E9B
RB4PPS           .EQ  $0E9C
RB5PPS           .EQ  $0E9D
RB6PPS           .EQ  $0E9E
RB7PPS           .EQ  $0E9F
RC0PPS           .EQ  $0EA0
RC1PPS           .EQ  $0EA1
RC2PPS           .EQ  $0EA2
RC3PPS           .EQ  $0EA3
RC4PPS           .EQ  $0EA4
RC5PPS           .EQ  $0EA5
RC6PPS           .EQ  $0EA6
RC7PPS           .EQ  $0EA7

;-----Bank30------------------
CLCDATA          .EQ  $0F0F
CLC1CON          .EQ  $0F10
CLC1POL          .EQ  $0F11
CLC1SEL0         .EQ  $0F12
CLC1SEL1         .EQ  $0F13
CLC1SEL2         .EQ  $0F14
CLC1SEL3         .EQ  $0F15
CLC1GLS0         .EQ  $0F16
CLC1GLS1         .EQ  $0F17
CLC1GLS2         .EQ  $0F18
CLC1GLS3         .EQ  $0F19
CLC2CON          .EQ  $0F1A
CLC2POL          .EQ  $0F1B
CLC2SEL0         .EQ  $0F1C
CLC2SEL1         .EQ  $0F1D
CLC2SEL2         .EQ  $0F1E
CLC2SEL3         .EQ  $0F1F
CLC2GLS0         .EQ  $0F20
CLC2GLS1         .EQ  $0F21
CLC2GLS2         .EQ  $0F22
CLC2GLS3         .EQ  $0F23
CLC3CON          .EQ  $0F24
CLC3POL          .EQ  $0F25
CLC3SEL0         .EQ  $0F26
CLC3SEL1         .EQ  $0F27
CLC3SEL2         .EQ  $0F28
CLC3SEL3         .EQ  $0F29
CLC3GLS0         .EQ  $0F2A
CLC3GLS1         .EQ  $0F2B
CLC3GLS2         .EQ  $0F2C
CLC3GLS3         .EQ  $0F2D
CLC4CON          .EQ  $0F2E
CLC4POL          .EQ  $0F2F
CLC4SEL0         .EQ  $0F30
CLC4SEL1         .EQ  $0F31
CLC4SEL2         .EQ  $0F32
CLC4SEL3         .EQ  $0F33
CLC4GLS0         .EQ  $0F34
CLC4GLS1         .EQ  $0F35
CLC4GLS2         .EQ  $0F36
CLC4GLS3         .EQ  $0F37

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


;----- PORTE Bits -----------------------------------------------------
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
TMR4IF           .EQ  $0001
TMR6IF           .EQ  $0002
BCL1IF           .EQ  $0003
C1IF             .EQ  $0005
C2IF             .EQ  $0006
OSFIF            .EQ  $0007


;----- PIR3 Bits -----------------------------------------------------
CLC1IF           .EQ  $0000
CLC2IF           .EQ  $0001
CLC3IF           .EQ  $0002
CLC4IF           .EQ  $0003
ZCDIF            .EQ  $0004
COGIF            .EQ  $0005
NCOIF            .EQ  $0006


;----- T1CON Bits -----------------------------------------------------
TMR1ON           .EQ  $0000
NOT_T1SYNC       .EQ  $0002
T1OSCEN          .EQ  $0003

T1CKPS0          .EQ  $0004
T1CKPS1          .EQ  $0005
TMR1CS0          .EQ  $0006
TMR1CS1          .EQ  $0007


;----- T1GCON Bits -----------------------------------------------------
T1GVAL           .EQ  $0002
T1GGO_NOT_DONE   .EQ  $0003
T1GSPM           .EQ  $0004
T1GTM            .EQ  $0005
T1GPOL           .EQ  $0006
TMR1GE           .EQ  $0007

T1GSS0           .EQ  $0000
T1GSS1           .EQ  $0001


;----- T2CON Bits -----------------------------------------------------
TMR2ON           .EQ  $0002

T2CKPS0          .EQ  $0000
T2CKPS1          .EQ  $0001
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


;----- TRISE Bits -----------------------------------------------------
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
TMR4IE           .EQ  $0001
TMR6IE           .EQ  $0002
BCL1IE           .EQ  $0003
C1IE             .EQ  $0005
C2IE             .EQ  $0006
OSFIE            .EQ  $0007


;----- PIE3 Bits -----------------------------------------------------
CLC1IE           .EQ  $0000
CLC2IE           .EQ  $0001
CLC3IE           .EQ  $0002
CLC4IE           .EQ  $0003
ZCDIE            .EQ  $0004
COGIE            .EQ  $0005
NCOIE            .EQ  $0006


;----- OPTION_REG Bits -----------------------------------------------------
PSA              .EQ  $0003
TMR0SE           .EQ  $0004
TMR0CS           .EQ  $0005
INTEDG           .EQ  $0006
NOT_WPUEN        .EQ  $0007

PS0              .EQ  $0000
PS1              .EQ  $0001
PS2              .EQ  $0002
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
SPLLEN           .EQ  $0007

SCS0             .EQ  $0000
SCS1             .EQ  $0001
IRCF0            .EQ  $0003
IRCF1            .EQ  $0004
IRCF2            .EQ  $0005
IRCF3            .EQ  $0006


;----- OSCSTAT Bits -----------------------------------------------------
HFIOFS           .EQ  $0000
LFIOFR           .EQ  $0001
MFIOFR           .EQ  $0002
HFIOFL           .EQ  $0003
HFIOFR           .EQ  $0004
OSTS             .EQ  $0005
PLLR             .EQ  $0006
SOSCR            .EQ  $0007


;----- ADCON0 Bits -----------------------------------------------------
ADON             .EQ  $0000
GO_NOT_DONE      .EQ  $0001

ADGO             .EQ  $0001
CHS0             .EQ  $0002
CHS1             .EQ  $0003
CHS2             .EQ  $0004
CHS3             .EQ  $0005
CHS4             .EQ  $0006

GO               .EQ  $0001


;----- ADCON1 Bits -----------------------------------------------------
ADNREF           .EQ  $0002
ADFM             .EQ  $0007

ADPREF0          .EQ  $0000
ADPREF1          .EQ  $0001


;----- ADCON2 Bits -----------------------------------------------------
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


;----- CM1CON0 Bits -----------------------------------------------------
C1SYNC           .EQ  $0000
C1HYS            .EQ  $0001
C1SP             .EQ  $0002
C1ZLF            .EQ  $0003
C1POL            .EQ  $0004
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


;----- BORCON Bits -----------------------------------------------------
BORRDY           .EQ  $0000
BORFS            .EQ  $0006
SBOREN           .EQ  $0007


;----- FVRCON Bits -----------------------------------------------------
TSRNG            .EQ  $0004
TSEN             .EQ  $0005
FVRRDY           .EQ  $0006
FVREN            .EQ  $0007

ADFVR0           .EQ  $0000
ADFVR1           .EQ  $0001
CDAFVR0          .EQ  $0002
CDAFVR1          .EQ  $0003


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


;----- DAC2CON0 Bits -----------------------------------------------------
NSS              .EQ  $0000
OE2              .EQ  $0004
OE1              .EQ  $0005
EN               .EQ  $0007

PSS0             .EQ  $0002
PSS1             .EQ  $0003

DACNSS           .EQ  $0000
DACOE2           .EQ  $0004
DACOE1           .EQ  $0005
DACEN            .EQ  $0007

DACPSS0          .EQ  $0002
DACPSS1          .EQ  $0003

DAC2NSS          .EQ  $0000
DAC2OE2          .EQ  $0004
DAC2OE1          .EQ  $0005
DAC2EN           .EQ  $0007

DAC2PSS0         .EQ  $0002
DAC2PSS1         .EQ  $0003


;----- DAC2CON1 Bits -----------------------------------------------------
DACR0            .EQ  $0000
DACR1            .EQ  $0001
DACR2            .EQ  $0002
DACR3            .EQ  $0003
DACR4            .EQ  $0004

R0               .EQ  $0000
R1               .EQ  $0001
R2               .EQ  $0002
R3               .EQ  $0003
R4               .EQ  $0004


DAC2R0           .EQ  $0000
DAC2R1           .EQ  $0001
DAC2R2           .EQ  $0002
DAC2R3           .EQ  $0003
DAC2R4           .EQ  $0004

REF0             .EQ  $0000
REF1             .EQ  $0001
REF2             .EQ  $0002
REF3             .EQ  $0003
REF4             .EQ  $0004
REF5             .EQ  $0005

DAC2REF0         .EQ  $0000
DAC2REF1         .EQ  $0001
DAC2REF2         .EQ  $0002
DAC2REF3         .EQ  $0003
DAC2REF4         .EQ  $0004
DAC2REF5         .EQ  $0005


;----- DAC2REF Bits -----------------------------------------------------
DACR0            .EQ  $0000
DACR1            .EQ  $0001
DACR2            .EQ  $0002
DACR3            .EQ  $0003
DACR4            .EQ  $0004

R0               .EQ  $0000
R1               .EQ  $0001
R2               .EQ  $0002
R3               .EQ  $0003
R4               .EQ  $0004


DAC2R0           .EQ  $0000
DAC2R1           .EQ  $0001
DAC2R2           .EQ  $0002
DAC2R3           .EQ  $0003
DAC2R4           .EQ  $0004

REF0             .EQ  $0000
REF1             .EQ  $0001
REF2             .EQ  $0002
REF3             .EQ  $0003
REF4             .EQ  $0004
REF5             .EQ  $0005

DAC2REF0         .EQ  $0000
DAC2REF1         .EQ  $0001
DAC2REF2         .EQ  $0002
DAC2REF3         .EQ  $0003
DAC2REF4         .EQ  $0004
DAC2REF5         .EQ  $0005


;----- ZCD1CON Bits -----------------------------------------------------
ZCD1INTN         .EQ  $0000
ZCD1INTP         .EQ  $0001
ZCD1POL          .EQ  $0004
ZCD1OUT          .EQ  $0005
ZCD1EN           .EQ  $0007


;----- ANSELA Bits -----------------------------------------------------
ANSA0            .EQ  $0000
ANSA1            .EQ  $0001
ANSA2            .EQ  $0002
ANSA3            .EQ  $0003
ANSA4            .EQ  $0004
ANSA5            .EQ  $0005


;----- ANSELB Bits -----------------------------------------------------
ANSB0            .EQ  $0000
ANSB1            .EQ  $0001
ANSB2            .EQ  $0002
ANSB3            .EQ  $0003
ANSB4            .EQ  $0004
ANSB5            .EQ  $0005


;----- ANSELC Bits -----------------------------------------------------
ANSC2            .EQ  $0002
ANSC3            .EQ  $0003
ANSC4            .EQ  $0004
ANSC5            .EQ  $0005
ANSC6            .EQ  $0006
ANSC7            .EQ  $0007


;----- PMCON1 Bits -----------------------------------------------------
RD               .EQ  $0000
WR               .EQ  $0001
WREN             .EQ  $0002
WRERR            .EQ  $0003
FREE             .EQ  $0004
LWLO             .EQ  $0005
CFGS             .EQ  $0006


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


;----- WPUE Bits -----------------------------------------------------
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
ODA0             .EQ  $0000
ODA1             .EQ  $0001
ODA2             .EQ  $0002
ODA3             .EQ  $0003
ODA4             .EQ  $0004
ODA5             .EQ  $0005
ODA6             .EQ  $0006
ODA7             .EQ  $0007


;----- ODCONB Bits -----------------------------------------------------
ODB0             .EQ  $0000
ODB1             .EQ  $0001
ODB2             .EQ  $0002
ODB3             .EQ  $0003
ODB4             .EQ  $0004
ODB5             .EQ  $0005
ODB6             .EQ  $0006
ODB7             .EQ  $0007


;----- ODCONC Bits -----------------------------------------------------
ODC0             .EQ  $0000
ODC1             .EQ  $0001
ODC2             .EQ  $0002
ODC3             .EQ  $0003
ODC4             .EQ  $0004
ODC5             .EQ  $0005
ODC6             .EQ  $0006
ODC7             .EQ  $0007


;----- CCP1CON Bits -----------------------------------------------------
CCP1M0           .EQ  $0000
CCP1M1           .EQ  $0001
CCP1M2           .EQ  $0002
CCP1M3           .EQ  $0003
DC1B0            .EQ  $0004
DC1B1            .EQ  $0005

CCP1Y            .EQ  $0004
CCP1X            .EQ  $0005


;----- ECCP1CON Bits -----------------------------------------------------
CCP1M0           .EQ  $0000
CCP1M1           .EQ  $0001
CCP1M2           .EQ  $0002
CCP1M3           .EQ  $0003
DC1B0            .EQ  $0004
DC1B1            .EQ  $0005

CCP1Y            .EQ  $0004
CCP1X            .EQ  $0005


;----- CCP2CON Bits -----------------------------------------------------
CCP2M0           .EQ  $0000
CCP2M1           .EQ  $0001
CCP2M2           .EQ  $0002
CCP2M3           .EQ  $0003
DC2B0            .EQ  $0004
DC2B1            .EQ  $0005

CCP2Y            .EQ  $0004
CCP2X            .EQ  $0005


;----- ECCP2CON Bits -----------------------------------------------------
CCP2M0           .EQ  $0000
CCP2M1           .EQ  $0001
CCP2M2           .EQ  $0002
CCP2M3           .EQ  $0003
DC2B0            .EQ  $0004
DC2B1            .EQ  $0005

CCP2Y            .EQ  $0004
CCP2X            .EQ  $0005


;----- CCPTMRS Bits -----------------------------------------------------
C1TSEL0          .EQ  $0000
C1TSEL1          .EQ  $0001
C2TSEL0          .EQ  $0002
C2TSEL1          .EQ  $0003
P3TSEL0          .EQ  $0004
P3TSEL1          .EQ  $0005
P4TSEL0          .EQ  $0006
P4TSEL1          .EQ  $0007


;----- SLRCONA Bits -----------------------------------------------------
SLRA0            .EQ  $0000
SLRA1            .EQ  $0001
SLRA2            .EQ  $0002
SLRA3            .EQ  $0003
SLRA4            .EQ  $0004
SLRA5            .EQ  $0005
SLRA6            .EQ  $0006
SLRA7            .EQ  $0007


;----- SLRCONB Bits -----------------------------------------------------
SLRB0            .EQ  $0000
SLRB1            .EQ  $0001
SLRB2            .EQ  $0002
SLRB3            .EQ  $0003
SLRB4            .EQ  $0004
SLRB5            .EQ  $0005
SLRB6            .EQ  $0006
SLRB7            .EQ  $0007


;----- SLRCONC Bits -----------------------------------------------------
SLRC0            .EQ  $0000
SLRC1            .EQ  $0001
SLRC2            .EQ  $0002
SLRC3            .EQ  $0003
SLRC4            .EQ  $0004
SLRC5            .EQ  $0005
SLRC6            .EQ  $0006
SLRC7            .EQ  $0007


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


;----- INLVLE Bits -----------------------------------------------------
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


;----- T4CON Bits -----------------------------------------------------
TMR4ON           .EQ  $0002

T4CKPS0          .EQ  $0000
T4CKPS1          .EQ  $0001
T4OUTPS0         .EQ  $0003
T4OUTPS1         .EQ  $0004
T4OUTPS2         .EQ  $0005
T4OUTPS3         .EQ  $0006


;----- T6CON Bits -----------------------------------------------------
TMR6ON           .EQ  $0002

T6CKPS0          .EQ  $0000
T6CKPS1          .EQ  $0001
T6OUTPS0         .EQ  $0003
T6OUTPS1         .EQ  $0004
T6OUTPS2         .EQ  $0005
T6OUTPS3         .EQ  $0006


;----- NCO1ACCL Bits -----------------------------------------------------
NCO1ACC0         .EQ  $0000
NCO1ACC1         .EQ  $0001
NCO1ACC2         .EQ  $0002
NCO1ACC3         .EQ  $0003
NCO1ACC4         .EQ  $0004
NCO1ACC5         .EQ  $0005
NCO1ACC6         .EQ  $0006
NCO1ACC7         .EQ  $0007



;----- NCO1ACCH Bits -----------------------------------------------------
NCO1ACC8         .EQ  $0000
NCO1ACC9         .EQ  $0001
NCO1ACC10        .EQ  $0002
NCO1ACC11        .EQ  $0003
NCO1ACC12        .EQ  $0004
NCO1ACC13        .EQ  $0005
NCO1ACC14        .EQ  $0006
NCO1ACC15        .EQ  $0007



;----- NCO1ACCU Bits -----------------------------------------------------
NCO1ACC16        .EQ  $0000
NCO1ACC17        .EQ  $0001
NCO1ACC18        .EQ  $0002
NCO1ACC19        .EQ  $0003



;----- NCO1INCL Bits -----------------------------------------------------
NCO1INC0         .EQ  $0000
NCO1INC1         .EQ  $0001
NCO1INC2         .EQ  $0002
NCO1INC3         .EQ  $0003
NCO1INC4         .EQ  $0004
NCO1INC5         .EQ  $0005
NCO1INC6         .EQ  $0006
NCO1INC7         .EQ  $0007



;----- NCO1INCH Bits -----------------------------------------------------
NCO1INC8         .EQ  $0000
NCO1INC9         .EQ  $0001
NCO1INC10        .EQ  $0002
NCO1INC11        .EQ  $0003
NCO1INC12        .EQ  $0004
NCO1INC13        .EQ  $0005
NCO1INC14        .EQ  $0006
NCO1INC15        .EQ  $0007



;----- NCO1INCU Bits -----------------------------------------------------
NCO1INC16        .EQ  $0000
NCO1INC17        .EQ  $0001
NCO1INC18        .EQ  $0002
NCO1INC19        .EQ  $0003



;----- NCO1CON Bits -----------------------------------------------------
N1PFM            .EQ  $0000
N1POL            .EQ  $0004
N1OUT            .EQ  $0005
N1EN             .EQ  $0007


;----- NCO1CLK Bits -----------------------------------------------------
N1CKS0           .EQ  $0000
N1CKS1           .EQ  $0001
N1PWS0           .EQ  $0005
N1PWS1           .EQ  $0006
N1PWS2           .EQ  $0007



;----- OPA1CON Bits -----------------------------------------------------
OPA1UG           .EQ  $0004
OPA1SP           .EQ  $0006
OPA1EN           .EQ  $0007

OPA1PCH0         .EQ  $0000
OPA1PCH1         .EQ  $0001


;----- OPA2CON Bits -----------------------------------------------------
OPA2UG           .EQ  $0004
OPA2SP           .EQ  $0006
OPA2EN           .EQ  $0007

OPA2PCH0         .EQ  $0000
OPA2PCH1         .EQ  $0001


;----- PWM3DCL Bits -----------------------------------------------------
PWM3DCL0         .EQ  $0006
PWM3DCL1         .EQ  $0007


;----- PWM3DCH Bits -----------------------------------------------------
PWM3DCH0         .EQ  $0000
PWM3DCH1         .EQ  $0001
PWM3DCH2         .EQ  $0002
PWM3DCH3         .EQ  $0003
PWM3DCH4         .EQ  $0004
PWM3DCH5         .EQ  $0005
PWM3DCH6         .EQ  $0006
PWM3DCH7         .EQ  $0007


;----- PWM3CON Bits -----------------------------------------------------
PWM3POL          .EQ  $0004
PWM3OUT          .EQ  $0005
PWM3EN           .EQ  $0007


;----- PWM3CON0 Bits -----------------------------------------------------
PWM3POL          .EQ  $0004
PWM3OUT          .EQ  $0005
PWM3EN           .EQ  $0007


;----- PWM4DCL Bits -----------------------------------------------------
PWM4DCL0         .EQ  $0006
PWM4DCL1         .EQ  $0007


;----- PWM4DCH Bits -----------------------------------------------------
PWM4DCH0         .EQ  $0000
PWM4DCH1         .EQ  $0001
PWM4DCH2         .EQ  $0002
PWM4DCH3         .EQ  $0003
PWM4DCH4         .EQ  $0004
PWM4DCH5         .EQ  $0005
PWM4DCH6         .EQ  $0006
PWM4DCH7         .EQ  $0007


;----- PWM4CON Bits -----------------------------------------------------
PWM4POL          .EQ  $0004
PWM4OUT          .EQ  $0005
PWM4EN           .EQ  $0007


;----- PWM4CON0 Bits -----------------------------------------------------
PWM4POL          .EQ  $0004
PWM4OUT          .EQ  $0005
PWM4EN           .EQ  $0007


;----- COG1PHR Bits -----------------------------------------------------
G1PHR0           .EQ  $0000
G1PHR1           .EQ  $0001
G1PHR2           .EQ  $0002
G1PHR3           .EQ  $0003
G1PHR4           .EQ  $0004
G1PHR5           .EQ  $0005


;----- COG1PHF Bits -----------------------------------------------------
G1PHF0           .EQ  $0000
G1PHF1           .EQ  $0001
G1PHF2           .EQ  $0002
G1PHF3           .EQ  $0003
G1PHF4           .EQ  $0004
G1PHF5           .EQ  $0005


;----- COG1BLKR Bits -----------------------------------------------------
G1BLKR0          .EQ  $0000
G1BLKR1          .EQ  $0001
G1BLKR2          .EQ  $0002
G1BLKR3          .EQ  $0003
G1BLKR4          .EQ  $0004
G1BLKR5          .EQ  $0005


;----- COG1BLKF Bits -----------------------------------------------------
G1BLKF0          .EQ  $0000
G1BLKF1          .EQ  $0001
G1BLKF2          .EQ  $0002
G1BLKF3          .EQ  $0003
G1BLKF4          .EQ  $0004
G1BLKF5          .EQ  $0005


;----- COG1DBR Bits -----------------------------------------------------
G1DBR0           .EQ  $0000
G1DBR1           .EQ  $0001
G1DBR2           .EQ  $0002
G1DBR3           .EQ  $0003
G1DBR4           .EQ  $0004
G1DBR5           .EQ  $0005


;----- COG1DBF Bits -----------------------------------------------------
G1DBF0           .EQ  $0000
G1DBF1           .EQ  $0001
G1DBF2           .EQ  $0002
G1DBF3           .EQ  $0003
G1DBF4           .EQ  $0004
G1DBF5           .EQ  $0005


;----- COG1CON0 Bits -----------------------------------------------------
G1LD             .EQ  $0006
G1EN             .EQ  $0007

G1MD0            .EQ  $0000
G1MD1            .EQ  $0001
G1MD2            .EQ  $0002
G1CS0            .EQ  $0003
G1CS1            .EQ  $0004


;----- COG1CON1 Bits -----------------------------------------------------
G1POLA           .EQ  $0000
G1POLB           .EQ  $0001
G1POLC           .EQ  $0002
G1POLD           .EQ  $0003
G1FDBS           .EQ  $0006
G1RDBS           .EQ  $0007


;----- COG1RIS Bits -----------------------------------------------------
G1RIS0           .EQ  $0000
G1RIS1           .EQ  $0001
G1RIS2           .EQ  $0002
G1RIS3           .EQ  $0003
G1RIS4           .EQ  $0004
G1RIS5           .EQ  $0005
G1RIS6           .EQ  $0006
G1RIS7           .EQ  $0007


;----- COG1RSIM Bits -----------------------------------------------------
G1RSIM0          .EQ  $0000
G1RSIM1          .EQ  $0001
G1RSIM2          .EQ  $0002
G1RSIM3          .EQ  $0003
G1RSIM4          .EQ  $0004
G1RSIM5          .EQ  $0005
G1RSIM6          .EQ  $0006
G1RSIM7          .EQ  $0007


;----- COG1FIS Bits -----------------------------------------------------
G1FIS0           .EQ  $0000
G1FIS1           .EQ  $0001
G1FIS2           .EQ  $0002
G1FIS3           .EQ  $0003
G1FIS4           .EQ  $0004
G1FIS5           .EQ  $0005
G1FIS6           .EQ  $0006
G1FIS7           .EQ  $0007


;----- COG1FSIM Bits -----------------------------------------------------
G1FSIM0          .EQ  $0000
G1FSIM1          .EQ  $0001
G1FSIM2          .EQ  $0002
G1FSIM3          .EQ  $0003
G1FSIM4          .EQ  $0004
G1FSIM5          .EQ  $0005
G1FSIM6          .EQ  $0006
G1FSIM7          .EQ  $0007


;----- COG1ASD0 Bits -----------------------------------------------------
G1ARSEN          .EQ  $0006
G1ASE            .EQ  $0007

G1ASDAC0         .EQ  $0002
G1ASDAC1         .EQ  $0003
G1ASDBD0         .EQ  $0004
G1ASDBD1         .EQ  $0005


;----- COG1ASD1 Bits -----------------------------------------------------
G1AS0E           .EQ  $0000
G1AS1E           .EQ  $0001
G1AS2E           .EQ  $0002
G1AS3E           .EQ  $0003


;----- COG1STR Bits -----------------------------------------------------
G1STRA           .EQ  $0000
G1STRB           .EQ  $0001
G1STRC           .EQ  $0002
G1STRD           .EQ  $0003
G1SDATA          .EQ  $0004
G1SDATB          .EQ  $0005
G1SDATC          .EQ  $0006
G1SDATD          .EQ  $0007


;----- PPSLOCK Bits -----------------------------------------------------
PPSLOCKED        .EQ  $0000


;----- CLCDATA Bits -----------------------------------------------------
MLC1OUT          .EQ  $0000
MLC2OUT          .EQ  $0001
MLC3OUT          .EQ  $0002
MLC4OUT          .EQ  $0003

MCLC1OUT         .EQ  $0000
MCLC2OUT         .EQ  $0001
MCLC3OUT         .EQ  $0002
MCLC4OUT         .EQ  $0003


;----- CLC1CON Bits -----------------------------------------------------
LC1INTN          .EQ  $0003
LC1INTP          .EQ  $0004
LC1OUT           .EQ  $0005
LC1EN            .EQ  $0007

LC1MODE0         .EQ  $0000
LC1MODE1         .EQ  $0001
LC1MODE2         .EQ  $0002

INTN             .EQ  $0003
INTP             .EQ  $0004
OUT              .EQ  $0005
EN               .EQ  $0007

MODE0            .EQ  $0000
MODE1            .EQ  $0001
MODE2            .EQ  $0002


;----- CLC1POL Bits -----------------------------------------------------
LC1G1POL         .EQ  $0000
LC1G2POL         .EQ  $0001
LC1G3POL         .EQ  $0002
LC1G4POL         .EQ  $0003
LC1POL           .EQ  $0007

G1POL            .EQ  $0000
G2POL            .EQ  $0001
G3POL            .EQ  $0002
G4POL            .EQ  $0003
POL              .EQ  $0007


;----- CLC1SEL0 Bits -----------------------------------------------------
LC1D1S0          .EQ  $0000
LC1D1S1          .EQ  $0001
LC1D1S2          .EQ  $0002
LC1D1S3          .EQ  $0003
LC1D1S4          .EQ  $0004



D1S0             .EQ  $0000
D1S1             .EQ  $0001
D1S2             .EQ  $0002
D1S3             .EQ  $0003
D1S4             .EQ  $0004


;----- CLC1SEL1 Bits -----------------------------------------------------
LC1D2S0          .EQ  $0000
LC1D2S1          .EQ  $0001
LC1D2S2          .EQ  $0002
LC1D2S3          .EQ  $0003
LC1D2S4          .EQ  $0004



D2S0             .EQ  $0000
D2S1             .EQ  $0001
D2S2             .EQ  $0002
D2S3             .EQ  $0003
D2S4             .EQ  $0004


;----- CLC1SEL2 Bits -----------------------------------------------------
LC1D3S0          .EQ  $0000
LC1D3S1          .EQ  $0001
LC1D3S2          .EQ  $0002
LC1D3S3          .EQ  $0003
LC1D3S4          .EQ  $0004



D3S0             .EQ  $0000
D3S1             .EQ  $0001
D3S2             .EQ  $0002
D3S3             .EQ  $0003
D3S4             .EQ  $0004


;----- CLC1SEL3 Bits -----------------------------------------------------
LC1D4S0          .EQ  $0000
LC1D4S1          .EQ  $0001
LC1D4S2          .EQ  $0002
LC1D4S3          .EQ  $0003
LC1D4S4          .EQ  $0004



D4S0             .EQ  $0000
D4S1             .EQ  $0001
D4S2             .EQ  $0002
D4S3             .EQ  $0003
D4S4             .EQ  $0004


;----- CLC1GLS0 Bits -----------------------------------------------------
LC1G1D1N         .EQ  $0000
LC1G1D1T         .EQ  $0001
LC1G1D2N         .EQ  $0002
LC1G1D2T         .EQ  $0003
LC1G1D3N         .EQ  $0004
LC1G1D3T         .EQ  $0005
LC1G1D4N         .EQ  $0006
LC1G1D4T         .EQ  $0007

D1N              .EQ  $0000
D1T              .EQ  $0001
D2N              .EQ  $0002
D2T              .EQ  $0003
D3N              .EQ  $0004
D3T              .EQ  $0005
D4N              .EQ  $0006
D4T              .EQ  $0007


;----- CLC1GLS1 Bits -----------------------------------------------------
LC1G2D1N         .EQ  $0000
LC1G2D1T         .EQ  $0001
LC1G2D2N         .EQ  $0002
LC1G2D2T         .EQ  $0003
LC1G2D3N         .EQ  $0004
LC1G2D3T         .EQ  $0005
LC1G2D4N         .EQ  $0006
LC1G2D4T         .EQ  $0007

D1N              .EQ  $0000
D1T              .EQ  $0001
D2N              .EQ  $0002
D2T              .EQ  $0003
D3N              .EQ  $0004
D3T              .EQ  $0005
D4N              .EQ  $0006
D4T              .EQ  $0007


;----- CLC1GLS2 Bits -----------------------------------------------------
LC1G3D1N         .EQ  $0000
LC1G3D1T         .EQ  $0001
LC1G3D2N         .EQ  $0002
LC1G3D2T         .EQ  $0003
LC1G3D3N         .EQ  $0004
LC1G3D3T         .EQ  $0005
LC1G3D4N         .EQ  $0006
LC1G3D4T         .EQ  $0007

D1N              .EQ  $0000
D1T              .EQ  $0001
D2N              .EQ  $0002
D2T              .EQ  $0003
D3N              .EQ  $0004
D3T              .EQ  $0005
D4N              .EQ  $0006
D4T              .EQ  $0007


;----- CLC1GLS3 Bits -----------------------------------------------------
LC1G4D1N         .EQ  $0000
LC1G4D1T         .EQ  $0001
LC1G4D2N         .EQ  $0002
LC1G4D2T         .EQ  $0003
LC1G4D3N         .EQ  $0004
LC1G4D3T         .EQ  $0005
LC1G4D4N         .EQ  $0006
LC1G4D4T         .EQ  $0007

G4D1N            .EQ  $0000
G4D1T            .EQ  $0001
G4D2N            .EQ  $0002
G4D2T            .EQ  $0003
G4D3N            .EQ  $0004
G4D3T            .EQ  $0005
G4D4N            .EQ  $0006
G4D4T            .EQ  $0007


;----- CLC2CON Bits -----------------------------------------------------
LC2INTN          .EQ  $0003
LC2INTP          .EQ  $0004
LC2OUT           .EQ  $0005
LC2EN            .EQ  $0007

LC2MODE0         .EQ  $0000
LC2MODE1         .EQ  $0001
LC2MODE2         .EQ  $0002

INTN             .EQ  $0003
INTP             .EQ  $0004
OUT              .EQ  $0005
EN               .EQ  $0007

MODE0            .EQ  $0000
MODE1            .EQ  $0001
MODE2            .EQ  $0002


;----- CLC2POL Bits -----------------------------------------------------
LC2G1POL         .EQ  $0000
LC2G2POL         .EQ  $0001
LC2G3POL         .EQ  $0002
LC2G4POL         .EQ  $0003
LC2POL           .EQ  $0007

G1POL            .EQ  $0000
G2POL            .EQ  $0001
G3POL            .EQ  $0002
G4POL            .EQ  $0003
POL              .EQ  $0007


;----- CLC2SEL0 Bits -----------------------------------------------------
LC2D1S0          .EQ  $0000
LC2D1S1          .EQ  $0001
LC2D1S2          .EQ  $0002
LC2D1S3          .EQ  $0003
LC2D1S4          .EQ  $0004



D1S0             .EQ  $0000
D1S1             .EQ  $0001
D1S2             .EQ  $0002
D1S3             .EQ  $0003
D1S4             .EQ  $0004


;----- CLC2SEL1 Bits -----------------------------------------------------
LC2D2S0          .EQ  $0000
LC2D2S1          .EQ  $0001
LC2D2S2          .EQ  $0002
LC2D2S3          .EQ  $0003
LC2D2S4          .EQ  $0004



D2S0             .EQ  $0000
D2S1             .EQ  $0001
D2S2             .EQ  $0002
D2S3             .EQ  $0003
D2S4             .EQ  $0004


;----- CLC2SEL2 Bits -----------------------------------------------------
LC2D3S0          .EQ  $0000
LC2D3S1          .EQ  $0001
LC2D3S2          .EQ  $0002
LC2D3S3          .EQ  $0003
LC2D3S4          .EQ  $0004



D3S0             .EQ  $0000
D3S1             .EQ  $0001
D3S2             .EQ  $0002
D3S3             .EQ  $0003
D3S4             .EQ  $0004


;----- CLC2SEL3 Bits -----------------------------------------------------
LC2D4S0          .EQ  $0000
LC2D4S1          .EQ  $0001
LC2D4S2          .EQ  $0002
LC2D4S3          .EQ  $0003
LC2D4S4          .EQ  $0004



D4S0             .EQ  $0000
D4S1             .EQ  $0001
D4S2             .EQ  $0002
D4S3             .EQ  $0003
D4S4             .EQ  $0004


;----- CLC2GLS0 Bits -----------------------------------------------------
LC2G1D1N         .EQ  $0000
LC2G1D1T         .EQ  $0001
LC2G1D2N         .EQ  $0002
LC2G1D2T         .EQ  $0003
LC2G1D3N         .EQ  $0004
LC2G1D3T         .EQ  $0005
LC2G1D4N         .EQ  $0006
LC2G1D4T         .EQ  $0007

D1N              .EQ  $0000
D1T              .EQ  $0001
D2N              .EQ  $0002
D2T              .EQ  $0003
D3N              .EQ  $0004
D3T              .EQ  $0005
D4N              .EQ  $0006
D4T              .EQ  $0007


;----- CLC2GLS1 Bits -----------------------------------------------------
LC2G2D1N         .EQ  $0000
LC2G2D1T         .EQ  $0001
LC2G2D2N         .EQ  $0002
LC2G2D2T         .EQ  $0003
LC2G2D3N         .EQ  $0004
LC2G2D3T         .EQ  $0005
LC2G2D4N         .EQ  $0006
LC2G2D4T         .EQ  $0007

D1N              .EQ  $0000
D1T              .EQ  $0001
D2N              .EQ  $0002
D2T              .EQ  $0003
D3N              .EQ  $0004
D3T              .EQ  $0005
D4N              .EQ  $0006
D4T              .EQ  $0007


;----- CLC2GLS2 Bits -----------------------------------------------------
LC2G3D1N         .EQ  $0000
LC2G3D1T         .EQ  $0001
LC2G3D2N         .EQ  $0002
LC2G3D2T         .EQ  $0003
LC2G3D3N         .EQ  $0004
LC2G3D3T         .EQ  $0005
LC2G3D4N         .EQ  $0006
LC2G3D4T         .EQ  $0007

D1N              .EQ  $0000
D1T              .EQ  $0001
D2N              .EQ  $0002
D2T              .EQ  $0003
D3N              .EQ  $0004
D3T              .EQ  $0005
D4N              .EQ  $0006
D4T              .EQ  $0007


;----- CLC2GLS3 Bits -----------------------------------------------------
LC2G4D1N         .EQ  $0000
LC2G4D1T         .EQ  $0001
LC2G4D2N         .EQ  $0002
LC2G4D2T         .EQ  $0003
LC2G4D3N         .EQ  $0004
LC2G4D3T         .EQ  $0005
LC2G4D4N         .EQ  $0006
LC2G4D4T         .EQ  $0007

G4D1N            .EQ  $0000
G4D1T            .EQ  $0001
G4D2N            .EQ  $0002
G4D2T            .EQ  $0003
G4D3N            .EQ  $0004
G4D3T            .EQ  $0005
G4D4N            .EQ  $0006
G4D4T            .EQ  $0007


;----- CLC3CON Bits -----------------------------------------------------
LC3INTN          .EQ  $0003
LC3INTP          .EQ  $0004
LC3OUT           .EQ  $0005
LC3EN            .EQ  $0007

LC3MODE0         .EQ  $0000
LC3MODE1         .EQ  $0001
LC3MODE2         .EQ  $0002

INTN             .EQ  $0003
INTP             .EQ  $0004
OUT              .EQ  $0005
EN               .EQ  $0007

MODE0            .EQ  $0000
MODE1            .EQ  $0001
MODE2            .EQ  $0002


;----- CLC3POL Bits -----------------------------------------------------
LC3G1POL         .EQ  $0000
LC3G2POL         .EQ  $0001
LC3G3POL         .EQ  $0002
LC3G4POL         .EQ  $0003
LC3POL           .EQ  $0007

G1POL            .EQ  $0000
G2POL            .EQ  $0001
G3POL            .EQ  $0002
G4POL            .EQ  $0003
POL              .EQ  $0007


;----- CLC3SEL0 Bits -----------------------------------------------------
LC3D1S0          .EQ  $0000
LC3D1S1          .EQ  $0001
LC3D1S2          .EQ  $0002
LC3D1S3          .EQ  $0003
LC3D1S4          .EQ  $0004



D1S0             .EQ  $0000
D1S1             .EQ  $0001
D1S2             .EQ  $0002
D1S3             .EQ  $0003
D1S4             .EQ  $0004


;----- CLC3SEL1 Bits -----------------------------------------------------
LC3D2S0          .EQ  $0000
LC3D2S1          .EQ  $0001
LC3D2S2          .EQ  $0002
LC3D2S3          .EQ  $0003
LC3D2S4          .EQ  $0004



D2S0             .EQ  $0000
D2S1             .EQ  $0001
D2S2             .EQ  $0002
D2S3             .EQ  $0003
D2S4             .EQ  $0004


;----- CLC3SEL2 Bits -----------------------------------------------------
LC3D3S0          .EQ  $0000
LC3D3S1          .EQ  $0001
LC3D3S2          .EQ  $0002
LC3D3S3          .EQ  $0003
LC3D3S4          .EQ  $0004



D3S0             .EQ  $0000
D3S1             .EQ  $0001
D3S2             .EQ  $0002
D3S3             .EQ  $0003
D3S4             .EQ  $0004


;----- CLC3SEL3 Bits -----------------------------------------------------
LC3D4S0          .EQ  $0000
LC3D4S1          .EQ  $0001
LC3D4S2          .EQ  $0002
LC3D4S3          .EQ  $0003
LC3D4S4          .EQ  $0004



D4S0             .EQ  $0000
D4S1             .EQ  $0001
D4S2             .EQ  $0002
D4S3             .EQ  $0003
D4S4             .EQ  $0004


;----- CLC3GLS0 Bits -----------------------------------------------------
LC3G1D1N         .EQ  $0000
LC3G1D1T         .EQ  $0001
LC3G1D2N         .EQ  $0002
LC3G1D2T         .EQ  $0003
LC3G1D3N         .EQ  $0004
LC3G1D3T         .EQ  $0005
LC3G1D4N         .EQ  $0006
LC3G1D4T         .EQ  $0007

D1N              .EQ  $0000
D1T              .EQ  $0001
D2N              .EQ  $0002
D2T              .EQ  $0003
D3N              .EQ  $0004
D3T              .EQ  $0005
D4N              .EQ  $0006
D4T              .EQ  $0007


;----- CLC3GLS1 Bits -----------------------------------------------------
LC3G2D1N         .EQ  $0000
LC3G2D1T         .EQ  $0001
LC3G2D2N         .EQ  $0002
LC3G2D2T         .EQ  $0003
LC3G2D3N         .EQ  $0004
LC3G2D3T         .EQ  $0005
LC3G2D4N         .EQ  $0006
LC3G2D4T         .EQ  $0007

D1N              .EQ  $0000
D1T              .EQ  $0001
D2N              .EQ  $0002
D2T              .EQ  $0003
D3N              .EQ  $0004
D3T              .EQ  $0005
D4N              .EQ  $0006
D4T              .EQ  $0007


;----- CLC3GLS2 Bits -----------------------------------------------------
LC3G3D1N         .EQ  $0000
LC3G3D1T         .EQ  $0001
LC3G3D2N         .EQ  $0002
LC3G3D2T         .EQ  $0003
LC3G3D3N         .EQ  $0004
LC3G3D3T         .EQ  $0005
LC3G3D4N         .EQ  $0006
LC3G3D4T         .EQ  $0007

D1N              .EQ  $0000
D1T              .EQ  $0001
D2N              .EQ  $0002
D2T              .EQ  $0003
D3N              .EQ  $0004
D3T              .EQ  $0005
D4N              .EQ  $0006
D4T              .EQ  $0007


;----- CLC3GLS3 Bits -----------------------------------------------------
LC3G4D1N         .EQ  $0000
LC3G4D1T         .EQ  $0001
LC3G4D2N         .EQ  $0002
LC3G4D2T         .EQ  $0003
LC3G4D3N         .EQ  $0004
LC3G4D3T         .EQ  $0005
LC3G4D4N         .EQ  $0006
LC3G4D4T         .EQ  $0007

G4D1N            .EQ  $0000
G4D1T            .EQ  $0001
G4D2N            .EQ  $0002
G4D2T            .EQ  $0003
G4D3N            .EQ  $0004
G4D3T            .EQ  $0005
G4D4N            .EQ  $0006
G4D4T            .EQ  $0007


;----- CLC4CON Bits -----------------------------------------------------
LC4INTN          .EQ  $0003
LC4INTP          .EQ  $0004
LC4OUT           .EQ  $0005
LC4EN            .EQ  $0007

LC4MODE0         .EQ  $0000
LC4MODE1         .EQ  $0001
LC4MODE2         .EQ  $0002

INTN             .EQ  $0003
INTP             .EQ  $0004
OUT              .EQ  $0005
EN               .EQ  $0007

MODE0            .EQ  $0000
MODE1            .EQ  $0001
MODE2            .EQ  $0002


;----- CLC4POL Bits -----------------------------------------------------
LC4G1POL         .EQ  $0000
LC4G2POL         .EQ  $0001
LC4G3POL         .EQ  $0002
LC4G4POL         .EQ  $0003
LC4POL           .EQ  $0007

G1POL            .EQ  $0000
G2POL            .EQ  $0001
G3POL            .EQ  $0002
G4POL            .EQ  $0003
POL              .EQ  $0007


;----- CLC4SEL0 Bits -----------------------------------------------------
LC4D1S0          .EQ  $0000
LC4D1S1          .EQ  $0001
LC4D1S2          .EQ  $0002
LC4D1S3          .EQ  $0003
LC4D1S4          .EQ  $0004



D1S0             .EQ  $0000
D1S1             .EQ  $0001
D1S2             .EQ  $0002
D1S3             .EQ  $0003
D1S4             .EQ  $0004


;----- CLC4SEL1 Bits -----------------------------------------------------
LC4D2S0          .EQ  $0000
LC4D2S1          .EQ  $0001
LC4D2S2          .EQ  $0002
LC4D2S3          .EQ  $0003
LC4D2S4          .EQ  $0004



D2S0             .EQ  $0000
D2S1             .EQ  $0001
D2S2             .EQ  $0002
D2S3             .EQ  $0003
D2S4             .EQ  $0004


;----- CLC4SEL2 Bits -----------------------------------------------------
LC4D3S0          .EQ  $0000
LC4D3S1          .EQ  $0001
LC4D3S2          .EQ  $0002
LC4D3S3          .EQ  $0003
LC4D3S4          .EQ  $0004



D3S0             .EQ  $0000
D3S1             .EQ  $0001
D3S2             .EQ  $0002
D3S3             .EQ  $0003
D3S4             .EQ  $0004


;----- CLC4SEL3 Bits -----------------------------------------------------
LC4D4S0          .EQ  $0000
LC4D4S1          .EQ  $0001
LC4D4S2          .EQ  $0002
LC4D4S3          .EQ  $0003
LC4D4S4          .EQ  $0004



D4S0             .EQ  $0000
D4S1             .EQ  $0001
D4S2             .EQ  $0002
D4S3             .EQ  $0003
D4S4             .EQ  $0004


;----- CLC4GLS0 Bits -----------------------------------------------------
LC4G1D1N         .EQ  $0000
LC4G1D1T         .EQ  $0001
LC4G1D2N         .EQ  $0002
LC4G1D2T         .EQ  $0003
LC4G1D3N         .EQ  $0004
LC4G1D3T         .EQ  $0005
LC4G1D4N         .EQ  $0006
LC4G1D4T         .EQ  $0007

D1N              .EQ  $0000
D1T              .EQ  $0001
D2N              .EQ  $0002
D2T              .EQ  $0003
D3N              .EQ  $0004
D3T              .EQ  $0005
D4N              .EQ  $0006
D4T              .EQ  $0007


;----- CLC4GLS1 Bits -----------------------------------------------------
LC4G2D1N         .EQ  $0000
LC4G2D1T         .EQ  $0001
LC4G2D2N         .EQ  $0002
LC4G2D2T         .EQ  $0003
LC4G2D3N         .EQ  $0004
LC4G2D3T         .EQ  $0005
LC4G2D4N         .EQ  $0006
LC4G2D4T         .EQ  $0007

D1N              .EQ  $0000
D1T              .EQ  $0001
D2N              .EQ  $0002
D2T              .EQ  $0003
D3N              .EQ  $0004
D3T              .EQ  $0005
D4N              .EQ  $0006
D4T              .EQ  $0007


;----- CLC4GLS2 Bits -----------------------------------------------------
LC4G3D1N         .EQ  $0000
LC4G3D1T         .EQ  $0001
LC4G3D2N         .EQ  $0002
LC4G3D2T         .EQ  $0003
LC4G3D3N         .EQ  $0004
LC4G3D3T         .EQ  $0005
LC4G3D4N         .EQ  $0006
LC4G3D4T         .EQ  $0007

D1N              .EQ  $0000
D1T              .EQ  $0001
D2N              .EQ  $0002
D2T              .EQ  $0003
D3N              .EQ  $0004
D3T              .EQ  $0005
D4N              .EQ  $0006
D4T              .EQ  $0007


;----- CLC4GLS3 Bits -----------------------------------------------------
LC4G4D1N         .EQ  $0000
LC4G4D1T         .EQ  $0001
LC4G4D2N         .EQ  $0002
LC4G4D2T         .EQ  $0003
LC4G4D3N         .EQ  $0004
LC4G4D3T         .EQ  $0005
LC4G4D4N         .EQ  $0006
LC4G4D4T         .EQ  $0007

G4D1N            .EQ  $0000
G4D1T            .EQ  $0001
G4D2N            .EQ  $0002
G4D2T            .EQ  $0003
G4D3N            .EQ  $0004
G4D3T            .EQ  $0005
G4D4N            .EQ  $0006
G4D4T            .EQ  $0007


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
_FOSC_ECL            .EQ  $3FFD  ECL, External Clock, Low Power Mode (0-0.5 MHz): device clock supplied to CLKIN pins
_FOSC_ECM            .EQ  $3FFE  ECM, External Clock, Medium Power Mode (0.5-4 MHz): device clock supplied to CLKIN pins
_FOSC_ECH            .EQ  $3FFF  ECH, External Clock, High Power Mode (4-20 MHz): device clock supplied to CLKIN pins

_WDTE_OFF            .EQ  $3FE7  WDT disabled
_WDTE_SWDTEN         .EQ  $3FEF  WDT controlled by the SWDTEN bit in the WDTCON register
_WDTE_NSLEEP         .EQ  $3FF7  WDT enabled while running and disabled in Sleep
_WDTE_ON             .EQ  $3FFF  WDT enabled

_PWRTE_ON            .EQ  $3FDF  PWRT enabled
_PWRTE_OFF           .EQ  $3FFF  PWRT disabled

_MCLRE_OFF           .EQ  $3FBF  MCLR/VPP pin function is digital input if LVP bit is also 0.
_MCLRE_ON            .EQ  $3FFF  MCLR/VPP pin function is MCLR

_CP_ON               .EQ  $3F7F  Program memory code protection is enabled
_CP_OFF              .EQ  $3FFF  Program memory code protection is disabled

_BOREN_OFF           .EQ  $39FF  Brown-out Reset disabled
_BOREN_SBODEN        .EQ  $3BFF  Brown-out Reset controlled by the SBOREN bit in the BORCON register
_BOREN_NSLEEP        .EQ  $3DFF  Brown-out Reset enabled while running and disabled in Sleep
_BOREN_ON            .EQ  $3FFF  Brown-out Reset enabled

_CLKOUTEN_ON         .EQ  $37FF  CLKOUT function is enabled on the CLKOUT pin
_CLKOUTEN_OFF        .EQ  $3FFF  CLKOUT function is disabled. I/O or oscillator function on the CLKOUT pin

_IESO_OFF            .EQ  $2FFF  Internal/External Switchover Mode is disabled
_IESO_ON             .EQ  $3FFF  Internal/External Switchover Mode is enabled

_FCMEN_OFF           .EQ  $1FFF  Fail-Safe Clock Monitor is disabled
_FCMEN_ON            .EQ  $3FFF  Fail-Safe Clock Monitor is enabled

;----- CONFIG2 Options --------------------------------------------------
_WRT_ALL             .EQ  $3FFC  0000h to 1FFFh write protected, no addresses may be modified by EECON control
_WRT_HALF            .EQ  $3FFD  0000h to 0FFFh write protected, 1000h to 1FFFh may be modified by EECON control
_WRT_BOOT            .EQ  $3FFE  0000h to 03FFh write protected, 0400h to 1FFFh may be modified by EECON control
_WRT_OFF             .EQ  $3FFF  Write protection off

_PPS1WAY_OFF         .EQ  $3FFB  The PPSLOCK bit can be set and cleared repeatedly by software
_PPS1WAY_ON          .EQ  $3FFF  The PPSLOCK bit cannot be cleared once it is set by software

_ZCDDIS_OFF          .EQ  $3F7F  Zero-cross detect circuit is always enabled.
_ZCDDIS_ON           .EQ  $3FFF  Zero-cross detect circuit is disabled at POR and can be enabled with ZCDSEN bit.

_PLLEN_OFF           .EQ  $3EFF  4x PLL is enabled when software sets the SPLLEN bit
_PLLEN_ON            .EQ  $3FFF  4x PLL is always enabled

_STVREN_OFF          .EQ  $3DFF  Stack Overflow or Underflow will not cause a Reset
_STVREN_ON           .EQ  $3FFF  Stack Overflow or Underflow will cause a Reset

_BORV_HI             .EQ  $3BFF  Brown-out Reset Voltage (Vbor), high trip point selected.
_BORV_LO             .EQ  $3FFF  Brown-out Reset Voltage (Vbor), low trip point selected.

_LPBOR_ON            .EQ  $37FF  Low-Power BOR is enabled
_LPBOR_OFF           .EQ  $3FFF  Low-Power BOR is disabled

_LVP_OFF             .EQ  $1FFF  High-voltage on MCLR/VPP must be used for programming
_LVP_ON              .EQ  $3FFF  Low-voltage programming enabled

;----- DEVID Equates --------------------------------------------------
_DEVID1          .EQ  $8006

;----- IDLOC Equates --------------------------------------------------
_IDLOC0          .EQ  $8000
_IDLOC1          .EQ  $8001
_IDLOC2          .EQ  $8002
_IDLOC3          .EQ  $8003
