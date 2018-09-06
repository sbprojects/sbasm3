;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC16F1947 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC16F1947 microcontroller.  These names
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
CPSCON0          .EQ  $001E
CPSCON1          .EQ  $001F

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
DACCON0          .EQ  $0118
DACCON1          .EQ  $0119
SRCON0           .EQ  $011A
SRCON1           .EQ  $011B
APFCON           .EQ  $011D
CM3CON0          .EQ  $011E
CM3CON1          .EQ  $011F

;-----Bank3------------------
ANSELA           .EQ  $018C
ANSELE           .EQ  $0190
EEADR            .EQ  $0191
EEADRL           .EQ  $0191
EEADRH           .EQ  $0192
EEDAT            .EQ  $0193
EEDATL           .EQ  $0193
EEDATH           .EQ  $0194
EECON1           .EQ  $0195
EECON2           .EQ  $0196
RC1REG           .EQ  $0199
RCREG            .EQ  $0199
TX1REG           .EQ  $019A
TXREG            .EQ  $019A
SP1BRG           .EQ  $019B
SP1BRGL          .EQ  $019B
SPBRG            .EQ  $019B
SPBRGL           .EQ  $019B
SP1BRGH          .EQ  $019C
SPBRGH           .EQ  $019C
RC1STA           .EQ  $019D
RCSTA            .EQ  $019D
TX1STA           .EQ  $019E
TXSTA            .EQ  $019E
BAUD1CON         .EQ  $019F
BAUDCON          .EQ  $019F

;-----Bank4------------------
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
PWM1CON          .EQ  $0294
CCP1AS           .EQ  $0295
ECCP1AS          .EQ  $0295
PSTR1CON         .EQ  $0296
CCPR2            .EQ  $0298
CCPR2L           .EQ  $0298
CCPR2H           .EQ  $0299
CCP2CON          .EQ  $029A
PWM2CON          .EQ  $029B
CCP2AS           .EQ  $029C
ECCP2AS          .EQ  $029C
PSTR2CON         .EQ  $029D
CCPTMRS0         .EQ  $029E
CCPTMRS1         .EQ  $029F

;-----Bank6------------------
TRISF            .EQ  $030C
TRISG            .EQ  $030D
CCPR3            .EQ  $0311
CCPR3L           .EQ  $0311
CCPR3H           .EQ  $0312
CCP3CON          .EQ  $0313
PWM3CON          .EQ  $0314
CCP3AS           .EQ  $0315
ECCP3AS          .EQ  $0315
PSTR3CON         .EQ  $0316
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
TMR4             .EQ  $0415
PR4              .EQ  $0416
T4CON            .EQ  $0417
TMR6             .EQ  $041C
PR6              .EQ  $041D
T6CON            .EQ  $041E

;-----Bank9------------------
WPUG             .EQ  $048D
RC2REG           .EQ  $0491
TX2REG           .EQ  $0492
SP2BRGL          .EQ  $0493
SPBRG2           .EQ  $0493
SP2BRGH          .EQ  $0494
RC2STA           .EQ  $0495
TX2STA           .EQ  $0496
BAUD2CON         .EQ  $0497

;-----Bank15------------------
LCDCON           .EQ  $0791
LCDPS            .EQ  $0792
LCDREF           .EQ  $0793
LCDCST           .EQ  $0794
LCDRL            .EQ  $0795
LCDSE0           .EQ  $0798
LCDSE1           .EQ  $0799
LCDSE2           .EQ  $079A
LCDSE3           .EQ  $079B
LCDSE4           .EQ  $079C
LCDSE5           .EQ  $079D
LCDDATA0         .EQ  $07A0
LCDDATA1         .EQ  $07A1
LCDDATA2         .EQ  $07A2
LCDDATA3         .EQ  $07A3
LCDDATA4         .EQ  $07A4
LCDDATA5         .EQ  $07A5
LCDDATA6         .EQ  $07A6
LCDDATA7         .EQ  $07A7
LCDDATA8         .EQ  $07A8
LCDDATA9         .EQ  $07A9
LCDDATA10        .EQ  $07AA
LCDDATA11        .EQ  $07AB
LCDDATA12        .EQ  $07AC
LCDDATA13        .EQ  $07AD
LCDDATA14        .EQ  $07AE
LCDDATA15        .EQ  $07AF
LCDDATA16        .EQ  $07B0
LCDDATA17        .EQ  $07B1
LCDDATA18        .EQ  $07B2
LCDDATA19        .EQ  $07B3
LCDDATA20        .EQ  $07B4
LCDDATA21        .EQ  $07B5
LCDDATA22        .EQ  $07B6
LCDDATA23        .EQ  $07B7

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

AN0              .EQ  $0000
AN1              .EQ  $0001
AN2              .EQ  $0002
AN3              .EQ  $0003
AN4              .EQ  $0005

CPS0             .EQ  $0000
CPS1             .EQ  $0001
CPS2             .EQ  $0002
CPS3             .EQ  $0003
CPS4             .EQ  $0005

SEG33            .EQ  $0000
SEG18            .EQ  $0001
SEG34            .EQ  $0002
SEG35            .EQ  $0003
SEG14            .EQ  $0004
SEG15            .EQ  $0005
SEG36            .EQ  $0006
SEG37            .EQ  $0007

VREFM            .EQ  $0002
VREFP            .EQ  $0003
T0CKI            .EQ  $0004
OSC2             .EQ  $0006
OSC1             .EQ  $0007

CLKOUT           .EQ  $0006
CLKIN            .EQ  $0007


;----- PORTB Bits -----------------------------------------------------
RB0              .EQ  $0000
RB1              .EQ  $0001
RB2              .EQ  $0002
RB3              .EQ  $0003
RB4              .EQ  $0004
RB5              .EQ  $0005
RB6              .EQ  $0006
RB7              .EQ  $0007

SEG30            .EQ  $0000
SEG8             .EQ  $0001
SEG9             .EQ  $0002
SEG10            .EQ  $0003
SEG11            .EQ  $0004
SEG29            .EQ  $0005
SEG38            .EQ  $0006
SEG39            .EQ  $0007

SRI              .EQ  $0000
T1G              .EQ  $0005

FLT0             .EQ  $0000


;----- PORTC Bits -----------------------------------------------------
RC0              .EQ  $0000
RC1              .EQ  $0001
RC2              .EQ  $0002
RC3              .EQ  $0003
RC4              .EQ  $0004
RC5              .EQ  $0005
RC6              .EQ  $0006
RC7              .EQ  $0007

SEG40            .EQ  $0000
SEG32            .EQ  $0001
SEG13            .EQ  $0002
SEG17            .EQ  $0003
SEG16            .EQ  $0004
SEG12            .EQ  $0005
SEG27            .EQ  $0006
SEG28            .EQ  $0007

T1OSO            .EQ  $0000
T1OSI            .EQ  $0001
SCK1             .EQ  $0003
SDI1             .EQ  $0004
SDO1             .EQ  $0005
TX1              .EQ  $0006
RX1              .EQ  $0007

T1CKI            .EQ  $0000
CCP2_PORTC       .EQ  $0001
CCP1             .EQ  $0002
SCL1             .EQ  $0003
SDA1             .EQ  $0004
CK1              .EQ  $0006
DT1              .EQ  $0007

P2A_PORTC        .EQ  $0001
P1A              .EQ  $0002


;----- PORTD Bits -----------------------------------------------------
RD0              .EQ  $0000
RD1              .EQ  $0001
RD2              .EQ  $0002
RD3              .EQ  $0003
RD4              .EQ  $0004
RD5              .EQ  $0005
RD6              .EQ  $0006
RD7              .EQ  $0007

SEG0             .EQ  $0000
SEG1             .EQ  $0001
SEG2             .EQ  $0002
SEG3             .EQ  $0003
SEG4             .EQ  $0004
SEG5             .EQ  $0005
SEG6             .EQ  $0006
SEG7             .EQ  $0007

P2D              .EQ  $0000
P2C              .EQ  $0001
P2B              .EQ  $0002
P3C              .EQ  $0003
P3B              .EQ  $0004
P1C              .EQ  $0005
P1B              .EQ  $0006

SDO2             .EQ  $0004
SDI2             .EQ  $0005
SCK2             .EQ  $0006
NOT_SS2          .EQ  $0007

SDA2             .EQ  $0005
SCL2             .EQ  $0006


;----- PORTE Bits -----------------------------------------------------
RE0              .EQ  $0000
RE1              .EQ  $0001
RE2              .EQ  $0002
RE3              .EQ  $0003
RE4              .EQ  $0004
RE5              .EQ  $0005
RE6              .EQ  $0006
RE7              .EQ  $0007

VLCD1            .EQ  $0000
VLCD2            .EQ  $0001
VLCD3            .EQ  $0002
COM0             .EQ  $0003
COM1             .EQ  $0004
COM2             .EQ  $0005
COM3             .EQ  $0006
SEG31            .EQ  $0007

P2D              .EQ  $0000
P2C              .EQ  $0001
P2B              .EQ  $0002
P3C              .EQ  $0003
P3B              .EQ  $0004
P1C              .EQ  $0005
P1B              .EQ  $0006
P2A_PORTE        .EQ  $0007

CCP2_PORTE       .EQ  $0007


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
C3IF             .EQ  $0001
LCDIF            .EQ  $0002
BCLIF            .EQ  $0003
EEIF             .EQ  $0004
C1IF             .EQ  $0005
C2IF             .EQ  $0006
OSFIF            .EQ  $0007


;----- PIR3 Bits -----------------------------------------------------
TMR4IF           .EQ  $0001
TMR6IF           .EQ  $0003
CCP3IF           .EQ  $0004
CCP4IF           .EQ  $0005
CCP5IF           .EQ  $0006


;----- PIR4 Bits -----------------------------------------------------
SSP2IF           .EQ  $0000
BCL2IF           .EQ  $0001
TX2IF            .EQ  $0004
RC2IF            .EQ  $0005


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
T1GGO_NOT_DONE   .EQ  $0003
T1GSPM           .EQ  $0004
T1GTM            .EQ  $0005
T1GPOL           .EQ  $0006
TMR1GE           .EQ  $0007

T1GGO            .EQ  $0003


;----- T2CON Bits -----------------------------------------------------
T2CKPS0          .EQ  $0000
T2CKPS1          .EQ  $0001
TMR2ON           .EQ  $0002
T2OUTPS0         .EQ  $0003
T2OUTPS1         .EQ  $0004
T2OUTPS2         .EQ  $0005
T2OUTPS3         .EQ  $0006



;----- CPSCON0 Bits -----------------------------------------------------
T0XCS            .EQ  $0000
CPSOUT           .EQ  $0001
CPSRNG0          .EQ  $0002
CPSRNG1          .EQ  $0003
CPSRM            .EQ  $0006
CPSON            .EQ  $0007



;----- CPSCON1 Bits -----------------------------------------------------
CPSCH0           .EQ  $0000
CPSCH1           .EQ  $0001
CPSCH2           .EQ  $0002
CPSCH3           .EQ  $0003
CPSCH4           .EQ  $0004



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
C3IE             .EQ  $0001
LCDIE            .EQ  $0002
BCLIE            .EQ  $0003
EEIE             .EQ  $0004
C1IE             .EQ  $0005
C2IE             .EQ  $0006
OSFIE            .EQ  $0007


;----- PIE3 Bits -----------------------------------------------------
TMR4IE           .EQ  $0001
TMR6IE           .EQ  $0003
CCP3IE           .EQ  $0004
CCP4IE           .EQ  $0005
CCP5IE           .EQ  $0006


;----- PIE4 Bits -----------------------------------------------------
SSP2IE           .EQ  $0000
BCL2IE           .EQ  $0001
TX2IE            .EQ  $0004
RC2IE            .EQ  $0005


;----- OPTION_REG Bits -----------------------------------------------------
PS0              .EQ  $0000
PS1              .EQ  $0001
PS2              .EQ  $0002
PSA              .EQ  $0003
T0SE             .EQ  $0004
T0CS             .EQ  $0005
INTEDG           .EQ  $0006
NOT_WPUEN        .EQ  $0007

TMR0SE           .EQ  $0004
TMR0CS           .EQ  $0005


;----- PCON Bits -----------------------------------------------------
NOT_BOR          .EQ  $0000
NOT_POR          .EQ  $0001
NOT_RI           .EQ  $0002
NOT_RMCLR        .EQ  $0003
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

ADGO             .EQ  $0001

GO               .EQ  $0001

NOT_DONE         .EQ  $0001


;----- ADCON1 Bits -----------------------------------------------------
ADPREF0          .EQ  $0000
ADPREF1          .EQ  $0001
ADNREF           .EQ  $0002
ADCS0            .EQ  $0004
ADCS1            .EQ  $0005
ADCS2            .EQ  $0006
ADFM             .EQ  $0007



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


;----- CM1CON0 Bits -----------------------------------------------------
C1SYNC           .EQ  $0000
C1HYS            .EQ  $0001
C1SP             .EQ  $0002
C1POL            .EQ  $0004
C1OE             .EQ  $0005
C1OUT_CM1CON0    .EQ  $0006
C1ON             .EQ  $0007


;----- CM1CON1 Bits -----------------------------------------------------
C1NCH0           .EQ  $0000
C1NCH1           .EQ  $0001
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
C2OUT_CM2CON0    .EQ  $0006
C2ON             .EQ  $0007


;----- CM2CON1 Bits -----------------------------------------------------
C2NCH0           .EQ  $0000
C2NCH1           .EQ  $0001
C2PCH0           .EQ  $0004
C2PCH1           .EQ  $0005
C2INTN           .EQ  $0006
C2INTP           .EQ  $0007



;----- CMOUT Bits -----------------------------------------------------
MC1OUT           .EQ  $0000
MC2OUT           .EQ  $0001
MC3OUT           .EQ  $0002


;----- BORCON Bits -----------------------------------------------------
BORRDY           .EQ  $0000
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



;----- DACCON0 Bits -----------------------------------------------------
DACNSS           .EQ  $0000
DACPSS0          .EQ  $0002
DACPSS1          .EQ  $0003
DACOE            .EQ  $0005
DACLPS           .EQ  $0006
DACEN            .EQ  $0007



;----- DACCON1 Bits -----------------------------------------------------
DACR0            .EQ  $0000
DACR1            .EQ  $0001
DACR2            .EQ  $0002
DACR3            .EQ  $0003
DACR4            .EQ  $0004



;----- SRCON0 Bits -----------------------------------------------------
SRPR             .EQ  $0000
SRPS             .EQ  $0001
SRNQEN           .EQ  $0002
SRQEN            .EQ  $0003
SRCLK0           .EQ  $0004
SRCLK1           .EQ  $0005
SRCLK2           .EQ  $0006
SRLEN            .EQ  $0007



;----- SRCON1 Bits -----------------------------------------------------
SRRC1E           .EQ  $0000
SRRC2E           .EQ  $0001
SRRCKE           .EQ  $0002
SRRPE            .EQ  $0003
SRSC1E           .EQ  $0004
SRSC2E           .EQ  $0005
SRSCKE           .EQ  $0006
SRSPE            .EQ  $0007


;----- APFCON Bits -----------------------------------------------------
P1BSEL           .EQ  $0000
P1CSEL           .EQ  $0001
CCP2SEL          .EQ  $0002
P2BSEL           .EQ  $0003
P2CSEL           .EQ  $0004
P2DSEL           .EQ  $0005
P3BSEL           .EQ  $0006
P3CSEL           .EQ  $0007


;----- CM3CON0 Bits -----------------------------------------------------
C3SYNC           .EQ  $0000
C3HYS            .EQ  $0001
C3SP             .EQ  $0002
C3POL            .EQ  $0004
C3OE             .EQ  $0005
C3OUT_CM3CON0    .EQ  $0006
C3ON             .EQ  $0007


;----- CM3CON1 Bits -----------------------------------------------------
C3NCH0           .EQ  $0000
C3NCH1           .EQ  $0001
C3PCH0           .EQ  $0004
C3PCH1           .EQ  $0005
C3INTN           .EQ  $0006
C3INTP           .EQ  $0007



;----- ANSELA Bits -----------------------------------------------------
ANSA0            .EQ  $0000
ANSA1            .EQ  $0001
ANSA2            .EQ  $0002
ANSA3            .EQ  $0003
ANSA5            .EQ  $0005



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


;----- WPUB Bits -----------------------------------------------------
WPUB0            .EQ  $0000
WPUB1            .EQ  $0001
WPUB2            .EQ  $0002
WPUB3            .EQ  $0003
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
SSPM0            .EQ  $0000
SSPM1            .EQ  $0001
SSPM2            .EQ  $0002
SSPM3            .EQ  $0003
CKP              .EQ  $0004
SSPEN            .EQ  $0005
SSPOV            .EQ  $0006
WCOL             .EQ  $0007


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

AN16             .EQ  $0000
AN6              .EQ  $0001
AN7              .EQ  $0002
AN8              .EQ  $0003
AN9              .EQ  $0004
AN10             .EQ  $0005
AN11             .EQ  $0006
AN5              .EQ  $0007

SEG41            .EQ  $0000
SEG19            .EQ  $0001
SEG20            .EQ  $0002
SEG21            .EQ  $0003
SEG22            .EQ  $0004
SEG23            .EQ  $0005
SEG24            .EQ  $0006
SEG25            .EQ  $0007

CPS16            .EQ  $0000
CPS6             .EQ  $0001
CPS7             .EQ  $0002
CPS8             .EQ  $0003
CPS9             .EQ  $0004
CPS10            .EQ  $0005
CPS11            .EQ  $0006
CPS5             .EQ  $0007

C1IN0N           .EQ  $0000
C2OUT_PORTF      .EQ  $0001
C1OUT_PORTF      .EQ  $0002
C1IN2N           .EQ  $0003
C2INP            .EQ  $0004
C1IN1N           .EQ  $0005
C1INP            .EQ  $0006
C1IN3N           .EQ  $0007

C2IN0N           .EQ  $0000
SRNQ             .EQ  $0001
SRQ              .EQ  $0002
C2IN2N           .EQ  $0003
C2IN1N           .EQ  $0005
C2IN3N           .EQ  $0007

C3IN2N           .EQ  $0003
DACOUT           .EQ  $0005
C3IN3N           .EQ  $0007


;----- PORTG Bits -----------------------------------------------------
RG0              .EQ  $0000
RG1              .EQ  $0001
RG2              .EQ  $0002
RG3              .EQ  $0003
RG4              .EQ  $0004
RG5              .EQ  $0005

AN15             .EQ  $0001
AN14             .EQ  $0002
AN13             .EQ  $0003
AN12             .EQ  $0004
NOT_MCLR         .EQ  $0005

SEG42            .EQ  $0000
SEG43            .EQ  $0001
SEG44            .EQ  $0002
SEG45            .EQ  $0003
SEG26            .EQ  $0004

CPS15            .EQ  $0001
CPS14            .EQ  $0002
CPS13            .EQ  $0003
CPS12            .EQ  $0004

C3OUT_PORTG      .EQ  $0001
C3INP            .EQ  $0002
C3IN0N           .EQ  $0003
C3IN1N           .EQ  $0004

CCP3             .EQ  $0000
TX2              .EQ  $0001
RX2              .EQ  $0002
CCP4             .EQ  $0003
CCP5             .EQ  $0004

P3A              .EQ  $0000
CK2              .EQ  $0001
DT2              .EQ  $0002
P3D              .EQ  $0003
P1D              .EQ  $0004


;----- CCP1CON Bits -----------------------------------------------------
CCP1M0           .EQ  $0000
CCP1M1           .EQ  $0001
CCP1M2           .EQ  $0002
CCP1M3           .EQ  $0003
DC1B0            .EQ  $0004
DC1B1            .EQ  $0005
P1M0             .EQ  $0006
P1M1             .EQ  $0007



;----- PWM1CON Bits -----------------------------------------------------
P1DC0            .EQ  $0000
P1DC1            .EQ  $0001
P1DC2            .EQ  $0002
P1DC3            .EQ  $0003
P1DC4            .EQ  $0004
P1DC5            .EQ  $0005
P1DC6            .EQ  $0006
P1RSEN           .EQ  $0007


;----- CCP1AS Bits -----------------------------------------------------
PSS1BD0          .EQ  $0000
PSS1BD1          .EQ  $0001
PSS1AC0          .EQ  $0002
PSS1AC1          .EQ  $0003
CCP1AS0          .EQ  $0004
CCP1AS1          .EQ  $0005
CCP1AS2          .EQ  $0006
CCP1ASE          .EQ  $0007


;----- ECCP1AS Bits -----------------------------------------------------
PSS1BD0          .EQ  $0000
PSS1BD1          .EQ  $0001
PSS1AC0          .EQ  $0002
PSS1AC1          .EQ  $0003
CCP1AS0          .EQ  $0004
CCP1AS1          .EQ  $0005
CCP1AS2          .EQ  $0006
CCP1ASE          .EQ  $0007


;----- PSTR1CON Bits -----------------------------------------------------
STR1A            .EQ  $0000
STR1B            .EQ  $0001
STR1C            .EQ  $0002
STR1D            .EQ  $0003
STR1SYNC         .EQ  $0004


;----- CCP2CON Bits -----------------------------------------------------
CCP2M0           .EQ  $0000
CCP2M1           .EQ  $0001
CCP2M2           .EQ  $0002
CCP2M3           .EQ  $0003
DC2B0            .EQ  $0004
DC2B1            .EQ  $0005
P2M0             .EQ  $0006
P2M1             .EQ  $0007



;----- PWM2CON Bits -----------------------------------------------------
P2DC0            .EQ  $0000
P2DC1            .EQ  $0001
P2DC2            .EQ  $0002
P2DC3            .EQ  $0003
P2DC4            .EQ  $0004
P2DC5            .EQ  $0005
P2DC6            .EQ  $0006
P2RSEN           .EQ  $0007


;----- CCP2AS Bits -----------------------------------------------------
PSS2BD0          .EQ  $0000
PSS2BD1          .EQ  $0001
PSS2AC0          .EQ  $0002
PSS2AC1          .EQ  $0003
CCP2AS0          .EQ  $0004
CCP2AS1          .EQ  $0005
CCP2AS2          .EQ  $0006
CCP2ASE          .EQ  $0007


;----- ECCP2AS Bits -----------------------------------------------------
PSS2BD0          .EQ  $0000
PSS2BD1          .EQ  $0001
PSS2AC0          .EQ  $0002
PSS2AC1          .EQ  $0003
CCP2AS0          .EQ  $0004
CCP2AS1          .EQ  $0005
CCP2AS2          .EQ  $0006
CCP2ASE          .EQ  $0007


;----- PSTR2CON Bits -----------------------------------------------------
STR2A            .EQ  $0000
STR2B            .EQ  $0001
STR2C            .EQ  $0002
STR2D            .EQ  $0003
STR2SYNC         .EQ  $0004


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
TRISG5           .EQ  $0005


;----- CCP3CON Bits -----------------------------------------------------
CCP3M0           .EQ  $0000
CCP3M1           .EQ  $0001
CCP3M2           .EQ  $0002
CCP3M3           .EQ  $0003
DC3B0            .EQ  $0004
DC3B1            .EQ  $0005
P3M0             .EQ  $0006
P3M1             .EQ  $0007


;----- PWM3CON Bits -----------------------------------------------------
P3DC0            .EQ  $0000
P3DC1            .EQ  $0001
P3DC2            .EQ  $0002
P3DC3            .EQ  $0003
P3DC4            .EQ  $0004
P3DC5            .EQ  $0005
P3DC6            .EQ  $0006
P3RSEN           .EQ  $0007


;----- CCP3AS Bits -----------------------------------------------------
PSS3BD0          .EQ  $0000
PSS3BD1          .EQ  $0001
PSS3AC0          .EQ  $0002
PSS3AC1          .EQ  $0003
CCP3AS0          .EQ  $0004
CCP3AS1          .EQ  $0005
CCP3AS2          .EQ  $0006
CCP3ASE          .EQ  $0007


;----- ECCP3AS Bits -----------------------------------------------------
PSS3BD0          .EQ  $0000
PSS3BD1          .EQ  $0001
PSS3AC0          .EQ  $0002
PSS3AC1          .EQ  $0003
CCP3AS0          .EQ  $0004
CCP3AS1          .EQ  $0005
CCP3AS2          .EQ  $0006
CCP3ASE          .EQ  $0007


;----- PSTR3CON Bits -----------------------------------------------------
STR3A            .EQ  $0000
STR3B            .EQ  $0001
STR3C            .EQ  $0002
STR3D            .EQ  $0003
STR3SYNC         .EQ  $0004


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
LATG5            .EQ  $0005


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



;----- T4CON Bits -----------------------------------------------------
T4CKPS0          .EQ  $0000
T4CKPS1          .EQ  $0001
TMR4ON           .EQ  $0002
T4OUTPS0         .EQ  $0003
T4OUTPS1         .EQ  $0004
T4OUTPS2         .EQ  $0005
T4OUTPS3         .EQ  $0006



;----- T6CON Bits -----------------------------------------------------
T6CKPS0          .EQ  $0000
T6CKPS1          .EQ  $0001
TMR6ON           .EQ  $0002
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


;----- TX2STA Bits -----------------------------------------------------
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


;----- LCDCON Bits -----------------------------------------------------
LMUX0            .EQ  $0000
LMUX1            .EQ  $0001
CS0              .EQ  $0002
CS1              .EQ  $0003
WERR             .EQ  $0005
SLPEN            .EQ  $0006
LCDEN            .EQ  $0007



;----- LCDPS Bits -----------------------------------------------------
LP0              .EQ  $0000
LP1              .EQ  $0001
LP2              .EQ  $0002
LP3              .EQ  $0003
WA               .EQ  $0004
LCDA             .EQ  $0005
BIASMD           .EQ  $0006
WFT              .EQ  $0007



;----- LCDREF Bits -----------------------------------------------------
VLCD1PE          .EQ  $0001
VLCD2PE          .EQ  $0002
VLCD3PE          .EQ  $0003
LCDIRI           .EQ  $0005
LCDIRS           .EQ  $0006
LCDIRE           .EQ  $0007


;----- LCDCST Bits -----------------------------------------------------
LCDCST0          .EQ  $0000
LCDCST1          .EQ  $0001
LCDCST2          .EQ  $0002



;----- LCDRL Bits -----------------------------------------------------
LRLAT0           .EQ  $0000
LRLAT1           .EQ  $0001
LRLAT2           .EQ  $0002
LRLBP0           .EQ  $0004
LRLBP1           .EQ  $0005
LRLAP0           .EQ  $0006
LRLAP1           .EQ  $0007



;----- LCDSE0 Bits -----------------------------------------------------
SE0              .EQ  $0000
SE1              .EQ  $0001
SE2              .EQ  $0002
SE3              .EQ  $0003
SE4              .EQ  $0004
SE5              .EQ  $0005
SE6              .EQ  $0006
SE7              .EQ  $0007


;----- LCDSE1 Bits -----------------------------------------------------
SE8              .EQ  $0000
SE9              .EQ  $0001
SE10             .EQ  $0002
SE11             .EQ  $0003
SE12             .EQ  $0004
SE13             .EQ  $0005
SE14             .EQ  $0006
SE15             .EQ  $0007


;----- LCDSE2 Bits -----------------------------------------------------
SE16             .EQ  $0000
SE17             .EQ  $0001
SE18             .EQ  $0002
SE19             .EQ  $0003
SE20             .EQ  $0004
SE21             .EQ  $0005
SE22             .EQ  $0006
SE23             .EQ  $0007


;----- LCDSE3 Bits -----------------------------------------------------
SE24             .EQ  $0000
SE25             .EQ  $0001
SE26             .EQ  $0002
SE27             .EQ  $0003
SE28             .EQ  $0004
SE29             .EQ  $0005
SE30             .EQ  $0006
SE31             .EQ  $0007


;----- LCDSE4 Bits -----------------------------------------------------
SE32             .EQ  $0000
SE33             .EQ  $0001
SE34             .EQ  $0002
SE35             .EQ  $0003
SE36             .EQ  $0004
SE37             .EQ  $0005
SE38             .EQ  $0006
SE39             .EQ  $0007


;----- LCDSE5 Bits -----------------------------------------------------
SE40             .EQ  $0000
SE41             .EQ  $0001
SE42             .EQ  $0002
SE43             .EQ  $0003
SE44             .EQ  $0004
SE45             .EQ  $0005


;----- LCDDATA0 Bits -----------------------------------------------------
SEG0COM0         .EQ  $0000
SEG1COM0         .EQ  $0001
SEG2COM0         .EQ  $0002
SEG3COM0         .EQ  $0003
SEG4COM0         .EQ  $0004
SEG5COM0         .EQ  $0005
SEG6COM0         .EQ  $0006
SEG7COM0         .EQ  $0007


;----- LCDDATA1 Bits -----------------------------------------------------
SEG8COM0         .EQ  $0000
SEG9COM0         .EQ  $0001
SEG10COM0        .EQ  $0002
SEG11COM0        .EQ  $0003
SEG12COM0        .EQ  $0004
SEG13COM0        .EQ  $0005
SEG14COM0        .EQ  $0006
SEG15COM0        .EQ  $0007


;----- LCDDATA2 Bits -----------------------------------------------------
SEG16COM0        .EQ  $0000
SEG17COM0        .EQ  $0001
SEG18COM0        .EQ  $0002
SEG19COM0        .EQ  $0003
SEG20COM0        .EQ  $0004
SEG21COM0        .EQ  $0005
SEG22COM0        .EQ  $0006
SEG23COM0        .EQ  $0007


;----- LCDDATA3 Bits -----------------------------------------------------
SEG0COM1         .EQ  $0000
SEG1COM1         .EQ  $0001
SEG2COM1         .EQ  $0002
SEG3COM1         .EQ  $0003
SEG4COM1         .EQ  $0004
SEG5COM1         .EQ  $0005
SEG6COM1         .EQ  $0006
SEG7COM1         .EQ  $0007


;----- LCDDATA4 Bits -----------------------------------------------------
SEG8COM1         .EQ  $0000
SEG9COM1         .EQ  $0001
SEG10COM1        .EQ  $0002
SEG11COM1        .EQ  $0003
SEG12COM1        .EQ  $0004
SEG13COM1        .EQ  $0005
SEG14COM1        .EQ  $0006
SEG15COM1        .EQ  $0007


;----- LCDDATA5 Bits -----------------------------------------------------
SEG16COM1        .EQ  $0000
SEG17COM1        .EQ  $0001
SEG18COM1        .EQ  $0002
SEG19COM1        .EQ  $0003
SEG20COM1        .EQ  $0004
SEG21COM1        .EQ  $0005
SEG22COM1        .EQ  $0006
SEG23COM1        .EQ  $0007


;----- LCDDATA6 Bits -----------------------------------------------------
SEG0COM2         .EQ  $0000
SEG1COM2         .EQ  $0001
SEG2COM2         .EQ  $0002
SEG3COM2         .EQ  $0003
SEG4COM2         .EQ  $0004
SEG5COM2         .EQ  $0005
SEG6COM2         .EQ  $0006
SEG7COM2         .EQ  $0007


;----- LCDDATA7 Bits -----------------------------------------------------
SEG8COM2         .EQ  $0000
SEG9COM2         .EQ  $0001
SEG10COM2        .EQ  $0002
SEG11COM2        .EQ  $0003
SEG12COM2        .EQ  $0004
SEG13COM2        .EQ  $0005
SEG14COM2        .EQ  $0006
SEG15COM2        .EQ  $0007


;----- LCDDATA8 Bits -----------------------------------------------------
SEG16COM2        .EQ  $0000
SEG17COM2        .EQ  $0001
SEG18COM2        .EQ  $0002
SEG19COM2        .EQ  $0003
SEG20COM2        .EQ  $0004
SEG21COM2        .EQ  $0005
SEG22COM2        .EQ  $0006
SEG23COM2        .EQ  $0007


;----- LCDDATA9 Bits -----------------------------------------------------
SEG0COM3         .EQ  $0000
SEG1COM3         .EQ  $0001
SEG2COM3         .EQ  $0002
SEG3COM3         .EQ  $0003
SEG4COM3         .EQ  $0004
SEG5COM3         .EQ  $0005
SEG6COM3         .EQ  $0006
SEG7COM3         .EQ  $0007


;----- LCDDATA10 Bits -----------------------------------------------------
SEG8COM3         .EQ  $0000
SEG9COM3         .EQ  $0001
SEG10COM3        .EQ  $0002
SEG11COM3        .EQ  $0003
SEG12COM3        .EQ  $0004
SEG13COM3        .EQ  $0005
SEG14COM3        .EQ  $0006
SEG15COM3        .EQ  $0007


;----- LCDDATA11 Bits -----------------------------------------------------
SEG16COM3        .EQ  $0000
SEG17COM3        .EQ  $0001
SEG18COM3        .EQ  $0002
SEG19COM3        .EQ  $0003
SEG20COM3        .EQ  $0004
SEG21COM3        .EQ  $0005
SEG22COM3        .EQ  $0006
SEG23COM3        .EQ  $0007


;----- LCDDATA12 Bits -----------------------------------------------------
SEG24COM0        .EQ  $0000
SEG25COM0        .EQ  $0001
SEG26COM0        .EQ  $0002
SEG27COM0        .EQ  $0003
SEG28COM0        .EQ  $0004
SEG29COM0        .EQ  $0005
SEG30COM0        .EQ  $0006
SEG31COM0        .EQ  $0007


;----- LCDDATA13 Bits -----------------------------------------------------
SEG32COM0        .EQ  $0000
SEG33COM0        .EQ  $0001
SEG34COM0        .EQ  $0002
SEG35COM0        .EQ  $0003
SEG36COM0        .EQ  $0004
SEG37COM0        .EQ  $0005
SEG38COM0        .EQ  $0006
SEG39COM0        .EQ  $0007


;----- LCDDATA14 Bits -----------------------------------------------------
SEG40COM0        .EQ  $0000
SEG41COM0        .EQ  $0001
SEG42COM0        .EQ  $0002
SEG43COM0        .EQ  $0003
SEG44COM0        .EQ  $0004
SEG45COM0        .EQ  $0005


;----- LCDDATA15 Bits -----------------------------------------------------
SEG24COM1        .EQ  $0000
SEG25COM1        .EQ  $0001
SEG26COM1        .EQ  $0002
SEG27COM1        .EQ  $0003
SEG28COM1        .EQ  $0004
SEG29COM1        .EQ  $0005
SEG30COM1        .EQ  $0006
SEG31COM1        .EQ  $0007


;----- LCDDATA16 Bits -----------------------------------------------------
SEG32COM1        .EQ  $0000
SEG33COM1        .EQ  $0001
SEG34COM1        .EQ  $0002
SEG35COM1        .EQ  $0003
SEG36COM1        .EQ  $0004
SEG37COM1        .EQ  $0005
SEG38COM1        .EQ  $0006
SEG39COM1        .EQ  $0007


;----- LCDDATA17 Bits -----------------------------------------------------
SEG40COM1        .EQ  $0000
SEG41COM1        .EQ  $0001
SEG42COM1        .EQ  $0002
SEG43COM1        .EQ  $0003
SEG44COM1        .EQ  $0004
SEG45COM1        .EQ  $0005


;----- LCDDATA18 Bits -----------------------------------------------------
SEG24COM2        .EQ  $0000
SEG25COM2        .EQ  $0001
SEG26COM2        .EQ  $0002
SEG27COM2        .EQ  $0003
SEG28COM2        .EQ  $0004
SEG29COM2        .EQ  $0005
SEG30COM2        .EQ  $0006
SEG31COM2        .EQ  $0007


;----- LCDDATA19 Bits -----------------------------------------------------
SEG32COM2        .EQ  $0000
SEG33COM2        .EQ  $0001
SEG34COM2        .EQ  $0002
SEG35COM2        .EQ  $0003
SEG36COM2        .EQ  $0004
SEG37COM2        .EQ  $0005
SEG38COM2        .EQ  $0006
SEG39COM2        .EQ  $0007


;----- LCDDATA20 Bits -----------------------------------------------------
SEG40COM2        .EQ  $0000
SEG41COM2        .EQ  $0001
SEG42COM2        .EQ  $0002
SEG43COM2        .EQ  $0003
SEG44COM2        .EQ  $0004
SEG45COM2        .EQ  $0005


;----- LCDDATA21 Bits -----------------------------------------------------
SEG24COM3        .EQ  $0000
SEG25COM3        .EQ  $0001
SEG26COM3        .EQ  $0002
SEG27COM3        .EQ  $0003
SEG28COM3        .EQ  $0004
SEG29COM3        .EQ  $0005
SEG30COM3        .EQ  $0006
SEG31COM3        .EQ  $0007


;----- LCDDATA22 Bits -----------------------------------------------------
SEG32COM3        .EQ  $0000
SEG33COM3        .EQ  $0001
SEG34COM3        .EQ  $0002
SEG35COM3        .EQ  $0003
SEG36COM3        .EQ  $0004
SEG37COM3        .EQ  $0005
SEG38COM3        .EQ  $0006
SEG39COM3        .EQ  $0007


;----- LCDDATA23 Bits -----------------------------------------------------
SEG40COM3        .EQ  $0000
SEG41COM3        .EQ  $0001
SEG42COM3        .EQ  $0002
SEG43COM3        .EQ  $0003
SEG44COM3        .EQ  $0004
SEG45COM3        .EQ  $0005


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
_WRT_ALL             .EQ  $3FFC  000h to 3FFFh write protected, no addresses may be modified by EECON control
_WRT_HALF            .EQ  $3FFD  000h to 1FFFh write protected, 2000h to 3FFFh may be modified by EECON control
_WRT_BOOT            .EQ  $3FFE  000h to 1FFh write protected, 200h to 3FFFh may be modified by EECON control
_WRT_OFF             .EQ  $3FFF  Write protection off

_VCAPEN_ON           .EQ  $3FEF  VCAP functionality is enabled on VCAP pin
_VCAPEN_OFF          .EQ  $3FFF  VCAP pin functionality is disabled

_PLLEN_OFF           .EQ  $3EFF  4x PLL disabled
_PLLEN_ON            .EQ  $3FFF  4x PLL enabled

_STVREN_OFF          .EQ  $3DFF  Stack Overflow or Underflow will not cause a Reset
_STVREN_ON           .EQ  $3FFF  Stack Overflow or Underflow will cause a Reset

_BORV_HI             .EQ  $3BFF  Brown-out Reset Voltage (Vbor), high trip point selected.
_BORV_25             .EQ  $3BFF  Brown-out Reset Voltage (Vbor), high trip point selected.
_BORV_LO             .EQ  $3FFF  Brown-out Reset Voltage (Vbor), low trip point selected.
_BORV_19             .EQ  $3FFF  Brown-out Reset Voltage (Vbor), low trip point selected.

_LVP_OFF             .EQ  $1FFF  High-voltage on MCLR/VPP must be used for programming
_LVP_ON              .EQ  $3FFF  Low-voltage programming enabled

;----- DEVID Equates --------------------------------------------------
_DEVID1          .EQ  $8006

;----- IDLOC Equates --------------------------------------------------
_IDLOC0          .EQ  $8000
_IDLOC1          .EQ  $8001
_IDLOC2          .EQ  $8002
_IDLOC3          .EQ  $8003
