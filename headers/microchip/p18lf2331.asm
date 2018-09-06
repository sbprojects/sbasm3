;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC18LF2331 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC18LF2331 microcontroller.  These names
;  are taken to match the data sheets as closely as possible.
;==========================================================================

;==========================================================================
;
;       Select cross overlay
;
;==========================================================================

                  .CR   pic16
                  .MS   4096

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
DFLTCON          .EQ  $0F60
CAP3CON          .EQ  $0F61
CAP2CON          .EQ  $0F62
CAP1CON          .EQ  $0F63
CAP3BUFL         .EQ  $0F64
MAXCNTL          .EQ  $0F64
CAP3BUFH         .EQ  $0F65
MAXCNTH          .EQ  $0F65
CAP2BUFL         .EQ  $0F66
POSCNTL          .EQ  $0F66
CAP2BUFH         .EQ  $0F67
POSCNTH          .EQ  $0F67
CAP1BUFL         .EQ  $0F68
VELRL            .EQ  $0F68
CAP1BUFH         .EQ  $0F69
VELRH            .EQ  $0F69
OVDCONS          .EQ  $0F6A
OVDCOND          .EQ  $0F6B
FLTCONFIG        .EQ  $0F6C
DTCON            .EQ  $0F6D
PWMCON1          .EQ  $0F6E
PWMCON0          .EQ  $0F6F
SEVTCMPH         .EQ  $0F70
SEVTCMPL         .EQ  $0F71
PDC2H            .EQ  $0F74
PDC2L            .EQ  $0F75
PDC1H            .EQ  $0F76
PDC1L            .EQ  $0F77
PDC0H            .EQ  $0F78
PDC0L            .EQ  $0F79
PTPERH           .EQ  $0F7A
PTPERL           .EQ  $0F7B
PTMRH            .EQ  $0F7C
PTMRL            .EQ  $0F7D
PTCON1           .EQ  $0F7E
PTCON0           .EQ  $0F7F
PORTA            .EQ  $0F80
PORTB            .EQ  $0F81
PORTC            .EQ  $0F82
PORTE            .EQ  $0F84
TMR5             .EQ  $0F87
TMR5L            .EQ  $0F87
TMR5H            .EQ  $0F88
LATA             .EQ  $0F89
LATB             .EQ  $0F8A
LATC             .EQ  $0F8B
PR5              .EQ  $0F90
PR5L             .EQ  $0F90
PR5H             .EQ  $0F91
DDRA             .EQ  $0F92
TRISA            .EQ  $0F92
DDRB             .EQ  $0F93
TRISB            .EQ  $0F93
DDRC             .EQ  $0F94
TRISC            .EQ  $0F94
ADCHS            .EQ  $0F99
ADCON3           .EQ  $0F9A
OSCTUNE          .EQ  $0F9B
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
BAUDCON          .EQ  $0FAA
BAUDCTL          .EQ  $0FAA
RCSTA            .EQ  $0FAB
TXSTA            .EQ  $0FAC
TXREG            .EQ  $0FAD
RCREG            .EQ  $0FAE
SPBRG            .EQ  $0FAF
SPBRGH           .EQ  $0FB0
QEICON           .EQ  $0FB6
T5CON            .EQ  $0FB7
ANSEL0           .EQ  $0FB8
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
SSPCON           .EQ  $0FC6
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

;----- DFLTCON Bits -----------------------------------------------------
FLT1EN           .EQ  $0003
FLT2EN           .EQ  $0004
FLT3EN           .EQ  $0005
FLT4EN           .EQ  $0006

FLTCK0           .EQ  $0000
FLTCK1           .EQ  $0001
FLTCK2           .EQ  $0002


;----- CAP3CON Bits -----------------------------------------------------
CAP3TMR          .EQ  $0005
CAP3REN          .EQ  $0006

CAP3M0           .EQ  $0000
CAP3M1           .EQ  $0001
CAP3M2           .EQ  $0002
CAP3M3           .EQ  $0003


;----- CAP2CON Bits -----------------------------------------------------
CAP2TMR          .EQ  $0005
CAP2REN          .EQ  $0006

CAP2M0           .EQ  $0000
CAP2M1           .EQ  $0001
CAP2M2           .EQ  $0002
CAP2M3           .EQ  $0003


;----- CAP1CON Bits -----------------------------------------------------
CAP1TMR          .EQ  $0005
CAP1REN          .EQ  $0006

CAP1M0           .EQ  $0000
CAP1M1           .EQ  $0001
CAP1M2           .EQ  $0002
CAP1M3           .EQ  $0003


;----- OVDCONS Bits -----------------------------------------------------
POUT0            .EQ  $0000
POUT1            .EQ  $0001
POUT2            .EQ  $0002
POUT3            .EQ  $0003
POUT4            .EQ  $0004
POUT5            .EQ  $0005
POUT6            .EQ  $0006
POUT7            .EQ  $0007


;----- OVDCOND Bits -----------------------------------------------------
POVD0            .EQ  $0000
POVD1            .EQ  $0001
POVD2            .EQ  $0002
POVD3            .EQ  $0003
POVD4            .EQ  $0004
POVD5            .EQ  $0005
POVD6            .EQ  $0006
POVD7            .EQ  $0007


;----- FLTCONFIG Bits -----------------------------------------------------
FLTAEN           .EQ  $0000
FLTAMOD          .EQ  $0001
FLTAS            .EQ  $0002
FLTCON           .EQ  $0003
FLTBEN           .EQ  $0004
FLTBMOD          .EQ  $0005
FLTBS            .EQ  $0006
BRFEN            .EQ  $0007


;----- DTCON Bits -----------------------------------------------------
DT0              .EQ  $0000
DT1              .EQ  $0001
DT2              .EQ  $0002
DT3              .EQ  $0003
DT4              .EQ  $0004
DT5              .EQ  $0005
DTPS0            .EQ  $0006
DTPS1            .EQ  $0007

DTA0             .EQ  $0000
DTA1             .EQ  $0001
DTA2             .EQ  $0002
DTA3             .EQ  $0003
DTA4             .EQ  $0004
DTA5             .EQ  $0005
DTAPS0           .EQ  $0006
DTAPS1           .EQ  $0007


;----- PWMCON1 Bits -----------------------------------------------------
OSYNC            .EQ  $0000
UDIS             .EQ  $0001
SEVTDIR          .EQ  $0003

SEVOPS0          .EQ  $0004
SEVOPS1          .EQ  $0005
SEVOPS2          .EQ  $0006
SEVOPS3          .EQ  $0007


;----- PWMCON0 Bits -----------------------------------------------------
PMOD0            .EQ  $0000
PMOD1            .EQ  $0001
PMOD2            .EQ  $0002
PMOD3            .EQ  $0003
PWMEN0           .EQ  $0004
PWMEN1           .EQ  $0005
PWMEN2           .EQ  $0006


;----- PTCON1 Bits -----------------------------------------------------
PTDIR            .EQ  $0006
PTEN             .EQ  $0007


;----- PTCON0 Bits -----------------------------------------------------
PTMOD0           .EQ  $0000
PTMOD1           .EQ  $0001
PTCKPS0          .EQ  $0002
PTCKPS1          .EQ  $0003
PTOPS0           .EQ  $0004
PTOPS1           .EQ  $0005
PTOPS2           .EQ  $0006
PTOPS3           .EQ  $0007


;----- PORTA Bits -----------------------------------------------------
RA0              .EQ  $0000
RA1              .EQ  $0001
RA2              .EQ  $0002
RA3              .EQ  $0003
RA4              .EQ  $0004
RA6              .EQ  $0006
RA7              .EQ  $0007

AN0              .EQ  $0000
AN1              .EQ  $0001
AN2              .EQ  $0002
AN3              .EQ  $0003
AN4              .EQ  $0004
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
INT0             .EQ  $0003
INT1             .EQ  $0004
INT2             .EQ  $0005
TX               .EQ  $0006
RX               .EQ  $0007

T13CKI           .EQ  $0000
CCP2             .EQ  $0001
T0CKI            .EQ  $0003
SDA              .EQ  $0004
SCK              .EQ  $0005
CK               .EQ  $0006
; DT is a reserved word
; DT               .EQ  $0007

NOT_FLTA         .EQ  $0001
NOT_FLTB         .EQ  $0002
T5CKI            .EQ  $0003
SDI              .EQ  $0004
SCL              .EQ  $0005
NOT_SS           .EQ  $0006
SDO              .EQ  $0007

FLTA             .EQ  $0001
FLTB             .EQ  $0002
SS               .EQ  $0006


;----- PORTE Bits -----------------------------------------------------
RE3              .EQ  $0003

NOT_MCLR         .EQ  $0003

MCLR             .EQ  $0003


;----- LATA Bits -----------------------------------------------------
LATA0            .EQ  $0000
LATA1            .EQ  $0001
LATA2            .EQ  $0002
LATA3            .EQ  $0003
LATA4            .EQ  $0004
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
TRISA6           .EQ  $0006
TRISA7           .EQ  $0007

RA0              .EQ  $0000
RA1              .EQ  $0001
RA2              .EQ  $0002
RA3              .EQ  $0003
RA4              .EQ  $0004
RA6              .EQ  $0006
RA7              .EQ  $0007


;----- TRISA Bits -----------------------------------------------------
TRISA0           .EQ  $0000
TRISA1           .EQ  $0001
TRISA2           .EQ  $0002
TRISA3           .EQ  $0003
TRISA4           .EQ  $0004
TRISA6           .EQ  $0006
TRISA7           .EQ  $0007

RA0              .EQ  $0000
RA1              .EQ  $0001
RA2              .EQ  $0002
RA3              .EQ  $0003
RA4              .EQ  $0004
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


;----- ADCHS Bits -----------------------------------------------------
GASEL0           .EQ  $0000
GASEL1           .EQ  $0001
GCSEL0           .EQ  $0002
GCSEL1           .EQ  $0003
GBSEL0           .EQ  $0004
GBSEL1           .EQ  $0005
GDSEL0           .EQ  $0006
GDSEL1           .EQ  $0007

SASEL0           .EQ  $0000
SASEL1           .EQ  $0001
SCSEL0           .EQ  $0002
SCSEL1           .EQ  $0003
SBSEL0           .EQ  $0004
SBSEL1           .EQ  $0005
SDSEL0           .EQ  $0006
SDSEL1           .EQ  $0007


;----- ADCON3 Bits -----------------------------------------------------
SSRC0            .EQ  $0000
SSRC1            .EQ  $0001
SSRC2            .EQ  $0002
SSRC3            .EQ  $0003
SSRC4            .EQ  $0004
ADRS0            .EQ  $0006
ADRS1            .EQ  $0007


;----- OSCTUNE Bits -----------------------------------------------------
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

TBIE             .EQ  $0004


;----- PIR1 Bits -----------------------------------------------------
TMR1IF           .EQ  $0000
TMR2IF           .EQ  $0001
CCP1IF           .EQ  $0002
SSPIF            .EQ  $0003
TXIF             .EQ  $0004
RCIF             .EQ  $0005
ADIF             .EQ  $0006

TBIF             .EQ  $0004


;----- IPR1 Bits -----------------------------------------------------
TMR1IP           .EQ  $0000
TMR2IP           .EQ  $0001
CCP1IP           .EQ  $0002
SSPIP            .EQ  $0003
TXIP             .EQ  $0004
RCIP             .EQ  $0005
ADIP             .EQ  $0006

TBIP             .EQ  $0004


;----- PIE2 Bits -----------------------------------------------------
CCP2IE           .EQ  $0000
LVDIE            .EQ  $0002
EEIE             .EQ  $0004
OSFIE            .EQ  $0007


;----- PIR2 Bits -----------------------------------------------------
CCP2IF           .EQ  $0000
LVDIF            .EQ  $0002
EEIF             .EQ  $0004
OSFIF            .EQ  $0007


;----- IPR2 Bits -----------------------------------------------------
CCP2IP           .EQ  $0000
LVDIP            .EQ  $0002
EEIP             .EQ  $0004
OSFIP            .EQ  $0007


;----- PIE3 Bits -----------------------------------------------------
TMR5IE           .EQ  $0000
IC1IE            .EQ  $0001
IC2QEIE          .EQ  $0002
IC3DRIE          .EQ  $0003
PTIE             .EQ  $0004


;----- PIR3 Bits -----------------------------------------------------
TMR5IF           .EQ  $0000
IC1IF            .EQ  $0001
IC2QEIF          .EQ  $0002
IC3DRIF          .EQ  $0003
PTIF             .EQ  $0004


;----- IPR3 Bits -----------------------------------------------------
TMR5IP           .EQ  $0000
IC1IP            .EQ  $0001
IC2QEIP          .EQ  $0002
IC3DRIP          .EQ  $0003
PTIP             .EQ  $0004


;----- EECON1 Bits -----------------------------------------------------
RD               .EQ  $0000
WR               .EQ  $0001
WREN             .EQ  $0002
WRERR            .EQ  $0003
FREE             .EQ  $0004
CFGS             .EQ  $0006
EEPGD            .EQ  $0007


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


;----- QEICON Bits -----------------------------------------------------
UP_NOT_DOWN      .EQ  $0005
; ERROR is a reserved word
; ERROR            .EQ  $0006
NOT_VELM         .EQ  $0007

PDEC0            .EQ  $0000
PDEC1            .EQ  $0001
QEIM0            .EQ  $0002
QEIM1            .EQ  $0003
QEIM2            .EQ  $0004
UP_DOWN          .EQ  $0005
VELM             .EQ  $0007

UP               .EQ  $0005

DOWN             .EQ  $0005

NOT_DOWN         .EQ  $0005

UPDOWN           .EQ  $0005


;----- T5CON Bits -----------------------------------------------------
TMR5ON           .EQ  $0000
TMR5CS           .EQ  $0001
NOT_T5SYNC       .EQ  $0002
T5MOD            .EQ  $0005
NOT_RESEN        .EQ  $0006
T5SEN            .EQ  $0007

T5SYNC           .EQ  $0002
T5PS0            .EQ  $0003
T5PS1            .EQ  $0004
RESEN            .EQ  $0006


;----- ANSEL0 Bits -----------------------------------------------------
ANS0             .EQ  $0000
ANS1             .EQ  $0001
ANS2             .EQ  $0002
ANS3             .EQ  $0003
ANS4             .EQ  $0004


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
ACQT3            .EQ  $0006


;----- ADCON1 Bits -----------------------------------------------------
BFOVFL           .EQ  $0002
BFEMT            .EQ  $0003
FIFOEN           .EQ  $0004

ADPNT0           .EQ  $0000
ADPNT1           .EQ  $0001
VCFG0            .EQ  $0006
VCFG1            .EQ  $0007

FFOVFL           .EQ  $0002


;----- ADCON0 Bits -----------------------------------------------------
ADON             .EQ  $0000
GO_NOT_DONE      .EQ  $0001
ACSCH            .EQ  $0004
ACONV            .EQ  $0005

GO_DONE          .EQ  $0001
ACMOD0           .EQ  $0002
ACMOD1           .EQ  $0003

DONE             .EQ  $0001

GO               .EQ  $0001

NOT_DONE         .EQ  $0001

GODONE           .EQ  $0001


;----- SSPCON Bits -----------------------------------------------------
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
WDTW             .EQ  $0007


;----- LVDCON Bits -----------------------------------------------------
LVDEN            .EQ  $0004
IRVST            .EQ  $0005

LVDL0            .EQ  $0000
LVDL1            .EQ  $0001
LVDL2            .EQ  $0002
LVDL3            .EQ  $0003
IVRST            .EQ  $0005


;----- OSCCON Bits -----------------------------------------------------
IOFS             .EQ  $0002
OSTS             .EQ  $0003
IDLEN            .EQ  $0007

SCS0             .EQ  $0000
SCS1             .EQ  $0001
IRCF0            .EQ  $0004
IRCF1            .EQ  $0005
IRCF2            .EQ  $0006

FLTS             .EQ  $0002


;----- T0CON Bits -----------------------------------------------------
PSA              .EQ  $0003
T0SE             .EQ  $0004
T0CS             .EQ  $0005
T016BIT          .EQ  $0006
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

STKPTR0          .EQ  $0000
STKPTR1          .EQ  $0001
STKPTR2          .EQ  $0002
STKPTR3          .EQ  $0003
STKPTR4          .EQ  $0004
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
;     OSC = RC2            External RC oscillator, CLKO function on RA6
;     OSC = EC             EC oscillator, CLKO function on RA6
;     OSC = ECIO           EC oscillator, port function on RA6
;     OSC = HSPLL          HS oscillator, PLL enabled (clock frequency = 4 x FOSC1)
;     OSC = RCIO           External RC oscillator, port function on RA6
;     OSC = IRCIO          Internal oscillator block, port function on RA6 and port function on RA7
;     OSC = IRC            Internal oscillator block, CLKO function on RA6 and port function on RA7
;     OSC = RC1            101X External RC oscillator, CLKO function on RA6
;     OSC = RC             11XX External RC oscillator, CLKO function on RA6
;
;   Fail-Safe Clock Monitor Enable bit:
;     FCMEN = OFF          Fail-Safe Clock Monitor disabled
;     FCMEN = ON           Fail-Safe Clock Monitor enabled
;
;   Internal External Oscillator Switchover bit:
;     IESO = OFF           Internal External Switchover mode disabled
;     IESO = ON            Internal External Switchover mode enabled
;
;   Power-up Timer Enable bit:
;     PWRTEN = ON          PWRT enabled
;     PWRTEN = OFF         PWRT disabled
;
;   Brown-out Reset Enable bits:
;     BOREN = OFF          Brown-out Reset disabled
;     BOREN = ON           Brown-out Reset enabled
;
;   Brown Out Reset Voltage bits:
;     BORV = 45            VBOR set to 4.5V
;     BORV = 42            VBOR set to 4.2V
;     BORV = 27            VBOR set to 2.7V
;     BORV = 20            Reserved
;
;   Watchdog Timer Enable bit:
;     WDTEN = OFF          WDT disabled (control is placed on the SWDTEN bit)
;     WDTEN = ON           WDT enabled
;
;   Watchdog Timer Postscale Select bits:
;     WDPS = 1             1:1
;     WDPS = 2             1:2
;     WDPS = 4             1:4
;     WDPS = 8             1:8
;     WDPS = 16            1:16
;     WDPS = 32            1:32
;     WDPS = 64            1:64
;     WDPS = 128           1:128
;     WDPS = 256           1:256
;     WDPS = 512           1:512
;     WDPS = 1024          1:1024
;     WDPS = 2048          1:2048
;     WDPS = 4096          1:4096
;     WDPS = 8192          1:8192
;     WDPS = 16384         1:16384
;     WDPS = 32768         1:32768
;
;   Watchdog Timer Window Enable bit:
;     WINEN = ON           WDT window enabledbled
;     WINEN = OFF          WDT window disabled
;
;   PWM output pins Reset state control:
;     PWMPIN = ON          PWM outputs drive active states upon Reset
;     PWMPIN = OFF         PWM outputs disabled upon Reset (default)
;
;   Low-Side Transistors Polarity:
;     LPOL = LOW           PWM0, 2, 4 and 6 are active-low
;     LPOL = HIGH          PWM0, 2, 4 and 6 are active-high
;
;   High-Side Transistors Polarity:
;     HPOL = LOW           PWM1, 3, 5 and 7 are active-low
;     HPOL = HIGH          PWM1, 3, 5 and 7 are active-high
;
;   Timer1 Oscillator MUX:
;     T1OSCMX = OFF        Standard (legacy) Timer1 oscillator operation
;     T1OSCMX = ON         Low-power Timer1 operation when microcontroller is in Sleep mode
;
;   MCLR Pin Enable bit:
;     MCLRE = OFF          Disabled
;     MCLRE = ON           Enabled
;
;   Stack Full/Underflow Reset Enable bit:
;     STVREN = OFF         Stack full/underflow will not cause Reset
;     STVREN = ON          Stack full/underflow will cause Reset
;
;   Low-Voltage ICSP Enable bit:
;     LVP = OFF            Low-voltage ICSP disabled
;     LVP = ON             Low-voltage ICSP enabled
;
;   Background Debugger Enable bit:
;     DEBUG = ON           Background debugger enabled; RB6 and RB7 are dedicated to In-Circuit Debug
;     DEBUG = OFF          Background debugger disabled; RB6 and RB7 configured as general purpose I/O pins
;
;   Code Protection bit:
;     CP0 = ON             Block 0 (000200-000FFFh) code-protected
;     CP0 = OFF            Block 0 (000200-000FFFh) not code-protected
;
;   Code Protection bit:
;     CP1 = ON             Block 1 (001000-001FFF) code-protected
;     CP1 = OFF            Block 1 (001000-001FFF) not code-protected
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
;     WRT0 = ON            Block 0 (000200-000FFFh) write-protected
;     WRT0 = OFF           Block 0 (000200-000FFFh) not write-protected
;
;   Write Protection bit:
;     WRT1 = ON            Block 1 (001000-001FFF) write-protected
;     WRT1 = OFF           Block 1 (001000-001FFF) not write-protected
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
;     EBTR0 = ON           Block 0 (000200-000FFFh) protected from table reads executed in other blocks
;     EBTR0 = OFF          Block 0 (000200-000FFFh) not protected from table reads executed in other blocks
;
;   Table Read Protection bit:
;     EBTR1 = ON           Block 1 (001000-001FFF) protected from table reads executed in other blocks
;     EBTR1 = OFF          Block 1 (001000-001FFF) not protected from table reads executed in other blocks
;
;   Boot Block Table Read Protection bit:
;     EBTRB = ON           Boot Block (000000-0001FFh) not protected from table reads executed in other blocks
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
_OSC_LP_1H           .EQ  $F0  LP oscillator
_OSC_XT_1H           .EQ  $F1  XT oscillator
_OSC_HS_1H           .EQ  $F2  HS oscillator
_OSC_RC2_1H          .EQ  $F3  External RC oscillator, CLKO function on RA6
_OSC_EC_1H           .EQ  $F4  EC oscillator, CLKO function on RA6
_OSC_ECIO_1H         .EQ  $F5  EC oscillator, port function on RA6
_OSC_HSPLL_1H        .EQ  $F6  HS oscillator, PLL enabled (clock frequency = 4 x FOSC1)
_OSC_RCIO_1H         .EQ  $F7  External RC oscillator, port function on RA6
_OSC_IRCIO_1H        .EQ  $F8  Internal oscillator block, port function on RA6 and port function on RA7
_OSC_IRC_1H          .EQ  $F9  Internal oscillator block, CLKO function on RA6 and port function on RA7
_OSC_RC1_1H          .EQ  $FA  101X External RC oscillator, CLKO function on RA6
_OSC_RC_1H           .EQ  $FC  11XX External RC oscillator, CLKO function on RA6

_FCMEN_OFF_1H        .EQ  $BF  Fail-Safe Clock Monitor disabled
_FCMEN_ON_1H         .EQ  $FF  Fail-Safe Clock Monitor enabled

_IESO_OFF_1H         .EQ  $7F  Internal External Switchover mode disabled
_IESO_ON_1H          .EQ  $FF  Internal External Switchover mode enabled

;----- CONFIG2L Options --------------------------------------------------
_PWRTEN_ON_2L        .EQ  $FE  PWRT enabled
_PWRTEN_OFF_2L       .EQ  $FF  PWRT disabled

_BOREN_OFF_2L        .EQ  $FD  Brown-out Reset disabled
_BOREN_ON_2L         .EQ  $FF  Brown-out Reset enabled

_BORV_45_2L          .EQ  $F3  VBOR set to 4.5V
_BORV_42_2L          .EQ  $F7  VBOR set to 4.2V
_BORV_27_2L          .EQ  $FB  VBOR set to 2.7V
_BORV_20_2L          .EQ  $FF  Reserved

;----- CONFIG2H Options --------------------------------------------------
_WDTEN_OFF_2H        .EQ  $FE  WDT disabled (control is placed on the SWDTEN bit)
_WDTEN_ON_2H         .EQ  $FF  WDT enabled

_WDPS_1_2H           .EQ  $E1  1:1
_WDPS_2_2H           .EQ  $E3  1:2
_WDPS_4_2H           .EQ  $E5  1:4
_WDPS_8_2H           .EQ  $E7  1:8
_WDPS_16_2H          .EQ  $E9  1:16
_WDPS_32_2H          .EQ  $EB  1:32
_WDPS_64_2H          .EQ  $ED  1:64
_WDPS_128_2H         .EQ  $EF  1:128
_WDPS_256_2H         .EQ  $F1  1:256
_WDPS_512_2H         .EQ  $F3  1:512
_WDPS_1024_2H        .EQ  $F5  1:1024
_WDPS_2048_2H        .EQ  $F7  1:2048
_WDPS_4096_2H        .EQ  $F9  1:4096
_WDPS_8192_2H        .EQ  $FB  1:8192
_WDPS_16384_2H       .EQ  $FD  1:16384
_WDPS_32768_2H       .EQ  $FF  1:32768

_WINEN_ON_2H         .EQ  $DF  WDT window enabledbled
_WINEN_OFF_2H        .EQ  $FF  WDT window disabled

;----- CONFIG3L Options --------------------------------------------------
_PWMPIN_ON_3L        .EQ  $FB  PWM outputs drive active states upon Reset
_PWMPIN_OFF_3L       .EQ  $FF  PWM outputs disabled upon Reset (default)

_LPOL_LOW_3L         .EQ  $F7  PWM0, 2, 4 and 6 are active-low
_LPOL_HIGH_3L        .EQ  $FF  PWM0, 2, 4 and 6 are active-high

_HPOL_LOW_3L         .EQ  $EF  PWM1, 3, 5 and 7 are active-low
_HPOL_HIGH_3L        .EQ  $FF  PWM1, 3, 5 and 7 are active-high

_T1OSCMX_OFF_3L      .EQ  $DF  Standard (legacy) Timer1 oscillator operation
_T1OSCMX_ON_3L       .EQ  $FF  Low-power Timer1 operation when microcontroller is in Sleep mode

;----- CONFIG3H Options --------------------------------------------------
_MCLRE_OFF_3H        .EQ  $7F  Disabled
_MCLRE_ON_3H         .EQ  $FF  Enabled

;----- CONFIG4L Options --------------------------------------------------
_STVREN_OFF_4L       .EQ  $FE  Stack full/underflow will not cause Reset
_STVREN_ON_4L        .EQ  $FF  Stack full/underflow will cause Reset

_LVP_OFF_4L          .EQ  $FB  Low-voltage ICSP disabled
_LVP_ON_4L           .EQ  $FF  Low-voltage ICSP enabled

_DEBUG_ON_4L         .EQ  $7F  Background debugger enabled; RB6 and RB7 are dedicated to In-Circuit Debug
_DEBUG_OFF_4L        .EQ  $FF  Background debugger disabled; RB6 and RB7 configured as general purpose I/O pins

;----- CONFIG5L Options --------------------------------------------------
_CP0_ON_5L           .EQ  $FE  Block 0 (000200-000FFFh) code-protected
_CP0_OFF_5L          .EQ  $FF  Block 0 (000200-000FFFh) not code-protected

_CP1_ON_5L           .EQ  $FD  Block 1 (001000-001FFF) code-protected
_CP1_OFF_5L          .EQ  $FF  Block 1 (001000-001FFF) not code-protected

;----- CONFIG5H Options --------------------------------------------------
_CPB_ON_5H           .EQ  $BF  Boot Block (000000-0001FFh) code-protected
_CPB_OFF_5H          .EQ  $FF  Boot Block (000000-0001FFh) not code-protected

_CPD_ON_5H           .EQ  $7F  Data EEPROM code-protected
_CPD_OFF_5H          .EQ  $FF  Data EEPROM not code-protected

;----- CONFIG6L Options --------------------------------------------------
_WRT0_ON_6L          .EQ  $FE  Block 0 (000200-000FFFh) write-protected
_WRT0_OFF_6L         .EQ  $FF  Block 0 (000200-000FFFh) not write-protected

_WRT1_ON_6L          .EQ  $FD  Block 1 (001000-001FFF) write-protected
_WRT1_OFF_6L         .EQ  $FF  Block 1 (001000-001FFF) not write-protected

;----- CONFIG6H Options --------------------------------------------------
_WRTC_ON_6H          .EQ  $DF  Configuration registers (300000-3000FFh) write-protected
_WRTC_OFF_6H         .EQ  $FF  Configuration registers (300000-3000FFh) not write-protected

_WRTB_ON_6H          .EQ  $BF  Boot Block (000000-0001FFh) write-protected
_WRTB_OFF_6H         .EQ  $FF  Boot Block (000000-0001FFh) not write-protected

_WRTD_ON_6H          .EQ  $7F  Data EEPROM write-protected
_WRTD_OFF_6H         .EQ  $FF  Data EEPROM not write-protected

;----- CONFIG7L Options --------------------------------------------------
_EBTR0_ON_7L         .EQ  $FE  Block 0 (000200-000FFFh) protected from table reads executed in other blocks
_EBTR0_OFF_7L        .EQ  $FF  Block 0 (000200-000FFFh) not protected from table reads executed in other blocks

_EBTR1_ON_7L         .EQ  $FD  Block 1 (001000-001FFF) protected from table reads executed in other blocks
_EBTR1_OFF_7L        .EQ  $FF  Block 1 (001000-001FFF) not protected from table reads executed in other blocks

;----- CONFIG7H Options --------------------------------------------------
_EBTRB_ON_7H         .EQ  $BF  Boot Block (000000-0001FFh) not protected from table reads executed in other blocks
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
