;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC16F1509 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC16F1509 microcontroller.  These names
;  are taken to match the data sheets as closely as possible.
;==========================================================================

;==========================================================================
; 
;       Select cross overlay
;
;==========================================================================

                  .CR   pic14e
                  .MS   8192

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
PIE1             .EQ  $0091
PIE2             .EQ  $0092
PIE3             .EQ  $0093
OPTION_REG       .EQ  $0095
PCON             .EQ  $0096
WDTCON           .EQ  $0097
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
DACCON0          .EQ  $0118
DACCON1          .EQ  $0119
APFCON           .EQ  $011D

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
VREGCON          .EQ  $0197
RCREG            .EQ  $0199
TXREG            .EQ  $019A
SPBRG            .EQ  $019B
SPBRGL           .EQ  $019B
SPBRGH           .EQ  $019C
RCSTA            .EQ  $019D
TXSTA            .EQ  $019E
BAUDCON          .EQ  $019F

;-----Bank4------------------
WPUA             .EQ  $020C
WPUB             .EQ  $020D
SSP1BUF          .EQ  $0211
SSPBUF           .EQ  $0211
SSP1ADD          .EQ  $0212
SSPADD           .EQ  $0212
SSP1MSK          .EQ  $0213
SSPMSK           .EQ  $0213
SSP1STAT         .EQ  $0214
SSPSTAT          .EQ  $0214
SSP1CON1         .EQ  $0215
SSPCON           .EQ  $0215
SSPCON1          .EQ  $0215
SSP1CON2         .EQ  $0216
SSPCON2          .EQ  $0216
SSP1CON3         .EQ  $0217
SSPCON3          .EQ  $0217

;-----Bank7------------------
IOCAP            .EQ  $0391
IOCAN            .EQ  $0392
IOCAF            .EQ  $0393
IOCBP            .EQ  $0394
IOCBN            .EQ  $0395
IOCBF            .EQ  $0396

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

;-----Bank12------------------
PWM1DCL          .EQ  $0611
PWM1DCH          .EQ  $0612
PWM1CON          .EQ  $0613
PWM1CON0         .EQ  $0613
PWM2DCL          .EQ  $0614
PWM2DCH          .EQ  $0615
PWM2CON          .EQ  $0616
PWM2CON0         .EQ  $0616
PWM3DCL          .EQ  $0617
PWM3DCH          .EQ  $0618
PWM3CON          .EQ  $0619
PWM3CON0         .EQ  $0619
PWM4DCL          .EQ  $061A
PWM4DCH          .EQ  $061B
PWM4CON          .EQ  $061C
PWM4CON0         .EQ  $061C

;-----Bank13------------------
CWG1DBR          .EQ  $0691
CWG1DBF          .EQ  $0692
CWG1CON0         .EQ  $0693
CWG1CON1         .EQ  $0694
CWG1CON2         .EQ  $0695

;-----Bank30------------------
CLCDATA          .EQ  $0F0F
CLC1CON          .EQ  $0F10
CLC1POL          .EQ  $0F11
CLC1SEL0         .EQ  $0F12
CLC1SEL1         .EQ  $0F13
CLC1GLS0         .EQ  $0F14
CLC1GLS1         .EQ  $0F15
CLC1GLS2         .EQ  $0F16
CLC1GLS3         .EQ  $0F17
CLC2CON          .EQ  $0F18
CLC2POL          .EQ  $0F19
CLC2SEL0         .EQ  $0F1A
CLC2SEL1         .EQ  $0F1B
CLC2GLS0         .EQ  $0F1C
CLC2GLS1         .EQ  $0F1D
CLC2GLS2         .EQ  $0F1E
CLC2GLS3         .EQ  $0F1F
CLC3CON          .EQ  $0F20
CLC3POL          .EQ  $0F21
CLC3SEL0         .EQ  $0F22
CLC3SEL1         .EQ  $0F23
CLC3GLS0         .EQ  $0F24
CLC3GLS1         .EQ  $0F25
CLC3GLS2         .EQ  $0F26
CLC3GLS3         .EQ  $0F27
CLC4CON          .EQ  $0F28
CLC4POL          .EQ  $0F29
CLC4SEL0         .EQ  $0F2A
CLC4SEL1         .EQ  $0F2B
CLC4GLS0         .EQ  $0F2C
CLC4GLS1         .EQ  $0F2D
CLC4GLS2         .EQ  $0F2E
CLC4GLS3         .EQ  $0F2F

;-----Bank31------------------
ICDIO            .EQ  $0F8C
ICDCON0          .EQ  $0F8D
ICDSTAT          .EQ  $0F91
DEVSEL           .EQ  $0F95
ICDINSTL         .EQ  $0F96
ICDINSTH         .EQ  $0F97
ICDBK0CON        .EQ  $0F9C
ICDBK0L          .EQ  $0F9D
ICDBK0H          .EQ  $0F9E
BSRICDSHAD       .EQ  $0FE3
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


;----- PORTB Bits -----------------------------------------------------
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


;----- PIR1 Bits -----------------------------------------------------
TMR1IF           .EQ  $0000
TMR2IF           .EQ  $0001
SSP1IF           .EQ  $0003
TXIF             .EQ  $0004
RCIF             .EQ  $0005
ADIF             .EQ  $0006
TMR1GIF          .EQ  $0007


;----- PIR2 Bits -----------------------------------------------------
NCO1IF           .EQ  $0002
BCL1IF           .EQ  $0003
C1IF             .EQ  $0005
C2IF             .EQ  $0006
OSFIF            .EQ  $0007


;----- PIR3 Bits -----------------------------------------------------
CLC1IF           .EQ  $0000
CLC2IF           .EQ  $0001
CLC3IF           .EQ  $0002
CLC4IF           .EQ  $0003


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


;----- TRISB Bits -----------------------------------------------------
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


;----- PIE1 Bits -----------------------------------------------------
TMR1IE           .EQ  $0000
TMR2IE           .EQ  $0001
SSP1IE           .EQ  $0003
TXIE             .EQ  $0004
RCIE             .EQ  $0005
ADIE             .EQ  $0006
TMR1GIE          .EQ  $0007


;----- PIE2 Bits -----------------------------------------------------
NCO1IE           .EQ  $0002
BCL1IE           .EQ  $0003
C1IE             .EQ  $0005
C2IE             .EQ  $0006
OSFIE            .EQ  $0007


;----- PIE3 Bits -----------------------------------------------------
CLC1IE           .EQ  $0000
CLC2IE           .EQ  $0001
CLC3IE           .EQ  $0002
CLC4IE           .EQ  $0003


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


;----- OSCCON Bits -----------------------------------------------------
SCS0             .EQ  $0000
SCS1             .EQ  $0001
IRCF0            .EQ  $0003
IRCF1            .EQ  $0004
IRCF2            .EQ  $0005
IRCF3            .EQ  $0006


;----- OSCSTAT Bits -----------------------------------------------------
HFIOFS           .EQ  $0000
LFIOFR           .EQ  $0001
HFIOFR           .EQ  $0004
OSTS             .EQ  $0005
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
LATA4            .EQ  $0004
LATA5            .EQ  $0005


;----- LATB Bits -----------------------------------------------------
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
C1POL            .EQ  $0004
C1OE             .EQ  $0005
C1OUT            .EQ  $0006
C1ON             .EQ  $0007


;----- CM1CON1 Bits -----------------------------------------------------
C1NCH0           .EQ  $0000
C1NCH1           .EQ  $0001
C1NCH2           .EQ  $0002
C1PCH0           .EQ  $0004
C1PCH1           .EQ  $0005
C1INTN           .EQ  $0006
C1INTP           .EQ  $0007



;----- CM2CON0 Bits -----------------------------------------------------
C2SYNC           .EQ  $0000
C2HYS            .EQ  $0001
C2SP             .EQ  $0002
C2POL            .EQ  $0004
C2OE             .EQ  $0005
C2OUT            .EQ  $0006
C2ON             .EQ  $0007


;----- CM2CON1 Bits -----------------------------------------------------
C2NCH0           .EQ  $0000
C2NCH1           .EQ  $0001
C2NCH2           .EQ  $0002
C2PCH0           .EQ  $0004
C2PCH1           .EQ  $0005
C2INTN           .EQ  $0006
C2INTP           .EQ  $0007



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


;----- DACCON0 Bits -----------------------------------------------------
DACPSS           .EQ  $0002
DACOE2           .EQ  $0004
DACOE1           .EQ  $0005
DACEN            .EQ  $0007


;----- DACCON1 Bits -----------------------------------------------------
DACR0            .EQ  $0000
DACR1            .EQ  $0001
DACR2            .EQ  $0002
DACR3            .EQ  $0003
DACR4            .EQ  $0004


;----- APFCON Bits -----------------------------------------------------
NCO1SEL          .EQ  $0000
CLC1SEL          .EQ  $0001
T1GSEL           .EQ  $0003
SSSEL            .EQ  $0004

NCOSEL           .EQ  $0000


;----- ANSELA Bits -----------------------------------------------------
ANSA0            .EQ  $0000
ANSA1            .EQ  $0001
ANSA2            .EQ  $0002
ANSA4            .EQ  $0004



;----- ANSELB Bits -----------------------------------------------------
ANSB4            .EQ  $0004
ANSB5            .EQ  $0005



;----- ANSELC Bits -----------------------------------------------------
ANSC0            .EQ  $0000
ANSC1            .EQ  $0001
ANSC2            .EQ  $0002
ANSC3            .EQ  $0003
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


;----- VREGCON Bits -----------------------------------------------------
Reserved         .EQ  $0000
VREGPM           .EQ  $0001


;----- RCSTA Bits -----------------------------------------------------
RX9D             .EQ  $0000
OERR             .EQ  $0001
FERR             .EQ  $0002
ADDEN            .EQ  $0003
CREN             .EQ  $0004
SREN             .EQ  $0005
RX9              .EQ  $0006
SPEN             .EQ  $0007


;----- TXSTA Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SENDB            .EQ  $0003
SYNC             .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007


;----- BAUDCON Bits -----------------------------------------------------
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



;----- WPUB Bits -----------------------------------------------------
WPUB4            .EQ  $0004
WPUB5            .EQ  $0005
WPUB6            .EQ  $0006
WPUB7            .EQ  $0007



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


;----- SSP1CON1 Bits -----------------------------------------------------
SSPM0            .EQ  $0000
SSPM1            .EQ  $0001
SSPM2            .EQ  $0002
SSPM3            .EQ  $0003
CKP              .EQ  $0004
SSPEN            .EQ  $0005
SSPOV            .EQ  $0006
WCOL             .EQ  $0007



;----- SSPCON Bits -----------------------------------------------------
SSPM0            .EQ  $0000
SSPM1            .EQ  $0001
SSPM2            .EQ  $0002
SSPM3            .EQ  $0003
CKP              .EQ  $0004
SSPEN            .EQ  $0005
SSPOV            .EQ  $0006
WCOL             .EQ  $0007



;----- SSPCON1 Bits -----------------------------------------------------
SSPM0            .EQ  $0000
SSPM1            .EQ  $0001
SSPM2            .EQ  $0002
SSPM3            .EQ  $0003
CKP              .EQ  $0004
SSPEN            .EQ  $0005
SSPOV            .EQ  $0006
WCOL             .EQ  $0007



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


;----- IOCAP Bits -----------------------------------------------------
IOCAP0           .EQ  $0000
IOCAP1           .EQ  $0001
IOCAP2           .EQ  $0002
IOCAP3           .EQ  $0003
IOCAP4           .EQ  $0004
IOCAP5           .EQ  $0005



;----- IOCAN Bits -----------------------------------------------------
IOCAN0           .EQ  $0000
IOCAN1           .EQ  $0001
IOCAN2           .EQ  $0002
IOCAN3           .EQ  $0003
IOCAN4           .EQ  $0004
IOCAN5           .EQ  $0005



;----- IOCAF Bits -----------------------------------------------------
IOCAF0           .EQ  $0000
IOCAF1           .EQ  $0001
IOCAF2           .EQ  $0002
IOCAF3           .EQ  $0003
IOCAF4           .EQ  $0004
IOCAF5           .EQ  $0005



;----- IOCBP Bits -----------------------------------------------------
IOCBP4           .EQ  $0004
IOCBP5           .EQ  $0005
IOCBP6           .EQ  $0006
IOCBP7           .EQ  $0007



;----- IOCBN Bits -----------------------------------------------------
IOCBN4           .EQ  $0004
IOCBN5           .EQ  $0005
IOCBN6           .EQ  $0006
IOCBN7           .EQ  $0007



;----- IOCBF Bits -----------------------------------------------------
IOCBF4           .EQ  $0004
IOCBF5           .EQ  $0005
IOCBF6           .EQ  $0006
IOCBF7           .EQ  $0007



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


;----- NCO1CON Bits -----------------------------------------------------
N1PFM            .EQ  $0000
N1POL            .EQ  $0004
N1OUT            .EQ  $0005
N1OE             .EQ  $0006
N1EN             .EQ  $0007


;----- NCO1CLK Bits -----------------------------------------------------
N1CKS0           .EQ  $0000
N1CKS1           .EQ  $0001
N1PWS0           .EQ  $0005
N1PWS1           .EQ  $0006
N1PWS2           .EQ  $0007


;----- PWM1DCL Bits -----------------------------------------------------
PWM1DCL0         .EQ  $0006
PWM1DCL1         .EQ  $0007


;----- PWM1DCH Bits -----------------------------------------------------
PWM1DCH0         .EQ  $0000
PWM1DCH1         .EQ  $0001
PWM1DCH2         .EQ  $0002
PWM1DCH3         .EQ  $0003
PWM1DCH4         .EQ  $0004
PWM1DCH5         .EQ  $0005
PWM1DCH6         .EQ  $0006
PWM1DCH7         .EQ  $0007


;----- PWM1CON Bits -----------------------------------------------------
PWM1POL          .EQ  $0004
PWM1OUT          .EQ  $0005
PWM1OE           .EQ  $0006
PWM1EN           .EQ  $0007


;----- PWM1CON0 Bits -----------------------------------------------------
PWM1POL          .EQ  $0004
PWM1OUT          .EQ  $0005
PWM1OE           .EQ  $0006
PWM1EN           .EQ  $0007


;----- PWM2DCL Bits -----------------------------------------------------
PWM2DCL0         .EQ  $0006
PWM2DCL1         .EQ  $0007


;----- PWM2DCH Bits -----------------------------------------------------
PWM2DCH0         .EQ  $0000
PWM2DCH1         .EQ  $0001
PWM2DCH2         .EQ  $0002
PWM2DCH3         .EQ  $0003
PWM2DCH4         .EQ  $0004
PWM2DCH5         .EQ  $0005
PWM2DCH6         .EQ  $0006
PWM2DCH7         .EQ  $0007


;----- PWM2CON Bits -----------------------------------------------------
PWM2POL          .EQ  $0004
PWM2OUT          .EQ  $0005
PWM2OE           .EQ  $0006
PWM2EN           .EQ  $0007


;----- PWM2CON0 Bits -----------------------------------------------------
PWM2POL          .EQ  $0004
PWM2OUT          .EQ  $0005
PWM2OE           .EQ  $0006
PWM2EN           .EQ  $0007


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
PWM3OE           .EQ  $0006
PWM3EN           .EQ  $0007


;----- PWM3CON0 Bits -----------------------------------------------------
PWM3POL          .EQ  $0004
PWM3OUT          .EQ  $0005
PWM3OE           .EQ  $0006
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
PWM4OE           .EQ  $0006
PWM4EN           .EQ  $0007


;----- PWM4CON0 Bits -----------------------------------------------------
PWM4POL          .EQ  $0004
PWM4OUT          .EQ  $0005
PWM4OE           .EQ  $0006
PWM4EN           .EQ  $0007


;----- CWG1DBR Bits -----------------------------------------------------
CWG1DBR0         .EQ  $0000
CWG1DBR1         .EQ  $0001
CWG1DBR2         .EQ  $0002
CWG1DBR3         .EQ  $0003
CWG1DBR4         .EQ  $0004
CWG1DBR5         .EQ  $0005


;----- CWG1DBF Bits -----------------------------------------------------
CWG1DBF0         .EQ  $0000
CWG1DBF1         .EQ  $0001
CWG1DBF2         .EQ  $0002
CWG1DBF3         .EQ  $0003
CWG1DBF4         .EQ  $0004
CWG1DBF5         .EQ  $0005


;----- CWG1CON0 Bits -----------------------------------------------------
G1CS0            .EQ  $0000
G1POLA           .EQ  $0003
G1POLB           .EQ  $0004
G1OEA            .EQ  $0005
G1OEB            .EQ  $0006
G1EN             .EQ  $0007



;----- CWG1CON1 Bits -----------------------------------------------------
G1IS0            .EQ  $0000
G1IS1            .EQ  $0001
G1IS2            .EQ  $0002

G1ASDLA0         .EQ  $0004
G1ASDLA1         .EQ  $0005
G1ASDLB0         .EQ  $0006
G1ASDLB1         .EQ  $0007


;----- CWG1CON2 Bits -----------------------------------------------------
G1ASDSCLC2       .EQ  $0000
G1ASDSFLT        .EQ  $0001
G1ASDSC1         .EQ  $0002
G1ASDSC2         .EQ  $0003
G1ARSEN          .EQ  $0006
G1ASE            .EQ  $0007


;----- CLCDATA Bits -----------------------------------------------------
MCLC1OUT         .EQ  $0000
MCLC2OUT         .EQ  $0001
MCLC3OUT         .EQ  $0002
MCLC4OUT         .EQ  $0003


;----- CLC1CON Bits -----------------------------------------------------
LC1MODE0         .EQ  $0000
LC1MODE1         .EQ  $0001
LC1MODE2         .EQ  $0002
LC1INTN          .EQ  $0003
LC1INTP          .EQ  $0004
LC1OUT           .EQ  $0005
LC1OE            .EQ  $0006
LC1EN            .EQ  $0007

LCMODE0          .EQ  $0000
LCMODE1          .EQ  $0001
LCMODE2          .EQ  $0002
LCINTN           .EQ  $0003
LCINTP           .EQ  $0004
LCOUT            .EQ  $0005
LCOE             .EQ  $0006
LCEN             .EQ  $0007



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
LC1D2S0          .EQ  $0004
LC1D2S1          .EQ  $0005
LC1D2S2          .EQ  $0006

D1S0             .EQ  $0000
D1S1             .EQ  $0001
D1S2             .EQ  $0002
D2S0             .EQ  $0004
D2S1             .EQ  $0005
D2S2             .EQ  $0006



;----- CLC1SEL1 Bits -----------------------------------------------------
LC1D3S0          .EQ  $0000
LC1D3S1          .EQ  $0001
LC1D3S2          .EQ  $0002
LC1D4S0          .EQ  $0004
LC1D4S1          .EQ  $0005
LC1D4S2          .EQ  $0006

D3S0             .EQ  $0000
D3S1             .EQ  $0001
D3S2             .EQ  $0002
D4S0             .EQ  $0004
D4S1             .EQ  $0005
D4S2             .EQ  $0006



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
LC2MODE0         .EQ  $0000
LC2MODE1         .EQ  $0001
LC2MODE2         .EQ  $0002
LC2INTN          .EQ  $0003
LC2INTP          .EQ  $0004
LC2OUT           .EQ  $0005
LC2OE            .EQ  $0006
LC2EN            .EQ  $0007

LCMODE0          .EQ  $0000
LCMODE1          .EQ  $0001
LCMODE2          .EQ  $0002
LCINTN           .EQ  $0003
LCINTP           .EQ  $0004
LCOUT            .EQ  $0005
LCOE             .EQ  $0006
LCEN             .EQ  $0007



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
LC2D2S0          .EQ  $0004
LC2D2S1          .EQ  $0005
LC2D2S2          .EQ  $0006

D1S0             .EQ  $0000
D1S1             .EQ  $0001
D1S2             .EQ  $0002
D2S0             .EQ  $0004
D2S1             .EQ  $0005
D2S2             .EQ  $0006



;----- CLC2SEL1 Bits -----------------------------------------------------
LC2D3S0          .EQ  $0000
LC2D3S1          .EQ  $0001
LC2D3S2          .EQ  $0002
LC2D4S0          .EQ  $0004
LC2D4S1          .EQ  $0005
LC2D4S2          .EQ  $0006

D3S0             .EQ  $0000
D3S1             .EQ  $0001
D3S2             .EQ  $0002
D4S0             .EQ  $0004
D4S1             .EQ  $0005
D4S2             .EQ  $0006



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
LC3MODE0         .EQ  $0000
LC3MODE1         .EQ  $0001
LC3MODE2         .EQ  $0002
LC3INTN          .EQ  $0003
LC3INTP          .EQ  $0004
LC3OUT           .EQ  $0005
LC3OE            .EQ  $0006
LC3EN            .EQ  $0007

LCMODE0          .EQ  $0000
LCMODE1          .EQ  $0001
LCMODE2          .EQ  $0002
LCINTN           .EQ  $0003
LCINTP           .EQ  $0004
LCOUT            .EQ  $0005
LCOE             .EQ  $0006
LCEN             .EQ  $0007



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
LC3D2S0          .EQ  $0004
LC3D2S1          .EQ  $0005
LC3D2S2          .EQ  $0006

D1S0             .EQ  $0000
D1S1             .EQ  $0001
D1S2             .EQ  $0002
D2S0             .EQ  $0004
D2S1             .EQ  $0005
D2S2             .EQ  $0006



;----- CLC3SEL1 Bits -----------------------------------------------------
LC3D3S0          .EQ  $0000
LC3D3S1          .EQ  $0001
LC3D3S2          .EQ  $0002
LC3D4S0          .EQ  $0004
LC3D4S1          .EQ  $0005
LC3D4S2          .EQ  $0006

D3S0             .EQ  $0000
D3S1             .EQ  $0001
D3S2             .EQ  $0002
D4S0             .EQ  $0004
D4S1             .EQ  $0005
D4S2             .EQ  $0006



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
LC4MODE0         .EQ  $0000
LC4MODE1         .EQ  $0001
LC4MODE2         .EQ  $0002
LC4INTN          .EQ  $0003
LC4INTP          .EQ  $0004
LC4OUT           .EQ  $0005
LC4OE            .EQ  $0006
LC4EN            .EQ  $0007

LCMODE0          .EQ  $0000
LCMODE1          .EQ  $0001
LCMODE2          .EQ  $0002
LCINTN           .EQ  $0003
LCINTP           .EQ  $0004
LCOUT            .EQ  $0005
LCOE             .EQ  $0006
LCEN             .EQ  $0007



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
LC4D2S0          .EQ  $0004
LC4D2S1          .EQ  $0005
LC4D2S2          .EQ  $0006

D1S0             .EQ  $0000
D1S1             .EQ  $0001
D1S2             .EQ  $0002
D2S0             .EQ  $0004
D2S1             .EQ  $0005
D2S2             .EQ  $0006



;----- CLC4SEL1 Bits -----------------------------------------------------
LC4D3S0          .EQ  $0000
LC4D3S1          .EQ  $0001
LC4D3S2          .EQ  $0002
LC4D4S0          .EQ  $0004
LC4D4S1          .EQ  $0005
LC4D4S2          .EQ  $0006

D3S0             .EQ  $0000
D3S1             .EQ  $0001
D3S2             .EQ  $0002
D4S0             .EQ  $0004
D4S1             .EQ  $0005
D4S2             .EQ  $0006



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


;----- ICDIO Bits -----------------------------------------------------
TRIS_ICDCLK      .EQ  $0002
TRIS_ICDDAT      .EQ  $0003
LAT_ICDCLK       .EQ  $0004
LAT_ICDDAT       .EQ  $0005
PORT_ICDCLK      .EQ  $0006
PORT_ICDDAT      .EQ  $0007


;----- ICDCON0 Bits -----------------------------------------------------
RSTVEC           .EQ  $0000
DBGINEX          .EQ  $0003
SSTEP            .EQ  $0005
FREEZ            .EQ  $0006
INBUG            .EQ  $0007


;----- ICDSTAT Bits -----------------------------------------------------
USRHLTF          .EQ  $0001
TRP0HLTF         .EQ  $0006
TRP1HLTF         .EQ  $0007


;----- DEVSEL Bits -----------------------------------------------------
DEVSEL0          .EQ  $0000
DEVSEL1          .EQ  $0001
DEVSEL2          .EQ  $0002


;----- ICDINSTL Bits -----------------------------------------------------
DBGIN0           .EQ  $0000
DBGIN1           .EQ  $0001
DBGIN2           .EQ  $0002
DBGIN3           .EQ  $0003
DBGIN4           .EQ  $0004
DBGIN5           .EQ  $0005
DBGIN6           .EQ  $0006
DBGIN7           .EQ  $0007


;----- ICDINSTH Bits -----------------------------------------------------
DBGIN8           .EQ  $0000
DBGIN9           .EQ  $0001
DBGIN10          .EQ  $0002
DBGIN11          .EQ  $0003
DBGIN12          .EQ  $0004
DBGIN13          .EQ  $0005


;----- ICDBK0CON Bits -----------------------------------------------------
BKHLT            .EQ  $0000
BKEN             .EQ  $0007


;----- ICDBK0L Bits -----------------------------------------------------
BKA0             .EQ  $0000
BKA1             .EQ  $0001
BKA2             .EQ  $0002
BKA3             .EQ  $0003
BKA4             .EQ  $0004
BKA5             .EQ  $0005
BKA6             .EQ  $0006
BKA7             .EQ  $0007


;----- ICDBK0H Bits -----------------------------------------------------
BKA8             .EQ  $0000
BKA9             .EQ  $0001
BKA10            .EQ  $0002
BKA11            .EQ  $0003
BKA12            .EQ  $0004
BKA13            .EQ  $0005
BKA14            .EQ  $0006


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

_MCLRE_OFF           .EQ  $3FBF  MCLR/VPP pin function is digital input
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
_WRT_ALL             .EQ  $3FFC  000h to 1FFFh write protected, no addresses may be modified by EECON control
_WRT_HALF            .EQ  $3FFD  000h to FFFh write protected, 1000h to 1FFFh may be modified by EECON control
_WRT_BOOT            .EQ  $3FFE  000h to 1FFh write protected, 200h to 1FFFh may be modified by EECON control
_WRT_OFF             .EQ  $3FFF  Write protection off

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
