;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC18F85J11 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC18F85J11 microcontroller.  These names
;  are taken to match the data sheets as closely as possible.
;==========================================================================

;==========================================================================
;
;       Select cross overlay
;
;==========================================================================

                  .CR   pic16
                  .MS   16384

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
RCSTA2           .EQ  $0F60
TXSTA2           .EQ  $0F61
TXREG2           .EQ  $0F62
RCREG2           .EQ  $0F63
SPBRG2           .EQ  $0F64
CCP2CON          .EQ  $0F65
CCPR2            .EQ  $0F66
CCPR2L           .EQ  $0F66
CCPR2H           .EQ  $0F67
CCP1CON          .EQ  $0F68
CCPR1            .EQ  $0F69
CCPR1L           .EQ  $0F69
CCPR1H           .EQ  $0F6A
BAUDCON1         .EQ  $0F7E
SPBRGH1          .EQ  $0F7F
PORTA            .EQ  $0F80
PORTB            .EQ  $0F81
PORTC            .EQ  $0F82
PORTD            .EQ  $0F83
PORTE            .EQ  $0F84
PORTF            .EQ  $0F85
PORTG            .EQ  $0F86
PORTH            .EQ  $0F87
PORTJ            .EQ  $0F88
LATA             .EQ  $0F89
LATB             .EQ  $0F8A
LATC             .EQ  $0F8B
LATD             .EQ  $0F8C
LATE             .EQ  $0F8D
LATF             .EQ  $0F8E
LATG             .EQ  $0F8F
LATH             .EQ  $0F90
LATJ             .EQ  $0F91
DDRA             .EQ  $0F92
TRISA            .EQ  $0F92
DDRB             .EQ  $0F93
TRISB            .EQ  $0F93
DDRC             .EQ  $0F94
TRISC            .EQ  $0F94
DDRD             .EQ  $0F95
TRISD            .EQ  $0F95
DDRE             .EQ  $0F96
TRISE            .EQ  $0F96
DDRF             .EQ  $0F97
TRISF            .EQ  $0F97
DDRG             .EQ  $0F98
TRISG            .EQ  $0F98
DDRH             .EQ  $0F99
TRISH            .EQ  $0F99
DDRJ             .EQ  $0F9A
TRISJ            .EQ  $0F9A
OSCTUNE          .EQ  $0F9B
MEMCON           .EQ  $0F9C
PIE1             .EQ  $0F9D
PIR1             .EQ  $0F9E
IPR1             .EQ  $0F9F
PIE2             .EQ  $0FA0
PIR2             .EQ  $0FA1
IPR2             .EQ  $0FA2
PIE3             .EQ  $0FA3
PIR3             .EQ  $0FA4
IPR3             .EQ  $0FA5
EECON1           .EQ  $0FA6
EECON2           .EQ  $0FA7
RCSTA            .EQ  $0FAB
RCSTA1           .EQ  $0FAB
TXSTA            .EQ  $0FAC
TXSTA1           .EQ  $0FAC
TXREG            .EQ  $0FAD
TXREG1           .EQ  $0FAD
RCREG            .EQ  $0FAE
RCREG1           .EQ  $0FAE
SPBRG            .EQ  $0FAF
SPBRG1           .EQ  $0FAF
PSPCON           .EQ  $0FB0
T3CON            .EQ  $0FB1
TMR3             .EQ  $0FB2
TMR3L            .EQ  $0FB2
TMR3H            .EQ  $0FB3
CMCON            .EQ  $0FB4
CVRCON           .EQ  $0FB5
ADCON2           .EQ  $0FC0
ADCON1           .EQ  $0FC1
ADCON0           .EQ  $0FC2
ADRES            .EQ  $0FC3
ADRESL           .EQ  $0FC3
ADRESH           .EQ  $0FC4
SSP1CON2         .EQ  $0FC5
SSPCON2          .EQ  $0FC5
SSP1CON1         .EQ  $0FC6
SSPCON1          .EQ  $0FC6
SSP1STAT         .EQ  $0FC7
SSPSTAT          .EQ  $0FC7
SSP1ADD          .EQ  $0FC8
SSPADD           .EQ  $0FC8
SSP1BUF          .EQ  $0FC9
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

;----- RCSTA2 Bits -----------------------------------------------------
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

RX9D2            .EQ  $0000
OERR2            .EQ  $0001
FERR2            .EQ  $0002
ADDEN2           .EQ  $0003
CREN2            .EQ  $0004
SREN2            .EQ  $0005
RX92             .EQ  $0006
SPEN2            .EQ  $0007


;----- TXSTA2 Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SYNC             .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007

TXD8             .EQ  $0000
TX8_9            .EQ  $0006

NOT_TX8          .EQ  $0006

TX9D2            .EQ  $0000
TRMT2            .EQ  $0001
BRGH2            .EQ  $0002
SENDB2           .EQ  $0003
SYNC2            .EQ  $0004
TXEN2            .EQ  $0005
TX92             .EQ  $0006
CSRC2            .EQ  $0007


;----- CCP2CON Bits -----------------------------------------------------
CCP2M0           .EQ  $0000
CCP2M1           .EQ  $0001
CCP2M2           .EQ  $0002
CCP2M3           .EQ  $0003
DC2B0            .EQ  $0004
DC2B1            .EQ  $0005

DCCP2Y           .EQ  $0004
DCCP2X           .EQ  $0005


;----- CCP1CON Bits -----------------------------------------------------
CCP1M0           .EQ  $0000
CCP1M1           .EQ  $0001
CCP1M2           .EQ  $0002
CCP1M3           .EQ  $0003
DC1B0            .EQ  $0004
DC1B1            .EQ  $0005

DCCP1Y           .EQ  $0004
DCCP1X           .EQ  $0005


;----- BAUDCON1 Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
TXCKP            .EQ  $0004
RXDTP            .EQ  $0005
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007

SCKP             .EQ  $0004
RCMT             .EQ  $0006


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

VREFM            .EQ  $0002
VREFP            .EQ  $0003
CLKO             .EQ  $0006
CLKI             .EQ  $0007


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
INT3             .EQ  $0003
KBI0             .EQ  $0004
KBI1             .EQ  $0005
KBI2             .EQ  $0006
KBI3             .EQ  $0007

CCP2_PORTB       .EQ  $0003
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
SCL              .EQ  $0003
SDA              .EQ  $0004
CK1              .EQ  $0006
DT1              .EQ  $0007

T13CKI           .EQ  $0000
CCP2_PORTC       .EQ  $0001
CCP1             .EQ  $0002
SCK              .EQ  $0003
SDI              .EQ  $0004
SDO              .EQ  $0005
TX1              .EQ  $0006
RX1              .EQ  $0007


;----- PORTD Bits -----------------------------------------------------
RD0              .EQ  $0000
RD1              .EQ  $0001
RD2              .EQ  $0002
RD3              .EQ  $0003
RD4              .EQ  $0004
RD5              .EQ  $0005
RD6              .EQ  $0006
RD7              .EQ  $0007

PSP0             .EQ  $0000
PSP1             .EQ  $0001
PSP2             .EQ  $0002
PSP3             .EQ  $0003
PSP4             .EQ  $0004
PSP5             .EQ  $0005
PSP6             .EQ  $0006
PSP7             .EQ  $0007

AD0              .EQ  $0000
AD1              .EQ  $0001
AD2              .EQ  $0002
AD3              .EQ  $0003
AD4              .EQ  $0004
AD5              .EQ  $0005
AD6              .EQ  $0006
AD7              .EQ  $0007


;----- PORTE Bits -----------------------------------------------------
RE0              .EQ  $0000
RE1              .EQ  $0001
RE2              .EQ  $0002
RE3              .EQ  $0003
RE4              .EQ  $0004
RE5              .EQ  $0005
RE6              .EQ  $0006
RE7              .EQ  $0007

RD               .EQ  $0000
WR               .EQ  $0001
CS               .EQ  $0002
CCP2_PORTE       .EQ  $0007

AD8              .EQ  $0000
AD9              .EQ  $0001
AD10             .EQ  $0002
AD11             .EQ  $0003
AD12             .EQ  $0004
AD13             .EQ  $0005
AD14             .EQ  $0006
AD15             .EQ  $0007


;----- PORTF Bits -----------------------------------------------------
RF1              .EQ  $0001
RF2              .EQ  $0002
RF3              .EQ  $0003
RF4              .EQ  $0004
RF5              .EQ  $0005
RF6              .EQ  $0006
RF7              .EQ  $0007

AN6              .EQ  $0001
AN7              .EQ  $0002
AN8              .EQ  $0003
AN9              .EQ  $0004
AN10             .EQ  $0005
AN11             .EQ  $0006
AN5              .EQ  $0007

C2OUT_PORTF      .EQ  $0001
C1OUT_PORTF      .EQ  $0002
C2INB            .EQ  $0003
C2INA            .EQ  $0004
C1INB            .EQ  $0005
C1INA            .EQ  $0006
SS1              .EQ  $0007

CVREF            .EQ  $0005


;----- PORTG Bits -----------------------------------------------------
RG0              .EQ  $0000
RG1              .EQ  $0001
RG2              .EQ  $0002
RG3              .EQ  $0003
RG4              .EQ  $0004
RJPU             .EQ  $0005
REPU             .EQ  $0006
RDPU             .EQ  $0007

CK2              .EQ  $0001
DT2              .EQ  $0002

TX2              .EQ  $0001
RX2              .EQ  $0002


;----- PORTH Bits -----------------------------------------------------
RH0              .EQ  $0000
RH1              .EQ  $0001
RH2              .EQ  $0002
RH3              .EQ  $0003
RH4              .EQ  $0004
RH5              .EQ  $0005
RH6              .EQ  $0006
RH7              .EQ  $0007

A16              .EQ  $0000
A17              .EQ  $0001
A18              .EQ  $0002
A19              .EQ  $0003


;----- PORTJ Bits -----------------------------------------------------
RJ0              .EQ  $0000
RJ1              .EQ  $0001
RJ2              .EQ  $0002
RJ3              .EQ  $0003
RJ4              .EQ  $0004
RJ5              .EQ  $0005
RJ6              .EQ  $0006
RJ7              .EQ  $0007

ALE              .EQ  $0000
OE               .EQ  $0001
WRL              .EQ  $0002
WRH              .EQ  $0003
BA0              .EQ  $0004
CE               .EQ  $0005
LB               .EQ  $0006
UB               .EQ  $0007


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


;----- LATF Bits -----------------------------------------------------
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
U1OD             .EQ  $0006
U2OD             .EQ  $0007


;----- LATH Bits -----------------------------------------------------
LATH0            .EQ  $0000
LATH1            .EQ  $0001
LATH2            .EQ  $0002
LATH3            .EQ  $0003
LATH4            .EQ  $0004
LATH5            .EQ  $0005
LATH6            .EQ  $0006
LATH7            .EQ  $0007


;----- LATJ Bits -----------------------------------------------------
LATJ0            .EQ  $0000
LATJ1            .EQ  $0001
LATJ2            .EQ  $0002
LATJ3            .EQ  $0003
LATJ4            .EQ  $0004
LATJ5            .EQ  $0005
LATJ6            .EQ  $0006
LATJ7            .EQ  $0007


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


;----- DDRD Bits -----------------------------------------------------
TRISD0           .EQ  $0000
TRISD1           .EQ  $0001
TRISD2           .EQ  $0002
TRISD3           .EQ  $0003
TRISD4           .EQ  $0004
TRISD5           .EQ  $0005
TRISD6           .EQ  $0006
TRISD7           .EQ  $0007

RD0              .EQ  $0000
RD1              .EQ  $0001
RD2              .EQ  $0002
RD3              .EQ  $0003
RD4              .EQ  $0004
RD5              .EQ  $0005
RD6              .EQ  $0006
RD7              .EQ  $0007


;----- TRISD Bits -----------------------------------------------------
TRISD0           .EQ  $0000
TRISD1           .EQ  $0001
TRISD2           .EQ  $0002
TRISD3           .EQ  $0003
TRISD4           .EQ  $0004
TRISD5           .EQ  $0005
TRISD6           .EQ  $0006
TRISD7           .EQ  $0007

RD0              .EQ  $0000
RD1              .EQ  $0001
RD2              .EQ  $0002
RD3              .EQ  $0003
RD4              .EQ  $0004
RD5              .EQ  $0005
RD6              .EQ  $0006
RD7              .EQ  $0007


;----- DDRE Bits -----------------------------------------------------
TRISE0           .EQ  $0000
TRISE1           .EQ  $0001
TRISE2           .EQ  $0002
TRISE3           .EQ  $0003
TRISE4           .EQ  $0004
TRISE5           .EQ  $0005
TRISE6           .EQ  $0006
TRISE7           .EQ  $0007

RE0              .EQ  $0000
RE1              .EQ  $0001
RE2              .EQ  $0002
RE3              .EQ  $0003
RE4              .EQ  $0004
RE5              .EQ  $0005
RE6              .EQ  $0006
RE7              .EQ  $0007


;----- TRISE Bits -----------------------------------------------------
TRISE0           .EQ  $0000
TRISE1           .EQ  $0001
TRISE2           .EQ  $0002
TRISE3           .EQ  $0003
TRISE4           .EQ  $0004
TRISE5           .EQ  $0005
TRISE6           .EQ  $0006
TRISE7           .EQ  $0007

RE0              .EQ  $0000
RE1              .EQ  $0001
RE2              .EQ  $0002
RE3              .EQ  $0003
RE4              .EQ  $0004
RE5              .EQ  $0005
RE6              .EQ  $0006
RE7              .EQ  $0007


;----- DDRF Bits -----------------------------------------------------
TRISF1           .EQ  $0001
TRISF2           .EQ  $0002
TRISF3           .EQ  $0003
TRISF4           .EQ  $0004
TRISF5           .EQ  $0005
TRISF6           .EQ  $0006
TRISF7           .EQ  $0007

RF1              .EQ  $0001
RF2              .EQ  $0002
RF3              .EQ  $0003
RF4              .EQ  $0004
RF5              .EQ  $0005
RF6              .EQ  $0006
RF7              .EQ  $0007


;----- TRISF Bits -----------------------------------------------------
TRISF1           .EQ  $0001
TRISF2           .EQ  $0002
TRISF3           .EQ  $0003
TRISF4           .EQ  $0004
TRISF5           .EQ  $0005
TRISF6           .EQ  $0006
TRISF7           .EQ  $0007

RF1              .EQ  $0001
RF2              .EQ  $0002
RF3              .EQ  $0003
RF4              .EQ  $0004
RF5              .EQ  $0005
RF6              .EQ  $0006
RF7              .EQ  $0007


;----- DDRG Bits -----------------------------------------------------
TRISG0           .EQ  $0000
TRISG1           .EQ  $0001
TRISG2           .EQ  $0002
TRISG3           .EQ  $0003
TRISG4           .EQ  $0004
CCP1OD           .EQ  $0005
CCP2OD           .EQ  $0006
SPIOD            .EQ  $0007

RG0              .EQ  $0000
RG1              .EQ  $0001
RG2              .EQ  $0002
RG3              .EQ  $0003
RG4              .EQ  $0004


;----- TRISG Bits -----------------------------------------------------
TRISG0           .EQ  $0000
TRISG1           .EQ  $0001
TRISG2           .EQ  $0002
TRISG3           .EQ  $0003
TRISG4           .EQ  $0004
CCP1OD           .EQ  $0005
CCP2OD           .EQ  $0006
SPIOD            .EQ  $0007

RG0              .EQ  $0000
RG1              .EQ  $0001
RG2              .EQ  $0002
RG3              .EQ  $0003
RG4              .EQ  $0004


;----- DDRH Bits -----------------------------------------------------
TRISH0           .EQ  $0000
TRISH1           .EQ  $0001
TRISH2           .EQ  $0002
TRISH3           .EQ  $0003
TRISH4           .EQ  $0004
TRISH5           .EQ  $0005
TRISH6           .EQ  $0006
TRISH7           .EQ  $0007

RH0              .EQ  $0000
RH1              .EQ  $0001
RH2              .EQ  $0002
RH3              .EQ  $0003
RH4              .EQ  $0004
RH5              .EQ  $0005
RH6              .EQ  $0006
RH7              .EQ  $0007


;----- TRISH Bits -----------------------------------------------------
TRISH0           .EQ  $0000
TRISH1           .EQ  $0001
TRISH2           .EQ  $0002
TRISH3           .EQ  $0003
TRISH4           .EQ  $0004
TRISH5           .EQ  $0005
TRISH6           .EQ  $0006
TRISH7           .EQ  $0007

RH0              .EQ  $0000
RH1              .EQ  $0001
RH2              .EQ  $0002
RH3              .EQ  $0003
RH4              .EQ  $0004
RH5              .EQ  $0005
RH6              .EQ  $0006
RH7              .EQ  $0007


;----- DDRJ Bits -----------------------------------------------------
TRISJ0           .EQ  $0000
TRISJ1           .EQ  $0001
TRISJ2           .EQ  $0002
TRISJ3           .EQ  $0003
TRISJ4           .EQ  $0004
TRISJ5           .EQ  $0005
TRISJ6           .EQ  $0006
TRISJ7           .EQ  $0007

RJ0              .EQ  $0000
RJ1              .EQ  $0001
RJ2              .EQ  $0002
RJ3              .EQ  $0003
RJ4              .EQ  $0004
RJ5              .EQ  $0005
RJ6              .EQ  $0006
RJ7              .EQ  $0007


;----- TRISJ Bits -----------------------------------------------------
TRISJ0           .EQ  $0000
TRISJ1           .EQ  $0001
TRISJ2           .EQ  $0002
TRISJ3           .EQ  $0003
TRISJ4           .EQ  $0004
TRISJ5           .EQ  $0005
TRISJ6           .EQ  $0006
TRISJ7           .EQ  $0007

RJ0              .EQ  $0000
RJ1              .EQ  $0001
RJ2              .EQ  $0002
RJ3              .EQ  $0003
RJ4              .EQ  $0004
RJ5              .EQ  $0005
RJ6              .EQ  $0006
RJ7              .EQ  $0007


;----- OSCTUNE Bits -----------------------------------------------------
TUN0             .EQ  $0000
TUN1             .EQ  $0001
TUN2             .EQ  $0002
TUN3             .EQ  $0003
TUN4             .EQ  $0004
TUN5             .EQ  $0005
PLLEN            .EQ  $0006
INTSRC           .EQ  $0007


;----- MEMCON Bits -----------------------------------------------------
EBDIS            .EQ  $0007

WM0              .EQ  $0000
WM1              .EQ  $0001
WAIT0            .EQ  $0004
WAIT1            .EQ  $0005


;----- PIE1 Bits -----------------------------------------------------
TMR1IE           .EQ  $0000
TMR2IE           .EQ  $0001
SSPIE            .EQ  $0003
TX1IE            .EQ  $0004
RC1IE            .EQ  $0005
ADIE             .EQ  $0006
PSPIE            .EQ  $0007

SSP1IE           .EQ  $0003
TXIE             .EQ  $0004
RCIE             .EQ  $0005


;----- PIR1 Bits -----------------------------------------------------
TMR1IF           .EQ  $0000
TMR2IF           .EQ  $0001
SSPIF            .EQ  $0003
TX1IF            .EQ  $0004
RC1IF            .EQ  $0005
ADIF             .EQ  $0006
PSPIF            .EQ  $0007

SSP1IF           .EQ  $0003
TXIF             .EQ  $0004
RCIF             .EQ  $0005


;----- IPR1 Bits -----------------------------------------------------
TMR1IP           .EQ  $0000
TMR2IP           .EQ  $0001
SSPIP            .EQ  $0003
TX1IP            .EQ  $0004
RC1IP            .EQ  $0005
ADIP             .EQ  $0006
PSPIP            .EQ  $0007

SSP1IP           .EQ  $0003
TXIP             .EQ  $0004
RCIP             .EQ  $0005


;----- PIE2 Bits -----------------------------------------------------
TMR3IE           .EQ  $0001
LVDIE            .EQ  $0002
BCLIE            .EQ  $0003
CMIE             .EQ  $0006
OSCFIE           .EQ  $0007

BCL1IE           .EQ  $0003


;----- PIR2 Bits -----------------------------------------------------
TMR3IF           .EQ  $0001
LVDIF            .EQ  $0002
BCLIF            .EQ  $0003
CMIF             .EQ  $0006
OSCFIF           .EQ  $0007

BCL1IF           .EQ  $0003


;----- IPR2 Bits -----------------------------------------------------
TMR3IP           .EQ  $0001
LVDIP            .EQ  $0002
BCLIP            .EQ  $0003
CMIP             .EQ  $0006
OSCFIP           .EQ  $0007

BCL1IP           .EQ  $0003


;----- PIE3 Bits -----------------------------------------------------
CCP1IE           .EQ  $0001
CCP2IE           .EQ  $0002
TX2IE            .EQ  $0004
RC2IE            .EQ  $0005


;----- PIR3 Bits -----------------------------------------------------
CCP1IF           .EQ  $0001
CCP2IF           .EQ  $0002
TX2IF            .EQ  $0004
RC2IF            .EQ  $0005


;----- IPR3 Bits -----------------------------------------------------
CCP1IP           .EQ  $0001
CCP2IP           .EQ  $0002
TX2IP            .EQ  $0004
RC2IP            .EQ  $0005


;----- EECON1 Bits -----------------------------------------------------
WR               .EQ  $0001
WREN             .EQ  $0002
WRERR            .EQ  $0003
FREE             .EQ  $0004


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

RX9D1            .EQ  $0000
OERR1            .EQ  $0001
FERR1            .EQ  $0002
ADDEN1           .EQ  $0003
CREN1            .EQ  $0004
SREN1            .EQ  $0005
RX91             .EQ  $0006
SPEN1            .EQ  $0007


;----- RCSTA1 Bits -----------------------------------------------------
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

RX9D1            .EQ  $0000
OERR1            .EQ  $0001
FERR1            .EQ  $0002
ADDEN1           .EQ  $0003
CREN1            .EQ  $0004
SREN1            .EQ  $0005
RX91             .EQ  $0006
SPEN1            .EQ  $0007


;----- TXSTA Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SENDB            .EQ  $0003
SYNC             .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007

TXD8             .EQ  $0000
TX8_9            .EQ  $0006

NOT_TX8          .EQ  $0006

TX9D1            .EQ  $0000
TRMT1            .EQ  $0001
BRGH1            .EQ  $0002
SENDB1           .EQ  $0003
SYNC1            .EQ  $0004
TXEN1            .EQ  $0005
TX91             .EQ  $0006
CSRC1            .EQ  $0007


;----- TXSTA1 Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SENDB            .EQ  $0003
SYNC             .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007

TXD8             .EQ  $0000
TX8_9            .EQ  $0006

NOT_TX8          .EQ  $0006

TX9D1            .EQ  $0000
TRMT1            .EQ  $0001
BRGH1            .EQ  $0002
SENDB1           .EQ  $0003
SYNC1            .EQ  $0004
TXEN1            .EQ  $0005
TX91             .EQ  $0006
CSRC1            .EQ  $0007


;----- PSPCON Bits -----------------------------------------------------
PSPMODE          .EQ  $0004
IBOV             .EQ  $0005
OBF              .EQ  $0006
IBF              .EQ  $0007


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

T3INSYNC         .EQ  $0002


;----- CMCON Bits -----------------------------------------------------
CIS              .EQ  $0003
C1INV            .EQ  $0004
C2INV            .EQ  $0005
C1OUT_CMCON      .EQ  $0006
C2OUT_CMCON      .EQ  $0007

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
ADCAL            .EQ  $0007

GO_DONE          .EQ  $0001
CHS0             .EQ  $0002
CHS1             .EQ  $0003
CHS2             .EQ  $0004
CHS3             .EQ  $0005

DONE             .EQ  $0001

GO               .EQ  $0001

NOT_DONE         .EQ  $0001


;----- SSP1CON2 Bits -----------------------------------------------------
SEN              .EQ  $0000
RSEN             .EQ  $0001
PEN              .EQ  $0002
RCEN             .EQ  $0003
ACKEN            .EQ  $0004
ACKDT            .EQ  $0005
ACKSTAT          .EQ  $0006
GCEN             .EQ  $0007

ADMSK1           .EQ  $0001
ADMSK2           .EQ  $0002
ADMSK3           .EQ  $0003
ADMSK4           .EQ  $0004
ADMSK5           .EQ  $0005


;----- SSPCON2 Bits -----------------------------------------------------
SEN              .EQ  $0000
RSEN             .EQ  $0001
PEN              .EQ  $0002
RCEN             .EQ  $0003
ACKEN            .EQ  $0004
ACKDT            .EQ  $0005
ACKSTAT          .EQ  $0006
GCEN             .EQ  $0007

ADMSK1           .EQ  $0001
ADMSK2           .EQ  $0002
ADMSK3           .EQ  $0003
ADMSK4           .EQ  $0004
ADMSK5           .EQ  $0005


;----- SSP1CON1 Bits -----------------------------------------------------
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


;----- SSP1STAT Bits -----------------------------------------------------
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

R_W              .EQ  $0002
D_A              .EQ  $0005

NOT_W            .EQ  $0002
NOT_A            .EQ  $0005

NOT_WRITE        .EQ  $0002
NOT_ADDRESS      .EQ  $0005

READ_WRITE       .EQ  $0002
DATA_ADDRESS     .EQ  $0005

I2C_READ         .EQ  $0002
I2C_START        .EQ  $0003
I2C_STOP         .EQ  $0004
I2C_DAT          .EQ  $0005


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

R_W              .EQ  $0002
D_A              .EQ  $0005

NOT_W            .EQ  $0002
NOT_A            .EQ  $0005

NOT_WRITE        .EQ  $0002
NOT_ADDRESS      .EQ  $0005

READ_WRITE       .EQ  $0002
DATA_ADDRESS     .EQ  $0005

I2C_READ         .EQ  $0002
I2C_START        .EQ  $0003
I2C_STOP         .EQ  $0004
I2C_DAT          .EQ  $0005


;----- T2CON Bits -----------------------------------------------------
TMR2ON           .EQ  $0002

T2CKPS0          .EQ  $0000
T2CKPS1          .EQ  $0001
T2OUTPS0         .EQ  $0003
T2OUTPS1         .EQ  $0004
T2OUTPS2         .EQ  $0005
T2OUTPS3         .EQ  $0006


;----- T1CON Bits -----------------------------------------------------
TMR1ON           .EQ  $0000
TMR1CS           .EQ  $0001
NOT_T1SYNC       .EQ  $0002
T1OSCEN          .EQ  $0003
T1RUN            .EQ  $0006
RD16             .EQ  $0007

T1INSYNC         .EQ  $0002
T1CKPS0          .EQ  $0004
T1CKPS1          .EQ  $0005

T1SYNC           .EQ  $0002


;----- RCON Bits -----------------------------------------------------
NOT_BOR          .EQ  $0000
NOT_POR          .EQ  $0001
NOT_PD           .EQ  $0002
NOT_TO           .EQ  $0003
NOT_RI           .EQ  $0004
NOT_CM           .EQ  $0005
IPEN             .EQ  $0007

BOR              .EQ  $0000
POR              .EQ  $0001
PD               .EQ  $0002
TO               .EQ  $0003
RI               .EQ  $0004
CM               .EQ  $0005


;----- WDTCON Bits -----------------------------------------------------
SWDTEN           .EQ  $0000
REGSLP           .EQ  $0007

SWDTE            .EQ  $0000


;----- OSCCON Bits -----------------------------------------------------
IOFS             .EQ  $0002
OSTS             .EQ  $0003
IDLEN            .EQ  $0007

SCS0             .EQ  $0000
SCS1             .EQ  $0001
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


;----- STATUS Bits -----------------------------------------------------
C                .EQ  $0000
DC               .EQ  $0001
Z                .EQ  $0002
OV               .EQ  $0003
N                .EQ  $0004


;----- INTCON3 Bits -----------------------------------------------------
INT1IF           .EQ  $0000
INT2IF           .EQ  $0001
INT3IF           .EQ  $0002
INT1IE           .EQ  $0003
INT2IE           .EQ  $0004
INT3IE           .EQ  $0005
INT1IP           .EQ  $0006
INT2IP           .EQ  $0007

INT1F            .EQ  $0000
INT2F            .EQ  $0001
INT3F            .EQ  $0002
INT1E            .EQ  $0003
INT2E            .EQ  $0004
INT3E            .EQ  $0005
INT1P            .EQ  $0006
INT2P            .EQ  $0007


;----- INTCON2 Bits -----------------------------------------------------
RBIP             .EQ  $0000
INT3IP           .EQ  $0001
TMR0IP           .EQ  $0002
INTEDG3          .EQ  $0003
INTEDG2          .EQ  $0004
INTEDG1          .EQ  $0005
INTEDG0          .EQ  $0006
NOT_RBPU         .EQ  $0007

INT3P            .EQ  $0001
T0IP             .EQ  $0002
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

STKPTR0          .EQ  $0000
STKPTR1          .EQ  $0001
STKPTR2          .EQ  $0002
STKPTR3          .EQ  $0003
STKPTR4          .EQ  $0004



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
;   Watchdog Timer Enable bit:
;     WDTEN = OFF          WDT disabled (control is placed on SWDTEN bit)
;     WDTEN = ON           WDT enabled
;
;   Stack Overflow/Underflow Reset Enable bit:
;     STVREN = OFF         Reset on stack overflow/underflow disabled
;     STVREN = ON          Reset on stack overflow/underflow enabled
;
;   Extended Instruction Set Enable bit:
;     XINST = OFF          Instruction set extension and Indexed Addressing mode disabled (Legacy mode)
;     XINST = ON           Instruction set extension and Indexed Addressing mode enabled
;
;   Background Debugger Enable bit:
;     DEBUG = ON           Background debugger enabled; RB6 and RB7 are dedicated to In-Circuit Debug
;     DEBUG = OFF          Background debugger disabled; RB6 and RB7 configured as general purpose I/O pins
;
;   Code Protection bit:
;     CP0 = ON             Program memory is code-protected
;     CP0 = OFF            Program memory is not code-protected
;
;   Oscillator Selection bits:
;     FOSC = HS            HS oscillator
;     FOSC = HSPLL         HS oscillator, PLL enabled and under software control
;     FOSC = EC            EC oscillator, CLKO function on OSC2
;     FOSC = ECPLL         EC oscillator, PLL enabled and under software control, CLK function on OSC2
;
;   Default/Reset System Clock Select bit:
;     FOSC2 = OFF          INTRC enabled as system clock when OSCCON<1:0> = 00
;     FOSC2 = ON           Clock selected by FOSC1:FOSC0 as system clock is enabled when OSCCON<1:0> = 00
;
;   Fail-Safe Clock Monitor Enable bit:
;     FCMEN = OFF          Fail-Safe Clock Monitor disabled
;     FCMEN = ON           Fail-Safe Clock Monitor enabled
;
;   Two-Speed Start-up (Internal/External Oscillator Switchover) Control bit:
;     IESO = OFF           Two-Speed Start-up disabled
;     IESO = ON            Two-Speed Start-up enabled
;
;   Watchdog Timer Postscaler Select bits:
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
;   External Address Bus Shift Enable bit:
;     EASHFT = OFF         Address shifting disabled, address on external bus reflects the PC value
;     EASHFT = ON          Address shifting enabled, address on external bus is offset to start at 000000h
;
;   External Memory Bus:
;     MODE = XM20          Extended Microcontroller mode, 20-bit Address mode
;     MODE = XM16          Extended Microcontroller mode, 16-bit Address mode
;     MODE = XM12          Extended Microcontroller mode, 12-bit Address mode
;     MODE = MM            Microcontroller mode - External bus disabled
;
;   Data Bus Width Select bit:
;     BW = 8               8-bit external bus mode
;     BW = 16              16-bit external bus mode
;
;   External Bus Wait Enable bit:
;     WAIT = ON            Wait states for operations on external memory bus enabled
;     WAIT = OFF           Wait states for operations on external memory bus disabled
;
;   CCP2 MUX bit:
;     CCP2MX = ALTERNATE   CCP2 is multiplexed with RE7 in Microcontroller mode or with RB3 in Extended Microcontroller mode
;     CCP2MX = DEFAULT     CCP2 is multiplexed with RC1
;
;==========================================================================
;----- DEVID Equates --------------------------------------------------
_DEVID1          .EQ  $3FFFFE
_DEVID2          .EQ  $3FFFFF
