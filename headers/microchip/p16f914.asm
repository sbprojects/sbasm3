;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC16F914 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC16F914 microcontroller.  These names
;  are taken to match the data sheets as closely as possible.
;==========================================================================

;==========================================================================
;
;       Select cross overlay
;
;==========================================================================

                  .CR   pic14
                  .MS   4096

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
PORTC            .EQ  $0007
PORTD            .EQ  $0008
PORTE            .EQ  $0009
PCLATH           .EQ  $000A
INTCON           .EQ  $000B
PIR1             .EQ  $000C
PIR2             .EQ  $000D
TMR1             .EQ  $000E
TMR1L            .EQ  $000E
TMR1H            .EQ  $000F
T1CON            .EQ  $0010
TMR2             .EQ  $0011
T2CON            .EQ  $0012
SSPBUF           .EQ  $0013
SSPCON           .EQ  $0014
CCPR1            .EQ  $0015
CCPR1L           .EQ  $0015
CCPR1H           .EQ  $0016
CCP1CON          .EQ  $0017
RCSTA            .EQ  $0018
TXREG            .EQ  $0019
RCREG            .EQ  $001A
CCPR2            .EQ  $001B
CCPR2L           .EQ  $001B
CCPR2H           .EQ  $001C
CCP2CON          .EQ  $001D
ADRESH           .EQ  $001E
ADCON0           .EQ  $001F

;-----Bank1------------------
OPTION_REG       .EQ  $0081
TRISA            .EQ  $0085
TRISB            .EQ  $0086
TRISC            .EQ  $0087
TRISD            .EQ  $0088
TRISE            .EQ  $0089
PIE1             .EQ  $008C
PIE2             .EQ  $008D
PCON             .EQ  $008E
OSCCON           .EQ  $008F
OSCTUNE          .EQ  $0090
ANSEL            .EQ  $0091
PR2              .EQ  $0092
SSPADD           .EQ  $0093
SSPSTAT          .EQ  $0094
WPU              .EQ  $0095
WPUB             .EQ  $0095
IOC              .EQ  $0096
IOCB             .EQ  $0096
CMCON1           .EQ  $0097
TXSTA            .EQ  $0098
SPBRG            .EQ  $0099
CMCON0           .EQ  $009C
VRCON            .EQ  $009D
ADRESL           .EQ  $009E
ADCON1           .EQ  $009F

;-----Bank2------------------
WDTCON           .EQ  $0105
LCDCON           .EQ  $0107
LCDPS            .EQ  $0108
LVDCON           .EQ  $0109
EEDATA           .EQ  $010C
EEDATL           .EQ  $010C
EEADR            .EQ  $010D
EEADRL           .EQ  $010D
EEDATH           .EQ  $010E
EEADRH           .EQ  $010F
LCDDATA0         .EQ  $0110
LCDDATA1         .EQ  $0111
LCDDATA2         .EQ  $0112
LCDDATA3         .EQ  $0113
LCDDATA4         .EQ  $0114
LCDDATA5         .EQ  $0115
LCDDATA6         .EQ  $0116
LCDDATA7         .EQ  $0117
LCDDATA8         .EQ  $0118
LCDDATA9         .EQ  $0119
LCDDATA10        .EQ  $011A
LCDDATA11        .EQ  $011B
LCDSE0           .EQ  $011C
LCDSE1           .EQ  $011D
LCDSE2           .EQ  $011E

;-----Bank3------------------
EECON1           .EQ  $018C
EECON2           .EQ  $018D

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


;----- INTCON Bits -----------------------------------------------------
RBIF             .EQ  $0000
INTF             .EQ  $0001
TMR0IF           .EQ  $0002
RBIE             .EQ  $0003
INTE             .EQ  $0004
TMR0IE           .EQ  $0005
PEIE             .EQ  $0006
GIE              .EQ  $0007

T0IF             .EQ  $0002
T0IE             .EQ  $0005


;----- PIR1 Bits -----------------------------------------------------
TMR1IF           .EQ  $0000
TMR2IF           .EQ  $0001
CCP1IF           .EQ  $0002
SSPIF            .EQ  $0003
TXIF             .EQ  $0004
RCIF             .EQ  $0005
ADIF             .EQ  $0006
EEIF             .EQ  $0007


;----- PIR2 Bits -----------------------------------------------------
CCP2IF           .EQ  $0000
LVDIF            .EQ  $0002
LCDIF            .EQ  $0004
C1IF             .EQ  $0005
C2IF             .EQ  $0006
OSFIF            .EQ  $0007


;----- T1CON Bits -----------------------------------------------------
TMR1ON           .EQ  $0000
TMR1CS           .EQ  $0001
NOT_T1SYNC       .EQ  $0002
T1OSCEN          .EQ  $0003
TMR1GE           .EQ  $0006
T1GINV           .EQ  $0007

T1SYNC           .EQ  $0002
T1CKPS0          .EQ  $0004
T1CKPS1          .EQ  $0005
T1GE             .EQ  $0006

T1INSYNC         .EQ  $0002


;----- T2CON Bits -----------------------------------------------------
TMR2ON           .EQ  $0002

T2CKPS0          .EQ  $0000
T2CKPS1          .EQ  $0001
TOUTPS0          .EQ  $0003
TOUTPS1          .EQ  $0004
TOUTPS2          .EQ  $0005
TOUTPS3          .EQ  $0006


;----- SSPCON Bits -----------------------------------------------------
CKP              .EQ  $0004
SSPEN            .EQ  $0005
SSPOV            .EQ  $0006
WCOL             .EQ  $0007

SSPM0            .EQ  $0000
SSPM1            .EQ  $0001
SSPM2            .EQ  $0002
SSPM3            .EQ  $0003


;----- CCP1CON Bits -----------------------------------------------------
CCP1Y            .EQ  $0004
CCP1X            .EQ  $0005

CCP1M0           .EQ  $0000
CCP1M1           .EQ  $0001
CCP1M2           .EQ  $0002
CCP1M3           .EQ  $0003


;----- RCSTA Bits -----------------------------------------------------
RX9D             .EQ  $0000
OERR             .EQ  $0001
FERR             .EQ  $0002
ADDEN            .EQ  $0003
CREN             .EQ  $0004
SREN             .EQ  $0005
RX9              .EQ  $0006
SPEN             .EQ  $0007

RCD8             .EQ  $0000
RC9              .EQ  $0006

NOT_RC8          .EQ  $0006

RC8_9            .EQ  $0006


;----- CCP2CON Bits -----------------------------------------------------
CCP2Y            .EQ  $0004
CCP2X            .EQ  $0005

CCP2M0           .EQ  $0000
CCP2M1           .EQ  $0001
CCP2M2           .EQ  $0002
CCP2M3           .EQ  $0003


;----- ADCON0 Bits -----------------------------------------------------
ADON             .EQ  $0000
GO_NOT_DONE      .EQ  $0001
ADFM             .EQ  $0007

NOT_DONE         .EQ  $0001
CHS0             .EQ  $0002
CHS1             .EQ  $0003
CHS2             .EQ  $0004
VCFG0            .EQ  $0005
VCFG1            .EQ  $0006

GO_DONE          .EQ  $0001

GO               .EQ  $0001


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
SSPIE            .EQ  $0003
TXIE             .EQ  $0004
RCIE             .EQ  $0005
ADIE             .EQ  $0006
EEIE             .EQ  $0007


;----- PIE2 Bits -----------------------------------------------------
CCP2IE           .EQ  $0000
LVDIE            .EQ  $0002
LCDIE            .EQ  $0004
C1IE             .EQ  $0005
C2IE             .EQ  $0006
OSFIE            .EQ  $0007


;----- PCON Bits -----------------------------------------------------
NOT_BOR          .EQ  $0000
NOT_POR          .EQ  $0001
SBOREN           .EQ  $0004

NOT_BO           .EQ  $0000


;----- OSCCON Bits -----------------------------------------------------
SCS              .EQ  $0000
LTS              .EQ  $0001
HTS              .EQ  $0002
OSTS             .EQ  $0003

IRCF0            .EQ  $0004
IRCF1            .EQ  $0005
IRCF2            .EQ  $0006


;----- OSCTUNE Bits -----------------------------------------------------
TUN0             .EQ  $0000
TUN1             .EQ  $0001
TUN2             .EQ  $0002
TUN3             .EQ  $0003
TUN4             .EQ  $0004


;----- ANSEL Bits -----------------------------------------------------
ANS0             .EQ  $0000
ANS1             .EQ  $0001
ANS2             .EQ  $0002
ANS3             .EQ  $0003
ANS4             .EQ  $0004
ANS5             .EQ  $0005
ANS6             .EQ  $0006
ANS7             .EQ  $0007

AN0              .EQ  $0000
AN1              .EQ  $0001
AN2              .EQ  $0002
AN3              .EQ  $0003
AN4              .EQ  $0004
AN5              .EQ  $0005
AN6              .EQ  $0006
AN7              .EQ  $0007


;----- SSPSTAT Bits -----------------------------------------------------
BF               .EQ  $0000
UA               .EQ  $0001
R_NOT_W          .EQ  $0002
S                .EQ  $0003
P                .EQ  $0004
D_NOT_A          .EQ  $0005
CKE              .EQ  $0006
SMP              .EQ  $0007

R                .EQ  $0002
D                .EQ  $0005

I2C_READ         .EQ  $0002
I2C_START        .EQ  $0003
I2C_STOP         .EQ  $0004
I2C_DATA         .EQ  $0005

NOT_W            .EQ  $0002
NOT_A            .EQ  $0005

NOT_WRITE        .EQ  $0002
NOT_ADDRESS      .EQ  $0005

R_W              .EQ  $0002
D_A              .EQ  $0005

READ_WRITE       .EQ  $0002
DATA_ADDRESS     .EQ  $0005


;----- WPU Bits -----------------------------------------------------
WPUB0            .EQ  $0000
WPUB1            .EQ  $0001
WPUB2            .EQ  $0002
WPUB3            .EQ  $0003
WPUB4            .EQ  $0004
WPUB5            .EQ  $0005
WPUB6            .EQ  $0006
WPUB7            .EQ  $0007

WPU0             .EQ  $0000
WPU1             .EQ  $0001
WPU2             .EQ  $0002
WPU3             .EQ  $0003
WPU4             .EQ  $0004
WPU5             .EQ  $0005
WPU6             .EQ  $0006
WPU7             .EQ  $0007


;----- WPUB Bits -----------------------------------------------------
WPUB0            .EQ  $0000
WPUB1            .EQ  $0001
WPUB2            .EQ  $0002
WPUB3            .EQ  $0003
WPUB4            .EQ  $0004
WPUB5            .EQ  $0005
WPUB6            .EQ  $0006
WPUB7            .EQ  $0007

WPU0             .EQ  $0000
WPU1             .EQ  $0001
WPU2             .EQ  $0002
WPU3             .EQ  $0003
WPU4             .EQ  $0004
WPU5             .EQ  $0005
WPU6             .EQ  $0006
WPU7             .EQ  $0007


;----- IOC Bits -----------------------------------------------------
IOCB4            .EQ  $0004
IOCB5            .EQ  $0005
IOCB6            .EQ  $0006
IOCB7            .EQ  $0007

IOC4             .EQ  $0004
IOC5             .EQ  $0005
IOC6             .EQ  $0006
IOC7             .EQ  $0007


;----- IOCB Bits -----------------------------------------------------
IOCB4            .EQ  $0004
IOCB5            .EQ  $0005
IOCB6            .EQ  $0006
IOCB7            .EQ  $0007

IOC4             .EQ  $0004
IOC5             .EQ  $0005
IOC6             .EQ  $0006
IOC7             .EQ  $0007


;----- CMCON1 Bits -----------------------------------------------------
C2SYNC           .EQ  $0000
T1GSS            .EQ  $0001


;----- TXSTA Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SYNC             .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007

TXD8             .EQ  $0000
NOT_TX8          .EQ  $0006

TX8_9            .EQ  $0006


;----- CMCON0 Bits -----------------------------------------------------
CIS              .EQ  $0003
C1INV            .EQ  $0004
C2INV            .EQ  $0005
C1OUT            .EQ  $0006
C2OUT            .EQ  $0007

CM0              .EQ  $0000
CM1              .EQ  $0001
CM2              .EQ  $0002


;----- VRCON Bits -----------------------------------------------------
VRR              .EQ  $0005
VREN             .EQ  $0007

VR0              .EQ  $0000
VR1              .EQ  $0001
VR2              .EQ  $0002
VR3              .EQ  $0003


;----- ADCON1 Bits -----------------------------------------------------
ADCS0            .EQ  $0004
ADCS1            .EQ  $0005
ADCS2            .EQ  $0006


;----- WDTCON Bits -----------------------------------------------------
SWDTEN           .EQ  $0000

SWDTE            .EQ  $0000
WDTPS0           .EQ  $0001
WDTPS1           .EQ  $0002
WDTPS2           .EQ  $0003
WDTPS3           .EQ  $0004


;----- LCDCON Bits -----------------------------------------------------
VLCDEN           .EQ  $0004
WERR             .EQ  $0005
SLPEN            .EQ  $0006
LCDEN            .EQ  $0007

LMUX0            .EQ  $0000
LMUX1            .EQ  $0001
CS0              .EQ  $0002
CS1              .EQ  $0003


;----- LCDPS Bits -----------------------------------------------------
WA               .EQ  $0004
LCDA             .EQ  $0005
BIASMD           .EQ  $0006
WFT              .EQ  $0007

LP0              .EQ  $0000
LP1              .EQ  $0001
LP2              .EQ  $0002
LP3              .EQ  $0003


;----- LVDCON Bits -----------------------------------------------------
LVDEN            .EQ  $0004
IRVST            .EQ  $0005

LVDL0            .EQ  $0000
LVDL1            .EQ  $0001
LVDL2            .EQ  $0002


;----- EEDATA Bits -----------------------------------------------------
EEDATL0          .EQ  $0000
EEDATL1          .EQ  $0001
EEDATL2          .EQ  $0002
EEDATL3          .EQ  $0003
EEDATL4          .EQ  $0004
EEDATL5          .EQ  $0005
EEDATL6          .EQ  $0006
EEDATL7          .EQ  $0007


;----- EEDATL Bits -----------------------------------------------------
EEDATL0          .EQ  $0000
EEDATL1          .EQ  $0001
EEDATL2          .EQ  $0002
EEDATL3          .EQ  $0003
EEDATL4          .EQ  $0004
EEDATL5          .EQ  $0005
EEDATL6          .EQ  $0006
EEDATL7          .EQ  $0007


;----- EEADR Bits -----------------------------------------------------
EEADRL0          .EQ  $0000
EEADRL1          .EQ  $0001
EEADRL2          .EQ  $0002
EEADRL3          .EQ  $0003
EEADRL4          .EQ  $0004
EEADRL5          .EQ  $0005
EEADRL6          .EQ  $0006
EEADRL7          .EQ  $0007


;----- EEADRL Bits -----------------------------------------------------
EEADRL0          .EQ  $0000
EEADRL1          .EQ  $0001
EEADRL2          .EQ  $0002
EEADRL3          .EQ  $0003
EEADRL4          .EQ  $0004
EEADRL5          .EQ  $0005
EEADRL6          .EQ  $0006
EEADRL7          .EQ  $0007


;----- EEDATH Bits -----------------------------------------------------
EEDATH0          .EQ  $0000
EEDATH1          .EQ  $0001
EEDATH2          .EQ  $0002
EEDATH3          .EQ  $0003
EEDATH4          .EQ  $0004
EEDATH5          .EQ  $0005


;----- EEADRH Bits -----------------------------------------------------
EEADRH0          .EQ  $0000
EEADRH1          .EQ  $0001
EEADRH2          .EQ  $0002
EEADRH3          .EQ  $0003
EEADRH4          .EQ  $0004


;----- LCDDATA0 Bits -----------------------------------------------------
SEG0             .EQ  $0000
SEG1             .EQ  $0001
SEG2             .EQ  $0002
SEG3             .EQ  $0003
SEG4             .EQ  $0004
SEG5             .EQ  $0005
SEG6             .EQ  $0006
SEG7             .EQ  $0007

SEG0COM0         .EQ  $0000
SEG1COM0         .EQ  $0001
SEG2COM0         .EQ  $0002
SEG3COM0         .EQ  $0003
SEG4COM0         .EQ  $0004
SEG5COM0         .EQ  $0005
SEG6COM0         .EQ  $0006
SEG7COM0         .EQ  $0007

S0C0             .EQ  $0000
S1C0             .EQ  $0001
S2C0             .EQ  $0002
S3C0             .EQ  $0003
S4C0             .EQ  $0004
S5C0             .EQ  $0005
S6C0             .EQ  $0006
S7C0             .EQ  $0007


;----- LCDDATA1 Bits -----------------------------------------------------
SEG8             .EQ  $0000
SEG9             .EQ  $0001
SEG10            .EQ  $0002
SEG11            .EQ  $0003
SEG12            .EQ  $0004
SEG13            .EQ  $0005
SEG14            .EQ  $0006
SEG15            .EQ  $0007

SEG8COM0         .EQ  $0000
SEG9COM0         .EQ  $0001
SEG10COM0        .EQ  $0002
SEG11COM0        .EQ  $0003
SEG12COM0        .EQ  $0004
SEG13COM0        .EQ  $0005
SEG14COM0        .EQ  $0006
SEG15COM0        .EQ  $0007

S8C0             .EQ  $0000
S9C0             .EQ  $0001
S10C0            .EQ  $0002
S11C0            .EQ  $0003
S12C0            .EQ  $0004
S13C0            .EQ  $0005
S14C0            .EQ  $0006
S15C0            .EQ  $0007


;----- LCDDATA2 Bits -----------------------------------------------------
SEG16            .EQ  $0000
SEG17            .EQ  $0001
SEG18            .EQ  $0002
SEG19            .EQ  $0003
SEG20            .EQ  $0004
SEG21            .EQ  $0005
SEG22            .EQ  $0006
SEG23            .EQ  $0007

SEG16COM0        .EQ  $0000
SEG17COM0        .EQ  $0001
SEG18COM0        .EQ  $0002
SEG19COM0        .EQ  $0003
SEG20COM0        .EQ  $0004
SEG21COM0        .EQ  $0005
SEG22COM0        .EQ  $0006
SEG23COM0        .EQ  $0007

S16C0            .EQ  $0000
S17C0            .EQ  $0001
S18C0            .EQ  $0002
S19C0            .EQ  $0003
S20C0            .EQ  $0004
S21C0            .EQ  $0005
S22C0            .EQ  $0006
S23C0            .EQ  $0007


;----- LCDDATA3 Bits -----------------------------------------------------
SEG0             .EQ  $0000
SEG1             .EQ  $0001
SEG2             .EQ  $0002
SEG3             .EQ  $0003
SEG4             .EQ  $0004
SEG5             .EQ  $0005
SEG6             .EQ  $0006
SEG7             .EQ  $0007

SEG0COM1         .EQ  $0000
SEG1COM1         .EQ  $0001
SEG2COM1         .EQ  $0002
SEG3COM1         .EQ  $0003
SEG4COM1         .EQ  $0004
SEG5COM1         .EQ  $0005
SEG6COM1         .EQ  $0006
SEG7COM1         .EQ  $0007

S0C1             .EQ  $0000
S1C1             .EQ  $0001
S2C1             .EQ  $0002
S3C1             .EQ  $0003
S4C1             .EQ  $0004
S5C1             .EQ  $0005
S6C1             .EQ  $0006
S7C1             .EQ  $0007


;----- LCDDATA4 Bits -----------------------------------------------------
SEG8             .EQ  $0000
SEG9             .EQ  $0001
SEG10            .EQ  $0002
SEG11            .EQ  $0003
SEG12            .EQ  $0004
SEG13            .EQ  $0005
SEG14            .EQ  $0006
SEG15            .EQ  $0007

SEG8COM1         .EQ  $0000
SEG9COM1         .EQ  $0001
SEG10COM1        .EQ  $0002
SEG11COM1        .EQ  $0003
SEG12COM1        .EQ  $0004
SEG13COM1        .EQ  $0005
SEG14COM1        .EQ  $0006
SEG15COM1        .EQ  $0007

S8C1             .EQ  $0000
S9C1             .EQ  $0001
S10C1            .EQ  $0002
S11C1            .EQ  $0003
S12C1            .EQ  $0004
S13C1            .EQ  $0005
S14C1            .EQ  $0006
S15C1            .EQ  $0007


;----- LCDDATA5 Bits -----------------------------------------------------
SEG16            .EQ  $0000
SEG17            .EQ  $0001
SEG18            .EQ  $0002
SEG19            .EQ  $0003
SEG20            .EQ  $0004
SEG21            .EQ  $0005
SEG22            .EQ  $0006
SEG23            .EQ  $0007

SEG16COM1        .EQ  $0000
SEG17COM1        .EQ  $0001
SEG18COM1        .EQ  $0002
SEG19COM1        .EQ  $0003
SEG20COM1        .EQ  $0004
SEG21COM1        .EQ  $0005
SEG22COM1        .EQ  $0006
SEG23COM1        .EQ  $0007

S16C1            .EQ  $0000
S17C1            .EQ  $0001
S18C1            .EQ  $0002
S19C1            .EQ  $0003
S20C1            .EQ  $0004
S21C1            .EQ  $0005
S22C1            .EQ  $0006
S23C1            .EQ  $0007


;----- LCDDATA6 Bits -----------------------------------------------------
SEG0             .EQ  $0000
SEG1             .EQ  $0001
SEG2             .EQ  $0002
SEG3             .EQ  $0003
SEG4             .EQ  $0004
SEG5             .EQ  $0005
SEG6             .EQ  $0006
SEG7             .EQ  $0007

SEG0COM2         .EQ  $0000
SEG1COM2         .EQ  $0001
SEG2COM2         .EQ  $0002
SEG3COM2         .EQ  $0003
SEG4COM2         .EQ  $0004
SEG5COM2         .EQ  $0005
SEG6COM2         .EQ  $0006
SEG7COM2         .EQ  $0007

S0C2             .EQ  $0000
S1C2             .EQ  $0001
S2C2             .EQ  $0002
S3C2             .EQ  $0003
S4C2             .EQ  $0004
S5C2             .EQ  $0005
S6C2             .EQ  $0006
S7C2             .EQ  $0007


;----- LCDDATA7 Bits -----------------------------------------------------
SEG8             .EQ  $0000
SEG9             .EQ  $0001
SEG10            .EQ  $0002
SEG11            .EQ  $0003
SEG12            .EQ  $0004
SEG13            .EQ  $0005
SEG14            .EQ  $0006
SEG15            .EQ  $0007

SEG8COM2         .EQ  $0000
SEG9COM2         .EQ  $0001
SEG10COM2        .EQ  $0002
SEG11COM2        .EQ  $0003
SEG12COM2        .EQ  $0004
SEG13COM2        .EQ  $0005
SEG14COM2        .EQ  $0006
SEG15COM2        .EQ  $0007

S8C2             .EQ  $0000
S9C2             .EQ  $0001
S10C2            .EQ  $0002
S11C2            .EQ  $0003
S12C2            .EQ  $0004
S13C2            .EQ  $0005
S14C2            .EQ  $0006
S15C2            .EQ  $0007


;----- LCDDATA8 Bits -----------------------------------------------------
SEG16            .EQ  $0000
SEG17            .EQ  $0001
SEG18            .EQ  $0002
SEG19            .EQ  $0003
SEG20            .EQ  $0004
SEG21            .EQ  $0005
SEG22            .EQ  $0006
SEG23            .EQ  $0007

SEG16COM2        .EQ  $0000
SEG17COM2        .EQ  $0001
SEG18COM2        .EQ  $0002
SEG19COM2        .EQ  $0003
SEG20COM2        .EQ  $0004
SEG21COM2        .EQ  $0005
SEG22COM2        .EQ  $0006
SEG23COM2        .EQ  $0007

S16C2            .EQ  $0000
S17C2            .EQ  $0001
S18C2            .EQ  $0002
S19C2            .EQ  $0003
S20C2            .EQ  $0004
S21C2            .EQ  $0005
S22C2            .EQ  $0006
S23C2            .EQ  $0007


;----- LCDDATA9 Bits -----------------------------------------------------
SEG0             .EQ  $0000
SEG1             .EQ  $0001
SEG2             .EQ  $0002
SEG3             .EQ  $0003
SEG4             .EQ  $0004
SEG5             .EQ  $0005
SEG6             .EQ  $0006
SEG7             .EQ  $0007

SEG0COM3         .EQ  $0000
SEG1COM3         .EQ  $0001
SEG2COM3         .EQ  $0002
SEG3COM3         .EQ  $0003
SEG4COM3         .EQ  $0004
SEG5COM3         .EQ  $0005
SEG6COM3         .EQ  $0006
SEG7COM3         .EQ  $0007

S0C3             .EQ  $0000
S1C3             .EQ  $0001
S2C3             .EQ  $0002
S3C3             .EQ  $0003
S4C3             .EQ  $0004
S5C3             .EQ  $0005
S6C3             .EQ  $0006
S7C3             .EQ  $0007


;----- LCDDATA10 Bits -----------------------------------------------------
SEG8             .EQ  $0000
SEG9             .EQ  $0001
SEG10            .EQ  $0002
SEG11            .EQ  $0003
SEG12            .EQ  $0004
SEG13            .EQ  $0005
SEG14            .EQ  $0006
SEG15            .EQ  $0007

SEG8COM3         .EQ  $0000
SEG9COM3         .EQ  $0001
SEG10COM3        .EQ  $0002
SEG11COM3        .EQ  $0003
SEG12COM3        .EQ  $0004
SEG13COM3        .EQ  $0005
SEG14COM3        .EQ  $0006
SEG15COM3        .EQ  $0007

S8C3             .EQ  $0000
S9C3             .EQ  $0001
S10C3            .EQ  $0002
S11C3            .EQ  $0003
S12C3            .EQ  $0004
S13C3            .EQ  $0005
S14C3            .EQ  $0006
S15C3            .EQ  $0007


;----- LCDDATA11 Bits -----------------------------------------------------
SEG16            .EQ  $0000
SEG17            .EQ  $0001
SEG18            .EQ  $0002
SEG19            .EQ  $0003
SEG20            .EQ  $0004
SEG21            .EQ  $0005
SEG22            .EQ  $0006
SEG23            .EQ  $0007

SEG16COM3        .EQ  $0000
SEG17COM3        .EQ  $0001
SEG18COM3        .EQ  $0002
SEG19COM3        .EQ  $0003
SEG20COM3        .EQ  $0004
SEG21COM3        .EQ  $0005
SEG22COM3        .EQ  $0006
SEG23COM3        .EQ  $0007

S16C3            .EQ  $0000
S17C3            .EQ  $0001
S18C3            .EQ  $0002
S19C3            .EQ  $0003
S20C3            .EQ  $0004
S21C3            .EQ  $0005
S22C3            .EQ  $0006
S23C3            .EQ  $0007


;----- LCDSE0 Bits -----------------------------------------------------
SEG0             .EQ  $0000
SEG1             .EQ  $0001
SEG2             .EQ  $0002
SEG3             .EQ  $0003
SEG4             .EQ  $0004
SEG5             .EQ  $0005
SEG6             .EQ  $0006
SEG7             .EQ  $0007

SE0              .EQ  $0000
SE1              .EQ  $0001
SE2              .EQ  $0002
SE3              .EQ  $0003
SE4              .EQ  $0004
SE5              .EQ  $0005
SE6              .EQ  $0006
SE7              .EQ  $0007

SEGEN0           .EQ  $0000
SEGEN1           .EQ  $0001
SEGEN2           .EQ  $0002
SEGEN3           .EQ  $0003
SEGEN4           .EQ  $0004
SEGEN5           .EQ  $0005
SEGEN6           .EQ  $0006
SEGEN7           .EQ  $0007


;----- LCDSE1 Bits -----------------------------------------------------
SEG8             .EQ  $0000
SEG9             .EQ  $0001
SEG10            .EQ  $0002
SEG11            .EQ  $0003
SEG12            .EQ  $0004
SEG13            .EQ  $0005
SEG14            .EQ  $0006
SEG15            .EQ  $0007

SE8              .EQ  $0000
SE9              .EQ  $0001
SE10             .EQ  $0002
SE11             .EQ  $0003
SE12             .EQ  $0004
SE13             .EQ  $0005
SE14             .EQ  $0006
SE15             .EQ  $0007

SEGEN8           .EQ  $0000
SEGEN9           .EQ  $0001
SEGEN10          .EQ  $0002
SEGEN11          .EQ  $0003
SEGEN12          .EQ  $0004
SEGEN13          .EQ  $0005
SEGEN14          .EQ  $0006
SEGEN15          .EQ  $0007


;----- LCDSE2 Bits -----------------------------------------------------
SEG16            .EQ  $0000
SEG17            .EQ  $0001
SEG18            .EQ  $0002
SEG19            .EQ  $0003
SEG20            .EQ  $0004
SEG21            .EQ  $0005
SEG22            .EQ  $0006
SEG23            .EQ  $0007

SE16             .EQ  $0000
SE17             .EQ  $0001
SE18             .EQ  $0002
SE19             .EQ  $0003
SE20             .EQ  $0004
SE21             .EQ  $0005
SE22             .EQ  $0006
SE23             .EQ  $0007

SEGEN16          .EQ  $0000
SEGEN17          .EQ  $0001
SEGEN18          .EQ  $0002
SEGEN19          .EQ  $0003
SEGEN20          .EQ  $0004
SEGEN21          .EQ  $0005
SEGEN22          .EQ  $0006
SEGEN23          .EQ  $0007


;----- EECON1 Bits -----------------------------------------------------
RD               .EQ  $0000
WR               .EQ  $0001
WREN             .EQ  $0002
WRERR            .EQ  $0003
EEPGD            .EQ  $0007

EERD             .EQ  $0000
EEWR             .EQ  $0001




;==========================================================================
;
;       RAM Definitions
;
;==========================================================================

_MAXRAM          .EQ  $01FF

;==========================================================================
;
;       Configuration Bits
;
;   NAME            Address
;   CONFIG            2007h
;
;==========================================================================

; The following is an assignment of address values for all of the
; configuration registers for the purpose of table reads
_CONFIG         .EQ  $2007

;----- CONFIG Options --------------------------------------------------
_FOSC_LP             .EQ  $3FF8  LP oscillator: Low-power crystal on RA6/OSC2/CLKOUT/T1OSO and RA7/OSC1/CLKIN/T1OSI
_LP_OSC              .EQ  $3FF8  LP oscillator: Low-power crystal on RA6/OSC2/CLKOUT/T1OSO and RA7/OSC1/CLKIN/T1OSI
_FOSC_XT             .EQ  $3FF9  XT oscillator: Crystal/resonator on RA6/OSC2/CLKOUT/T1OSO and RA7/OSC1/CLKIN/T1OSI
_XT_OSC              .EQ  $3FF9  XT oscillator: Crystal/resonator on RA6/OSC2/CLKOUT/T1OSO and RA7/OSC1/CLKIN/T1OSI
_FOSC_HS             .EQ  $3FFA  HS oscillator: High-speed crystal/resonator on RA6/OSC2/CLKOUT/T1OSO and RA7/OSC1/CLKIN/T1OSI
_HS_OSC              .EQ  $3FFA  HS oscillator: High-speed crystal/resonator on RA6/OSC2/CLKOUT/T1OSO and RA7/OSC1/CLKIN/T1OSI
_FOSC_EC             .EQ  $3FFB  EC: I/O function on RA6/OSC2/CLKOUT/T1OSO pin, CLKIN on RA7/OSC1/CLKIN/T1OSI
_EC_OSC              .EQ  $3FFB  EC: I/O function on RA6/OSC2/CLKOUT/T1OSO pin, CLKIN on RA7/OSC1/CLKIN/T1OSI
_FOSC_INTOSCIO       .EQ  $3FFC  INTOSCIO oscillator: I/O function on RA6/OSC2/CLKOUT/T1OSO pin, I/O function on RA7/OSC1/CLKIN/T1OSI
_INTRC_OSC_NOCLKOUT  .EQ  $3FFC  INTOSCIO oscillator: I/O function on RA6/OSC2/CLKOUT/T1OSO pin, I/O function on RA7/OSC1/CLKIN/T1OSI
_INTOSCIO            .EQ  $3FFC  INTOSCIO oscillator: I/O function on RA6/OSC2/CLKOUT/T1OSO pin, I/O function on RA7/OSC1/CLKIN/T1OSI
_FOSC_INTOSCCLK      .EQ  $3FFD  INTOSC oscillator: CLKOUT function on RA6/OSC2/CLKOUT/T1OSO pin, I/O function on RA7/OSC1/CLKIN/T1OSI
_INTRC_OSC_CLKOUT    .EQ  $3FFD  INTOSC oscillator: CLKOUT function on RA6/OSC2/CLKOUT/T1OSO pin, I/O function on RA7/OSC1/CLKIN/T1OSI
_INTOSC              .EQ  $3FFD  INTOSC oscillator: CLKOUT function on RA6/OSC2/CLKOUT/T1OSO pin, I/O function on RA7/OSC1/CLKIN/T1OSI
_FOSC_EXTRCIO        .EQ  $3FFE  RCIO oscillator: I/O function on RA6/OSC2/CLKOUT/T1OSO pin, RC on RA7/OSC1/CLKIN/T1OSI
_EXTRC_OSC_NOCLKOUT  .EQ  $3FFE  RCIO oscillator: I/O function on RA6/OSC2/CLKOUT/T1OSO pin, RC on RA7/OSC1/CLKIN/T1OSI
_EXTRCIO             .EQ  $3FFE  RCIO oscillator: I/O function on RA6/OSC2/CLKOUT/T1OSO pin, RC on RA7/OSC1/CLKIN/T1OSI
_FOSC_EXTRCCLK       .EQ  $3FFF  RC oscillator: CLKOUT function on RA6/OSC2/CLKOUT/T1OSO pin, RC on RA7/OSC1/CLKIN/T1OSI
_EXTRC_OSC_CLKOUT    .EQ  $3FFF  RC oscillator: CLKOUT function on RA6/OSC2/CLKOUT/T1OSO pin, RC on RA7/OSC1/CLKIN/T1OSI
_EXTRC               .EQ  $3FFF  RC oscillator: CLKOUT function on RA6/OSC2/CLKOUT/T1OSO pin, RC on RA7/OSC1/CLKIN/T1OSI

_WDTE_OFF            .EQ  $3FF7  WDT disabled and can be enabled by SWDTEN bit of the WDTCON register
_WDT_OFF             .EQ  $3FF7  WDT disabled and can be enabled by SWDTEN bit of the WDTCON register
_WDTE_ON             .EQ  $3FFF  WDT enabled
_WDT_ON              .EQ  $3FFF  WDT enabled

_PWRTE_ON            .EQ  $3FEF  PWRT enabled
_PWRTE_OFF           .EQ  $3FFF  PWRT disabled

_MCLRE_OFF           .EQ  $3FDF  RE3/MCLR pin function is digital input, MCLR internally tied to VDD
_MCLRE_ON            .EQ  $3FFF  RE3/MCLR pin function is MCLR

_CP_ON               .EQ  $3FBF  Program memory code protection is enabled
_CP_OFF              .EQ  $3FFF  Program memory code protection is disabled

_CPD_ON              .EQ  $3F7F  Data memory code protection is enabled
_CPD_OFF             .EQ  $3FFF  Data memory code protection is disabled

_BOREN_OFF           .EQ  $3CFF  BOR disabled
_BOD_OFF             .EQ  $3CFF  BOR disabled
_BOREN_SBODEN        .EQ  $3DFF  BOR controlled by SBOREN bit of the PCON register
_BOD_SBODEN          .EQ  $3DFF  BOR controlled by SBOREN bit of the PCON register
_BOREN_NSLEEP        .EQ  $3EFF  BOR enabled during operation and disabled in Sleep
_BOD_NSLEEP          .EQ  $3EFF  BOR enabled during operation and disabled in Sleep
_BOREN_ON            .EQ  $3FFF  BOR enabled
_BOD_ON              .EQ  $3FFF  BOR enabled

_IESO_OFF            .EQ  $3BFF  Internal/External Switchover mode is disabled
_IESO_ON             .EQ  $3FFF  Internal/External Switchover mode is enabled

_FCMEN_OFF           .EQ  $37FF  Fail-Safe Clock Monitor is disabled
_FCMEN_ON            .EQ  $3FFF  Fail-Safe Clock Monitor is enabled

_DEBUG_ON            .EQ  $2FFF  In-Circuit Debugger enabled, RB6/ICSPCLK and RB7/ICSPDAT are dedicated to the debugger
_DEBUG_OFF           .EQ  $3FFF  In-Circuit Debugger disabled, RB6/ISCPCLK and RB7/ICSPDAT are general purpose I/O pins

;----- DEVID Equates --------------------------------------------------
_DEVID1          .EQ  $2006

;----- IDLOC Equates --------------------------------------------------
_IDLOC0          .EQ  $2000
_IDLOC1          .EQ  $2001
_IDLOC2          .EQ  $2002
_IDLOC3          .EQ  $2003
