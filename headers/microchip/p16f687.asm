;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC16F687 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC16F687 microcontroller.  These names
;  are taken to match the data sheets as closely as possible.
;==========================================================================

;==========================================================================
;
;       Select cross overlay
;
;==========================================================================

                  .CR   pic14
                  .MS   2048

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
PCLATH           .EQ  $000A
INTCON           .EQ  $000B
PIR1             .EQ  $000C
PIR2             .EQ  $000D
TMR1             .EQ  $000E
TMR1L            .EQ  $000E
TMR1H            .EQ  $000F
T1CON            .EQ  $0010
SSPBUF           .EQ  $0013
SSPCON           .EQ  $0014
RCSTA            .EQ  $0018
TXREG            .EQ  $0019
RCREG            .EQ  $001A
ADRESH           .EQ  $001E
ADCON0           .EQ  $001F

;-----Bank1------------------
OPTION_REG       .EQ  $0081
TRISA            .EQ  $0085
TRISB            .EQ  $0086
TRISC            .EQ  $0087
PIE1             .EQ  $008C
PIE2             .EQ  $008D
PCON             .EQ  $008E
OSCCON           .EQ  $008F
OSCTUNE          .EQ  $0090
MSK              .EQ  $0093
SSPADD           .EQ  $0093
SSPMSK           .EQ  $0093
SSPSTAT          .EQ  $0094
WPU              .EQ  $0095
WPUA             .EQ  $0095
IOC              .EQ  $0096
IOCA             .EQ  $0096
WDTCON           .EQ  $0097
TXSTA            .EQ  $0098
SPBRG            .EQ  $0099
SPBRGH           .EQ  $009A
BAUDCTL          .EQ  $009B
ADRESL           .EQ  $009E
ADCON1           .EQ  $009F

;-----Bank2------------------
EEDAT            .EQ  $010C
EEDATA           .EQ  $010C
EEADR            .EQ  $010D
WPUB             .EQ  $0115
IOCB             .EQ  $0116
VRCON            .EQ  $0118
CM1CON0          .EQ  $0119
CM2CON0          .EQ  $011A
CM2CON1          .EQ  $011B
ANSEL            .EQ  $011E
ANSELH           .EQ  $011F

;-----Bank3------------------
EECON1           .EQ  $018C
EECON2           .EQ  $018D
SRCON            .EQ  $019E

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


;----- PORTB Bits -----------------------------------------------------
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


;----- INTCON Bits -----------------------------------------------------
RABIF            .EQ  $0000
INTF             .EQ  $0001
T0IF             .EQ  $0002
RABIE            .EQ  $0003
INTE             .EQ  $0004
T0IE             .EQ  $0005
PEIE             .EQ  $0006
GIE              .EQ  $0007


;----- PIR1 Bits -----------------------------------------------------
TMR1IF           .EQ  $0000
SSPIF            .EQ  $0003
TXIF             .EQ  $0004
RCIF             .EQ  $0005
ADIF             .EQ  $0006

T1IF             .EQ  $0000


;----- PIR2 Bits -----------------------------------------------------
EEIF             .EQ  $0004
C1IF             .EQ  $0005
C2IF             .EQ  $0006
OSFIF            .EQ  $0007


;----- T1CON Bits -----------------------------------------------------
TMR1ON           .EQ  $0000
TMR1CS           .EQ  $0001
NOT_T1SYNC       .EQ  $0002
T1OSCEN          .EQ  $0003
TMR1GE           .EQ  $0006
T1GINV           .EQ  $0007

T1CKPS0          .EQ  $0004
T1CKPS1          .EQ  $0005


;----- SSPCON Bits -----------------------------------------------------
CKP              .EQ  $0004
SSPEN            .EQ  $0005
SSPOV            .EQ  $0006
WCOL             .EQ  $0007

SSPM0            .EQ  $0000
SSPM1            .EQ  $0001
SSPM2            .EQ  $0002
SSPM3            .EQ  $0003


;----- RCSTA Bits -----------------------------------------------------
RX9D             .EQ  $0000
OERR             .EQ  $0001
FERR             .EQ  $0002
ADDEN            .EQ  $0003
CREN             .EQ  $0004
SREN             .EQ  $0005
RX9              .EQ  $0006
SPEN             .EQ  $0007


;----- ADCON0 Bits -----------------------------------------------------
ADON             .EQ  $0000
GO_NOT_DONE      .EQ  $0001
VCFG             .EQ  $0006
ADFM             .EQ  $0007

GO               .EQ  $0001
CHS0             .EQ  $0002
CHS1             .EQ  $0003
CHS2             .EQ  $0004
CHS3             .EQ  $0005

NOT_DONE         .EQ  $0001

GO_DONE          .EQ  $0001


;----- OPTION_REG Bits -----------------------------------------------------
PSA              .EQ  $0003
T0SE             .EQ  $0004
T0CS             .EQ  $0005
INTEDG           .EQ  $0006
NOT_RABPU        .EQ  $0007

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


;----- TRISB Bits -----------------------------------------------------
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


;----- PIE1 Bits -----------------------------------------------------
TMR1IE           .EQ  $0000
SSPIE            .EQ  $0003
TXIE             .EQ  $0004
RCIE             .EQ  $0005
ADIE             .EQ  $0006

T1IE             .EQ  $0000


;----- PIE2 Bits -----------------------------------------------------
EEIE             .EQ  $0004
C1IE             .EQ  $0005
C2IE             .EQ  $0006
OSFIE            .EQ  $0007


;----- PCON Bits -----------------------------------------------------
NOT_BOR          .EQ  $0000
NOT_POR          .EQ  $0001
SBOREN           .EQ  $0004
ULPWUE           .EQ  $0005


;----- OSCCON Bits -----------------------------------------------------
SCS              .EQ  $0000
LTS              .EQ  $0001
HTS              .EQ  $0002
OSTS             .EQ  $0003

IRCF0            .EQ  $0004
IRCF1            .EQ  $0005
IRCF2            .EQ  $0006


;----- OSCTUNE Bits -----------------------------------------------------
TUN0             .EQ  $0000
TUN1             .EQ  $0001
TUN2             .EQ  $0002
TUN3             .EQ  $0003
TUN4             .EQ  $0004


;----- MSK Bits -----------------------------------------------------
MSK0             .EQ  $0000
MSK1             .EQ  $0001
MSK2             .EQ  $0002
MSK3             .EQ  $0003
MSK4             .EQ  $0004
MSK5             .EQ  $0005
MSK6             .EQ  $0006
MSK7             .EQ  $0007


;----- SSPMSK Bits -----------------------------------------------------
MSK0             .EQ  $0000
MSK1             .EQ  $0001
MSK2             .EQ  $0002
MSK3             .EQ  $0003
MSK4             .EQ  $0004
MSK5             .EQ  $0005
MSK6             .EQ  $0006
MSK7             .EQ  $0007


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


;----- WPU Bits -----------------------------------------------------
WPUA0            .EQ  $0000
WPUA1            .EQ  $0001
WPUA2            .EQ  $0002
WPUA4            .EQ  $0004
WPUA5            .EQ  $0005

WPU0             .EQ  $0000
WPU1             .EQ  $0001
WPU2             .EQ  $0002
WPU4             .EQ  $0004
WPU5             .EQ  $0005


;----- WPUA Bits -----------------------------------------------------
WPUA0            .EQ  $0000
WPUA1            .EQ  $0001
WPUA2            .EQ  $0002
WPUA4            .EQ  $0004
WPUA5            .EQ  $0005

WPU0             .EQ  $0000
WPU1             .EQ  $0001
WPU2             .EQ  $0002
WPU4             .EQ  $0004
WPU5             .EQ  $0005


;----- IOC Bits -----------------------------------------------------
IOCA0            .EQ  $0000
IOCA1            .EQ  $0001
IOCA2            .EQ  $0002
IOCA3            .EQ  $0003
IOCA4            .EQ  $0004
IOCA5            .EQ  $0005

IOC0             .EQ  $0000
IOC1             .EQ  $0001
IOC2             .EQ  $0002
IOC3             .EQ  $0003
IOC4             .EQ  $0004
IOC5             .EQ  $0005


;----- IOCA Bits -----------------------------------------------------
IOCA0            .EQ  $0000
IOCA1            .EQ  $0001
IOCA2            .EQ  $0002
IOCA3            .EQ  $0003
IOCA4            .EQ  $0004
IOCA5            .EQ  $0005

IOC0             .EQ  $0000
IOC1             .EQ  $0001
IOC2             .EQ  $0002
IOC3             .EQ  $0003
IOC4             .EQ  $0004
IOC5             .EQ  $0005


;----- WDTCON Bits -----------------------------------------------------
SWDTEN           .EQ  $0000

WDTPS0           .EQ  $0001
WDTPS1           .EQ  $0002
WDTPS2           .EQ  $0003
WDTPS3           .EQ  $0004


;----- TXSTA Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SENDB            .EQ  $0003
SYNC             .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007

SENB             .EQ  $0003


;----- SPBRG Bits -----------------------------------------------------
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


;----- BAUDCTL Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
SCKP             .EQ  $0004
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007


;----- ADCON1 Bits -----------------------------------------------------
ADCS0            .EQ  $0004
ADCS1            .EQ  $0005
ADCS2            .EQ  $0006


;----- WPUB Bits -----------------------------------------------------
WPUB4            .EQ  $0004
WPUB5            .EQ  $0005
WPUB6            .EQ  $0006
WPUB7            .EQ  $0007


;----- IOCB Bits -----------------------------------------------------
IOCB4            .EQ  $0004
IOCB5            .EQ  $0005
IOCB6            .EQ  $0006
IOCB7            .EQ  $0007


;----- VRCON Bits -----------------------------------------------------
VP6EN            .EQ  $0004
VRR              .EQ  $0005
C2VREN           .EQ  $0006
C1VREN           .EQ  $0007

VR0              .EQ  $0000
VR1              .EQ  $0001
VR2              .EQ  $0002
VR3              .EQ  $0003


;----- CM1CON0 Bits -----------------------------------------------------
C1R              .EQ  $0002
C1POL            .EQ  $0004
C1OE             .EQ  $0005
C1OUT            .EQ  $0006
C1ON             .EQ  $0007

C1CH0            .EQ  $0000
C1CH1            .EQ  $0001


;----- CM2CON0 Bits -----------------------------------------------------
C2R              .EQ  $0002
C2POL            .EQ  $0004
C2OE             .EQ  $0005
C2OUT            .EQ  $0006
C2ON             .EQ  $0007

C2CH0            .EQ  $0000
C2CH1            .EQ  $0001


;----- CM2CON1 Bits -----------------------------------------------------
C2SYNC           .EQ  $0000
T1GSS            .EQ  $0001
MC2OUT           .EQ  $0006
MC1OUT           .EQ  $0007


;----- ANSEL Bits -----------------------------------------------------
ANS0             .EQ  $0000
ANS1             .EQ  $0001
ANS2             .EQ  $0002
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


;----- EECON1 Bits -----------------------------------------------------
RD               .EQ  $0000
WR               .EQ  $0001
WREN             .EQ  $0002
WRERR            .EQ  $0003


;----- SRCON Bits -----------------------------------------------------
PULSR            .EQ  $0002
PULSS            .EQ  $0003
C2REN            .EQ  $0004
C1SEN            .EQ  $0005

SR0              .EQ  $0006
SR1              .EQ  $0007




;==========================================================================
;
;       RAM Definitions
;
;==========================================================================

_MAXRAM  		 .EQ  $01FF

;==========================================================================
;
;       Configuration Bits
;
;   NAME            Address
;   CONFIG            2007h
;
;==========================================================================

; The following is an assignment of address values for all of the
; configuration registers for the purpose of table reads
_CONFIG         .EQ  $2007

;----- CONFIG Options --------------------------------------------------
_FOSC_LP             .EQ  $3FF8  LP oscillator: Low-power crystal on RA4/OSC2/CLKOUT and RA5/OSC1/CLKIN
_LP_OSC              .EQ  $3FF8  LP oscillator: Low-power crystal on RA4/OSC2/CLKOUT and RA5/OSC1/CLKIN
_FOSC_XT             .EQ  $3FF9  XT oscillator: Crystal/resonator on RA4/OSC2/CLKOUT and RA5/OSC1/CLKIN
_XT_OSC              .EQ  $3FF9  XT oscillator: Crystal/resonator on RA4/OSC2/CLKOUT and RA5/OSC1/CLKIN
_FOSC_HS             .EQ  $3FFA  HS oscillator: High-speed crystal/resonator on RA4/OSC2/CLKOUT and RA5/OSC1/CLKIN
_HS_OSC              .EQ  $3FFA  HS oscillator: High-speed crystal/resonator on RA4/OSC2/CLKOUT and RA5/OSC1/CLKIN
_FOSC_EC             .EQ  $3FFB  EC: I/O function on RA4/OSC2/CLKOUT pin, CLKIN on RA5/OSC1/CLKIN
_EC_OSC              .EQ  $3FFB  EC: I/O function on RA4/OSC2/CLKOUT pin, CLKIN on RA5/OSC1/CLKIN
_FOSC_INTRCIO        .EQ  $3FFC  INTOSCIO oscillator: I/O function on RA4/OSC2/CLKOUT pin, I/O function on RA5/OSC1/CLKIN
_INTRC_OSC_NOCLKOUT  .EQ  $3FFC  INTOSCIO oscillator: I/O function on RA4/OSC2/CLKOUT pin, I/O function on RA5/OSC1/CLKIN
_INTOSCIO            .EQ  $3FFC  INTOSCIO oscillator: I/O function on RA4/OSC2/CLKOUT pin, I/O function on RA5/OSC1/CLKIN
_FOSC_INTRCCLK       .EQ  $3FFD  INTOSC oscillator: CLKOUT function on RA4/OSC2/CLKOUT pin, I/O function on RA5/OSC1/CLKIN
_INTRC_OSC_CLKOUT    .EQ  $3FFD  INTOSC oscillator: CLKOUT function on RA4/OSC2/CLKOUT pin, I/O function on RA5/OSC1/CLKIN
_INTOSC              .EQ  $3FFD  INTOSC oscillator: CLKOUT function on RA4/OSC2/CLKOUT pin, I/O function on RA5/OSC1/CLKIN
_FOSC_EXTRCIO        .EQ  $3FFE  RCIO oscillator: I/O function on RA4/OSC2/CLKOUT pin, RC on RA5/OSC1/CLKIN
_EXTRC_OSC_NOCLKOUT  .EQ  $3FFE  RCIO oscillator: I/O function on RA4/OSC2/CLKOUT pin, RC on RA5/OSC1/CLKIN
_EXTRCIO             .EQ  $3FFE  RCIO oscillator: I/O function on RA4/OSC2/CLKOUT pin, RC on RA5/OSC1/CLKIN
_FOSC_EXTRCCLK       .EQ  $3FFF  RC oscillator: CLKOUT function on RA4/OSC2/CLKOUT pin, RC on RA5/OSC1/CLKIN
_EXTRC_OSC_CLKOUT    .EQ  $3FFF  RC oscillator: CLKOUT function on RA4/OSC2/CLKOUT pin, RC on RA5/OSC1/CLKIN
_EXTRC               .EQ  $3FFF  RC oscillator: CLKOUT function on RA4/OSC2/CLKOUT pin, RC on RA5/OSC1/CLKIN

_WDTE_OFF            .EQ  $3FF7  WDT disabled and can be enabled by SWDTEN bit of the WDTCON register
_WDT_OFF             .EQ  $3FF7  WDT disabled and can be enabled by SWDTEN bit of the WDTCON register
_WDTE_ON             .EQ  $3FFF  WDT enabled
_WDT_ON              .EQ  $3FFF  WDT enabled

_PWRTE_ON            .EQ  $3FEF  PWRT enabled
_PWRTE_OFF           .EQ  $3FFF  PWRT disabled

_MCLRE_OFF           .EQ  $3FDF  MCLR pin function is digital input, MCLR internally tied to VDD
_MCLRE_ON            .EQ  $3FFF  MCLR pin function is MCLR

_CP_ON               .EQ  $3FBF  Program memory code protection is enabled
_CP_OFF              .EQ  $3FFF  Program memory code protection is disabled

_CPD_ON              .EQ  $3F7F  Data memory code protection is enabled
_CPD_OFF             .EQ  $3FFF  Data memory code protection is disabled

_BOREN_OFF           .EQ  $3CFF  BOR disabled
_BOD_OFF             .EQ  $3CFF  BOR disabled
_BOR_OFF             .EQ  $3CFF  BOR disabled
_BOREN_SBODEN        .EQ  $3DFF  BOR controlled by SBOREN bit of the PCON register
_BOD_SBODEN          .EQ  $3DFF  BOR controlled by SBOREN bit of the PCON register
_BOR_SBODEN          .EQ  $3DFF  BOR controlled by SBOREN bit of the PCON register
_BOREN_NSLEEP        .EQ  $3EFF  BOR enabled during operation and disabled in Sleep
_BOD_NSLEEP          .EQ  $3EFF  BOR enabled during operation and disabled in Sleep
_BOR_NSLEEP          .EQ  $3EFF  BOR enabled during operation and disabled in Sleep
_BOREN_ON            .EQ  $3FFF  BOR enabled
_BOD_ON              .EQ  $3FFF  BOR enabled
_BOR_ON              .EQ  $3FFF  BOR enabled

_IESO_OFF            .EQ  $3BFF  Internal External Switchover mode is disabled
_IESO_ON             .EQ  $3FFF  Internal External Switchover mode is enabled

_FCMEN_OFF           .EQ  $37FF  Fail-Safe Clock Monitor is disabled
_FCMEN_ON            .EQ  $3FFF  Fail-Safe Clock Monitor is enabled

;----- DEVID Equates --------------------------------------------------
_DEVID1          .EQ  $2006

;----- IDLOC Equates --------------------------------------------------
_IDLOC0          .EQ  $2000
_IDLOC1          .EQ  $2001
_IDLOC2          .EQ  $2002
_IDLOC3          .EQ  $2003

