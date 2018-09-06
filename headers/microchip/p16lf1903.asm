;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC16LF1903 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC16LF1903 microcontroller.  These names
;  are taken to match the data sheets as closely as possible.
;==========================================================================

;==========================================================================
;
;       Select cross overlay
;
;==========================================================================

                  .CR   pic14e
                  .MS   4096

;==========================================================================
;
;       Register Definitions
;
;==========================================================================

W                .EQ  $0000
F                .EQ  $0001

;----- Register Files -----------------------------------------------------

;-----Bank0------------------
INDF0            .EQ  $0000
INDF1            .EQ  $0001
PCL              .EQ  $0002
STATUS           .EQ  $0003
FSR0             .EQ  $0004
FSR0L            .EQ  $0004
FSR0H            .EQ  $0005
FSR1             .EQ  $0006
FSR1L            .EQ  $0006
FSR1H            .EQ  $0007
BSR              .EQ  $0008
WREG             .EQ  $0009
PCLATH           .EQ  $000A
INTCON           .EQ  $000B
PORTA            .EQ  $000C
PORTB            .EQ  $000D
PORTC            .EQ  $000E
PORTE            .EQ  $0010
PIR1             .EQ  $0011
PIR2             .EQ  $0012
TMR0             .EQ  $0015
TMR1             .EQ  $0016
TMR1L            .EQ  $0016
TMR1H            .EQ  $0017
T1CON            .EQ  $0018
T1GCON           .EQ  $0019

;-----Bank1------------------
TRISA            .EQ  $008C
TRISB            .EQ  $008D
TRISC            .EQ  $008E
TRISE            .EQ  $0090
PIE1             .EQ  $0091
PIE2             .EQ  $0092
OPTION_REG       .EQ  $0095
PCON             .EQ  $0096
WDTCON           .EQ  $0097
OSCCON           .EQ  $0099
OSCSTAT          .EQ  $009A
ADRES            .EQ  $009B
ADRESL           .EQ  $009B
ADRESH           .EQ  $009C
ADCON0           .EQ  $009D
ADCON1           .EQ  $009E

;-----Bank2------------------
LATA             .EQ  $010C
LATB             .EQ  $010D
LATC             .EQ  $010E
BORCON           .EQ  $0116
FVRCON           .EQ  $0117

;-----Bank3------------------
ANSELA           .EQ  $018C
ANSELB           .EQ  $018D
PMADR            .EQ  $0191
PMADRL           .EQ  $0191
PMADRH           .EQ  $0192
PMDAT            .EQ  $0193
PMDATL           .EQ  $0193
PMDATH           .EQ  $0194
PMCON1           .EQ  $0195
PMCON2           .EQ  $0196

;-----Bank4------------------
WPUB             .EQ  $020D
WPUE             .EQ  $0210

;-----Bank7------------------
IOCBP            .EQ  $0394
IOCBN            .EQ  $0395
IOCBF            .EQ  $0396

;-----Bank15------------------
LCDCON           .EQ  $0791
LCDPS            .EQ  $0792
LCDREF           .EQ  $0793
LCDCST           .EQ  $0794
LCDRL            .EQ  $0795
LCDSE0           .EQ  $0798
LCDSE1           .EQ  $0799
LCDSE3           .EQ  $079B
LCDDATA0         .EQ  $07A0
LCDDATA1         .EQ  $07A1
LCDDATA3         .EQ  $07A3
LCDDATA4         .EQ  $07A4
LCDDATA6         .EQ  $07A6
LCDDATA7         .EQ  $07A7
LCDDATA9         .EQ  $07A9
LCDDATA10        .EQ  $07AA
LCDDATA12        .EQ  $07AC
LCDDATA15        .EQ  $07AF
LCDDATA18        .EQ  $07B2
LCDDATA21        .EQ  $07B5

;-----Bank31------------------
STATUS_SHAD      .EQ  $0FE4
WREG_SHAD        .EQ  $0FE5
BSR_SHAD         .EQ  $0FE6
PCLATH_SHAD      .EQ  $0FE7
FSR0L_SHAD       .EQ  $0FE8
FSR0H_SHAD       .EQ  $0FE9
FSR1L_SHAD       .EQ  $0FEA
FSR1H_SHAD       .EQ  $0FEB
STKPTR           .EQ  $0FED
TOSL             .EQ  $0FEE
TOSH             .EQ  $0FEF

;----- STATUS Bits -----------------------------------------------------
C                .EQ  $0000
DC               .EQ  $0001
Z                .EQ  $0002
NOT_PD           .EQ  $0003
NOT_TO           .EQ  $0004


;----- BSR Bits -----------------------------------------------------
BSR0             .EQ  $0000
BSR1             .EQ  $0001
BSR2             .EQ  $0002
BSR3             .EQ  $0003
BSR4             .EQ  $0004



;----- INTCON Bits -----------------------------------------------------
IOCIF            .EQ  $0000
INTF             .EQ  $0001
TMR0IF           .EQ  $0002
IOCIE            .EQ  $0003
INTE             .EQ  $0004
TMR0IE           .EQ  $0005
PEIE             .EQ  $0006
GIE              .EQ  $0007

T0IF             .EQ  $0002
T0IE             .EQ  $0005


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


;----- PORTC Bits -----------------------------------------------------
RC0              .EQ  $0000
RC1              .EQ  $0001
RC2              .EQ  $0002
RC3              .EQ  $0003
RC4              .EQ  $0004
RC5              .EQ  $0005
RC6              .EQ  $0006
RC7              .EQ  $0007


;----- PORTE Bits -----------------------------------------------------
RE3              .EQ  $0003


;----- PIR1 Bits -----------------------------------------------------
TMR1IF           .EQ  $0000
ADIF             .EQ  $0006
TMR1GIF          .EQ  $0007


;----- PIR2 Bits -----------------------------------------------------
LCDIF            .EQ  $0002
EEIF             .EQ  $0004


;----- T1CON Bits -----------------------------------------------------
TMR1ON           .EQ  $0000
NOT_T1SYNC       .EQ  $0002
T1OSCEN          .EQ  $0003
T1CKPS0          .EQ  $0004
T1CKPS1          .EQ  $0005
TMR1CS0          .EQ  $0006
TMR1CS1          .EQ  $0007



;----- T1GCON Bits -----------------------------------------------------
T1GSS0           .EQ  $0000
T1GSS1           .EQ  $0001
T1GVAL           .EQ  $0002
T1GGO_NOT_DONE   .EQ  $0003
T1GSPM           .EQ  $0004
T1GTM            .EQ  $0005
T1GPOL           .EQ  $0006
TMR1GE           .EQ  $0007

T1GGO            .EQ  $0003


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


;----- TRISC Bits -----------------------------------------------------
TRISC0           .EQ  $0000
TRISC1           .EQ  $0001
TRISC2           .EQ  $0002
TRISC3           .EQ  $0003
TRISC4           .EQ  $0004
TRISC5           .EQ  $0005
TRISC6           .EQ  $0006
TRISC7           .EQ  $0007


;----- PIE1 Bits -----------------------------------------------------
TMR1IE           .EQ  $0000
ADIE             .EQ  $0006
TMR1GIE          .EQ  $0007


;----- PIE2 Bits -----------------------------------------------------
LCDIE            .EQ  $0002
EEIE             .EQ  $0004


;----- OPTION_REG Bits -----------------------------------------------------
PS0              .EQ  $0000
PS1              .EQ  $0001
PS2              .EQ  $0002
PSA              .EQ  $0003
TMR0SE           .EQ  $0004
TMR0CS           .EQ  $0005
INTEDG           .EQ  $0006
NOT_WPUEN        .EQ  $0007

T0SE             .EQ  $0004
T0CS             .EQ  $0005


;----- PCON Bits -----------------------------------------------------
NOT_BOR          .EQ  $0000
NOT_POR          .EQ  $0001
NOT_RI           .EQ  $0002
NOT_RMCLR        .EQ  $0003
NOT_RWDT         .EQ  $0004
STKUNF           .EQ  $0006
STKOVF           .EQ  $0007


;----- WDTCON Bits -----------------------------------------------------
SWDTEN           .EQ  $0000
WDTPS0           .EQ  $0001
WDTPS1           .EQ  $0002
WDTPS2           .EQ  $0003
WDTPS3           .EQ  $0004
WDTPS4           .EQ  $0005



;----- OSCCON Bits -----------------------------------------------------
SCS0             .EQ  $0000
SCS1             .EQ  $0001
IRCF0            .EQ  $0003
IRCF1            .EQ  $0004
IRCF2            .EQ  $0005
IRCF3            .EQ  $0006



;----- OSCSTAT Bits -----------------------------------------------------
HFIOFS           .EQ  $0000
LFIOFR           .EQ  $0001
HFIOFR           .EQ  $0004
OSTS             .EQ  $0005
T1OSCR           .EQ  $0007


;----- ADCON0 Bits -----------------------------------------------------
ADON             .EQ  $0000
GO_NOT_DONE      .EQ  $0001
CHS0             .EQ  $0002
CHS1             .EQ  $0003
CHS2             .EQ  $0004
CHS3             .EQ  $0005
CHS4             .EQ  $0006

ADGO             .EQ  $0001

GO               .EQ  $0001

NOT_DONE         .EQ  $0001


;----- ADCON1 Bits -----------------------------------------------------
ADPREF0          .EQ  $0000
ADPREF1          .EQ  $0001
ADCS0            .EQ  $0004
ADCS1            .EQ  $0005
ADCS2            .EQ  $0006
ADFM             .EQ  $0007



;----- LATA Bits -----------------------------------------------------
LATA0            .EQ  $0000
LATA1            .EQ  $0001
LATA2            .EQ  $0002
LATA3            .EQ  $0003
LATA4            .EQ  $0004
LATA5            .EQ  $0005
LATA6            .EQ  $0006
LATA7            .EQ  $0007


;----- LATB Bits -----------------------------------------------------
LATB0            .EQ  $0000
LATB1            .EQ  $0001
LATB2            .EQ  $0002
LATB3            .EQ  $0003
LATB4            .EQ  $0004
LATB5            .EQ  $0005
LATB6            .EQ  $0006
LATB7            .EQ  $0007


;----- LATC Bits -----------------------------------------------------
LATC0            .EQ  $0000
LATC1            .EQ  $0001
LATC2            .EQ  $0002
LATC3            .EQ  $0003
LATC4            .EQ  $0004
LATC5            .EQ  $0005
LATC6            .EQ  $0006
LATC7            .EQ  $0007


;----- BORCON Bits -----------------------------------------------------
BORRDY           .EQ  $0000
BORFS            .EQ  $0006
SBOREN           .EQ  $0007


;----- FVRCON Bits -----------------------------------------------------
ADFVR0           .EQ  $0000
ADFVR1           .EQ  $0001
TSRNG            .EQ  $0004
TSEN             .EQ  $0005
FVRRDY           .EQ  $0006
FVREN            .EQ  $0007



;----- ANSELA Bits -----------------------------------------------------
ANSA0            .EQ  $0000
ANSA1            .EQ  $0001
ANSA2            .EQ  $0002
ANSA3            .EQ  $0003
ANSA5            .EQ  $0005



;----- ANSELB Bits -----------------------------------------------------
ANSB0            .EQ  $0000
ANSB1            .EQ  $0001
ANSB2            .EQ  $0002
ANSB3            .EQ  $0003
ANSB4            .EQ  $0004
ANSB5            .EQ  $0005



;----- PMCON1 Bits -----------------------------------------------------
RD               .EQ  $0000
WR               .EQ  $0001
WREN             .EQ  $0002
WRERR            .EQ  $0003
FREE             .EQ  $0004
LWLO             .EQ  $0005
CFGS             .EQ  $0006


;----- WPUB Bits -----------------------------------------------------
WPUB0            .EQ  $0000
WPUB1            .EQ  $0001
WPUB2            .EQ  $0002
WPUB3            .EQ  $0003
WPUB4            .EQ  $0004
WPUB5            .EQ  $0005
WPUB6            .EQ  $0006
WPUB7            .EQ  $0007



;----- WPUE Bits -----------------------------------------------------
WPUE3            .EQ  $0003


;----- IOCBP Bits -----------------------------------------------------
IOCBP0           .EQ  $0000
IOCBP1           .EQ  $0001
IOCBP2           .EQ  $0002
IOCBP3           .EQ  $0003
IOCBP4           .EQ  $0004
IOCBP5           .EQ  $0005
IOCBP6           .EQ  $0006
IOCBP7           .EQ  $0007



;----- IOCBN Bits -----------------------------------------------------
IOCBN0           .EQ  $0000
IOCBN1           .EQ  $0001
IOCBN2           .EQ  $0002
IOCBN3           .EQ  $0003
IOCBN4           .EQ  $0004
IOCBN5           .EQ  $0005
IOCBN6           .EQ  $0006
IOCBN7           .EQ  $0007



;----- IOCBF Bits -----------------------------------------------------
IOCBF0           .EQ  $0000
IOCBF1           .EQ  $0001
IOCBF2           .EQ  $0002
IOCBF3           .EQ  $0003
IOCBF4           .EQ  $0004
IOCBF5           .EQ  $0005
IOCBF6           .EQ  $0006
IOCBF7           .EQ  $0007



;----- LCDCON Bits -----------------------------------------------------
LMUX0            .EQ  $0000
LMUX1            .EQ  $0001
CS0              .EQ  $0002
CS1              .EQ  $0003
WERR             .EQ  $0005
SLPEN            .EQ  $0006
LCDEN            .EQ  $0007



;----- LCDPS Bits -----------------------------------------------------
LP0              .EQ  $0000
LP1              .EQ  $0001
LP2              .EQ  $0002
LP3              .EQ  $0003
WA               .EQ  $0004
LCDA             .EQ  $0005
BIASMD           .EQ  $0006
WFT              .EQ  $0007



;----- LCDREF Bits -----------------------------------------------------
VLCD1PE          .EQ  $0001
VLCD2PE          .EQ  $0002
VLCD3PE          .EQ  $0003
LCDIRI           .EQ  $0005
LCDIRE           .EQ  $0007


;----- LCDCST Bits -----------------------------------------------------
LCDCST0          .EQ  $0000
LCDCST1          .EQ  $0001
LCDCST2          .EQ  $0002



;----- LCDRL Bits -----------------------------------------------------
LRLAT0           .EQ  $0000
LRLAT1           .EQ  $0001
LRLAT2           .EQ  $0002
LRLBP0           .EQ  $0004
LRLBP1           .EQ  $0005
LRLAP0           .EQ  $0006
LRLAP1           .EQ  $0007



;----- LCDSE0 Bits -----------------------------------------------------
SE0              .EQ  $0000
SE1              .EQ  $0001
SE2              .EQ  $0002
SE3              .EQ  $0003
SE4              .EQ  $0004
SE5              .EQ  $0005
SE6              .EQ  $0006
SE7              .EQ  $0007


;----- LCDSE1 Bits -----------------------------------------------------
SE8              .EQ  $0000
SE9              .EQ  $0001
SE10             .EQ  $0002
SE11             .EQ  $0003
SE12             .EQ  $0004
SE13             .EQ  $0005
SE14             .EQ  $0006
SE15             .EQ  $0007


;----- LCDSE3 Bits -----------------------------------------------------
SE24             .EQ  $0000
SE25             .EQ  $0001
SE26             .EQ  $0002


;----- LCDDATA0 Bits -----------------------------------------------------
SEG0COM0         .EQ  $0000
SEG1COM0         .EQ  $0001
SEG2COM0         .EQ  $0002
SEG3COM0         .EQ  $0003
SEG4COM0         .EQ  $0004
SEG5COM0         .EQ  $0005
SEG6COM0         .EQ  $0006
SEG7COM0         .EQ  $0007


;----- LCDDATA1 Bits -----------------------------------------------------
SEG8COM0         .EQ  $0000
SEG9COM0         .EQ  $0001
SEG10COM0        .EQ  $0002
SEG11COM0        .EQ  $0003
SEG12COM0        .EQ  $0004
SEG13COM0        .EQ  $0005
SEG14COM0        .EQ  $0006
SEG15COM0        .EQ  $0007


;----- LCDDATA3 Bits -----------------------------------------------------
SEG0COM1         .EQ  $0000
SEG1COM1         .EQ  $0001
SEG2COM1         .EQ  $0002
SEG3COM1         .EQ  $0003
SEG4COM1         .EQ  $0004
SEG5COM1         .EQ  $0005
SEG6COM1         .EQ  $0006
SEG7COM1         .EQ  $0007


;----- LCDDATA4 Bits -----------------------------------------------------
SEG8COM1         .EQ  $0000
SEG9COM1         .EQ  $0001
SEG10COM1        .EQ  $0002
SEG11COM1        .EQ  $0003
SEG12COM1        .EQ  $0004
SEG13COM1        .EQ  $0005
SEG14COM1        .EQ  $0006
SEG15COM1        .EQ  $0007


;----- LCDDATA6 Bits -----------------------------------------------------
SEG0COM2         .EQ  $0000
SEG1COM2         .EQ  $0001
SEG2COM2         .EQ  $0002
SEG3COM2         .EQ  $0003
SEG4COM2         .EQ  $0004
SEG5COM2         .EQ  $0005
SEG6COM2         .EQ  $0006
SEG7COM2         .EQ  $0007


;----- LCDDATA7 Bits -----------------------------------------------------
SEG8COM2         .EQ  $0000
SEG9COM2         .EQ  $0001
SEG10COM2        .EQ  $0002
SEG11COM2        .EQ  $0003
SEG12COM2        .EQ  $0004
SEG13COM2        .EQ  $0005
SEG14COM2        .EQ  $0006
SEG15COM2        .EQ  $0007


;----- LCDDATA9 Bits -----------------------------------------------------
SEG0COM3         .EQ  $0000
SEG1COM3         .EQ  $0001
SEG2COM3         .EQ  $0002
SEG3COM3         .EQ  $0003
SEG4COM3         .EQ  $0004
SEG5COM3         .EQ  $0005
SEG6COM3         .EQ  $0006
SEG7COM3         .EQ  $0007


;----- LCDDATA10 Bits -----------------------------------------------------
SEG8COM3         .EQ  $0000
SEG9COM3         .EQ  $0001
SEG10COM3        .EQ  $0002
SEG11COM3        .EQ  $0003
SEG12COM3        .EQ  $0004
SEG13COM3        .EQ  $0005
SEG14COM3        .EQ  $0006
SEG15COM3        .EQ  $0007


;----- LCDDATA12 Bits -----------------------------------------------------
SEG24COM0        .EQ  $0000
SEG25COM0        .EQ  $0001
SEG26COM0        .EQ  $0002


;----- LCDDATA15 Bits -----------------------------------------------------
SEG24COM1        .EQ  $0000
SEG25COM1        .EQ  $0001
SEG26COM1        .EQ  $0002


;----- LCDDATA18 Bits -----------------------------------------------------
SEG24COM2        .EQ  $0000
SEG25COM2        .EQ  $0001
SEG26COM2        .EQ  $0002


;----- LCDDATA21 Bits -----------------------------------------------------
SEG24COM3        .EQ  $0000
SEG25COM3        .EQ  $0001
SEG26COM3        .EQ  $0002


;----- STATUS_SHAD Bits -----------------------------------------------------
C_SHAD           .EQ  $0000
DC_SHAD          .EQ  $0001
Z_SHAD           .EQ  $0002



;==========================================================================
;
;       RAM Definitions
;
;==========================================================================

_MAXRAM          .EQ  $0FFF

;==========================================================================
;
;       Configuration Bits
;
;   NAME            Address
;   CONFIG1           8007h
;   CONFIG2           8008h
;
;==========================================================================

; The following is an assignment of address values for all of the
; configuration registers for the purpose of table reads
_CONFIG1        .EQ  $8007
_CONFIG2        .EQ  $8008

;----- CONFIG1 Options --------------------------------------------------
_FOSC_INTOSC         .EQ  $3FFC  INTOSC oscillator: I/O function on CLKIN pin
_FOSC_ECL            .EQ  $3FFD  ECL, External Clock, Low Power Mode (0-0.5 MHz): device clock supplied to CLKIN pin
_FOSC_ECM            .EQ  $3FFE  ECM, External Clock, Medium Power Mode (0.5-4 MHz): device clock supplied to CLKIN pin
_FOSC_ECH            .EQ  $3FFF  ECH, External Clock, High Power Mode (4-32 MHz): device clock supplied to CLKIN pin

_WDTE_OFF            .EQ  $3FE7  WDT disabled
_WDTE_SWDTEN         .EQ  $3FEF  WDT controlled by the SWDTEN bit in the WDTCON register
_WDTE_NSLEEP         .EQ  $3FF7  WDT enabled while running and disabled in Sleep
_WDTE_ON             .EQ  $3FFF  WDT enabled

_PWRTE_ON            .EQ  $3FDF  PWRT enabled
_PWRTE_OFF           .EQ  $3FFF  PWRT disabled

_MCLRE_OFF           .EQ  $3FBF  MCLR/VPP pin function is digital input
_MCLRE_ON            .EQ  $3FFF  MCLR/VPP pin function is MCLR

_CP_ON               .EQ  $3F7F  Program memory code protection is enabled
_CP_OFF              .EQ  $3FFF  Program memory code protection is disabled

_BOREN_OFF           .EQ  $39FF  Brown-out Reset disabled
_BOREN_SBODEN        .EQ  $3BFF  Brown-out Reset controlled by the SBOREN bit in the BORCON register
_BOREN_NSLEEP        .EQ  $3DFF  Brown-out Reset enabled while running and disabled in Sleep
_BOREN_ON            .EQ  $3FFF  Brown-out Reset enabled

_CLKOUTEN_ON         .EQ  $37FF  CLKOUT function is enabled on the CLKOUT pin
_CLKOUTEN_OFF        .EQ  $3FFF  CLKOUT function is disabled. I/O or oscillator function on the CLKOUT pin

;----- CONFIG2 Options --------------------------------------------------
_WRT_ALL             .EQ  $3FFC  000h to 7FFh write protected, no addresses may be modified by PMCON control
_WRT_HALF            .EQ  $3FFD  000h to 3FFh write protected, 400h to 7FFh may be modified by PMCON control
_WRT_BOOT            .EQ  $3FFE  000h to 1FFh write protected, 200h to 7FFh may be modified by PMCON control
_WRT_OFF             .EQ  $3FFF  Write protection off

_STVREN_OFF          .EQ  $3DFF  Stack Overflow or Underflow will not cause a Reset
_STVREN_ON           .EQ  $3FFF  Stack Overflow or Underflow will cause a Reset

_BORV_HI             .EQ  $3BFF  Brown-out Reset Voltage (Vbor), high trip point selected.
_BORV_LO             .EQ  $3FFF  Brown-out Reset Voltage (Vbor), low trip point selected.
_BORV_19             .EQ  $3FFF  Brown-out Reset Voltage (Vbor), low trip point selected.

_LPBOR_ON            .EQ  $37FF  Low-Power BOR is enabled
_LPBOR_OFF           .EQ  $3FFF  Low-Power BOR is disabled

_LVP_OFF             .EQ  $1FFF  High-voltage on MCLR/VPP must be used for programming
_LVP_ON              .EQ  $3FFF  Low-voltage programming enabled

;----- DEVID Equates --------------------------------------------------
_DEVID1          .EQ  $8006

;----- IDLOC Equates --------------------------------------------------
_IDLOC0          .EQ  $8000
_IDLOC1          .EQ  $8001
_IDLOC2          .EQ  $8002
_IDLOC3          .EQ  $8003
