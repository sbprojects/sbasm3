;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC12F635 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC12F635 microcontroller.  These names
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
                  .MS   1024

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
PORTA            .EQ  $05
PCLATH           .EQ  $0A
INTCON           .EQ  $0B
PIR1             .EQ  $0C
TMR1             .EQ  $0E
TMR1L            .EQ  $0E
TMR1H            .EQ  $0F
T1CON            .EQ  $10
WDTCON           .EQ  $18
CMCON0           .EQ  $19
CMCON1           .EQ  $1A

;-----Bank1------------------
OPTION_REG       .EQ  $81
TRISA            .EQ  $85
TRISIO           .EQ  $85
PIE1             .EQ  $8C
PCON             .EQ  $8E
OSCCON           .EQ  $8F
OSCTUNE          .EQ  $90
LVDCON           .EQ  $94
WPUDA            .EQ  $95
IOCA             .EQ  $96
WDA              .EQ  $97
VRCON            .EQ  $99
EEDAT            .EQ  $9A
EEDATA           .EQ  $9A
EEADR            .EQ  $9B
EECON1           .EQ  $9C
EECON2           .EQ  $9D

;-----Bank2------------------
CRCON            .EQ  $0110
CRDAT0           .EQ  $0111
CRDAT1           .EQ  $0112
CRDAT2           .EQ  $0113
CRDAT3           .EQ  $0114

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

RA0              .EQ  0
RA1              .EQ  1
RA2              .EQ  2
RA3              .EQ  3
RA4              .EQ  4
RA5              .EQ  5


;----- PORTA Bits -----------------------------------------------------
GP0              .EQ  0
GP1              .EQ  1
GP2              .EQ  2
GP3              .EQ  3
GP4              .EQ  4
GP5              .EQ  5

RA0              .EQ  0
RA1              .EQ  1
RA2              .EQ  2
RA3              .EQ  3
RA4              .EQ  4
RA5              .EQ  5


;----- INTCON Bits -----------------------------------------------------
RAIF             .EQ  0
INTF             .EQ  1
T0IF             .EQ  2
RAIE             .EQ  3
INTE             .EQ  4
T0IE             .EQ  5
PEIE             .EQ  6
GIE              .EQ  7


;----- PIR1 Bits -----------------------------------------------------
TMR1IF           .EQ  0
OSFIF            .EQ  2
C1IF             .EQ  3
CRIF             .EQ  5
LVDIF            .EQ  6
EEIF             .EQ  7


;----- T1CON Bits -----------------------------------------------------
TMR1ON           .EQ  0
TMR1CS           .EQ  1
NOT_T1SYNC       .EQ  2
T1OSCEN          .EQ  3
TMR1GE           .EQ  6
T1GINV           .EQ  7

T1CKPS0          .EQ  4
T1CKPS1          .EQ  5


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
C1OUT            .EQ  6

C1INV            .EQ  4


;----- CMCON1 Bits -----------------------------------------------------
CMSYNC           .EQ  0
T1GSS            .EQ  1

C1SYNC           .EQ  0


;----- OPTION_REG Bits -----------------------------------------------------
PSA              .EQ  3
T0SE             .EQ  4
T0CS             .EQ  5
INTEDG           .EQ  6
NOT_RAPU         .EQ  7

PS0              .EQ  0
PS1              .EQ  1
PS2              .EQ  2


;----- TRISA Bits -----------------------------------------------------
TRISIO0          .EQ  0
TRISIO1          .EQ  1
TRISIO2          .EQ  2
TRISIO3          .EQ  3
TRISIO4          .EQ  4
TRISIO5          .EQ  5

TRISA0           .EQ  0
TRISA1           .EQ  1
TRISA2           .EQ  2
TRISA3           .EQ  3
TRISA4           .EQ  4
TRISA5           .EQ  5


;----- TRISIO Bits -----------------------------------------------------
TRISIO0          .EQ  0
TRISIO1          .EQ  1
TRISIO2          .EQ  2
TRISIO3          .EQ  3
TRISIO4          .EQ  4
TRISIO5          .EQ  5

TRISA0           .EQ  0
TRISA1           .EQ  1
TRISA2           .EQ  2
TRISA3           .EQ  3
TRISA4           .EQ  4
TRISA5           .EQ  5


;----- PIE1 Bits -----------------------------------------------------
TMR1IE           .EQ  0
OSFIE            .EQ  2
C1IE             .EQ  3
CRIE             .EQ  5
LVDIE            .EQ  6
EEIE             .EQ  7


;----- PCON Bits -----------------------------------------------------
NOT_BOR          .EQ  0
NOT_POR          .EQ  1
NOT_WUR          .EQ  3
SBOREN           .EQ  4
ULPWUE           .EQ  5

NOT_BOD          .EQ  0

SBODEN           .EQ  4


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


;----- LVDCON Bits -----------------------------------------------------
LVDEN            .EQ  4
IRVST            .EQ  5

LVDL0            .EQ  0
LVDL1            .EQ  1
LVDL2            .EQ  2
PLVDEN           .EQ  4


;----- WPUDA Bits -----------------------------------------------------
WPUDA0           .EQ  0
WPUDA1           .EQ  1
WPUDA2           .EQ  2
WPUDA4           .EQ  4
WPUDA5           .EQ  5


;----- IOCA Bits -----------------------------------------------------
IOCA0            .EQ  0
IOCA1            .EQ  1
IOCA2            .EQ  2
IOCA3            .EQ  3
IOCA4            .EQ  4
IOCA5            .EQ  5


;----- WDA Bits -----------------------------------------------------
WDA0             .EQ  0
WDA1             .EQ  1
WDA2             .EQ  2
WDA4             .EQ  4
WDA5             .EQ  5


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


;----- CRCON Bits -----------------------------------------------------
ENC_NOT_DEC      .EQ  6
GO_NOT_DONE      .EQ  7

CRREG0           .EQ  0
CRREG1           .EQ  1
ENC_DEC          .EQ  6
GO               .EQ  7




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
_CONFIG         .EQ  $2007

;----- CONFIG Options --------------------------------------------------
_FOSC_LP             .EQ  $3FF8  LP oscillator: Low-power crystal on RA5/T1CKI/OSC1/CLKIN and RA4/T1G/OSC2/CLKOUT
_LP_OSC              .EQ  $3FF8  LP oscillator: Low-power crystal on RA5/T1CKI/OSC1/CLKIN and RA4/T1G/OSC2/CLKOUT
_FOSC_XT             .EQ  $3FF9  XT oscillator: Crystal/resonator on RA5/T1CKI/OSC1/CLKIN and RA4/T1G/OSC2/CLKOUT
_XT_OSC              .EQ  $3FF9  XT oscillator: Crystal/resonator on RA5/T1CKI/OSC1/CLKIN and RA4/T1G/OSC2/CLKOUT
_FOSC_HS             .EQ  $3FFA  HS oscillator: High-speed crystal/resonator on RA5/T1CKI/OSC1/CLKIN and RA4/T1G/OSC2/CLKOUT
_HS_OSC              .EQ  $3FFA  HS oscillator: High-speed crystal/resonator on RA5/T1CKI/OSC1/CLKIN and RA4/T1G/OSC2/CLKOUT
_FOSC_EC             .EQ  $3FFB  EC: I/O function on RA4/T1G/OSC2/CLKOUT, CLKIN on RA5/T1CKI/OSC1/CLKIN
_EC_OSC              .EQ  $3FFB  EC: I/O function on RA4/T1G/OSC2/CLKOUT, CLKIN on RA5/T1CKI/OSC1/CLKIN
_FOSC_INTOSCIO       .EQ  $3FFC  INTOSCIO oscillator: I/O function on RA4/T1G/OSC2/CLKOUT pin, I/O function on RA5/T1CKI/OSC1/CLKIN
_INTRC_OSC_NOCLKOUT  .EQ  $3FFC  INTOSCIO oscillator: I/O function on RA4/T1G/OSC2/CLKOUT pin, I/O function on RA5/T1CKI/OSC1/CLKIN
_FOSC_INTOSCCLK      .EQ  $3FFD  INTOSC oscillator: CLKOUT function on RA4/T1G/OSC2/CLKOUT pin, I/O function on RA5/T1CKI/OSC1/CLKIN
_INTRC_OSC_CLKOUT    .EQ  $3FFD  INTOSC oscillator: CLKOUT function on RA4/T1G/OSC2/CLKOUT pin, I/O function on RA5/T1CKI/OSC1/CLKIN
_FOSC_EXTRCIO        .EQ  $3FFE  RCIO oscillator: I/O function on RA4/T1G/OSC2/CLKOUT pin, RC on RA5/T1CKI/OSC1/CLKIN
_EXTRC_OSC_NOCLKOUT  .EQ  $3FFE  RCIO oscillator: I/O function on RA4/T1G/OSC2/CLKOUT pin, RC on RA5/T1CKI/OSC1/CLKIN
_FOSC_EXTRCCLK       .EQ  $3FFF  RC oscillator: CLKOUT function on RA4/T1G/OSC2/CLKOUT pin, RC on RA5/T1CKI/OSC1/CLKIN
_EXTRC_OSC_CLKOUT    .EQ  $3FFF  RC oscillator: CLKOUT function on RA4/T1G/OSC2/CLKOUT pin, RC on RA5/T1CKI/OSC1/CLKIN

_WDTE_OFF            .EQ  $3FF7  WDT disabled and can be enabled by SWDTEN bit of the WDTCON register
_WDT_OFF             .EQ  $3FF7  WDT disabled and can be enabled by SWDTEN bit of the WDTCON register
_WDTE_ON             .EQ  $3FFF  WDT enabled
_WDT_ON              .EQ  $3FFF  WDT enabled

_PWRTE_ON            .EQ  $3FEF  PWRT enabled
_PWRTE_OFF           .EQ  $3FFF  PWRT disabled

_MCLRE_OFF           .EQ  $3FDF  MCLR pin function is alternate function, MCLR function is internally disabled
_MCLRE_ON            .EQ  $3FFF  MCLR pin is MCLR function and weak internal pull-up is enabled

_CP_ON               .EQ  $3FBF  Program memory is external read and write-protected
_CP_OFF              .EQ  $3FFF  Program memory is not code protected

_CPD_ON              .EQ  $3F7F  Data memory is external read protected
_CPD_OFF             .EQ  $3FFF  Data memory is not code protected

_BOREN_OFF           .EQ  $3CFF  BOD and SBODEN disabled
_BOD_OFF             .EQ  $3CFF  BOD and SBODEN disabled
_BOREN_SBODEN        .EQ  $3DFF  SBODEN controls BOD function
_BOD_SBODEN          .EQ  $3DFF  SBODEN controls BOD function
_BOREN_NSLEEP        .EQ  $3EFF  BOD enabled while running and disabled in Sleep. SBODEN bit disabled.
_BOD_NSLEEP          .EQ  $3EFF  BOD enabled while running and disabled in Sleep. SBODEN bit disabled.
_BOREN_ON            .EQ  $3FFF  BOD enabled and SBOdEN bit disabled
_BOD_ON              .EQ  $3FFF  BOD enabled and SBOdEN bit disabled

_IESO_OFF            .EQ  $3BFF  Internal External Switchover mode disabled
_IESO_ON             .EQ  $3FFF  Internal External Switchover mode enabled

_FCMEN_OFF           .EQ  $37FF  Fail-Safe Clock Monitor disabled
_FCMEN_ON            .EQ  $3FFF  Fail-Safe Clock Monitor enabled

_WURE_ON             .EQ  $2FFF  Wake-up and Reset enabled
_WUREN_ON            .EQ  $2FFF  Wake-up and Reset enabled
_WURE_OFF            .EQ  $3FFF  Standard wake-up and continue enabled
_WUREN_OFF           .EQ  $3FFF  Standard wake-up and continue enabled

;----- DEVID .EQates --------------------------------------------------
_DEVID1          .EQ  $2006

;----- IDLOC .EQates --------------------------------------------------
_IDLOC0          .EQ  $2000
_IDLOC1          .EQ  $2001
_IDLOC2          .EQ  $2002
_IDLOC3          .EQ  $2003


