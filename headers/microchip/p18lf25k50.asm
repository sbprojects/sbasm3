;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC18LF25K50 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC18LF25K50 microcontroller.  These names
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
SRCON1           .EQ  $0F57
SRCON0           .EQ  $0F58
CCPTMRS          .EQ  $0F59
ANSELA           .EQ  $0F5B
ANSELB           .EQ  $0F5C
ANSELC           .EQ  $0F5D
UCON             .EQ  $0F60
USTAT            .EQ  $0F61
UCFG             .EQ  $0F62
UADDR            .EQ  $0F63
UIE              .EQ  $0F64
UIR              .EQ  $0F65
UEIE             .EQ  $0F66
UEIR             .EQ  $0F67
UFRM             .EQ  $0F68
UFRML            .EQ  $0F68
UFRMH            .EQ  $0F69
UEP0             .EQ  $0F6A
UEP1             .EQ  $0F6B
UEP2             .EQ  $0F6C
UEP3             .EQ  $0F6D
UEP4             .EQ  $0F6E
UEP5             .EQ  $0F6F
UEP6             .EQ  $0F70
UEP7             .EQ  $0F71
UEP8             .EQ  $0F72
UEP9             .EQ  $0F73
UEP10            .EQ  $0F74
UEP11            .EQ  $0F75
UEP12            .EQ  $0F76
UEP13            .EQ  $0F77
UEP14            .EQ  $0F78
UEP15            .EQ  $0F79
SLRCON           .EQ  $0F7A
VREFCON2         .EQ  $0F7B
VREFCON1         .EQ  $0F7C
VREFCON0         .EQ  $0F7D
PMD0             .EQ  $0F7E
PMD1             .EQ  $0F7F
PORTA            .EQ  $0F80
PORTB            .EQ  $0F81
PORTC            .EQ  $0F82
PORTE            .EQ  $0F84
WPUB             .EQ  $0F85
IOCB             .EQ  $0F86
IOCC             .EQ  $0F87
CTMUICON         .EQ  $0F88
LATA             .EQ  $0F89
LATB             .EQ  $0F8A
LATC             .EQ  $0F8B
CTMUCON1         .EQ  $0F8E
CTMUCONL         .EQ  $0F8E
CTMUCON0         .EQ  $0F8F
CTMUCONH         .EQ  $0F8F
CCPR2            .EQ  $0F90
CCPR2L           .EQ  $0F90
CCPR2H           .EQ  $0F91
DDRA             .EQ  $0F92
TRISA            .EQ  $0F92
DDRB             .EQ  $0F93
TRISB            .EQ  $0F93
DDRC             .EQ  $0F94
TRISC            .EQ  $0F94
CCP2CON          .EQ  $0F97
ECCP2CON         .EQ  $0F97
CM1CON0          .EQ  $0F98
CM2CON0          .EQ  $0F99
CM2CON1          .EQ  $0F9A
OSCTUNE          .EQ  $0F9B
HLVDCON          .EQ  $0F9C
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
RCSTA1           .EQ  $0FAB
TXSTA            .EQ  $0FAC
TXSTA1           .EQ  $0FAC
TXREG            .EQ  $0FAD
TXREG1           .EQ  $0FAD
RCREG            .EQ  $0FAE
RCREG1           .EQ  $0FAE
SPBRG            .EQ  $0FAF
SPBRG1           .EQ  $0FAF
SPBRGH           .EQ  $0FB0
SPBRGH1          .EQ  $0FB0
T3CON            .EQ  $0FB1
TMR3             .EQ  $0FB2
TMR3L            .EQ  $0FB2
TMR3H            .EQ  $0FB3
T3GCON           .EQ  $0FB4
ACTCON           .EQ  $0FB5
STCON            .EQ  $0FB5
ECCP1AS          .EQ  $0FB6
ECCP1DEL         .EQ  $0FB7
PWM1CON          .EQ  $0FB7
BAUDCON          .EQ  $0FB8
BAUDCON1         .EQ  $0FB8
PSTR1CON         .EQ  $0FB9
T2CON            .EQ  $0FBA
PR2              .EQ  $0FBB
TMR2             .EQ  $0FBC
CCP1CON          .EQ  $0FBD
ECCP1CON         .EQ  $0FBD
CCPR1            .EQ  $0FBE
CCPR1L           .EQ  $0FBE
CCPR1H           .EQ  $0FBF
ADCON2           .EQ  $0FC0
ADCON1           .EQ  $0FC1
ADCON0           .EQ  $0FC2
ADRESL           .EQ  $0FC3
ADRESH           .EQ  $0FC4
SSP1CON2         .EQ  $0FC5
SSPCON2          .EQ  $0FC5
SSP1CON1         .EQ  $0FC6
SSPCON           .EQ  $0FC6
SSPCON1          .EQ  $0FC6
SSP1STAT         .EQ  $0FC7
SSPSTAT          .EQ  $0FC7
SSP1ADD          .EQ  $0FC8
SSPADD           .EQ  $0FC8
SSP1BUF          .EQ  $0FC9
SSPBUF           .EQ  $0FC9
SSP1MSK          .EQ  $0FCA
SSPMSK           .EQ  $0FCA
SSP1CON3         .EQ  $0FCB
SSPCON3          .EQ  $0FCB
T1GCON           .EQ  $0FCC
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

;----- SRCON1 Bits -----------------------------------------------------
SRRC1E           .EQ  $0000
SRRC2E           .EQ  $0001
SRRCKE           .EQ  $0002
SRRPE            .EQ  $0003
SRSC1E           .EQ  $0004
SRSC2E           .EQ  $0005
SRSCKE           .EQ  $0006
SRSPE            .EQ  $0007


;----- SRCON0 Bits -----------------------------------------------------
SRPR             .EQ  $0000
SRPS             .EQ  $0001
SRNQEN           .EQ  $0002
SRQEN            .EQ  $0003
SRLEN            .EQ  $0007

SRCLK0           .EQ  $0004
SRCLK1           .EQ  $0005
SRCLK2           .EQ  $0006


;----- CCPTMRS Bits -----------------------------------------------------
C1TSEL           .EQ  $0000
C2TSEL           .EQ  $0003


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


;----- ANSELC Bits -----------------------------------------------------
ANSC2            .EQ  $0002
ANSC6            .EQ  $0006
ANSC7            .EQ  $0007


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


;----- UCFG Bits -----------------------------------------------------
FSEN             .EQ  $0002
UTRDIS           .EQ  $0003
UPUEN            .EQ  $0004
UOEMON           .EQ  $0006
UTEYE            .EQ  $0007

PPB0             .EQ  $0000
PPB1             .EQ  $0001


;----- UADDR Bits -----------------------------------------------------
ADDR0            .EQ  $0000
ADDR1            .EQ  $0001
ADDR2            .EQ  $0002
ADDR3            .EQ  $0003
ADDR4            .EQ  $0004
ADDR5            .EQ  $0005
ADDR6            .EQ  $0006


;----- UIE Bits -----------------------------------------------------
URSTIE           .EQ  $0000
UERRIE           .EQ  $0001
ACTVIE           .EQ  $0002
TRNIE            .EQ  $0003
IDLEIE           .EQ  $0004
STALLIE          .EQ  $0005
SOFIE            .EQ  $0006


;----- UIR Bits -----------------------------------------------------
URSTIF           .EQ  $0000
UERRIF           .EQ  $0001
ACTVIF           .EQ  $0002
TRNIF            .EQ  $0003
IDLEIF           .EQ  $0004
STALLIF          .EQ  $0005
SOFIF            .EQ  $0006


;----- UEIE Bits -----------------------------------------------------
PIDEE            .EQ  $0000
CRC5EE           .EQ  $0001
CRC16EE          .EQ  $0002
DFN8EE           .EQ  $0003
BTOEE            .EQ  $0004
BTSEE            .EQ  $0007


;----- UEIR Bits -----------------------------------------------------
PIDEF            .EQ  $0000
CRC5EF           .EQ  $0001
CRC16EF          .EQ  $0002
DFN8EF           .EQ  $0003
BTOEF            .EQ  $0004
BTSEF            .EQ  $0007


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


;----- UEP8 Bits -----------------------------------------------------
EPSTALL          .EQ  $0000
EPINEN           .EQ  $0001
EPOUTEN          .EQ  $0002
EPCONDIS         .EQ  $0003
EPHSHK           .EQ  $0004


;----- UEP9 Bits -----------------------------------------------------
EPSTALL          .EQ  $0000
EPINEN           .EQ  $0001
EPOUTEN          .EQ  $0002
EPCONDIS         .EQ  $0003
EPHSHK           .EQ  $0004


;----- UEP10 Bits -----------------------------------------------------
EPSTALL          .EQ  $0000
EPINEN           .EQ  $0001
EPOUTEN          .EQ  $0002
EPCONDIS         .EQ  $0003
EPHSHK           .EQ  $0004


;----- UEP11 Bits -----------------------------------------------------
EPSTALL          .EQ  $0000
EPINEN           .EQ  $0001
EPOUTEN          .EQ  $0002
EPCONDIS         .EQ  $0003
EPHSHK           .EQ  $0004


;----- UEP12 Bits -----------------------------------------------------
EPSTALL          .EQ  $0000
EPINEN           .EQ  $0001
EPOUTEN          .EQ  $0002
EPCONDIS         .EQ  $0003
EPHSHK           .EQ  $0004


;----- UEP13 Bits -----------------------------------------------------
EPSTALL          .EQ  $0000
EPINEN           .EQ  $0001
EPOUTEN          .EQ  $0002
EPCONDIS         .EQ  $0003
EPHSHK           .EQ  $0004


;----- UEP14 Bits -----------------------------------------------------
EPSTALL          .EQ  $0000
EPINEN           .EQ  $0001
EPOUTEN          .EQ  $0002
EPCONDIS         .EQ  $0003
EPHSHK           .EQ  $0004


;----- UEP15 Bits -----------------------------------------------------
EPSTALL          .EQ  $0000
EPINEN           .EQ  $0001
EPOUTEN          .EQ  $0002
EPCONDIS         .EQ  $0003
EPHSHK           .EQ  $0004


;----- SLRCON Bits -----------------------------------------------------
SLRA             .EQ  $0000
SLRB             .EQ  $0001
SLRC             .EQ  $0002


;----- VREFCON2 Bits -----------------------------------------------------
DACR0            .EQ  $0000
DACR1            .EQ  $0001
DACR2            .EQ  $0002
DACR3            .EQ  $0003
DACR4            .EQ  $0004


;----- VREFCON1 Bits -----------------------------------------------------
DACNSS           .EQ  $0000
DACOE            .EQ  $0005
DACLPS           .EQ  $0006
DACEN            .EQ  $0007

DACPSS0          .EQ  $0002
DACPSS1          .EQ  $0003


;----- VREFCON0 Bits -----------------------------------------------------
TSRNG            .EQ  $0002
TSEN             .EQ  $0003
FVRST            .EQ  $0006
FVREN            .EQ  $0007

FVRS0            .EQ  $0004
FVRS1            .EQ  $0005


;----- PMD0 Bits -----------------------------------------------------
TMR1MD           .EQ  $0000
TMR2MD           .EQ  $0001
TMR3MD           .EQ  $0002
ACTMD            .EQ  $0004
USBMD            .EQ  $0005
UARTMD           .EQ  $0006

STMD             .EQ  $0004
UART1MD          .EQ  $0006


;----- PMD1 Bits -----------------------------------------------------
CCP1MD           .EQ  $0000
CCP2MD           .EQ  $0001
ADCMD            .EQ  $0002
CMP1MD           .EQ  $0003
CMP2MD           .EQ  $0004
CTMUMD           .EQ  $0005
MSSPMD           .EQ  $0006

SSP1MD           .EQ  $0006

MSSP1MD          .EQ  $0006


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

VREFM            .EQ  $0002
VREFP            .EQ  $0003
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
PGM              .EQ  $0005
PGC              .EQ  $0006
PGD              .EQ  $0007


;----- PORTC Bits -----------------------------------------------------
RC0              .EQ  $0000
RC1              .EQ  $0001
RC2              .EQ  $0002
RC4              .EQ  $0004
RC5              .EQ  $0005
RC6              .EQ  $0006
RC7              .EQ  $0007

T1OSO            .EQ  $0000
T1OSI            .EQ  $0001
CCP1             .EQ  $0002
TX               .EQ  $0006
RX               .EQ  $0007

T13CKI           .EQ  $0000
P1A              .EQ  $0002
CK               .EQ  $0006
; DT is a reserved word
; DT               .EQ  $0007


;----- PORTE Bits -----------------------------------------------------
RE3              .EQ  $0003


;----- WPUB Bits -----------------------------------------------------
WPUB0            .EQ  $0000
WPUB1            .EQ  $0001
WPUB2            .EQ  $0002
WPUB3            .EQ  $0003
WPUB4            .EQ  $0004
WPUB5            .EQ  $0005
WPUB6            .EQ  $0006
WPUB7            .EQ  $0007


;----- IOCB Bits -----------------------------------------------------
IOCB4            .EQ  $0004
IOCB5            .EQ  $0005
IOCB6            .EQ  $0006
IOCB7            .EQ  $0007


;----- IOCC Bits -----------------------------------------------------
IOCC0            .EQ  $0000
IOCC1            .EQ  $0001
IOCC2            .EQ  $0002
IOCC4            .EQ  $0004
IOCC5            .EQ  $0005
IOCC6            .EQ  $0006
IOCC7            .EQ  $0007


;----- CTMUICON Bits -----------------------------------------------------
IRNG0            .EQ  $0000
IRNG1            .EQ  $0001
ITRIM0           .EQ  $0002
ITRIM1           .EQ  $0003
ITRIM2           .EQ  $0004
ITRIM3           .EQ  $0005
ITRIM4           .EQ  $0006
ITRIM5           .EQ  $0007


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
LATC4            .EQ  $0004
LATC5            .EQ  $0005
LATC6            .EQ  $0006
LATC7            .EQ  $0007


;----- CTMUCON1 Bits -----------------------------------------------------
EDG1STAT         .EQ  $0000
EDG2STAT         .EQ  $0001
EDG1POL          .EQ  $0004
EDG2POL          .EQ  $0007

EDG1SEL0         .EQ  $0002
EDG1SEL1         .EQ  $0003
EDG2SEL0         .EQ  $0005
EDG2SEL1         .EQ  $0006


;----- CTMUCONL Bits -----------------------------------------------------
EDG1STAT         .EQ  $0000
EDG2STAT         .EQ  $0001
EDG1POL          .EQ  $0004
EDG2POL          .EQ  $0007

EDG1SEL0         .EQ  $0002
EDG1SEL1         .EQ  $0003
EDG2SEL0         .EQ  $0005
EDG2SEL1         .EQ  $0006


;----- CTMUCON0 Bits -----------------------------------------------------
CTTRIG           .EQ  $0000
IDISSEN          .EQ  $0001
EDGSEQEN         .EQ  $0002
EDGEN            .EQ  $0003
TGEN             .EQ  $0004
CTMUSIDL         .EQ  $0005
CTMUEN           .EQ  $0007

TRIGEN           .EQ  $0000
SIDL             .EQ  $0005
ON               .EQ  $0007


;----- CTMUCONH Bits -----------------------------------------------------
CTTRIG           .EQ  $0000
IDISSEN          .EQ  $0001
EDGSEQEN         .EQ  $0002
EDGEN            .EQ  $0003
TGEN             .EQ  $0004
CTMUSIDL         .EQ  $0005
CTMUEN           .EQ  $0007

TRIGEN           .EQ  $0000
SIDL             .EQ  $0005
ON               .EQ  $0007


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
TRISC4           .EQ  $0004
TRISC5           .EQ  $0005
TRISC6           .EQ  $0006
TRISC7           .EQ  $0007

RC0              .EQ  $0000
RC1              .EQ  $0001
RC2              .EQ  $0002
RC6              .EQ  $0006
RC7              .EQ  $0007


;----- TRISC Bits -----------------------------------------------------
TRISC0           .EQ  $0000
TRISC1           .EQ  $0001
TRISC2           .EQ  $0002
TRISC4           .EQ  $0004
TRISC5           .EQ  $0005
TRISC6           .EQ  $0006
TRISC7           .EQ  $0007

RC0              .EQ  $0000
RC1              .EQ  $0001
RC2              .EQ  $0002
RC6              .EQ  $0006
RC7              .EQ  $0007


;----- CCP2CON Bits -----------------------------------------------------
CCP2M0           .EQ  $0000
CCP2M1           .EQ  $0001
CCP2M2           .EQ  $0002
CCP2M3           .EQ  $0003
DC2B0            .EQ  $0004
DC2B1            .EQ  $0005

CCP2Y            .EQ  $0004
CCP2X            .EQ  $0005


;----- ECCP2CON Bits -----------------------------------------------------
CCP2M0           .EQ  $0000
CCP2M1           .EQ  $0001
CCP2M2           .EQ  $0002
CCP2M3           .EQ  $0003
DC2B0            .EQ  $0004
DC2B1            .EQ  $0005

CCP2Y            .EQ  $0004
CCP2X            .EQ  $0005


;----- CM1CON0 Bits -----------------------------------------------------
C1R              .EQ  $0002
C1SP             .EQ  $0003
C1POL            .EQ  $0004
C1OE             .EQ  $0005
C1OUT            .EQ  $0006
C1ON             .EQ  $0007

C1CH0            .EQ  $0000
C1CH1            .EQ  $0001
CREF             .EQ  $0002
CPOL             .EQ  $0004
COE              .EQ  $0005
COUT1            .EQ  $0006
CON              .EQ  $0007


CCH0             .EQ  $0000
CCH1             .EQ  $0001


;----- CM2CON0 Bits -----------------------------------------------------
C2R              .EQ  $0002
C2SP             .EQ  $0003
C2POL            .EQ  $0004
C2OE             .EQ  $0005
C2OUT            .EQ  $0006
C2ON             .EQ  $0007

C2CH0            .EQ  $0000
C2CH1            .EQ  $0001
CREF             .EQ  $0002
CPOL             .EQ  $0004
COE              .EQ  $0005
COUT2            .EQ  $0006
CON              .EQ  $0007


CCH0             .EQ  $0000
CCH1             .EQ  $0001


;----- CM2CON1 Bits -----------------------------------------------------
C2SYNC           .EQ  $0000
C1SYNC           .EQ  $0001
C2HYS            .EQ  $0002
C1HYS            .EQ  $0003
C2RSEL           .EQ  $0004
C1RSEL           .EQ  $0005
MC2OUT           .EQ  $0006
MC1OUT           .EQ  $0007


;----- OSCTUNE Bits -----------------------------------------------------
SPLLMULT         .EQ  $0007

TUN0             .EQ  $0000
TUN1             .EQ  $0001
TUN2             .EQ  $0002
TUN3             .EQ  $0003
TUN4             .EQ  $0004
TUN5             .EQ  $0005
TUN6             .EQ  $0006


;----- HLVDCON Bits -----------------------------------------------------
HLVDEN           .EQ  $0004
IRVST            .EQ  $0005
BGVST            .EQ  $0006
VDIRMAG          .EQ  $0007

HLVDL0           .EQ  $0000
HLVDL1           .EQ  $0001
HLVDL2           .EQ  $0002
HLVDL3           .EQ  $0003


;----- PIE1 Bits -----------------------------------------------------
TMR1IE           .EQ  $0000
TMR2IE           .EQ  $0001
CCP1IE           .EQ  $0002
SSPIE            .EQ  $0003
TXIE             .EQ  $0004
RCIE             .EQ  $0005
ADIE             .EQ  $0006
ACTIE            .EQ  $0007

SSP1IE           .EQ  $0003
TX1IE            .EQ  $0004
RC1IE            .EQ  $0005
STIE             .EQ  $0007


;----- PIR1 Bits -----------------------------------------------------
TMR1IF           .EQ  $0000
TMR2IF           .EQ  $0001
CCP1IF           .EQ  $0002
SSPIF            .EQ  $0003
TXIF             .EQ  $0004
RCIF             .EQ  $0005
ADIF             .EQ  $0006
ACTIF            .EQ  $0007

SSP1IF           .EQ  $0003
TX1IF            .EQ  $0004
RC1IF            .EQ  $0005
STIF             .EQ  $0007


;----- IPR1 Bits -----------------------------------------------------
TMR1IP           .EQ  $0000
TMR2IP           .EQ  $0001
CCP1IP           .EQ  $0002
SSPIP            .EQ  $0003
TXIP             .EQ  $0004
RCIP             .EQ  $0005
ADIP             .EQ  $0006
ACTIP            .EQ  $0007

SSP1IP           .EQ  $0003
TX1IP            .EQ  $0004
RC1IP            .EQ  $0005
STIP             .EQ  $0007


;----- PIE2 Bits -----------------------------------------------------
CCP2IE           .EQ  $0000
TMR3IE           .EQ  $0001
HLVDIE           .EQ  $0002
BCLIE            .EQ  $0003
EEIE             .EQ  $0004
C2IE             .EQ  $0005
C1IE             .EQ  $0006
OSCFIE           .EQ  $0007

LVDIE            .EQ  $0002
BCL1IE           .EQ  $0003
CM2IE            .EQ  $0005
CM1IE            .EQ  $0006


;----- PIR2 Bits -----------------------------------------------------
CCP2IF           .EQ  $0000
TMR3IF           .EQ  $0001
HLVDIF           .EQ  $0002
BCLIF            .EQ  $0003
EEIF             .EQ  $0004
C2IF             .EQ  $0005
C1IF             .EQ  $0006
OSCFIF           .EQ  $0007

LVDIF            .EQ  $0002
BCL1IF           .EQ  $0003
CM2IF            .EQ  $0005
CM1IF            .EQ  $0006


;----- IPR2 Bits -----------------------------------------------------
CCP2IP           .EQ  $0000
TMR3IP           .EQ  $0001
HLVDIP           .EQ  $0002
BCLIP            .EQ  $0003
EEIP             .EQ  $0004
C2IP             .EQ  $0005
C1IP             .EQ  $0006
OSCFIP           .EQ  $0007

LVDIP            .EQ  $0002
BCL1IP           .EQ  $0003
CM2IP            .EQ  $0005
CM1IP            .EQ  $0006


;----- PIE3 Bits -----------------------------------------------------
TMR1GIE          .EQ  $0000
TMR3GIE          .EQ  $0001
USBIE            .EQ  $0002
CTMUIE           .EQ  $0003


;----- PIR3 Bits -----------------------------------------------------
TMR1GIF          .EQ  $0000
TMR3GIF          .EQ  $0001
USBIF            .EQ  $0002
CTMUIF           .EQ  $0003


;----- IPR3 Bits -----------------------------------------------------
TMR1GIP          .EQ  $0000
TMR3GIP          .EQ  $0001
USBIP            .EQ  $0002
CTMUIP           .EQ  $0003


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
ADDEN            .EQ  $0003
CREN             .EQ  $0004
SREN             .EQ  $0005
RX9              .EQ  $0006
SPEN             .EQ  $0007

ADEN             .EQ  $0003


;----- RCSTA1 Bits -----------------------------------------------------
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


;----- TXSTA1 Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SENDB            .EQ  $0003
SYNC             .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007


;----- SPBRG Bits -----------------------------------------------------
BRG0             .EQ  $0000
BRG1             .EQ  $0001
BRG2             .EQ  $0002
BRG3             .EQ  $0003
BRG4             .EQ  $0004
BRG5             .EQ  $0005
BRG6             .EQ  $0006
BRG7             .EQ  $0007


;----- SPBRG1 Bits -----------------------------------------------------
BRG0             .EQ  $0000
BRG1             .EQ  $0001
BRG2             .EQ  $0002
BRG3             .EQ  $0003
BRG4             .EQ  $0004
BRG5             .EQ  $0005
BRG6             .EQ  $0006
BRG7             .EQ  $0007


;----- SPBRGH Bits -----------------------------------------------------
BRG8             .EQ  $0000
BRG9             .EQ  $0001
BRG10            .EQ  $0002
BRG11            .EQ  $0003
BRG12            .EQ  $0004
BRG13            .EQ  $0005
BRG14            .EQ  $0006
BRG15            .EQ  $0007


;----- SPBRGH1 Bits -----------------------------------------------------
BRG8             .EQ  $0000
BRG9             .EQ  $0001
BRG10            .EQ  $0002
BRG11            .EQ  $0003
BRG12            .EQ  $0004
BRG13            .EQ  $0005
BRG14            .EQ  $0006
BRG15            .EQ  $0007


;----- T3CON Bits -----------------------------------------------------
TMR3ON           .EQ  $0000
RD16             .EQ  $0001
NOT_T3SYNC       .EQ  $0002
SOSCEN           .EQ  $0003

T3RD16           .EQ  $0001
T3SYNC           .EQ  $0002
T3SOSCEN         .EQ  $0003
T3CKPS0          .EQ  $0004
T3CKPS1          .EQ  $0005
TMR3CS0          .EQ  $0006
TMR3CS1          .EQ  $0007

T3OSCEN          .EQ  $0003


;----- T3GCON Bits -----------------------------------------------------
T3GVAL           .EQ  $0002
T3GGO_NOT_T3DONE .EQ  $0003
T3GSPM           .EQ  $0004
T3GTM            .EQ  $0005
T3GPOL           .EQ  $0006
TMR3GE           .EQ  $0007

T3GSS0           .EQ  $0000
T3GSS1           .EQ  $0001
T3GGO            .EQ  $0003

NOT_T3DONE       .EQ  $0003

T3DONE           .EQ  $0003

T3GGO_NOT_DONE   .EQ  $0003


;----- ACTCON Bits -----------------------------------------------------
ACTORS           .EQ  $0001
ACTLOCK          .EQ  $0003
ACTSRC           .EQ  $0004
ACTUD            .EQ  $0006
ACTEN            .EQ  $0007

STOR             .EQ  $0001
STLOCK           .EQ  $0003
STSRC            .EQ  $0004
STUD             .EQ  $0006
STEN             .EQ  $0007

ACTOR            .EQ  $0001
ACTD             .EQ  $0006
ACTSEL           .EQ  $0007


;----- STCON Bits -----------------------------------------------------
ACTORS           .EQ  $0001
ACTLOCK          .EQ  $0003
ACTSRC           .EQ  $0004
ACTUD            .EQ  $0006
ACTEN            .EQ  $0007

STOR             .EQ  $0001
STLOCK           .EQ  $0003
STSRC            .EQ  $0004
STUD             .EQ  $0006
STEN             .EQ  $0007

ACTOR            .EQ  $0001
ACTD             .EQ  $0006
ACTSEL           .EQ  $0007


;----- ECCP1AS Bits -----------------------------------------------------
ECCP1ASE         .EQ  $0007

PSS1BD0          .EQ  $0000
PSS1BD1          .EQ  $0001
PSS1AC0          .EQ  $0002
PSS1AC1          .EQ  $0003
ECCP1AS0         .EQ  $0004
ECCP1AS1         .EQ  $0005
ECCP1AS2         .EQ  $0006
CCP1ASE          .EQ  $0007


PSSBD0           .EQ  $0000
PSSBD1           .EQ  $0001
PSSAC0           .EQ  $0002
PSSAC1           .EQ  $0003


;----- ECCP1DEL Bits -----------------------------------------------------
P1RSEN           .EQ  $0007

PDC0             .EQ  $0000
PDC1             .EQ  $0001
PDC2             .EQ  $0002
PDC3             .EQ  $0003
PDC4             .EQ  $0004
PDC5             .EQ  $0005
PDC6             .EQ  $0006
PR1SEN           .EQ  $0007


;----- PWM1CON Bits -----------------------------------------------------
P1RSEN           .EQ  $0007

PDC0             .EQ  $0000
PDC1             .EQ  $0001
PDC2             .EQ  $0002
PDC3             .EQ  $0003
PDC4             .EQ  $0004
PDC5             .EQ  $0005
PDC6             .EQ  $0006
PR1SEN           .EQ  $0007


;----- BAUDCON Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
TXCKP            .EQ  $0004
RXDTP            .EQ  $0005
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007

CKTXP            .EQ  $0004
DTRXP            .EQ  $0005

SCKP             .EQ  $0004
RCMT             .EQ  $0006


;----- BAUDCON1 Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
TXCKP            .EQ  $0004
RXDTP            .EQ  $0005
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007

CKTXP            .EQ  $0004
DTRXP            .EQ  $0005

SCKP             .EQ  $0004
RCMT             .EQ  $0006


;----- PSTR1CON Bits -----------------------------------------------------
STRA             .EQ  $0000
STRB             .EQ  $0001
STRC             .EQ  $0002
STRD             .EQ  $0003
STRSYNC          .EQ  $0004

STR1A            .EQ  $0000
STR1B            .EQ  $0001
STR1C            .EQ  $0002
STR1D            .EQ  $0003
STR1SYNC         .EQ  $0004


;----- T2CON Bits -----------------------------------------------------
TMR2ON           .EQ  $0002

T2CKPS0          .EQ  $0000
T2CKPS1          .EQ  $0001
T2OUTPS0         .EQ  $0003
T2OUTPS1         .EQ  $0004
T2OUTPS2         .EQ  $0005
T2OUTPS3         .EQ  $0006


;----- CCP1CON Bits -----------------------------------------------------
CCP1M0           .EQ  $0000
CCP1M1           .EQ  $0001
CCP1M2           .EQ  $0002
CCP1M3           .EQ  $0003
DC1B0            .EQ  $0004
DC1B1            .EQ  $0005
P1M0             .EQ  $0006
P1M1             .EQ  $0007

CCP1Y            .EQ  $0004
CCP1X            .EQ  $0005


;----- ECCP1CON Bits -----------------------------------------------------
CCP1M0           .EQ  $0000
CCP1M1           .EQ  $0001
CCP1M2           .EQ  $0002
CCP1M3           .EQ  $0003
DC1B0            .EQ  $0004
DC1B1            .EQ  $0005
P1M0             .EQ  $0006
P1M1             .EQ  $0007

CCP1Y            .EQ  $0004
CCP1X            .EQ  $0005


;----- ADCON2 Bits -----------------------------------------------------
ADFM             .EQ  $0007

ADCS0            .EQ  $0000
ADCS1            .EQ  $0001
ADCS2            .EQ  $0002
ACQT0            .EQ  $0003
ACQT1            .EQ  $0004
ACQT2            .EQ  $0005


;----- ADCON1 Bits -----------------------------------------------------
TRIGSEL          .EQ  $0007

NVCFG0           .EQ  $0000
NVCFG1           .EQ  $0001
PVCFG0           .EQ  $0002
PVCFG1           .EQ  $0003


;----- ADCON0 Bits -----------------------------------------------------
ADON             .EQ  $0000
GO_NOT_DONE      .EQ  $0001

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


;----- SSPCON2 Bits -----------------------------------------------------
SEN              .EQ  $0000
RSEN             .EQ  $0001
PEN              .EQ  $0002
RCEN             .EQ  $0003
ACKEN            .EQ  $0004
ACKDT            .EQ  $0005
ACKSTAT          .EQ  $0006
GCEN             .EQ  $0007


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


;----- SSP1ADD Bits -----------------------------------------------------
SSP1ADD0         .EQ  $0000
SSP1ADD1         .EQ  $0001
SSP1ADD2         .EQ  $0002
SSP1ADD3         .EQ  $0003
SSP1ADD4         .EQ  $0004
SSP1ADD5         .EQ  $0005
SSP1ADD6         .EQ  $0006
SSP1ADD7         .EQ  $0007


;----- SSPADD Bits -----------------------------------------------------
SSP1ADD0         .EQ  $0000
SSP1ADD1         .EQ  $0001
SSP1ADD2         .EQ  $0002
SSP1ADD3         .EQ  $0003
SSP1ADD4         .EQ  $0004
SSP1ADD5         .EQ  $0005
SSP1ADD6         .EQ  $0006
SSP1ADD7         .EQ  $0007


;----- SSP1MSK Bits -----------------------------------------------------
SSP1MSK0         .EQ  $0000
SSP1MSK1         .EQ  $0001
SSP1MSK2         .EQ  $0002
SSP1MSK3         .EQ  $0003
SSP1MSK4         .EQ  $0004
SSP1MSK5         .EQ  $0005
SSP1MSK6         .EQ  $0006
SSP1MSK7         .EQ  $0007


;----- SSPMSK Bits -----------------------------------------------------
SSP1MSK0         .EQ  $0000
SSP1MSK1         .EQ  $0001
SSP1MSK2         .EQ  $0002
SSP1MSK3         .EQ  $0003
SSP1MSK4         .EQ  $0004
SSP1MSK5         .EQ  $0005
SSP1MSK6         .EQ  $0006
SSP1MSK7         .EQ  $0007


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


;----- T1GCON Bits -----------------------------------------------------
T1GVAL           .EQ  $0002
T1GGO_NOT_T1DONE .EQ  $0003
T1GSPM           .EQ  $0004
T1GTM            .EQ  $0005
T1GPOL           .EQ  $0006
TMR1GE           .EQ  $0007

T1GSS0           .EQ  $0000
T1GSS1           .EQ  $0001
T1GGO            .EQ  $0003

NOT_T1DONE       .EQ  $0003

T1DONE           .EQ  $0003

T1GGO_NOT_DONE   .EQ  $0003


;----- T1CON Bits -----------------------------------------------------
TMR1ON           .EQ  $0000
RD16             .EQ  $0001
NOT_T1SYNC       .EQ  $0002
SOSCEN           .EQ  $0003

T1RD16           .EQ  $0001
T1SYNC           .EQ  $0002
T1SOSCEN         .EQ  $0003
T1CKPS0          .EQ  $0004
T1CKPS1          .EQ  $0005
TMR1CS0          .EQ  $0006
TMR1CS1          .EQ  $0007

T1OSCEN          .EQ  $0003


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
HFIOFR           .EQ  $0001
PRISD            .EQ  $0002
SOSCGO           .EQ  $0003
PLLEN            .EQ  $0004
INTSRC           .EQ  $0005
SOSCRUN          .EQ  $0006
PLLRDY           .EQ  $0007


;----- OSCCON Bits -----------------------------------------------------
HFIOFS           .EQ  $0002
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
IOCIP            .EQ  $0000
TMR0IP           .EQ  $0002
INTEDG2          .EQ  $0004
INTEDG1          .EQ  $0005
INTEDG0          .EQ  $0006
NOT_RBPU         .EQ  $0007

T0IP             .EQ  $0002
RBPU             .EQ  $0007


;----- INTCON Bits -----------------------------------------------------
IOCIF            .EQ  $0000
INT0IF           .EQ  $0001
TMR0IF           .EQ  $0002
IOCIE            .EQ  $0003
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
;   PLL Selection:
;     PLLSEL = PLL4X       4x clock multiplier
;     PLLSEL = PLL3X       3x clock multiplier
;
;   PLL Enable Configuration bit:
;     CFGPLLEN = OFF       PLL Disabled (firmware controlled)
;     CFGPLLEN = ON        PLL Enabled
;
;   CPU System Clock Postscaler:
;     CPUDIV = NOCLKDIV    CPU uses system clock (no divide)
;     CPUDIV = CLKDIV2     CPU uses system clock divided by 2
;     CPUDIV = CLKDIV3     CPU uses system clock divided by 3
;     CPUDIV = CLKDIV6     CPU uses system clock divided by 6
;
;   Low Speed USB mode with 48 MHz system clock:
;     LS48MHZ = SYS24X4    System clock at 24 MHz, USB clock divider is set to 4
;     LS48MHZ = SYS48X8    System clock at 48 MHz, USB clock divider is set to 8
;
;   Oscillator Selection:
;     FOSC = LP            LP oscillator
;     FOSC = XT            XT oscillator
;     FOSC = HSH           HS oscillator, high power 16MHz to 25MHz
;     FOSC = HSM           HS oscillator, medium power 4MHz to 16MHz
;     FOSC = ECHCLKO       EC oscillator, high power 16MHz to 48MHz, clock output on OSC2
;     FOSC = ECHIO         EC oscillator, high power 16MHz to 48MHz
;     FOSC = RCCLKO        External RC oscillator, clock output on OSC2
;     FOSC = RCIO          External RC oscillator
;     FOSC = INTOSCIO      Internal oscillator
;     FOSC = INTOSCCLKO    Internal oscillator, clock output on OSC2
;     FOSC = ECMCLKO       EC oscillator, medium power 4MHz to 16MHz, clock output on OSC2
;     FOSC = ECMIO         EC oscillator, medium power 4MHz to 16MHz
;     FOSC = ECLCLKO       EC oscillator, low power <4MHz, clock output on OSC2
;     FOSC = ECLIO         EC oscillator, low power <4MHz
;
;   Primary Oscillator Shutdown:
;     PCLKEN = OFF         Primary oscillator shutdown firmware controlled
;     PCLKEN = ON          Primary oscillator enabled
;
;   Fail-Safe Clock Monitor:
;     FCMEN = OFF          Fail-Safe Clock Monitor disabled
;     FCMEN = ON           Fail-Safe Clock Monitor enabled
;
;   Internal/External Oscillator Switchover:
;     IESO = OFF           Oscillator Switchover mode disabled
;     IESO = ON            Oscillator Switchover mode enabled
;
;   Power-up Timer Enable:
;     nPWRTEN = ON         Power up timer enabled
;     nPWRTEN = OFF        Power up timer disabled
;
;   Brown-out Reset Enable:
;     BOREN = OFF          BOR disabled in hardware (SBOREN is ignored)
;     BOREN = ON           BOR controlled by firmware (SBOREN is enabled)
;     BOREN = NOSLP        BOR enabled in hardware, disabled in Sleep mode (SBOREN is ignored)
;     BOREN = SBORDIS      BOR enabled in hardware (SBOREN is ignored)
;
;   Brown-out Reset Voltage:
;     BORV = 285           BOR set to 2.85V nominal
;     BORV = 250           BOR set to 2.5V nominal
;     BORV = 220           BOR set to 2.2V nominal
;     BORV = 190           BOR set to 1.9V nominal
;
;   Low-Power Brown-out Reset:
;     nLPBOR = ON          Low-Power Brown-out Reset enabled
;     nLPBOR = OFF         Low-Power Brown-out Reset disabled
;
;   Watchdog Timer Enable bits:
;     WDTEN = OFF          WDT disabled in hardware (SWDTEN ignored)
;     WDTEN = NOSLP        WDT enabled in hardware, disabled in Sleep mode (SWDTEN ignored)
;     WDTEN = SWON         WDT controlled by firmware (SWDTEN enabled)
;     WDTEN = ON           WDT enabled in hardware (SWDTEN ignored)
;
;   Watchdog Timer Postscaler:
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
;     CCP2MX = RB3         CCP2 input/output is multiplexed with RB3
;     CCP2MX = RC1         CCP2 input/output is multiplexed with RC1
;
;   PORTB A/D Enable bit:
;     PBADEN = OFF         PORTB<5:0> pins are configured as digital I/O on Reset
;     PBADEN = ON          PORTB<5:0> pins are configured as analog input channels on Reset
;
;   Timer3 Clock Input MUX bit:
;     T3CMX = RB5          T3CKI function is on RB5
;     T3CMX = RC0          T3CKI function is on RC0
;
;   SDO Output MUX bit:
;     SDOMX = RC7          SDO function is on RC7
;     SDOMX = RB3          SDO function is on RB3
;
;   Master Clear Reset Pin Enable:
;     MCLRE = OFF          RE3 input pin enabled; external MCLR disabled
;     MCLRE = ON           MCLR pin enabled; RE3 input disabled
;
;   Stack Full/Underflow Reset:
;     STVREN = OFF         Stack full/underflow will not cause Reset
;     STVREN = ON          Stack full/underflow will cause Reset
;
;   Single-Supply ICSP Enable bit:
;     LVP = OFF            Single-Supply ICSP disabled
;     LVP = ON             Single-Supply ICSP enabled if MCLRE is also 1
;
;   Dedicated In-Circuit Debug/Programming Port Enable:
;     ICPRT = OFF          ICPORT disabled
;
;   Extended Instruction Set Enable bit:
;     XINST = OFF          Instruction set extension and Indexed Addressing mode disabled
;     XINST = ON           Instruction set extension and Indexed Addressing mode enabled
;
;   Background Debugger Enable bit:
;     DEBUG = ON           Background debugger enabled, RB6 and RB7 are dedicated to In-Circuit Debug
;     DEBUG = OFF          Background debugger disabled, RB6 and RB7 configured as general purpose I/O pins
;
;   Block 0 Code Protect:
;     CP0 = ON             Block 0 is code-protected
;     CP0 = OFF            Block 0 is not code-protected
;
;   Block 1 Code Protect:
;     CP1 = ON             Block 1 is code-protected
;     CP1 = OFF            Block 1 is not code-protected
;
;   Block 2 Code Protect:
;     CP2 = ON             Block 2 is code-protected
;     CP2 = OFF            Block 2 is not code-protected
;
;   Block 3 Code Protect:
;     CP3 = ON             Block 3 is code-protected
;     CP3 = OFF            Block 3 is not code-protected
;
;   Boot Block Code Protect:
;     CPB = ON             Boot block is code-protected
;     CPB = OFF            Boot block is not code-protected
;
;   Data EEPROM Code Protect:
;     CPD = ON             Data EEPROM is code-protected
;     CPD = OFF            Data EEPROM is not code-protected
;
;   Block 0 Write Protect:
;     WRT0 = ON            Block 0 (0800-1FFFh) is write-protected
;     WRT0 = OFF           Block 0 (0800-1FFFh) is not write-protected
;
;   Block 1 Write Protect:
;     WRT1 = ON            Block 1 (2000-3FFFh) is write-protected
;     WRT1 = OFF           Block 1 (2000-3FFFh) is not write-protected
;
;   Block 2 Write Protect:
;     WRT2 = ON            Block 2 (04000-5FFFh) is write-protected
;     WRT2 = OFF           Block 2 (04000-5FFFh) is not write-protected
;
;   Block 3 Write Protect:
;     WRT3 = ON            Block 3 (06000-7FFFh) is write-protected
;     WRT3 = OFF           Block 3 (06000-7FFFh) is not write-protected
;
;   Configuration Registers Write Protect:
;     WRTC = ON            Configuration registers (300000-3000FFh) are write-protected
;     WRTC = OFF           Configuration registers (300000-3000FFh) are not write-protected
;
;   Boot Block Write Protect:
;     WRTB = ON            Boot block (0000-7FFh) is write-protected
;     WRTB = OFF           Boot block (0000-7FFh) is not write-protected
;
;   Data EEPROM Write Protect:
;     WRTD = ON            Data EEPROM is write-protected
;     WRTD = OFF           Data EEPROM is not write-protected
;
;   Block 0 Table Read Protect:
;     EBTR0 = ON           Block 0 is protected from table reads executed in other blocks
;     EBTR0 = OFF          Block 0 is not protected from table reads executed in other blocks
;
;   Block 1 Table Read Protect:
;     EBTR1 = ON           Block 1 is protected from table reads executed in other blocks
;     EBTR1 = OFF          Block 1 is not protected from table reads executed in other blocks
;
;   Block 2 Table Read Protect:
;     EBTR2 = ON           Block 2 is protected from table reads executed in other blocks
;     EBTR2 = OFF          Block 2 is not protected from table reads executed in other blocks
;
;   Block 3 Table Read Protect:
;     EBTR3 = ON           Block 3 is protected from table reads executed in other blocks
;     EBTR3 = OFF          Block 3 is not protected from table reads executed in other blocks
;
;   Boot Block Table Read Protect:
;     EBTRB = ON           Boot block is protected from table reads executed in other blocks
;     EBTRB = OFF          Boot block is not protected from table reads executed in other blocks
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
_PLLSEL_PLL4X_1L     .EQ  $FE  4x clock multiplier
_PLLSEL_PLL3X_1L     .EQ  $FF  3x clock multiplier

_CFGPLLEN_OFF_1L     .EQ  $FD  PLL Disabled (firmware controlled)
_CFGPLLEN_ON_1L      .EQ  $FF  PLL Enabled

_CPUDIV_NOCLKDIV_1L  .EQ  $E7  CPU uses system clock (no divide)
_CPUDIV_CLKDIV2_1L   .EQ  $EF  CPU uses system clock divided by 2
_CPUDIV_CLKDIV3_1L   .EQ  $F7  CPU uses system clock divided by 3
_CPUDIV_CLKDIV6_1L   .EQ  $FF  CPU uses system clock divided by 6

_LS48MHZ_SYS24X4_1L  .EQ  $DF  System clock at 24 MHz, USB clock divider is set to 4
_LS48MHZ_SYS48X8_1L  .EQ  $FF  System clock at 48 MHz, USB clock divider is set to 8

;----- CONFIG1H Options --------------------------------------------------
_FOSC_LP_1H          .EQ  $F0  LP oscillator
_FOSC_XT_1H          .EQ  $F1  XT oscillator
_FOSC_HSH_1H         .EQ  $F2  HS oscillator, high power 16MHz to 25MHz
_FOSC_HSM_1H         .EQ  $F3  HS oscillator, medium power 4MHz to 16MHz
_FOSC_ECHCLKO_1H     .EQ  $F4  EC oscillator, high power 16MHz to 48MHz, clock output on OSC2
_FOSC_ECHIO_1H       .EQ  $F5  EC oscillator, high power 16MHz to 48MHz
_FOSC_RCCLKO_1H      .EQ  $F6  External RC oscillator, clock output on OSC2
_FOSC_RCIO_1H        .EQ  $F7  External RC oscillator
_FOSC_INTOSCIO_1H    .EQ  $F8  Internal oscillator
_FOSC_INTOSCCLKO_1H  .EQ  $F9  Internal oscillator, clock output on OSC2
_FOSC_ECMCLKO_1H     .EQ  $FA  EC oscillator, medium power 4MHz to 16MHz, clock output on OSC2
_FOSC_ECMIO_1H       .EQ  $FB  EC oscillator, medium power 4MHz to 16MHz
_FOSC_ECLCLKO_1H     .EQ  $FC  EC oscillator, low power <4MHz, clock output on OSC2
_FOSC_ECLIO_1H       .EQ  $FD  EC oscillator, low power <4MHz

_PCLKEN_OFF_1H       .EQ  $DF  Primary oscillator shutdown firmware controlled
_PCLKEN_ON_1H        .EQ  $FF  Primary oscillator enabled

_FCMEN_OFF_1H        .EQ  $BF  Fail-Safe Clock Monitor disabled
_FCMEN_ON_1H         .EQ  $FF  Fail-Safe Clock Monitor enabled

_IESO_OFF_1H         .EQ  $7F  Oscillator Switchover mode disabled
_IESO_ON_1H          .EQ  $FF  Oscillator Switchover mode enabled

;----- CONFIG2L Options --------------------------------------------------
_nPWRTEN_ON_2L       .EQ  $FE  Power up timer enabled
_nPWRTEN_OFF_2L      .EQ  $FF  Power up timer disabled

_BOREN_OFF_2L        .EQ  $F9  BOR disabled in hardware (SBOREN is ignored)
_BOREN_ON_2L         .EQ  $FB  BOR controlled by firmware (SBOREN is enabled)
_BOREN_NOSLP_2L      .EQ  $FD  BOR enabled in hardware, disabled in Sleep mode (SBOREN is ignored)
_BOREN_SBORDIS_2L    .EQ  $FF  BOR enabled in hardware (SBOREN is ignored)

_BORV_285_2L         .EQ  $E7  BOR set to 2.85V nominal
_BORV_250_2L         .EQ  $EF  BOR set to 2.5V nominal
_BORV_220_2L         .EQ  $F7  BOR set to 2.2V nominal
_BORV_190_2L         .EQ  $FF  BOR set to 1.9V nominal

_nLPBOR_ON_2L        .EQ  $BF  Low-Power Brown-out Reset enabled
_nLPBOR_OFF_2L       .EQ  $FF  Low-Power Brown-out Reset disabled

;----- CONFIG2H Options --------------------------------------------------
_WDTEN_OFF_2H        .EQ  $FC  WDT disabled in hardware (SWDTEN ignored)
_WDTEN_NOSLP_2H      .EQ  $FD  WDT enabled in hardware, disabled in Sleep mode (SWDTEN ignored)
_WDTEN_SWON_2H       .EQ  $FE  WDT controlled by firmware (SWDTEN enabled)
_WDTEN_ON_2H         .EQ  $FF  WDT enabled in hardware (SWDTEN ignored)

_WDTPS_1_2H          .EQ  $C3  1:1
_WDTPS_2_2H          .EQ  $C7  1:2
_WDTPS_4_2H          .EQ  $CB  1:4
_WDTPS_8_2H          .EQ  $CF  1:8
_WDTPS_16_2H         .EQ  $D3  1:16
_WDTPS_32_2H         .EQ  $D7  1:32
_WDTPS_64_2H         .EQ  $DB  1:64
_WDTPS_128_2H        .EQ  $DF  1:128
_WDTPS_256_2H        .EQ  $E3  1:256
_WDTPS_512_2H        .EQ  $E7  1:512
_WDTPS_1024_2H       .EQ  $EB  1:1024
_WDTPS_2048_2H       .EQ  $EF  1:2048
_WDTPS_4096_2H       .EQ  $F3  1:4096
_WDTPS_8192_2H       .EQ  $F7  1:8192
_WDTPS_16384_2H      .EQ  $FB  1:16384
_WDTPS_32768_2H      .EQ  $FF  1:32768

;----- CONFIG3H Options --------------------------------------------------
_CCP2MX_RB3_3H       .EQ  $FE  CCP2 input/output is multiplexed with RB3
_CCP2MX_RC1_3H       .EQ  $FF  CCP2 input/output is multiplexed with RC1

_PBADEN_OFF_3H       .EQ  $FD  PORTB<5:0> pins are configured as digital I/O on Reset
_PBADEN_ON_3H        .EQ  $FF  PORTB<5:0> pins are configured as analog input channels on Reset

_T3CMX_RB5_3H        .EQ  $EF  T3CKI function is on RB5
_T3CMX_RC0_3H        .EQ  $FF  T3CKI function is on RC0

_SDOMX_RC7_3H        .EQ  $BF  SDO function is on RC7
_SDOMX_RB3_3H        .EQ  $FF  SDO function is on RB3

_MCLRE_OFF_3H        .EQ  $7F  RE3 input pin enabled; external MCLR disabled
_MCLRE_ON_3H         .EQ  $FF  MCLR pin enabled; RE3 input disabled

;----- CONFIG4L Options --------------------------------------------------
_STVREN_OFF_4L       .EQ  $FE  Stack full/underflow will not cause Reset
_STVREN_ON_4L        .EQ  $FF  Stack full/underflow will cause Reset

_LVP_OFF_4L          .EQ  $FB  Single-Supply ICSP disabled
_LVP_ON_4L           .EQ  $FF  Single-Supply ICSP enabled if MCLRE is also 1

_ICPRT_OFF_4L        .EQ  $DF  ICPORT disabled

_XINST_OFF_4L        .EQ  $BF  Instruction set extension and Indexed Addressing mode disabled
_XINST_ON_4L         .EQ  $FF  Instruction set extension and Indexed Addressing mode enabled

_DEBUG_ON_4L         .EQ  $7F  Background debugger enabled, RB6 and RB7 are dedicated to In-Circuit Debug
_DEBUG_OFF_4L        .EQ  $FF  Background debugger disabled, RB6 and RB7 configured as general purpose I/O pins

;----- CONFIG5L Options --------------------------------------------------
_CP0_ON_5L           .EQ  $FE  Block 0 is code-protected
_CP0_OFF_5L          .EQ  $FF  Block 0 is not code-protected

_CP1_ON_5L           .EQ  $FD  Block 1 is code-protected
_CP1_OFF_5L          .EQ  $FF  Block 1 is not code-protected

_CP2_ON_5L           .EQ  $FB  Block 2 is code-protected
_CP2_OFF_5L          .EQ  $FF  Block 2 is not code-protected

_CP3_ON_5L           .EQ  $F7  Block 3 is code-protected
_CP3_OFF_5L          .EQ  $FF  Block 3 is not code-protected

;----- CONFIG5H Options --------------------------------------------------
_CPB_ON_5H           .EQ  $BF  Boot block is code-protected
_CPB_OFF_5H          .EQ  $FF  Boot block is not code-protected

_CPD_ON_5H           .EQ  $7F  Data EEPROM is code-protected
_CPD_OFF_5H          .EQ  $FF  Data EEPROM is not code-protected

;----- CONFIG6L Options --------------------------------------------------
_WRT0_ON_6L          .EQ  $FE  Block 0 (0800-1FFFh) is write-protected
_WRT0_OFF_6L         .EQ  $FF  Block 0 (0800-1FFFh) is not write-protected

_WRT1_ON_6L          .EQ  $FD  Block 1 (2000-3FFFh) is write-protected
_WRT1_OFF_6L         .EQ  $FF  Block 1 (2000-3FFFh) is not write-protected

_WRT2_ON_6L          .EQ  $FB  Block 2 (04000-5FFFh) is write-protected
_WRT2_OFF_6L         .EQ  $FF  Block 2 (04000-5FFFh) is not write-protected

_WRT3_ON_6L          .EQ  $F7  Block 3 (06000-7FFFh) is write-protected
_WRT3_OFF_6L         .EQ  $FF  Block 3 (06000-7FFFh) is not write-protected

;----- CONFIG6H Options --------------------------------------------------
_WRTC_ON_6H          .EQ  $DF  Configuration registers (300000-3000FFh) are write-protected
_WRTC_OFF_6H         .EQ  $FF  Configuration registers (300000-3000FFh) are not write-protected

_WRTB_ON_6H          .EQ  $BF  Boot block (0000-7FFh) is write-protected
_WRTB_OFF_6H         .EQ  $FF  Boot block (0000-7FFh) is not write-protected

_WRTD_ON_6H          .EQ  $7F  Data EEPROM is write-protected
_WRTD_OFF_6H         .EQ  $FF  Data EEPROM is not write-protected

;----- CONFIG7L Options --------------------------------------------------
_EBTR0_ON_7L         .EQ  $FE  Block 0 is protected from table reads executed in other blocks
_EBTR0_OFF_7L        .EQ  $FF  Block 0 is not protected from table reads executed in other blocks

_EBTR1_ON_7L         .EQ  $FD  Block 1 is protected from table reads executed in other blocks
_EBTR1_OFF_7L        .EQ  $FF  Block 1 is not protected from table reads executed in other blocks

_EBTR2_ON_7L         .EQ  $FB  Block 2 is protected from table reads executed in other blocks
_EBTR2_OFF_7L        .EQ  $FF  Block 2 is not protected from table reads executed in other blocks

_EBTR3_ON_7L         .EQ  $F7  Block 3 is protected from table reads executed in other blocks
_EBTR3_OFF_7L        .EQ  $FF  Block 3 is not protected from table reads executed in other blocks

;----- CONFIG7H Options --------------------------------------------------
_EBTRB_ON_7H         .EQ  $BF  Boot block is protected from table reads executed in other blocks
_EBTRB_OFF_7H        .EQ  $FF  Boot block is not protected from table reads executed in other blocks


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
