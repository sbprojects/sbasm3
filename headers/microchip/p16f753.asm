;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC16F753 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC16F753 microcontroller.  These names
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
IOCAF            .EQ  $0008
IOCCF            .EQ  $0009
PCLATH           .EQ  $000A
INTCON           .EQ  $000B
PIR1             .EQ  $000C
PIR2             .EQ  $000D
TMR1             .EQ  $000F
TMR1L            .EQ  $000F
TMR1H            .EQ  $0010
T1CON            .EQ  $0011
T1GCON           .EQ  $0012
CCPR1            .EQ  $0013
CCPR1L           .EQ  $0013
CCPR1H           .EQ  $0014
CCP1CON          .EQ  $0015
ADRES            .EQ  $001C
ADRESL           .EQ  $001C
ADRESH           .EQ  $001D
ADCON0           .EQ  $001E
ADCON1           .EQ  $001F

;-----Bank1------------------
OPTION_REG       .EQ  $0081
TRISA            .EQ  $0085
TRISC            .EQ  $0087
IOCAP            .EQ  $0088
IOCCP            .EQ  $0089
PIE1             .EQ  $008C
PIE2             .EQ  $008D
OSCCON           .EQ  $008F
FVR1CON0         .EQ  $0090
DAC1CON0         .EQ  $0091
DAC1REFL         .EQ  $0092
DAC1REFH         .EQ  $0093
OPA1CON          .EQ  $0096
OPA1CON0         .EQ  $0096
C2CON0           .EQ  $009B
CM2CON0          .EQ  $009B
C2CON1           .EQ  $009C
CM2CON1          .EQ  $009C
C1CON0           .EQ  $009D
CM1CON0          .EQ  $009D
C1CON1           .EQ  $009E
CM1CON1          .EQ  $009E
CMOUT            .EQ  $009F
MCOUT            .EQ  $009F

;-----Bank2------------------
LATA             .EQ  $0105
LATC             .EQ  $0107
IOCAN            .EQ  $0108
IOCCN            .EQ  $0109
WPUA             .EQ  $010C
WPUC             .EQ  $010D
SLRCONC          .EQ  $010E
PCON             .EQ  $010F
TMR2             .EQ  $0110
PR2              .EQ  $0111
T2CON            .EQ  $0112
HLTMR1           .EQ  $0113
HLTPR1           .EQ  $0114
HLT1CON0         .EQ  $0115
HLT1CON1         .EQ  $0116
HLTMR2           .EQ  $0117
HLTPR2           .EQ  $0118
HLT2CON0         .EQ  $0119
HLT2CON1         .EQ  $011A
SLPC1CON0        .EQ  $011E
SLPCCON0         .EQ  $011E
SLPC1CON1        .EQ  $011F
SLPCCON1         .EQ  $011F

;-----Bank3------------------
ANSELA           .EQ  $0185
ANSELC           .EQ  $0187
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
COG1PHR          .EQ  $0192
COG1PHF          .EQ  $0193
COG1BKR          .EQ  $0194
COG1BKF          .EQ  $0195
COG1DBR          .EQ  $0196
COG1DBF          .EQ  $0197
COG1CON0         .EQ  $0198
COG1CON1         .EQ  $0199
COG1RIS          .EQ  $019A
COG1RSIM         .EQ  $019B
COG1FIS          .EQ  $019C
COG1FSIM         .EQ  $019D
COG1ASD0         .EQ  $019E
COG1ASD1         .EQ  $019F

;----- STATUS Bits -----------------------------------------------------
C                .EQ  $0000
DC               .EQ  $0001
Z                .EQ  $0002
NOT_PD           .EQ  $0003
NOT_TO           .EQ  $0004
RP0              .EQ  $0005
RP1              .EQ  $0006
IRP              .EQ  $0007


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


;----- IOCAF Bits -----------------------------------------------------
IOCAF0           .EQ  $0000
IOCAF1           .EQ  $0001
IOCAF2           .EQ  $0002
IOCAF3           .EQ  $0003
IOCAF4           .EQ  $0004
IOCAF5           .EQ  $0005


;----- IOCCF Bits -----------------------------------------------------
IOCCF0           .EQ  $0000
IOCCF1           .EQ  $0001
IOCCF2           .EQ  $0002
IOCCF3           .EQ  $0003
IOCCF4           .EQ  $0004
IOCCF5           .EQ  $0005


;----- INTCON Bits -----------------------------------------------------
IOCIF            .EQ  $0000
INTF             .EQ  $0001
T0IF             .EQ  $0002
IOCIE            .EQ  $0003
INTE             .EQ  $0004
T0IE             .EQ  $0005
PEIE             .EQ  $0006
GIE              .EQ  $0007


;----- PIR1 Bits -----------------------------------------------------
TMR1IF           .EQ  $0000
TMR2IF           .EQ  $0001
HLTMR1IF         .EQ  $0002
HLTMR2IF         .EQ  $0003
ADIF             .EQ  $0006
TMR1GIF          .EQ  $0007


;----- PIR2 Bits -----------------------------------------------------
CCP1IF           .EQ  $0000
COG1IF           .EQ  $0002
C1IF             .EQ  $0004
C2IF             .EQ  $0005


;----- T1CON Bits -----------------------------------------------------
TMR1ON           .EQ  $0000
NOT_T1SYNC       .EQ  $0002

T1CKPS0          .EQ  $0004
T1CKPS1          .EQ  $0005
TMR1CS0          .EQ  $0006
TMR1CS1          .EQ  $0007


;----- T1GCON Bits -----------------------------------------------------
T1GVAL           .EQ  $0002
T1GGO_NOT_DONE   .EQ  $0003
T1GSPM           .EQ  $0004
T1GTM            .EQ  $0005
T1GPOL           .EQ  $0006
TMR1GE           .EQ  $0007

T1GSS0           .EQ  $0000
T1GSS1           .EQ  $0001
T1GGO            .EQ  $0003


;----- CCP1CON Bits -----------------------------------------------------
CCP1M0           .EQ  $0000
CCP1M1           .EQ  $0001
CCP1M2           .EQ  $0002
CCP1M3           .EQ  $0003
DC1B0            .EQ  $0004
DC1B1            .EQ  $0005


;----- ADCON0 Bits -----------------------------------------------------
ADON             .EQ  $0000
GO_NOT_DONE      .EQ  $0001
ADFM             .EQ  $0007

CHS0             .EQ  $0002
CHS1             .EQ  $0003
CHS2             .EQ  $0004
CHS3             .EQ  $0005


;----- ADCON1 Bits -----------------------------------------------------
ADPREF1          .EQ  $0000

ADCS0            .EQ  $0004
ADCS1            .EQ  $0005
ADCS2            .EQ  $0006


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


;----- IOCAP Bits -----------------------------------------------------
IOCAP0           .EQ  $0000
IOCAP1           .EQ  $0001
IOCAP2           .EQ  $0002
IOCAP3           .EQ  $0003
IOCAP4           .EQ  $0004
IOCAP5           .EQ  $0005


;----- IOCCP Bits -----------------------------------------------------
IOCCP0           .EQ  $0000
IOCCP1           .EQ  $0001
IOCCP2           .EQ  $0002
IOCCP3           .EQ  $0003
IOCCP4           .EQ  $0004
IOCCP5           .EQ  $0005


;----- PIE1 Bits -----------------------------------------------------
TMR1IE           .EQ  $0000
TMR2IE           .EQ  $0001
HLTMR1IE         .EQ  $0002
HLTMR2IE         .EQ  $0003
ADIE             .EQ  $0006
TMR1GIE          .EQ  $0007


;----- PIE2 Bits -----------------------------------------------------
CCP1IE           .EQ  $0000
COG1IE           .EQ  $0002
C1IE             .EQ  $0004
C2IE             .EQ  $0005


;----- OSCCON Bits -----------------------------------------------------
LTS              .EQ  $0001
HTS              .EQ  $0002

IRCF0            .EQ  $0004
IRCF1            .EQ  $0005


;----- FVR1CON0 Bits -----------------------------------------------------
FVRBUFEN         .EQ  $0000
FVROE            .EQ  $0005
FVRRDY           .EQ  $0006
FVREN            .EQ  $0007

FVRBUSS0         .EQ  $0003
FVRBUSS1         .EQ  $0004


;----- DAC1CON0 Bits -----------------------------------------------------
DACOE            .EQ  $0005
DACFM            .EQ  $0006
DACEN            .EQ  $0007

DACPSS0          .EQ  $0002
DACPSS1          .EQ  $0003


;----- OPA1CON Bits -----------------------------------------------------
OPAUGM           .EQ  $0004
OPAEN            .EQ  $0007

OPA1PCH0         .EQ  $0000
OPA1PCH1         .EQ  $0001
OPA1NCH0         .EQ  $0002
OPA1NCH1         .EQ  $0003


;----- OPA1CON0 Bits -----------------------------------------------------
OPAUGM           .EQ  $0004
OPAEN            .EQ  $0007

OPA1PCH0         .EQ  $0000
OPA1PCH1         .EQ  $0001
OPA1NCH0         .EQ  $0002
OPA1NCH1         .EQ  $0003


;----- C2CON0 Bits -----------------------------------------------------
C2SYNC           .EQ  $0000
C2HYS            .EQ  $0001
C2SP             .EQ  $0002
C2ZLF            .EQ  $0003
C2POL            .EQ  $0004
C2OE             .EQ  $0005
C2OUT            .EQ  $0006
C2ON             .EQ  $0007


;----- CM2CON0 Bits -----------------------------------------------------
C2SYNC           .EQ  $0000
C2HYS            .EQ  $0001
C2SP             .EQ  $0002
C2ZLF            .EQ  $0003
C2POL            .EQ  $0004
C2OE             .EQ  $0005
C2OUT            .EQ  $0006
C2ON             .EQ  $0007


;----- C2CON1 Bits -----------------------------------------------------
C2INTN           .EQ  $0006
C2INTP           .EQ  $0007

C2NCH0           .EQ  $0000
C2NCH1           .EQ  $0001
C2NCH2           .EQ  $0002
C2PCH0           .EQ  $0003
C2PCH1           .EQ  $0004
C2PCH2           .EQ  $0005


;----- CM2CON1 Bits -----------------------------------------------------
C2INTN           .EQ  $0006
C2INTP           .EQ  $0007

C2NCH0           .EQ  $0000
C2NCH1           .EQ  $0001
C2NCH2           .EQ  $0002
C2PCH0           .EQ  $0003
C2PCH1           .EQ  $0004
C2PCH2           .EQ  $0005


;----- C1CON0 Bits -----------------------------------------------------
C1SYNC           .EQ  $0000
C1HYS            .EQ  $0001
C1SP             .EQ  $0002
C1ZLF            .EQ  $0003
C1POL            .EQ  $0004
C1OE             .EQ  $0005
C1OUT            .EQ  $0006
C1ON             .EQ  $0007


;----- CM1CON0 Bits -----------------------------------------------------
C1SYNC           .EQ  $0000
C1HYS            .EQ  $0001
C1SP             .EQ  $0002
C1ZLF            .EQ  $0003
C1POL            .EQ  $0004
C1OE             .EQ  $0005
C1OUT            .EQ  $0006
C1ON             .EQ  $0007


;----- C1CON1 Bits -----------------------------------------------------
C1INTN           .EQ  $0006
C1INTP           .EQ  $0007

C1NCH0           .EQ  $0000
C1NCH1           .EQ  $0001
C1NCH2           .EQ  $0002
C1PCH0           .EQ  $0003
C1PCH1           .EQ  $0004
C1PCH2           .EQ  $0005


;----- CM1CON1 Bits -----------------------------------------------------
C1INTN           .EQ  $0006
C1INTP           .EQ  $0007

C1NCH0           .EQ  $0000
C1NCH1           .EQ  $0001
C1NCH2           .EQ  $0002
C1PCH0           .EQ  $0003
C1PCH1           .EQ  $0004
C1PCH2           .EQ  $0005


;----- CMOUT Bits -----------------------------------------------------
MCOUT1           .EQ  $0000
MCOUT2           .EQ  $0001


;----- MCOUT Bits -----------------------------------------------------
MCOUT1           .EQ  $0000
MCOUT2           .EQ  $0001


;----- LATA Bits -----------------------------------------------------
LATA0            .EQ  $0000
LATA1            .EQ  $0001
LATA2            .EQ  $0002
LATA4            .EQ  $0004
LATA5            .EQ  $0005


;----- LATC Bits -----------------------------------------------------
LATC0            .EQ  $0000
LATC1            .EQ  $0001
LATC2            .EQ  $0002
LATC3            .EQ  $0003
LATC4            .EQ  $0004
LATC5            .EQ  $0005


;----- IOCAN Bits -----------------------------------------------------
IOCAN0           .EQ  $0000
IOCAN1           .EQ  $0001
IOCAN2           .EQ  $0002
IOCAN3           .EQ  $0003
IOCAN4           .EQ  $0004
IOCAN5           .EQ  $0005


;----- IOCCN Bits -----------------------------------------------------
IOCCN0           .EQ  $0000
IOCCN1           .EQ  $0001
IOCCN2           .EQ  $0002
IOCCN3           .EQ  $0003
IOCCN4           .EQ  $0004
IOCCN5           .EQ  $0005


;----- WPUA Bits -----------------------------------------------------
WPUA0            .EQ  $0000
WPUA1            .EQ  $0001
WPUA2            .EQ  $0002
WPUA3            .EQ  $0003
WPUA4            .EQ  $0004
WPUA5            .EQ  $0005


;----- WPUC Bits -----------------------------------------------------
WPUC0            .EQ  $0000
WPUC1            .EQ  $0001
WPUC2            .EQ  $0002
WPUC3            .EQ  $0003
WPUC4            .EQ  $0004
WPUC5            .EQ  $0005


;----- SLRCONC Bits -----------------------------------------------------
SLRC4            .EQ  $0004
SLRC5            .EQ  $0005


;----- PCON Bits -----------------------------------------------------
NOT_BOR          .EQ  $0000
NOT_POR          .EQ  $0001


;----- T2CON Bits -----------------------------------------------------
TMR2ON           .EQ  $0002

T2CKPS0          .EQ  $0000
T2CKPS1          .EQ  $0001
T2OUTPS0         .EQ  $0003
T2OUTPS1         .EQ  $0004
T2OUTPS2         .EQ  $0005
T2OUTPS3         .EQ  $0006


;----- HLT1CON0 Bits -----------------------------------------------------
H1ON             .EQ  $0002

H1CKPS0          .EQ  $0000
H1CKPS1          .EQ  $0001
H1OUTPS0         .EQ  $0003
H1OUTPS1         .EQ  $0004
H1OUTPS2         .EQ  $0005
H1OUTPS3         .EQ  $0006


;----- HLT1CON1 Bits -----------------------------------------------------
H1REREN          .EQ  $0000
H1FEREN          .EQ  $0001
H1RES            .EQ  $0006
H1FES            .EQ  $0007

H1ERS0           .EQ  $0002
H1ERS1           .EQ  $0003
H1ERS2           .EQ  $0004


;----- HLT2CON0 Bits -----------------------------------------------------
H2ON             .EQ  $0002

H2CKPS0          .EQ  $0000
H2CKPS1          .EQ  $0001
H2OUTPS0         .EQ  $0003
H2OUTPS1         .EQ  $0004
H2OUTPS2         .EQ  $0005
H2OUTPS3         .EQ  $0006


;----- HLT2CON1 Bits -----------------------------------------------------
H2REREN          .EQ  $0000
H2FEREN          .EQ  $0001
H2RES            .EQ  $0006
H2FES            .EQ  $0007

H2ERS0           .EQ  $0002
H2ERS1           .EQ  $0003
H2ERS2           .EQ  $0004


;----- SLPC1CON0 Bits -----------------------------------------------------
SC1INS           .EQ  $0000
SC1POL           .EQ  $0004
SC1MRPE          .EQ  $0005
SC1EN            .EQ  $0007

SCS1TSS0         .EQ  $0002
SCS1TSS1         .EQ  $0003


;----- SLPCCON0 Bits -----------------------------------------------------
SC1INS           .EQ  $0000
SC1POL           .EQ  $0004
SC1MRPE          .EQ  $0005
SC1EN            .EQ  $0007

SCS1TSS0         .EQ  $0002
SCS1TSS1         .EQ  $0003


;----- SLPC1CON1 Bits -----------------------------------------------------
SC1RNG           .EQ  $0004

SC1ISET0         .EQ  $0000
SC1ISET1         .EQ  $0001
SC1ISET2         .EQ  $0002
SC1ISET3         .EQ  $0003


;----- SLPCCON1 Bits -----------------------------------------------------
SC1RNG           .EQ  $0004

SC1ISET0         .EQ  $0000
SC1ISET1         .EQ  $0001
SC1ISET2         .EQ  $0002
SC1ISET3         .EQ  $0003


;----- ANSELA Bits -----------------------------------------------------
ANSA0            .EQ  $0000
ANSA1            .EQ  $0001
ANSA2            .EQ  $0002
ANSA4            .EQ  $0004


;----- ANSELC Bits -----------------------------------------------------
ANSC0            .EQ  $0000
ANSC1            .EQ  $0001
ANSC2            .EQ  $0002
ANSC3            .EQ  $0003


;----- APFCON Bits -----------------------------------------------------
T1GSEL           .EQ  $0004


;----- OSCTUNE Bits -----------------------------------------------------
TUN0             .EQ  $0000
TUN1             .EQ  $0001
TUN2             .EQ  $0002
TUN3             .EQ  $0003
TUN4             .EQ  $0004


;----- PMCON1 Bits -----------------------------------------------------
RD               .EQ  $0000
WR               .EQ  $0001
WREN             .EQ  $0002


;----- COG1PHR Bits -----------------------------------------------------
G1PHR0           .EQ  $0000
G1PHR1           .EQ  $0001
G1PHR2           .EQ  $0002
G1PHR3           .EQ  $0003


;----- COG1PHF Bits -----------------------------------------------------
G1PHF0           .EQ  $0000
G1PHF1           .EQ  $0001
G1PHF2           .EQ  $0002
G1PHF3           .EQ  $0003


;----- COG1BKR Bits -----------------------------------------------------
G1BKR0           .EQ  $0000
G1BKR1           .EQ  $0001
G1BKR2           .EQ  $0002
G1BKR3           .EQ  $0003


;----- COG1BKF Bits -----------------------------------------------------
G1BKF0           .EQ  $0000
G1BKF1           .EQ  $0001
G1BKF2           .EQ  $0002
G1BKF3           .EQ  $0003


;----- COG1DBR Bits -----------------------------------------------------
G1DBR0           .EQ  $0000
G1DBR1           .EQ  $0001
G1DBR2           .EQ  $0002
G1DBR3           .EQ  $0003


;----- COG1DBF Bits -----------------------------------------------------
G1DBF0           .EQ  $0000
G1DBF1           .EQ  $0001
G1DBF2           .EQ  $0002
G1DBF3           .EQ  $0003


;----- COG1CON0 Bits -----------------------------------------------------
G1MD             .EQ  $0000
G1LD             .EQ  $0002
G1POL0           .EQ  $0003
G1POL1           .EQ  $0004
G1OE0            .EQ  $0005
G1OE1            .EQ  $0006
G1EN             .EQ  $0007


;----- COG1CON1 Bits -----------------------------------------------------
G1FDBTS          .EQ  $0006
G1RDBTS          .EQ  $0007

G1CS0            .EQ  $0000
G1CS1            .EQ  $0001


;----- COG1RIS Bits -----------------------------------------------------
G1RIC1           .EQ  $0000
G1RIC2           .EQ  $0001
C1RICCP1         .EQ  $0002
G1RIFLT          .EQ  $0003
G1RIT2M          .EQ  $0004
G1R1HLT1         .EQ  $0005
G1RIHLT2         .EQ  $0006


;----- COG1RSIM Bits -----------------------------------------------------
G1RMC1           .EQ  $0000
G1RMC2           .EQ  $0001
G1RMCCP1         .EQ  $0002
G1RMFLT          .EQ  $0003
G1RTM2M          .EQ  $0004
G1RMHLT1         .EQ  $0005
G1RMHLT2         .EQ  $0006


;----- COG1FIS Bits -----------------------------------------------------
G1FIC1           .EQ  $0000
G1FIC2           .EQ  $0001
G1FICCP1         .EQ  $0002
G1FIFLT          .EQ  $0003
G1FIT2M          .EQ  $0004
G1FIHLT1         .EQ  $0005
G1FIHLT2         .EQ  $0006


;----- COG1FSIM Bits -----------------------------------------------------
G1FMC1           .EQ  $0000
G1FMC2           .EQ  $0001
G1FMCCP1         .EQ  $0002
G1FMFLT          .EQ  $0003
G1FMT2M          .EQ  $0004
G1FMHLT1         .EQ  $0005
G1FMHLT2         .EQ  $0006


;----- COG1ASD0 Bits -----------------------------------------------------
G1ARSEN          .EQ  $0006
G1ASDE           .EQ  $0007

G1ASD0L0         .EQ  $0002
G1ASD0L1         .EQ  $0003
G1ASD1L0         .EQ  $0004
G1ASD1L1         .EQ  $0005


;----- COG1ASD1 Bits -----------------------------------------------------
G1ASDSFLT        .EQ  $0000
G1ASDSC1         .EQ  $0001
G1ASDSC2         .EQ  $0002
G1ASDSHLT1       .EQ  $0003
G1ASDSHLT2       .EQ  $0004




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

;----- DEVID Equates --------------------------------------------------
_DEVID1          .EQ  $2006

;----- IDLOC Equates --------------------------------------------------
_IDLOC0          .EQ  $2000
_IDLOC1          .EQ  $2001
_IDLOC2          .EQ  $2002
_IDLOC3          .EQ  $2003
