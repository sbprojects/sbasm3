;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC10F320 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC10F320 microcontroller.  These names
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
                  .MS   256

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
PORTA            .EQ  $05
TRISA            .EQ  $06
LATA             .EQ  $07
ANSELA           .EQ  $08
WPUA             .EQ  $09
PCLATH           .EQ  $0A
INTCON           .EQ  $0B
PIR1             .EQ  $0C
PIE1             .EQ  $0D
OPTION_REG       .EQ  $0E
PCON             .EQ  $0F
OSCCON           .EQ  $10
TMR2             .EQ  $11
PR2              .EQ  $12
T2CON            .EQ  $13
PWM1DCL          .EQ  $14
PWM1DCH          .EQ  $15
PWM1CON          .EQ  $16
PWM1CON0         .EQ  $16
PWM2DCL          .EQ  $17
PWM2DCH          .EQ  $18
PWM2CON          .EQ  $19
PWM2CON0         .EQ  $19
IOCAP            .EQ  $1A
IOCAN            .EQ  $1B
IOCAF            .EQ  $1C
FVRCON           .EQ  $1D
ADRES            .EQ  $1E
ADCON            .EQ  $1F
PMADR            .EQ  $20
PMADRL           .EQ  $20
PMADRH           .EQ  $21
PMDAT            .EQ  $22
PMDATL           .EQ  $22
PMDATH           .EQ  $23
PMCON1           .EQ  $24
PMCON2           .EQ  $25
CLKRCON          .EQ  $26
NCO1ACC          .EQ  $27
NCO1ACCL         .EQ  $27
NCO1ACCH         .EQ  $28
NCO1ACCU         .EQ  $29
NCO1INC          .EQ  $2A
NCO1INCL         .EQ  $2A
NCO1INCH         .EQ  $2B
NCO1INCU         .EQ  $2C
NCO1CON          .EQ  $2D
NCO1CLK          .EQ  $2E
WDTCON           .EQ  $30
CLC1CON          .EQ  $31
CLC1SEL0         .EQ  $32
CLC1SEL1         .EQ  $33
CLC1POL          .EQ  $34
CLC1GLS0         .EQ  $35
CLC1GLS1         .EQ  $36
CLC1GLS2         .EQ  $37
CLC1GLS3         .EQ  $38
CWG1CON0         .EQ  $39
CWG1CON1         .EQ  $3A
CWG1CON2         .EQ  $3B
CWG1DBR          .EQ  $3C
CWG1DBF          .EQ  $3D
VREGCON          .EQ  $3E
BORCON           .EQ  $3F

;----- STATUS Bits -----------------------------------------------------
C                .EQ  0
DC               .EQ  1
Z                .EQ  2
NOT_PD           .EQ  3
NOT_TO           .EQ  4
RP0              .EQ  5
RP1              .EQ  6
IRP              .EQ  7


;----- PORTA Bits -----------------------------------------------------
RA0              .EQ  0
RA1              .EQ  1
RA2              .EQ  2
RA3              .EQ  3


;----- TRISA Bits -----------------------------------------------------
TRISA0           .EQ  0
TRISA1           .EQ  1
TRISA2           .EQ  2


;----- LATA Bits -----------------------------------------------------
LATA0            .EQ  0
LATA1            .EQ  1
LATA2            .EQ  2


;----- ANSELA Bits -----------------------------------------------------
ANSA0            .EQ  0
ANSA1            .EQ  1
ANSA2            .EQ  2


;----- WPUA Bits -----------------------------------------------------
WPUA0            .EQ  0
WPUA1            .EQ  1
WPUA2            .EQ  2
WPUA3            .EQ  3


;----- PCLATH Bits -----------------------------------------------------
PCLH0            .EQ  0


;----- INTCON Bits -----------------------------------------------------
IOCIF            .EQ  0
INTF             .EQ  1
TMR0IF           .EQ  2
IOCIE            .EQ  3
INTE             .EQ  4
TMR0IE           .EQ  5
PEIE             .EQ  6
GIE              .EQ  7


;----- PIR1 Bits -----------------------------------------------------
TMR2IF           .EQ  1
CLC1IF           .EQ  3
NCO1IF           .EQ  4
ADIF             .EQ  6


;----- PIE1 Bits -----------------------------------------------------
TMR2IE           .EQ  1
CLC1IE           .EQ  3
NCO1IE           .EQ  4
ADIE             .EQ  6


;----- OPTION_REG Bits -----------------------------------------------------
PSA              .EQ  3
T0SE             .EQ  4
T0CS             .EQ  5
INTEDG           .EQ  6
NOT_WPUEN        .EQ  7

PS0              .EQ  0
PS1              .EQ  1
PS2              .EQ  2


;----- PCON Bits -----------------------------------------------------
NOT_BOR          .EQ  0
NOT_POR          .EQ  1


;----- OSCCON Bits -----------------------------------------------------
HFIOFS           .EQ  0
LFIOFR           .EQ  1
HFIOFR           .EQ  3

IRCF0            .EQ  4
IRCF1            .EQ  5
IRCF2            .EQ  6


;----- T2CON Bits -----------------------------------------------------
TMR2ON           .EQ  2

T2CKPS0          .EQ  0
T2CKPS1          .EQ  1
TOUTPS0          .EQ  3
TOUTPS1          .EQ  4
TOUTPS2          .EQ  5
TOUTPS3          .EQ  6


;----- PWM1DCL Bits -----------------------------------------------------
PWM1DCL0         .EQ  6
PWM1DCL1         .EQ  7


;----- PWM1DCH Bits -----------------------------------------------------
PWM1DCH0         .EQ  0
PWM1DCH1         .EQ  1
PWM1DCH2         .EQ  2
PWM1DCH3         .EQ  3
PWM1DCH4         .EQ  4
PWM1DCH5         .EQ  5
PWM1DCH6         .EQ  6
PWM1DCH7         .EQ  7


;----- PWM1CON Bits -----------------------------------------------------
PWM1POL          .EQ  4
PWM1OUT          .EQ  5
PWM1OE           .EQ  6
PWM1EN           .EQ  7


;----- PWM1CON0 Bits -----------------------------------------------------
PWM1POL          .EQ  4
PWM1OUT          .EQ  5
PWM1OE           .EQ  6
PWM1EN           .EQ  7


;----- PWM2DCL Bits -----------------------------------------------------
PWM2DCL0         .EQ  6
PWM2DCL1         .EQ  7


;----- PWM2DCH Bits -----------------------------------------------------
PWM2DCH0         .EQ  0
PWM2DCH1         .EQ  1
PWM2DCH2         .EQ  2
PWM2DCH3         .EQ  3
PWM2DCH4         .EQ  4
PWM2DCH5         .EQ  5
PWM2DCH6         .EQ  6
PWM2DCH7         .EQ  7


;----- PWM2CON Bits -----------------------------------------------------
PWM2POL          .EQ  4
PWM2OUT          .EQ  5
PWM2OE           .EQ  6
PWM2EN           .EQ  7


;----- PWM2CON0 Bits -----------------------------------------------------
PWM2POL          .EQ  4
PWM2OUT          .EQ  5
PWM2OE           .EQ  6
PWM2EN           .EQ  7


;----- IOCAP Bits -----------------------------------------------------
IOCAP0           .EQ  0
IOCAP1           .EQ  1
IOCAP2           .EQ  2
IOCAP3           .EQ  3


;----- IOCAN Bits -----------------------------------------------------
IOCAN0           .EQ  0
IOCAN1           .EQ  1
IOCAN2           .EQ  2
IOCAN3           .EQ  3


;----- IOCAF Bits -----------------------------------------------------
IOCAF0           .EQ  0
IOCAF1           .EQ  1
IOCAF2           .EQ  2
IOCAF3           .EQ  3


;----- FVRCON Bits -----------------------------------------------------
TSRNG            .EQ  4
TSEN             .EQ  5
FVRRDY           .EQ  6
FVREN            .EQ  7

ADFVR0           .EQ  0
ADFVR1           .EQ  1


;----- ADCON Bits -----------------------------------------------------
ADON             .EQ  0
GO_NOT_DONE      .EQ  1

CHS0             .EQ  2
CHS1             .EQ  3
CHS2             .EQ  4
ADCS0            .EQ  5
ADCS1            .EQ  6
ADCS2            .EQ  7


;----- PMADRH Bits -----------------------------------------------------
PMADR8           .EQ  0


;----- PMCON1 Bits -----------------------------------------------------
RD               .EQ  0
WR               .EQ  1
WREN             .EQ  2
WRERR            .EQ  3
FREE             .EQ  4
LWLO             .EQ  5
CFGS             .EQ  6


;----- CLKRCON Bits -----------------------------------------------------
CLKROE           .EQ  6


;----- NCO1ACCL Bits -----------------------------------------------------
NCO1ACC0         .EQ  0
NCO1ACC1         .EQ  1
NCO1ACC2         .EQ  2
NCO1ACC3         .EQ  3
NCO1ACC4         .EQ  4
NCO1ACC5         .EQ  5
NCO1ACC6         .EQ  6
NCO1ACC7         .EQ  7


;----- NCO1ACCH Bits -----------------------------------------------------
NCO1ACC8         .EQ  0
NCO1ACC9         .EQ  1
NCO1ACC10        .EQ  2
NCO1ACC11        .EQ  3
NCO1ACC12        .EQ  4
NCO1ACC13        .EQ  5
NCO1ACC14        .EQ  6
NCO1ACC15        .EQ  7


;----- NCO1ACCU Bits -----------------------------------------------------
NCO1ACC16        .EQ  0
NCO1ACC17        .EQ  1
NCO1ACC18        .EQ  2
NCO1ACC19        .EQ  3


;----- NCO1INCL Bits -----------------------------------------------------
NCO1INC0         .EQ  0
NCO1INC1         .EQ  1
NCO1INC2         .EQ  2
NCO1INC3         .EQ  3
NCO1INC4         .EQ  4
NCO1INC5         .EQ  5
NCO1INC6         .EQ  6
NCO1INC7         .EQ  7


;----- NCO1INCH Bits -----------------------------------------------------
NCO1INC8         .EQ  0
NCO1INC9         .EQ  1
NCO1INC10        .EQ  2
NCO1INC11        .EQ  3
NCO1INC12        .EQ  4
NCO1INC13        .EQ  5
NCO1INC14        .EQ  6
NCO1INC15        .EQ  7


;----- NCO1CON Bits -----------------------------------------------------
N1PFM            .EQ  0
N1POL            .EQ  4
N1OUT            .EQ  5
N1OE             .EQ  6
N1EN             .EQ  7


;----- NCO1CLK Bits -----------------------------------------------------
N1CKS0           .EQ  0
N1CKS1           .EQ  1
N1PWS0           .EQ  5
N1PWS1           .EQ  6
N1PWS2           .EQ  7


;----- WDTCON Bits -----------------------------------------------------
SWDTEN           .EQ  0

WDTPS0           .EQ  1
WDTPS1           .EQ  2
WDTPS2           .EQ  3
WDTPS3           .EQ  4
WDTPS4           .EQ  5


;----- CLC1CON Bits -----------------------------------------------------
LC1MODE0         .EQ  0
LC1MODE1         .EQ  1
LC1MODE2         .EQ  2
LC1INTN          .EQ  3
LC1INTP          .EQ  4
LC1OUT           .EQ  5
LC1OE            .EQ  6
LC1EN            .EQ  7

LCMODE0          .EQ  0
LCMODE1          .EQ  1
LCMODE2          .EQ  2
LCINTN           .EQ  3
LCINTP           .EQ  4
LCOUT            .EQ  5
LCOE             .EQ  6
LCEN             .EQ  7



;----- CLC1SEL0 Bits -----------------------------------------------------
LC1D1S0          .EQ  0
LC1D1S1          .EQ  1
LC1D1S2          .EQ  2
LC1D2S0          .EQ  4
LC1D2S1          .EQ  5
LC1D2S2          .EQ  6

D1S0             .EQ  0
D1S1             .EQ  1
D1S2             .EQ  2
D2S0             .EQ  4
D2S1             .EQ  5
D2S2             .EQ  6



;----- CLC1SEL1 Bits -----------------------------------------------------
LC1D3S0          .EQ  0
LC1D3S1          .EQ  1
LC1D3S2          .EQ  2
LC1D4S0          .EQ  4
LC1D4S1          .EQ  5
LC1D4S2          .EQ  6

D3S0             .EQ  0
D3S1             .EQ  1
D3S2             .EQ  2
D4S0             .EQ  4
D4S1             .EQ  5
D4S2             .EQ  6



;----- CLC1POL Bits -----------------------------------------------------
LC1G1POL         .EQ  0
LC1G2POL         .EQ  1
LC1G3POL         .EQ  2
LC1G4POL         .EQ  3
LC1POL           .EQ  7

G1POL            .EQ  0
G2POL            .EQ  1
G3POL            .EQ  2
G4POL            .EQ  3
POL              .EQ  7


;----- CLC1GLS0 Bits -----------------------------------------------------
LC1G1D1N         .EQ  0
LC1G1D1T         .EQ  1
LC1G1D2N         .EQ  2
LC1G1D2T         .EQ  3
LC1G1D3N         .EQ  4
LC1G1D3T         .EQ  5
LC1G1D4N         .EQ  6
LC1G1D4T         .EQ  7

D1N              .EQ  0
D1T              .EQ  1
D2N              .EQ  2
D2T              .EQ  3
D3N              .EQ  4
D3T              .EQ  5
D4N              .EQ  6
D4T              .EQ  7


;----- CLC1GLS1 Bits -----------------------------------------------------
LC1G2D1N         .EQ  0
LC1G2D1T         .EQ  1
LC1G2D2N         .EQ  2
LC1G2D2T         .EQ  3
LC1G2D3N         .EQ  4
LC1G2D3T         .EQ  5
LC1G2D4N         .EQ  6
LC1G2D4T         .EQ  7

D1N              .EQ  0
D1T              .EQ  1
D2N              .EQ  2
D2T              .EQ  3
D3N              .EQ  4
D3T              .EQ  5
D4N              .EQ  6
D4T              .EQ  7


;----- CLC1GLS2 Bits -----------------------------------------------------
LC1G3D1N         .EQ  0
LC1G3D1T         .EQ  1
LC1G3D2N         .EQ  2
LC1G3D2T         .EQ  3
LC1G3D3N         .EQ  4
LC1G3D3T         .EQ  5
LC1G3D4N         .EQ  6
LC1G3D4T         .EQ  7

D1N              .EQ  0
D1T              .EQ  1
D2N              .EQ  2
D2T              .EQ  3
D3N              .EQ  4
D3T              .EQ  5
D4N              .EQ  6
D4T              .EQ  7


;----- CLC1GLS3 Bits -----------------------------------------------------
LC1G4D1N         .EQ  0
LC1G4D1T         .EQ  1
LC1G4D2N         .EQ  2
LC1G4D2T         .EQ  3
LC1G4D3N         .EQ  4
LC1G4D3T         .EQ  5
LC1G4D4N         .EQ  6
LC1G4D4T         .EQ  7

G4D1N            .EQ  0
G4D1T            .EQ  1
G4D2N            .EQ  2
G4D2T            .EQ  3
G4D3N            .EQ  4
G4D3T            .EQ  5
G4D4N            .EQ  6
G4D4T            .EQ  7


;----- CWG1CON0 Bits -----------------------------------------------------
G1CS0            .EQ  0
G1POLA           .EQ  3
G1POLB           .EQ  4
G1OEA            .EQ  5
G1OEB            .EQ  6
G1EN             .EQ  7



;----- CWG1CON1 Bits -----------------------------------------------------
G1IS0            .EQ  0
G1IS1            .EQ  1

G1ASDLA0         .EQ  4
G1ASDLA1         .EQ  5
G1ASDLB0         .EQ  6
G1ASDLB1         .EQ  7


;----- CWG1CON2 Bits -----------------------------------------------------
G1ASDSFLT        .EQ  0
G1ASDSCLC1       .EQ  1
G1ARSEN          .EQ  6
G1ASE            .EQ  7


;----- CWG1DBR Bits -----------------------------------------------------
CWG1DBR0         .EQ  0
CWG1DBR1         .EQ  1
CWG1DBR2         .EQ  2
CWG1DBR3         .EQ  3
CWG1DBR4         .EQ  4
CWG1DBR5         .EQ  5


;----- CWG1DBF Bits -----------------------------------------------------
CWG1DBF0         .EQ  0
CWG1DBF1         .EQ  1
CWG1DBF2         .EQ  2
CWG1DBF3         .EQ  3
CWG1DBF4         .EQ  4
CWG1DBF5         .EQ  5


;----- VREGCON Bits -----------------------------------------------------
VREGPM0          .EQ  0
VREGPM1          .EQ  1


;----- BORCON Bits -----------------------------------------------------
BORRDY           .EQ  0
BORFS            .EQ  6
SBOREN           .EQ  7




;==========================================================================
;
;       RAM Definitions
;
;==========================================================================

_MAXRAM         .EQ   $007F

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
_CONFIG       .EQ  $2007

;----- CONFIG Options --------------------------------------------------
_FOSC_INTOSC  .EQ  $3FFE  INTOSC oscillator: CLKIN function disabled
_FOSC_EC      .EQ  $3FFF  EC: CLKIN function enabled

_BOREN_OFF    .EQ  $3FF9  Brown-out Reset disabled
_BOREN_SBODEN .EQ  $3FFB  Brown-out Reset controlled by the SBOREN bit in the BORCON register
_BOREN_NSLEEP .EQ  $3FFD  Brown-out Reset enabled while running and disabled in Sleep
_BOREN_ON     .EQ  $3FFF  Brown-out Reset enabled

_WDTE_OFF     .EQ  $3FE7  WDT disabled
_WDTE_SWDTEN  .EQ  $3FEF  WDT controlled by the SWDTEN bit in the WDTCON register
_WDTE_NSLEEP  .EQ  $3FF7  WDT enabled while running and disabled in Sleep
_WDTE_ON      .EQ  $3FFF  WDT enabled

_PWRTE_ON     .EQ  $3FDF  PWRT enabled
_PWRTE_OFF    .EQ  $3FFF  PWRT disabled

_MCLRE_OFF    .EQ  $3FBF  MCLR pin function is digital input, MCLR internally tied to VDD
_MCLRE_ON     .EQ  $3FFF  MCLR pin function is MCLR

_CP_ON        .EQ  $3F7F  Program memory code protection is enabled
_CP_OFF       .EQ  $3FFF  Program memory code protection is disabled

_LVP_OFF      .EQ  $3EFF  High-voltage on MCLR/VPP must be used for programming
_LVP_ON       .EQ  $3FFF  Low-voltage programming enabled

_LPBOR_OFF    .EQ  $3DFF  BOR disabled
_LPBOR_ON     .EQ  $3FFF  BOR enabled

_BORV_HI      .EQ  $3BFF  Brown-out Reset Voltage (Vbor), high trip point selected.
_BORV_27      .EQ  $3BFF  Brown-out Reset Voltage (Vbor), high trip point selected.
_BORV_LO      .EQ  $3FFF  Brown-out Reset Voltage (Vbor), low trip point selected.
_BORV_24      .EQ  $3FFF  Brown-out Reset Voltage (Vbor), low trip point selected.

_WRT_ALL      .EQ  $27FF  000h to 0FFh write protected, no addresses may be modified by PMCON control
_WRT_HALF     .EQ  $2FFF  000h to 07Fh write protected, 080h to 0FFh may be modified by PMCON control
_WRT_BOOT     .EQ  $37FF  000h to 03Fh write protected, 040h to 0FFh may be modified by PMCON control
_WRT_OFF      .EQ  $3FFF  Write protection off

;----- DEVID .EQates --------------------------------------------------
_DEVID1          .EQ  $2006

;----- IDLOC .EQates --------------------------------------------------
_IDLOC0          .EQ  $2000
_IDLOC1          .EQ  $2001
_IDLOC2          .EQ  $2002
_IDLOC3          .EQ  $2003

