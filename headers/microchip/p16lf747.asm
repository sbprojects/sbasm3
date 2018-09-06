;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC16LF747 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC16LF747 microcontroller.  These names
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
SSPCON2          .EQ  $0091
PR2              .EQ  $0092
SSPADD           .EQ  $0093
SSPSTAT          .EQ  $0094
CCPR3            .EQ  $0095
CCPR3L           .EQ  $0095
CCPR3H           .EQ  $0096
CCP3CON          .EQ  $0097
TXSTA            .EQ  $0098
SPBRG            .EQ  $0099
ADCON2           .EQ  $009B
CMCON            .EQ  $009C
CVRCON           .EQ  $009D
ADRESL           .EQ  $009E
ADCON1           .EQ  $009F

;-----Bank2------------------
WDTCON           .EQ  $0105
LVDCON           .EQ  $0109
PMDATA           .EQ  $010C
PMADR            .EQ  $010D
PMDATH           .EQ  $010E
PMADRH           .EQ  $010F

;-----Bank3------------------
PMCON1           .EQ  $018C

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

INT0IF           .EQ  $0001
T0IF             .EQ  $0002
INT0IE           .EQ  $0004
T0IE             .EQ  $0005


;----- PIR1 Bits -----------------------------------------------------
TMR1IF           .EQ  $0000
TMR2IF           .EQ  $0001
CCP1IF           .EQ  $0002
SSPIF            .EQ  $0003
TXIF             .EQ  $0004
RCIF             .EQ  $0005
ADIF             .EQ  $0006
PSPIF            .EQ  $0007


;----- PIR2 Bits -----------------------------------------------------
CCP2IF           .EQ  $0000
CCP3IF           .EQ  $0001
BCLIF            .EQ  $0003
LVDIF            .EQ  $0005
CMIF             .EQ  $0006
OSFIF            .EQ  $0007


;----- T1CON Bits -----------------------------------------------------
TMR1ON           .EQ  $0000
TMR1CS           .EQ  $0001
NOT_T1SYNC       .EQ  $0002
T1OSCEN          .EQ  $0003
T1RUN            .EQ  $0006

T1SYNC           .EQ  $0002
T1CKPS0          .EQ  $0004
T1CKPS1          .EQ  $0005

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
CHS3             .EQ  $0001
GO_NOT_DONE      .EQ  $0002

GO               .EQ  $0002
CHS0             .EQ  $0003
CHS1             .EQ  $0004
CHS2             .EQ  $0005
ADCS0            .EQ  $0006
ADCS1            .EQ  $0007

NOT_DONE         .EQ  $0002

GO_DONE          .EQ  $0002


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
PSPMODE          .EQ  $0004
IBOV             .EQ  $0005
OBF              .EQ  $0006
IBF              .EQ  $0007


;----- PIE1 Bits -----------------------------------------------------
TMR1IE           .EQ  $0000
TMR2IE           .EQ  $0001
CCP1IE           .EQ  $0002
SSPIE            .EQ  $0003
TXIE             .EQ  $0004
RCIE             .EQ  $0005
ADIE             .EQ  $0006
PSPIE            .EQ  $0007


;----- PIE2 Bits -----------------------------------------------------
CCP2IE           .EQ  $0000
CCP3IE           .EQ  $0001
BCLIE            .EQ  $0003
LVDIE            .EQ  $0005
CMIE             .EQ  $0006
OSFIE            .EQ  $0007


;----- PCON Bits -----------------------------------------------------
NOT_BOR          .EQ  $0000
NOT_POR          .EQ  $0001
SBOREN           .EQ  $0002

NOT_BO           .EQ  $0000


;----- OSCCON Bits -----------------------------------------------------
IOFS             .EQ  $0002
OSTS             .EQ  $0003

SCS0             .EQ  $0000
SCS1             .EQ  $0001
IRCF0            .EQ  $0004
IRCF1            .EQ  $0005
IRCF2            .EQ  $0006


;----- OSCTUNE Bits -----------------------------------------------------
TUN0             .EQ  $0000
TUN1             .EQ  $0001
TUN2             .EQ  $0002
TUN3             .EQ  $0003
TUN4             .EQ  $0004
TUN5             .EQ  $0005


;----- SSPCON2 Bits -----------------------------------------------------
SEN              .EQ  $0000
RSEN             .EQ  $0001
PEN              .EQ  $0002
RCEN             .EQ  $0003
ACKEN            .EQ  $0004
ACKDT            .EQ  $0005
ACKSTAT          .EQ  $0006
GCEN             .EQ  $0007


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


;----- CCP3CON Bits -----------------------------------------------------
CCP3Y            .EQ  $0004
CCP3X            .EQ  $0005

CCP3M0           .EQ  $0000
CCP3M1           .EQ  $0001
CCP3M2           .EQ  $0002
CCP3M3           .EQ  $0003


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


;----- ADCON2 Bits -----------------------------------------------------
ACQT0            .EQ  $0003
ACQT1            .EQ  $0004
ACQT2            .EQ  $0005


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
CVRR             .EQ  $0005
CVROE            .EQ  $0006
CVREN            .EQ  $0007

CVR0             .EQ  $0000
CVR1             .EQ  $0001
CVR2             .EQ  $0002
CVR3             .EQ  $0003


;----- ADCON1 Bits -----------------------------------------------------
ADCS2            .EQ  $0006
ADFM             .EQ  $0007

PCFG0            .EQ  $0000
PCFG1            .EQ  $0001
PCFG2            .EQ  $0002
PCFG3            .EQ  $0003
VCFG0            .EQ  $0004
VCFG1            .EQ  $0005


;----- WDTCON Bits -----------------------------------------------------
SWDTEN           .EQ  $0000

SWDTE            .EQ  $0000
WDTPS0           .EQ  $0001
WDTPS1           .EQ  $0002
WDTPS2           .EQ  $0003
WDTPS3           .EQ  $0004


;----- LVDCON Bits -----------------------------------------------------
LVDEN            .EQ  $0004
IRVST            .EQ  $0005

LVDL0            .EQ  $0000
LVDL1            .EQ  $0001
LVDL2            .EQ  $0002
LVDL3            .EQ  $0003


;----- PMCON1 Bits -----------------------------------------------------
RD               .EQ  $0000




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
;   CONFIG1           2007h
;   CONFIG2           2008h
;
;==========================================================================

; The following is an assignment of address values for all of the
; configuration registers for the purpose of table reads
_CONFIG1        .EQ  $2007
_CONFIG2        .EQ  $2008

;----- CONFIG1 Options --------------------------------------------------
_FOSC_LP             .EQ  $3FEC  LP oscillator
_LP_OSC              .EQ  $3FEC  LP oscillator
_FOSC_XT             .EQ  $3FED  XT oscillator
_XT_OSC              .EQ  $3FED  XT oscillator
_FOSC_HS             .EQ  $3FEE  HS oscillator
_HS_OSC              .EQ  $3FEE  HS oscillator
_FOSC_EC             .EQ  $3FEF  EXTCLK; port I/O function on OSC2/CLKO/RA6
_EXTCLK              .EQ  $3FEF  EXTCLK; port I/O function on OSC2/CLKO/RA6
_FOSC_INTOSCIO       .EQ  $3FFC  INTRC oscillator; port I/O function on OSC1/CLKI/RA7 and OSC2/CLKO/RA6
_INTRC_IO            .EQ  $3FFC  INTRC oscillator; port I/O function on OSC1/CLKI/RA7 and OSC2/CLKO/RA6
_FOSC_INTOSCCLK      .EQ  $3FFD  INTRC oscillator; CLKO function on OSC2/CLKO/RA6 and port I/O function on OSC1/CLKI/RA7
_INTRC_CLKOUT        .EQ  $3FFD  INTRC oscillator; CLKO function on OSC2/CLKO/RA6 and port I/O function on OSC1/CLKI/RA7
_FOSC_EXTRCIO        .EQ  $3FFE  EXTRC oscillator; port I/O function on OSC2/CLKO/RA6
_EXTRC_IO            .EQ  $3FFE  EXTRC oscillator; port I/O function on OSC2/CLKO/RA6
_FOSC_EXTRCCLK       .EQ  $3FFF  EXTRC oscillator; CLKO function on OSC2/CLKO/RA6
_EXTRC_CLKOUT        .EQ  $3FFF  EXTRC oscillator; CLKO function on OSC2/CLKO/RA6

_WDTE_OFF            .EQ  $3FFB  WDT disabled
_WDT_OFF             .EQ  $3FFB  WDT disabled
_WDTE_ON             .EQ  $3FFF  WDT enabled
_WDT_ON              .EQ  $3FFF  WDT enabled

_PWRTE_ON            .EQ  $3FF7  PWRT enabled
_PWRTE_OFF           .EQ  $3FFF  PWRT disabled

_MCLRE_OFF           .EQ  $3FDF  MCLR/VPP/RE3 pin function is digital input only, MCLR gated to 1
_MCLR_OFF            .EQ  $3FDF  MCLR/VPP/RE3 pin function is digital input only, MCLR gated to 1
_MCLRE_ON            .EQ  $3FFF  MCLR/VPP/RE3 pin function is MCLR
_MCLR_ON             .EQ  $3FFF  MCLR/VPP/RE3 pin function is MCLR

_BOREN_OFF           .EQ  $3FBF  Disabled
_BOREN_0             .EQ  $3FBF  Disabled
_BOREN_ON            .EQ  $3FFF  Enabled
_BOREN_1             .EQ  $3FFF  Enabled

_BORV_45             .EQ  $3E7F  VBOR set to 4.5V
_VBOR_4_5            .EQ  $3E7F  VBOR set to 4.5V
_BORV_42             .EQ  $3EFF  VBOR set to 4.2V
_VBOR_4_2            .EQ  $3EFF  VBOR set to 4.2V
_BORV_27             .EQ  $3F7F  VBOR set to 2.7V
_VBOR_2_7            .EQ  $3F7F  VBOR set to 2.7V
_BORV_20             .EQ  $3FFF  VBOR set to 2.0V
_VBOR_2_0            .EQ  $3FFF  VBOR set to 2.0V

_DEBUG_ON            .EQ  $37FF  In-Circuit Debugger enabled, RB6 and RB7 are dedicated to the debugger
_DEBUG_OFF           .EQ  $3FFF  In-Circuit Debugger disabled, RB6 and RB7 are general purpose I/O pins

_CCP2MX_RB3          .EQ  $2FFF  CCP2 is on RB3
_CCP2_RB3            .EQ  $2FFF  CCP2 is on RB3
_CCP2MX_RC1          .EQ  $3FFF  CCP2 is on RC1
_CCP2_RC1            .EQ  $3FFF  CCP2 is on RC1

_CP_ON               .EQ  $1FFF  0000h to 0FFFh code-protected
_CP_ALL              .EQ  $1FFF  0000h to 0FFFh code-protected
_CP_OFF              .EQ  $3FFF  Code protection off

;----- CONFIG2 Options --------------------------------------------------
_FCMEN_OFF           .EQ  $3FFE  Fail-Safe Clock Monitor disabled
_FCMEN_ON            .EQ  $3FFF  Fail-Safe Clock Monitor enabled

_IESO_OFF            .EQ  $3FFD  Internal External Switchover mode disabled
_IESO_ON             .EQ  $3FFF  Internal External Switchover mode enabled

_BORSEN_OFF          .EQ  $3FBF  Disabled
_BORSEN_0            .EQ  $3FBF  Disabled
_BORSEN_ON           .EQ  $3FFF  Enabled
_BORSEN_1            .EQ  $3FFF  Enabled

;----- DEVID Equates --------------------------------------------------
_DEVID1          .EQ  $2006

;----- IDLOC Equates --------------------------------------------------
_IDLOC0          .EQ  $2000
_IDLOC1          .EQ  $2001
_IDLOC2          .EQ  $2002
_IDLOC3          .EQ  $2003
