;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC16F1527 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC16F1527 microcontroller.  These names
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
OSCCON           .EQ  $0099
OSCSTAT          .EQ  $009A
ADRES            .EQ  $009B
ADRESL           .EQ  $009B
ADRESH           .EQ  $009C
ADCON0           .EQ  $009D
ADCON1           .EQ  $009E

;-----Bank2------------------
LATA             .EQ  $010C
LATB             .EQ  $010D
LATC             .EQ  $010E
LATD             .EQ  $010F
LATE             .EQ  $0110
BORCON           .EQ  $0116
FVRCON           .EQ  $0117
APFCON           .EQ  $011D

;-----Bank3------------------
ANSELA           .EQ  $018C
ANSELB           .EQ  $018D
ANSELD           .EQ  $018F
ANSELE           .EQ  $0190
PMADR            .EQ  $0191
PMADRL           .EQ  $0191
PMADRH           .EQ  $0192
PMDAT            .EQ  $0193
PMDATL           .EQ  $0193
PMDATH           .EQ  $0194
PMCON1           .EQ  $0195
PMCON2           .EQ  $0196
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
SPBRGL           .EQ  $019B
SPBRGL1          .EQ  $019B
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

;-----Bank4------------------
WPUB             .EQ  $020D
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
SSP1CON1         .EQ  $0215
SSPCON           .EQ  $0215
SSPCON1          .EQ  $0215
SSP1CON2         .EQ  $0216
SSPCON2          .EQ  $0216
SSP1CON3         .EQ  $0217
SSPCON3          .EQ  $0217
SSP2BUF          .EQ  $0219
SSP2ADD          .EQ  $021A
SSP2MSK          .EQ  $021B
SSP2STAT         .EQ  $021C
SSP2CON1         .EQ  $021D
SSP2CON2         .EQ  $021E
SSP2CON3         .EQ  $021F

;-----Bank5------------------
PORTF            .EQ  $028C
PORTG            .EQ  $028D
CCPR1            .EQ  $0291
CCPR1L           .EQ  $0291
CCPR1H           .EQ  $0292
CCP1CON          .EQ  $0293
CCPR2            .EQ  $0298
CCPR2L           .EQ  $0298
CCPR2H           .EQ  $0299
CCP2CON          .EQ  $029A
CCPTMRS0         .EQ  $029D
CCPTMRS1         .EQ  $029E
CCPTMRS2         .EQ  $029F

;-----Bank6------------------
TRISF            .EQ  $030C
TRISG            .EQ  $030D
CCPR3            .EQ  $0311
CCPR3L           .EQ  $0311
CCPR3H           .EQ  $0312
CCP3CON          .EQ  $0313
CCPR4            .EQ  $0318
CCPR4L           .EQ  $0318
CCPR4H           .EQ  $0319
CCP4CON          .EQ  $031A
CCPR5            .EQ  $031C
CCPR5L           .EQ  $031C
CCPR5H           .EQ  $031D
CCP5CON          .EQ  $031E

;-----Bank7------------------
LATF             .EQ  $038C
LATG             .EQ  $038D
IOCBP            .EQ  $0394
IOCBN            .EQ  $0395
IOCBF            .EQ  $0396

;-----Bank8------------------
ANSELF           .EQ  $040C
ANSELG           .EQ  $040D
TMR3             .EQ  $0411
TMR3L            .EQ  $0411
TMR3H            .EQ  $0412
T3CON            .EQ  $0413
T3GCON           .EQ  $0414
TMR4             .EQ  $0415
PR4              .EQ  $0416
T4CON            .EQ  $0417
TMR5             .EQ  $0418
TMR5L            .EQ  $0418
TMR5H            .EQ  $0419
T5CON            .EQ  $041A
T5GCON           .EQ  $041B
TMR6             .EQ  $041C
PR6              .EQ  $041D
T6CON            .EQ  $041E

;-----Bank9------------------
WPUG             .EQ  $048D
RC2REG           .EQ  $0491
RCREG2           .EQ  $0491
TX2REG           .EQ  $0492
TXREG2           .EQ  $0492
SP2BRG           .EQ  $0493
SP2BRGL          .EQ  $0493
SPBRGL2          .EQ  $0493
SP2BRGH          .EQ  $0494
SPBRGH2          .EQ  $0494
RC2STA           .EQ  $0495
RCSTA2           .EQ  $0495
TX2STA           .EQ  $0496
TXSTA2           .EQ  $0496
BAUD2CON         .EQ  $0497
BAUDCON2         .EQ  $0497

;-----Bank11------------------
TMR8             .EQ  $0595
PR8              .EQ  $0596
T8CON            .EQ  $0597
TMR10            .EQ  $059C
PR10             .EQ  $059D
T10CON           .EQ  $059E

;-----Bank12------------------
CCPR6            .EQ  $0611
CCPR6L           .EQ  $0611
CCPR6H           .EQ  $0612
CCP6CON          .EQ  $0613
CCPR7            .EQ  $0614
CCPR7L           .EQ  $0614
CCPR7H           .EQ  $0615
CCP7CON          .EQ  $0616
CCPR8            .EQ  $0617
CCPR8L           .EQ  $0617
CCPR8H           .EQ  $0618
CCP8CON          .EQ  $0619
CCPR9            .EQ  $061A
CCPR9L           .EQ  $061A
CCPR9H           .EQ  $061B
CCP9CON          .EQ  $061C
CCPR10           .EQ  $061D
CCPR10L          .EQ  $061D
CCPR10H          .EQ  $061E
CCP10CON         .EQ  $061F

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
RE4              .EQ  $0004
RE5              .EQ  $0005
RE6              .EQ  $0006
RE7              .EQ  $0007


;----- PIR1 Bits -----------------------------------------------------
TMR1IF           .EQ  $0000
TMR2IF           .EQ  $0001
CCP1IF           .EQ  $0002
SSP1IF           .EQ  $0003
TX1IF            .EQ  $0004
RC1IF            .EQ  $0005
ADIF             .EQ  $0006
TMR1GIF          .EQ  $0007

SSPIF            .EQ  $0003
TXIF             .EQ  $0004
RCIF             .EQ  $0005


;----- PIR2 Bits -----------------------------------------------------
CCP2IF           .EQ  $0000
TMR8IF           .EQ  $0001
TMR10IF          .EQ  $0002
BCL1IF           .EQ  $0003
TMR3GIF          .EQ  $0005
TMR5GIF          .EQ  $0006
OSFIF            .EQ  $0007

BCLIF            .EQ  $0003


;----- PIR3 Bits -----------------------------------------------------
TMR3IF           .EQ  $0000
TMR4IF           .EQ  $0001
TMR5IF           .EQ  $0002
TMR6IF           .EQ  $0003
CCP3IF           .EQ  $0004
CCP4IF           .EQ  $0005
CCP5IF           .EQ  $0006
CCP6IF           .EQ  $0007


;----- PIR4 Bits -----------------------------------------------------
SSP2IF           .EQ  $0000
BCL2IF           .EQ  $0001
CCP7IF           .EQ  $0002
CCP8IF           .EQ  $0003
TX2IF            .EQ  $0004
RC2IF            .EQ  $0005
CCP9IF           .EQ  $0006
CCP10IF          .EQ  $0007


;----- T1CON Bits -----------------------------------------------------
TMR1ON           .EQ  $0000
NOT_T1SYNC       .EQ  $0002
SOSCEN           .EQ  $0003

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
TRISE4           .EQ  $0004
TRISE5           .EQ  $0005
TRISE6           .EQ  $0006
TRISE7           .EQ  $0007


;----- PIE1 Bits -----------------------------------------------------
TMR1IE           .EQ  $0000
TMR2IE           .EQ  $0001
CCP1IE           .EQ  $0002
SSP1IE           .EQ  $0003
TX1IE            .EQ  $0004
RC1IE            .EQ  $0005
ADIE             .EQ  $0006
TMR1GIE          .EQ  $0007

SSPIE            .EQ  $0003
TXIE             .EQ  $0004
RCIE             .EQ  $0005


;----- PIE2 Bits -----------------------------------------------------
CCP2IE           .EQ  $0000
TMR8IE           .EQ  $0001
TMR10IE          .EQ  $0002
BCL1IE           .EQ  $0003
TMR3GIE          .EQ  $0005
TMR5GIE          .EQ  $0006
OSFIE            .EQ  $0007

BCLIE            .EQ  $0003


;----- PIE3 Bits -----------------------------------------------------
TMR3IE           .EQ  $0000
TMR4IE           .EQ  $0001
TMR5IE           .EQ  $0002
TMR6IE           .EQ  $0003
CCP3IE           .EQ  $0004
CCP4IE           .EQ  $0005
CCP5IE           .EQ  $0006
CCP6IE           .EQ  $0007


;----- PIE4 Bits -----------------------------------------------------
SSP2IE           .EQ  $0000
BCL2IE           .EQ  $0001
CCP7IE           .EQ  $0002
CCP8IE           .EQ  $0003
TX2IE            .EQ  $0004
RC2IE            .EQ  $0005
CCP9IE           .EQ  $0006
CCP10IE          .EQ  $0007


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

T1OSCR           .EQ  $0007


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
ADCS0            .EQ  $0004
ADCS1            .EQ  $0005
ADCS2            .EQ  $0006


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
LATE3            .EQ  $0003
LATE4            .EQ  $0004
LATE5            .EQ  $0005
LATE6            .EQ  $0006
LATE7            .EQ  $0007


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


;----- APFCON Bits -----------------------------------------------------
CCP2SEL          .EQ  $0000
T3CKISEL         .EQ  $0001


;----- ANSELA Bits -----------------------------------------------------
ANSA0            .EQ  $0000
ANSA1            .EQ  $0001
ANSA2            .EQ  $0002
ANSA3            .EQ  $0003
ANSA5            .EQ  $0005



;----- ANSELB Bits -----------------------------------------------------
ANSB0            .EQ  $0000
ANSB1            .EQ  $0001
ANSB2            .EQ  $0002
ANSB3            .EQ  $0003
ANSB4            .EQ  $0004
ANSB5            .EQ  $0005



;----- ANSELD Bits -----------------------------------------------------
ANSD0            .EQ  $0000
ANSD1            .EQ  $0001
ANSD2            .EQ  $0002
ANSD3            .EQ  $0003



;----- ANSELE Bits -----------------------------------------------------
ANSE0            .EQ  $0000
ANSE1            .EQ  $0001
ANSE2            .EQ  $0002



;----- PMCON1 Bits -----------------------------------------------------
RD               .EQ  $0000
WR               .EQ  $0001
WREN             .EQ  $0002
WRERR            .EQ  $0003
FREE             .EQ  $0004
LWLO             .EQ  $0005
CFGS             .EQ  $0006


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


;----- WPUB Bits -----------------------------------------------------
WPUB0            .EQ  $0000
WPUB1            .EQ  $0001
WPUB2            .EQ  $0002
WPUB3            .EQ  $0003
WPUB4            .EQ  $0004
WPUB5            .EQ  $0005
WPUB6            .EQ  $0006
WPUB7            .EQ  $0007



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
WPUE4            .EQ  $0004
WPUE5            .EQ  $0005
WPUE6            .EQ  $0006
WPUE7            .EQ  $0007


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


;----- SSP2STAT Bits -----------------------------------------------------
BF               .EQ  $0000
UA               .EQ  $0001
R_NOT_W          .EQ  $0002
S                .EQ  $0003
P                .EQ  $0004
D_NOT_A          .EQ  $0005
CKE              .EQ  $0006
SMP              .EQ  $0007


;----- SSP2CON1 Bits -----------------------------------------------------
CKP              .EQ  $0004
SSPEN            .EQ  $0005
SSPOV            .EQ  $0006
WCOL             .EQ  $0007

SSPM0            .EQ  $0000
SSPM1            .EQ  $0001
SSPM2            .EQ  $0002
SSPM3            .EQ  $0003


;----- SSP2CON2 Bits -----------------------------------------------------
SEN              .EQ  $0000
RSEN             .EQ  $0001
PEN              .EQ  $0002
RCEN             .EQ  $0003
ACKEN            .EQ  $0004
ACKDT            .EQ  $0005
ACKSTAT          .EQ  $0006
GCEN             .EQ  $0007


;----- SSP2CON3 Bits -----------------------------------------------------
DHEN             .EQ  $0000
AHEN             .EQ  $0001
SBCDE            .EQ  $0002
SDAHT            .EQ  $0003
BOEN             .EQ  $0004
SCIE             .EQ  $0005
PCIE             .EQ  $0006
ACKTIM           .EQ  $0007


;----- PORTF Bits -----------------------------------------------------
RF0              .EQ  $0000
RF1              .EQ  $0001
RF2              .EQ  $0002
RF3              .EQ  $0003
RF4              .EQ  $0004
RF5              .EQ  $0005
RF6              .EQ  $0006
RF7              .EQ  $0007


;----- PORTG Bits -----------------------------------------------------
RG0              .EQ  $0000
RG1              .EQ  $0001
RG2              .EQ  $0002
RG3              .EQ  $0003
RG4              .EQ  $0004
RG5              .EQ  $0005


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


;----- CCPTMRS0 Bits -----------------------------------------------------
C1TSEL0          .EQ  $0000
C1TSEL1          .EQ  $0001
C2TSEL0          .EQ  $0002
C2TSEL1          .EQ  $0003
C3TSEL0          .EQ  $0004
C3TSEL1          .EQ  $0005
C4TSEL0          .EQ  $0006
C4TSEL1          .EQ  $0007


;----- CCPTMRS1 Bits -----------------------------------------------------
C5TSEL0          .EQ  $0000
C5TSEL1          .EQ  $0001
C6TSEL0          .EQ  $0002
C6TSEL1          .EQ  $0003
C7TSEL0          .EQ  $0004
C7TSEL1          .EQ  $0005
C8TSEL0          .EQ  $0006
C8TSEL1          .EQ  $0007


;----- CCPTMRS2 Bits -----------------------------------------------------
C9TSEL0          .EQ  $0000
C9TSEL1          .EQ  $0001
C10TSEL0         .EQ  $0002
C10TSEL1         .EQ  $0003


;----- TRISF Bits -----------------------------------------------------
TRISF0           .EQ  $0000
TRISF1           .EQ  $0001
TRISF2           .EQ  $0002
TRISF3           .EQ  $0003
TRISF4           .EQ  $0004
TRISF5           .EQ  $0005
TRISF6           .EQ  $0006
TRISF7           .EQ  $0007


;----- TRISG Bits -----------------------------------------------------
TRISG0           .EQ  $0000
TRISG1           .EQ  $0001
TRISG2           .EQ  $0002
TRISG3           .EQ  $0003
TRISG4           .EQ  $0004


;----- CCP3CON Bits -----------------------------------------------------
CCP3M0           .EQ  $0000
CCP3M1           .EQ  $0001
CCP3M2           .EQ  $0002
CCP3M3           .EQ  $0003
DC3B0            .EQ  $0004
DC3B1            .EQ  $0005


;----- CCP4CON Bits -----------------------------------------------------
CCP4M0           .EQ  $0000
CCP4M1           .EQ  $0001
CCP4M2           .EQ  $0002
CCP4M3           .EQ  $0003
DC4B0            .EQ  $0004
DC4B1            .EQ  $0005


;----- CCP5CON Bits -----------------------------------------------------
CCP5M0           .EQ  $0000
CCP5M1           .EQ  $0001
CCP5M2           .EQ  $0002
CCP5M3           .EQ  $0003
DC5B0            .EQ  $0004
DC5B1            .EQ  $0005


;----- LATF Bits -----------------------------------------------------
LATF0            .EQ  $0000
LATF1            .EQ  $0001
LATF2            .EQ  $0002
LATF3            .EQ  $0003
LATF4            .EQ  $0004
LATF5            .EQ  $0005
LATF6            .EQ  $0006
LATF7            .EQ  $0007


;----- LATG Bits -----------------------------------------------------
LATG0            .EQ  $0000
LATG1            .EQ  $0001
LATG2            .EQ  $0002
LATG3            .EQ  $0003
LATG4            .EQ  $0004


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



;----- ANSELF Bits -----------------------------------------------------
ANSF0            .EQ  $0000
ANSF1            .EQ  $0001
ANSF2            .EQ  $0002
ANSF3            .EQ  $0003
ANSF4            .EQ  $0004
ANSF5            .EQ  $0005
ANSF6            .EQ  $0006
ANSF7            .EQ  $0007


;----- ANSELG Bits -----------------------------------------------------
ANSG1            .EQ  $0001
ANSG2            .EQ  $0002
ANSG3            .EQ  $0003
ANSG4            .EQ  $0004


;----- T3CON Bits -----------------------------------------------------
TMR3ON           .EQ  $0000
NOT_T3SYNC       .EQ  $0002
SOSCEN           .EQ  $0003

T3OSCEN          .EQ  $0003
T3CKPS0          .EQ  $0004
T3CKPS1          .EQ  $0005
TMR3CS0          .EQ  $0006
TMR3CS1          .EQ  $0007


;----- T3GCON Bits -----------------------------------------------------
T3GVAL           .EQ  $0002
T3GGO_NOT_DONE   .EQ  $0003
T3GSPM           .EQ  $0004
T3GTM            .EQ  $0005
T3GPOL           .EQ  $0006
TMR3GE           .EQ  $0007

T3GSS0           .EQ  $0000
T3GSS1           .EQ  $0001


;----- T4CON Bits -----------------------------------------------------
TMR4ON           .EQ  $0002

T4CKPS0          .EQ  $0000
T4CKPS1          .EQ  $0001
T4OUTPS0         .EQ  $0003
T4OUTPS1         .EQ  $0004
T4OUTPS2         .EQ  $0005
T4OUTPS3         .EQ  $0006


;----- T5CON Bits -----------------------------------------------------
TMR5ON           .EQ  $0000
NOT_T5SYNC       .EQ  $0002
SOSCEN           .EQ  $0003

T5OSCEN          .EQ  $0003
T5CKPS0          .EQ  $0004
T5CKPS1          .EQ  $0005
TMR5CS0          .EQ  $0006
TMR5CS1          .EQ  $0007


;----- T5GCON Bits -----------------------------------------------------
T5GVAL           .EQ  $0002
T5GGO_NOT_DONE   .EQ  $0003
T5GSPM           .EQ  $0004
T5GTM            .EQ  $0005
T5GPOL           .EQ  $0006
TMR5GE           .EQ  $0007

T5GSS0           .EQ  $0000
T5GSS1           .EQ  $0001


;----- T6CON Bits -----------------------------------------------------
TMR6ON           .EQ  $0002

T6CKPS0          .EQ  $0000
T6CKPS1          .EQ  $0001
T6OUTPS0         .EQ  $0003
T6OUTPS1         .EQ  $0004
T6OUTPS2         .EQ  $0005
T6OUTPS3         .EQ  $0006


;----- WPUG Bits -----------------------------------------------------
WPUG5            .EQ  $0005


;----- RC2STA Bits -----------------------------------------------------
RX9D             .EQ  $0000
OERR             .EQ  $0001
FERR             .EQ  $0002
ADDEN            .EQ  $0003
CREN             .EQ  $0004
SREN             .EQ  $0005
RX9              .EQ  $0006
SPEN             .EQ  $0007


;----- RCSTA2 Bits -----------------------------------------------------
RX9D             .EQ  $0000
OERR             .EQ  $0001
FERR             .EQ  $0002
ADDEN            .EQ  $0003
CREN             .EQ  $0004
SREN             .EQ  $0005
RX9              .EQ  $0006
SPEN             .EQ  $0007


;----- TX2STA Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SENDB            .EQ  $0003
SYNC             .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007


;----- TXSTA2 Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SENDB            .EQ  $0003
SYNC             .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007


;----- BAUD2CON Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
SCKP             .EQ  $0004
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007


;----- BAUDCON2 Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
SCKP             .EQ  $0004
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007


;----- T8CON Bits -----------------------------------------------------
TMR8ON           .EQ  $0002

T8CKPS0          .EQ  $0000
T8CKPS1          .EQ  $0001
T8OUTPS0         .EQ  $0003
T8OUTPS1         .EQ  $0004
T8OUTPS2         .EQ  $0005
T8OUTPS3         .EQ  $0006


;----- T10CON Bits -----------------------------------------------------
TMR10ON          .EQ  $0002

T10CKPS0         .EQ  $0000
T10CKPS1         .EQ  $0001
T10OUTPS0        .EQ  $0003
T10OUTPS1        .EQ  $0004
T10OUTPS2        .EQ  $0005
T10OUTPS3        .EQ  $0006


;----- CCP6CON Bits -----------------------------------------------------
CCP6M0           .EQ  $0000
CCP6M1           .EQ  $0001
CCP6M2           .EQ  $0002
CCP6M3           .EQ  $0003
DC6B0            .EQ  $0004
DC6B1            .EQ  $0005


;----- CCP7CON Bits -----------------------------------------------------
CCP7M0           .EQ  $0000
CCP7M1           .EQ  $0001
CCP7M2           .EQ  $0002
CCP7M3           .EQ  $0003
DC7B0            .EQ  $0004
DC7B1            .EQ  $0005


;----- CCP8CON Bits -----------------------------------------------------
CCP8M0           .EQ  $0000
CCP8M1           .EQ  $0001
CCP8M2           .EQ  $0002
CCP8M3           .EQ  $0003
DC8B0            .EQ  $0004
DC8B1            .EQ  $0005


;----- CCP9CON Bits -----------------------------------------------------
CCP9M0           .EQ  $0000
CCP9M1           .EQ  $0001
CCP9M2           .EQ  $0002
CCP9M3           .EQ  $0003
DC9B0            .EQ  $0004
DC9B1            .EQ  $0005


;----- CCP10CON Bits -----------------------------------------------------
CCP10M0          .EQ  $0000
CCP10M1          .EQ  $0001
CCP10M2          .EQ  $0002
CCP10M3          .EQ  $0003
DC10B0           .EQ  $0004
DC10B1           .EQ  $0005


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
_FOSC_ECH            .EQ  $3FFF  ECH, External Clock, High Power Mode (4-20 MHz): device clock supplied to CLKIN pin

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

_IESO_OFF            .EQ  $2FFF  Internal/External Switchover mode is disabled
_IESO_ON             .EQ  $3FFF  Internal/External Switchover mode is enabled

_FCMEN_OFF           .EQ  $1FFF  Fail-Safe Clock Monitor is disabled
_FCMEN_ON            .EQ  $3FFF  Fail-Safe Clock Monitor is enabled

;----- CONFIG2 Options --------------------------------------------------
_WRT_ALL             .EQ  $3FFC  000h to 3FFFh write protected, no addresses may be modified by PMCON control
_WRT_HALF            .EQ  $3FFD  000h to FFFh write protected, 2000h to 3FFFh may be modified by PMCON control
_WRT_BOOT            .EQ  $3FFE  000h to 1FFh write protected, 200h to 3FFFh may be modified by PMCON control
_WRT_OFF             .EQ  $3FFF  Write protection off

_VCAPEN_ON           .EQ  $3FEF  VCAP pin function enabled
_VCAPEN_OFF          .EQ  $3FFF  VCAP pin function disabled

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
