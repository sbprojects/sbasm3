;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC12C508A processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC12C508A microcontroller.  These names
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
                  .MS   512

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

;----- STATUS Bits -----------------------------------------------------
C                .EQ  0
DC               .EQ  1
Z                .EQ  2
NOT_PD           .EQ  3
NOT_TO           .EQ  4
PA0              .EQ  5
GPWUF            .EQ  7


;----- OSCCAL Bits -----------------------------------------------------
CAL0             .EQ  2
CAL1             .EQ  3
CAL2             .EQ  4
CAL3             .EQ  5
CAL4             .EQ  6
CAL5             .EQ  7

OSCSLW           .EQ  2
OSCFST           .EQ  3


;----- GPIO Bits -----------------------------------------------------
GP0              .EQ  0
GP1              .EQ  1
GP2              .EQ  2
GP3              .EQ  3
GP4              .EQ  4
GP5              .EQ  5



;----- OPTION_REG Bits -----------------------------------------------------
PSA              .EQ  3
T0SE             .EQ  4
T0CS             .EQ  5
NOT_GPPU         .EQ  6
NOT_GPWU         .EQ  7

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



;==========================================================================
;
;       RAM Definitions
;
;==========================================================================

_MAXRAM          .EQ   $001F

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
_OSC_LP      .EQ  $0FFC  LP oscillator
_LP_OSC      .EQ  $0FFC  LP oscillator
_OSC_XT      .EQ  $0FFD  XT oscillator
_XT_OSC      .EQ  $0FFD  XT oscillator
_OSC_IntRC   .EQ  $0FFE  internal RC oscillator
_IntRC_OSC   .EQ  $0FFE  internal RC oscillator
_OSC_ExtRC   .EQ  $0FFF  external RC oscillator
_ExtRC_OSC   .EQ  $0FFF  external RC oscillator

_WDT_OFF     .EQ  $0FFB  WDT disabled
_WDT_ON      .EQ  $0FFF  WDT enabled

_CP_ON       .EQ  $0FF7  Code protection on
_CP_OFF      .EQ  $0FFF  Code protection off

_MCLRE_OFF   .EQ  $0FEF  MCLR tied to VDD, (Internally)
_MCLRE_ON    .EQ  $0FFF  MCLR pin enabled


;----- IDLOC .EQates --------------------------------------------------
_IDLOC0          .EQ  $200
_IDLOC1          .EQ  $201
_IDLOC2          .EQ  $202
_IDLOC3          .EQ  $203


