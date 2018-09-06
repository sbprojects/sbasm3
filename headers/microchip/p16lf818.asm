;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC16LF818 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC16LF818 microcontroller.  These names
;  are taken to match the data sheets as closely as possible.
;==========================================================================

;==========================================================================
;
;       Select cross overlay
;
;==========================================================================

                  .CR   pic14
                  .MS   1024

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
ADRESH           .EQ  $001E
ADCON0           .EQ  $001F

;-----Bank1------------------
OPTION_REG       .EQ  $0081
TRISA            .EQ  $0085
TRISB            .EQ  $0086
PIE1             .EQ  $008C
PIE2             .EQ  $008D
PCON             .EQ  $008E
OSCCON           .EQ  $008F
OSCTUNE          .EQ  $0090
PR2              .EQ  $0092
SSPADD           .EQ  $0093
SSPSTAT          .EQ  $0094
ADRESL           .EQ  $009E
ADCON1           .EQ  $009F

;-----Bank2------------------
EEDATA           .EQ  $010C
EEADR            .EQ  $010D
EEDATH           .EQ  $010E
EEADRH           .EQ  $010F

;-----Bank3------------------
EECON1           .EQ  $018C
EECON2           .EQ  $018D

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


;----- INTCON Bits -----------------------------------------------------
RBIF             .EQ  $0000
INTF             .EQ  $0001
TMR0IF           .EQ  $0002
RBIE             .EQ  $0003
INTE             .EQ  $0004
TMR0IE           .EQ  $0005
PEIE             .EQ  $0006
GIE              .EQ  $0007


;----- PIR1 Bits -----------------------------------------------------
TMR1IF           .EQ  $0000
TMR2IF           .EQ  $0001
CCP1IF           .EQ  $0002
SSPIF            .EQ  $0003
ADIF             .EQ  $0006


;----- PIR2 Bits -----------------------------------------------------
EEIF             .EQ  $0004


;----- T1CON Bits -----------------------------------------------------
TMR1ON           .EQ  $0000
TMR1CS           .EQ  $0001
NOT_T1SYNC       .EQ  $0002
T1OSCEN          .EQ  $0003

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


;----- ADCON0 Bits -----------------------------------------------------
ADON             .EQ  $0000
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


;----- PIE1 Bits -----------------------------------------------------
TMR1IE           .EQ  $0000
TMR2IE           .EQ  $0001
CCP1IE           .EQ  $0002
SSPIE            .EQ  $0003
ADIE             .EQ  $0006


;----- PIE2 Bits -----------------------------------------------------
EEIE             .EQ  $0004


;----- PCON Bits -----------------------------------------------------
NOT_BOR          .EQ  $0000
NOT_POR          .EQ  $0001

NOT_BO           .EQ  $0000


;----- OSCCON Bits -----------------------------------------------------
IOFS             .EQ  $0002

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


;----- ADCON1 Bits -----------------------------------------------------
ADCS2            .EQ  $0006
ADFM             .EQ  $0007

PCFG0            .EQ  $0000
PCFG1            .EQ  $0001
PCFG2            .EQ  $0002
PCFG3            .EQ  $0003


;----- EECON1 Bits -----------------------------------------------------
RD               .EQ  $0000
WR               .EQ  $0001
WREN             .EQ  $0002
WRERR            .EQ  $0003
FREE             .EQ  $0004
EEPGD            .EQ  $0007




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
;   CONFIG            2007h
;
;==========================================================================

; The following is an assignment of address values for all of the
; configuration registers for the purpose of table reads
_CONFIG         .EQ  $2007

;----- CONFIG Options --------------------------------------------------
_FOSC_LP             .EQ  $3FEC  LP oscillator
_LP_OSC              .EQ  $3FEC  LP oscillator
_FOSC_XT             .EQ  $3FED  XT oscillator
_XT_OSC              .EQ  $3FED  XT oscillator
_FOSC_HS             .EQ  $3FEE  HS oscillator
_HS_OSC              .EQ  $3FEE  HS oscillator
_FOSC_EC             .EQ  $3FEF  EXTCLK; port I/O function on RA6/OSC2/CLKO pin
_EXTCLK              .EQ  $3FEF  EXTCLK; port I/O function on RA6/OSC2/CLKO pin
_FOSC_INTOSCIO       .EQ  $3FFC  INTRC oscillator; port I/O function on both RA6/OSC2/CLKO pin and RA7/OSC1/CLKI pin
_INTRC_IO            .EQ  $3FFC  INTRC oscillator; port I/O function on both RA6/OSC2/CLKO pin and RA7/OSC1/CLKI pin
_FOSC_INTOSCCLK      .EQ  $3FFD  INTRC oscillator; CLKO function on RA6/OSC2/CLKO pin and port I/O function on RA7/OSC1/CLKI pin
_INTRC_CLKOUT        .EQ  $3FFD  INTRC oscillator; CLKO function on RA6/OSC2/CLKO pin and port I/O function on RA7/OSC1/CLKI pin
_FOSC_EXTRCIO        .EQ  $3FFE  EXTRC oscillator; port I/O function on RA6/OSC2/CLKO pin
_EXTRC_IO            .EQ  $3FFE  EXTRC oscillator; port I/O function on RA6/OSC2/CLKO pin
_FOSC_EXTRCCLK       .EQ  $3FFF  EXTRC oscillator; CLKO function on RA6/OSC2/CLKO pin
_EXTRC_CLKOUT        .EQ  $3FFF  EXTRC oscillator; CLKO function on RA6/OSC2/CLKO pin

_WDTE_OFF            .EQ  $3FFB  WDT disabled
_WDT_OFF             .EQ  $3FFB  WDT disabled
_WDTE_ON             .EQ  $3FFF  WDT enabled
_WDT_ON              .EQ  $3FFF  WDT enabled

_PWRTE_ON            .EQ  $3FF7  PWRT enabled
_PWRTE_OFF           .EQ  $3FFF  PWRT disabled

_MCLRE_OFF           .EQ  $3FDF  RA5/MCLR/VPP pin function is digital I/O, MCLR internally tied to VDD
_MCLR_OFF            .EQ  $3FDF  RA5/MCLR/VPP pin function is digital I/O, MCLR internally tied to VDD
_MCLRE_ON            .EQ  $3FFF  RA5/MCLR/VPP pin function is MCLR
_MCLR_ON             .EQ  $3FFF  RA5/MCLR/VPP pin function is MCLR

_BOREN_OFF           .EQ  $3FBF  BOR disabled
_BODEN_OFF           .EQ  $3FBF  BOR disabled
_BOREN_ON            .EQ  $3FFF  BOR enabled
_BODEN_ON            .EQ  $3FFF  BOR enabled

_LVP_OFF             .EQ  $3F7F  RB3/PGM pin has digital I/O function, HV on MCLR must be used for programming
_LVP_ON              .EQ  $3FFF  RB3/PGM pin has PGM function, Low-Voltage Programming enabled

_CPD_ON              .EQ  $3EFF  Data EE memory locations code-protected
_CPD_OFF             .EQ  $3FFF  Code protection off

_WRT_1024            .EQ  $3BFF  0000h to 03FFh write-protected
_WRT_ENABLE_1024     .EQ  $3BFF  0000h to 03FFh write-protected
_WRT_512             .EQ  $3DFF  0000h to 01FFh write-protected, 0200h to 03FFh may be modified by EECON control
_WRT_ENABLE_512      .EQ  $3DFF  0000h to 01FFh write-protected, 0200h to 03FFh may be modified by EECON control
_WRT_OFF             .EQ  $3FFF  Write protection off
_WRT_ENABLE_OFF      .EQ  $3FFF  Write protection off

_DEBUG_ON            .EQ  $37FF  In-Circuit Debugger enabled, RB6 and RB7 are dedicated to the debugger
_DEBUG_OFF           .EQ  $3FFF  In-Circuit Debugger disabled, RB6 and RB7 are general purpose I/O pins

_CCPMX_RB3           .EQ  $2FFF  CCP1 function on RB3
_CCP1_RB3            .EQ  $2FFF  CCP1 function on RB3
_CCPMX_RB2           .EQ  $3FFF  CCP1 function on RB2
_CCP1_RB2            .EQ  $3FFF  CCP1 function on RB2

_CP_ON               .EQ  $1FFF  All memory locations code-protected
_CP_ALL              .EQ  $1FFF  All memory locations code-protected
_CP_OFF              .EQ  $3FFF  Code protection off

;----- DEVID Equates --------------------------------------------------
_DEVID1          .EQ  $2006

;----- IDLOC Equates --------------------------------------------------
_IDLOC0          .EQ  $2000
_IDLOC1          .EQ  $2001
_IDLOC2          .EQ  $2002
_IDLOC3          .EQ  $2003
