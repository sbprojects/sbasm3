;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC18F25J11 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC18F25J11 microcontroller.  These names
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
RPOR0            .EQ  $0EC6
RPOR1            .EQ  $0EC7
RPOR2            .EQ  $0EC8
RPOR3            .EQ  $0EC9
RPOR4            .EQ  $0ECA
RPOR5            .EQ  $0ECB
RPOR6            .EQ  $0ECC
RPOR7            .EQ  $0ECD
RPOR8            .EQ  $0ECE
RPOR9            .EQ  $0ECF
RPOR10           .EQ  $0ED0
RPOR11           .EQ  $0ED1
RPOR12           .EQ  $0ED2
RPOR13           .EQ  $0ED3
RPOR14           .EQ  $0ED4
RPOR15           .EQ  $0ED5
RPOR16           .EQ  $0ED6
RPOR17           .EQ  $0ED7
RPOR18           .EQ  $0ED8
RPINR1           .EQ  $0EE7
RPINR2           .EQ  $0EE8
RPINR3           .EQ  $0EE9
RPINR4           .EQ  $0EEA
RPINR6           .EQ  $0EEC
RPINR7           .EQ  $0EED
RPINR8           .EQ  $0EEE
RPINR12          .EQ  $0EF2
RPINR13          .EQ  $0EF3
RPINR16          .EQ  $0EF6
RPINR17          .EQ  $0EF7
RPINR21          .EQ  $0EFB
RPINR22          .EQ  $0EFC
RPINR23          .EQ  $0EFD
RPINR24          .EQ  $0EFE
PPSCON           .EQ  $0EFF
PADCFG1          .EQ  $0F3C
REFOCON          .EQ  $0F3D
RTCCAL           .EQ  $0F3E
RTCCFG           .EQ  $0F3F
ODCON3           .EQ  $0F40
ODCON2           .EQ  $0F41
ODCON1           .EQ  $0F42
ANCON0           .EQ  $0F48
ANCON1           .EQ  $0F49
DSWAKEL          .EQ  $0F4A
DSWAKEH          .EQ  $0F4B
DSCONL           .EQ  $0F4C
DSCONH           .EQ  $0F4D
DSGPR0           .EQ  $0F4E
DSGPR1           .EQ  $0F4F
TCLKCON          .EQ  $0F52
CVRCON           .EQ  $0F53
DMABCH           .EQ  $0F66
DMABCL           .EQ  $0F67
RXADDRH          .EQ  $0F68
RXADDRL          .EQ  $0F69
TXADDRH          .EQ  $0F6A
TXADDRL          .EQ  $0F6B
CMSTAT           .EQ  $0F70
CMSTATUS         .EQ  $0F70
SSP2CON2         .EQ  $0F71
SSP2CON1         .EQ  $0F72
SSP2STAT         .EQ  $0F73
SSP2ADD          .EQ  $0F74
SSP2MSK          .EQ  $0F74
SSP2BUF          .EQ  $0F75
T4CON            .EQ  $0F76
PR4              .EQ  $0F77
TMR4             .EQ  $0F78
T3CON            .EQ  $0F79
TMR3             .EQ  $0F7A
TMR3L            .EQ  $0F7A
TMR3H            .EQ  $0F7B
BAUDCON2         .EQ  $0F7C
SPBRGH2          .EQ  $0F7D
BAUDCON          .EQ  $0F7E
BAUDCON1         .EQ  $0F7E
BAUDCTL          .EQ  $0F7E
SPBRGH           .EQ  $0F7F
SPBRGH1          .EQ  $0F7F
PORTA            .EQ  $0F80
PORTB            .EQ  $0F81
PORTC            .EQ  $0F82
HLVDCON          .EQ  $0F85
DMACON2          .EQ  $0F86
DMACON1          .EQ  $0F88
LATA             .EQ  $0F89
LATB             .EQ  $0F8A
LATC             .EQ  $0F8B
ALRMVALL         .EQ  $0F8E
ALRMVALH         .EQ  $0F8F
ALRMRPT          .EQ  $0F90
ALRMCFG          .EQ  $0F91
TRISA            .EQ  $0F92
TRISB            .EQ  $0F93
TRISC            .EQ  $0F94
T3GCON           .EQ  $0F97
RTCVALL          .EQ  $0F98
RTCVALH          .EQ  $0F99
T1GCON           .EQ  $0F9A
OSCTUNE          .EQ  $0F9B
RCSTA2           .EQ  $0F9C
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
TXSTA2           .EQ  $0FA8
TXREG2           .EQ  $0FA9
RCREG2           .EQ  $0FAA
SPBRG2           .EQ  $0FAB
RCSTA            .EQ  $0FAC
RCSTA1           .EQ  $0FAC
TXSTA            .EQ  $0FAD
TXSTA1           .EQ  $0FAD
TXREG            .EQ  $0FAE
TXREG1           .EQ  $0FAE
RCREG            .EQ  $0FAF
RCREG1           .EQ  $0FAF
SPBRG            .EQ  $0FB0
SPBRG1           .EQ  $0FB0
CTMUICON         .EQ  $0FB1
CTMUCONL         .EQ  $0FB2
CTMUCONH         .EQ  $0FB3
CCP2CON          .EQ  $0FB4
ECCP2CON         .EQ  $0FB4
CCPR2            .EQ  $0FB5
CCPR2L           .EQ  $0FB5
CCPR2H           .EQ  $0FB6
ECCP2DEL         .EQ  $0FB7
PWM2CON          .EQ  $0FB7
ECCP2AS          .EQ  $0FB8
PSTR2CON         .EQ  $0FB9
CCP1CON          .EQ  $0FBA
ECCP1CON         .EQ  $0FBA
CCPR1            .EQ  $0FBB
CCPR1L           .EQ  $0FBB
CCPR1H           .EQ  $0FBC
ECCP1DEL         .EQ  $0FBD
PWM1CON          .EQ  $0FBD
ECCP1AS          .EQ  $0FBE
PSTR1CON         .EQ  $0FBF
WDTCON           .EQ  $0FC0
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
SSP1MSK          .EQ  $0FC8
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
CM2CON           .EQ  $0FD1
CM2CON1          .EQ  $0FD1
CM1CON           .EQ  $0FD2
CM1CON1          .EQ  $0FD2
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

;----- PPSCON Bits -----------------------------------------------------
IOLOCK           .EQ  $0000


;----- PADCFG1 Bits -----------------------------------------------------
PMPTTL           .EQ  $0000
RTSECSEL0        .EQ  $0001
RTSECSEL1        .EQ  $0002


;----- REFOCON Bits -----------------------------------------------------
ROSEL            .EQ  $0004
ROSSLP           .EQ  $0005
ROON             .EQ  $0007

RODIV0           .EQ  $0000
RODIV1           .EQ  $0001
RODIV2           .EQ  $0002
RODIV3           .EQ  $0003


;----- RTCCAL Bits -----------------------------------------------------
CAL0             .EQ  $0000
CAL1             .EQ  $0001
CAL2             .EQ  $0002
CAL3             .EQ  $0003
CAL4             .EQ  $0004
CAL5             .EQ  $0005
CAL6             .EQ  $0006
CAL7             .EQ  $0007


;----- RTCCFG Bits -----------------------------------------------------
RTCPTR0          .EQ  $0000
RTCPTR1          .EQ  $0001
RTCOE            .EQ  $0002
HALFSEC          .EQ  $0003
RTCSYNC          .EQ  $0004
RTCWREN          .EQ  $0005
RTCEN            .EQ  $0007


;----- ODCON3 Bits -----------------------------------------------------
SPI1OD           .EQ  $0000
SPI2OD           .EQ  $0001


;----- ODCON2 Bits -----------------------------------------------------
U1OD             .EQ  $0000
U2OD             .EQ  $0001


;----- ODCON1 Bits -----------------------------------------------------
ECCP1OD          .EQ  $0000
ECCP2OD          .EQ  $0001


;----- ANCON0 Bits -----------------------------------------------------
PCFG0            .EQ  $0000
PCFG1            .EQ  $0001
PCFG2            .EQ  $0002
PCFG3            .EQ  $0003
PCFG4            .EQ  $0004


;----- ANCON1 Bits -----------------------------------------------------
PCFG8            .EQ  $0000
PCFG9            .EQ  $0001
PCFG10           .EQ  $0002
PCFG11           .EQ  $0003
PCFG12           .EQ  $0004
VBG2EN           .EQ  $0006
VBGEN            .EQ  $0007


;----- DSWAKEL Bits -----------------------------------------------------
DSPOR            .EQ  $0000
DSMCLR           .EQ  $0002
DSRTC            .EQ  $0003
DSWDT            .EQ  $0004
DSULP            .EQ  $0005
DSFLT            .EQ  $0007


;----- DSWAKEH Bits -----------------------------------------------------
DSINT0           .EQ  $0000


;----- DSCONL Bits -----------------------------------------------------
RELEASE          .EQ  $0000
DSBOR            .EQ  $0001
ULPWDIS          .EQ  $0002


;----- DSCONH Bits -----------------------------------------------------
RTCWDIS          .EQ  $0000
DSULPEN          .EQ  $0001
DSEN             .EQ  $0007


;----- TCLKCON Bits -----------------------------------------------------
T3CCP1           .EQ  $0000
T3CCP2           .EQ  $0001
T1RUN            .EQ  $0004


;----- CVRCON Bits -----------------------------------------------------
CVRSS            .EQ  $0004
CVRR             .EQ  $0005
CVROE            .EQ  $0006
CVREN            .EQ  $0007

CVR0             .EQ  $0000
CVR1             .EQ  $0001
CVR2             .EQ  $0002
CVR3             .EQ  $0003


;----- CMSTAT Bits -----------------------------------------------------
COUT1            .EQ  $0000
COUT2            .EQ  $0001


;----- CMSTATUS Bits -----------------------------------------------------
COUT1            .EQ  $0000
COUT2            .EQ  $0001


;----- SSP2CON2 Bits -----------------------------------------------------
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


;----- SSP2CON1 Bits -----------------------------------------------------
CKP              .EQ  $0004
SSPEN            .EQ  $0005
SSPOV            .EQ  $0006
WCOL             .EQ  $0007

SSPM0            .EQ  $0000
SSPM1            .EQ  $0001
SSPM2            .EQ  $0002
SSPM3            .EQ  $0003


;----- SSP2STAT Bits -----------------------------------------------------
BF               .EQ  $0000
UA               .EQ  $0001
R_NOT_W          .EQ  $0002
S                .EQ  $0003
P                .EQ  $0004
D_NOT_A          .EQ  $0005
CKE              .EQ  $0006
SMP              .EQ  $0007


;----- SSP2ADD Bits -----------------------------------------------------
MSK0             .EQ  $0000
MSK1             .EQ  $0001
MSK2             .EQ  $0002
MSK3             .EQ  $0003
MSK4             .EQ  $0004
MSK5             .EQ  $0005
MSK6             .EQ  $0006
MSK7             .EQ  $0007


;----- SSP2MSK Bits -----------------------------------------------------
MSK0             .EQ  $0000
MSK1             .EQ  $0001
MSK2             .EQ  $0002
MSK3             .EQ  $0003
MSK4             .EQ  $0004
MSK5             .EQ  $0005
MSK6             .EQ  $0006
MSK7             .EQ  $0007


;----- T4CON Bits -----------------------------------------------------
TMR4ON           .EQ  $0002

T4CKPS0          .EQ  $0000
T4CKPS1          .EQ  $0001
T4OUTPS0         .EQ  $0003
T4OUTPS1         .EQ  $0004
T4OUTPS2         .EQ  $0005
T4OUTPS3         .EQ  $0006


;----- T3CON Bits -----------------------------------------------------
TMR3ON           .EQ  $0000
RD16             .EQ  $0001
T3SYNC           .EQ  $0002

T3CKPS0          .EQ  $0004
T3CKPS1          .EQ  $0005
TMR3CS0          .EQ  $0006
TMR3CS1          .EQ  $0007


;----- BAUDCON2 Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
TXCKP            .EQ  $0004
RXDTP            .EQ  $0005
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007


;----- BAUDCON Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
TXCKP            .EQ  $0004
RXDTP            .EQ  $0005
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007


;----- BAUDCON1 Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
TXCKP            .EQ  $0004
RXDTP            .EQ  $0005
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007


;----- BAUDCTL Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
TXCKP            .EQ  $0004
RXDTP            .EQ  $0005
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007


;----- PORTA Bits -----------------------------------------------------
RA0              .EQ  $0000
RA1              .EQ  $0001
RA2              .EQ  $0002
RA3              .EQ  $0003
RA5              .EQ  $0005
RA6              .EQ  $0006
RA7              .EQ  $0007

AN0              .EQ  $0000
AN1              .EQ  $0001
AN2              .EQ  $0002
AN3              .EQ  $0003
AN4              .EQ  $0005
OSC2             .EQ  $0006
OSC1             .EQ  $0007

C1INA            .EQ  $0000
C2INA            .EQ  $0001
VREF_MINUS       .EQ  $0002
VREF_PLUS        .EQ  $0003
NOT_SS1          .EQ  $0005
CLKO             .EQ  $0006
CLKI             .EQ  $0007

ULPWU            .EQ  $0000
CVREF_MINUS      .EQ  $0002
C1INB            .EQ  $0003
HLVDIN           .EQ  $0005

RP0              .EQ  $0000
RP1              .EQ  $0001
C2INB            .EQ  $0002
RP2              .EQ  $0005


;----- PORTB Bits -----------------------------------------------------
RB0              .EQ  $0000
RB1              .EQ  $0001
RB2              .EQ  $0002
RB3              .EQ  $0003
RB4              .EQ  $0004
RB5              .EQ  $0005
RB6              .EQ  $0006
RB7              .EQ  $0007

AN12             .EQ  $0000
AN10             .EQ  $0001
AN8              .EQ  $0002
AN9              .EQ  $0003
KBI2             .EQ  $0006
KBI3             .EQ  $0007

INT0             .EQ  $0000
CTEDG1           .EQ  $0002
CTEDG2           .EQ  $0003
KBI0             .EQ  $0004
KBI1             .EQ  $0005
PGC              .EQ  $0006
PGD              .EQ  $0007

RP3              .EQ  $0000
RTCC             .EQ  $0001
RP9              .EQ  $0006
RP10             .EQ  $0007

RP4              .EQ  $0001

REFO             .EQ  $0002
RP6              .EQ  $0003
RP7              .EQ  $0004
RP8              .EQ  $0005

RP5              .EQ  $0002


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
AN11             .EQ  $0002
SCK1             .EQ  $0003

T1CKI            .EQ  $0000
CTPLS            .EQ  $0002
SCL1             .EQ  $0003
SDI1             .EQ  $0004
SDO1             .EQ  $0005
TX1              .EQ  $0006
RX1              .EQ  $0007

RP11             .EQ  $0000
RP12             .EQ  $0001
RP13             .EQ  $0002
RP14             .EQ  $0003
RP15             .EQ  $0004
RP16             .EQ  $0005
CK1              .EQ  $0006
DT1              .EQ  $0007

RP17             .EQ  $0006
RP18             .EQ  $0007


;----- HLVDCON Bits -----------------------------------------------------
HLVDEN           .EQ  $0004
IRVST            .EQ  $0005
BGVST            .EQ  $0006
VDIRMAG          .EQ  $0007

HLVDL0           .EQ  $0000
HLVDL1           .EQ  $0001
HLVDL2           .EQ  $0002
HLVDL3           .EQ  $0003


;----- DMACON2 Bits -----------------------------------------------------
INTLVL0          .EQ  $0000
INTLVL1          .EQ  $0001
INTLVL2          .EQ  $0002
INTLVL3          .EQ  $0003
DLYCYC0          .EQ  $0004
DLYCYC1          .EQ  $0005
DLYCYC2          .EQ  $0006
DLYCYC3          .EQ  $0007


;----- DMACON1 Bits -----------------------------------------------------
DMAEN            .EQ  $0000
DLYINTEN         .EQ  $0001
DUPLEX0          .EQ  $0002
DUPLEX1          .EQ  $0003
RXINC            .EQ  $0004
TXINC            .EQ  $0005
SSCON0           .EQ  $0006
SSCON1           .EQ  $0007


;----- LATA Bits -----------------------------------------------------
LATA0            .EQ  $0000
LATA1            .EQ  $0001
LATA2            .EQ  $0002
LATA3            .EQ  $0003
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


;----- ALRMRPT Bits -----------------------------------------------------
ARPT0            .EQ  $0000
ARPT1            .EQ  $0001
ARPT2            .EQ  $0002
ARPT3            .EQ  $0003
ARPT4            .EQ  $0004
ARPT5            .EQ  $0005
ARPT6            .EQ  $0006
ARPT7            .EQ  $0007


;----- ALRMCFG Bits -----------------------------------------------------
CHIME            .EQ  $0006
ALRMEN           .EQ  $0007

ALRMPTR0         .EQ  $0000
ALRMPTR1         .EQ  $0001
AMASK0           .EQ  $0002
AMASK1           .EQ  $0003
AMASK2           .EQ  $0004
AMASK3           .EQ  $0005


;----- TRISA Bits -----------------------------------------------------
TRISA0           .EQ  $0000
TRISA1           .EQ  $0001
TRISA2           .EQ  $0002
TRISA3           .EQ  $0003
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


;----- T3GCON Bits -----------------------------------------------------
T3GSS0           .EQ  $0000
T3GSS1           .EQ  $0001
T3GVAL           .EQ  $0002
T3GGO_T3DONE     .EQ  $0003
T3GSPM           .EQ  $0004
T3GTM            .EQ  $0005
T3GPOL           .EQ  $0006
TMR3GE           .EQ  $0007

T3GGO            .EQ  $0003

T3DONE           .EQ  $0003


;----- T1GCON Bits -----------------------------------------------------
T1GSS0           .EQ  $0000
T1GSS1           .EQ  $0001
T1GVAL           .EQ  $0002
T1GGO_T1DONE     .EQ  $0003
T1GSPM           .EQ  $0004
T1GTM            .EQ  $0005
T1GPOL           .EQ  $0006
TMR1GE           .EQ  $0007

T1GGO            .EQ  $0003

T1DONE           .EQ  $0003


;----- OSCTUNE Bits -----------------------------------------------------
PLLEN            .EQ  $0006
INTSRC           .EQ  $0007

TUN0             .EQ  $0000
TUN1             .EQ  $0001
TUN2             .EQ  $0002
TUN3             .EQ  $0003
TUN4             .EQ  $0004
TUN5             .EQ  $0005


;----- RCSTA2 Bits -----------------------------------------------------
RX9D             .EQ  $0000
OERR             .EQ  $0001
FERR             .EQ  $0002
ADDEN            .EQ  $0003
CREN             .EQ  $0004
SREN             .EQ  $0005
RX9              .EQ  $0006
SPEN             .EQ  $0007

RX9D2            .EQ  $0000
OERR2            .EQ  $0001
FERR2            .EQ  $0002
ADDEN2           .EQ  $0003
CREN2            .EQ  $0004
SREN2            .EQ  $0005
RX92             .EQ  $0006
SPEN2            .EQ  $0007


;----- PIE1 Bits -----------------------------------------------------
TMR1IE           .EQ  $0000
TMR2IE           .EQ  $0001
CCP1IE           .EQ  $0002
SSP1IE           .EQ  $0003
TX1IE            .EQ  $0004
RC1IE            .EQ  $0005
ADIE             .EQ  $0006

SSPIE            .EQ  $0003
TXIE             .EQ  $0004
RCIE             .EQ  $0005


;----- PIR1 Bits -----------------------------------------------------
TMR1IF           .EQ  $0000
TMR2IF           .EQ  $0001
CCP1IF           .EQ  $0002
SSP1IF           .EQ  $0003
TX1IF            .EQ  $0004
RC1IF            .EQ  $0005
ADIF             .EQ  $0006

SSPIF            .EQ  $0003
TXIF             .EQ  $0004
RCIF             .EQ  $0005


;----- IPR1 Bits -----------------------------------------------------
TMR1IP           .EQ  $0000
TMR2IP           .EQ  $0001
CCP1IP           .EQ  $0002
SSP1IP           .EQ  $0003
TX1IP            .EQ  $0004
RC1IP            .EQ  $0005
ADIP             .EQ  $0006

SSPIP            .EQ  $0003
TXIP             .EQ  $0004
RCIP             .EQ  $0005


;----- PIE2 Bits -----------------------------------------------------
CCP2IE           .EQ  $0000
TMR3IE           .EQ  $0001
LVDIE            .EQ  $0002
BCL1IE           .EQ  $0003
CM1IE            .EQ  $0005
CM2IE            .EQ  $0006
OSCFIE           .EQ  $0007

BCLIE            .EQ  $0003


;----- PIR2 Bits -----------------------------------------------------
CCP2IF           .EQ  $0000
TMR3IF           .EQ  $0001
LVDIF            .EQ  $0002
BCL1IF           .EQ  $0003
CM1IF            .EQ  $0005
CM2IF            .EQ  $0006
OSCFIF           .EQ  $0007

BCLIF            .EQ  $0003


;----- IPR2 Bits -----------------------------------------------------
CCP2IP           .EQ  $0000
TMR3IP           .EQ  $0001
LVDIP            .EQ  $0002
BCL1IP           .EQ  $0003
CM1IP            .EQ  $0005
CM2IP            .EQ  $0006
OSCFIP           .EQ  $0007

BCLIP            .EQ  $0003


;----- PIE3 Bits -----------------------------------------------------
RTCCIE           .EQ  $0000
TMR3GIE          .EQ  $0001
CTMUIE           .EQ  $0002
TMR4IE           .EQ  $0003
TX2IE            .EQ  $0004
RC2IE            .EQ  $0005
BCL2IE           .EQ  $0006
SSP2IE           .EQ  $0007


;----- PIR3 Bits -----------------------------------------------------
RTCCIF           .EQ  $0000
TMR3GIF          .EQ  $0001
CTMUIF           .EQ  $0002
TMR4IF           .EQ  $0003
TX2IF            .EQ  $0004
RC2IF            .EQ  $0005
BCL2IF           .EQ  $0006
SSP2IF           .EQ  $0007


;----- IPR3 Bits -----------------------------------------------------
RTCCIP           .EQ  $0000
TMR3GIP          .EQ  $0001
CTMUIP           .EQ  $0002
TMR4IP           .EQ  $0003
TX2IP            .EQ  $0004
RC2IP            .EQ  $0005
BCL2IP           .EQ  $0006
SSP2IP           .EQ  $0007


;----- EECON1 Bits -----------------------------------------------------
WR               .EQ  $0001
WREN             .EQ  $0002
WRERR            .EQ  $0003
FREE             .EQ  $0004
WPROG            .EQ  $0005


;----- TXSTA2 Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SENDB            .EQ  $0003
SYNC             .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007

TX9D2            .EQ  $0000
TRMT2            .EQ  $0001
BRGH2            .EQ  $0002
SENDB2           .EQ  $0003
SYNC2            .EQ  $0004
TXEN2            .EQ  $0005
TX92             .EQ  $0006
CSRC2            .EQ  $0007


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


;----- CTMUICON Bits -----------------------------------------------------
IRNG0            .EQ  $0000
IRNG1            .EQ  $0001
ITRIM0           .EQ  $0002
ITRIM1           .EQ  $0003
ITRIM2           .EQ  $0004
ITRIM3           .EQ  $0005
ITRIM4           .EQ  $0006
ITRIM5           .EQ  $0007


;----- CTMUCONL Bits -----------------------------------------------------
EDG1STAT         .EQ  $0000
EDG2STAT         .EQ  $0001
EDG1POL          .EQ  $0004
EDG2POL          .EQ  $0007

EDG1SEL0         .EQ  $0002
EDG1SEL1         .EQ  $0003
EDG2SEL0         .EQ  $0005
EDG2SEL1         .EQ  $0006


;----- CTMUCONH Bits -----------------------------------------------------
CTTRIG           .EQ  $0000
IDISSEN          .EQ  $0001
EDGSEQEN         .EQ  $0002
EDGEN            .EQ  $0003
TGEN             .EQ  $0004
CTMUSIDL         .EQ  $0005
CTMUEN           .EQ  $0007


;----- CCP2CON Bits -----------------------------------------------------
CCP2M0           .EQ  $0000
CCP2M1           .EQ  $0001
CCP2M2           .EQ  $0002
CCP2M3           .EQ  $0003
DC2B0            .EQ  $0004
DC2B1            .EQ  $0005
P2M0             .EQ  $0006
P2M1             .EQ  $0007

CCP2Y            .EQ  $0004
CCP2X            .EQ  $0005


;----- ECCP2CON Bits -----------------------------------------------------
CCP2M0           .EQ  $0000
CCP2M1           .EQ  $0001
CCP2M2           .EQ  $0002
CCP2M3           .EQ  $0003
DC2B0            .EQ  $0004
DC2B1            .EQ  $0005
P2M0             .EQ  $0006
P2M1             .EQ  $0007

CCP2Y            .EQ  $0004
CCP2X            .EQ  $0005


;----- ECCP2DEL Bits -----------------------------------------------------
P2RSEN           .EQ  $0007

P2DC0            .EQ  $0000
P2DC1            .EQ  $0001
P2DC2            .EQ  $0002
P2DC3            .EQ  $0003
P2DC4            .EQ  $0004
P2DC5            .EQ  $0005
P2DC6            .EQ  $0006


;----- PWM2CON Bits -----------------------------------------------------
P2RSEN           .EQ  $0007

P2DC0            .EQ  $0000
P2DC1            .EQ  $0001
P2DC2            .EQ  $0002
P2DC3            .EQ  $0003
P2DC4            .EQ  $0004
P2DC5            .EQ  $0005
P2DC6            .EQ  $0006


;----- ECCP2AS Bits -----------------------------------------------------
ECCP2ASE         .EQ  $0007

PSS2BD0          .EQ  $0000
PSS2BD1          .EQ  $0001
PSS2AC0          .EQ  $0002
PSS2AC1          .EQ  $0003
ECCP2AS0         .EQ  $0004
ECCP2AS1         .EQ  $0005
ECCP2AS2         .EQ  $0006


;----- PSTR2CON Bits -----------------------------------------------------
STRA             .EQ  $0000
STRB             .EQ  $0001
STRC             .EQ  $0002
STRD             .EQ  $0003
STRSYNC          .EQ  $0004
CMPL0            .EQ  $0006
CMPL1            .EQ  $0007

P2DC0            .EQ  $0000
P2DC1            .EQ  $0001
P2DC2            .EQ  $0002
P2DC3            .EQ  $0003
P2DC4            .EQ  $0004
P2DC5            .EQ  $0005
P2DC6            .EQ  $0006


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


;----- ECCP1DEL Bits -----------------------------------------------------
P1RSEN           .EQ  $0007

P1DC0            .EQ  $0000
P1DC1            .EQ  $0001
P1DC2            .EQ  $0002
P1DC3            .EQ  $0003
P1DC4            .EQ  $0004
P1DC5            .EQ  $0005
P1DC6            .EQ  $0006


;----- PWM1CON Bits -----------------------------------------------------
P1RSEN           .EQ  $0007

P1DC0            .EQ  $0000
P1DC1            .EQ  $0001
P1DC2            .EQ  $0002
P1DC3            .EQ  $0003
P1DC4            .EQ  $0004
P1DC5            .EQ  $0005
P1DC6            .EQ  $0006


;----- ECCP1AS Bits -----------------------------------------------------
ECCP1ASE         .EQ  $0007

PSS1BD0          .EQ  $0000
PSS1BD1          .EQ  $0001
PSS1AC0          .EQ  $0002
PSS1AC1          .EQ  $0003
ECCP1AS0         .EQ  $0004
ECCP1AS1         .EQ  $0005
ECCP1AS2         .EQ  $0006


;----- PSTR1CON Bits -----------------------------------------------------
STRA             .EQ  $0000
STRB             .EQ  $0001
STRC             .EQ  $0002
STRD             .EQ  $0003
STRSYNC          .EQ  $0004
CMPL0            .EQ  $0006
CMPL1            .EQ  $0007


;----- WDTCON Bits -----------------------------------------------------
SWDTEN           .EQ  $0000
ULPSINK          .EQ  $0001
ULPEN            .EQ  $0002
DS               .EQ  $0003
ULPLVL           .EQ  $0005
LVDSTAT          .EQ  $0006
REGSLP           .EQ  $0007

SWDTE            .EQ  $0000


;----- ADCON1 Bits -----------------------------------------------------
ADCAL            .EQ  $0006
ADFM             .EQ  $0007

ADCS0            .EQ  $0000
ADCS1            .EQ  $0001
ADCS2            .EQ  $0002
ACQT0            .EQ  $0003
ACQT1            .EQ  $0004
ACQT2            .EQ  $0005


;----- ADCON0 Bits -----------------------------------------------------
ADON             .EQ  $0000
GO_NOT_DONE      .EQ  $0001

GO_DONE          .EQ  $0001
CHS0             .EQ  $0002
CHS1             .EQ  $0003
CHS2             .EQ  $0004
CHS3             .EQ  $0005
VCFG0            .EQ  $0006
VCFG1            .EQ  $0007

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


;----- SSP1ADD Bits -----------------------------------------------------
MSK0             .EQ  $0000
MSK1             .EQ  $0001
MSK2             .EQ  $0002
MSK3             .EQ  $0003
MSK4             .EQ  $0004
MSK5             .EQ  $0005
MSK6             .EQ  $0006
MSK7             .EQ  $0007


;----- SSP1MSK Bits -----------------------------------------------------
MSK0             .EQ  $0000
MSK1             .EQ  $0001
MSK2             .EQ  $0002
MSK3             .EQ  $0003
MSK4             .EQ  $0004
MSK5             .EQ  $0005
MSK6             .EQ  $0006
MSK7             .EQ  $0007


;----- SSPADD Bits -----------------------------------------------------
MSK0             .EQ  $0000
MSK1             .EQ  $0001
MSK2             .EQ  $0002
MSK3             .EQ  $0003
MSK4             .EQ  $0004
MSK5             .EQ  $0005
MSK6             .EQ  $0006
MSK7             .EQ  $0007


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
RD16             .EQ  $0001
T1SYNC           .EQ  $0002
T1OSCEN          .EQ  $0003

T1CKPS0          .EQ  $0004
T1CKPS1          .EQ  $0005
TMR1CS0          .EQ  $0006
TMR1CS1          .EQ  $0007


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


;----- CM2CON Bits -----------------------------------------------------
CREF             .EQ  $0002
CPOL             .EQ  $0005
COE              .EQ  $0006
CON              .EQ  $0007

CCH0             .EQ  $0000
CCH1             .EQ  $0001
EVPOL0           .EQ  $0003
EVPOL1           .EQ  $0004


;----- CM2CON1 Bits -----------------------------------------------------
CREF             .EQ  $0002
CPOL             .EQ  $0005
COE              .EQ  $0006
CON              .EQ  $0007

CCH0             .EQ  $0000
CCH1             .EQ  $0001
EVPOL0           .EQ  $0003
EVPOL1           .EQ  $0004


;----- CM1CON Bits -----------------------------------------------------
CREF             .EQ  $0002
CPOL             .EQ  $0005
COE              .EQ  $0006
CON              .EQ  $0007

CCH0             .EQ  $0000
CCH1             .EQ  $0001
EVPOL0           .EQ  $0003
EVPOL1           .EQ  $0004


;----- CM1CON1 Bits -----------------------------------------------------
CREF             .EQ  $0002
CPOL             .EQ  $0005
COE              .EQ  $0006
CON              .EQ  $0007

CCH0             .EQ  $0000
CCH1             .EQ  $0001
EVPOL0           .EQ  $0003
EVPOL1           .EQ  $0004


;----- OSCCON Bits -----------------------------------------------------
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
;   Watchdog Timer:
;     WDTEN = OFF          Disabled - Controlled by SWDTEN bit
;     WDTEN = ON           Enabled
;
;   Stack Overflow/Underflow Reset:
;     STVREN = OFF         Disabled
;     STVREN = ON          Enabled
;
;   Extended Instruction Set:
;     XINST = OFF          Disabled
;     XINST = ON           Enabled
;
;   Background Debug:
;     DEBUG = ON           Enabled
;     DEBUG = OFF          Disabled
;
;   Code Protect:
;     CP0 = ON             Program memory is code-protected
;     CP0 = OFF            Program memory is not code-protected
;
;   Oscillator:
;     OSC = INTOSC         INTOSC
;     OSC = INTOSCO        INTOSCO (CLKO-RA6)
;     OSC = INTOSCPLL      INTOSCPLL
;     OSC = INTOSCPLLO     INTOSCPLLO (CLKO-RA6)
;     OSC = HS             HS
;     OSC = HSPLL          HS+PLL
;     OSC = EC             EC (CLKO-RA6)
;     OSC = ECPLL          EC+PLL (CLKO-RA6)
;
;   T1OSCEN Enforcement:
;     T1DIG = OFF          Secondary Oscillator clock source may not be selected
;     T1DIG = ON           Secondary Oscillator clock source may be selected
;
;   Low-Power Timer1 Oscillator:
;     LPT1OSC = ON         Low-power operation
;     LPT1OSC = OFF        High-power operation
;
;   Fail-Safe Clock Monitor:
;     FCMEN = OFF          Disabled
;     FCMEN = ON           Enabled
;
;   Internal External Oscillator Switch Over Mode:
;     IESO = OFF           Disabled
;     IESO = ON            Enabled
;
;   Watchdog Postscaler:
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
;   DSWDT Clock Select:
;     DSWDTOSC = T1OSCREF  DSWDT uses T1OSC/T1CKI
;     DSWDTOSC = INTOSCREF DSWDT uses INTRC
;
;   RTCC Clock Select:
;     RTCOSC = INTOSCREF   RTCC uses INTRC
;     RTCOSC = T1OSCREF    RTCC uses T1OSC/T1CKI
;
;   Deep Sleep BOR:
;     DSBOREN = OFF        Disabled
;     DSBOREN = ON         Enabled
;
;   Deep Sleep Watchdog Timer:
;     DSWDTEN = OFF        Disabled
;     DSWDTEN = ON         Enabled
;
;   Deep Sleep Watchdog Postscaler:
;     DSWDTPS = 2          1:2 (2.1 ms)
;     DSWDTPS = 8          1:8 (8.3 ms)
;     DSWDTPS = 32         1:32 (33 ms)
;     DSWDTPS = 128        1:128 (132 ms)
;     DSWDTPS = 512        1:512 (528 ms)
;     DSWDTPS = 2048       1:2,048 (2.1 seconds)
;     DSWDTPS = 8192       1:8,192 (8.5 seconds)
;     DSWDTPS = K32        1:32,768 (34 seconds)
;     DSWDTPS = K131       1:131,072 (135 seconds)
;     DSWDTPS = K524       1:524,288 (9 minutes)
;     DSWDTPS = M2         1:2,097,152 (36 minutes)
;     DSWDTPS = M8         1:8,388,608 (2.4 hours)
;     DSWDTPS = M33        1:33,554,432 (9.6 hours)
;     DSWDTPS = M134       1:134,217,728 (38.5 hours)
;     DSWDTPS = M536       1:536,870,912 (6.4 days)
;     DSWDTPS = G2         1:2,147,483,648 (25.7 days)
;
;   IOLOCK One-Way Set Enable bit:
;     IOL1WAY = OFF        The IOLOCK bit (PPSCON<0>) can be set and cleared as needed
;     IOL1WAY = ON         The IOLOCK bit (PPSCON<0>) can be set once
;
;   MSSP address masking:
;     MSSP7B_EN = MSK5     5 Bit address masking mode
;     MSSP7B_EN = MSK7     7 Bit address masking mode
;
;   Write/Erase Protect Page Start/End Location:
;     WPFP = PAGE_0        Write Protect Program Flash Page 0
;     WPFP = PAGE_1        Write Protect Program Flash Page 1
;     WPFP = PAGE_2        Write Protect Program Flash Page 2
;     WPFP = PAGE_3        Write Protect Program Flash Page 3
;     WPFP = PAGE_4        Write Protect Program Flash Page 4
;     WPFP = PAGE_5        Write Protect Program Flash Page 5
;     WPFP = PAGE_6        Write Protect Program Flash Page 6
;     WPFP = PAGE_7        Write Protect Program Flash Page 7
;     WPFP = PAGE_8        Write Protect Program Flash Page 8
;     WPFP = PAGE_9        Write Protect Program Flash Page 9
;     WPFP = PAGE_10       Write Protect Program Flash Page 10
;     WPFP = PAGE_11       Write Protect Program Flash Page 11
;     WPFP = PAGE_12       Write Protect Program Flash Page 12
;     WPFP = PAGE_13       Write Protect Program Flash Page 13
;     WPFP = PAGE_14       Write Protect Program Flash Page 14
;     WPFP = PAGE_15       Write Protect Program Flash Page 15
;     WPFP = PAGE_16       Write Protect Program Flash Page 16
;     WPFP = PAGE_17       Write Protect Program Flash Page 17
;     WPFP = PAGE_18       Write Protect Program Flash Page 18
;     WPFP = PAGE_19       Write Protect Program Flash Page 19
;     WPFP = PAGE_20       Write Protect Program Flash Page 20
;     WPFP = PAGE_21       Write Protect Program Flash Page 21
;     WPFP = PAGE_22       Write Protect Program Flash Page 22
;     WPFP = PAGE_23       Write Protect Program Flash Page 23
;     WPFP = PAGE_24       Write Protect Program Flash Page 24
;     WPFP = PAGE_25       Write Protect Program Flash Page 25
;     WPFP = PAGE_26       Write Protect Program Flash Page 26
;     WPFP = PAGE_27       Write Protect Program Flash Page 27
;     WPFP = PAGE_28       Write Protect Program Flash Page 28
;     WPFP = PAGE_29       Write Protect Program Flash Page 29
;     WPFP = PAGE_30       Write Protect Program Flash Page 30
;     WPFP = PAGE_31       Write Protect Program Flash Page 31
;
;   Write/Erase Protect Region Select (valid when WPDIS = 0):
;     WPEND = PAGE_0       Page 0 through WPFP<5:0> erase/write protected
;     WPEND = PAGE_WPFP    Page WPFP<5:0> through Configuration Words erase/write protected
;
;   Write/Erase Protect Configuration Region:
;     WPCFG = ON           Configuration Words page erase/write-protected
;     WPCFG = OFF          Configuration Words page not erase/write-protected
;
;   Write Protect Disable bit:
;     WPDIS = ON           WPFP<5:0>/WPEND region erase/write protected
;     WPDIS = OFF          WPFP<5:0>/WPEND region ignored
;
;==========================================================================
;----- DEVID Equates --------------------------------------------------
_DEVID1          .EQ  $3FFFFE
_DEVID2          .EQ  $3FFFFF
