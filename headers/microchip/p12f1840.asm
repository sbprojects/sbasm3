;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC12F1840 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC12F1840 microcontroller.  These names
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

                  .CR   pic14e
                  .MS   4096

;==========================================================================
;
;       Register Definitions
;
;==========================================================================

;----- Register Files -----------------------------------------------------

;-----Bank0------------------
INDF0            .EQ  $00
INDF1            .EQ  $01
PCL              .EQ  $02
STATUS           .EQ  $03
FSR0             .EQ  $04
FSR0L            .EQ  $04
FSR0H            .EQ  $05
FSR1             .EQ  $06
FSR1L            .EQ  $06
FSR1H            .EQ  $07
BSR              .EQ  $08
WREG             .EQ  $09
PCLATH           .EQ  $0A
INTCON           .EQ  $0B
PORTA            .EQ  $0C
PIR1             .EQ  $11
PIR2             .EQ  $12
TMR0             .EQ  $15
TMR1             .EQ  $16
TMR1L            .EQ  $16
TMR1H            .EQ  $17
T1CON            .EQ  $18
T1GCON           .EQ  $19
TMR2             .EQ  $1A
PR2              .EQ  $1B
T2CON            .EQ  $1C
CPSCON0          .EQ  $1E
CPSCON1          .EQ  $1F

;-----Bank1------------------
TRISA            .EQ  $8C
PIE1             .EQ  $91
PIE2             .EQ  $92
OPTION_REG       .EQ  $95
PCON             .EQ  $96
WDTCON           .EQ  $97
OSCTUNE          .EQ  $98
OSCCON           .EQ  $99
OSCSTAT          .EQ  $9A
ADRES            .EQ  $9B
ADRESL           .EQ  $9B
ADRESH           .EQ  $9C
ADCON0           .EQ  $9D
ADCON1           .EQ  $9E

;-----Bank2------------------
LATA             .EQ  $010C
CM1CON0          .EQ  $0111
CM1CON1          .EQ  $0112
CMOUT            .EQ  $0115
BORCON           .EQ  $0116
FVRCON           .EQ  $0117
DACCON0          .EQ  $0118
DACCON1          .EQ  $0119
SRCON0           .EQ  $011A
SRCON1           .EQ  $011B
APFCON           .EQ  $011D
APFCON0          .EQ  $011D

;-----Bank3------------------
ANSELA           .EQ  $018C
EEADR            .EQ  $0191
EEADRL           .EQ  $0191
EEADRH           .EQ  $0192
EEDAT            .EQ  $0193
EEDATL           .EQ  $0193
EEDATH           .EQ  $0194
EECON1           .EQ  $0195
EECON2           .EQ  $0196
VREGCON          .EQ  $0197
RCREG            .EQ  $0199
TXREG            .EQ  $019A
SP1BRG           .EQ  $019B
SP1BRGL          .EQ  $019B
SPBRG            .EQ  $019B
SPBRGL           .EQ  $019B
SP1BRGH          .EQ  $019C
SPBRGH           .EQ  $019C
RCSTA            .EQ  $019D
TXSTA            .EQ  $019E
BAUDCON          .EQ  $019F

;-----Bank4------------------
WPUA             .EQ  $020C
SSP1BUF          .EQ  $0211
SSPBUF           .EQ  $0211
SSP1ADD          .EQ  $0212
SSPADD           .EQ  $0212
SSP1MSK          .EQ  $0213
SSPMSK           .EQ  $0213
SSP1STAT         .EQ  $0214
SSPSTAT          .EQ  $0214
SSP1CON1         .EQ  $0215
SSPCON           .EQ  $0215
SSPCON1          .EQ  $0215
SSP1CON2         .EQ  $0216
SSPCON2          .EQ  $0216
SSP1CON3         .EQ  $0217
SSPCON3          .EQ  $0217

;-----Bank5------------------
CCPR1            .EQ  $0291
CCPR1L           .EQ  $0291
CCPR1H           .EQ  $0292
CCP1CON          .EQ  $0293
PWM1CON          .EQ  $0294
CCP1AS           .EQ  $0295
ECCP1AS          .EQ  $0295
PSTR1CON         .EQ  $0296

;-----Bank7------------------
IOCAP            .EQ  $0391
IOCAN            .EQ  $0392
IOCAF            .EQ  $0393
CLKRCON          .EQ  $039A
MDCON            .EQ  $039C
MDSRC            .EQ  $039D
MDCARL           .EQ  $039E
MDCARH           .EQ  $039F

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
C                .EQ  0
DC               .EQ  1
Z                .EQ  2
NOT_PD           .EQ  3
NOT_TO           .EQ  4


;----- BSR Bits -----------------------------------------------------
BSR0             .EQ  0
BSR1             .EQ  1
BSR2             .EQ  2
BSR3             .EQ  3
BSR4             .EQ  4



;----- INTCON Bits -----------------------------------------------------
IOCIF            .EQ  0
INTF             .EQ  1
TMR0IF           .EQ  2
IOCIE            .EQ  3
INTE             .EQ  4
TMR0IE           .EQ  5
PEIE             .EQ  6
GIE              .EQ  7

T0IF             .EQ  2
T0IE             .EQ  5


;----- PORTA Bits -----------------------------------------------------
RA0              .EQ  0
RA1              .EQ  1
RA2              .EQ  2
RA3              .EQ  3
RA4              .EQ  4
RA5              .EQ  5


;----- PIR1 Bits -----------------------------------------------------
TMR1IF           .EQ  0
TMR2IF           .EQ  1
CCP1IF           .EQ  2
SSP1IF           .EQ  3
TXIF             .EQ  4
RCIF             .EQ  5
ADIF             .EQ  6
TMR1GIF          .EQ  7


;----- PIR2 Bits -----------------------------------------------------
BCL1IF           .EQ  3
EEIF             .EQ  4
C1IF             .EQ  5
OSFIF            .EQ  7


;----- T1CON Bits -----------------------------------------------------
TMR1ON           .EQ  0
NOT_T1SYNC       .EQ  2
T1OSCEN          .EQ  3
T1CKPS0          .EQ  4
T1CKPS1          .EQ  5
TMR1CS0          .EQ  6
TMR1CS1          .EQ  7



;----- T1GCON Bits -----------------------------------------------------
T1GSS0           .EQ  0
T1GSS1           .EQ  1
T1GVAL           .EQ  2
T1GGO_NOT_DONE   .EQ  3
T1GSPM           .EQ  4
T1GTM            .EQ  5
T1GPOL           .EQ  6
TMR1GE           .EQ  7

T1GGO            .EQ  3


;----- T2CON Bits -----------------------------------------------------
T2CKPS0          .EQ  0
T2CKPS1          .EQ  1
TMR2ON           .EQ  2
T2OUTPS0         .EQ  3
T2OUTPS1         .EQ  4
T2OUTPS2         .EQ  5
T2OUTPS3         .EQ  6



;----- CPSCON0 Bits -----------------------------------------------------
T0XCS            .EQ  0
CPSOUT           .EQ  1
CPSRNG0          .EQ  2
CPSRNG1          .EQ  3
CPSRM            .EQ  6
CPSON            .EQ  7



;----- CPSCON1 Bits -----------------------------------------------------
CPSCH0           .EQ  0
CPSCH1           .EQ  1



;----- TRISA Bits -----------------------------------------------------
TRISA0           .EQ  0
TRISA1           .EQ  1
TRISA2           .EQ  2
TRISA3           .EQ  3
TRISA4           .EQ  4
TRISA5           .EQ  5


;----- PIE1 Bits -----------------------------------------------------
TMR1IE           .EQ  0
TMR2IE           .EQ  1
CCP1IE           .EQ  2
SSP1IE           .EQ  3
TXIE             .EQ  4
RCIE             .EQ  5
ADIE             .EQ  6
TMR1GIE          .EQ  7


;----- PIE2 Bits -----------------------------------------------------
BCL1IE           .EQ  3
EEIE             .EQ  4
C1IE             .EQ  5
OSFIE            .EQ  7


;----- OPTION_REG Bits -----------------------------------------------------
PS0              .EQ  0
PS1              .EQ  1
PS2              .EQ  2
PSA              .EQ  3
TMR0SE           .EQ  4
TMR0CS           .EQ  5
INTEDG           .EQ  6
NOT_WPUEN        .EQ  7

T0SE             .EQ  4
T0CS             .EQ  5


;----- PCON Bits -----------------------------------------------------
NOT_BOR          .EQ  0
NOT_POR          .EQ  1
NOT_RI           .EQ  2
NOT_RMCLR        .EQ  3
STKUNF           .EQ  6
STKOVF           .EQ  7


;----- WDTCON Bits -----------------------------------------------------
SWDTEN           .EQ  0
WDTPS0           .EQ  1
WDTPS1           .EQ  2
WDTPS2           .EQ  3
WDTPS3           .EQ  4
WDTPS4           .EQ  5



;----- OSCTUNE Bits -----------------------------------------------------
TUN0             .EQ  0
TUN1             .EQ  1
TUN2             .EQ  2
TUN3             .EQ  3
TUN4             .EQ  4
TUN5             .EQ  5



;----- OSCCON Bits -----------------------------------------------------
SCS0             .EQ  0
SCS1             .EQ  1
IRCF0            .EQ  3
IRCF1            .EQ  4
IRCF2            .EQ  5
IRCF3            .EQ  6
SPLLEN           .EQ  7



;----- OSCSTAT Bits -----------------------------------------------------
HFIOFS           .EQ  0
LFIOFR           .EQ  1
MFIOFR           .EQ  2
HFIOFL           .EQ  3
HFIOFR           .EQ  4
OSTS             .EQ  5
PLLR             .EQ  6
T1OSCR           .EQ  7


;----- ADCON0 Bits -----------------------------------------------------
ADON             .EQ  0
GO_NOT_DONE      .EQ  1
CHS0             .EQ  2
CHS1             .EQ  3
CHS2             .EQ  4
CHS3             .EQ  5
CHS4             .EQ  6

ADGO             .EQ  1

GO               .EQ  1


;----- ADCON1 Bits -----------------------------------------------------
ADPREF0          .EQ  0
ADPREF1          .EQ  1
ADCS0            .EQ  4
ADCS1            .EQ  5
ADCS2            .EQ  6
ADFM             .EQ  7



;----- LATA Bits -----------------------------------------------------
LATA0            .EQ  0
LATA1            .EQ  1
LATA2            .EQ  2
LATA4            .EQ  4
LATA5            .EQ  5


;----- CM1CON0 Bits -----------------------------------------------------
C1SYNC           .EQ  0
C1HYS            .EQ  1
C1SP             .EQ  2
C1POL            .EQ  4
C1OE             .EQ  5
C1OUT            .EQ  6
C1ON             .EQ  7


;----- CM1CON1 Bits -----------------------------------------------------
C1NCH            .EQ  0
C1PCH0           .EQ  4
C1PCH1           .EQ  5
C1INTN           .EQ  6
C1INTP           .EQ  7

C1NCH0           .EQ  0


;----- CMOUT Bits -----------------------------------------------------
MC1OUT           .EQ  0


;----- BORCON Bits -----------------------------------------------------
BORRDY           .EQ  0
BORFS            .EQ  6
SBOREN           .EQ  7


;----- FVRCON Bits -----------------------------------------------------
ADFVR0           .EQ  0
ADFVR1           .EQ  1
CDAFVR0          .EQ  2
CDAFVR1          .EQ  3
TSRNG            .EQ  4
TSEN             .EQ  5
FVRRDY           .EQ  6
FVREN            .EQ  7



;----- DACCON0 Bits -----------------------------------------------------
DACPSS0          .EQ  2
DACPSS1          .EQ  3
DACOE            .EQ  5
DACLPS           .EQ  6
DACEN            .EQ  7



;----- DACCON1 Bits -----------------------------------------------------
DACR0            .EQ  0
DACR1            .EQ  1
DACR2            .EQ  2
DACR3            .EQ  3
DACR4            .EQ  4



;----- SRCON0 Bits -----------------------------------------------------
SRPR             .EQ  0
SRPS             .EQ  1
SRNQEN           .EQ  2
SRQEN            .EQ  3
SRCLK0           .EQ  4
SRCLK1           .EQ  5
SRCLK2           .EQ  6
SRLEN            .EQ  7



;----- SRCON1 Bits -----------------------------------------------------
SRRC1E           .EQ  0
SRRCKE           .EQ  2
SRRPE            .EQ  3
SRSC1E           .EQ  4
SRSCKE           .EQ  6
SRSPE            .EQ  7


;----- APFCON Bits -----------------------------------------------------
CCP1SEL          .EQ  0
P1BSEL           .EQ  1
TXCKSEL          .EQ  2
T1GSEL           .EQ  3
SSSEL            .EQ  5
SDOSEL           .EQ  6
RXDTSEL          .EQ  7

SS1SEL           .EQ  5
SDO1SEL          .EQ  6


;----- APFCON0 Bits -----------------------------------------------------
CCP1SEL          .EQ  0
P1BSEL           .EQ  1
TXCKSEL          .EQ  2
T1GSEL           .EQ  3
SSSEL            .EQ  5
SDOSEL           .EQ  6
RXDTSEL          .EQ  7

SS1SEL           .EQ  5
SDO1SEL          .EQ  6


;----- ANSELA Bits -----------------------------------------------------
ANSA0            .EQ  0
ANSA1            .EQ  1
ANSA2            .EQ  2
ANSA4            .EQ  4



;----- EECON1 Bits -----------------------------------------------------
RD               .EQ  0
WR               .EQ  1
WREN             .EQ  2
WRERR            .EQ  3
FREE             .EQ  4
LWLO             .EQ  5
CFGS             .EQ  6
EEPGD            .EQ  7


;----- VREGCON Bits -----------------------------------------------------
VREGPM0          .EQ  0
VREGPM1          .EQ  1



;----- RCSTA Bits -----------------------------------------------------
RX9D             .EQ  0
OERR             .EQ  1
FERR             .EQ  2
ADDEN            .EQ  3
CREN             .EQ  4
SREN             .EQ  5
RX9              .EQ  6
SPEN             .EQ  7


;----- TXSTA Bits -----------------------------------------------------
TX9D             .EQ  0
TRMT             .EQ  1
BRGH             .EQ  2
SENDB            .EQ  3
SYNC             .EQ  4
TXEN             .EQ  5
TX9              .EQ  6
CSRC             .EQ  7


;----- BAUDCON Bits -----------------------------------------------------
ABDEN            .EQ  0
WUE              .EQ  1
BRG16            .EQ  3
SCKP             .EQ  4
RCIDL            .EQ  6
ABDOVF           .EQ  7


;----- WPUA Bits -----------------------------------------------------
WPUA0            .EQ  0
WPUA1            .EQ  1
WPUA2            .EQ  2
WPUA3            .EQ  3
WPUA4            .EQ  4
WPUA5            .EQ  5



;----- SSP1STAT Bits -----------------------------------------------------
BF               .EQ  0
UA               .EQ  1
R_NOT_W          .EQ  2
S                .EQ  3
P                .EQ  4
D_NOT_A          .EQ  5
CKE              .EQ  6
SMP              .EQ  7


;----- SSPSTAT Bits -----------------------------------------------------
BF               .EQ  0
UA               .EQ  1
R_NOT_W          .EQ  2
S                .EQ  3
P                .EQ  4
D_NOT_A          .EQ  5
CKE              .EQ  6
SMP              .EQ  7


;----- SSP1CON1 Bits -----------------------------------------------------
SSPM0            .EQ  0
SSPM1            .EQ  1
SSPM2            .EQ  2
SSPM3            .EQ  3
CKP              .EQ  4
SSPEN            .EQ  5
SSPOV            .EQ  6
WCOL             .EQ  7



;----- SSPCON Bits -----------------------------------------------------
SSPM0            .EQ  0
SSPM1            .EQ  1
SSPM2            .EQ  2
SSPM3            .EQ  3
CKP              .EQ  4
SSPEN            .EQ  5
SSPOV            .EQ  6
WCOL             .EQ  7



;----- SSPCON1 Bits -----------------------------------------------------
SSPM0            .EQ  0
SSPM1            .EQ  1
SSPM2            .EQ  2
SSPM3            .EQ  3
CKP              .EQ  4
SSPEN            .EQ  5
SSPOV            .EQ  6
WCOL             .EQ  7



;----- SSP1CON2 Bits -----------------------------------------------------
SEN              .EQ  0
RSEN             .EQ  1
PEN              .EQ  2
RCEN             .EQ  3
ACKEN            .EQ  4
ACKDT            .EQ  5
ACKSTAT          .EQ  6
GCEN             .EQ  7


;----- SSPCON2 Bits -----------------------------------------------------
SEN              .EQ  0
RSEN             .EQ  1
PEN              .EQ  2
RCEN             .EQ  3
ACKEN            .EQ  4
ACKDT            .EQ  5
ACKSTAT          .EQ  6
GCEN             .EQ  7


;----- SSP1CON3 Bits -----------------------------------------------------
DHEN             .EQ  0
AHEN             .EQ  1
SBCDE            .EQ  2
SDAHT            .EQ  3
BOEN             .EQ  4
SCIE             .EQ  5
PCIE             .EQ  6
ACKTIM           .EQ  7


;----- SSPCON3 Bits -----------------------------------------------------
DHEN             .EQ  0
AHEN             .EQ  1
SBCDE            .EQ  2
SDAHT            .EQ  3
BOEN             .EQ  4
SCIE             .EQ  5
PCIE             .EQ  6
ACKTIM           .EQ  7


;----- CCP1CON Bits -----------------------------------------------------
CCP1M0           .EQ  0
CCP1M1           .EQ  1
CCP1M2           .EQ  2
CCP1M3           .EQ  3
DC1B0            .EQ  4
DC1B1            .EQ  5
P1M0             .EQ  6
P1M1             .EQ  7



;----- PWM1CON Bits -----------------------------------------------------
P1DC0            .EQ  0
P1DC1            .EQ  1
P1DC2            .EQ  2
P1DC3            .EQ  3
P1DC4            .EQ  4
P1DC5            .EQ  5
P1DC6            .EQ  6
P1RSEN           .EQ  7



;----- CCP1AS Bits -----------------------------------------------------
PSS1BD0          .EQ  0
PSS1BD1          .EQ  1
PSS1AC0          .EQ  2
PSS1AC1          .EQ  3
CCP1AS0          .EQ  4
CCP1AS1          .EQ  5
CCP1AS2          .EQ  6
CCP1ASE          .EQ  7



;----- ECCP1AS Bits -----------------------------------------------------
PSS1BD0          .EQ  0
PSS1BD1          .EQ  1
PSS1AC0          .EQ  2
PSS1AC1          .EQ  3
CCP1AS0          .EQ  4
CCP1AS1          .EQ  5
CCP1AS2          .EQ  6
CCP1ASE          .EQ  7



;----- PSTR1CON Bits -----------------------------------------------------
STR1A            .EQ  0
STR1B            .EQ  1
STR1SYNC         .EQ  4


;----- IOCAP Bits -----------------------------------------------------
IOCAP0           .EQ  0
IOCAP1           .EQ  1
IOCAP2           .EQ  2
IOCAP3           .EQ  3
IOCAP4           .EQ  4
IOCAP5           .EQ  5



;----- IOCAN Bits -----------------------------------------------------
IOCAN0           .EQ  0
IOCAN1           .EQ  1
IOCAN2           .EQ  2
IOCAN3           .EQ  3
IOCAN4           .EQ  4
IOCAN5           .EQ  5



;----- IOCAF Bits -----------------------------------------------------
IOCAF0           .EQ  0
IOCAF1           .EQ  1
IOCAF2           .EQ  2
IOCAF3           .EQ  3
IOCAF4           .EQ  4
IOCAF5           .EQ  5



;----- CLKRCON Bits -----------------------------------------------------
CLKRDIV0         .EQ  0
CLKRDIV1         .EQ  1
CLKRDIV2         .EQ  2
CLKRDC0          .EQ  3
CLKRDC1          .EQ  4
CLKRSLR          .EQ  5
CLKROE           .EQ  6
CLKREN           .EQ  7



;----- MDCON Bits -----------------------------------------------------
MDBIT            .EQ  0
MDOUT            .EQ  3
MDOPOL           .EQ  4
MDSLR            .EQ  5
MDOE             .EQ  6
MDEN             .EQ  7


;----- MDSRC Bits -----------------------------------------------------
MDMS0            .EQ  0
MDMS1            .EQ  1
MDMS2            .EQ  2
MDMS3            .EQ  3
MDMSODIS         .EQ  7



;----- MDCARL Bits -----------------------------------------------------
MDCL0            .EQ  0
MDCL1            .EQ  1
MDCL2            .EQ  2
MDCL3            .EQ  3
MDCLSYNC         .EQ  5
MDCLPOL          .EQ  6
MDCLODIS         .EQ  7



;----- MDCARH Bits -----------------------------------------------------
MDCH0            .EQ  0
MDCH1            .EQ  1
MDCH2            .EQ  2
MDCH3            .EQ  3
MDCHSYNC         .EQ  5
MDCHPOL          .EQ  6
MDCHODIS         .EQ  7



;----- STATUS_SHAD Bits -----------------------------------------------------
C_SHAD           .EQ  0
DC_SHAD          .EQ  1
Z_SHAD           .EQ  2



;==========================================================================
;
;       RAM Definitions
;
;==========================================================================

_MAXRAM       .EQ   $0FFF

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
_FOSC_LP             .EQ  $3FF8  LP Oscillator, Low-power crystal connected between OSC1 and OSC2 pins
_FOSC_XT             .EQ  $3FF9  XT Oscillator, Crystal/resonator connected between OSC1 and OSC2 pins
_FOSC_HS             .EQ  $3FFA  HS Oscillator, High-speed crystal/resonator connected between OSC1 and OSC2 pins
_FOSC_EXTRC          .EQ  $3FFB  EXTRC oscillator: External RC circuit connected to CLKIN pin
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

_CPD_ON              .EQ  $3EFF  Data memory code protection is enabled
_CPD_OFF             .EQ  $3FFF  Data memory code protection is disabled

_BOREN_OFF           .EQ  $39FF  Brown-out Reset disabled
_BOREN_SBODEN        .EQ  $3BFF  Brown-out Reset controlled by the SBOREN bit in the BORCON register
_BOREN_NSLEEP        .EQ  $3DFF  Brown-out Reset enabled while running and disabled in Sleep
_BOREN_ON            .EQ  $3FFF  Brown-out Reset enabled

_CLKOUTEN_ON         .EQ  $37FF  CLKOUT function is enabled on the CLKOUT pin
_CLKOUTEN_OFF        .EQ  $3FFF  CLKOUT function is disabled. I/O or oscillator function on the CLKOUT pin

_IESO_OFF            .EQ  $2FFF  Internal/External Switchover mode is disabled
_IESO_ON             .EQ  $3FFF  Internal/External Switchover mode is enabled

_FCMEN_OFF           .EQ  $1FFF  Fail-Safe Clock Monitor is disabled
_FCMEN_ON            .EQ  $3FFF  Fail-Safe Clock Monitor is enabled

;----- CONFIG2 Options --------------------------------------------------
_WRT_ALL             .EQ  $3FFC  000h to FFFh write protected, no addresses may be modified by EECON control
_WRT_HALF            .EQ  $3FFD  000h to 7FFh write protected, 800h to FFFh may be modified by EECON control
_WRT_BOOT            .EQ  $3FFE  000h to 1FFh write protected, 200h to FFFh may be modified by EECON control
_WRT_OFF             .EQ  $3FFF  Write protection off

_PLLEN_OFF           .EQ  $3EFF  4x PLL disabled
_PLLEN_ON            .EQ  $3FFF  4x PLL enabled

_STVREN_OFF          .EQ  $3DFF  Stack Overflow or Underflow will not cause a Reset
_STVREN_ON           .EQ  $3FFF  Stack Overflow or Underflow will cause a Reset

_BORV_HI             .EQ  $3BFF  Brown-out Reset Voltage (Vbor), high trip point selected.
_BORV_LO             .EQ  $3FFF  Brown-out Reset Voltage (Vbor), low trip point selected.
_BORV_19             .EQ  $3FFF  Brown-out Reset Voltage (Vbor), low trip point selected.

_LVP_OFF             .EQ  $1FFF  High-voltage on MCLR/VPP must be used for programming
_LVP_ON              .EQ  $3FFF  Low-voltage programming enabled

;----- DEVID .EQates --------------------------------------------------
_DEVID1          .EQ  $8006

;----- IDLOC .EQates --------------------------------------------------
_IDLOC0          .EQ  $8000
_IDLOC1          .EQ  $8001
_IDLOC2          .EQ  $8002
_IDLOC3          .EQ  $8003


