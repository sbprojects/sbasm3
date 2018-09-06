;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC12C671 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC12C671 microcontroller.  These names
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
ADRES            .EQ  $1E
ADCON0           .EQ  $1F

;-----Bank1------------------
OPTION_REG       .EQ  $81
; TRIS is a reserved word
TRIS             .EQ  $85
TRISIO           .EQ  $85
PIE1             .EQ  $8C
PCON             .EQ  $8E
OSCCAL           .EQ  $8F
ADCON1           .EQ  $9F

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


;----- PIR1 Bits -----------------------------------------------------
ADIF             .EQ  6


;----- ADCON0 Bits -----------------------------------------------------
ADON             .EQ  0
GO_NOT_DONE      .EQ  2

GO_DONE          .EQ  2
CHS0             .EQ  3
CHS1             .EQ  4
ADCS0            .EQ  6
ADCS1            .EQ  7

NOT_DONE         .EQ  2

GO               .EQ  2


;----- OPTION_REG Bits -----------------------------------------------------
PSA              .EQ  3
T0SE             .EQ  4
T0CS             .EQ  5
INTEDG           .EQ  6
NOT_GPPU         .EQ  7

PS0              .EQ  0
PS1              .EQ  1
PS2              .EQ  2


;----- TRIS Bits -----------------------------------------------------
TRIS0            .EQ  0
TRIS1            .EQ  1
TRIS2            .EQ  2
TRIS3            .EQ  3
TRIS4            .EQ  4
TRIS5            .EQ  5


;----- TRISIO Bits -----------------------------------------------------
TRIS0            .EQ  0
TRIS1            .EQ  1
TRIS2            .EQ  2
TRIS3            .EQ  3
TRIS4            .EQ  4
TRIS5            .EQ  5


;----- PIE1 Bits -----------------------------------------------------
ADIE             .EQ  6


;----- PCON Bits -----------------------------------------------------
NOT_POR          .EQ  1


;----- OSCCAL Bits -----------------------------------------------------
CALSLW           .EQ  2
CALFST           .EQ  3

CAL0             .EQ  4
CAL1             .EQ  5
CAL2             .EQ  6
CAL3             .EQ  7


;----- ADCON1 Bits -----------------------------------------------------
PCFG0            .EQ  0
PCFG1            .EQ  1
PCFG2            .EQ  2




;==========================================================================
;
;       RAM Definitions
;
;==========================================================================
_MAXRAM         .EQ   $00FF

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
_FOSC_LP             .EQ  $3FF8  LP oscillator
_LP_OSC              .EQ  $3FF8  LP oscillator
_FOSC_XT             .EQ  $3FF9  XT oscillator
_XT_OSC              .EQ  $3FF9  XT oscillator
_FOSC_HS             .EQ  $3FFA  HS oscillator
_HS_OSC              .EQ  $3FFA  HS oscillator
_FOSC_INTRCIO        .EQ  $3FFC  INTRC, OSC2 is I/O
_INTRC_OSC_NOCLKOUT  .EQ  $3FFC  INTRC, OSC2 is I/O
_INTRC_OSC           .EQ  $3FFC  INTRC, OSC2 is I/O
_FOSC_INTRCCLK       .EQ  $3FFD  INTRC, Clockout on OSC2
_INTRC_OSC_CLKOUT    .EQ  $3FFD  INTRC, Clockout on OSC2
_FOSC_EXTRCIO        .EQ  $3FFE  EXTRC, OSC2 is I/O
_EXTRC_OSC_NOCLKOUT  .EQ  $3FFE  EXTRC, OSC2 is I/O
_EXTRC_OSC           .EQ  $3FFE  EXTRC, OSC2 is I/O
_FOSC_EXTRCCLK       .EQ  $3FFF  EXTRC, Clockout on OSC2
_EXTRC_OSC_CLKOUT    .EQ  $3FFF  EXTRC, Clockout on OSC2

_WDTE_OFF            .EQ  $3FF7  WDT disabled
_WDT_OFF             .EQ  $3FF7  WDT disabled
_WDTE_ON             .EQ  $3FFF  WDT enabled
_WDT_ON              .EQ  $3FFF  WDT enabled

_PWRTE_ON            .EQ  $3FEF  Enabled
_PWRTE_OFF           .EQ  $3FFF  Disabled

_CP_ALL              .EQ  $009F  All memory is code protected
_CP_75               .EQ  $15BF  0200h-03FEh code protected
_CP_50               .EQ  $2ADF  Do not use
_CP_OFF              .EQ  $3FFF  code protection off

_MCLRE_OFF           .EQ  $3F7F  Master Clear disabled
_MCLRE_ON            .EQ  $3FFF  Master Clear enabled


;----- IDLOC .EQates --------------------------------------------------
_IDLOC0          .EQ  $2000
_IDLOC1          .EQ  $2001
_IDLOC2          .EQ  $2002
_IDLOC3          .EQ  $2003

