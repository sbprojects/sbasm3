;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC16C781 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC16C781 microcontroller.  These names
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
TMR1             .EQ  $000E
TMR1L            .EQ  $000E
TMR1H            .EQ  $000F
T1CON            .EQ  $0010
ADRES            .EQ  $001E
ADCON0           .EQ  $001F

;-----Bank1------------------
OPTION_REG       .EQ  $0081
TRISA            .EQ  $0085
TRISB            .EQ  $0086
PIE1             .EQ  $008C
PCON             .EQ  $008E
WPUB             .EQ  $0095
IOCB             .EQ  $0096
REFCON           .EQ  $009B
LVDCON           .EQ  $009C
ANSEL            .EQ  $009D
ADCON1           .EQ  $009F

;-----Bank2------------------
PMDATL           .EQ  $010C
PMADRL           .EQ  $010D
PMDATH           .EQ  $010E
PMADRH           .EQ  $010F
CALCON           .EQ  $0110
PSMCCON0         .EQ  $0111
PSMCCON1         .EQ  $0112
CM1CON0          .EQ  $0119
CM2CON0          .EQ  $011A
CM2CON1          .EQ  $011B
OPACON           .EQ  $011C
DAC              .EQ  $011E
DACON0           .EQ  $011F

;-----Bank3------------------
PMCON1           .EQ  $018C

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
T0IF             .EQ  $0002
RBIE             .EQ  $0003
INTE             .EQ  $0004
T0IE             .EQ  $0005
PEIE             .EQ  $0006
GIE              .EQ  $0007


;----- PIR1 Bits -----------------------------------------------------
TMR1IF           .EQ  $0000
C1IF             .EQ  $0004
C2IF             .EQ  $0005
ADIF             .EQ  $0006
LVDIF            .EQ  $0007


;----- T1CON Bits -----------------------------------------------------
TMR1ON           .EQ  $0000
TMR1CS           .EQ  $0001
NOT_T1SYNC       .EQ  $0002
T1OSCEN          .EQ  $0003
TMR1GE           .EQ  $0006

T1INSYNC         .EQ  $0002
T1CKPS0          .EQ  $0004
T1CKPS1          .EQ  $0005


;----- ADCON0 Bits -----------------------------------------------------
ADON             .EQ  $0000
CHS3             .EQ  $0001
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
C1IE             .EQ  $0004
C2IE             .EQ  $0005
ADIE             .EQ  $0006
LVDIE            .EQ  $0007


;----- PCON Bits -----------------------------------------------------
NOT_BOR          .EQ  $0000
NOT_POR          .EQ  $0001
OSCF             .EQ  $0003
WDTON            .EQ  $0004

NOT_BO           .EQ  $0000


;----- WPUB Bits -----------------------------------------------------
WPUB0            .EQ  $0000
WPUB1            .EQ  $0001
WPUB2            .EQ  $0002
WPUB3            .EQ  $0003
WPUB4            .EQ  $0004
WPUB5            .EQ  $0005
WPUB6            .EQ  $0006
WPUB7            .EQ  $0007


;----- IOCB Bits -----------------------------------------------------
IOCB0            .EQ  $0000
IOCB1            .EQ  $0001
IOCB2            .EQ  $0002
IOCB3            .EQ  $0003
IOCB4            .EQ  $0004
IOCB5            .EQ  $0005
IOCB6            .EQ  $0006
IOCB7            .EQ  $0007


;----- REFCON Bits -----------------------------------------------------
VROE             .EQ  $0002
VREN             .EQ  $0003

VREFOE           .EQ  $0002
VREFEN           .EQ  $0003


;----- LVDCON Bits -----------------------------------------------------
LVDEN            .EQ  $0004
BGST             .EQ  $0005

LV0              .EQ  $0000
LV1              .EQ  $0001
LV2              .EQ  $0002
LV3              .EQ  $0003


;----- ANSEL Bits -----------------------------------------------------
ANS0             .EQ  $0000
ANS1             .EQ  $0001
ANS2             .EQ  $0002
ANS3             .EQ  $0003
ANS4             .EQ  $0004
ANS5             .EQ  $0005
ANS6             .EQ  $0006
ANS7             .EQ  $0007


;----- ADCON1 Bits -----------------------------------------------------
VCFG0            .EQ  $0004
VCFG1            .EQ  $0005


;----- CALCON Bits -----------------------------------------------------
CALREF           .EQ  $0005
CALERR           .EQ  $0006
CAL              .EQ  $0007


;----- PSMCCON0 Bits -----------------------------------------------------
DC0              .EQ  $0000
DC1              .EQ  $0001
MAXDC0           .EQ  $0002
MAXDC1           .EQ  $0003
MINDC0           .EQ  $0004
MINDC1           .EQ  $0005
SMCCL0           .EQ  $0006
SMCCL1           .EQ  $0007


;----- PSMCCON1 Bits -----------------------------------------------------
SMCCS            .EQ  $0000
PWM_NOT_PSM      .EQ  $0001
SMCOM            .EQ  $0002
SCEN             .EQ  $0003
S1BPOL           .EQ  $0005
S1APOL           .EQ  $0006
SMCON            .EQ  $0007

PWM              .EQ  $0001

PSM              .EQ  $0001

NOT_PSM          .EQ  $0001


;----- CM1CON0 Bits -----------------------------------------------------
C1R              .EQ  $0002
C1SP             .EQ  $0003
C1POL            .EQ  $0004
C1OE             .EQ  $0005
C1OUT            .EQ  $0006
C1ON             .EQ  $0007

C1CH0            .EQ  $0000
C1CH1            .EQ  $0001


;----- CM2CON0 Bits -----------------------------------------------------
C2R              .EQ  $0002
C2SP             .EQ  $0003
C2POL            .EQ  $0004
C2OE             .EQ  $0005
C2OUT            .EQ  $0006
C2ON             .EQ  $0007

C2CH0            .EQ  $0000
C2CH1            .EQ  $0001


;----- CM2CON1 Bits -----------------------------------------------------
C2SYNC           .EQ  $0000
MC2OUT           .EQ  $0006
MC1OUT           .EQ  $0007


;----- OPACON Bits -----------------------------------------------------
GBWP             .EQ  $0000
CMPEN            .EQ  $0006
OPAON            .EQ  $0007


;----- DAC Bits -----------------------------------------------------
DA0              .EQ  $0000
DA1              .EQ  $0001
DA2              .EQ  $0002
DA3              .EQ  $0003
DA4              .EQ  $0004
DA5              .EQ  $0005
DA6              .EQ  $0006
DA7              .EQ  $0007


;----- DACON0 Bits -----------------------------------------------------
DAOE             .EQ  $0006
DAON             .EQ  $0007

DARS0            .EQ  $0000
DARS1            .EQ  $0001


;----- PMCON1 Bits -----------------------------------------------------
RD               .EQ  $0000




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
_FOSC_INTRCCLK       .EQ  $3FFD  INTRC, clockout on OSC2
_INTRC_OSC_CLKOUT    .EQ  $3FFD  INTRC, clockout on OSC2
_FOSC_ER_NOCLKOUT    .EQ  $3FFE  RC I/O
_ER_OSC_NOCLKOUT     .EQ  $3FFE  RC I/O
_FOSC_ER_CLKOUT      .EQ  $3FFF  RC CLKOUT
_ER_OSC_CLKOUT       .EQ  $3FFF  RC CLKOUT

_WDTE_OFF            .EQ  $3FF7  WDT disabled
_WDT_OFF             .EQ  $3FF7  WDT disabled
_WDTE_ON             .EQ  $3FFF  WDT enabled
_WDT_ON              .EQ  $3FFF  WDT enabled

_PWRTE_ON            .EQ  $3FEF  PWRT enabled
_PWRTE_OFF           .EQ  $3FFF  PWRT disabled

_MCLRE_OFF           .EQ  $3FDF  Internal
_MCLRE_ON            .EQ  $3FFF  External

_BOREN_OFF           .EQ  $3FBF  BOR disabled
_BODEN_OFF           .EQ  $3FBF  BOR disabled
_BOREN_ON            .EQ  $3FFF  BOR enabled
_BODEN_ON            .EQ  $3FFF  BOR enabled

_CP_ALL              .EQ  $0CFF  All memory is code protected
_CP_OFF              .EQ  $3FFF  Code protection off

_BODENV_45           .EQ  $33FF  VBOR set to 4.5V
_VBOR_45             .EQ  $33FF  VBOR set to 4.5V
_BODENV_42           .EQ  $37FF  VBOR set to 4.2V
_VBOR_42             .EQ  $37FF  VBOR set to 4.2V
_BODENV_27           .EQ  $3BFF  VBOR set to 2.7V
_VBOR_27             .EQ  $3BFF  VBOR set to 2.7V
_BODENV_25           .EQ  $3FFF  VBOR set to 2.5V
_VBOR_25             .EQ  $3FFF  VBOR set to 2.5V


;----- IDLOC Equates --------------------------------------------------
_IDLOC0          .EQ  $2000
_IDLOC1          .EQ  $2001
_IDLOC2          .EQ  $2002
_IDLOC3          .EQ  $2003
