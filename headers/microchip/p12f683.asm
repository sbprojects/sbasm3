;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC12F683 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC12F683 microcontroller.  These names
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
                  .MS   2048

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
GPIO             .EQ  $05
PCLATH           .EQ  $0A
INTCON           .EQ  $0B
PIR1             .EQ  $0C
TMR1             .EQ  $0E
TMR1L            .EQ  $0E
TMR1H            .EQ  $0F
T1CON            .EQ  $10
TMR2             .EQ  $11
T2CON            .EQ  $12
CCPR1            .EQ  $13
CCPR1L           .EQ  $13
CCPR1H           .EQ  $14
CCP1CON          .EQ  $15
WDTCON           .EQ  $18
CMCON0           .EQ  $19
CMCON1           .EQ  $1A
ADRESH           .EQ  $1E
ADCON0           .EQ  $1F

;-----Bank1------------------
OPTION_REG       .EQ  $81
TRISIO           .EQ  $85
PIE1             .EQ  $8C
PCON             .EQ  $8E
OSCCON           .EQ  $8F
OSCTUNE          .EQ  $90
PR2              .EQ  $92
WPU              .EQ  $95
WPUA             .EQ  $95
IOC              .EQ  $96
IOCA             .EQ  $96
VRCON            .EQ  $99
EEDAT            .EQ  $9A
EEDATA           .EQ  $9A
EEADR            .EQ  $9B
EECON1           .EQ  $9C
EECON2           .EQ  $9D
ADRESL           .EQ  $9E
ANSEL            .EQ  $9F

;----- STATUS Bits -----------------------------------------------------
C                .EQ  0
DC               .EQ  1
Z                .EQ  2
NOT_PD           .EQ  3
NOT_TO           .EQ  4
IRP              .EQ  7

RP0              .EQ  5
RP1              .EQ  6


;----- GPIO Bits -----------------------------------------------------
GP0              .EQ  0
GP1              .EQ  1
GP2              .EQ  2
GP3              .EQ  3
GP4              .EQ  4
GP5              .EQ  5


;----- INTCON Bits -----------------------------------------------------
GPIF             .EQ  0
INTF             .EQ  1
T0IF             .EQ  2
GPIE             .EQ  3
INTE             .EQ  4
T0IE             .EQ  5
PEIE             .EQ  6
GIE              .EQ  7

TMR0IF           .EQ  2
TMR0IE           .EQ  5


;----- PIR1 Bits -----------------------------------------------------
TMR1IF           .EQ  0
TMR2IF           .EQ  1
OSFIF            .EQ  2
CMIF             .EQ  3
CCP1IF           .EQ  5
ADIF             .EQ  6
EEIF             .EQ  7

T1IF             .EQ  0
T2IF             .EQ  1


;----- T1CON Bits -----------------------------------------------------
TMR1ON           .EQ  0
TMR1CS           .EQ  1
NOT_T1SYNC       .EQ  2
T1OSCEN          .EQ  3
TMR1GE           .EQ  6
T1GINV           .EQ  7

T1CKPS0          .EQ  4
T1CKPS1          .EQ  5
T1GE             .EQ  6


;----- T2CON Bits -----------------------------------------------------
TMR2ON           .EQ  2

T2CKPS0          .EQ  0
T2CKPS1          .EQ  1
TOUTPS0          .EQ  3
TOUTPS1          .EQ  4
TOUTPS2          .EQ  5
TOUTPS3          .EQ  6


;----- CCP1CON Bits -----------------------------------------------------
CCP1M0           .EQ  0
CCP1M1           .EQ  1
CCP1M2           .EQ  2
CCP1M3           .EQ  3
DC1B0            .EQ  4
DC1B1            .EQ  5


;----- WDTCON Bits -----------------------------------------------------
SWDTEN           .EQ  0

WDTPS0           .EQ  1
WDTPS1           .EQ  2
WDTPS2           .EQ  3
WDTPS3           .EQ  4


;----- CMCON0 Bits -----------------------------------------------------
CIS              .EQ  3
CINV             .EQ  4
COUT             .EQ  6

CM0              .EQ  0
CM1              .EQ  1
CM2              .EQ  2


;----- CMCON1 Bits -----------------------------------------------------
CMSYNC           .EQ  0
T1GSS            .EQ  1


;----- ADCON0 Bits -----------------------------------------------------
ADON             .EQ  0
GO_NOT_DONE      .EQ  1
VCFG             .EQ  6
ADFM             .EQ  7

GO               .EQ  1
CHS0             .EQ  2
CHS1             .EQ  3
CHS2             .EQ  4

NOT_DONE         .EQ  1

GO_DONE          .EQ  1


;----- OPTION_REG Bits -----------------------------------------------------
PSA              .EQ  3
T0SE             .EQ  4
T0CS             .EQ  5
INTEDG           .EQ  6
NOT_GPPU         .EQ  7

PS0              .EQ  0
PS1              .EQ  1
PS2              .EQ  2


;----- TRISIO Bits -----------------------------------------------------
TRISIO0          .EQ  0
TRISIO1          .EQ  1
TRISIO2          .EQ  2
TRISIO3          .EQ  3
TRISIO4          .EQ  4
TRISIO5          .EQ  5


;----- PIE1 Bits -----------------------------------------------------
TMR1IE           .EQ  0
TMR2IE           .EQ  1
OSFIE            .EQ  2
CMIE             .EQ  3
CCP1IE           .EQ  5
ADIE             .EQ  6
EEIE             .EQ  7

T1IE             .EQ  0
T2IE             .EQ  1


;----- PCON Bits -----------------------------------------------------
NOT_BOD          .EQ  0
NOT_POR          .EQ  1
SBODEN           .EQ  4
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


;----- WPU Bits -----------------------------------------------------
WPU0             .EQ  0
WPU1             .EQ  1
WPU2             .EQ  2
WPU4             .EQ  4
WPU5             .EQ  5

WPUA0            .EQ  0
WPUA1            .EQ  1
WPUA2            .EQ  2
WPUA4            .EQ  4
WPUA5            .EQ  5


;----- WPUA Bits -----------------------------------------------------
WPU0             .EQ  0
WPU1             .EQ  1
WPU2             .EQ  2
WPU4             .EQ  4
WPU5             .EQ  5

WPUA0            .EQ  0
WPUA1            .EQ  1
WPUA2            .EQ  2
WPUA4            .EQ  4
WPUA5            .EQ  5


;----- IOC Bits -----------------------------------------------------
IOC0             .EQ  0
IOC1             .EQ  1
IOC2             .EQ  2
IOC3             .EQ  3
IOC4             .EQ  4
IOC5             .EQ  5

IOCA0            .EQ  0
IOCA1            .EQ  1
IOCA2            .EQ  2
IOCA3            .EQ  3
IOCA4            .EQ  4
IOCA5            .EQ  5


;----- IOCA Bits -----------------------------------------------------
IOC0             .EQ  0
IOC1             .EQ  1
IOC2             .EQ  2
IOC3             .EQ  3
IOC4             .EQ  4
IOC5             .EQ  5

IOCA0            .EQ  0
IOCA1            .EQ  1
IOCA2            .EQ  2
IOCA3            .EQ  3
IOCA4            .EQ  4
IOCA5            .EQ  5


;----- VRCON Bits -----------------------------------------------------
VRR              .EQ  5
VREN             .EQ  7

VR0              .EQ  0
VR1              .EQ  1
VR2              .EQ  2
VR3              .EQ  3


;----- EECON1 Bits -----------------------------------------------------
RD               .EQ  0
WR               .EQ  1
WREN             .EQ  2
WRERR            .EQ  3


;----- ANSEL Bits -----------------------------------------------------
ANS0             .EQ  0
ANS1             .EQ  1
ANS2             .EQ  2
ANS3             .EQ  3
ADCS0            .EQ  4
ADCS1            .EQ  5
ADCS2            .EQ  6




;==========================================================================
;
;       RAM Definitions
;
;==========================================================================

_MAXRAM          .EQ   $00FF

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
_FOSC_XT             .EQ  $3FF9  XT oscillator: Crystal/resonator on RA4/OSC2/CLKOUT and RA5/OSC1/CLKINT
_XT_OSC              .EQ  $3FF9  XT oscillator: Crystal/resonator on RA4/OSC2/CLKOUT and RA5/OSC1/CLKINT
_FOSC_HS             .EQ  $3FFA  HS oscillator: High-speed crystal/resonator on RA4/OSC2/CLKOUT and RA5/OSC1/CLKIN
_HS_OSC              .EQ  $3FFA  HS oscillator: High-speed crystal/resonator on RA4/OSC2/CLKOUT and RA5/OSC1/CLKIN
_FOSC_EC             .EQ  $3FFB  EC: I/O function on RA4/OSC2/CLKOUT pin, CLKIN on RA5/OSC1/CLKIN
_EC_OSC              .EQ  $3FFB  EC: I/O function on RA4/OSC2/CLKOUT pin, CLKIN on RA5/OSC1/CLKIN
_FOSC_INTOSCIO       .EQ  $3FFC  INTOSCIO oscillator: I/O function on RA4/OSC2/CLKOUT pin, I/O function on RA5/OSC1/CLKIN
_INTOSCIO            .EQ  $3FFC  INTOSCIO oscillator: I/O function on RA4/OSC2/CLKOUT pin, I/O function on RA5/OSC1/CLKIN
_INTRC_OSC_NOCLKOUT  .EQ  $3FFC  INTOSCIO oscillator: I/O function on RA4/OSC2/CLKOUT pin, I/O function on RA5/OSC1/CLKIN
_FOSC_INTOSCCLK      .EQ  $3FFD  INTOSC oscillator: CLKOUT function on RA4/OSC2/CLKOUT pin, I/O function on RA5/OSC1/CLKIN
_INTOSC              .EQ  $3FFD  INTOSC oscillator: CLKOUT function on RA4/OSC2/CLKOUT pin, I/O function on RA5/OSC1/CLKIN
_INTRC_OSC_CLKOUT    .EQ  $3FFD  INTOSC oscillator: CLKOUT function on RA4/OSC2/CLKOUT pin, I/O function on RA5/OSC1/CLKIN
_FOSC_EXTRCIO        .EQ  $3FFE  EXTRCIO oscillator: External RC on RA5/OSC1/CLKIN, I/O function on RA4/OSC2/CLKOUT pin
_EXTRCIO             .EQ  $3FFE  EXTRCIO oscillator: External RC on RA5/OSC1/CLKIN, I/O function on RA4/OSC2/CLKOUT pin
_EXTRC_OSC_NOCLKOUT  .EQ  $3FFE  EXTRCIO oscillator: External RC on RA5/OSC1/CLKIN, I/O function on RA4/OSC2/CLKOUT pin
_FOSC_EXTRCCLK       .EQ  $3FFF  EXTRC oscillator: External RC on RA5/OSC1/CLKIN, CLKOUT function on RA4/OSC2/CLKOUT pin
_EXTRC               .EQ  $3FFF  EXTRC oscillator: External RC on RA5/OSC1/CLKIN, CLKOUT function on RA4/OSC2/CLKOUT pin
_EXTRC_OSC_CLKOUT    .EQ  $3FFF  EXTRC oscillator: External RC on RA5/OSC1/CLKIN, CLKOUT function on RA4/OSC2/CLKOUT pin

_WDTE_OFF            .EQ  $3FF7  WDT disabled
_WDT_OFF             .EQ  $3FF7  WDT disabled
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
_BOREN_SBODEN        .EQ  $3DFF  BOR controlled by SBOREN bit of the PCON register
_BOD_SBODEN          .EQ  $3DFF  BOR controlled by SBOREN bit of the PCON register
_BOREN_NSLEEP        .EQ  $3EFF  BOR enabled during operation and disabled in Sleep
_BOD_NSLEEP          .EQ  $3EFF  BOR enabled during operation and disabled in Sleep
_BOREN_ON            .EQ  $3FFF  BOR enabled
_BOD_ON              .EQ  $3FFF  BOR enabled

_IESO_OFF            .EQ  $3BFF  Internal External Switchover mode is disabled
_IESO_ON             .EQ  $3FFF  Internal External Switchover mode is enabled

_FCMEN_OFF           .EQ  $37FF  Fail-Safe Clock Monitor is disabled
_FCMEN_ON            .EQ  $3FFF  Fail-Safe Clock Monitor is enabled

;----- DEVID .EQates --------------------------------------------------
_DEVID1          .EQ  $2006

;----- IDLOC .EQates --------------------------------------------------
_IDLOC0          .EQ  $2000
_IDLOC1          .EQ  $2001
_IDLOC2          .EQ  $2002
_IDLOC3          .EQ  $2003


