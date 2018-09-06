;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC18LF2515 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC18LF2515 microcontroller.  These names
;  are taken to match the data sheets as closely as possible.
;==========================================================================

;==========================================================================
;
;       Select cross overlay
;
;==========================================================================

                  .CR   pic16
                  .MS   24576

;==========================================================================
;       18xxxx Family        .EQates
;==========================================================================
FSR0             .EQ  0
FSR1             .EQ  1
FSR2             .EQ  2

FAST             .EQ  1

W                .EQ  0
A                .EQ  0
ACCESS           .EQ  0
BANKED           .EQ  1
;==========================================================================

;==========================================================================
;       16Cxxx/17Cxxx Substitutions
;==========================================================================
  #define DDRA  TRISA      ; PIC17Cxxx SFR substitution
  #define DDRB  TRISB      ; PIC17Cxxx SFR substitution
  #define DDRC  TRISC      ; PIC17Cxxx SFR substitution
  #define DDRD  TRISD      ; PIC17Cxxx SFR substitution
  #define DDRE  TRISE      ; PIC17Cxxx SFR substitution

;==========================================================================
;
;       Register Definitions
;
;==========================================================================

;----- Register Files -----------------------------------------------------
PORTA            .EQ  $0F80
PORTB            .EQ  $0F81
PORTC            .EQ  $0F82
PORTE            .EQ  $0F84
LATA             .EQ  $0F89
LATB             .EQ  $0F8A
LATC             .EQ  $0F8B
DDRA             .EQ  $0F92
TRISA            .EQ  $0F92
DDRB             .EQ  $0F93
TRISB            .EQ  $0F93
DDRC             .EQ  $0F94
TRISC            .EQ  $0F94
OSCTUNE          .EQ  $0F9B
PIE1             .EQ  $0F9D
PIR1             .EQ  $0F9E
IPR1             .EQ  $0F9F
PIE2             .EQ  $0FA0
PIR2             .EQ  $0FA1
IPR2             .EQ  $0FA2
RCSTA            .EQ  $0FAB
TXSTA            .EQ  $0FAC
TXREG            .EQ  $0FAD
RCREG            .EQ  $0FAE
SPBRG            .EQ  $0FAF
SPBRGH           .EQ  $0FB0
T3CON            .EQ  $0FB1
TMR3             .EQ  $0FB2
TMR3L            .EQ  $0FB2
TMR3H            .EQ  $0FB3
CMCON            .EQ  $0FB4
CVRCON           .EQ  $0FB5
ECCP1AS          .EQ  $0FB6
ECCPAS           .EQ  $0FB6
ECCP1DEL         .EQ  $0FB7
PWM1CON          .EQ  $0FB7
BAUDCON          .EQ  $0FB8
BAUDCTL          .EQ  $0FB8
CCP2CON          .EQ  $0FBA
CCPR2            .EQ  $0FBB
CCPR2L           .EQ  $0FBB
CCPR2H           .EQ  $0FBC
CCP1CON          .EQ  $0FBD
CCPR1            .EQ  $0FBE
CCPR1L           .EQ  $0FBE
CCPR1H           .EQ  $0FBF
ADCON2           .EQ  $0FC0
ADCON1           .EQ  $0FC1
ADCON0           .EQ  $0FC2
ADRES            .EQ  $0FC3
ADRESL           .EQ  $0FC3
ADRESH           .EQ  $0FC4
SSPCON2          .EQ  $0FC5
SSPCON1          .EQ  $0FC6
SSPSTAT          .EQ  $0FC7
SSPADD           .EQ  $0FC8
SSPBUF           .EQ  $0FC9
T2CON            .EQ  $0FCA
PR2              .EQ  $0FCB
TMR2             .EQ  $0FCC
T1CON            .EQ  $0FCD
TMR1             .EQ  $0FCE
TMR1L            .EQ  $0FCE
TMR1H            .EQ  $0FCF
RCON             .EQ  $0FD0
WDTCON           .EQ  $0FD1
HLVDCON          .EQ  $0FD2
LVDCON           .EQ  $0FD2
OSCCON           .EQ  $0FD3
T0CON            .EQ  $0FD5
TMR0             .EQ  $0FD6
TMR0L            .EQ  $0FD6
TMR0H            .EQ  $0FD7
STATUS           .EQ  $0FD8
FSR2L            .EQ  $0FD9
FSR2H            .EQ  $0FDA
PLUSW2           .EQ  $0FDB
PREINC2          .EQ  $0FDC
POSTDEC2         .EQ  $0FDD
POSTINC2         .EQ  $0FDE
INDF2            .EQ  $0FDF
BSR              .EQ  $0FE0
FSR1L            .EQ  $0FE1
FSR1H            .EQ  $0FE2
PLUSW1           .EQ  $0FE3
PREINC1          .EQ  $0FE4
POSTDEC1         .EQ  $0FE5
POSTINC1         .EQ  $0FE6
INDF1            .EQ  $0FE7
WREG             .EQ  $0FE8
FSR0L            .EQ  $0FE9
FSR0H            .EQ  $0FEA
PLUSW0           .EQ  $0FEB
PREINC0          .EQ  $0FEC
POSTDEC0         .EQ  $0FED
POSTINC0         .EQ  $0FEE
INDF0            .EQ  $0FEF
INTCON3          .EQ  $0FF0
INTCON2          .EQ  $0FF1
INTCON           .EQ  $0FF2
PROD             .EQ  $0FF3
PRODL            .EQ  $0FF3
PRODH            .EQ  $0FF4
TABLAT           .EQ  $0FF5
TBLPTR           .EQ  $0FF6
TBLPTRL          .EQ  $0FF6
TBLPTRH          .EQ  $0FF7
TBLPTRU          .EQ  $0FF8
PC               .EQ  $0FF9
PCL              .EQ  $0FF9
PCLATH           .EQ  $0FFA
PCLATU           .EQ  $0FFB
STKPTR           .EQ  $0FFC
TOS              .EQ  $0FFD
TOSL             .EQ  $0FFD
TOSH             .EQ  $0FFE
TOSU             .EQ  $0FFF

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
T0CKI            .EQ  $0004
AN4              .EQ  $0005
OSC2             .EQ  $0006
OSC1             .EQ  $0007

VREFN            .EQ  $0002
VREFP            .EQ  $0003
SS               .EQ  $0005
CLKO             .EQ  $0006
CLKI             .EQ  $0007

CVREF            .EQ  $0002
NOT_SS           .EQ  $0005

LVDIN            .EQ  $0005

HLVDIN           .EQ  $0005


;----- PORTB Bits -----------------------------------------------------
RB0              .EQ  $0000
RB1              .EQ  $0001
RB2              .EQ  $0002
RB3              .EQ  $0003
RB4              .EQ  $0004
RB5              .EQ  $0005
RB6              .EQ  $0006
RB7              .EQ  $0007

INT0             .EQ  $0000
INT1             .EQ  $0001
INT2             .EQ  $0002
CCP2_PORTB       .EQ  $0003
KBI0             .EQ  $0004
KBI1             .EQ  $0005
KBI2             .EQ  $0006
KBI3             .EQ  $0007

AN12             .EQ  $0000
AN10             .EQ  $0001
AN8              .EQ  $0002
AN9              .EQ  $0003
AN11             .EQ  $0004
PGM              .EQ  $0005
PGC              .EQ  $0006
PGD              .EQ  $0007


;----- PORTC Bits -----------------------------------------------------
RC0              .EQ  $0000
RC1              .EQ  $0001
RC2              .EQ  $0002
RC3              .EQ  $0003
RC4              .EQ  $0004
RC5              .EQ  $0005
RC6              .EQ  $0006
RC7              .EQ  $0007

T1OSO            .EQ  $0000
T1OSI            .EQ  $0001
CCP1             .EQ  $0002
SCK              .EQ  $0003
SDI              .EQ  $0004
SDO              .EQ  $0005
TX               .EQ  $0006
RX               .EQ  $0007

T13CKI           .EQ  $0000
CCP2_PORTC       .EQ  $0001
SCL              .EQ  $0003
SDA              .EQ  $0004
CK               .EQ  $0006
; DT is a reserved word
; DT               .EQ  $0007

T1CKI            .EQ  $0000


;----- PORTE Bits -----------------------------------------------------
RE3              .EQ  $0003

MCLR             .EQ  $0003

NOT_MCLR         .EQ  $0003

VPP              .EQ  $0003


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


;----- DDRA Bits -----------------------------------------------------
TRISA0           .EQ  $0000
TRISA1           .EQ  $0001
TRISA2           .EQ  $0002
TRISA3           .EQ  $0003
TRISA4           .EQ  $0004
TRISA5           .EQ  $0005
TRISA6           .EQ  $0006
TRISA7           .EQ  $0007

RA0              .EQ  $0000
RA1              .EQ  $0001
RA2              .EQ  $0002
RA3              .EQ  $0003
RA4              .EQ  $0004
RA5              .EQ  $0005
RA6              .EQ  $0006
RA7              .EQ  $0007


;----- TRISA Bits -----------------------------------------------------
TRISA0           .EQ  $0000
TRISA1           .EQ  $0001
TRISA2           .EQ  $0002
TRISA3           .EQ  $0003
TRISA4           .EQ  $0004
TRISA5           .EQ  $0005
TRISA6           .EQ  $0006
TRISA7           .EQ  $0007

RA0              .EQ  $0000
RA1              .EQ  $0001
RA2              .EQ  $0002
RA3              .EQ  $0003
RA4              .EQ  $0004
RA5              .EQ  $0005
RA6              .EQ  $0006
RA7              .EQ  $0007


;----- DDRB Bits -----------------------------------------------------
TRISB0           .EQ  $0000
TRISB1           .EQ  $0001
TRISB2           .EQ  $0002
TRISB3           .EQ  $0003
TRISB4           .EQ  $0004
TRISB5           .EQ  $0005
TRISB6           .EQ  $0006
TRISB7           .EQ  $0007

RB0              .EQ  $0000
RB1              .EQ  $0001
RB2              .EQ  $0002
RB3              .EQ  $0003
RB4              .EQ  $0004
RB5              .EQ  $0005
RB6              .EQ  $0006
RB7              .EQ  $0007


;----- TRISB Bits -----------------------------------------------------
TRISB0           .EQ  $0000
TRISB1           .EQ  $0001
TRISB2           .EQ  $0002
TRISB3           .EQ  $0003
TRISB4           .EQ  $0004
TRISB5           .EQ  $0005
TRISB6           .EQ  $0006
TRISB7           .EQ  $0007

RB0              .EQ  $0000
RB1              .EQ  $0001
RB2              .EQ  $0002
RB3              .EQ  $0003
RB4              .EQ  $0004
RB5              .EQ  $0005
RB6              .EQ  $0006
RB7              .EQ  $0007


;----- DDRC Bits -----------------------------------------------------
TRISC0           .EQ  $0000
TRISC1           .EQ  $0001
TRISC2           .EQ  $0002
TRISC3           .EQ  $0003
TRISC4           .EQ  $0004
TRISC5           .EQ  $0005
TRISC6           .EQ  $0006
TRISC7           .EQ  $0007

RC0              .EQ  $0000
RC1              .EQ  $0001
RC2              .EQ  $0002
RC3              .EQ  $0003
RC4              .EQ  $0004
RC5              .EQ  $0005
RC6              .EQ  $0006
RC7              .EQ  $0007


;----- TRISC Bits -----------------------------------------------------
TRISC0           .EQ  $0000
TRISC1           .EQ  $0001
TRISC2           .EQ  $0002
TRISC3           .EQ  $0003
TRISC4           .EQ  $0004
TRISC5           .EQ  $0005
TRISC6           .EQ  $0006
TRISC7           .EQ  $0007

RC0              .EQ  $0000
RC1              .EQ  $0001
RC2              .EQ  $0002
RC3              .EQ  $0003
RC4              .EQ  $0004
RC5              .EQ  $0005
RC6              .EQ  $0006
RC7              .EQ  $0007


;----- OSCTUNE Bits -----------------------------------------------------
PLLEN            .EQ  $0006
INTSRC           .EQ  $0007

TUN0             .EQ  $0000
TUN1             .EQ  $0001
TUN2             .EQ  $0002
TUN3             .EQ  $0003
TUN4             .EQ  $0004


;----- PIE1 Bits -----------------------------------------------------
TMR1IE           .EQ  $0000
TMR2IE           .EQ  $0001
CCP1IE           .EQ  $0002
SSPIE            .EQ  $0003
TXIE             .EQ  $0004
RCIE             .EQ  $0005
ADIE             .EQ  $0006


;----- PIR1 Bits -----------------------------------------------------
TMR1IF           .EQ  $0000
TMR2IF           .EQ  $0001
CCP1IF           .EQ  $0002
SSPIF            .EQ  $0003
TXIF             .EQ  $0004
RCIF             .EQ  $0005
ADIF             .EQ  $0006


;----- IPR1 Bits -----------------------------------------------------
TMR1IP           .EQ  $0000
TMR2IP           .EQ  $0001
CCP1IP           .EQ  $0002
SSPIP            .EQ  $0003
TXIP             .EQ  $0004
RCIP             .EQ  $0005
ADIP             .EQ  $0006


;----- PIE2 Bits -----------------------------------------------------
CCP2IE           .EQ  $0000
TMR3IE           .EQ  $0001
HLVDIE           .EQ  $0002
BCLIE            .EQ  $0003
CMIE             .EQ  $0006
OSCFIE           .EQ  $0007

LVDIE            .EQ  $0002


;----- PIR2 Bits -----------------------------------------------------
CCP2IF           .EQ  $0000
TMR3IF           .EQ  $0001
HLVDIF           .EQ  $0002
BCLIF            .EQ  $0003
CMIF             .EQ  $0006
OSCFIF           .EQ  $0007

LVDIF            .EQ  $0002


;----- IPR2 Bits -----------------------------------------------------
CCP2IP           .EQ  $0000
TMR3IP           .EQ  $0001
HLVDIP           .EQ  $0002
BCLIP            .EQ  $0003
CMIP             .EQ  $0006
OSCFIP           .EQ  $0007

LVDIP            .EQ  $0002


;----- RCSTA Bits -----------------------------------------------------
RX9D             .EQ  $0000
OERR             .EQ  $0001
FERR             .EQ  $0002
ADDEN            .EQ  $0003
CREN             .EQ  $0004
SREN             .EQ  $0005
RX9              .EQ  $0006
SPEN             .EQ  $0007

ADEN             .EQ  $0003


;----- TXSTA Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SENDB            .EQ  $0003
SYNC             .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007


;----- T3CON Bits -----------------------------------------------------
TMR3ON           .EQ  $0000
TMR3CS           .EQ  $0001
NOT_T3SYNC       .EQ  $0002
T3CCP1           .EQ  $0003
T3CCP2           .EQ  $0006
RD16             .EQ  $0007

T3SYNC           .EQ  $0002
T3CKPS0          .EQ  $0004
T3CKPS1          .EQ  $0005


;----- CMCON Bits -----------------------------------------------------
CIS              .EQ  $0003
C1INV            .EQ  $0004
C2INV            .EQ  $0005
C1OUT            .EQ  $0006
C2OUT            .EQ  $0007

CM0              .EQ  $0000
CM1              .EQ  $0001
CM2              .EQ  $0002


;----- CVRCON Bits -----------------------------------------------------
CVRSS            .EQ  $0004
CVRR             .EQ  $0005
CVROE            .EQ  $0006
CVREN            .EQ  $0007

CVR0             .EQ  $0000
CVR1             .EQ  $0001
CVR2             .EQ  $0002
CVR3             .EQ  $0003


;----- ECCP1AS Bits -----------------------------------------------------
ECCPASE          .EQ  $0007

PSSAC0           .EQ  $0002
PSSAC1           .EQ  $0003
ECCPAS0          .EQ  $0004
ECCPAS1          .EQ  $0005
ECCPAS2          .EQ  $0006


;----- ECCPAS Bits -----------------------------------------------------
ECCPASE          .EQ  $0007

PSSAC0           .EQ  $0002
PSSAC1           .EQ  $0003
ECCPAS0          .EQ  $0004
ECCPAS1          .EQ  $0005
ECCPAS2          .EQ  $0006


;----- ECCP1DEL Bits -----------------------------------------------------
PRSEN            .EQ  $0007


;----- PWM1CON Bits -----------------------------------------------------
PRSEN            .EQ  $0007


;----- BAUDCON Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
TXCKP            .EQ  $0004
RXDTP            .EQ  $0005
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007

SCKP             .EQ  $0004
RCMT             .EQ  $0006


;----- BAUDCTL Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
TXCKP            .EQ  $0004
RXDTP            .EQ  $0005
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007

SCKP             .EQ  $0004
RCMT             .EQ  $0006


;----- CCP2CON Bits -----------------------------------------------------
CCP2M0           .EQ  $0000
CCP2M1           .EQ  $0001
CCP2M2           .EQ  $0002
CCP2M3           .EQ  $0003
CCP2Y            .EQ  $0004
CCP2X            .EQ  $0005

DC2B0            .EQ  $0004
DC2B1            .EQ  $0005


;----- CCP1CON Bits -----------------------------------------------------
CCP1M0           .EQ  $0000
CCP1M1           .EQ  $0001
CCP1M2           .EQ  $0002
CCP1M3           .EQ  $0003
CCP1Y            .EQ  $0004
CCP1X            .EQ  $0005

DC1B0            .EQ  $0004
DC1B1            .EQ  $0005


;----- ADCON2 Bits -----------------------------------------------------
ADFM             .EQ  $0007

ADCS0            .EQ  $0000
ADCS1            .EQ  $0001
ADCS2            .EQ  $0002
ACQT0            .EQ  $0003
ACQT1            .EQ  $0004
ACQT2            .EQ  $0005


;----- ADCON1 Bits -----------------------------------------------------
PCFG0            .EQ  $0000
PCFG1            .EQ  $0001
PCFG2            .EQ  $0002
PCFG3            .EQ  $0003
VCFG0            .EQ  $0004
VCFG1            .EQ  $0005


;----- ADCON0 Bits -----------------------------------------------------
ADON             .EQ  $0000
GO_NOT_DONE      .EQ  $0001

GO               .EQ  $0001
CHS0             .EQ  $0002
CHS1             .EQ  $0003
CHS2             .EQ  $0004
CHS3             .EQ  $0005

DONE             .EQ  $0001

NOT_DONE         .EQ  $0001

GO_DONE          .EQ  $0001


;----- SSPCON2 Bits -----------------------------------------------------
SEN              .EQ  $0000
RSEN             .EQ  $0001
PEN              .EQ  $0002
RCEN             .EQ  $0003
ACKEN            .EQ  $0004
ACKDT            .EQ  $0005
ACKSTAT          .EQ  $0006
GCEN             .EQ  $0007


;----- SSPCON1 Bits -----------------------------------------------------
CKP              .EQ  $0004
SSPEN            .EQ  $0005
SSPOV            .EQ  $0006
WCOL             .EQ  $0007

SSPM0            .EQ  $0000
SSPM1            .EQ  $0001
SSPM2            .EQ  $0002
SSPM3            .EQ  $0003


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


NOT_W            .EQ  $0002
NOT_A            .EQ  $0005

R_W              .EQ  $0002
D_A              .EQ  $0005

NOT_WRITE        .EQ  $0002
NOT_ADDRESS      .EQ  $0005

START            .EQ  $0003
STOP             .EQ  $0004


;----- T2CON Bits -----------------------------------------------------
TMR2ON           .EQ  $0002

T2CKPS0          .EQ  $0000
T2CKPS1          .EQ  $0001
T2OUTPS0         .EQ  $0003
T2OUTPS1         .EQ  $0004
T2OUTPS2         .EQ  $0005
T2OUTPS3         .EQ  $0006

TOUTPS0          .EQ  $0003
TOUTPS1          .EQ  $0004
TOUTPS2          .EQ  $0005
TOUTPS3          .EQ  $0006


;----- T1CON Bits -----------------------------------------------------
TMR1ON           .EQ  $0000
TMR1CS           .EQ  $0001
NOT_T1SYNC       .EQ  $0002
T1OSCEN          .EQ  $0003
T1RUN            .EQ  $0006
RD16             .EQ  $0007

T1SYNC           .EQ  $0002
T1CKPS0          .EQ  $0004
T1CKPS1          .EQ  $0005


;----- RCON Bits -----------------------------------------------------
NOT_BOR          .EQ  $0000
NOT_POR          .EQ  $0001
NOT_PD           .EQ  $0002
NOT_TO           .EQ  $0003
NOT_RI           .EQ  $0004
SBOREN           .EQ  $0006
IPEN             .EQ  $0007

BOR              .EQ  $0000
POR              .EQ  $0001
PD               .EQ  $0002
TO               .EQ  $0003
RI               .EQ  $0004


;----- WDTCON Bits -----------------------------------------------------
SWDTEN           .EQ  $0000

SWDTE            .EQ  $0000


;----- HLVDCON Bits -----------------------------------------------------
HLVDEN           .EQ  $0004
IVRST            .EQ  $0005
VDIRMAG          .EQ  $0007

HLVDL0           .EQ  $0000
HLVDL1           .EQ  $0001
HLVDL2           .EQ  $0002
HLVDL3           .EQ  $0003

LVDL0            .EQ  $0000
LVDL1            .EQ  $0001
LVDL2            .EQ  $0002
LVDL3            .EQ  $0003
LVDEN            .EQ  $0004
IRVST            .EQ  $0005

LVV0             .EQ  $0000
LVV1             .EQ  $0001
LVV2             .EQ  $0002
LVV3             .EQ  $0003
BGST             .EQ  $0005


;----- LVDCON Bits -----------------------------------------------------
HLVDEN           .EQ  $0004
IVRST            .EQ  $0005
VDIRMAG          .EQ  $0007

HLVDL0           .EQ  $0000
HLVDL1           .EQ  $0001
HLVDL2           .EQ  $0002
HLVDL3           .EQ  $0003

LVDL0            .EQ  $0000
LVDL1            .EQ  $0001
LVDL2            .EQ  $0002
LVDL3            .EQ  $0003
LVDEN            .EQ  $0004
IRVST            .EQ  $0005

LVV0             .EQ  $0000
LVV1             .EQ  $0001
LVV2             .EQ  $0002
LVV3             .EQ  $0003
BGST             .EQ  $0005


;----- OSCCON Bits -----------------------------------------------------
IOFS             .EQ  $0002
OSTS             .EQ  $0003
IDLEN            .EQ  $0007

SCS0             .EQ  $0000
SCS1             .EQ  $0001
FLTS             .EQ  $0002
IRCF0            .EQ  $0004
IRCF1            .EQ  $0005
IRCF2            .EQ  $0006


;----- T0CON Bits -----------------------------------------------------
PSA              .EQ  $0003
T0SE             .EQ  $0004
T0CS             .EQ  $0005
T08BIT           .EQ  $0006
TMR0ON           .EQ  $0007

T0PS0            .EQ  $0000
T0PS1            .EQ  $0001
T0PS2            .EQ  $0002
T0PS3            .EQ  $0003
T016BIT          .EQ  $0006


;----- STATUS Bits -----------------------------------------------------
C                .EQ  $0000
DC               .EQ  $0001
Z                .EQ  $0002
OV               .EQ  $0003
N                .EQ  $0004


;----- INTCON3 Bits -----------------------------------------------------
INT1IF           .EQ  $0000
INT2IF           .EQ  $0001
INT1IE           .EQ  $0003
INT2IE           .EQ  $0004
INT1IP           .EQ  $0006
INT2IP           .EQ  $0007

INT1F            .EQ  $0000
INT2F            .EQ  $0001
INT1E            .EQ  $0003
INT2E            .EQ  $0004
INT1P            .EQ  $0006
INT2P            .EQ  $0007


;----- INTCON2 Bits -----------------------------------------------------
RBIP             .EQ  $0000
TMR0IP           .EQ  $0002
INTEDG2          .EQ  $0004
INTEDG1          .EQ  $0005
INTEDG0          .EQ  $0006
NOT_RBPU         .EQ  $0007

RBPU             .EQ  $0007


;----- INTCON Bits -----------------------------------------------------
RBIF             .EQ  $0000
INT0IF           .EQ  $0001
TMR0IF           .EQ  $0002
RBIE             .EQ  $0003
INT0IE           .EQ  $0004
TMR0IE           .EQ  $0005
PEIE_GIEL        .EQ  $0006
GIE_GIEH         .EQ  $0007

INT0F            .EQ  $0001
T0IF             .EQ  $0002
INT0E            .EQ  $0004
T0IE             .EQ  $0005
PEIE             .EQ  $0006
GIE              .EQ  $0007

GIEL             .EQ  $0006
GIEH             .EQ  $0007


;----- STKPTR Bits -----------------------------------------------------
STKUNF           .EQ  $0006
STKFUL           .EQ  $0007

SP0              .EQ  $0000
SP1              .EQ  $0001
SP2              .EQ  $0002
SP3              .EQ  $0003
SP4              .EQ  $0004
STKOVF           .EQ  $0007



;==========================================================================
;
;       RAM Definitions
;
;==========================================================================

_MAXRAM          .EQ  $0FFF

;==========================================================================
;
;   IMPORTANT: For the PIC18 devices, the __CONFIG directive has been
;              superseded by the CONFIG directive.  The following settings
;              are available for this device.
;
;   Oscillator Selection bits:
;     OSC = LP             LP oscillator
;     OSC = XT             XT oscillator
;     OSC = HS             HS oscillator
;     OSC = RC             External RC oscillator, CLKO function on RA6
;     OSC = EC             EC oscillator, CLKO function on RA6
;     OSC = ECIO6          EC oscillator, port function on RA6
;     OSC = HSPLL          HS oscillator, PLL enabled (Clock Frequency = 4 x FOSC1)
;     OSC = RCIO6          External RC oscillator, port function on RA6
;     OSC = INTIO67        Internal oscillator block, port function on RA6 and RA7
;     OSC = INTIO7         Internal oscillator block, CLKO function on RA6, port function on RA7
;
;   Fail-Safe Clock Monitor Enable bit:
;     FCMEN = OFF          Fail-Safe Clock Monitor disabled
;     FCMEN = ON           Fail-Safe Clock Monitor enabled
;
;   Internal/External Oscillator Switchover bit:
;     IESO = OFF           Oscillator Switchover mode disabled
;     IESO = ON            Oscillator Switchover mode enabled
;
;   Power-up Timer Enable bit:
;     PWRT = ON            PWRT enabled
;     PWRT = OFF           PWRT disabled
;
;   Brown-out Reset Enable bits:
;     BOREN = OFF          Brown-out Reset disabled in hardware and software
;     BOREN = ON           Brown-out Reset enabled and controlled by software (SBOREN is enabled)
;     BOREN = NOSLP        Brown-out Reset enabled in hardware only and disabled in Sleep mode (SBOREN is disabled)
;     BOREN = SBORDIS      Brown-out Reset enabled in hardware only (SBOREN is disabled)
;
;   Brown Out Reset Voltage bits:
;     BORV = 0             Maximum setting
;     BORV = 1
;     BORV = 2
;     BORV = 3             Minimum setting
;
;   Watchdog Timer Enable bit:
;     WDT = OFF            WDT disabled (control is placed on the SWDTEN bit)
;     WDT = ON             WDT enabled
;
;   Watchdog Timer Postscale Select bits:
;     WDTPS = 1            1:1
;     WDTPS = 2            1:2
;     WDTPS = 4            1:4
;     WDTPS = 8            1:8
;     WDTPS = 16           1:16
;     WDTPS = 32           1:32
;     WDTPS = 64           1:64
;     WDTPS = 128          1:128
;     WDTPS = 256          1:256
;     WDTPS = 512          1:512
;     WDTPS = 1024         1:1024
;     WDTPS = 2048         1:2048
;     WDTPS = 4096         1:4096
;     WDTPS = 8192         1:8192
;     WDTPS = 16384        1:16384
;     WDTPS = 32768        1:32768
;
;   CCP2 MUX bit:
;     CCP2MX = PORTBE      CCP2 input/output is multiplexed with RB3
;     CCP2MX = PORTC       CCP2 input/output is multiplexed with RC1
;
;   PORTB A/D Enable bit:
;     PBADEN = OFF         PORTB<4:0> pins are configured as digital I/O on Reset
;     PBADEN = ON          PORTB<4:0> pins are configured as analog input channels on Reset
;
;   Low-Power Timer1 Oscillator Enable bit:
;     LPT1OSC = OFF        Timer1 configured for higher power operation
;     LPT1OSC = ON         Timer1 configured for low-power operation
;
;   MCLR Pin Enable bit:
;     MCLRE = OFF          RE3 input pin enabled; MCLR disabled
;     MCLRE = ON           MCLR pin enabled; RE3 input pin disabled
;
;   Stack Full/Underflow Reset Enable bit:
;     STVREN = OFF         Stack full/underflow will not cause Reset
;     STVREN = ON          Stack full/underflow will cause Reset
;
;   Single-Supply ICSP Enable bit:
;     LVP = OFF            Single-Supply ICSP disabled
;     LVP = ON             Single-Supply ICSP enabled
;
;   Extended Instruction Set Enable bit:
;     XINST = OFF          Instruction set extension and Indexed Addressing mode disabled (Legacy mode)
;     XINST = ON           Instruction set extension and Indexed Addressing mode enabled
;
;   Background Debugger Enable bit:
;     DEBUG = ON           Background debugger enabled, RB6 and RB7 are dedicated to In-Circuit Debug
;     DEBUG = OFF          Background debugger disabled, RB6 and RB7 configured as general purpose I/O pins
;
;   Code Protection bit:
;     CP0 = ON             Block 0 (000800-003FFFh) code-protected
;     CP0 = OFF            Block 0 (000800-003FFFh) not code-protected
;
;   Code Protection bit:
;     CP1 = ON             Block 1 (004000-007FFFh) code-protected
;     CP1 = OFF            Block 1 (004000-007FFFh) not code-protected
;
;   Code Protection bit:
;     CP2 = ON             Block 2 (008000-00BFFFh) code-protected
;     CP2 = OFF            Block 2 (008000-00BFFFh) not code-protected
;
;   Boot Block Code Protection bit:
;     CPB = ON             Boot block (000000-0007FFh) code-protected
;     CPB = OFF            Boot block (000000-0007FFh) not code-protected
;
;   Write Protection bit:
;     WRT0 = ON            Block 0 (000800-003FFFh) write-protected
;     WRT0 = OFF           Block 0 (000800-003FFFh) not write-protected
;
;   Write Protection bit:
;     WRT1 = ON            Block 1 (004000-007FFFh) write-protected
;     WRT1 = OFF           Block 1 (004000-007FFFh) not write-protected
;
;   Write Protection bit:
;     WRT2 = ON            Block 2 (008000-00BFFFh) write-protected
;     WRT2 = OFF           Block 2 (008000-00BFFFh) not write-protected
;
;   Configuration Register Write Protection bit:
;     WRTC = ON            Configuration registers (300000-3000FFh) write-protected
;     WRTC = OFF           Configuration registers (300000-3000FFh) not write-protected
;
;   Boot Block Write Protection bit:
;     WRTB = ON            Boot block (000000-0007FFh) write-protected
;     WRTB = OFF           Boot block (000000-0007FFh) not write-protected
;
;   Table Read Protection bit:
;     EBTR0 = ON           Block 0 (000800-003FFFh) protected from table reads executed in other blocks
;     EBTR0 = OFF          Block 0 (000800-003FFFh) not protected from table reads executed in other blocks
;
;   Table Read Protection bit:
;     EBTR1 = ON           Block 1 (004000-007FFFh) protected from table reads executed in other blocks
;     EBTR1 = OFF          Block 1 (004000-007FFFh) not protected from table reads executed in other blocks
;
;   Table Read Protection bit:
;     EBTR2 = ON           Block 2 (008000-00BFFFh) protected from table reads executed in other blocks
;     EBTR2 = OFF          Block 2 (008000-00BFFFh) not protected from table reads executed in other blocks
;
;   Boot Block Table Read Protection bit:
;     EBTRB = ON           Boot block (000000-0007FFh) protected from table reads executed in other blocks
;     EBTRB = OFF          Boot block (000000-0007FFh) not protected from table reads executed in other blocks
;
;==========================================================================
;==========================================================================
;
;       Configuration Bits
;
;   NAME            Address
;   CONFIG1H        300001h
;   CONFIG2L        300002h
;   CONFIG2H        300003h
;   CONFIG3H        300005h
;   CONFIG4L        300006h
;   CONFIG5L        300008h
;   CONFIG5H        300009h
;   CONFIG6L        30000Ah
;   CONFIG6H        30000Bh
;   CONFIG7L        30000Ch
;   CONFIG7H        30000Dh
;
;==========================================================================

; The following is an assignment of address values for all of the
; configuration registers for the purpose of table reads
_CONFIG1H       .EQ  $300001
_CONFIG2L       .EQ  $300002
_CONFIG2H       .EQ  $300003
_CONFIG3H       .EQ  $300005
_CONFIG4L       .EQ  $300006
_CONFIG5L       .EQ  $300008
_CONFIG5H       .EQ  $300009
_CONFIG6L       .EQ  $30000A
_CONFIG6H       .EQ  $30000B
_CONFIG7L       .EQ  $30000C
_CONFIG7H       .EQ  $30000D

;----- CONFIG1H Options --------------------------------------------------
_OSC_LP_1H           .EQ  $F0  LP oscillator
_OSC_XT_1H           .EQ  $F1  XT oscillator
_OSC_HS_1H           .EQ  $F2  HS oscillator
_OSC_RC_1H           .EQ  $F3  External RC oscillator, CLKO function on RA6
_OSC_EC_1H           .EQ  $F4  EC oscillator, CLKO function on RA6
_OSC_ECIO6_1H        .EQ  $F5  EC oscillator, port function on RA6
_OSC_HSPLL_1H        .EQ  $F6  HS oscillator, PLL enabled (Clock Frequency = 4 x FOSC1)
_OSC_RCIO6_1H        .EQ  $F7  External RC oscillator, port function on RA6
_OSC_INTIO67_1H      .EQ  $F8  Internal oscillator block, port function on RA6 and RA7
_OSC_INTIO7_1H       .EQ  $F9  Internal oscillator block, CLKO function on RA6, port function on RA7

_FCMEN_OFF_1H        .EQ  $BF  Fail-Safe Clock Monitor disabled
_FCMEN_ON_1H         .EQ  $FF  Fail-Safe Clock Monitor enabled

_IESO_OFF_1H         .EQ  $7F  Oscillator Switchover mode disabled
_IESO_ON_1H          .EQ  $FF  Oscillator Switchover mode enabled

;----- CONFIG2L Options --------------------------------------------------
_PWRT_ON_2L          .EQ  $FE  PWRT enabled
_PWRT_OFF_2L         .EQ  $FF  PWRT disabled

_BOREN_OFF_2L        .EQ  $F9  Brown-out Reset disabled in hardware and software
_BOREN_ON_2L         .EQ  $FB  Brown-out Reset enabled and controlled by software (SBOREN is enabled)
_BOREN_NOSLP_2L      .EQ  $FD  Brown-out Reset enabled in hardware only and disabled in Sleep mode (SBOREN is disabled)
_BOREN_SBORDIS_2L    .EQ  $FF  Brown-out Reset enabled in hardware only (SBOREN is disabled)

_BORV_0_2L           .EQ  $E7  Maximum setting
_BORV_1_2L           .EQ  $EF
_BORV_2_2L           .EQ  $F7
_BORV_3_2L           .EQ  $FF  Minimum setting

;----- CONFIG2H Options --------------------------------------------------
_WDT_OFF_2H          .EQ  $FE  WDT disabled (control is placed on the SWDTEN bit)
_WDT_ON_2H           .EQ  $FF  WDT enabled

_WDTPS_1_2H          .EQ  $E1  1:1
_WDTPS_2_2H          .EQ  $E3  1:2
_WDTPS_4_2H          .EQ  $E5  1:4
_WDTPS_8_2H          .EQ  $E7  1:8
_WDTPS_16_2H         .EQ  $E9  1:16
_WDTPS_32_2H         .EQ  $EB  1:32
_WDTPS_64_2H         .EQ  $ED  1:64
_WDTPS_128_2H        .EQ  $EF  1:128
_WDTPS_256_2H        .EQ  $F1  1:256
_WDTPS_512_2H        .EQ  $F3  1:512
_WDTPS_1024_2H       .EQ  $F5  1:1024
_WDTPS_2048_2H       .EQ  $F7  1:2048
_WDTPS_4096_2H       .EQ  $F9  1:4096
_WDTPS_8192_2H       .EQ  $FB  1:8192
_WDTPS_16384_2H      .EQ  $FD  1:16384
_WDTPS_32768_2H      .EQ  $FF  1:32768

;----- CONFIG3H Options --------------------------------------------------
_CCP2MX_PORTBE_3H    .EQ  $FE  CCP2 input/output is multiplexed with RB3
_CCP2MX_PORTC_3H     .EQ  $FF  CCP2 input/output is multiplexed with RC1

_PBADEN_OFF_3H       .EQ  $FD  PORTB<4:0> pins are configured as digital I/O on Reset
_PBADEN_ON_3H        .EQ  $FF  PORTB<4:0> pins are configured as analog input channels on Reset

_LPT1OSC_OFF_3H      .EQ  $FB  Timer1 configured for higher power operation
_LPT1OSC_ON_3H       .EQ  $FF  Timer1 configured for low-power operation

_MCLRE_OFF_3H        .EQ  $7F  RE3 input pin enabled; MCLR disabled
_MCLRE_ON_3H         .EQ  $FF  MCLR pin enabled; RE3 input pin disabled

;----- CONFIG4L Options --------------------------------------------------
_STVREN_OFF_4L       .EQ  $FE  Stack full/underflow will not cause Reset
_STVREN_ON_4L        .EQ  $FF  Stack full/underflow will cause Reset

_LVP_OFF_4L          .EQ  $FB  Single-Supply ICSP disabled
_LVP_ON_4L           .EQ  $FF  Single-Supply ICSP enabled

_XINST_OFF_4L        .EQ  $BF  Instruction set extension and Indexed Addressing mode disabled (Legacy mode)
_XINST_ON_4L         .EQ  $FF  Instruction set extension and Indexed Addressing mode enabled

_DEBUG_ON_4L         .EQ  $7F  Background debugger enabled, RB6 and RB7 are dedicated to In-Circuit Debug
_DEBUG_OFF_4L        .EQ  $FF  Background debugger disabled, RB6 and RB7 configured as general purpose I/O pins

;----- CONFIG5L Options --------------------------------------------------
_CP0_ON_5L           .EQ  $FE  Block 0 (000800-003FFFh) code-protected
_CP0_OFF_5L          .EQ  $FF  Block 0 (000800-003FFFh) not code-protected

_CP1_ON_5L           .EQ  $FD  Block 1 (004000-007FFFh) code-protected
_CP1_OFF_5L          .EQ  $FF  Block 1 (004000-007FFFh) not code-protected

_CP2_ON_5L           .EQ  $FB  Block 2 (008000-00BFFFh) code-protected
_CP2_OFF_5L          .EQ  $FF  Block 2 (008000-00BFFFh) not code-protected

;----- CONFIG5H Options --------------------------------------------------
_CPB_ON_5H           .EQ  $BF  Boot block (000000-0007FFh) code-protected
_CPB_OFF_5H          .EQ  $FF  Boot block (000000-0007FFh) not code-protected

;----- CONFIG6L Options --------------------------------------------------
_WRT0_ON_6L          .EQ  $FE  Block 0 (000800-003FFFh) write-protected
_WRT0_OFF_6L         .EQ  $FF  Block 0 (000800-003FFFh) not write-protected

_WRT1_ON_6L          .EQ  $FD  Block 1 (004000-007FFFh) write-protected
_WRT1_OFF_6L         .EQ  $FF  Block 1 (004000-007FFFh) not write-protected

_WRT2_ON_6L          .EQ  $FB  Block 2 (008000-00BFFFh) write-protected
_WRT2_OFF_6L         .EQ  $FF  Block 2 (008000-00BFFFh) not write-protected

;----- CONFIG6H Options --------------------------------------------------
_WRTC_ON_6H          .EQ  $DF  Configuration registers (300000-3000FFh) write-protected
_WRTC_OFF_6H         .EQ  $FF  Configuration registers (300000-3000FFh) not write-protected

_WRTB_ON_6H          .EQ  $BF  Boot block (000000-0007FFh) write-protected
_WRTB_OFF_6H         .EQ  $FF  Boot block (000000-0007FFh) not write-protected

;----- CONFIG7L Options --------------------------------------------------
_EBTR0_ON_7L         .EQ  $FE  Block 0 (000800-003FFFh) protected from table reads executed in other blocks
_EBTR0_OFF_7L        .EQ  $FF  Block 0 (000800-003FFFh) not protected from table reads executed in other blocks

_EBTR1_ON_7L         .EQ  $FD  Block 1 (004000-007FFFh) protected from table reads executed in other blocks
_EBTR1_OFF_7L        .EQ  $FF  Block 1 (004000-007FFFh) not protected from table reads executed in other blocks

_EBTR2_ON_7L         .EQ  $FB  Block 2 (008000-00BFFFh) protected from table reads executed in other blocks
_EBTR2_OFF_7L        .EQ  $FF  Block 2 (008000-00BFFFh) not protected from table reads executed in other blocks

;----- CONFIG7H Options --------------------------------------------------
_EBTRB_ON_7H         .EQ  $BF  Boot block (000000-0007FFh) protected from table reads executed in other blocks
_EBTRB_OFF_7H        .EQ  $FF  Boot block (000000-0007FFh) not protected from table reads executed in other blocks


;----- DEVID Equates --------------------------------------------------
_DEVID1          .EQ  $3FFFFE
_DEVID2          .EQ  $3FFFFF

;----- IDLOC Equates --------------------------------------------------
_IDLOC0          .EQ  $200000
_IDLOC1          .EQ  $200001
_IDLOC2          .EQ  $200002
_IDLOC3          .EQ  $200003
_IDLOC4          .EQ  $200004
_IDLOC5          .EQ  $200005
_IDLOC6          .EQ  $200006
_IDLOC7          .EQ  $200007
