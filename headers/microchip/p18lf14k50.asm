;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC18LF14K50 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC18LF14K50 microcontroller.  These names
;  are taken to match the data sheets as closely as possible.
;==========================================================================

;==========================================================================
;
;       Select cross overlay
;
;==========================================================================

                  .CR   pic16
                  .MS   8192

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
UEP0             .EQ  $0F53
UEP1             .EQ  $0F54
UEP2             .EQ  $0F55
UEP3             .EQ  $0F56
UEP4             .EQ  $0F57
UEP5             .EQ  $0F58
UEP6             .EQ  $0F59
UEP7             .EQ  $0F5A
UEIE             .EQ  $0F5B
UADDR            .EQ  $0F5C
UFRML            .EQ  $0F5D
UFRMH            .EQ  $0F5E
UEIR             .EQ  $0F5F
UIE              .EQ  $0F60
UCFG             .EQ  $0F61
UIR              .EQ  $0F62
USTAT            .EQ  $0F63
UCON             .EQ  $0F64
SRCON0           .EQ  $0F68
SRCON1           .EQ  $0F69
CM2CON0          .EQ  $0F6B
CM2CON1          .EQ  $0F6C
CM1CON0          .EQ  $0F6D
SSPMSK           .EQ  $0F6F
SLRCON           .EQ  $0F76
WPUA             .EQ  $0F77
WPUB             .EQ  $0F78
IOCA             .EQ  $0F79
IOCB             .EQ  $0F7A
ANSEL            .EQ  $0F7E
ANSELH           .EQ  $0F7F
PORTA            .EQ  $0F80
PORTB            .EQ  $0F81
PORTC            .EQ  $0F82
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
EECON1           .EQ  $0FA6
EECON2           .EQ  $0FA7
EEDATA           .EQ  $0FA8
EEADR            .EQ  $0FA9
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
ECCP1AS          .EQ  $0FB6
PWM1CON          .EQ  $0FB7
BAUDCON          .EQ  $0FB8
BAUDCTL          .EQ  $0FB8
PSTRCON          .EQ  $0FB9
REFCON0          .EQ  $0FBA
VREFCON0         .EQ  $0FBA
REFCON1          .EQ  $0FBB
VREFCON1         .EQ  $0FBB
REFCON2          .EQ  $0FBC
VREFCON2         .EQ  $0FBC
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
OSCCON2          .EQ  $0FD2
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


;----- UEIE Bits -----------------------------------------------------
PIDEE            .EQ  $0000
CRC5EE           .EQ  $0001
CRC16EE          .EQ  $0002
DFN8EE           .EQ  $0003
BTOEE            .EQ  $0004
BTSEE            .EQ  $0007


;----- UADDR Bits -----------------------------------------------------
ADDR0            .EQ  $0000
ADDR1            .EQ  $0001
ADDR2            .EQ  $0002
ADDR3            .EQ  $0003
ADDR4            .EQ  $0004
ADDR5            .EQ  $0005
ADDR6            .EQ  $0006


;----- UFRML Bits -----------------------------------------------------
FRM0             .EQ  $0000
FRM1             .EQ  $0001
FRM2             .EQ  $0002
FRM3             .EQ  $0003
FRM4             .EQ  $0004
FRM5             .EQ  $0005
FRM6             .EQ  $0006
FRM7             .EQ  $0007


;----- UFRMH Bits -----------------------------------------------------
FRM8             .EQ  $0000
FRM9             .EQ  $0001
FRM10            .EQ  $0002


;----- UEIR Bits -----------------------------------------------------
PIDEF            .EQ  $0000
CRC5EF           .EQ  $0001
CRC16EF          .EQ  $0002
DFN8EF           .EQ  $0003
BTOEF            .EQ  $0004
BTSEF            .EQ  $0007


;----- UIE Bits -----------------------------------------------------
URSTIE           .EQ  $0000
UERRIE           .EQ  $0001
ACTVIE           .EQ  $0002
TRNIE            .EQ  $0003
IDLEIE           .EQ  $0004
STALLIE          .EQ  $0005
SOFIE            .EQ  $0006


;----- UCFG Bits -----------------------------------------------------
PPB0             .EQ  $0000
PPB1             .EQ  $0001
FSEN             .EQ  $0002
UPUEN            .EQ  $0004
UTEYE            .EQ  $0007


;----- UIR Bits -----------------------------------------------------
URSTIF           .EQ  $0000
UERRIF           .EQ  $0001
ACTVIF           .EQ  $0002
TRNIF            .EQ  $0003
IDLEIF           .EQ  $0004
STALLIF          .EQ  $0005
SOFIF            .EQ  $0006


;----- USTAT Bits -----------------------------------------------------
PPBI             .EQ  $0001
DIR              .EQ  $0002
ENDP0            .EQ  $0003
ENDP1            .EQ  $0004
ENDP2            .EQ  $0005
ENDP3            .EQ  $0006


;----- UCON Bits -----------------------------------------------------
SUSPND           .EQ  $0001
RESUME           .EQ  $0002
USBEN            .EQ  $0003
PKTDIS           .EQ  $0004
SE0              .EQ  $0005
PPBRST           .EQ  $0006


;----- SRCON0 Bits -----------------------------------------------------
SRPR             .EQ  $0000
SRPS             .EQ  $0001
SRNQEN           .EQ  $0002
SRQEN            .EQ  $0003
SRLEN            .EQ  $0007

SRCLK0           .EQ  $0004
SRCLK1           .EQ  $0005
SRCLK2           .EQ  $0006


;----- SRCON1 Bits -----------------------------------------------------
SRRC1E           .EQ  $0000
SRRC2E           .EQ  $0001
SRRCKE           .EQ  $0002
SRRPE            .EQ  $0003
SRSC1E           .EQ  $0004
SRSC2E           .EQ  $0005
SRSCKE           .EQ  $0006
SRSPE            .EQ  $0007


;----- CM2CON0 Bits -----------------------------------------------------
C2R              .EQ  $0002
C2SP             .EQ  $0003
C2POL            .EQ  $0004
C2OE             .EQ  $0005
C2OUT            .EQ  $0006
C2ON             .EQ  $0007

C2CH0            .EQ  $0000
C2CH1            .EQ  $0001


;----- CM2CON1 Bits -----------------------------------------------------
C2SYNC           .EQ  $0000
C1SYNC           .EQ  $0001
C2HYS            .EQ  $0002
C1HYS            .EQ  $0003
C2RSEL           .EQ  $0004
C1RSEL           .EQ  $0005
MC2OUT           .EQ  $0006
MC1OUT           .EQ  $0007


;----- CM1CON0 Bits -----------------------------------------------------
C1R              .EQ  $0002
C1SP             .EQ  $0003
C1POL            .EQ  $0004
C1OE             .EQ  $0005
C1OUT            .EQ  $0006
C1ON             .EQ  $0007

C1CH0            .EQ  $0000
C1CH1            .EQ  $0001


;----- SSPMSK Bits -----------------------------------------------------
MSK0             .EQ  $0000
MSK1             .EQ  $0001
MSK2             .EQ  $0002
MSK3             .EQ  $0003
MSK4             .EQ  $0004
MSK5             .EQ  $0005
MSK6             .EQ  $0006
MSK7             .EQ  $0007


;----- SLRCON Bits -----------------------------------------------------
SLRA             .EQ  $0000
SLRB             .EQ  $0001
SLRC             .EQ  $0002


;----- WPUA Bits -----------------------------------------------------
WPUA3            .EQ  $0003
WPUA4            .EQ  $0004
WPUA5            .EQ  $0005


;----- WPUB Bits -----------------------------------------------------
WPUB4            .EQ  $0004
WPUB5            .EQ  $0005
WPUB6            .EQ  $0006
WPUB7            .EQ  $0007


;----- IOCA Bits -----------------------------------------------------
IOCA0            .EQ  $0000
IOCA1            .EQ  $0001
IOCA3            .EQ  $0003
IOCA4            .EQ  $0004
IOCA5            .EQ  $0005


;----- IOCB Bits -----------------------------------------------------
IOCB4            .EQ  $0004
IOCB5            .EQ  $0005
IOCB6            .EQ  $0006
IOCB7            .EQ  $0007


;----- ANSEL Bits -----------------------------------------------------
ANS3             .EQ  $0003
ANS4             .EQ  $0004
ANS5             .EQ  $0005
ANS6             .EQ  $0006
ANS7             .EQ  $0007


;----- ANSELH Bits -----------------------------------------------------
ANS8             .EQ  $0000
ANS9             .EQ  $0001
ANS10            .EQ  $0002
ANS11            .EQ  $0003


;----- PORTA Bits -----------------------------------------------------
RA0              .EQ  $0000
RA1              .EQ  $0001
RA3              .EQ  $0003
RA4              .EQ  $0004
RA5              .EQ  $0005

AN3              .EQ  $0004

OSC2             .EQ  $0004
OSC1             .EQ  $0005

CLKOUT           .EQ  $0004
CLKIN            .EQ  $0005


;----- PORTB Bits -----------------------------------------------------
RB4              .EQ  $0004
RB5              .EQ  $0005
RB6              .EQ  $0006
RB7              .EQ  $0007

SDI              .EQ  $0004
RX               .EQ  $0005
SCL              .EQ  $0006
TX               .EQ  $0007

SDA              .EQ  $0004
; DT is a reserved word
; DT               .EQ  $0005
SCK              .EQ  $0006
CK               .EQ  $0007

AN10             .EQ  $0004
AN11             .EQ  $0005


;----- PORTC Bits -----------------------------------------------------
RC0              .EQ  $0000
RC1              .EQ  $0001
RC2              .EQ  $0002
RC3              .EQ  $0003
RC4              .EQ  $0004
RC5              .EQ  $0005
RC6              .EQ  $0006
RC7              .EQ  $0007

AN4              .EQ  $0000
AN5              .EQ  $0001
AN6              .EQ  $0002
AN7              .EQ  $0003
AN8              .EQ  $0006
AN9              .EQ  $0007

C12INP           .EQ  $0000
C12IN1M          .EQ  $0001
C12IN2M          .EQ  $0002
C12IN3M          .EQ  $0003
C12OUT           .EQ  $0004
CCP1             .EQ  $0005
NOT_SS           .EQ  $0006

INT0             .EQ  $0000
INT1             .EQ  $0001
INT2             .EQ  $0002
PGM              .EQ  $0003
SRQ              .EQ  $0004
T0CKI            .EQ  $0005
T13CKI           .EQ  $0006
T1OSCO           .EQ  $0007

VREFP            .EQ  $0000
VREFM            .EQ  $0001
CVREF            .EQ  $0002
T1OSCI           .EQ  $0006

P1D              .EQ  $0002
P1C              .EQ  $0003
P1B              .EQ  $0004
P1A              .EQ  $0005
SS               .EQ  $0006
SDO              .EQ  $0007


;----- LATA Bits -----------------------------------------------------
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


;----- DDRA Bits -----------------------------------------------------
TRISA4           .EQ  $0004
TRISA5           .EQ  $0005

RA4              .EQ  $0004
RA5              .EQ  $0005


;----- TRISA Bits -----------------------------------------------------
TRISA4           .EQ  $0004
TRISA5           .EQ  $0005

RA4              .EQ  $0004
RA5              .EQ  $0005


;----- DDRB Bits -----------------------------------------------------
TRISB4           .EQ  $0004
TRISB5           .EQ  $0005
TRISB6           .EQ  $0006
TRISB7           .EQ  $0007

RB4              .EQ  $0004
RB5              .EQ  $0005
RB6              .EQ  $0006
RB7              .EQ  $0007


;----- TRISB Bits -----------------------------------------------------
TRISB4           .EQ  $0004
TRISB5           .EQ  $0005
TRISB6           .EQ  $0006
TRISB7           .EQ  $0007

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
SPLLEN           .EQ  $0006
INTSRC           .EQ  $0007

TUN0             .EQ  $0000
TUN1             .EQ  $0001
TUN2             .EQ  $0002
TUN3             .EQ  $0003
TUN4             .EQ  $0004
TUN5             .EQ  $0005


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
TMR3IE           .EQ  $0001
USBIE            .EQ  $0002
BCLIE            .EQ  $0003
EEIE             .EQ  $0004
C2IE             .EQ  $0005
C1IE             .EQ  $0006
OSCFIE           .EQ  $0007


;----- PIR2 Bits -----------------------------------------------------
TMR3IF           .EQ  $0001
USBIF            .EQ  $0002
BCLIF            .EQ  $0003
EEIF             .EQ  $0004
C2IF             .EQ  $0005
C1IF             .EQ  $0006
OSCFIF           .EQ  $0007


;----- IPR2 Bits -----------------------------------------------------
TMR3IP           .EQ  $0001
USBIP            .EQ  $0002
BCLIP            .EQ  $0003
EEIP             .EQ  $0004
C2IP             .EQ  $0005
C1IP             .EQ  $0006
OSCFIP           .EQ  $0007


;----- EECON1 Bits -----------------------------------------------------
RD               .EQ  $0000
WR               .EQ  $0001
WREN             .EQ  $0002
WRERR            .EQ  $0003
FREE             .EQ  $0004
CFGS             .EQ  $0006
EEPGD            .EQ  $0007


;----- EEADR Bits -----------------------------------------------------
EEADR0           .EQ  $0000
EEADR1           .EQ  $0001
EEADR2           .EQ  $0002
EEADR3           .EQ  $0003
EEADR4           .EQ  $0004
EEADR5           .EQ  $0005
EEADR6           .EQ  $0006
EEADR7           .EQ  $0007


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
RD16             .EQ  $0007

T3SYNC           .EQ  $0002
T3CKPS0          .EQ  $0004
T3CKPS1          .EQ  $0005


;----- ECCP1AS Bits -----------------------------------------------------
ECCPASE          .EQ  $0007

PSSBD0           .EQ  $0000
PSSBD1           .EQ  $0001
PSSAC0           .EQ  $0002
PSSAC1           .EQ  $0003
ECCPAS0          .EQ  $0004
ECCPAS1          .EQ  $0005
ECCPAS2          .EQ  $0006


;----- PWM1CON Bits -----------------------------------------------------
PRSEN            .EQ  $0007

PDC0             .EQ  $0000
PDC1             .EQ  $0001
PDC2             .EQ  $0002
PDC3             .EQ  $0003
PDC4             .EQ  $0004
PDC5             .EQ  $0005
PDC6             .EQ  $0006


;----- BAUDCON Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
CKTXP            .EQ  $0004
DTRXP            .EQ  $0005
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007

SCKP             .EQ  $0004


;----- BAUDCTL Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
CKTXP            .EQ  $0004
DTRXP            .EQ  $0005
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007

SCKP             .EQ  $0004


;----- PSTRCON Bits -----------------------------------------------------
STRA             .EQ  $0000
STRB             .EQ  $0001
STRC             .EQ  $0002
STRD             .EQ  $0003
STRSYNC          .EQ  $0004


;----- REFCON0 Bits -----------------------------------------------------
FVR1S0           .EQ  $0004
FVR1S1           .EQ  $0005
FVR1ST           .EQ  $0006
FVR1EN           .EQ  $0007


;----- VREFCON0 Bits -----------------------------------------------------
FVR1S0           .EQ  $0004
FVR1S1           .EQ  $0005
FVR1ST           .EQ  $0006
FVR1EN           .EQ  $0007


;----- REFCON1 Bits -----------------------------------------------------
D1NSS            .EQ  $0000
DAC1OE           .EQ  $0005
D1LPS            .EQ  $0006
D1EN             .EQ  $0007

D1PSS0           .EQ  $0002
D1PSS1           .EQ  $0003


;----- VREFCON1 Bits -----------------------------------------------------
D1NSS            .EQ  $0000
DAC1OE           .EQ  $0005
D1LPS            .EQ  $0006
D1EN             .EQ  $0007

D1PSS0           .EQ  $0002
D1PSS1           .EQ  $0003


;----- REFCON2 Bits -----------------------------------------------------
DAC1R0           .EQ  $0000
DAC1R1           .EQ  $0001
DAC1R2           .EQ  $0002
DAC1R3           .EQ  $0003
DAC1R4           .EQ  $0004


;----- VREFCON2 Bits -----------------------------------------------------
DAC1R0           .EQ  $0000
DAC1R1           .EQ  $0001
DAC1R2           .EQ  $0002
DAC1R3           .EQ  $0003
DAC1R4           .EQ  $0004


;----- CCP1CON Bits -----------------------------------------------------
CCP1M0           .EQ  $0000
CCP1M1           .EQ  $0001
CCP1M2           .EQ  $0002
CCP1M3           .EQ  $0003
DC1B0            .EQ  $0004
DC1B1            .EQ  $0005
P1M0             .EQ  $0006
P1M1             .EQ  $0007


;----- ADCON2 Bits -----------------------------------------------------
ADFM             .EQ  $0007

ADCS0            .EQ  $0000
ADCS1            .EQ  $0001
ADCS2            .EQ  $0002
ACQT0            .EQ  $0003
ACQT1            .EQ  $0004
ACQT2            .EQ  $0005


;----- ADCON1 Bits -----------------------------------------------------
NVCFG0           .EQ  $0000
NVCFG1           .EQ  $0001
PVCFG0           .EQ  $0002
PVCFG1           .EQ  $0003


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


;----- OSCCON2 Bits -----------------------------------------------------
LFIOFS           .EQ  $0000
HFIOFL           .EQ  $0001
PRI_SD           .EQ  $0002


;----- OSCCON Bits -----------------------------------------------------
SCS0             .EQ  $0000
SCS1             .EQ  $0001
IOFS             .EQ  $0002
OSTS             .EQ  $0003
IDLEN            .EQ  $0007

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
RABIP            .EQ  $0000
TMR0IP           .EQ  $0002
INTEDG2          .EQ  $0004
INTEDG1          .EQ  $0005
INTEDG0          .EQ  $0006
NOT_RABPU        .EQ  $0007

RABPU            .EQ  $0007


;----- INTCON Bits -----------------------------------------------------
RABIF            .EQ  $0000
INT0IF           .EQ  $0001
TMR0IF           .EQ  $0002
RABIE            .EQ  $0003
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
;   CPU System Clock Selection bits:
;     CPUDIV = NOCLKDIV    No CPU System Clock divide
;     CPUDIV = CLKDIV2     CPU System Clock divided by 2
;     CPUDIV = CLKDIV3     CPU System Clock divided by 3
;     CPUDIV = CLKDIV4     CPU System Clock divided by 4
;
;   USB Clock Selection bit:
;     USBDIV = OFF         USB clock comes directly from the OSC1/OSC2 oscillator block; no divide
;     USBDIV = ON          USB clock comes from the OSC1/OSC2 divided by 2
;
;   Oscillator Selection bits:
;     FOSC = LP            LP oscillator
;     FOSC = XT            XT oscillator
;     FOSC = HS            HS oscillator
;     FOSC = ERCCLKOUT     External RC oscillator, CLKOUT function on OSC2
;     FOSC = ECCLKOUTH     EC, CLKOUT function on OSC2 (high)
;     FOSC = ECH           EC (high)
;     FOSC = ERC           External RC oscillator
;     FOSC = IRC           Internal RC oscillator
;     FOSC = IRCCLKOUT     Internal RC oscillator, CLKOUT function on OSC2
;     FOSC = ECCLKOUTM     EC, CLKOUT function on OSC2 (medium)
;     FOSC = ECM           EC (medium)
;     FOSC = ECCLKOUTL     EC, CLKOUT function on OSC2 (low)
;     FOSC = ECL           EC (low)
;
;   4 X PLL Enable bit:
;     PLLEN = OFF          PLL is under software control
;     PLLEN = ON           Oscillator multiplied by 4
;
;   Primary Clock Enable bit:
;     PCLKEN = OFF         Primary clock is under software control
;     PCLKEN = ON          Primary clock enabled
;
;   Fail-Safe Clock Monitor Enable:
;     FCMEN = OFF          Fail-Safe Clock Monitor disabled
;     FCMEN = ON           Fail-Safe Clock Monitor enabled
;
;   Internal/External Oscillator Switchover bit:
;     IESO = OFF           Oscillator Switchover mode disabled
;     IESO = ON            Oscillator Switchover mode enabled
;
;   Power-up Timer Enable bit:
;     PWRTEN = ON          PWRT enabled
;     PWRTEN = OFF         PWRT disabled
;
;   Brown-out Reset Enable bits:
;     BOREN = OFF          Brown-out Reset disabled in hardware and software
;     BOREN = ON           Brown-out Reset enabled and controlled by software (SBOREN is enabled)
;     BOREN = NOSLP        Brown-out Reset enabled in hardware only and disabled in Sleep mode (SBOREN is disabled)
;     BOREN = SBORDIS      Brown-out Reset enabled in hardware only (SBOREN is disabled)
;
;   Brown-out Reset Voltage bits:
;     BORV = 30            VBOR set to 3.0 V nominal
;     BORV = 27            VBOR set to 2.7 V nominal
;     BORV = 22            VBOR set to 2.2 V nominal
;     BORV = 19            VBOR set to 1.9 V nominal
;
;   Watchdog Timer Enable bit:
;     WDTEN = OFF          WDT is controlled by SWDTEN bit of the WDTCON register
;     WDTEN = ON           WDT is always enabled. SWDTEN bit has no effect.
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
;   HFINTOSC Fast Start-up bit:
;     HFOFST = OFF         The system clock is held off until the HFINTOSC is stable.
;     HFOFST = ON          HFINTOSC starts clocking the CPU without waiting for the oscillator to stablize.
;
;   MCLR Pin Enable bit:
;     MCLRE = OFF          RA3 input pin enabled; MCLR disabled
;     MCLRE = ON           MCLR pin enabled; RA3 input pin disabled
;
;   Stack Full/Underflow Reset Enable bit:
;     STVREN = OFF         Stack full/underflow will not cause Reset
;     STVREN = ON          Stack full/underflow will cause Reset
;
;   Single-Supply ICSP Enable bit:
;     LVP = OFF            Single-Supply ICSP disabled
;     LVP = ON             Single-Supply ICSP enabled
;
;   Boot Block Size Select bit:
;     BBSIZ = OFF          1kW boot block size
;     BBSIZ = ON           2kW boot block size
;
;   Extended Instruction Set Enable bit:
;     XINST = OFF          Instruction set extension and Indexed Addressing mode disabled (Legacy mode)
;     XINST = ON           Instruction set extension and Indexed Addressing mode enabled
;
;   Background Debugger Enable bit:
;     DEBUG = ON           Background debugger enabled, RA0 and RA1 are dedicated to In-Circuit Debug
;     DEBUG = OFF          Background debugger disabled, RA0 and RA1 configured as general purpose I/O pins
;
;   Code Protection bit:
;     CP0 = ON             Block 0 code-protected
;     CP0 = OFF            Block 0 not code-protected
;
;   Code Protection bit:
;     CP1 = ON             Block 1 code-protected
;     CP1 = OFF            Block 1 not code-protected
;
;   Boot Block Code Protection bit:
;     CPB = ON             Boot block code-protected
;     CPB = OFF            Boot block not code-protected
;
;   Data EEPROM Code Protection bit:
;     CPD = ON             Data EEPROM code-protected
;     CPD = OFF            Data EEPROM not code-protected
;
;   Table Write Protection bit:
;     WRT0 = ON            Block 0 write-protected
;     WRT0 = OFF           Block 0 not write-protected
;
;   Table Write Protection bit:
;     WRT1 = ON            Block 1 write-protected
;     WRT1 = OFF           Block 1 not write-protected
;
;   Configuration Register Write Protection bit:
;     WRTC = ON            Configuration registers write-protected
;     WRTC = OFF           Configuration registers not write-protected
;
;   Boot Block Write Protection bit:
;     WRTB = ON            Boot block write-protected
;     WRTB = OFF           Boot block not write-protected
;
;   Data EEPROM Write Protection bit:
;     WRTD = ON            Data EEPROM write-protected
;     WRTD = OFF           Data EEPROM not write-protected
;
;   Table Read Protection bit:
;     EBTR0 = ON           Block 0 protected from table reads executed in other blocks
;     EBTR0 = OFF          Block 0 not protected from table reads executed in other blocks
;
;   Table Read Protection bit:
;     EBTR1 = ON           Block 1 protected from table reads executed in other blocks
;     EBTR1 = OFF          Block 1 not protected from table reads executed in other blocks
;
;   Boot Block Table Read Protection bit:
;     EBTRB = ON           Boot block protected from table reads executed in other blocks
;     EBTRB = OFF          Boot block not protected from table reads executed in other blocks
;
;==========================================================================
;==========================================================================
;
;       Configuration Bits
;
;   NAME            Address
;   CONFIG1L        300000h
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
_CONFIG1L       .EQ  $300000
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

;----- CONFIG1L Options --------------------------------------------------
_CPUDIV_NOCLKDIV_1L  .EQ  $E7  No CPU System Clock divide
_CPUDIV_CLKDIV2_1L   .EQ  $EF  CPU System Clock divided by 2
_CPUDIV_CLKDIV3_1L   .EQ  $F7  CPU System Clock divided by 3
_CPUDIV_CLKDIV4_1L   .EQ  $FF  CPU System Clock divided by 4

_USBDIV_OFF_1L       .EQ  $DF  USB clock comes directly from the OSC1/OSC2 oscillator block; no divide
_USBDIV_ON_1L        .EQ  $FF  USB clock comes from the OSC1/OSC2 divided by 2

;----- CONFIG1H Options --------------------------------------------------
_FOSC_LP_1H          .EQ  $F0  LP oscillator
_FOSC_XT_1H          .EQ  $F1  XT oscillator
_FOSC_HS_1H          .EQ  $F2  HS oscillator
_FOSC_ERCCLKOUT_1H   .EQ  $F3  External RC oscillator, CLKOUT function on OSC2
_FOSC_ECCLKOUTH_1H   .EQ  $F4  EC, CLKOUT function on OSC2 (high)
_FOSC_ECH_1H         .EQ  $F5  EC (high)
_FOSC_ERC_1H         .EQ  $F7  External RC oscillator
_FOSC_IRC_1H         .EQ  $F8  Internal RC oscillator
_FOSC_IRCCLKOUT_1H   .EQ  $F9  Internal RC oscillator, CLKOUT function on OSC2
_FOSC_ECCLKOUTM_1H   .EQ  $FA  EC, CLKOUT function on OSC2 (medium)
_FOSC_ECM_1H         .EQ  $FB  EC (medium)
_FOSC_ECCLKOUTL_1H   .EQ  $FC  EC, CLKOUT function on OSC2 (low)
_FOSC_ECL_1H         .EQ  $FD  EC (low)

_PLLEN_OFF_1H        .EQ  $EF  PLL is under software control
_PLLEN_ON_1H         .EQ  $FF  Oscillator multiplied by 4

_PCLKEN_OFF_1H       .EQ  $DF  Primary clock is under software control
_PCLKEN_ON_1H        .EQ  $FF  Primary clock enabled

_FCMEN_OFF_1H        .EQ  $BF  Fail-Safe Clock Monitor disabled
_FCMEN_ON_1H         .EQ  $FF  Fail-Safe Clock Monitor enabled

_IESO_OFF_1H         .EQ  $7F  Oscillator Switchover mode disabled
_IESO_ON_1H          .EQ  $FF  Oscillator Switchover mode enabled

;----- CONFIG2L Options --------------------------------------------------
_PWRTEN_ON_2L        .EQ  $FE  PWRT enabled
_PWRTEN_OFF_2L       .EQ  $FF  PWRT disabled

_BOREN_OFF_2L        .EQ  $F9  Brown-out Reset disabled in hardware and software
_BOREN_ON_2L         .EQ  $FB  Brown-out Reset enabled and controlled by software (SBOREN is enabled)
_BOREN_NOSLP_2L      .EQ  $FD  Brown-out Reset enabled in hardware only and disabled in Sleep mode (SBOREN is disabled)
_BOREN_SBORDIS_2L    .EQ  $FF  Brown-out Reset enabled in hardware only (SBOREN is disabled)

_BORV_30_2L          .EQ  $E7  VBOR set to 3.0 V nominal
_BORV_27_2L          .EQ  $EF  VBOR set to 2.7 V nominal
_BORV_22_2L          .EQ  $F7  VBOR set to 2.2 V nominal
_BORV_19_2L          .EQ  $FF  VBOR set to 1.9 V nominal

;----- CONFIG2H Options --------------------------------------------------
_WDTEN_OFF_2H        .EQ  $FE  WDT is controlled by SWDTEN bit of the WDTCON register
_WDTEN_ON_2H         .EQ  $FF  WDT is always enabled. SWDTEN bit has no effect.

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
_HFOFST_OFF_3H       .EQ  $F7  The system clock is held off until the HFINTOSC is stable.
_HFOFST_ON_3H        .EQ  $FF  HFINTOSC starts clocking the CPU without waiting for the oscillator to stablize.

_MCLRE_OFF_3H        .EQ  $7F  RA3 input pin enabled; MCLR disabled
_MCLRE_ON_3H         .EQ  $FF  MCLR pin enabled; RA3 input pin disabled

;----- CONFIG4L Options --------------------------------------------------
_STVREN_OFF_4L       .EQ  $FE  Stack full/underflow will not cause Reset
_STVREN_ON_4L        .EQ  $FF  Stack full/underflow will cause Reset

_LVP_OFF_4L          .EQ  $FB  Single-Supply ICSP disabled
_LVP_ON_4L           .EQ  $FF  Single-Supply ICSP enabled

_BBSIZ_OFF_4L        .EQ  $F7  1kW boot block size
_BBSIZ_ON_4L         .EQ  $FF  2kW boot block size

_XINST_OFF_4L        .EQ  $BF  Instruction set extension and Indexed Addressing mode disabled (Legacy mode)
_XINST_ON_4L         .EQ  $FF  Instruction set extension and Indexed Addressing mode enabled

_DEBUG_ON_4L         .EQ  $7F  Background debugger enabled, RA0 and RA1 are dedicated to In-Circuit Debug
_DEBUG_OFF_4L        .EQ  $FF  Background debugger disabled, RA0 and RA1 configured as general purpose I/O pins

;----- CONFIG5L Options --------------------------------------------------
_CP0_ON_5L           .EQ  $FE  Block 0 code-protected
_CP0_OFF_5L          .EQ  $FF  Block 0 not code-protected

_CP1_ON_5L           .EQ  $FD  Block 1 code-protected
_CP1_OFF_5L          .EQ  $FF  Block 1 not code-protected

;----- CONFIG5H Options --------------------------------------------------
_CPB_ON_5H           .EQ  $BF  Boot block code-protected
_CPB_OFF_5H          .EQ  $FF  Boot block not code-protected

_CPD_ON_5H           .EQ  $7F  Data EEPROM code-protected
_CPD_OFF_5H          .EQ  $FF  Data EEPROM not code-protected

;----- CONFIG6L Options --------------------------------------------------
_WRT0_ON_6L          .EQ  $FE  Block 0 write-protected
_WRT0_OFF_6L         .EQ  $FF  Block 0 not write-protected

_WRT1_ON_6L          .EQ  $FD  Block 1 write-protected
_WRT1_OFF_6L         .EQ  $FF  Block 1 not write-protected

;----- CONFIG6H Options --------------------------------------------------
_WRTC_ON_6H          .EQ  $DF  Configuration registers write-protected
_WRTC_OFF_6H         .EQ  $FF  Configuration registers not write-protected

_WRTB_ON_6H          .EQ  $BF  Boot block write-protected
_WRTB_OFF_6H         .EQ  $FF  Boot block not write-protected

_WRTD_ON_6H          .EQ  $7F  Data EEPROM write-protected
_WRTD_OFF_6H         .EQ  $FF  Data EEPROM not write-protected

;----- CONFIG7L Options --------------------------------------------------
_EBTR0_ON_7L         .EQ  $FE  Block 0 protected from table reads executed in other blocks
_EBTR0_OFF_7L        .EQ  $FF  Block 0 not protected from table reads executed in other blocks

_EBTR1_ON_7L         .EQ  $FD  Block 1 protected from table reads executed in other blocks
_EBTR1_OFF_7L        .EQ  $FF  Block 1 not protected from table reads executed in other blocks

;----- CONFIG7H Options --------------------------------------------------
_EBTRB_ON_7H         .EQ  $BF  Boot block protected from table reads executed in other blocks
_EBTRB_OFF_7H        .EQ  $FF  Boot block not protected from table reads executed in other blocks


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
