;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC12F629 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC12F629 microcontroller.  These names
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
PCLATH           .EQ  $0A
INTCON           .EQ  $0B
PIR1             .EQ  $0C
TMR1             .EQ  $0E
TMR1L            .EQ  $0E
TMR1H            .EQ  $0F
T1CON            .EQ  $10
CMCON            .EQ  $19

;-----Bank1------------------
OPTION_REG       .EQ  $81
TRISIO           .EQ  $85
PIE1             .EQ  $8C
PCON             .EQ  $8E
OSCCAL           .EQ  $90
WPU              .EQ  $95
IOC              .EQ  $96
IOCB             .EQ  $96
VRCON            .EQ  $99
EEDAT            .EQ  $9A
EEDATA           .EQ  $9A
EEADR            .EQ  $9B
EECON1           .EQ  $9C
EECON2           .EQ  $9D

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

GPIO0            .EQ  0
GPIO1            .EQ  1
GPIO2            .EQ  2
GPIO3            .EQ  3
GPIO4            .EQ  4
GPIO5            .EQ  5


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
CMIF             .EQ  3
ADIF             .EQ  6
EEIF             .EQ  7

T1IF             .EQ  0


;----- T1CON Bits -----------------------------------------------------
TMR1ON           .EQ  0
TMR1CS           .EQ  1
NOT_T1SYNC       .EQ  2
T1OSCEN          .EQ  3
TMR1GE           .EQ  6

T1CKPS0          .EQ  4
T1CKPS1          .EQ  5


;----- CMCON Bits -----------------------------------------------------
CIS              .EQ  3
CINV             .EQ  4
COUT             .EQ  6

CM0              .EQ  0
CM1              .EQ  1
CM2              .EQ  2


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
CMIE             .EQ  3
ADIE             .EQ  6
EEIE             .EQ  7

T1IE             .EQ  0


;----- PCON Bits -----------------------------------------------------
NOT_BOR          .EQ  0
NOT_POR          .EQ  1

NOT_BOD          .EQ  0


;----- OSCCAL Bits -----------------------------------------------------
CAL0             .EQ  2
CAL1             .EQ  3
CAL2             .EQ  4
CAL3             .EQ  5
CAL4             .EQ  6
CAL5             .EQ  7


;----- WPU Bits -----------------------------------------------------
WPU0             .EQ  0
WPU1             .EQ  1
WPU2             .EQ  2
WPU4             .EQ  4
WPU5             .EQ  5


;----- IOC Bits -----------------------------------------------------
IOC0             .EQ  0
IOC1             .EQ  1
IOC2             .EQ  2
IOC3             .EQ  3
IOC4             .EQ  4
IOC5             .EQ  5

IOCB0            .EQ  0
IOCB1            .EQ  1
IOCB2            .EQ  2
IOCB3            .EQ  3
IOCB4            .EQ  4
IOCB5            .EQ  5


;----- IOCB Bits -----------------------------------------------------
IOC0             .EQ  0
IOC1             .EQ  1
IOC2             .EQ  2
IOC3             .EQ  3
IOC4             .EQ  4
IOC5             .EQ  5

IOCB0            .EQ  0
IOCB1            .EQ  1
IOCB2            .EQ  2
IOCB3            .EQ  3
IOCB4            .EQ  4
IOCB5            .EQ  5


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




;==========================================================================
;
;       RAM Definitions
;
;==========================================================================

_MAXRAM         .EQ  $00DF

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
_FOSC_LP             .EQ  $3FF8  LP oscillator: Low power crystal on GP4/OSC2/CLKOUT and GP5/OSC1/CLKIN
_LP_OSC              .EQ  $3FF8  LP oscillator: Low power crystal on GP4/OSC2/CLKOUT and GP5/OSC1/CLKIN
_FOSC_XT             .EQ  $3FF9  XT oscillator: Crystal/resonator on GP4/OSC2/CLKOUT and GP5/OSC1/CLKIN
_XT_OSC              .EQ  $3FF9  XT oscillator: Crystal/resonator on GP4/OSC2/CLKOUT and GP5/OSC1/CLKIN
_FOSC_HS             .EQ  $3FFA  HS oscillator: High speed crystal/resonator on GP4/OSC2/CLKOUT and GP5/OSC1/CLKIN
_HS_OSC              .EQ  $3FFA  HS oscillator: High speed crystal/resonator on GP4/OSC2/CLKOUT and GP5/OSC1/CLKIN
_FOSC_EC             .EQ  $3FFB  EC: I/O function on GP4/OSC2/CLKOUT pin, CLKIN on GP5/OSC1/CLKIN
_EC_OSC              .EQ  $3FFB  EC: I/O function on GP4/OSC2/CLKOUT pin, CLKIN on GP5/OSC1/CLKIN
_FOSC_INTRCIO        .EQ  $3FFC  INTOSC oscillator: I/O function on GP4/OSC2/CLKOUT pin, I/O function on GP5/OSC1/CLKIN
_INTRC_OSC_NOCLKOUT  .EQ  $3FFC  INTOSC oscillator: I/O function on GP4/OSC2/CLKOUT pin, I/O function on GP5/OSC1/CLKIN
_FOSC_INTRCCLK       .EQ  $3FFD  INTOSC oscillator: CLKOUT function on GP4/OSC2/CLKOUT pin, I/O function on GP5/OSC1/CLKIN
_INTRC_OSC_CLKOUT    .EQ  $3FFD  INTOSC oscillator: CLKOUT function on GP4/OSC2/CLKOUT pin, I/O function on GP5/OSC1/CLKIN
_FOSC_EXTRCIO        .EQ  $3FFE  RC oscillator: I/O function on GP4/OSC2/CLKOUT pin, RC on GP5/OSC1/CLKIN
_EXTRC_OSC_NOCLKOUT  .EQ  $3FFE  RC oscillator: I/O function on GP4/OSC2/CLKOUT pin, RC on GP5/OSC1/CLKIN
_FOSC_EXTRCCLK       .EQ  $3FFF  RC oscillator: CLKOUT function on GP4/OSC2/CLKOUT pin, RC on GP5/OSC1/CLKIN
_EXTRC_OSC_CLKOUT    .EQ  $3FFF  RC oscillator: CLKOUT function on GP4/OSC2/CLKOUT pin, RC on GP5/OSC1/CLKIN

_WDTE_OFF            .EQ  $3FF7  WDT disabled
_WDT_OFF             .EQ  $3FF7  WDT disabled
_WDTE_ON             .EQ  $3FFF  WDT enabled
_WDT_ON              .EQ  $3FFF  WDT enabled

_PWRTE_ON            .EQ  $3FEF  PWRT enabled
_PWRTE_OFF           .EQ  $3FFF  PWRT disabled

_MCLRE_OFF           .EQ  $3FDF  GP3/MCLR pin function is digital I/O, MCLR internally tied to VDD
_MCLRE_ON            .EQ  $3FFF  GP3/MCLR pin function is MCLR

_BOREN_OFF           .EQ  $3FBF  BOD disabled
_BODEN_OFF           .EQ  $3FBF  BOD disabled
_BOREN_ON            .EQ  $3FFF  BOD enabled
_BODEN_ON            .EQ  $3FFF  BOD enabled

_CP_ON               .EQ  $3F7F  Program Memory code protection is enabled
_CP_OFF              .EQ  $3FFF  Program Memory code protection is disabled

_CPD_ON              .EQ  $3EFF  Data memory code protection is enabled
_CPD_OFF             .EQ  $3FFF  Data memory code protection is disabled

;----- DEVID .EQates --------------------------------------------------
_DEVID1          .EQ  $2006

;----- IDLOC .EQates --------------------------------------------------
_IDLOC0          .EQ  $2000
_IDLOC1          .EQ  $2001
_IDLOC2          .EQ  $2002
_IDLOC3          .EQ  $2003


