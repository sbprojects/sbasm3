;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC16C433 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC16C433 microcontroller.  These names
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
GPIO             .EQ  $0005
PCLATH           .EQ  $000A
INTCON           .EQ  $000B
PIR1             .EQ  $000C
ADRES            .EQ  $001E
ADCON0           .EQ  $001F

;-----Bank1------------------
OPTION_REG       .EQ  $0081
; TRIS is a reserved word
; TRIS             .EQ  $0085
TRISIO           .EQ  $0085
PIE1             .EQ  $008C
PCON             .EQ  $008E
OSCCAL           .EQ  $008F
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

LINRX            .EQ  $0006
LINTX            .EQ  $0007


;----- GPIO Bits -----------------------------------------------------
GP0              .EQ  $0000
GP1              .EQ  $0001
GP2              .EQ  $0002
GP3              .EQ  $0003
GP4              .EQ  $0004
GP5              .EQ  $0005
LINRX            .EQ  $0006
LINTX            .EQ  $0007


;----- INTCON Bits -----------------------------------------------------
GPIF             .EQ  $0000
INTF             .EQ  $0001
T0IF             .EQ  $0002
GPIE             .EQ  $0003
INTE             .EQ  $0004
T0IE             .EQ  $0005
PEIE             .EQ  $0006
GIE              .EQ  $0007

TMR0IF           .EQ  $0002
TMR0IE           .EQ  $0005


;----- PIR1 Bits -----------------------------------------------------
ADIF             .EQ  $0006


;----- ADCON0 Bits -----------------------------------------------------
ADON             .EQ  $0000
GO_NOT_DONE      .EQ  $0002

GO               .EQ  $0002
CHS0             .EQ  $0003
CHS1             .EQ  $0004
ADCS0            .EQ  $0006
ADCS1            .EQ  $0007

NOT_DONE         .EQ  $0002

GO_DONE          .EQ  $0002


;----- OPTION_REG Bits -----------------------------------------------------
PSA              .EQ  $0003
T0SE             .EQ  $0004
T0CS             .EQ  $0005
INTEDG           .EQ  $0006
NOT_GPPU         .EQ  $0007

PS0              .EQ  $0000
PS1              .EQ  $0001
PS2              .EQ  $0002


;----- TRIS Bits -----------------------------------------------------
TRIS0            .EQ  $0000
TRIS1            .EQ  $0001
TRIS2            .EQ  $0002
TRIS3            .EQ  $0003
TRIS4            .EQ  $0004
TRIS5            .EQ  $0005


;----- TRISIO Bits -----------------------------------------------------
TRIS0            .EQ  $0000
TRIS1            .EQ  $0001
TRIS2            .EQ  $0002
TRIS3            .EQ  $0003
TRIS4            .EQ  $0004
TRIS5            .EQ  $0005


;----- PIE1 Bits -----------------------------------------------------
ADIE             .EQ  $0006


;----- PCON Bits -----------------------------------------------------
NOT_POR          .EQ  $0001


;----- OSCCAL Bits -----------------------------------------------------
CALSLW           .EQ  $0002
CALFST           .EQ  $0003

CAL0             .EQ  $0004
CAL1             .EQ  $0005
CAL2             .EQ  $0006
CAL3             .EQ  $0007


;----- ADCON1 Bits -----------------------------------------------------
PCFG0            .EQ  $0000
PCFG1            .EQ  $0001
PCFG2            .EQ  $0002




;==========================================================================
;
;       RAM Definitions
;
;==========================================================================

_MAXRAM          .EQ  $00FF

;==========================================================================
;
;       Configuration Bits
;
;   NAME            Address
;   CONFIG1           2007h
;
;==========================================================================

; The following is an assignment of address values for all of the
; configuration registers for the purpose of table reads
_CONFIG1        .EQ  $2007

;----- CONFIG1 Options --------------------------------------------------
_FOSC_LP             .EQ  $3FF8  LP oscillator
_LP_OSC              .EQ  $3FF8  LP oscillator
_FOSC_XT             .EQ  $3FF9  XT oscillator
_XT_OSC              .EQ  $3FF9  XT oscillator
_FOSC_HS             .EQ  $3FFA  HS oscillator
_HS_OSC              .EQ  $3FFA  HS oscillator
_FOSC_EXTCLK         .EQ  $3FFB  EC I/O
_EXTCLK_OSC          .EQ  $3FFB  EC I/O
_FOSC_INTRCIO        .EQ  $3FFC  INTRC, OSC2 is I/O
_INTRC_OSC_NOCLKOUT  .EQ  $3FFC  INTRC, OSC2 is I/O
_INTRC_OSC           .EQ  $3FFC  INTRC, OSC2 is I/O
_FOSC_INTRCCLK       .EQ  $3FFD  INTRC, clockout on OSC2
_INTRC_OSC_CLKOUT    .EQ  $3FFD  INTRC, clockout on OSC2
_FOSC_EXTRCIO        .EQ  $3FFE  EXTRC, OSC2 is I/O
_EXTRC_OSC_NOCLKOUT  .EQ  $3FFE  EXTRC, OSC2 is I/O
_EXTRC_OSC           .EQ  $3FFE  EXTRC, OSC2 is I/O
_FOSC_EXTRCCLK       .EQ  $3FFF  EXTRC, clockout on OSC2
_EXTRC_OSC_CLKOUT    .EQ  $3FFF  EXTRC, clockout on OSC2

_WDTE_OFF            .EQ  $3FF7  WDT disabled
_WDT_OFF             .EQ  $3FF7  WDT disabled
_WDTE_ON             .EQ  $3FFF  WDT enabled
_WDT_ON              .EQ  $3FFF  WDT enabled

_PWRTE_ON            .EQ  $3FEF  PWRT enabled
_PWRTE_OFF           .EQ  $3FFF  PWRT disabled

_CP_ALL              .EQ  $009F  All memory is code protected
_CP_75               .EQ  $15BF  0200h-07FEh code protected
_CP_50               .EQ  $2ADF  0400h-07FEh code protected
_CP_OFF              .EQ  $3FFF  Code protection off

_MCLRE_OFF           .EQ  $3F7F  Internal
_MCLRE_ON            .EQ  $3FFF  External


;----- IDLOC Equates --------------------------------------------------
_IDLOC0          .EQ  $2000
_IDLOC1          .EQ  $2001
_IDLOC2          .EQ  $2002
_IDLOC3          .EQ  $2003
