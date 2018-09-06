;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC16LF1454 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC16LF1454 microcontroller.  These names
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
PORTC            .EQ  $000E
PIR1             .EQ  $0011
PIR2             .EQ  $0012
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
TRISC            .EQ  $008E
PIE1             .EQ  $0091
PIE2             .EQ  $0092
OPTION_REG       .EQ  $0095
PCON             .EQ  $0096
WDTCON           .EQ  $0097
OSCTUNE          .EQ  $0098
OSCCON           .EQ  $0099
OSCSTAT          .EQ  $009A

;-----Bank2------------------
LATA             .EQ  $010C
LATC             .EQ  $010E
BORCON           .EQ  $0116
FVRCON           .EQ  $0117
APFCON           .EQ  $011D

;-----Bank3------------------
ANSELA           .EQ  $018C
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
CLKRCON          .EQ  $039A
ACTCON           .EQ  $039B

;-----Bank12------------------
PWM1DCL          .EQ  $0611
PWM1DCH          .EQ  $0612
PWM1CON          .EQ  $0613
PWM1CON0         .EQ  $0613
PWM2DCL          .EQ  $0614
PWM2DCH          .EQ  $0615
PWM2CON          .EQ  $0616
PWM2CON0         .EQ  $0616

;-----Bank29------------------
UCON             .EQ  $0E8E
USTAT            .EQ  $0E8F
UIR              .EQ  $0E90
UCFG             .EQ  $0E91
UIE              .EQ  $0E92
UEIR             .EQ  $0E93
UFRM             .EQ  $0E94
UFRMH            .EQ  $0E94
UFRML            .EQ  $0E95
UADDR            .EQ  $0E96
UEIE             .EQ  $0E97
UEP0             .EQ  $0E98
UEP1             .EQ  $0E99
UEP2             .EQ  $0E9A
UEP3             .EQ  $0E9B
UEP4             .EQ  $0E9C
UEP5             .EQ  $0E9D
UEP6             .EQ  $0E9E
UEP7             .EQ  $0E9F

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
RA3              .EQ  $0003
RA4              .EQ  $0004
RA5              .EQ  $0005


;----- PORTC Bits -----------------------------------------------------
RC0              .EQ  $0000
RC1              .EQ  $0001
RC2              .EQ  $0002
RC3              .EQ  $0003
RC4              .EQ  $0004
RC5              .EQ  $0005


;----- PIR1 Bits -----------------------------------------------------
TMR1IF           .EQ  $0000
TMR2IF           .EQ  $0001
SSP1IF           .EQ  $0003
TXIF             .EQ  $0004
RCIF             .EQ  $0005
TMR1GIF          .EQ  $0007


;----- PIR2 Bits -----------------------------------------------------
ACTIF            .EQ  $0001
USBIF            .EQ  $0002
BCL1IF           .EQ  $0003
OSFIF            .EQ  $0007


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
TRISA4           .EQ  $0004
TRISA5           .EQ  $0005


;----- TRISC Bits -----------------------------------------------------
TRISC0           .EQ  $0000
TRISC1           .EQ  $0001
TRISC2           .EQ  $0002
TRISC3           .EQ  $0003
TRISC4           .EQ  $0004
TRISC5           .EQ  $0005


;----- PIE1 Bits -----------------------------------------------------
TMR1IE           .EQ  $0000
TMR2IE           .EQ  $0001
SSP1IE           .EQ  $0003
TXIE             .EQ  $0004
RCIE             .EQ  $0005
TMR1GIE          .EQ  $0007


;----- PIE2 Bits -----------------------------------------------------
ACTIE            .EQ  $0001
USBIE            .EQ  $0002
BCL1IE           .EQ  $0003
OSFIE            .EQ  $0007


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
TUN6             .EQ  $0006


;----- OSCCON Bits -----------------------------------------------------
SPLLMULT         .EQ  $0006
SPLLEN           .EQ  $0007

SCS0             .EQ  $0000
SCS1             .EQ  $0001
IRCF0            .EQ  $0002
IRCF1            .EQ  $0003
IRCF2            .EQ  $0004
IRCF3            .EQ  $0005


;----- OSCSTAT Bits -----------------------------------------------------
HFIOFS           .EQ  $0000
LFIOFR           .EQ  $0001
HFIOFR           .EQ  $0004
OSTS             .EQ  $0005
PLLRDY           .EQ  $0006
SOSCR            .EQ  $0007


;----- LATA Bits -----------------------------------------------------
LATA4            .EQ  $0004
LATA5            .EQ  $0005


;----- LATC Bits -----------------------------------------------------
LATC0            .EQ  $0000
LATC1            .EQ  $0001
LATC2            .EQ  $0002
LATC3            .EQ  $0003
LATC4            .EQ  $0004
LATC5            .EQ  $0005


;----- BORCON Bits -----------------------------------------------------
BORRDY           .EQ  $0000
BORFS            .EQ  $0006
SBOREN           .EQ  $0007


;----- FVRCON Bits -----------------------------------------------------
FVRRDY           .EQ  $0006
FVREN            .EQ  $0007


;----- APFCON Bits -----------------------------------------------------
P2SEL            .EQ  $0002
T1GSEL           .EQ  $0003
SSSEL            .EQ  $0005
SDOSEL           .EQ  $0006
CLKRSEL          .EQ  $0007


;----- ANSELA Bits -----------------------------------------------------
ANSA4            .EQ  $0005



;----- ANSELC Bits -----------------------------------------------------
ANSC0            .EQ  $0000
ANSC1            .EQ  $0001
ANSC2            .EQ  $0002
ANSC3            .EQ  $0003



;----- PMCON1 Bits -----------------------------------------------------
RD               .EQ  $0000
WR               .EQ  $0001
WREN             .EQ  $0002
WRERR            .EQ  $0003
FREE             .EQ  $0004
LWLO             .EQ  $0005
CFGS             .EQ  $0006


;----- VREGCON Bits -----------------------------------------------------
VREGPM0          .EQ  $0000
VREGPM1          .EQ  $0001


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
WPUA3            .EQ  $0003
WPUA4            .EQ  $0004
WPUA5            .EQ  $0005



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
SSP1M0           .EQ  $0000
SSP1M1           .EQ  $0001
SSP1M2           .EQ  $0002
SSP1M3           .EQ  $0003
CKP              .EQ  $0004
SSPEN            .EQ  $0005
SSPOV            .EQ  $0006
WCOL             .EQ  $0007

SSP1EN           .EQ  $0005
SSP1OV           .EQ  $0006


;----- SSPCON Bits -----------------------------------------------------
SSP1M0           .EQ  $0000
SSP1M1           .EQ  $0001
SSP1M2           .EQ  $0002
SSP1M3           .EQ  $0003
CKP              .EQ  $0004
SSPEN            .EQ  $0005
SSPOV            .EQ  $0006
WCOL             .EQ  $0007

SSP1EN           .EQ  $0005
SSP1OV           .EQ  $0006


;----- SSPCON1 Bits -----------------------------------------------------
SSP1M0           .EQ  $0000
SSP1M1           .EQ  $0001
SSP1M2           .EQ  $0002
SSP1M3           .EQ  $0003
CKP              .EQ  $0004
SSPEN            .EQ  $0005
SSPOV            .EQ  $0006
WCOL             .EQ  $0007

SSP1EN           .EQ  $0005
SSP1OV           .EQ  $0006


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
IOCAP3           .EQ  $0003
IOCAP4           .EQ  $0004
IOCAP5           .EQ  $0005



;----- IOCAN Bits -----------------------------------------------------
IOCAN0           .EQ  $0000
IOCAN1           .EQ  $0001
IOCAN3           .EQ  $0003
IOCAN4           .EQ  $0004
IOCAN5           .EQ  $0005



;----- IOCAF Bits -----------------------------------------------------
IOCAF0           .EQ  $0000
IOCAF1           .EQ  $0001
IOCAF3           .EQ  $0003
IOCAF4           .EQ  $0004
IOCAF5           .EQ  $0005



;----- CLKRCON Bits -----------------------------------------------------
CLKRSLR          .EQ  $0005
CLKROE           .EQ  $0006
CLKREN           .EQ  $0007

CLKRDIV0         .EQ  $0000
CLKRDIV1         .EQ  $0001
CLKRDIV2         .EQ  $0002
CLKRCD0          .EQ  $0003
CLKRCD1          .EQ  $0004


;----- ACTCON Bits -----------------------------------------------------
ACTORS           .EQ  $0001
ACTLOCK          .EQ  $0003
ACTSRC           .EQ  $0004
ACTUD            .EQ  $0006
ACTEN            .EQ  $0007


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


;----- UCON Bits -----------------------------------------------------
SUSPND           .EQ  $0001
RESUME           .EQ  $0002
USBEN            .EQ  $0003
PKTDIS           .EQ  $0004
SE0              .EQ  $0005
PPBRST           .EQ  $0006


;----- USTAT Bits -----------------------------------------------------
PPBI             .EQ  $0001
DIR              .EQ  $0002

ENDP0            .EQ  $0003
ENDP1            .EQ  $0004
ENDP2            .EQ  $0005
ENDP3            .EQ  $0006


;----- UIR Bits -----------------------------------------------------
URSTIF           .EQ  $0000
UERRIF           .EQ  $0001
ACTVIF           .EQ  $0002
TRNIF            .EQ  $0003
IDLEIF           .EQ  $0004
STALLIF          .EQ  $0005
SOFIF            .EQ  $0006


;----- UCFG Bits -----------------------------------------------------
FSEN             .EQ  $0002
UPUEN            .EQ  $0004
UTEYE            .EQ  $0007

PPB0             .EQ  $0000
PPB1             .EQ  $0001


;----- UIE Bits -----------------------------------------------------
URSTIE           .EQ  $0000
UERRIE           .EQ  $0001
ACTVIE           .EQ  $0002
TRNIE            .EQ  $0003
IDLEIE           .EQ  $0004
STALLIE          .EQ  $0005
SOFIE            .EQ  $0006


;----- UEIR Bits -----------------------------------------------------
PIDEF            .EQ  $0000
CRC5EF           .EQ  $0001
CRC16EF          .EQ  $0002
DFN8EF           .EQ  $0003
BTOEF            .EQ  $0004
BTSEF            .EQ  $0007


;----- UFRMH Bits -----------------------------------------------------
FRM8             .EQ  $0000
FRM9             .EQ  $0001
FRM10            .EQ  $0002


;----- UFRML Bits -----------------------------------------------------
FRM0             .EQ  $0000
FRM1             .EQ  $0001
FRM2             .EQ  $0002
FRM3             .EQ  $0003
FRM4             .EQ  $0004
FRM5             .EQ  $0005
FRM6             .EQ  $0006
FRM7             .EQ  $0007


;----- UADDR Bits -----------------------------------------------------
ADDR0            .EQ  $0000
ADDR1            .EQ  $0001
ADDR2            .EQ  $0002
ADDR3            .EQ  $0003
ADDR4            .EQ  $0004
ADDR5            .EQ  $0005
ADDR6            .EQ  $0006


;----- UEIE Bits -----------------------------------------------------
PIDEE            .EQ  $0000
CRC5EE           .EQ  $0001
CRC16EE          .EQ  $0002
DFN8EE           .EQ  $0003
BTOEE            .EQ  $0004
BTSEE            .EQ  $0007


;----- UEP0 Bits -----------------------------------------------------
EPSTALL          .EQ  $0000
EPINEN           .EQ  $0001
EPOUTEN          .EQ  $0002
EPCONDIS         .EQ  $0003
EPHSHK           .EQ  $0004


;----- UEP1 Bits -----------------------------------------------------
EPSTALL          .EQ  $0000
EPINEN           .EQ  $0001
EPOUTEN          .EQ  $0002
EPCONDIS         .EQ  $0003
EPHSHK           .EQ  $0004


;----- UEP2 Bits -----------------------------------------------------
EPSTALL          .EQ  $0000
EPINEN           .EQ  $0001
EPOUTEN          .EQ  $0002
EPCONDIS         .EQ  $0003
EPHSHK           .EQ  $0004


;----- UEP3 Bits -----------------------------------------------------
EPSTALL          .EQ  $0000
EPINEN           .EQ  $0001
EPOUTEN          .EQ  $0002
EPCONDIS         .EQ  $0003
EPHSHK           .EQ  $0004


;----- UEP4 Bits -----------------------------------------------------
EPSTALL          .EQ  $0000
EPINEN           .EQ  $0001
EPOUTEN          .EQ  $0002
EPCONDIS         .EQ  $0003
EPHSHK           .EQ  $0004


;----- UEP5 Bits -----------------------------------------------------
EPSTALL          .EQ  $0000
EPINEN           .EQ  $0001
EPOUTEN          .EQ  $0002
EPCONDIS         .EQ  $0003
EPHSHK           .EQ  $0004


;----- UEP6 Bits -----------------------------------------------------
EPSTALL          .EQ  $0000
EPINEN           .EQ  $0001
EPOUTEN          .EQ  $0002
EPCONDIS         .EQ  $0003
EPHSHK           .EQ  $0004


;----- UEP7 Bits -----------------------------------------------------
EPSTALL          .EQ  $0000
EPINEN           .EQ  $0001
EPOUTEN          .EQ  $0002
EPCONDIS         .EQ  $0003
EPHSHK           .EQ  $0004


;----- STATUS_SHAD Bits -----------------------------------------------------
C                .EQ  $0000
DC               .EQ  $0001
Z                .EQ  $0002



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
_WRT_ALL             .EQ  $3FFC  000h to 1FFFh write protected, no addresses may be modified by PMCON control
_WRT_HALF            .EQ  $3FFD  000h to 0FFFh write protected, 1000h to 1FFFh may be modified by PMCON control
_WRT_BOOT            .EQ  $3FFE  000h to 1FFh write protected, 200h to 1FFFh may be modified by PMCON control
_WRT_OFF             .EQ  $3FFF  Write protection off

_CPUDIV_NOCLKDIV     .EQ  $3FCF  NO CPU system divide
_CPUDIV_CLKDIV2      .EQ  $3FDF  CPU system clock divided by 2
_CPUDIV_CLKDIV3      .EQ  $3FEF  CPU system clock divided by 3
_CPUDIV_CLKDIV6      .EQ  $3FFF  CPU system clock divided by 6

_USBLSCLK_24MHz      .EQ  $3FBF  System clock expects 24 MHz, FS/LS USB CLKENs divide-by is set to 4.
_USBLSCLK_48MHz      .EQ  $3FFF  System clock expects 48 MHz, FS/LS USB CLKENs divide-by is set to 8.

_PLLMULT_4x          .EQ  $3F7F  4x Output Frequency Selected
_PLLMULT_3x          .EQ  $3FFF  3x Output Frequency Selected

_PLLEN_DISABLED      .EQ  $3EFF  3x or 4x PLL Disabled
_PLLEN_ENABLED       .EQ  $3FFF  3x or 4x PLL Enabled

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
