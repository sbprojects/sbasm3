;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC16F690 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC16F690 microcontroller.  These names
;  are taken to match the data sheets as closely as possible.
;
;  Note that the processor must be selected before this file is included.
;  The processor may be selected the following ways:
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

;----- Register Files -----------------------------------------------------

;-----Bank0------------------
INDF             .EQ  $00
TMR0             .EQ  $01
PCL              .EQ  $02
STATUS           .EQ  $03
FSR              .EQ  $04
PORTA            .EQ  $05
PORTB            .EQ  $06
PORTC            .EQ  $07
PCLATH           .EQ  $0A
INTCON           .EQ  $0B
PIR1             .EQ  $0C
PIR2             .EQ  $0D
TMR1             .EQ  $0E
TMR1L            .EQ  $0E
TMR1H            .EQ  $0F
T1CON            .EQ  $10
TMR2             .EQ  $11
T2CON            .EQ  $12
SSPBUF           .EQ  $13
SSPCON           .EQ  $14
CCPR             .EQ  $15
CCPR1L           .EQ  $15
CCPR1H           .EQ  $16
CCP1CON          .EQ  $17
RCSTA            .EQ  $18
TXREG            .EQ  $19
RCREG            .EQ  $1A
PWM1CON          .EQ  $1C
ECCPAS           .EQ  $1D
ADRESH           .EQ  $1E
ADCON0           .EQ  $1F

;-----Bank1------------------
OPTION_REG       .EQ  $81
TRISA            .EQ  $85
TRISB            .EQ  $86
TRISC            .EQ  $87
PIE1             .EQ  $8C
PIE2             .EQ  $8D
PCON             .EQ  $8E
OSCCON           .EQ  $8F
OSCTUNE          .EQ  $90
PR2              .EQ  $92
MSK              .EQ  $93
SSPADD           .EQ  $93
SSPMSK           .EQ  $93
SSPSTAT          .EQ  $94
WPU              .EQ  $95
WPUA             .EQ  $95
IOC              .EQ  $96
IOCA             .EQ  $96
WDTCON           .EQ  $97
TXSTA            .EQ  $98
SPBRG            .EQ  $99
SPBRGH           .EQ  $9A
BAUDCTL          .EQ  $9B
ADRESL           .EQ  $9E
ADCON1           .EQ  $9F

;-----Bank2------------------
EEDAT            .EQ  $010C
EEDATA           .EQ  $010C
EEADR            .EQ  $010D
EEDATH           .EQ  $010E
EEADRH           .EQ  $010F
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
PSTRCON          .EQ  $019D
SRCON            .EQ  $019E

;----- STATUS Bits -----------------------------------------------------
C                .EQ  $00
DC               .EQ  $01
Z                .EQ  $02
NOT_PD           .EQ  $03
NOT_TO           .EQ  $04
IRP              .EQ  $07

RP0              .EQ  $05
RP1              .EQ  $06


;----- PORTA Bits -----------------------------------------------------
RA0              .EQ  0
RA1              .EQ  1
RA2              .EQ  2
RA3              .EQ  3
RA4              .EQ  4
RA5              .EQ  5


;----- PORTB Bits -----------------------------------------------------
RB4              .EQ  4
RB5              .EQ  5
RB6              .EQ  6
RB7              .EQ  7


;----- PORTC Bits -----------------------------------------------------
RC0              .EQ  0
RC1              .EQ  1
RC2              .EQ  2
RC3              .EQ  3
RC4              .EQ  4
RC5              .EQ  5
RC6              .EQ  6
RC7              .EQ  7


;----- INTCON Bits -----------------------------------------------------
RABIF            .EQ  0
INTF             .EQ  1
T0IF             .EQ  2
RABIE            .EQ  3
INTE             .EQ  4
T0IE             .EQ  5
PEIE             .EQ  6
GIE              .EQ  7


;----- PIR1 Bits -----------------------------------------------------
TMR1IF           .EQ  0
TMR2IF           .EQ  1
CCP1IF           .EQ  2
SSPIF            .EQ  3
TXIF             .EQ  4
RCIF             .EQ  5
ADIF             .EQ  6

T1IF             .EQ  0
T2IF             .EQ  1


;----- PIR2 Bits -----------------------------------------------------
EEIF             .EQ  4
C1IF             .EQ  5
C2IF             .EQ  6
OSFIF            .EQ  7


;----- T1CON Bits -----------------------------------------------------
TMR1ON           .EQ  0
TMR1CS           .EQ  1
NOT_T1SYNC       .EQ  2
T1OSCEN          .EQ  3
TMR1GE           .EQ  6
T1GINV           .EQ  7

T1CKPS0          .EQ  4
T1CKPS1          .EQ  5


;----- T2CON Bits -----------------------------------------------------
TMR2ON           .EQ  2

T2CKPS0          .EQ  0
T2CKPS1          .EQ  1
TOUTPS0          .EQ  3
TOUTPS1          .EQ  4
TOUTPS2          .EQ  5
TOUTPS3          .EQ  6


;----- SSPCON Bits -----------------------------------------------------
CKP              .EQ  4
SSPEN            .EQ  5
SSPOV            .EQ  6
WCOL             .EQ  7

SSPM0            .EQ  0
SSPM1            .EQ  1
SSPM2            .EQ  2
SSPM3            .EQ  3


;----- CCP1CON Bits -----------------------------------------------------
CCP1M0           .EQ  0
CCP1M1           .EQ  1
CCP1M2           .EQ  2
CCP1M3           .EQ  3
DC1B0            .EQ  4
DC1B1            .EQ  5
P1M0             .EQ  6
P1M1             .EQ  7


;----- RCSTA Bits -----------------------------------------------------
RX9D             .EQ  0
OERR             .EQ  1
FERR             .EQ  2
ADDEN            .EQ  3
CREN             .EQ  4
SREN             .EQ  5
RX9              .EQ  6
SPEN             .EQ  7


;----- PWM1CON Bits -----------------------------------------------------
PRSEN            .EQ  7

PDC0             .EQ  0
PDC1             .EQ  1
PDC2             .EQ  2
PDC3             .EQ  3
PDC4             .EQ  4
PDC5             .EQ  5
PDC6             .EQ  6


;----- ECCPAS Bits -----------------------------------------------------
ECCPASE          .EQ  7

PSSBD0           .EQ  0
PSSBD1           .EQ  1
PSSAC0           .EQ  2
PSSAC1           .EQ  3
ECCPAS0          .EQ  4
ECCPAS1          .EQ  5
ECCPAS2          .EQ  6


;----- ADCON0 Bits -----------------------------------------------------
ADON             .EQ  0
GO_NOT_DONE      .EQ  1
VCFG             .EQ  6
ADFM             .EQ  7

GO               .EQ  1
CHS0             .EQ  2
CHS1             .EQ  3
CHS2             .EQ  4
CHS3             .EQ  5

NOT_DONE         .EQ  1

GO_DONE          .EQ  1


;----- OPTION_REG Bits -----------------------------------------------------
PSA              .EQ  3
T0SE             .EQ  4
T0CS             .EQ  5
INTEDG           .EQ  6
NOT_RABPU        .EQ  7

PS0              .EQ  0
PS1              .EQ  1
PS2              .EQ  2


;----- TRISA Bits -----------------------------------------------------
TRISA0           .EQ  0
TRISA1           .EQ  1
TRISA2           .EQ  2
TRISA3           .EQ  3
TRISA4           .EQ  4
TRISA5           .EQ  5


;----- TRISB Bits -----------------------------------------------------
TRISB4           .EQ  4
TRISB5           .EQ  5
TRISB6           .EQ  6
TRISB7           .EQ  7


;----- TRISC Bits -----------------------------------------------------
TRISC0           .EQ  0
TRISC1           .EQ  1
TRISC2           .EQ  2
TRISC3           .EQ  3
TRISC4           .EQ  4
TRISC5           .EQ  5
TRISC6           .EQ  6
TRISC7           .EQ  7


;----- PIE1 Bits -----------------------------------------------------
TMR1IE           .EQ  0
TMR2IE           .EQ  1
CCP1IE           .EQ  2
SSPIE            .EQ  3
TXIE             .EQ  4
RCIE             .EQ  5
ADIE             .EQ  6

T1IE             .EQ  0
T2IE             .EQ  1


;----- PIE2 Bits -----------------------------------------------------
EEIE             .EQ  4
C1IE             .EQ  5
C2IE             .EQ  6
OSFIE            .EQ  7


;----- PCON Bits -----------------------------------------------------
NOT_BOR          .EQ  0
NOT_POR          .EQ  1
SBOREN           .EQ  4
ULPWUE           .EQ  5


;----- OSCCON Bits -----------------------------------------------------
SCS              .EQ  0
LTS              .EQ  1
HTS              .EQ  2
OSTS             .EQ  3

IRCF0            .EQ  4
IRCF1            .EQ  5
IRCF2            .EQ  6


;----- OSCTUNE Bits -----------------------------------------------------
TUN0             .EQ  0
TUN1             .EQ  1
TUN2             .EQ  2
TUN3             .EQ  3
TUN4             .EQ  4


;----- MSK Bits -----------------------------------------------------
MSK0             .EQ  0
MSK1             .EQ  1
MSK2             .EQ  2
MSK3             .EQ  3
MSK4             .EQ  4
MSK5             .EQ  5
MSK6             .EQ  6
MSK7             .EQ  7


;----- SSPMSK Bits -----------------------------------------------------
MSK0             .EQ  0
MSK1             .EQ  1
MSK2             .EQ  2
MSK3             .EQ  3
MSK4             .EQ  4
MSK5             .EQ  5
MSK6             .EQ  6
MSK7             .EQ  7


;----- SSPSTAT Bits -----------------------------------------------------
BF               .EQ  0
UA               .EQ  1
R_NOT_W          .EQ  2
S                .EQ  3
P                .EQ  4
D_NOT_A          .EQ  5
CKE              .EQ  6
SMP              .EQ  7

R                .EQ  2
D                .EQ  5

I2C_READ         .EQ  2
I2C_START        .EQ  3
I2C_STOP         .EQ  4
I2C_DATA         .EQ  5

NOT_W            .EQ  2
NOT_A            .EQ  5

NOT_WRITE        .EQ  2
NOT_ADDRESS      .EQ  5

R_W              .EQ  2
D_A              .EQ  5

READ_WRITE       .EQ  2
DATA_ADDRESS     .EQ  5


;----- WPU Bits -----------------------------------------------------
WPUA0            .EQ  0
WPUA1            .EQ  1
WPUA2            .EQ  2
WPUA4            .EQ  4
WPUA5            .EQ  5

WPU0             .EQ  0
WPU1             .EQ  1
WPU2             .EQ  2
WPU4             .EQ  4
WPU5             .EQ  5


;----- WPUA Bits -----------------------------------------------------
WPUA0            .EQ  0
WPUA1            .EQ  1
WPUA2            .EQ  2
WPUA4            .EQ  4
WPUA5            .EQ  5

WPU0             .EQ  0
WPU1             .EQ  1
WPU2             .EQ  2
WPU4             .EQ  4
WPU5             .EQ  5


;----- IOC Bits -----------------------------------------------------
IOCA0            .EQ  0
IOCA1            .EQ  1
IOCA2            .EQ  2
IOCA3            .EQ  3
IOCA4            .EQ  4
IOCA5            .EQ  5

IOC0             .EQ  0
IOC1             .EQ  1
IOC2             .EQ  2
IOC3             .EQ  3
IOC4             .EQ  4
IOC5             .EQ  5


;----- IOCA Bits -----------------------------------------------------
IOCA0            .EQ  0
IOCA1            .EQ  1
IOCA2            .EQ  2
IOCA3            .EQ  3
IOCA4            .EQ  4
IOCA5            .EQ  5

IOC0             .EQ  0
IOC1             .EQ  1
IOC2             .EQ  2
IOC3             .EQ  3
IOC4             .EQ  4
IOC5             .EQ  5


;----- WDTCON Bits -----------------------------------------------------
SWDTEN           .EQ  0

WDTPS0           .EQ  1
WDTPS1           .EQ  2
WDTPS2           .EQ  3
WDTPS3           .EQ  4


;----- TXSTA Bits -----------------------------------------------------
TX9D             .EQ  0
TRMT             .EQ  1
BRGH             .EQ  2
SENDB            .EQ  3
SYNC             .EQ  4
TXEN             .EQ  5
TX9              .EQ  6
CSRC             .EQ  7

SENB             .EQ  3


;----- SPBRG Bits -----------------------------------------------------
BRG0             .EQ  0
BRG1             .EQ  1
BRG2             .EQ  2
BRG3             .EQ  3
BRG4             .EQ  4
BRG5             .EQ  5
BRG6             .EQ  6
BRG7             .EQ  7


;----- SPBRGH Bits -----------------------------------------------------
BRG8             .EQ  0
BRG9             .EQ  1
BRG10            .EQ  2
BRG11            .EQ  3
BRG12            .EQ  4
BRG13            .EQ  5
BRG14            .EQ  6
BRG15            .EQ  7


;----- BAUDCTL Bits -----------------------------------------------------
ABDEN            .EQ  0
WUE              .EQ  1
BRG16            .EQ  3
SCKP             .EQ  4
RCIDL            .EQ  6
ABDOVF           .EQ  7


;----- ADCON1 Bits -----------------------------------------------------
ADCS0            .EQ  4
ADCS1            .EQ  5
ADCS2            .EQ  6


;----- WPUB Bits -----------------------------------------------------
WPUB4            .EQ  4
WPUB5            .EQ  5
WPUB6            .EQ  6
WPUB7            .EQ  7


;----- IOCB Bits -----------------------------------------------------
IOCB4            .EQ  4
IOCB5            .EQ  5
IOCB6            .EQ  6
IOCB7            .EQ  7


;----- VRCON Bits -----------------------------------------------------
VP6EN            .EQ  4
VRR              .EQ  5
C2VREN           .EQ  6
C1VREN           .EQ  7

VR0              .EQ  0
VR1              .EQ  1
VR2              .EQ  2
VR3              .EQ  3


;----- CM1CON0 Bits -----------------------------------------------------
C1R              .EQ  2
C1POL            .EQ  4
C1OE             .EQ  5
C1OUT            .EQ  6
C1ON             .EQ  7

C1CH0            .EQ  0
C1CH1            .EQ  1


;----- CM2CON0 Bits -----------------------------------------------------
C2R              .EQ  2
C2POL            .EQ  4
C2OE             .EQ  5
C2OUT            .EQ  6
C2ON             .EQ  7

C2CH0            .EQ  0
C2CH1            .EQ  1


;----- CM2CON1 Bits -----------------------------------------------------
C2SYNC           .EQ  0
T1GSS            .EQ  1
MC2OUT           .EQ  6
MC1OUT           .EQ  7


;----- ANSEL Bits -----------------------------------------------------
ANS0             .EQ  0
ANS1             .EQ  1
ANS2             .EQ  2
ANS3             .EQ  3
ANS4             .EQ  4
ANS5             .EQ  5
ANS6             .EQ  6
ANS7             .EQ  7


;----- ANSELH Bits -----------------------------------------------------
ANS8             .EQ  0
ANS9             .EQ  1
ANS10            .EQ  2
ANS11            .EQ  3


;----- EECON1 Bits -----------------------------------------------------
RD               .EQ  0
WR               .EQ  1
WREN             .EQ  2
WRERR            .EQ  3
EEPGD            .EQ  7


;----- PSTRCON Bits -----------------------------------------------------
STRA             .EQ  0
STRB             .EQ  1
STRC             .EQ  2
STRD             .EQ  3
STRSYNC          .EQ  4


;----- SRCON Bits -----------------------------------------------------
PULSR            .EQ  2
PULSS            .EQ  3
C2REN            .EQ  4
C1SEN            .EQ  5

SR0              .EQ  6
SR1              .EQ  7




;==========================================================================
;
;       RAM Definitions
;
;==========================================================================

_MAXRAM          .EQ   $01FF

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
_CONFIG      .EQ  $2007

;----- CONFIG Options --------------------------------------------------
_FOSC_LP            .EQ  $3FF8   LP oscillator: Low-power crystal on RA4/OSC2/CLKOUT and RA5/OSC1/CLKIN
_LP_OSC             .EQ  $3FF8   LP oscillator: Low-power crystal on RA4/OSC2/CLKOUT and RA5/OSC1/CLKIN
_FOSC_XT            .EQ  $3FF9   XT oscillator: Crystal/resonator on RA4/OSC2/CLKOUT and RA5/OSC1/CLKIN
_XT_OSC             .EQ  $3FF9   XT oscillator: Crystal/resonator on RA4/OSC2/CLKOUT and RA5/OSC1/CLKIN
_FOSC_HS            .EQ  $3FFA   HS oscillator: High-speed crystal/resonator on RA4/OSC2/CLKOUT and RA5/OSC1/CLKIN
_HS_OSC             .EQ  $3FFA   HS oscillator: High-speed crystal/resonator on RA4/OSC2/CLKOUT and RA5/OSC1/CLKIN
_FOSC_EC            .EQ  $3FFB   EC: I/O function on RA4/OSC2/CLKOUT pin, CLKIN on RA5/OSC1/CLKIN
_EC_OSC             .EQ  $3FFB   EC: I/O function on RA4/OSC2/CLKOUT pin, CLKIN on RA5/OSC1/CLKIN
_FOSC_INTRCIO       .EQ  $3FFC   INTOSCIO oscillator: I/O function on RA4/OSC2/CLKOUT pin, I/O function on RA5/OSC1/CLKIN
_INTRC_OSC_NOCLKOUT .EQ  $3FFC   INTOSCIO oscillator: I/O function on RA4/OSC2/CLKOUT pin, I/O function on RA5/OSC1/CLKIN
_INTOSCIO           .EQ  $3FFC   INTOSCIO oscillator: I/O function on RA4/OSC2/CLKOUT pin, I/O function on RA5/OSC1/CLKIN
_FOSC_INTRCCLK      .EQ  $3FFD   INTOSC oscillator: CLKOUT function on RA4/OSC2/CLKOUT pin, I/O function on RA5/OSC1/CLKIN
_INTRC_OSC_CLKOUT   .EQ  $3FFD   INTOSC oscillator: CLKOUT function on RA4/OSC2/CLKOUT pin, I/O function on RA5/OSC1/CLKIN
_INTOSC             .EQ  $3FFD   INTOSC oscillator: CLKOUT function on RA4/OSC2/CLKOUT pin, I/O function on RA5/OSC1/CLKIN
_FOSC_EXTRCIO       .EQ  $3FFE   RCIO oscillator: I/O function on RA4/OSC2/CLKOUT pin, RC on RA5/OSC1/CLKIN
_EXTRC_OSC_NOCLKOUT .EQ  $3FFE   RCIO oscillator: I/O function on RA4/OSC2/CLKOUT pin, RC on RA5/OSC1/CLKIN
_EXTRCIO            .EQ  $3FFE   RCIO oscillator: I/O function on RA4/OSC2/CLKOUT pin, RC on RA5/OSC1/CLKIN
_FOSC_EXTRCCLK      .EQ  $3FFF   RC oscillator: CLKOUT function on RA4/OSC2/CLKOUT pin, RC on RA5/OSC1/CLKIN
_EXTRC_OSC_CLKOUT   .EQ  $3FFF   RC oscillator: CLKOUT function on RA4/OSC2/CLKOUT pin, RC on RA5/OSC1/CLKIN
_EXTRC              .EQ  $3FFF   RC oscillator: CLKOUT function on RA4/OSC2/CLKOUT pin, RC on RA5/OSC1/CLKIN

_WDTE_OFF           .EQ  $3FF7   WDT disabled and can be enabled by SWDTEN bit of the WDTCON register
_WDT_OFF            .EQ  $3FF7   WDT disabled and can be enabled by SWDTEN bit of the WDTCON register
_WDTE_ON            .EQ  $3FFF   WDT enabled
_WDT_ON             .EQ  $3FFF   WDT enabled

_PWRTE_ON           .EQ  $3FEF   PWRT enabled
_PWRTE_OFF          .EQ  $3FFF   PWRT disabled

_MCLRE_OFF          .EQ  $3FDF   MCLR pin function is digital input, MCLR internally tied to VDD
_MCLRE_ON           .EQ  $3FFF   MCLR pin function is MCLR

_CP_ON              .EQ  $3FBF   Program memory code protection is enabled
_CP_OFF             .EQ  $3FFF   Program memory code protection is disabled

_CPD_ON             .EQ  $3F7F   Data memory code protection is enabled
_CPD_OFF            .EQ  $3FFF   Data memory code protection is disabled

_BOREN_OFF          .EQ  $3CFF   BOR disabled
_BOD_OFF            .EQ  $3CFF   BOR disabled
_BOR_OFF            .EQ  $3CFF   BOR disabled
_BOREN_SBODEN       .EQ  $3DFF   BOR controlled by SBOREN bit of the PCON register
_BOD_SBODEN         .EQ  $3DFF   BOR controlled by SBOREN bit of the PCON register
_BOR_SBODEN         .EQ  $3DFF   BOR controlled by SBOREN bit of the PCON register
_BOREN_NSLEEP       .EQ  $3EFF   BOR enabled during operation and disabled in Sleep
_BOD_NSLEEP         .EQ  $3EFF   BOR enabled during operation and disabled in Sleep
_BOR_NSLEEP         .EQ  $3EFF   BOR enabled during operation and disabled in Sleep
_BOREN_ON           .EQ  $3FFF   BOR enabled
_BOD_ON             .EQ  $3FFF   BOR enabled
_BOR_ON             .EQ  $3FFF  BOR enabled

_IESO_OFF           .EQ  $3BFF   Internal External Switchover mode is disabled
_IESO_ON            .EQ  $3FFF   Internal External Switchover mode is enabled

_FCMEN_OFF          .EQ  $37FF   Fail-Safe Clock Monitor is disabled
_FCMEN_ON           .EQ  $3FFF   Fail-Safe Clock Monitor is enabled

;----- DEVID .EQates --------------------------------------------------
_DEVID1         .EQ  $2006

;----- IDLOC .EQates --------------------------------------------------
_IDLOC0         .EQ  $2000
_IDLOC1         .EQ  $2001
_IDLOC2         .EQ  $2002
_IDLOC3         .EQ  $2003


