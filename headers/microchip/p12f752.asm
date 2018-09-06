;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC12F752 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC12F752 microcontroller.  These names
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
PORTA            .EQ  $05
IOCAF            .EQ  $08
PCLATH           .EQ  $0A
INTCON           .EQ  $0B
PIR1             .EQ  $0C
PIR2             .EQ  $0D
TMR1             .EQ  $0F
TMR1L            .EQ  $0F
TMR1H            .EQ  $10
T1CON            .EQ  $11
T1GCON           .EQ  $12
CCPR1            .EQ  $13
CCPR1L           .EQ  $13
CCPR1H           .EQ  $14
CCP1CON          .EQ  $15
ADRES            .EQ  $1C
ADRESL           .EQ  $1C
ADRESH           .EQ  $1D
ADCON0           .EQ  $1E
ADCON1           .EQ  $1F

;-----Bank1------------------
OPTION_REG       .EQ  $81
TRISA            .EQ  $85
IOCAP            .EQ  $88
PIE1             .EQ  $8C
PIE2             .EQ  $8D
OSCCON           .EQ  $8F
FVRCON           .EQ  $90
DACCON0          .EQ  $91
DACCON1          .EQ  $92
C2CON0           .EQ  $9B
CM2CON0          .EQ  $9B
C2CON1           .EQ  $9C
CM2CON1          .EQ  $9C
C1CON0           .EQ  $9D
CM1CON0          .EQ  $9D
C1CON1           .EQ  $9E
CM1CON1          .EQ  $9E
CMOUT            .EQ  $9F
MCOUT            .EQ  $9F

;-----Bank2------------------
LATA             .EQ  $0105
IOCAN            .EQ  $0108
WPUA             .EQ  $010C
SLRCONA          .EQ  $010D
PCON             .EQ  $010F
TMR2             .EQ  $0110
PR2              .EQ  $0111
T2CON            .EQ  $0112
HLTMR1           .EQ  $0113
HLTPR1           .EQ  $0114
HLT1CON0         .EQ  $0115
HLT1CON1         .EQ  $0116

;-----Bank3------------------
ANSELA           .EQ  $0185
APFCON           .EQ  $0188
OSCTUNE          .EQ  $0189
PMCON1           .EQ  $018C
PMCON2           .EQ  $018D
PMADR            .EQ  $018E
PMADRL           .EQ  $018E
PMADRH           .EQ  $018F
PMDAT            .EQ  $0190
PMDATL           .EQ  $0190
PMDATH           .EQ  $0191
COG1PH           .EQ  $0192
COG1BLK          .EQ  $0193
COG1DB           .EQ  $0194
COG1CON0         .EQ  $0195
COG1CON1         .EQ  $0196
COG1ASD          .EQ  $0197

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
RA4              .EQ  4
RA5              .EQ  5


;----- IOCAF Bits -----------------------------------------------------
IOCAF0           .EQ  0
IOCAF1           .EQ  1
IOCAF2           .EQ  2
IOCAF3           .EQ  3
IOCAF4           .EQ  4
IOCAF5           .EQ  5


;----- INTCON Bits -----------------------------------------------------
IOCIF            .EQ  0
INTF             .EQ  1
T0IF             .EQ  2
IOCIE            .EQ  3
INTE             .EQ  4
T0IE             .EQ  5
PEIE             .EQ  6
GIE              .EQ  7


;----- PIR1 Bits -----------------------------------------------------
TMR1IF           .EQ  0
TMR2IF           .EQ  1
HLTMR1IF         .EQ  2
ADIF             .EQ  6
TMR1GIF          .EQ  7


;----- PIR2 Bits -----------------------------------------------------
CCP1IF           .EQ  0
COG1IF           .EQ  2
C1IF             .EQ  4
C2IF             .EQ  5


;----- T1CON Bits -----------------------------------------------------
TMR1ON           .EQ  0
NOT_T1SYNC       .EQ  2

T1CKPS0          .EQ  4
T1CKPS1          .EQ  5
TMR1CS0          .EQ  6
TMR1CS1          .EQ  7


;----- T1GCON Bits -----------------------------------------------------
T1GVAL           .EQ  2
T1GGO_NOT_DONE   .EQ  3
T1GSPM           .EQ  4
T1GTM            .EQ  5
T1GPOL           .EQ  6
TMR1GE           .EQ  7

T1GSS0           .EQ  0
T1GSS1           .EQ  1
T1GGO            .EQ  3


;----- CCP1CON Bits -----------------------------------------------------
CCP1M0           .EQ  0
CCP1M1           .EQ  1
CCP1M2           .EQ  2
CCP1M3           .EQ  3
DC1B0            .EQ  4
DC1B1            .EQ  5


;----- ADCON0 Bits -----------------------------------------------------
ADON             .EQ  0
GO_NOT_DONE      .EQ  1
VCFG             .EQ  6
ADFM             .EQ  7

CHS0             .EQ  2
CHS1             .EQ  3
CHS2             .EQ  4
CHS3             .EQ  5


;----- ADCON1 Bits -----------------------------------------------------
ADCS0            .EQ  4
ADCS1            .EQ  5
ADCS2            .EQ  6


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
TRISA0           .EQ  0
TRISA1           .EQ  1
TRISA2           .EQ  2
TRISA3           .EQ  3
TRISA4           .EQ  4
TRISA5           .EQ  5


;----- IOCAP Bits -----------------------------------------------------
IOCAP0           .EQ  0
IOCAP1           .EQ  1
IOCAP2           .EQ  2
IOCAP3           .EQ  3
IOCAP4           .EQ  4
IOCAP5           .EQ  5


;----- PIE1 Bits -----------------------------------------------------
TMR1IE           .EQ  0
TMR2IE           .EQ  1
HLTMR1IE         .EQ  2
ADIE             .EQ  6
TMR1GIE          .EQ  7


;----- PIE2 Bits -----------------------------------------------------
CCP1IE           .EQ  0
COG1IE           .EQ  2
C1IE             .EQ  4
C2IE             .EQ  5


;----- OSCCON Bits -----------------------------------------------------
LTS              .EQ  1
HTS              .EQ  2

IRCF0            .EQ  4
IRCF1            .EQ  5


;----- FVRCON Bits -----------------------------------------------------
FVRBUFSS         .EQ  4
FVRBUFEN         .EQ  5
FVRRDY           .EQ  6
FVREN            .EQ  7


;----- DACCON0 Bits -----------------------------------------------------
DACPSS0          .EQ  2
DACOE            .EQ  5
DACRNG           .EQ  6
DACEN            .EQ  7


;----- DACCON1 Bits -----------------------------------------------------
DACR0            .EQ  0
DACR1            .EQ  1
DACR2            .EQ  2
DACR3            .EQ  3
DACR4            .EQ  4


;----- C2CON0 Bits -----------------------------------------------------
C2SYNC           .EQ  0
C2HYS            .EQ  1
C2SP             .EQ  2
C2ZLF            .EQ  3
C2POL            .EQ  4
C2OE             .EQ  5
C2OUT            .EQ  6
C2ON             .EQ  7


;----- CM2CON0 Bits -----------------------------------------------------
C2SYNC           .EQ  0
C2HYS            .EQ  1
C2SP             .EQ  2
C2ZLF            .EQ  3
C2POL            .EQ  4
C2OE             .EQ  5
C2OUT            .EQ  6
C2ON             .EQ  7


;----- C2CON1 Bits -----------------------------------------------------
C2NCH0           .EQ  0
C2INTN           .EQ  6
C2INTP           .EQ  7

C2PCH0           .EQ  4
C2PCH1           .EQ  5


;----- CM2CON1 Bits -----------------------------------------------------
C2NCH0           .EQ  0
C2INTN           .EQ  6
C2INTP           .EQ  7

C2PCH0           .EQ  4
C2PCH1           .EQ  5


;----- C1CON0 Bits -----------------------------------------------------
C1SYNC           .EQ  0
C1HYS            .EQ  1
C1SP             .EQ  2
C1ZLF            .EQ  3
C1POL            .EQ  4
C1OE             .EQ  5
C1OUT            .EQ  6
C1ON             .EQ  7


;----- CM1CON0 Bits -----------------------------------------------------
C1SYNC           .EQ  0
C1HYS            .EQ  1
C1SP             .EQ  2
C1ZLF            .EQ  3
C1POL            .EQ  4
C1OE             .EQ  5
C1OUT            .EQ  6
C1ON             .EQ  7


;----- C1CON1 Bits -----------------------------------------------------
C1NCH0           .EQ  0
C1INTN           .EQ  6
C1INTP           .EQ  7

C1PCH0           .EQ  4
C1PCH1           .EQ  5


;----- CM1CON1 Bits -----------------------------------------------------
C1NCH0           .EQ  0
C1INTN           .EQ  6
C1INTP           .EQ  7

C1PCH0           .EQ  4
C1PCH1           .EQ  5


;----- CMOUT Bits -----------------------------------------------------
MCOUT1           .EQ  0
MCOUT2           .EQ  1


;----- MCOUT Bits -----------------------------------------------------
MCOUT1           .EQ  0
MCOUT2           .EQ  1


;----- LATA Bits -----------------------------------------------------
LATA0            .EQ  0
LATA1            .EQ  1
LATA2            .EQ  2
LATA4            .EQ  4
LATA5            .EQ  5


;----- IOCAN Bits -----------------------------------------------------
IOCAN0           .EQ  0
IOCAN1           .EQ  1
IOCAN2           .EQ  2
IOCAN3           .EQ  3
IOCAN4           .EQ  4
IOCAN5           .EQ  5


;----- WPUA Bits -----------------------------------------------------
WPUA0            .EQ  0
WPUA1            .EQ  1
WPUA2            .EQ  2
WPUA3            .EQ  3
WPUA4            .EQ  4
WPUA5            .EQ  5


;----- SLRCONA Bits -----------------------------------------------------
SLRA0            .EQ  0
SLRA2            .EQ  2


;----- PCON Bits -----------------------------------------------------
NOT_BOR          .EQ  0
NOT_POR          .EQ  1


;----- T2CON Bits -----------------------------------------------------
TMR2ON           .EQ  2

T2CKPS0          .EQ  0
T2CKPS1          .EQ  1
T2OUTPS0         .EQ  3
T2OUTPS1         .EQ  4
T2OUTPS2         .EQ  5
T2OUTPS3         .EQ  6


;----- HLT1CON0 Bits -----------------------------------------------------
H1ON             .EQ  2

H1CKPS0          .EQ  0
H1CKPS1          .EQ  1
H1OUTPS0         .EQ  3
H1OUTPS1         .EQ  4
H1OUTPS2         .EQ  5
H1OUTPS3         .EQ  6


;----- HLT1CON1 Bits -----------------------------------------------------
H1REREN          .EQ  0
H1FEREN          .EQ  1

H1ERS0           .EQ  2
H1ERS1           .EQ  3
H1ERS2           .EQ  4


;----- ANSELA Bits -----------------------------------------------------
ANSA0            .EQ  0
ANSA1            .EQ  1
ANSA2            .EQ  2
ANSA4            .EQ  4
ANSA5            .EQ  5


;----- APFCON Bits -----------------------------------------------------
COG1O0SEL        .EQ  0
COG1O1SEL        .EQ  1
COG1FSEL         .EQ  2
T1GSEL           .EQ  4


;----- OSCTUNE Bits -----------------------------------------------------
TUN0             .EQ  0
TUN1             .EQ  1
TUN2             .EQ  2
TUN3             .EQ  3
TUN4             .EQ  4


;----- PMCON1 Bits -----------------------------------------------------
RD               .EQ  0
WR               .EQ  1
WREN             .EQ  2


;----- COG1PH Bits -----------------------------------------------------
G1PH0            .EQ  0
G1PH1            .EQ  1
G1PH2            .EQ  2
G1PH3            .EQ  3


;----- COG1BLK Bits -----------------------------------------------------
G1BLKF0          .EQ  0
G1BLKF1          .EQ  1
G1BLKF2          .EQ  2
G1BLKF3          .EQ  3
G1BLKR0          .EQ  4
G1BLKR1          .EQ  5
G1BLKR2          .EQ  6
G1BLKR3          .EQ  7


;----- COG1DB Bits -----------------------------------------------------
G1DBF0           .EQ  0
G1DBF1           .EQ  1
G1DBF2           .EQ  2
G1DBF3           .EQ  3
G1BDR0           .EQ  4
G1BDR1           .EQ  5
G1BDR2           .EQ  6
G1BDR3           .EQ  7


;----- COG1CON0 Bits -----------------------------------------------------
G1LD             .EQ  2
G1POL0           .EQ  3
G1POL1           .EQ  4
G1OE0            .EQ  5
G1OE1            .EQ  6
G1EN             .EQ  7

G1CS0            .EQ  0
G1CS1            .EQ  1


;----- COG1CON1 Bits -----------------------------------------------------
G1RSIM           .EQ  6
G1FSIM           .EQ  7

G1RS0            .EQ  0
G1RS1            .EQ  1
G1RS2            .EQ  2
G1FS0            .EQ  3
G1FS1            .EQ  4
G1FS2            .EQ  5


;----- COG1ASD Bits -----------------------------------------------------
G1ASDSFLT        .EQ  0
G1ASDSC1         .EQ  1
G1ASDSC2         .EQ  2
G1ASDSHLT        .EQ  3
G1ASDL0          .EQ  4
G1ASDL1          .EQ  5
G1ARSEN          .EQ  6
G1ASDE           .EQ  7




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
;   CONFIG            2007h
;
;==========================================================================

; The following is an assignment of address values for all of the
; configuration registers for the purpose of table reads
_CONFIG         .EQ  $2007

;----- CONFIG Options --------------------------------------------------
_FOSC0_INT           .EQ  $3FFE  Internal oscillator mode.  I/O function on RA5/CLKIN
_FOSC0_EC            .EQ  $3FFF  EC oscillator mode.  CLKIN function on RA5/CLKIN

_WDTE_OFF            .EQ  $3FF7  Watchdog Timer disabled
_WDTE_ON             .EQ  $3FFF  Watchdog Timer enabled

_PWRTE_ON            .EQ  $3FEF  Power-up Timer enabled
_PWRTE_OFF           .EQ  $3FFF  Power-up Timer disabled

_MCLRE_OFF           .EQ  $3FDF  MCLR pin is alternate function
_MCLRE_ON            .EQ  $3FFF  MCLR pin is MCLR function with internal weak pullup

_CP_ON               .EQ  $3FBF  Program memory code protection is enabled
_CP_OFF              .EQ  $3FFF  Program memory code protection is disabled

_BOREN_DIS           .EQ  $3CFF  BOR disabled
_BOREN_SLEEP_DIS     .EQ  $3EFF  BOR enabled during operation and disabled in Sleep
_BOREN_EN            .EQ  $3FFF  BOR enabled

_WRT_ALL             .EQ  $33FF  000h to 3FFh self-write protected
_WRT_HALF            .EQ  $37FF  000h to 1FFh self-write protected
_WRT_FOURTH          .EQ  $3BFF  000h to 0FFh self-write protected
_WRT_OFF             .EQ  $3FFF  Flash self-write protection off

_CLKOUTEN_ON         .EQ  $2FFF  CLKOUT function enabled.  CLKOUT pin is CLKOUT
_CLKOUTEN_OFF        .EQ  $3FFF  CLKOUT function disabled.  CLKOUT pin acts as I/O

;----- DEVID .EQates --------------------------------------------------
_DEVID1          .EQ  $2006

;----- IDLOC .EQates --------------------------------------------------
_IDLOC0          .EQ  $2000
_IDLOC1          .EQ  $2001
_IDLOC2          .EQ  $2002
_IDLOC3          .EQ  $2003


