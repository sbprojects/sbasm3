;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC18LF1330 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC18LF1330 microcontroller.  These names
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
PORTA            .EQ  $0F80
PORTB            .EQ  $0F81
OVDCONS          .EQ  $0F82
OVDCOND          .EQ  $0F83
DTCON            .EQ  $0F84
PWMCON1          .EQ  $0F85
PWMCON0          .EQ  $0F86
SEVTCMPH         .EQ  $0F87
SEVTCMPL         .EQ  $0F88
LATA             .EQ  $0F89
LATB             .EQ  $0F8A
FLTCONFIG        .EQ  $0F8B
PDC2H            .EQ  $0F8C
PDC2L            .EQ  $0F8D
PDC1H            .EQ  $0F8E
PDC1L            .EQ  $0F8F
PDC0H            .EQ  $0F90
PDC0L            .EQ  $0F91
DDRA             .EQ  $0F92
TRISA            .EQ  $0F92
DDRB             .EQ  $0F93
TRISB            .EQ  $0F93
PTPERH           .EQ  $0F95
PTPERL           .EQ  $0F96
PTMRH            .EQ  $0F97
PTMRL            .EQ  $0F98
PTCON1           .EQ  $0F99
PTCON0           .EQ  $0F9A
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
RCSTA            .EQ  $0FAB
TXSTA            .EQ  $0FAC
TXREG            .EQ  $0FAD
RCREG            .EQ  $0FAE
SPBRG            .EQ  $0FAF
SPBRGH           .EQ  $0FB0
CMCON            .EQ  $0FB4
CVRCON           .EQ  $0FB5
BAUDCON          .EQ  $0FB8
BAUDCTL          .EQ  $0FB8
ADCON2           .EQ  $0FC0
ADCON1           .EQ  $0FC1
ADCON0           .EQ  $0FC2
ADRES            .EQ  $0FC3
ADRESL           .EQ  $0FC3
ADRESH           .EQ  $0FC4
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
TX               .EQ  $0002
RX               .EQ  $0003
AN2              .EQ  $0004
MCLR             .EQ  $0005
OSC2             .EQ  $0006
OSC1             .EQ  $0007

INT0             .EQ  $0000
INT1             .EQ  $0001
CK               .EQ  $0002
; DT is a reserved word
; DT               .EQ  $0003
T0CKI            .EQ  $0004
CLKO             .EQ  $0006
CLKI             .EQ  $0007

KBI0             .EQ  $0000
KBI1             .EQ  $0001
VREFP            .EQ  $0004
T1OSO_PORTA      .EQ  $0006
T1OSI_PORTA      .EQ  $0007

CMP0             .EQ  $0000
NOT_MCLR         .EQ  $0005
AN3              .EQ  $0006

T1CKI_PORTA      .EQ  $0006


;----- PORTB Bits -----------------------------------------------------
RB0              .EQ  $0000
RB1              .EQ  $0001
RB2              .EQ  $0002
RB3              .EQ  $0003
RB4              .EQ  $0004
RB5              .EQ  $0005
RB6              .EQ  $0006
RB7              .EQ  $0007

PWM0             .EQ  $0000
PWM1             .EQ  $0001
INT2             .EQ  $0002
INT3             .EQ  $0003
PWM2             .EQ  $0004
PWM3             .EQ  $0005
PWM4             .EQ  $0006
PWM5             .EQ  $0007

KBI2             .EQ  $0002
KBI3             .EQ  $0003
PGC              .EQ  $0006
PGD              .EQ  $0007

CMP2             .EQ  $0002
CMP1             .EQ  $0003

T1OSO_PORTB      .EQ  $0002
T1OSI_PORTB      .EQ  $0003

T1CKI_PORTB      .EQ  $0002


;----- OVDCONS Bits -----------------------------------------------------
POUT0            .EQ  $0000
POUT1            .EQ  $0001
POUT2            .EQ  $0002
POUT3            .EQ  $0003
POUT4            .EQ  $0004
POUT5            .EQ  $0005


;----- OVDCOND Bits -----------------------------------------------------
POVD0            .EQ  $0000
POVD1            .EQ  $0001
POVD2            .EQ  $0002
POVD3            .EQ  $0003
POVD4            .EQ  $0004
POVD5            .EQ  $0005


;----- DTCON Bits -----------------------------------------------------
DT0              .EQ  $0000
DT1              .EQ  $0001
DT2              .EQ  $0002
DT3              .EQ  $0003
DT4              .EQ  $0004
DT5              .EQ  $0005
DTPS0            .EQ  $0006
DTPS1            .EQ  $0007


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
PWMEN0           .EQ  $0004
PWMEN1           .EQ  $0005
PWMEN2           .EQ  $0006


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


;----- FLTCONFIG Bits -----------------------------------------------------
FLTAEN           .EQ  $0000
FLTAMOD          .EQ  $0001
FLTAS            .EQ  $0002
BRFEN            .EQ  $0007


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
CMP0IE           .EQ  $0001
CMP1IE           .EQ  $0002
CMP2IE           .EQ  $0003
TXIE             .EQ  $0004
RCIE             .EQ  $0005
ADIE             .EQ  $0006


;----- PIR1 Bits -----------------------------------------------------
TMR1IF           .EQ  $0000
CMP0IF           .EQ  $0001
CMP1IF           .EQ  $0002
CMP2IF           .EQ  $0003
TXIF             .EQ  $0004
RCIF             .EQ  $0005
ADIF             .EQ  $0006


;----- IPR1 Bits -----------------------------------------------------
TMR1IP           .EQ  $0000
CMP0IP           .EQ  $0001
CMP1IP           .EQ  $0002
CMP2IP           .EQ  $0003
TXIP             .EQ  $0004
RCIP             .EQ  $0005
ADIP             .EQ  $0006


;----- PIE2 Bits -----------------------------------------------------
LVDIE            .EQ  $0002
EEIE             .EQ  $0004
OSCFIE           .EQ  $0007


;----- PIR2 Bits -----------------------------------------------------
LVDIF            .EQ  $0002
EEIF             .EQ  $0004
OSCFIF           .EQ  $0007


;----- IPR2 Bits -----------------------------------------------------
LVDIP            .EQ  $0002
EEIP             .EQ  $0004
OSCFIP           .EQ  $0007


;----- PIE3 Bits -----------------------------------------------------
PTIE             .EQ  $0004


;----- PIR3 Bits -----------------------------------------------------
PTIF             .EQ  $0004


;----- IPR3 Bits -----------------------------------------------------
PTIP             .EQ  $0004


;----- EECON1 Bits -----------------------------------------------------
RD               .EQ  $0000
WR               .EQ  $0001
WREN             .EQ  $0002
WRERR            .EQ  $0003
FREE             .EQ  $0004
CFGS             .EQ  $0006
EEPGD            .EQ  $0007


;----- RCSTA Bits -----------------------------------------------------
RX9D             .EQ  $0000
OERR             .EQ  $0001
FERR             .EQ  $0002
ADEN             .EQ  $0003
CREN             .EQ  $0004
SREN             .EQ  $0005
RX9              .EQ  $0006
SPEN             .EQ  $0007

ADDEN            .EQ  $0003


;----- TXSTA Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SENDB            .EQ  $0003
SYNC             .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007


;----- CMCON Bits -----------------------------------------------------
C0OUT            .EQ  $0005
C1OUT            .EQ  $0006
C2OUT            .EQ  $0007

CMEN0            .EQ  $0000
CMEN1            .EQ  $0001
CMEN2            .EQ  $0002


;----- CVRCON Bits -----------------------------------------------------
CVRSS            .EQ  $0004
CVRR             .EQ  $0005
CVREN            .EQ  $0007

CVR0             .EQ  $0000
CVR1             .EQ  $0001
CVR2             .EQ  $0002
CVR3             .EQ  $0003
CVREF            .EQ  $0004


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


;----- ADCON2 Bits -----------------------------------------------------
ADFM             .EQ  $0007

ADCS0            .EQ  $0000
ADCS1            .EQ  $0001
ADCS2            .EQ  $0002
ACQT0            .EQ  $0003
ACQT1            .EQ  $0004
ACQT2            .EQ  $0005


;----- ADCON1 Bits -----------------------------------------------------
VCFG             .EQ  $0004

PCFG0            .EQ  $0000
PCFG1            .EQ  $0001
PCFG2            .EQ  $0002
PCFG3            .EQ  $0003
VCFG0            .EQ  $0004


;----- ADCON0 Bits -----------------------------------------------------
ADON             .EQ  $0000
GO_NOT_DONE      .EQ  $0001
SEVTEN           .EQ  $0007

GO               .EQ  $0001
CHS0             .EQ  $0002
CHS1             .EQ  $0003

DONE             .EQ  $0001

NOT_DONE         .EQ  $0001

GO_DONE          .EQ  $0001


;----- T1CON Bits -----------------------------------------------------
TMR1ON           .EQ  $0000
TMR1CS           .EQ  $0001
NOT_T1SYNC       .EQ  $0002
T1OSCEN          .EQ  $0003
T1RUN            .EQ  $0006
RD16             .EQ  $0007

T1CKPS0          .EQ  $0004
T1CKPS1          .EQ  $0005

T1SYNC           .EQ  $0002


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
FLTS             .EQ  $0002
IRCF0            .EQ  $0004
IRCF1            .EQ  $0005
IRCF2            .EQ  $0006


;----- T0CON Bits -----------------------------------------------------
PSA              .EQ  $0003
T0SE             .EQ  $0004
T0CS             .EQ  $0005
T016BIT          .EQ  $0006
TMR0ON           .EQ  $0007

T0PS0            .EQ  $0000
T0PS1            .EQ  $0001
T0PS2            .EQ  $0002

T08BIT           .EQ  $0006


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
;   Oscillator:
;     OSC = LP             LP Oscillator
;     OSC = XT             XT Oscillator
;     OSC = HS             HS Oscillator
;     OSC = RC             External RC oscillator, CLKO function on RA6
;     OSC = EC             EC oscillator, CLKO function on RA6
;     OSC = ECIO           EC oscillator, port function on RA6
;     OSC = HSPLL          HS oscillator, PLL enabled (Clock Frequency = 4 x FOSC1)
;     OSC = RCIO           External RC oscillator, port function on RA6
;     OSC = INTIO2         Internal oscillator, port function on RA6 and RA7
;     OSC = INTIO1         Internal oscillator, CLKO function on RA6, port function on RA7
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
;     BOR = OFF            Brown-out Reset disabled in hardware and software
;     BOR = SBORENCTRL     Brown-out Reset enabled and controlled by software (SBOREN is enabled)
;     BOR = BOACTIVE       Brown-out Reset enabled in hardware only and disabled in Sleep mode (SBOREN is disabled)
;     BOR = BOHW           Brown-out Reset enabled in hardware only (SBOREN is disabled)
;
;   Brown-out Reset Voltage bits:
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
;   PWM Output Pins Reset State Control bit:
;     PWMPIN = ON          PWM outputs drive active states upon Reset
;     PWMPIN = OFF         PWM outputs disabled upon Reset
;
;   Low-Side Transistors Polarity bit (Even PWM Output Polarity Control bit):
;     LPOL = LOW           PWM0, PWM2 and PWM4 are active-low
;     LPOL = HIGH          PWM0, PWM2 and PWM4 are active-high (default)
;
;   High Side Transistors Polarity bit (Odd PWM Output Polarity Control bit):
;     HPOL = LOW           PWM1, PWM3 and PWM5 are active-low
;     HPOL = HIGH          PWM1, PWM3 and PWM5 are active-high (default)
;
;   FLTA Mux bit:
;     FLTAMX = RA7         FLTA input is muxed onto RA7
;     FLTAMX = RA5         FLTA input is muxed onto RA5
;
;   T1OSO/T1CKI MUX bit:
;     T1OSCMX = LOW        T1OSO/T1CKI pin resides on RB2
;     T1OSCMX = HIGH       T1OSO/T1CKI pin resides on RA6
;
;   Master Clear Enable bit:
;     MCLRE = OFF          RA5 input pin enabled, MCLR pin disabled
;     MCLRE = ON           MCLR pin enabled, RA5 input pin disabled
;
;   Stack Overflow/Underflow Reset Enable bit:
;     STVREN = OFF         Reset on stack overflow/underflow disabled
;     STVREN = ON          Reset on stack overflow/underflow enabled
;
;   Boot Block Size Select bits:
;     BBSIZ = BB256        256 Words (512 Bytes) Boot Block size
;     BBSIZ = BB512        512 Words (1024 Bytes) Boot Block size
;     BBSIZ = BB1K         1K Words (2048 Bytes) Boot Block size
;
;   Extended Instruction Set Enable bit:
;     XINST = OFF          Instruction set extension and Indexed Addressing mode disabled
;     XINST = ON           Instruction set extension and Indexed Addressing mode enabled
;
;   Background Debugger Enable bit:
;     DEBUG = ON           Background debugger enabled, RB6 and RB7 are dedicated to In-Circuit Debug
;     DEBUG = OFF          Background debugger disabled, RB6 and RB7 configured as general purpose I/O pins
;
;   Code Protection bit Block 0 (000800-000FFF):
;     CP0 = ON             Block 0 is code-protected
;     CP0 = OFF            Block 0 is not code-protected
;
;   Code Protection bit Block 1 (001000-001FFF):
;     CP1 = ON             Block 1 is code-protected
;     CP1 = OFF            Block 1 is not code-protected
;
;   Code Protection bit (Boot Block Memory Area):
;     CPB = ON             Boot Block is code-protected
;     CPB = OFF            Boot Block is not code-protected
;
;   Code Protection bit (Data EEPROM):
;     CPD = ON             Data EEPROM is code-protected
;     CPD = OFF            Data EEPROM is not code-protected
;
;   Write Protection bit Block 0 (000800-000FFF):
;     WRT0 = ON            Block 0 is write-protected
;     WRT0 = OFF           Block 0 is not write-protected
;
;   Write Protection bit Block 1 (001000-001FFF):
;     WRT1 = ON            Block 1 is write-protected
;     WRT1 = OFF           Block 1 is not write-protected
;
;   Write Protection bit (Configuration Registers):
;     WRTC = ON            Configuration registers are write-protected
;     WRTC = OFF           Configuration registers are not write-protected
;
;   Write Protection bit (Boot Block Memory Area):
;     WRTB = ON            Boot Block is write-protected
;     WRTB = OFF           Boot Block is not write-protected
;
;   Write Protection bit (Data EEPROM):
;     WRTD = ON            Data EEPROM is write-protected
;     WRTD = OFF           Data EEPROM is not write-protected
;
;   Table Read Protection bit Block 0 (000800-000FFF):
;     EBTR0 = ON           Block 0 is protected from table reads executed in other blocks
;     EBTR0 = OFF          Block 0 is not protected from table reads executed in other blocks
;
;   Table Read Protection bit Block 1 (001000-001FFF):
;     EBTR1 = ON           Block 1 is protected from table reads executed in other blocks
;     EBTR1 = OFF          Block 1 is not protected from table reads executed in other blocks
;
;   Table Read Protection bit (Boot Block Memory Area):
;     EBTRB = ON           Boot Block is protected from table reads executed in other blocks
;     EBTRB = OFF          Boot Block is not protected from table reads executed in other blocks
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
_OSC_LP_1H           .EQ  $F0  LP Oscillator
_OSC_XT_1H           .EQ  $F1  XT Oscillator
_OSC_HS_1H           .EQ  $F2  HS Oscillator
_OSC_RC_1H           .EQ  $F3  External RC oscillator, CLKO function on RA6
_OSC_EC_1H           .EQ  $F4  EC oscillator, CLKO function on RA6
_OSC_ECIO_1H         .EQ  $F5  EC oscillator, port function on RA6
_OSC_HSPLL_1H        .EQ  $F6  HS oscillator, PLL enabled (Clock Frequency = 4 x FOSC1)
_OSC_RCIO_1H         .EQ  $F7  External RC oscillator, port function on RA6
_OSC_INTIO2_1H       .EQ  $F8  Internal oscillator, port function on RA6 and RA7
_OSC_INTIO1_1H       .EQ  $F9  Internal oscillator, CLKO function on RA6, port function on RA7

_FCMEN_OFF_1H        .EQ  $BF  Fail-Safe Clock Monitor disabled
_FCMEN_ON_1H         .EQ  $FF  Fail-Safe Clock Monitor enabled

_IESO_OFF_1H         .EQ  $7F  Oscillator Switchover mode disabled
_IESO_ON_1H          .EQ  $FF  Oscillator Switchover mode enabled

;----- CONFIG2L Options --------------------------------------------------
_PWRT_ON_2L          .EQ  $FE  PWRT enabled
_PWRT_OFF_2L         .EQ  $FF  PWRT disabled

_BOR_OFF_2L          .EQ  $F9  Brown-out Reset disabled in hardware and software
_BOR_SBORENCTRL_2L   .EQ  $FB  Brown-out Reset enabled and controlled by software (SBOREN is enabled)
_BOR_BOACTIVE_2L     .EQ  $FD  Brown-out Reset enabled in hardware only and disabled in Sleep mode (SBOREN is disabled)
_BOR_BOHW_2L         .EQ  $FF  Brown-out Reset enabled in hardware only (SBOREN is disabled)

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

;----- CONFIG3L Options --------------------------------------------------
_PWMPIN_ON_3L        .EQ  $FD  PWM outputs drive active states upon Reset
_PWMPIN_OFF_3L       .EQ  $FF  PWM outputs disabled upon Reset

_LPOL_LOW_3L         .EQ  $FB  PWM0, PWM2 and PWM4 are active-low
_LPOL_HIGH_3L        .EQ  $FF  PWM0, PWM2 and PWM4 are active-high (default)

_HPOL_LOW_3L         .EQ  $F7  PWM1, PWM3 and PWM5 are active-low
_HPOL_HIGH_3L        .EQ  $FF  PWM1, PWM3 and PWM5 are active-high (default)

;----- CONFIG3H Options --------------------------------------------------
_FLTAMX_RA7_3H       .EQ  $FE  FLTA input is muxed onto RA7
_FLTAMX_RA5_3H       .EQ  $FF  FLTA input is muxed onto RA5

_T1OSCMX_LOW_3H      .EQ  $F7  T1OSO/T1CKI pin resides on RB2
_T1OSCMX_HIGH_3H     .EQ  $FF  T1OSO/T1CKI pin resides on RA6

_MCLRE_OFF_3H        .EQ  $7F  RA5 input pin enabled, MCLR pin disabled
_MCLRE_ON_3H         .EQ  $FF  MCLR pin enabled, RA5 input pin disabled

;----- CONFIG4L Options --------------------------------------------------
_STVREN_OFF_4L       .EQ  $FE  Reset on stack overflow/underflow disabled
_STVREN_ON_4L        .EQ  $FF  Reset on stack overflow/underflow enabled

_BBSIZ_BB256_4L      .EQ  $CF  256 Words (512 Bytes) Boot Block size
_BBSIZ_BB512_4L      .EQ  $DF  512 Words (1024 Bytes) Boot Block size
_BBSIZ_BB1K_4L       .EQ  $FF  1K Words (2048 Bytes) Boot Block size

_XINST_OFF_4L        .EQ  $BF  Instruction set extension and Indexed Addressing mode disabled
_XINST_ON_4L         .EQ  $FF  Instruction set extension and Indexed Addressing mode enabled

_DEBUG_ON_4L         .EQ  $7F  Background debugger enabled, RB6 and RB7 are dedicated to In-Circuit Debug
_DEBUG_OFF_4L        .EQ  $FF  Background debugger disabled, RB6 and RB7 configured as general purpose I/O pins

;----- CONFIG5L Options --------------------------------------------------
_CP0_ON_5L           .EQ  $FE  Block 0 is code-protected
_CP0_OFF_5L          .EQ  $FF  Block 0 is not code-protected

_CP1_ON_5L           .EQ  $FD  Block 1 is code-protected
_CP1_OFF_5L          .EQ  $FF  Block 1 is not code-protected

;----- CONFIG5H Options --------------------------------------------------
_CPB_ON_5H           .EQ  $BF  Boot Block is code-protected
_CPB_OFF_5H          .EQ  $FF  Boot Block is not code-protected

_CPD_ON_5H           .EQ  $7F  Data EEPROM is code-protected
_CPD_OFF_5H          .EQ  $FF  Data EEPROM is not code-protected

;----- CONFIG6L Options --------------------------------------------------
_WRT0_ON_6L          .EQ  $FE  Block 0 is write-protected
_WRT0_OFF_6L         .EQ  $FF  Block 0 is not write-protected

_WRT1_ON_6L          .EQ  $FD  Block 1 is write-protected
_WRT1_OFF_6L         .EQ  $FF  Block 1 is not write-protected

;----- CONFIG6H Options --------------------------------------------------
_WRTC_ON_6H          .EQ  $DF  Configuration registers are write-protected
_WRTC_OFF_6H         .EQ  $FF  Configuration registers are not write-protected

_WRTB_ON_6H          .EQ  $BF  Boot Block is write-protected
_WRTB_OFF_6H         .EQ  $FF  Boot Block is not write-protected

_WRTD_ON_6H          .EQ  $7F  Data EEPROM is write-protected
_WRTD_OFF_6H         .EQ  $FF  Data EEPROM is not write-protected

;----- CONFIG7L Options --------------------------------------------------
_EBTR0_ON_7L         .EQ  $FE  Block 0 is protected from table reads executed in other blocks
_EBTR0_OFF_7L        .EQ  $FF  Block 0 is not protected from table reads executed in other blocks

_EBTR1_ON_7L         .EQ  $FD  Block 1 is protected from table reads executed in other blocks
_EBTR1_OFF_7L        .EQ  $FF  Block 1 is not protected from table reads executed in other blocks

;----- CONFIG7H Options --------------------------------------------------
_EBTRB_ON_7H         .EQ  $BF  Boot Block is protected from table reads executed in other blocks
_EBTRB_OFF_7H        .EQ  $FF  Boot Block is not protected from table reads executed in other blocks


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
