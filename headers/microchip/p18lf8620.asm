;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC18LF8620 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC18LF8620 microcontroller.  These names
;  are taken to match the data sheets as closely as possible.
;==========================================================================

;==========================================================================
;
;       Select cross overlay
;
;==========================================================================

                  .CR   pic16
                  .MS   32768

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
RCSTA2           .EQ  $0F6B
TXSTA2           .EQ  $0F6C
TXREG2           .EQ  $0F6D
RCREG2           .EQ  $0F6E
SPBRG2           .EQ  $0F6F
CCP5CON          .EQ  $0F70
CCPR5            .EQ  $0F71
CCPR5L           .EQ  $0F71
CCPR5H           .EQ  $0F72
CCP4CON          .EQ  $0F73
CCPR4            .EQ  $0F74
CCPR4L           .EQ  $0F74
CCPR4H           .EQ  $0F75
T4CON            .EQ  $0F76
PR4              .EQ  $0F77
TMR4             .EQ  $0F78
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
EEDATA           .EQ  $0FA8
EEADR            .EQ  $0FA9
EEADRH           .EQ  $0FAA
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
CCP3CON          .EQ  $0FB7
CCPR3            .EQ  $0FB8
CCPR3L           .EQ  $0FB8
CCPR3H           .EQ  $0FB9
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
INTCON1          .EQ  $0FF2
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
ADEN             .EQ  $0003
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


;----- CCP5CON Bits -----------------------------------------------------
CCP5M0           .EQ  $0000
CCP5M1           .EQ  $0001
CCP5M2           .EQ  $0002
CCP5M3           .EQ  $0003
DC5B0            .EQ  $0004
DC5B1            .EQ  $0005

DCCP5Y           .EQ  $0004
DCCP5X           .EQ  $0005


;----- CCP4CON Bits -----------------------------------------------------
CCP4M0           .EQ  $0000
CCP4M1           .EQ  $0001
CCP4M2           .EQ  $0002
CCP4M3           .EQ  $0003
DC4B0            .EQ  $0004
DC4B1            .EQ  $0005

DCCP4Y           .EQ  $0004
DCCP4X           .EQ  $0005


;----- T4CON Bits -----------------------------------------------------
TMR4ON           .EQ  $0002

T4CKPS0          .EQ  $0000
T4CKPS1          .EQ  $0001
T4OUTPS0         .EQ  $0003
T4OUTPS1         .EQ  $0004
T4OUTPS2         .EQ  $0005
T4OUTPS3         .EQ  $0006


;----- PORTA Bits -----------------------------------------------------
RA0              .EQ  $0000
RA1              .EQ  $0001
RA2              .EQ  $0002
RA3              .EQ  $0003
RA4              .EQ  $0004
RA5              .EQ  $0005
RA6              .EQ  $0006

AN0              .EQ  $0000
AN1              .EQ  $0001
AN2              .EQ  $0002
AN3              .EQ  $0003
T0CKI            .EQ  $0004
AN4              .EQ  $0005
OSC2             .EQ  $0006

VREFM            .EQ  $0002
VREFP            .EQ  $0003
LVDIN            .EQ  $0005
CLKO             .EQ  $0006


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
PGM              .EQ  $0005
PGC              .EQ  $0006
PGD              .EQ  $0007

CCP2A_PORTB      .EQ  $0003


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

CCP2A_PORTC      .EQ  $0001


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

AD00             .EQ  $0000
AD01             .EQ  $0001
AD02             .EQ  $0002
AD03             .EQ  $0003
AD04             .EQ  $0004
AD05             .EQ  $0005
AD06             .EQ  $0006
AD07             .EQ  $0007


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

AD08             .EQ  $0000
AD09             .EQ  $0001
CCP2C            .EQ  $0007


;----- PORTF Bits -----------------------------------------------------
RF0              .EQ  $0000
RF1              .EQ  $0001
RF2              .EQ  $0002
RF3              .EQ  $0003
RF4              .EQ  $0004
RF5              .EQ  $0005
RF6              .EQ  $0006
RF7              .EQ  $0007

AN5              .EQ  $0000
AN6              .EQ  $0001
AN7              .EQ  $0002
AN8              .EQ  $0003
AN9              .EQ  $0004
AN10             .EQ  $0005
AN11             .EQ  $0006
SS               .EQ  $0007

C2OUT_PORTF      .EQ  $0001
C1OUT_PORTF      .EQ  $0002
CVREF_PORTF      .EQ  $0005


;----- PORTG Bits -----------------------------------------------------
RG0              .EQ  $0000
RG1              .EQ  $0001
RG2              .EQ  $0002
RG3              .EQ  $0003
RG4              .EQ  $0004

CCP3             .EQ  $0000
TX2              .EQ  $0001
RX2              .EQ  $0002
CCP4             .EQ  $0003
CCP5             .EQ  $0004

CK2              .EQ  $0001
DT2              .EQ  $0002


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
AN12             .EQ  $0004
AN13             .EQ  $0005
AN14             .EQ  $0006
AN15             .EQ  $0007

AD16             .EQ  $0000
AD17             .EQ  $0001
AD18             .EQ  $0002
AD19             .EQ  $0003


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

RA0              .EQ  $0000
RA1              .EQ  $0001
RA2              .EQ  $0002
RA3              .EQ  $0003
RA4              .EQ  $0004
RA5              .EQ  $0005
RA6              .EQ  $0006


;----- TRISA Bits -----------------------------------------------------
TRISA0           .EQ  $0000
TRISA1           .EQ  $0001
TRISA2           .EQ  $0002
TRISA3           .EQ  $0003
TRISA4           .EQ  $0004
TRISA5           .EQ  $0005
TRISA6           .EQ  $0006

RA0              .EQ  $0000
RA1              .EQ  $0001
RA2              .EQ  $0002
RA3              .EQ  $0003
RA4              .EQ  $0004
RA5              .EQ  $0005
RA6              .EQ  $0006


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
TRISF0           .EQ  $0000
TRISF1           .EQ  $0001
TRISF2           .EQ  $0002
TRISF3           .EQ  $0003
TRISF4           .EQ  $0004
TRISF5           .EQ  $0005
TRISF6           .EQ  $0006
TRISF7           .EQ  $0007

RF0              .EQ  $0000
RF1              .EQ  $0001
RF2              .EQ  $0002
RF3              .EQ  $0003
RF4              .EQ  $0004
RF5              .EQ  $0005
RF6              .EQ  $0006
RF7              .EQ  $0007


;----- TRISF Bits -----------------------------------------------------
TRISF0           .EQ  $0000
TRISF1           .EQ  $0001
TRISF2           .EQ  $0002
TRISF3           .EQ  $0003
TRISF4           .EQ  $0004
TRISF5           .EQ  $0005
TRISF6           .EQ  $0006
TRISF7           .EQ  $0007

RF0              .EQ  $0000
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


;----- MEMCON Bits -----------------------------------------------------
EBDIS            .EQ  $0007

WM0              .EQ  $0000
WM1              .EQ  $0001
WAIT0            .EQ  $0004
WAIT1            .EQ  $0005


;----- PIE1 Bits -----------------------------------------------------
TMR1IE           .EQ  $0000
TMR2IE           .EQ  $0001
CCP1IE           .EQ  $0002
SSPIE            .EQ  $0003
TXIE             .EQ  $0004
RCIE             .EQ  $0005
ADIE             .EQ  $0006
PSPIE            .EQ  $0007

TX1IE            .EQ  $0004
RC1IE            .EQ  $0005


;----- PIR1 Bits -----------------------------------------------------
TMR1IF           .EQ  $0000
TMR2IF           .EQ  $0001
CCP1IF           .EQ  $0002
SSPIF            .EQ  $0003
TXIF             .EQ  $0004
RCIF             .EQ  $0005
ADIF             .EQ  $0006
PSPIF            .EQ  $0007

TX1IF            .EQ  $0004
RC1IF            .EQ  $0005


;----- IPR1 Bits -----------------------------------------------------
TMR1IP           .EQ  $0000
TMR2IP           .EQ  $0001
CCP1IP           .EQ  $0002
SSPIP            .EQ  $0003
TXIP             .EQ  $0004
RCIP             .EQ  $0005
ADIP             .EQ  $0006
PSPIP            .EQ  $0007

TX1IP            .EQ  $0004
RC1IP            .EQ  $0005


;----- PIE2 Bits -----------------------------------------------------
CCP2IE           .EQ  $0000
TMR3IE           .EQ  $0001
LVDIE            .EQ  $0002
BCLIE            .EQ  $0003
EEIE             .EQ  $0004
CMIE             .EQ  $0006


;----- PIR2 Bits -----------------------------------------------------
CCP2IF           .EQ  $0000
TMR3IF           .EQ  $0001
LVDIF            .EQ  $0002
BCLIF            .EQ  $0003
EEIF             .EQ  $0004
CMIF             .EQ  $0006


;----- IPR2 Bits -----------------------------------------------------
CCP2IP           .EQ  $0000
TMR3IP           .EQ  $0001
LVDIP            .EQ  $0002
BCLIP            .EQ  $0003
EEIP             .EQ  $0004
CMIP             .EQ  $0006


;----- PIE3 Bits -----------------------------------------------------
CCP3IE           .EQ  $0000
CCP4IE           .EQ  $0001
CCP5IE           .EQ  $0002
TMR4IE           .EQ  $0003
TX2IE            .EQ  $0004
RC2IE            .EQ  $0005


;----- PIR3 Bits -----------------------------------------------------
CCP3IF           .EQ  $0000
CCP4IF           .EQ  $0001
CCP5IF           .EQ  $0002
TMR4IF           .EQ  $0003
TX2IF            .EQ  $0004
RC2IF            .EQ  $0005


;----- IPR3 Bits -----------------------------------------------------
CCP3IP           .EQ  $0000
CCP4IP           .EQ  $0001
CCP5IP           .EQ  $0002
TMR4IP           .EQ  $0003
TX2IP            .EQ  $0004
RC2IP            .EQ  $0005


;----- EECON1 Bits -----------------------------------------------------
RD               .EQ  $0000
WR               .EQ  $0001
WREN             .EQ  $0002
WRERR            .EQ  $0003
FREE             .EQ  $0004
CFGS             .EQ  $0006
EEPGD            .EQ  $0007

EEFS             .EQ  $0006


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
ADEN             .EQ  $0003
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
ADEN             .EQ  $0003
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

T3NSYNC          .EQ  $0002


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
CVREF_CVRCON     .EQ  $0004


;----- CCP3CON Bits -----------------------------------------------------
CCP3M0           .EQ  $0000
CCP3M1           .EQ  $0001
CCP3M2           .EQ  $0002
CCP3M3           .EQ  $0003
DC3B0            .EQ  $0004
DC3B1            .EQ  $0005

DCCP3Y           .EQ  $0004
DCCP3X           .EQ  $0005


;----- CCP2CON Bits -----------------------------------------------------
CCP2M0           .EQ  $0000
CCP2M1           .EQ  $0001
CCP2M2           .EQ  $0002
CCP2M3           .EQ  $0003
DC2B0            .EQ  $0004
DC2B1            .EQ  $0005

CCP2Y            .EQ  $0004
CCP2X            .EQ  $0005

DCCP2Y           .EQ  $0004
DCCP2X           .EQ  $0005


;----- CCP1CON Bits -----------------------------------------------------
CCP1M0           .EQ  $0000
CCP1M1           .EQ  $0001
CCP1M2           .EQ  $0002
CCP1M3           .EQ  $0003
DC1B0            .EQ  $0004
DC1B1            .EQ  $0005

CCP1Y            .EQ  $0004
CCP1X            .EQ  $0005

DCCP1Y           .EQ  $0004
DCCP1X           .EQ  $0005


;----- ADCON2 Bits -----------------------------------------------------
ADFM             .EQ  $0007

ADCS0            .EQ  $0000
ADCS1            .EQ  $0001
ADCS2            .EQ  $0002


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

DONE             .EQ  $0001
CHS0             .EQ  $0002
CHS1             .EQ  $0003
CHS2             .EQ  $0004
CHS3             .EQ  $0005

GO_DONE          .EQ  $0001

GO               .EQ  $0001

NOT_DONE         .EQ  $0001

GODONE           .EQ  $0001


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

R_W              .EQ  $0002
D_A              .EQ  $0005

I2C_READ         .EQ  $0002
I2C_START        .EQ  $0003
I2C_STOP         .EQ  $0004
I2C_DAT          .EQ  $0005

NOT_W            .EQ  $0002
NOT_A            .EQ  $0005

NOT_WRITE        .EQ  $0002
NOT_ADDRESS      .EQ  $0005

READ_WRITE       .EQ  $0002
DATA_ADDRESS     .EQ  $0005

R                .EQ  $0002
D                .EQ  $0005


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
RD16             .EQ  $0007

T1SYNC           .EQ  $0002
T1CKPS0          .EQ  $0004
T1CKPS1          .EQ  $0005

T1INSYNC         .EQ  $0002


;----- RCON Bits -----------------------------------------------------
NOT_BOR          .EQ  $0000
NOT_POR          .EQ  $0001
NOT_PD           .EQ  $0002
NOT_TO           .EQ  $0003
NOT_RI           .EQ  $0004
IPEN             .EQ  $0007

BOR              .EQ  $0000
POR              .EQ  $0001
PD               .EQ  $0002
TO               .EQ  $0003
RI               .EQ  $0004
NOT_IPEN         .EQ  $0007


;----- WDTCON Bits -----------------------------------------------------
SWDTEN           .EQ  $0000

SWDTE            .EQ  $0000


;----- LVDCON Bits -----------------------------------------------------
LVDEN            .EQ  $0004
IRVST            .EQ  $0005

LVDL0            .EQ  $0000
LVDL1            .EQ  $0001
LVDL2            .EQ  $0002
LVDL3            .EQ  $0003

LVV0             .EQ  $0000
LVV1             .EQ  $0001
LVV2             .EQ  $0002
LVV3             .EQ  $0003
BGST             .EQ  $0005


;----- OSCCON Bits -----------------------------------------------------
SCS              .EQ  $0000


;----- T0CON Bits -----------------------------------------------------
PSA              .EQ  $0003
T0SE             .EQ  $0004
T0CS             .EQ  $0005
T08BIT           .EQ  $0006
TMR0ON           .EQ  $0007

T0PS0            .EQ  $0000
T0PS1            .EQ  $0001
T0PS2            .EQ  $0002


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


;----- INTCON1 Bits -----------------------------------------------------
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

STKPTR0          .EQ  $0000
STKPTR1          .EQ  $0001
STKPTR2          .EQ  $0002
STKPTR3          .EQ  $0003
STKPTR4          .EQ  $0004
STKOVF           .EQ  $0007

SP0              .EQ  $0000
SP1              .EQ  $0001
SP2              .EQ  $0002
SP3              .EQ  $0003
SP4              .EQ  $0004



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
;     OSC = RC             RC oscillator w/ OSC2 configured as divide-by-4 clock output
;     OSC = EC             EC oscillator w/ OSC2 configured as divide-by-4 clock output
;     OSC = ECIO           EC oscillator w/ OSC2 configured as RA6
;     OSC = HSPLL          HS oscillator with PLL enabled; clock frequency = (4 x FOSC)
;     OSC = RCIO           RC oscillator w/ OSC2 configured as RA6
;
;   Oscillator System Clock Switch Enable bit:
;     OSCS = ON            Timer1 Oscillator system clock switch option is enabled (oscillator switching is enabled)
;     OSCS = OFF           Oscillator system clock switch option is disabled (main oscillator is source)
;
;   Power-up Timer Enable bit:
;     PWRT = ON            PWRT enabled
;     PWRT = OFF           PWRT disabled
;
;   Brown-out Reset Enable bit:
;     BOR = OFF            Brown-out Reset disabled
;     BOR = ON             Brown-out Reset enabled
;
;   Brown-out Reset Voltage bits:
;     BORV = 45            VBOR set to 4.5V
;     BORV = 42            VBOR set to 4.2V
;     BORV = 27            VBOR set to 2.7V
;     BORV = 25            VBOR set to 2.5V
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
;
;   Processor Mode Select bits:
;     MODE = EM            Extended Microcontroller mode
;     MODE = MPB           Microprocessor with Boot Block mode
;     MODE = MP            Microprocessor mode
;     MODE = MC            Microcontroller mode
;
;   External Bus Data Wait Enable bit:
;     WAIT = ON            Wait selections for table reads and table writes are determined by the WAIT1:WAIT0 bits (MEMCOM<5:4>)
;     WAIT = OFF           Wait selections unavailable for table reads and table writes
;
;   CCP2 Mux bit:
;     CCP2MUX = OFF        CCP2 is multiplexed with RB3 in Extended Microcontroller, Microprocessor or Microprocessor with Boot Block mode. Or with RE7 in Microcontroller mode.
;     CCP2MUX = ON         CCP2 input/output is multiplexed with RC1
;
;   Stack Full/Underflow Reset Enable bit:
;     STVR = OFF           Stack full/underflow will not cause Reset
;     STVR = ON            Stack full/underflow will cause Reset
;
;   Low-Voltage ICSP Enable bit:
;     LVP = OFF            Low-voltage ICSP disabled
;     LVP = ON             Low-voltage ICSP enabled
;
;   Background Debugger Enable bit:
;     DEBUG = ON           Background debugger enabled. RB6 and RB7 are dedicated to In-Circuit Debug.
;     DEBUG = OFF          Background debugger disabled. RB6 and RB7 configured as general purpose I/O pins.
;
;   Code Protection bit:
;     CP0 = ON             Block 0 (000200-003FFFh) code-protected
;     CP0 = OFF            Block 0 (000200-003FFFh) not code-protected
;
;   Code Protection bit:
;     CP1 = ON             Block 1 (004000-007FFFh) code-protected
;     CP1 = OFF            Block 1 (004000-007FFFh) not code-protected
;
;   Code Protection bit:
;     CP2 = ON             Block 2 (008000-00BFFFh) code-protected
;     CP2 = OFF            Block 2 (008000-00BFFFh) not code-protected
;
;   Code Protection bit:
;     CP3 = ON             Block 3 (00C000-00FFFFh) code-protected
;     CP3 = OFF            Block 3 (00C000-00FFFFh) not code-protected
;
;   Boot Block Code Protection bit:
;     CPB = ON             Boot Block (000000-0001FFh) code-protected
;     CPB = OFF            Boot Block (000000-0001FFh) not code-protected
;
;   Data EEPROM Code Protection bit:
;     CPD = ON             Data EEPROM code-protected
;     CPD = OFF            Data EEPROM not code-protected
;
;   Write Protection bit:
;     WRT0 = ON            Block 0 (000200-003FFFh) write-protected
;     WRT0 = OFF           Block 0 (000200-003FFFh) not write-protected
;
;   Write Protection bit:
;     WRT1 = ON            Block 1 (004000-007FFFh) write-protected
;     WRT1 = OFF           Block 1 (004000-007FFFh) not write-protected
;
;   Write Protection bit:
;     WRT2 = ON            Block 2 (008000-00BFFFh) write-protected
;     WRT2 = OFF           Block 2 (008000-00BFFFh) not write-protected
;
;   Write Protection bit:
;     WRT3 = ON            Block 3 (00C000-00FFFFh) write-protected
;     WRT3 = OFF           Block 3 (00C000-00FFFFh) not write-protected
;
;   Configuration Register Write Protection bit:
;     WRTC = ON            Configuration registers (300000-3000FFh) write-protected
;     WRTC = OFF           Configuration registers (300000-3000FFh) not write-protected
;
;   Boot Block Write Protection bit:
;     WRTB = ON            Boot Block (000000-0001FFh) write-protected
;     WRTB = OFF           Boot Block (000000-0001FFh) not write-protected
;
;   Data EEPROM Write Protection bit:
;     WRTD = ON            Data EEPROM write-protected
;     WRTD = OFF           Data EEPROM not write-protected
;
;   Table Read Protection bit:
;     EBTR0 = ON           Block 0 (000200-003FFFh) protected from table reads executed in other blocks
;     EBTR0 = OFF          Block 0 (000200-003FFFh) not protected from table reads executed in other blocks
;
;   Table Read Protection bit:
;     EBTR1 = ON           Block 1 (004000-007FFFh) protected from table reads executed in other blocks
;     EBTR1 = OFF          Block 1 (004000-007FFFh) not protected from table reads executed in other blocks
;
;   Table Read Protection bit:
;     EBTR2 = ON           Block 2 (008000-00BFFFh) protected from table reads executed in other blocks
;     EBTR2 = OFF          Block 2 (008000-00BFFFh) not protected from table reads executed in other blocks
;
;   Table Read Protection bit:
;     EBTR3 = ON           Block 3 (00C000-00FFFFh) protected from table reads executed in other blocks
;     EBTR3 = OFF          Block 3 (00C000-00FFFFh) not protected from table reads executed in other blocks
;
;   Boot Block Table Read Protection bit:
;     EBTRB = ON           Boot Block (000000-0001FFh) protected from table reads executed in other blocks
;     EBTRB = OFF          Boot Block (000000-0001FFh) not protected from table reads executed in other blocks
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
;   CONFIG3L        300004h
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
_CONFIG3L       .EQ  $300004
_CONFIG3H       .EQ  $300005
_CONFIG4L       .EQ  $300006
_CONFIG5L       .EQ  $300008
_CONFIG5H       .EQ  $300009
_CONFIG6L       .EQ  $30000A
_CONFIG6H       .EQ  $30000B
_CONFIG7L       .EQ  $30000C
_CONFIG7H       .EQ  $30000D

;----- CONFIG1H Options --------------------------------------------------
_LP_OSC              .EQ  $F8  LP oscillator
_LP_OSC_1H           .EQ  $F8  LP oscillator
_XT_OSC              .EQ  $F9  XT oscillator
_XT_OSC_1H           .EQ  $F9  XT oscillator
_HS_OSC              .EQ  $FA  HS oscillator
_HS_OSC_1H           .EQ  $FA  HS oscillator
_RC_OSC              .EQ  $FB  RC oscillator w/ OSC2 configured as divide-by-4 clock output
_RC_OSC_1H           .EQ  $FB  RC oscillator w/ OSC2 configured as divide-by-4 clock output
_EC_OSC              .EQ  $FC  EC oscillator w/ OSC2 configured as divide-by-4 clock output
_EC_OSC_1H           .EQ  $FC  EC oscillator w/ OSC2 configured as divide-by-4 clock output
_ECIO_OSC            .EQ  $FD  EC oscillator w/ OSC2 configured as RA6
_ECIO_OSC_1H         .EQ  $FD  EC oscillator w/ OSC2 configured as RA6
_HSPLL_OSC           .EQ  $FE  HS oscillator with PLL enabled; clock frequency = (4 x FOSC)
_HSPLL_OSC_1H        .EQ  $FE  HS oscillator with PLL enabled; clock frequency = (4 x FOSC)
_RCIO_OSC            .EQ  $FF  RC oscillator w/ OSC2 configured as RA6
_RCIO_OSC_1H         .EQ  $FF  RC oscillator w/ OSC2 configured as RA6

_OSCS_ON_1H          .EQ  $DF  Timer1 Oscillator system clock switch option is enabled (oscillator switching is enabled)
_OSCS_OFF_1H         .EQ  $FF  Oscillator system clock switch option is disabled (main oscillator is source)

;----- CONFIG2L Options --------------------------------------------------
_PWRT_ON_2L          .EQ  $FE  PWRT enabled
_PWRT_OFF_2L         .EQ  $FF  PWRT disabled

_BOR_OFF_2L          .EQ  $FD  Brown-out Reset disabled
_BOR_ON_2L           .EQ  $FF  Brown-out Reset enabled

_BORV_45_2L          .EQ  $F3  VBOR set to 4.5V
_BORV_42_2L          .EQ  $F7  VBOR set to 4.2V
_BORV_27_2L          .EQ  $FB  VBOR set to 2.7V
_BORV_20             .EQ  $FF  VBOR set to 2.5V
_BORV_20_2L          .EQ  $FF  VBOR set to 2.5V

;----- CONFIG2H Options --------------------------------------------------
_WDT_OFF_2H          .EQ  $FE  WDT disabled (control is placed on the SWDTEN bit)
_WDT_ON_2H           .EQ  $FF  WDT enabled

_WDTPS_1_2H          .EQ  $F1  1:1
_WDTPS_2_2H          .EQ  $F3  1:2
_WDTPS_4_2H          .EQ  $F5  1:4
_WDTPS_8_2H          .EQ  $F7  1:8
_WDTPS_16_2H         .EQ  $F9  1:16
_WDTPS_32_2H         .EQ  $FB  1:32
_WDTPS_64_2H         .EQ  $FD  1:64
_WDTPS_128_2H        .EQ  $FF  1:128

;----- CONFIG3L Options --------------------------------------------------
_XMC_MODE            .EQ  $FC  Extended Microcontroller mode
_XMC_MODE_3L         .EQ  $FC  Extended Microcontroller mode
_MPB_MODE            .EQ  $FD  Microprocessor with Boot Block mode
_MPB_MODE_3L         .EQ  $FD  Microprocessor with Boot Block mode
_MP_MODE             .EQ  $FE  Microprocessor mode
_MP_MODE_3L          .EQ  $FE  Microprocessor mode
_MC_MODE             .EQ  $FF  Microcontroller mode
_MC_MODE_3L          .EQ  $FF  Microcontroller mode

_WAIT_ON_3L          .EQ  $7F  Wait selections for table reads and table writes are determined by the WAIT1:WAIT0 bits (MEMCOM<5:4>)
_WAIT_OFF_3L         .EQ  $FF  Wait selections unavailable for table reads and table writes

;----- CONFIG3H Options --------------------------------------------------
_CCP2MX_OFF          .EQ  $FE  CCP2 is multiplexed with RB3 in Extended Microcontroller, Microprocessor or Microprocessor with Boot Block mode. Or with RE7 in Microcontroller mode.
_CCP2MX_OFF_3H       .EQ  $FE  CCP2 is multiplexed with RB3 in Extended Microcontroller, Microprocessor or Microprocessor with Boot Block mode. Or with RE7 in Microcontroller mode.
_CCP2MX_ON           .EQ  $FF  CCP2 input/output is multiplexed with RC1
_CCP2MX_ON_3H        .EQ  $FF  CCP2 input/output is multiplexed with RC1

;----- CONFIG4L Options --------------------------------------------------
_STVR_OFF_4L         .EQ  $FE  Stack full/underflow will not cause Reset
_STVR_ON_4L          .EQ  $FF  Stack full/underflow will cause Reset

_LVP_OFF_4L          .EQ  $FB  Low-voltage ICSP disabled
_LVP_ON_4L           .EQ  $FF  Low-voltage ICSP enabled

_DEBUG_ON_4L         .EQ  $7F  Background debugger enabled. RB6 and RB7 are dedicated to In-Circuit Debug.
_DEBUG_OFF_4L        .EQ  $FF  Background debugger disabled. RB6 and RB7 configured as general purpose I/O pins.

;----- CONFIG5L Options --------------------------------------------------
_CP0_ON_5L           .EQ  $FE  Block 0 (000200-003FFFh) code-protected
_CP0_OFF_5L          .EQ  $FF  Block 0 (000200-003FFFh) not code-protected

_CP1_ON_5L           .EQ  $FD  Block 1 (004000-007FFFh) code-protected
_CP1_OFF_5L          .EQ  $FF  Block 1 (004000-007FFFh) not code-protected

_CP2_ON_5L           .EQ  $FB  Block 2 (008000-00BFFFh) code-protected
_CP2_OFF_5L          .EQ  $FF  Block 2 (008000-00BFFFh) not code-protected

_CP3_ON_5L           .EQ  $F7  Block 3 (00C000-00FFFFh) code-protected
_CP3_OFF_5L          .EQ  $FF  Block 3 (00C000-00FFFFh) not code-protected

;----- CONFIG5H Options --------------------------------------------------
_CPB_ON_5H           .EQ  $BF  Boot Block (000000-0001FFh) code-protected
_CPB_OFF_5H          .EQ  $FF  Boot Block (000000-0001FFh) not code-protected

_CPD_ON_5H           .EQ  $7F  Data EEPROM code-protected
_CPD_OFF_5H          .EQ  $FF  Data EEPROM not code-protected

;----- CONFIG6L Options --------------------------------------------------
_WRT0_ON_6L          .EQ  $FE  Block 0 (000200-003FFFh) write-protected
_WRT0_OFF_6L         .EQ  $FF  Block 0 (000200-003FFFh) not write-protected

_WRT1_ON_6L          .EQ  $FD  Block 1 (004000-007FFFh) write-protected
_WRT1_OFF_6L         .EQ  $FF  Block 1 (004000-007FFFh) not write-protected

_WRT2_ON_6L          .EQ  $FB  Block 2 (008000-00BFFFh) write-protected
_WRT2_OFF_6L         .EQ  $FF  Block 2 (008000-00BFFFh) not write-protected

_WRT3_ON_6L          .EQ  $F7  Block 3 (00C000-00FFFFh) write-protected
_WRT3_OFF_6L         .EQ  $FF  Block 3 (00C000-00FFFFh) not write-protected

;----- CONFIG6H Options --------------------------------------------------
_WRTC_ON_6H          .EQ  $DF  Configuration registers (300000-3000FFh) write-protected
_WRTC_OFF_6H         .EQ  $FF  Configuration registers (300000-3000FFh) not write-protected

_WRTB_ON_6H          .EQ  $BF  Boot Block (000000-0001FFh) write-protected
_WRTB_OFF_6H         .EQ  $FF  Boot Block (000000-0001FFh) not write-protected

_WRTD_ON_6H          .EQ  $7F  Data EEPROM write-protected
_WRTD_OFF_6H         .EQ  $FF  Data EEPROM not write-protected

;----- CONFIG7L Options --------------------------------------------------
_EBTR0_ON_7L         .EQ  $FE  Block 0 (000200-003FFFh) protected from table reads executed in other blocks
_EBTR0_OFF_7L        .EQ  $FF  Block 0 (000200-003FFFh) not protected from table reads executed in other blocks

_EBTR1_ON_7L         .EQ  $FD  Block 1 (004000-007FFFh) protected from table reads executed in other blocks
_EBTR1_OFF_7L        .EQ  $FF  Block 1 (004000-007FFFh) not protected from table reads executed in other blocks

_EBTR2_ON_7L         .EQ  $FB  Block 2 (008000-00BFFFh) protected from table reads executed in other blocks
_EBTR2_OFF_7L        .EQ  $FF  Block 2 (008000-00BFFFh) not protected from table reads executed in other blocks

_EBTR3_ON_7L         .EQ  $F7  Block 3 (00C000-00FFFFh) protected from table reads executed in other blocks
_EBTR3_OFF_7L        .EQ  $FF  Block 3 (00C000-00FFFFh) not protected from table reads executed in other blocks

;----- CONFIG7H Options --------------------------------------------------
_EBTRB_ON_7H         .EQ  $BF  Boot Block (000000-0001FFh) protected from table reads executed in other blocks
_EBTRB_OFF_7H        .EQ  $FF  Boot Block (000000-0001FFh) not protected from table reads executed in other blocks


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
