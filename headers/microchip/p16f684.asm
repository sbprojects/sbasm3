;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC16F684 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC16F684 microcontroller.  These names
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
PORTC            .EQ  $0007
PCLATH           .EQ  $000A
INTCON           .EQ  $000B
PIR1             .EQ  $000C
TMR1             .EQ  $000E
TMR1L            .EQ  $000E
TMR1H            .EQ  $000F
T1CON            .EQ  $0010
TMR2             .EQ  $0011
T2CON            .EQ  $0012
CCPR1            .EQ  $0013
CCPR1L           .EQ  $0013
CCPR1H           .EQ  $0014
CCP1CON          .EQ  $0015
PWM1CON          .EQ  $0016
ECCPAS           .EQ  $0017
WDTCON           .EQ  $0018
CMCON0           .EQ  $0019
CMCON1           .EQ  $001A
ADRESH           .EQ  $001E
ADCON0           .EQ  $001F

;-----Bank1------------------
OPTION_REG       .EQ  $0081
TRISA            .EQ  $0085
TRISC            .EQ  $0087
PIE1             .EQ  $008C
PCON             .EQ  $008E
OSCCON           .EQ  $008F
OSCTUNE          .EQ  $0090
ANSEL            .EQ  $0091
PR2              .EQ  $0092
WPU              .EQ  $0095
WPUA             .EQ  $0095
IOC              .EQ  $0096
IOCA             .EQ  $0096
VRCON            .EQ  $0099
EEDAT            .EQ  $009A
EEDATA           .EQ  $009A
EEADR            .EQ  $009B
EECON1           .EQ  $009C
EECON2           .EQ  $009D
ADRESL           .EQ  $009E
ADCON1           .EQ  $009F

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


;----- PORTC Bits -----------------------------------------------------
RC0              .EQ  $0000
RC1              .EQ  $0001
RC2              .EQ  $0002
RC3              .EQ  $0003
RC4              .EQ  $0004
RC5              .EQ  $0005


;----- INTCON Bits -----------------------------------------------------
RAIF             .EQ  $0000
INTF             .EQ  $0001
T0IF             .EQ  $0002
RAIE             .EQ  $0003
INTE             .EQ  $0004
T0IE             .EQ  $0005
PEIE             .EQ  $0006
GIE              .EQ  $0007

TMR0IF           .EQ  $0002
TMR0IE           .EQ  $0005


;----- PIR1 Bits -----------------------------------------------------
TMR1IF           .EQ  $0000
TMR2IF           .EQ  $0001
OSFIF            .EQ  $0002
C1IF             .EQ  $0003
C2IF             .EQ  $0004
CCP1IF           .EQ  $0005
ADIF             .EQ  $0006
EEIF             .EQ  $0007

T1IF             .EQ  $0000
T2IF             .EQ  $0001
ECCPIF           .EQ  $0005


;----- T1CON Bits -----------------------------------------------------
TMR1ON           .EQ  $0000
TMR1CS           .EQ  $0001
NOT_T1SYNC       .EQ  $0002
T1OSCEN          .EQ  $0003
TMR1GE           .EQ  $0006
T1GINV           .EQ  $0007

T1CKPS0          .EQ  $0004
T1CKPS1          .EQ  $0005


;----- T2CON Bits -----------------------------------------------------
TMR2ON           .EQ  $0002

T2CKPS0          .EQ  $0000
T2CKPS1          .EQ  $0001
TOUTPS0          .EQ  $0003
TOUTPS1          .EQ  $0004
TOUTPS2          .EQ  $0005
TOUTPS3          .EQ  $0006


;----- CCP1CON Bits -----------------------------------------------------
CCP1M0           .EQ  $0000
CCP1M1           .EQ  $0001
CCP1M2           .EQ  $0002
CCP1M3           .EQ  $0003
DC1B0            .EQ  $0004
DC1B1            .EQ  $0005
P1M0             .EQ  $0006
P1M1             .EQ  $0007


;----- PWM1CON Bits -----------------------------------------------------
PRSEN            .EQ  $0007

PDC0             .EQ  $0000
PDC1             .EQ  $0001
PDC2             .EQ  $0002
PDC3             .EQ  $0003
PDC4             .EQ  $0004
PDC5             .EQ  $0005
PDC6             .EQ  $0006


;----- ECCPAS Bits -----------------------------------------------------
ECCPASE          .EQ  $0007

PSSBD0           .EQ  $0000
PSSBD1           .EQ  $0001
PSSAC0           .EQ  $0002
PSSAC1           .EQ  $0003
ECCPAS0          .EQ  $0004
ECCPAS1          .EQ  $0005
ECCPAS2          .EQ  $0006


;----- WDTCON Bits -----------------------------------------------------
SWDTEN           .EQ  $0000

WDTPS0           .EQ  $0001
WDTPS1           .EQ  $0002
WDTPS2           .EQ  $0003
WDTPS3           .EQ  $0004


;----- CMCON0 Bits -----------------------------------------------------
CIS              .EQ  $0003
C1INV            .EQ  $0004
C2INV            .EQ  $0005
C1OUT            .EQ  $0006
C2OUT            .EQ  $0007

CM0              .EQ  $0000
CM1              .EQ  $0001
CM2              .EQ  $0002


;----- CMCON1 Bits -----------------------------------------------------
C2SYNC           .EQ  $0000
T1GSS            .EQ  $0001


;----- ADCON0 Bits -----------------------------------------------------
ADON             .EQ  $0000
GO_NOT_DONE      .EQ  $0001
VCFG             .EQ  $0006
ADFM             .EQ  $0007

GO               .EQ  $0001
CHS0             .EQ  $0002
CHS1             .EQ  $0003
CHS2             .EQ  $0004

NOT_DONE         .EQ  $0001

GO_DONE          .EQ  $0001


;----- OPTION_REG Bits -----------------------------------------------------
PSA              .EQ  $0003
T0SE             .EQ  $0004
T0CS             .EQ  $0005
INTEDG           .EQ  $0006
NOT_RAPU         .EQ  $0007

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


;----- TRISC Bits -----------------------------------------------------
TRISC0           .EQ  $0000
TRISC1           .EQ  $0001
TRISC2           .EQ  $0002
TRISC3           .EQ  $0003
TRISC4           .EQ  $0004
TRISC5           .EQ  $0005


;----- PIE1 Bits -----------------------------------------------------
TMR1IE           .EQ  $0000
TMR2IE           .EQ  $0001
OSFIE            .EQ  $0002
C1IE             .EQ  $0003
C2IE             .EQ  $0004
CCP1IE           .EQ  $0005
ADIE             .EQ  $0006
EEIE             .EQ  $0007

T1IE             .EQ  $0000
T2IE             .EQ  $0001
ECCPIE           .EQ  $0005


;----- PCON Bits -----------------------------------------------------
NOT_BOR          .EQ  $0000
NOT_POR          .EQ  $0001
SBOREN           .EQ  $0004
ULPWUE           .EQ  $0005

NOT_BOD          .EQ  $0000
SBODEN           .EQ  $0004


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


;----- ANSEL Bits -----------------------------------------------------
ANS0             .EQ  $0000
ANS1             .EQ  $0001
ANS2             .EQ  $0002
ANS3             .EQ  $0003
ANS4             .EQ  $0004
ANS5             .EQ  $0005
ANS6             .EQ  $0006
ANS7             .EQ  $0007


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


;----- VRCON Bits -----------------------------------------------------
VRR              .EQ  $0005
VREN             .EQ  $0007

VR0              .EQ  $0000
VR1              .EQ  $0001
VR2              .EQ  $0002
VR3              .EQ  $0003


;----- EECON1 Bits -----------------------------------------------------
RD               .EQ  $0000
WR               .EQ  $0001
WREN             .EQ  $0002
WRERR            .EQ  $0003


;----- ADCON1 Bits -----------------------------------------------------
ADCS0            .EQ  $0004
ADCS1            .EQ  $0005
ADCS2            .EQ  $0006




;==========================================================================
;
;       RAM Definitions
;
;==========================================================================

_MAXRAM  		 .EQ  $00FF

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

;----- DEVID Equates --------------------------------------------------
_DEVID1          .EQ  $2006

;----- IDLOC Equates --------------------------------------------------
_IDLOC0          .EQ  $2000
_IDLOC1          .EQ  $2001
_IDLOC2          .EQ  $2002
_IDLOC3          .EQ  $2003

