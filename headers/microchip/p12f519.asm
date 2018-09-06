;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC12F519 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC12F519 microcontroller.  These names
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

                  .CR   pic12
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
OSCCAL           .EQ  $05
GPIO             .EQ  $06
PORTB            .EQ  $06

;-----Bank1------------------
EECON            .EQ  $21
EEDATA           .EQ  $25
EEADR            .EQ  $26

;----- STATUS Bits -----------------------------------------------------
C                .EQ  0
DC               .EQ  1
Z                .EQ  2
NOT_PD           .EQ  3
NOT_TO           .EQ  4
PA0              .EQ  5
GPWUF            .EQ  7


;----- OSCCAL Bits -----------------------------------------------------
CAL0             .EQ  1
CAL1             .EQ  2
CAL2             .EQ  3
CAL3             .EQ  4
CAL4             .EQ  5
CAL5             .EQ  6
CAL6             .EQ  7


;----- GPIO Bits -----------------------------------------------------
GP0              .EQ  0
GP1              .EQ  1
GP2              .EQ  2
GP3              .EQ  3
GP4              .EQ  4
GP5              .EQ  5

RB0              .EQ  0
RB1              .EQ  1
RB2              .EQ  2
RB3              .EQ  3
RB4              .EQ  4
RB5              .EQ  5


;----- PORTB Bits -----------------------------------------------------
GP0              .EQ  0
GP1              .EQ  1
GP2              .EQ  2
GP3              .EQ  3
GP4              .EQ  4
GP5              .EQ  5

RB0              .EQ  0
RB1              .EQ  1
RB2              .EQ  2
RB3              .EQ  3
RB4              .EQ  4
RB5              .EQ  5


;----- EECON Bits -----------------------------------------------------
RD               .EQ  0
WR               .EQ  1
WREN             .EQ  2
WRERR            .EQ  3
FREE             .EQ  4



;----- OPTION_REG Bits -----------------------------------------------------
PSA              .EQ  3
T0SE             .EQ  4
T0CS             .EQ  5
NOT_GPPU         .EQ  6
NOT_GPWU         .EQ  7

PS0              .EQ  0
PS1              .EQ  1
PS2              .EQ  2


;----- TRISB Bits -----------------------------------------------------
TRISGPIO0        .EQ  0
TRISGPIO1        .EQ  1
TRISGPIO2        .EQ  2
TRISGPIO3        .EQ  3
TRISGPIO4        .EQ  4
TRISGPIO5        .EQ  5

TRISB0           .EQ  0
TRISB1           .EQ  1
TRISB2           .EQ  2
TRISB3           .EQ  3
TRISB4           .EQ  4
TRISB5           .EQ  5


;----- TRISGPIO Bits -----------------------------------------------------
TRISGPIO0        .EQ  0
TRISGPIO1        .EQ  1
TRISGPIO2        .EQ  2
TRISGPIO3        .EQ  3
TRISGPIO4        .EQ  4
TRISGPIO5        .EQ  5

TRISB0           .EQ  0
TRISB1           .EQ  1
TRISB2           .EQ  2
TRISB3           .EQ  3
TRISB4           .EQ  4
TRISB5           .EQ  5



;==========================================================================
;
;       RAM Definitions
;
;==========================================================================

_MAXRAM       .EQ  $003F

;==========================================================================
;
;       Configuration Bits
;
;   NAME            Address
;   CONFIG             FFFh
;
;==========================================================================

; The following is an assignment of address values for all of the
; configuration registers for the purpose of table reads
_CONFIG      .EQ  $FFF

;----- CONFIG Options --------------------------------------------------
_FOSC_LP     .EQ  $0FFC  LP Osc With 18 ms DRT
_LP_OSC      .EQ  $0FFC  LP Osc With 18 ms DRT
_FOSC_XT     .EQ  $0FFD  XT Osc With 18 ms DRT
_XT_OSC      .EQ  $0FFD  XT Osc With 18 ms DRT
_FOSC_INTRC  .EQ  $0FFE  INTRC With 1 ms DRT
_IntRC_OSC   .EQ  $0FFE  INTRC With 1 ms DRT
_FOSC_EXTRC  .EQ  $0FFF  EXTRC With 1 ms DRT
_ExtRC_OSC   .EQ  $0FFF  EXTRC With 1 ms DRT

_WDTE_OFF    .EQ  $0FFB  Disabled
_WDTE_ON     .EQ  $0FFF  Enabled

_CP_ON       .EQ  $0FF7  Code protection on
_CP_OFF      .EQ  $0FFF  Code protection off

_MCLRE_OFF   .EQ  $0FEF  RB3/MCLR Functions as RB3
_MCLRE_ON    .EQ  $0FFF  RB3/MCLR Functions as MCLR

_IOSCFS_4MHz .EQ  $0FDF  4 MHz INTOSC Speed
_IOSCFS_8MHz .EQ  $0FFF  8 MHz INTOSC Speed

_CPDF_ON     .EQ  $0FBF  Code protection on
_CPDF_OFF    .EQ  $0FFF  Code protection off


;----- IDLOC .EQates --------------------------------------------------
_IDLOC0          .EQ  $440
_IDLOC1          .EQ  $441
_IDLOC2          .EQ  $442
_IDLOC3          .EQ  $443


