;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC18F66J55 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC18F66J55 microcontroller.  These names
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
PMSTAT           .EQ  $0F40
PMSTATL          .EQ  $0F40
PMSTATH          .EQ  $0F41
PMEL             .EQ  $0F42
PMEN             .EQ  $0F42
PMEH             .EQ  $0F43
PMDIN2           .EQ  $0F44
PMDIN2L          .EQ  $0F44
PMDIN2H          .EQ  $0F45
PMDOUT2          .EQ  $0F46
PMDOUT2L         .EQ  $0F46
PMDOUT2H         .EQ  $0F47
PMMODE           .EQ  $0F48
PMMODEL          .EQ  $0F48
PMMODEH          .EQ  $0F49
PMCON            .EQ  $0F4A
PMCONL           .EQ  $0F4A
PMCONH           .EQ  $0F4B
UEP0             .EQ  $0F4C
UEP1             .EQ  $0F4D
UEP2             .EQ  $0F4E
UEP3             .EQ  $0F4F
UEP4             .EQ  $0F50
UEP5             .EQ  $0F51
UEP6             .EQ  $0F52
UEP7             .EQ  $0F53
UEP8             .EQ  $0F54
UEP9             .EQ  $0F55
UEP10            .EQ  $0F56
UEP11            .EQ  $0F57
UEP12            .EQ  $0F58
UEP13            .EQ  $0F59
UEP14            .EQ  $0F5A
UEP15            .EQ  $0F5B
UIE              .EQ  $0F5C
UEIE             .EQ  $0F5D
UADDR            .EQ  $0F5E
UCFG             .EQ  $0F5F
UFRM             .EQ  $0F60
UFRML            .EQ  $0F60
UFRMH            .EQ  $0F61
UIR              .EQ  $0F62
UEIR             .EQ  $0F63
USTAT            .EQ  $0F64
UCON             .EQ  $0F65
PMDIN1           .EQ  $0F66
PMDIN1L          .EQ  $0F66
PMDIN1H          .EQ  $0F67
PMADDR           .EQ  $0F68
PMADDRL          .EQ  $0F68
PMDOUT1          .EQ  $0F68
PMDOUT1L         .EQ  $0F68
PMADDRH          .EQ  $0F69
PMDOUT1H         .EQ  $0F69
CMSTAT           .EQ  $0F6A
CMSTATUS         .EQ  $0F6A
SSP2CON2         .EQ  $0F6B
SSP2CON1         .EQ  $0F6C
SSP2STAT         .EQ  $0F6D
SSP2ADD          .EQ  $0F6E
SSP2MSK          .EQ  $0F6E
SSP2BUF          .EQ  $0F6F
CCP5CON          .EQ  $0F70
CCPR5            .EQ  $0F71
CCPR5L           .EQ  $0F71
CCPR5H           .EQ  $0F72
CCP4CON          .EQ  $0F73
CCPR4            .EQ  $0F74
CCPR4L           .EQ  $0F74
CCPR4H           .EQ  $0F75
T4CON            .EQ  $0F76
CVRCON           .EQ  $0F77
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
SPBRGH           .EQ  $0F7F
SPBRGH1          .EQ  $0F7F
PORTA            .EQ  $0F80
PORTB            .EQ  $0F81
PORTC            .EQ  $0F82
PORTD            .EQ  $0F83
PORTE            .EQ  $0F84
PORTF            .EQ  $0F85
PORTG            .EQ  $0F86
LATA             .EQ  $0F89
LATB             .EQ  $0F8A
LATC             .EQ  $0F8B
LATD             .EQ  $0F8C
LATE             .EQ  $0F8D
LATF             .EQ  $0F8E
LATG             .EQ  $0F8F
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
CCP3CON          .EQ  $0FB1
ECCP3CON         .EQ  $0FB1
CCPR3            .EQ  $0FB2
CCPR3L           .EQ  $0FB2
CCPR3H           .EQ  $0FB3
ECCP3DEL         .EQ  $0FB4
ECCP3AS          .EQ  $0FB5
CCP2CON          .EQ  $0FB6
ECCP2CON         .EQ  $0FB6
CCPR2            .EQ  $0FB7
CCPR2L           .EQ  $0FB7
CCPR2H           .EQ  $0FB8
ECCP2DEL         .EQ  $0FB9
ECCP2AS          .EQ  $0FBA
CCP1CON          .EQ  $0FBB
ECCP1CON         .EQ  $0FBB
CCPR1            .EQ  $0FBC
CCPR1L           .EQ  $0FBC
CCPR1H           .EQ  $0FBD
ECCP1DEL         .EQ  $0FBE
ECCP1AS          .EQ  $0FBF
WDTCON           .EQ  $0FC0
ADCON1           .EQ  $0FC1
ANCON0           .EQ  $0FC1
ADCON0           .EQ  $0FC2
ANCON1           .EQ  $0FC2
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
PADCFG1          .EQ  $0FCC
TMR2             .EQ  $0FCC
ODCON3           .EQ  $0FCD
T1CON            .EQ  $0FCD
ODCON2           .EQ  $0FCE
TMR1             .EQ  $0FCE
TMR1L            .EQ  $0FCE
ODCON1           .EQ  $0FCF
TMR1H            .EQ  $0FCF
RCON             .EQ  $0FD0
CM2CON           .EQ  $0FD1
CM2CON1          .EQ  $0FD1
CM1CON           .EQ  $0FD2
CM1CON1          .EQ  $0FD2
OSCCON           .EQ  $0FD3
REFOCON          .EQ  $0FD3
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

;----- PMSTATL Bits -----------------------------------------------------
OB0E             .EQ  $0000
OB1E             .EQ  $0001
OB2E             .EQ  $0002
OB3E             .EQ  $0003
OBUF             .EQ  $0006
OBE              .EQ  $0007


;----- PMSTATH Bits -----------------------------------------------------
IB0F             .EQ  $0000
IB1F             .EQ  $0001
IB2F             .EQ  $0002
IB3F             .EQ  $0003
IBOV             .EQ  $0006
IBF              .EQ  $0007


;----- PMEL Bits -----------------------------------------------------
PTEN0            .EQ  $0000
PTEN1            .EQ  $0001
PTEN2            .EQ  $0002
PTEN3            .EQ  $0003
PTEN4            .EQ  $0004
PTEN5            .EQ  $0005
PTEN6            .EQ  $0006
PTEN7            .EQ  $0007


;----- PMEH Bits -----------------------------------------------------
PTEN8            .EQ  $0000
PTEN9            .EQ  $0001
PTEN10           .EQ  $0002
PTEN11           .EQ  $0003
PTEN12           .EQ  $0004
PTEN13           .EQ  $0005
PTEN14           .EQ  $0006
PTEN15           .EQ  $0007


;----- PMMODEL Bits -----------------------------------------------------
WAITE0           .EQ  $0000
WAITE1           .EQ  $0001
WAITM0           .EQ  $0002
WAITM1           .EQ  $0003
WAITM2           .EQ  $0004
WAITM3           .EQ  $0005
WAITB0           .EQ  $0006
WAITB1           .EQ  $0007


;----- PMMODEH Bits -----------------------------------------------------
MODE16           .EQ  $0002
BUSY             .EQ  $0007

MODE0            .EQ  $0000
MODE1            .EQ  $0001
INCM0            .EQ  $0003
INCM1            .EQ  $0004
IRQM0            .EQ  $0005
IRQM1            .EQ  $0006


;----- PMCONL Bits -----------------------------------------------------
RDSP             .EQ  $0000
WRSP             .EQ  $0001
BEP              .EQ  $0002
CS1P             .EQ  $0003
CS2P             .EQ  $0004
ALP              .EQ  $0005
CSF0             .EQ  $0006
CSF1             .EQ  $0007


;----- PMCONH Bits -----------------------------------------------------
PTRDEN           .EQ  $0000
PTWREN           .EQ  $0001
PTBEEN           .EQ  $0002
ADRMUX0          .EQ  $0003
ADRMUX1          .EQ  $0004
PSIDL            .EQ  $0005
PMPEN            .EQ  $0007


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


;----- UIE Bits -----------------------------------------------------
URSTIE           .EQ  $0000
UERRIE           .EQ  $0001
ACTVIE           .EQ  $0002
TRNIE            .EQ  $0003
IDLEIE           .EQ  $0004
STALLIE          .EQ  $0005
SOFIE            .EQ  $0006


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


;----- UCFG Bits -----------------------------------------------------
FSEN             .EQ  $0002
UTRDIS           .EQ  $0003
UPUEN            .EQ  $0004
UOEMON           .EQ  $0006
UTEYE            .EQ  $0007

PPB0             .EQ  $0000
PPB1             .EQ  $0001


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


;----- UIR Bits -----------------------------------------------------
URSTIF           .EQ  $0000
UERRIF           .EQ  $0001
ACTVIF           .EQ  $0002
TRNIF            .EQ  $0003
IDLEIF           .EQ  $0004
STALLIF          .EQ  $0005
SOFIF            .EQ  $0006


;----- UEIR Bits -----------------------------------------------------
PIDEF            .EQ  $0000
CRC5EF           .EQ  $0001
CRC16EF          .EQ  $0002
DFN8EF           .EQ  $0003
BTOEF            .EQ  $0004
BTSEF            .EQ  $0007


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


;----- PMADDRH Bits -----------------------------------------------------
CS1              .EQ  $0006
CS2              .EQ  $0007


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


;----- SSP2MSK Bits -----------------------------------------------------
MSK0             .EQ  $0000
MSK1             .EQ  $0001
MSK2             .EQ  $0002
MSK3             .EQ  $0003
MSK4             .EQ  $0004
MSK5             .EQ  $0005
MSK6             .EQ  $0006
MSK7             .EQ  $0007


;----- CCP5CON Bits -----------------------------------------------------
CCP5M0           .EQ  $0000
CCP5M1           .EQ  $0001
CCP5M2           .EQ  $0002
CCP5M3           .EQ  $0003
DC5B0            .EQ  $0004
DC5B1            .EQ  $0005

DCCP5Y           .EQ  $0004
DCCP5X           .EQ  $0005

DC5Y             .EQ  $0004
DC5X             .EQ  $0005


;----- CCP4CON Bits -----------------------------------------------------
CCP4M0           .EQ  $0000
CCP4M1           .EQ  $0001
CCP4M2           .EQ  $0002
CCP4M3           .EQ  $0003
DC4B0            .EQ  $0004
DC4B1            .EQ  $0005

DCCP4Y           .EQ  $0004
DCCP4X           .EQ  $0005

DC4Y             .EQ  $0004
DC4X             .EQ  $0005


;----- T4CON Bits -----------------------------------------------------
TMR4ON           .EQ  $0002

T4CKPS0          .EQ  $0000
T4CKPS1          .EQ  $0001
T4OUTPS0         .EQ  $0003
T4OUTPS1         .EQ  $0004
T4OUTPS2         .EQ  $0005
T4OUTPS3         .EQ  $0006


;----- CVRCON Bits -----------------------------------------------------
CVRSS            .EQ  $0004
CVRR             .EQ  $0005
CVROE            .EQ  $0006
CVREN            .EQ  $0007

CVR0             .EQ  $0000
CVR1             .EQ  $0001
CVR2             .EQ  $0002
CVR3             .EQ  $0003


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


;----- BAUDCON2 Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
TXCKP            .EQ  $0004
RXDTP            .EQ  $0005
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007

SCKP             .EQ  $0004
DTRXP            .EQ  $0005
RCMT             .EQ  $0006


;----- BAUDCON Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
TXCKP            .EQ  $0004
RXDTP            .EQ  $0005
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007

SCKP             .EQ  $0004
DTRXP            .EQ  $0005
RCMT             .EQ  $0006


;----- BAUDCON1 Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
TXCKP            .EQ  $0004
RXDTP            .EQ  $0005
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007

SCKP             .EQ  $0004
DTRXP            .EQ  $0005
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

VREFM            .EQ  $0002
VREFP            .EQ  $0003
C2INA            .EQ  $0005
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

PMA4             .EQ  $0001
PMA3             .EQ  $0002
PMA2             .EQ  $0003
PMA1             .EQ  $0004
PMA0             .EQ  $0005

FLT0             .EQ  $0000

PGC              .EQ  $0005
PGD              .EQ  $0006


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

C2OUT            .EQ  $0005


;----- PORTD Bits -----------------------------------------------------
RD0              .EQ  $0000
RD1              .EQ  $0001
RD2              .EQ  $0002
RD3              .EQ  $0003
RD4              .EQ  $0004
RD5              .EQ  $0005
RD6              .EQ  $0006
RD7              .EQ  $0007

PMD0             .EQ  $0000
PMD1             .EQ  $0001
PMD2             .EQ  $0002
PMD3             .EQ  $0003
PMD4             .EQ  $0004
PMD5             .EQ  $0005
PMD6             .EQ  $0006
PMD7             .EQ  $0007

SDA2             .EQ  $0005
SCL2             .EQ  $0006
SS2              .EQ  $0007

SDO2             .EQ  $0004
SDI2             .EQ  $0005
SCK2             .EQ  $0006


;----- PORTE Bits -----------------------------------------------------
RE0              .EQ  $0000
RE1              .EQ  $0001
RE2              .EQ  $0002
RE3              .EQ  $0003
RE4              .EQ  $0004
RE5              .EQ  $0005
RE6              .EQ  $0006
RE7              .EQ  $0007

PMRD             .EQ  $0000
PMWR             .EQ  $0001
PMBE             .EQ  $0002
PMA13            .EQ  $0003
PMA12            .EQ  $0004
PMA11            .EQ  $0005
PMA10            .EQ  $0006
PMA9             .EQ  $0007

REFO             .EQ  $0003
CCP2_PORTE       .EQ  $0007


;----- PORTF Bits -----------------------------------------------------
RF2              .EQ  $0002
RF3              .EQ  $0003
RF4              .EQ  $0004
RF5              .EQ  $0005
RF6              .EQ  $0006
RF7              .EQ  $0007

AN7              .EQ  $0002
AN10             .EQ  $0005
AN11             .EQ  $0006
SS               .EQ  $0007

CVREF            .EQ  $0005

C2INB            .EQ  $0002
C1INB            .EQ  $0005
C1INA            .EQ  $0006
C1OUT            .EQ  $0007

PMA5             .EQ  $0002


;----- PORTG Bits -----------------------------------------------------
RG0              .EQ  $0000
RG1              .EQ  $0001
RG2              .EQ  $0002
RG3              .EQ  $0003
RG4              .EQ  $0004
REPU             .EQ  $0006
RDPU             .EQ  $0007

CCP3             .EQ  $0000
TX2              .EQ  $0001
RX2              .EQ  $0002
CCP4             .EQ  $0003
CCP5             .EQ  $0004

CK2              .EQ  $0001
DT2              .EQ  $0002

PMA8             .EQ  $0000
PMA7             .EQ  $0001
PMA6             .EQ  $0002
PMCS1            .EQ  $0003
PMCS2            .EQ  $0004


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
TRISF2           .EQ  $0002
TRISF3           .EQ  $0003
TRISF4           .EQ  $0004
TRISF5           .EQ  $0005
TRISF6           .EQ  $0006
TRISF7           .EQ  $0007

RF2              .EQ  $0002
RF3              .EQ  $0003
RF4              .EQ  $0004
RF5              .EQ  $0005
RF6              .EQ  $0006
RF7              .EQ  $0007


;----- TRISF Bits -----------------------------------------------------
TRISF2           .EQ  $0002
TRISF3           .EQ  $0003
TRISF4           .EQ  $0004
TRISF5           .EQ  $0005
TRISF6           .EQ  $0006
TRISF7           .EQ  $0007

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


;----- OSCTUNE Bits -----------------------------------------------------
TUN0             .EQ  $0000
TUN1             .EQ  $0001
TUN2             .EQ  $0002
TUN3             .EQ  $0003
TUN4             .EQ  $0004
TUN5             .EQ  $0005
PLLEN            .EQ  $0006
INTSRC           .EQ  $0007


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


;----- PIE1 Bits -----------------------------------------------------
TMR1IE           .EQ  $0000
TMR2IE           .EQ  $0001
CCP1IE           .EQ  $0002
SSP1IE           .EQ  $0003
TX1IE            .EQ  $0004
RC1IE            .EQ  $0005
ADIE             .EQ  $0006
PMPIE            .EQ  $0007

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
PMPIF            .EQ  $0007

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
PMPIP            .EQ  $0007

SSPIP            .EQ  $0003
TXIP             .EQ  $0004
RCIP             .EQ  $0005


;----- PIE2 Bits -----------------------------------------------------
CCP2IE           .EQ  $0000
TMR3IE           .EQ  $0001
LVDIE            .EQ  $0002
BCL1IE           .EQ  $0003
USBIE            .EQ  $0004
CM1IE            .EQ  $0005
CM2IE            .EQ  $0006
OSCFIE           .EQ  $0007

BCLIE            .EQ  $0003


;----- PIR2 Bits -----------------------------------------------------
CCP2IF           .EQ  $0000
TMR3IF           .EQ  $0001
LVDIF            .EQ  $0002
BCL1IF           .EQ  $0003
USBIF            .EQ  $0004
CM1IF            .EQ  $0005
CM2IF            .EQ  $0006
OSCFIF           .EQ  $0007

BCLIF            .EQ  $0003


;----- IPR2 Bits -----------------------------------------------------
CCP2IP           .EQ  $0000
TMR3IP           .EQ  $0001
LVDIP            .EQ  $0002
BCL1IP           .EQ  $0003
USBIP            .EQ  $0004
CM1IP            .EQ  $0005
CM2IP            .EQ  $0006
OSCFIP           .EQ  $0007

BCLIP            .EQ  $0003


;----- PIE3 Bits -----------------------------------------------------
CCP3IE           .EQ  $0000
CCP4IE           .EQ  $0001
CCP5IE           .EQ  $0002
TMR4IE           .EQ  $0003
TX2IE            .EQ  $0004
RC2IE            .EQ  $0005
BCL2IE           .EQ  $0006
SSP2IE           .EQ  $0007


;----- PIR3 Bits -----------------------------------------------------
CCP3IF           .EQ  $0000
CCP4IF           .EQ  $0001
CCP5IF           .EQ  $0002
TMR4IF           .EQ  $0003
TX2IF            .EQ  $0004
RC2IF            .EQ  $0005
BCL2IF           .EQ  $0006
SSP2IF           .EQ  $0007


;----- IPR3 Bits -----------------------------------------------------
CCP3IP           .EQ  $0000
CCP4IP           .EQ  $0001
CCP5IP           .EQ  $0002
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


;----- CCP3CON Bits -----------------------------------------------------
CCP3M0           .EQ  $0000
CCP3M1           .EQ  $0001
CCP3M2           .EQ  $0002
CCP3M3           .EQ  $0003
DC3B0            .EQ  $0004
DC3B1            .EQ  $0005
P3M0             .EQ  $0006
P3M1             .EQ  $0007

CCP3Y            .EQ  $0004
CCP3X            .EQ  $0005


;----- ECCP3CON Bits -----------------------------------------------------
CCP3M0           .EQ  $0000
CCP3M1           .EQ  $0001
CCP3M2           .EQ  $0002
CCP3M3           .EQ  $0003
DC3B0            .EQ  $0004
DC3B1            .EQ  $0005
P3M0             .EQ  $0006
P3M1             .EQ  $0007

CCP3Y            .EQ  $0004
CCP3X            .EQ  $0005


;----- ECCP3DEL Bits -----------------------------------------------------
PRSEN            .EQ  $0007

PDC0             .EQ  $0000
PDC1             .EQ  $0001
PDC2             .EQ  $0002
PDC3             .EQ  $0003
PDC4             .EQ  $0004
PDC5             .EQ  $0005
PDC6             .EQ  $0006

P3DC0            .EQ  $0000
P3DC1            .EQ  $0001
P3DC2            .EQ  $0002
P3DC3            .EQ  $0003
P3DC4            .EQ  $0004
P3DC5            .EQ  $0005
P3DC6            .EQ  $0006
P3RSEN           .EQ  $0007


;----- ECCP3AS Bits -----------------------------------------------------
ECCPASE          .EQ  $0007

PSSBD0           .EQ  $0000
PSSBD1           .EQ  $0001
PSSAC0           .EQ  $0002
PSSAC1           .EQ  $0003
ECCPAS0          .EQ  $0004
ECCPAS1          .EQ  $0005
ECCPAS2          .EQ  $0006

PSS3BD0          .EQ  $0000
PSS3BD1          .EQ  $0001
PSS3AC0          .EQ  $0002
PSS3AC1          .EQ  $0003
ECCP3AS0         .EQ  $0004
ECCP3AS1         .EQ  $0005
ECCP3AS2         .EQ  $0006
ECCP3ASE         .EQ  $0007


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
PRSEN            .EQ  $0007

PDC0             .EQ  $0000
PDC1             .EQ  $0001
PDC2             .EQ  $0002
PDC3             .EQ  $0003
PDC4             .EQ  $0004
PDC5             .EQ  $0005
PDC6             .EQ  $0006

P2DC0            .EQ  $0000
P2DC1            .EQ  $0001
P2DC2            .EQ  $0002
P2DC3            .EQ  $0003
P2DC4            .EQ  $0004
P2DC5            .EQ  $0005
P2DC6            .EQ  $0006
P2RSEN           .EQ  $0007


;----- ECCP2AS Bits -----------------------------------------------------
ECCPASE          .EQ  $0007

PSSBD0           .EQ  $0000
PSSBD1           .EQ  $0001
PSSAC0           .EQ  $0002
PSSAC1           .EQ  $0003
ECCPAS0          .EQ  $0004
ECCPAS1          .EQ  $0005
ECCPAS2          .EQ  $0006

PSS2BD0          .EQ  $0000
PSS2BD1          .EQ  $0001
PSS2AC0          .EQ  $0002
PSS2AC1          .EQ  $0003
ECCP2AS0         .EQ  $0004
ECCP2AS1         .EQ  $0005
ECCP2AS2         .EQ  $0006
ECCP2ASE         .EQ  $0007


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
PRSEN            .EQ  $0007

PDC0             .EQ  $0000
PDC1             .EQ  $0001
PDC2             .EQ  $0002
PDC3             .EQ  $0003
PDC4             .EQ  $0004
PDC5             .EQ  $0005
PDC6             .EQ  $0006

P1DC0            .EQ  $0000
P1DC1            .EQ  $0001
P1DC2            .EQ  $0002
P1DC3            .EQ  $0003
P1DC4            .EQ  $0004
P1DC5            .EQ  $0005
P1DC6            .EQ  $0006
P1RSEN           .EQ  $0007


;----- ECCP1AS Bits -----------------------------------------------------
ECCPASE          .EQ  $0007

PSSBD0           .EQ  $0000
PSSBD1           .EQ  $0001
PSSAC0           .EQ  $0002
PSSAC1           .EQ  $0003
ECCPAS0          .EQ  $0004
ECCPAS1          .EQ  $0005
ECCPAS2          .EQ  $0006

PSS1BD0          .EQ  $0000
PSS1BD1          .EQ  $0001
PSS1AC0          .EQ  $0002
PSS1AC1          .EQ  $0003
ECCP1AS0         .EQ  $0004
ECCP1AS1         .EQ  $0005
ECCP1AS2         .EQ  $0006
ECCP1ASE         .EQ  $0007


;----- WDTCON Bits -----------------------------------------------------
SWDTEN           .EQ  $0000
ADSHR            .EQ  $0004
LVDSTAT          .EQ  $0006
REGSLP           .EQ  $0007

SWDTE            .EQ  $0000
DEVCFG           .EQ  $0004


;----- ADCON1 Bits -----------------------------------------------------
ADCAL            .EQ  $0006
ADFM             .EQ  $0007

ADCS0            .EQ  $0000
ADCS1            .EQ  $0001
ADCS2            .EQ  $0002
ACQT0            .EQ  $0003
ACQT1            .EQ  $0004
ACQT2            .EQ  $0005


;----- ANCON0 Bits -----------------------------------------------------
PCFG0            .EQ  $0000
PCFG1            .EQ  $0001
PCFG2            .EQ  $0002
PCFG3            .EQ  $0003
PCFG4            .EQ  $0004
PCFG7            .EQ  $0007


;----- ADCON0 Bits -----------------------------------------------------
ADON             .EQ  $0000
GO_NOT_DONE      .EQ  $0001

DONE             .EQ  $0001
CHS0             .EQ  $0002
CHS1             .EQ  $0003
CHS2             .EQ  $0004
CHS3             .EQ  $0005
VCFG0            .EQ  $0006
VCFG1            .EQ  $0007

GO_DONE          .EQ  $0001

GO               .EQ  $0001

NOT_DONE         .EQ  $0001


;----- ANCON1 Bits -----------------------------------------------------
PCFG10           .EQ  $0002
PCFG11           .EQ  $0003
PCFG12           .EQ  $0004
PCFG13           .EQ  $0005
PCFG14           .EQ  $0006
PCFG15           .EQ  $0007


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


;----- SSP1MSK Bits -----------------------------------------------------
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


;----- PADCFG1 Bits -----------------------------------------------------
PMPTL            .EQ  $0000

PMPTTL           .EQ  $0000


;----- ODCON3 Bits -----------------------------------------------------
SPI1OD           .EQ  $0000
SPI2OD           .EQ  $0001


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


;----- ODCON2 Bits -----------------------------------------------------
USART1OD         .EQ  $0000
USART2OD         .EQ  $0001

U1OD             .EQ  $0000
U2OD             .EQ  $0001


;----- ODCON1 Bits -----------------------------------------------------
ECCP1OD          .EQ  $0000
ECCP2OD          .EQ  $0001
ECCP3OD          .EQ  $0002
CCP4OD           .EQ  $0003
CCP5OD           .EQ  $0004


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

C1CH0            .EQ  $0000
C1CH1            .EQ  $0001
EVPOL0           .EQ  $0003
EVPOL1           .EQ  $0004

CCH0             .EQ  $0000
CCH1             .EQ  $0001

C1CH02           .EQ  $0000
C1CH12           .EQ  $0001
CREF2            .EQ  $0002
EVPOL02          .EQ  $0003
EVPOL12          .EQ  $0004
CPOL2            .EQ  $0005
COE2             .EQ  $0006
CON2             .EQ  $0007


;----- CM2CON1 Bits -----------------------------------------------------
CREF             .EQ  $0002
CPOL             .EQ  $0005
COE              .EQ  $0006
CON              .EQ  $0007

C1CH0            .EQ  $0000
C1CH1            .EQ  $0001
EVPOL0           .EQ  $0003
EVPOL1           .EQ  $0004

CCH0             .EQ  $0000
CCH1             .EQ  $0001

C1CH02           .EQ  $0000
C1CH12           .EQ  $0001
CREF2            .EQ  $0002
EVPOL02          .EQ  $0003
EVPOL12          .EQ  $0004
CPOL2            .EQ  $0005
COE2             .EQ  $0006
CON2             .EQ  $0007


;----- CM1CON Bits -----------------------------------------------------
CREF             .EQ  $0002
CPOL             .EQ  $0005
COE              .EQ  $0006
CON              .EQ  $0007

C1CH0            .EQ  $0000
C1CH1            .EQ  $0001
EVPOL0           .EQ  $0003
EVPOL1           .EQ  $0004

CCH0             .EQ  $0000
CCH1             .EQ  $0001


;----- CM1CON1 Bits -----------------------------------------------------
CREF             .EQ  $0002
CPOL             .EQ  $0005
COE              .EQ  $0006
CON              .EQ  $0007

C1CH0            .EQ  $0000
C1CH1            .EQ  $0001
EVPOL0           .EQ  $0003
EVPOL1           .EQ  $0004

CCH0             .EQ  $0000
CCH1             .EQ  $0001


;----- OSCCON Bits -----------------------------------------------------
OSTS             .EQ  $0003
IDLEN            .EQ  $0007

SCS0             .EQ  $0000
SCS1             .EQ  $0001
IRCF0            .EQ  $0004
IRCF1            .EQ  $0005
IRCF2            .EQ  $0006


;----- REFOCON Bits -----------------------------------------------------
ROSEL            .EQ  $0004
ROSSLP           .EQ  $0005
ROON             .EQ  $0007

RODIV0           .EQ  $0000
RODIV1           .EQ  $0001
RODIV2           .EQ  $0002
RODIV3           .EQ  $0003


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
;   Watchdog Timer Enable bit:
;     WDTEN = OFF          WDT disabled (control is placed on SWDTEN bit)
;     WDTEN = ON           WDT enabled
;
;   PLL Prescaler Selection bits:
;     PLLDIV = 12          Divide by 12 (48 MHz oscillator input)
;     PLLDIV = 10          Divide by 10 (40 MHz oscillator input)
;     PLLDIV = 6           Divide by 6 (24 MHz oscillator input)
;     PLLDIV = 5           Divide by 5 (20 MHz oscillator input)
;     PLLDIV = 4           Divide by 4 (16 MHz oscillator input)
;     PLLDIV = 3           Divide by 3 (12 MHz oscillator input)
;     PLLDIV = 2           Divide by 2 (8 MHz oscillator input)
;     PLLDIV = 1           No prescale (4 MHz oscillator input drives PLL directly)
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
;   CPU System Clock Postscaler:
;     CPUDIV = OSC4_PLL6   CPU system clock divide by 6
;     CPUDIV = OSC3_PLL3   CPU system clock divide by 3
;     CPUDIV = OSC2_PLL2   CPU system clock divide by 2
;     CPUDIV = OSC1        No CPU system clock divide
;
;   Code Protection bit:
;     CP0 = ON             Program memory is code-protected
;     CP0 = OFF            Program memory is not code-protected
;
;   Oscillator Selection bits:
;     FOSC = INTOSC        INTOSC, Port function on RA6 and RA7
;     FOSC = INTOSCO       INTOSC, CLKO on RA6 and Port function on RA7
;     FOSC = INTOSCPLL     INTOSC with PLL enabled, Port function on RA6 and RA7
;     FOSC = INTOSCPLLO    INTOSC with PLL enabled, CLKO on RA6 and Port function on RA7
;     FOSC = HS            HS oscillator, HS used by USB
;     FOSC = HSPLL         HS oscillator, PLL enabled, HSPLL used by USB
;     FOSC = EC            EC Oscillator with CLKO on RA6, EC used by USB
;     FOSC = ECPLL         EC Oscillator with PLL, CLKO on RA6, ECPLL used by USB
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
;   ECCP2 MUX bit:
;     CCP2MX = ALTERNATE   ECCP2/P2A is multiplexed with RE7
;     CCP2MX = DEFAULT     ECCP2/P2A is multiplexed with RC1
;
;   MSSP Address Masking Mode Select bit:
;     MSSPMSK = MSK5       5-Bit Address Masking mode enable
;     MSSPMSK = MSK7       7-Bit Address Masking mode enable
;
;==========================================================================
;----- DEVID Equates --------------------------------------------------
_DEVID1          .EQ  $3FFFFE
_DEVID2          .EQ  $3FFFFF
