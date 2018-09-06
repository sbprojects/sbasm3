;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC16C745 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC16C745 microcontroller.  These names
;  are taken to match the data sheets as closely as possible.
;==========================================================================

;==========================================================================
;
;       Select cross overlay
;
;==========================================================================

                  .CR   pic14
                  .MS   8192

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
PORTC            .EQ  $0007
PCLATH           .EQ  $000A
INTCON           .EQ  $000B
PIR1             .EQ  $000C
PIR2             .EQ  $000D
TMR1             .EQ  $000E
TMR1L            .EQ  $000E
TMR1H            .EQ  $000F
T1CON            .EQ  $0010
TMR2             .EQ  $0011
T2CON            .EQ  $0012
CCPR1            .EQ  $0015
CCPR1L           .EQ  $0015
CCPR1H           .EQ  $0016
CCP1CON          .EQ  $0017
RCSTA            .EQ  $0018
TXREG            .EQ  $0019
RCREG            .EQ  $001A
CCPR2            .EQ  $001B
CCPR2L           .EQ  $001B
CCPR2H           .EQ  $001C
CCP2CON          .EQ  $001D
ADRES            .EQ  $001E
ADCON0           .EQ  $001F

;-----Bank1------------------
OPTION_REG       .EQ  $0081
TRISA            .EQ  $0085
TRISB            .EQ  $0086
TRISC            .EQ  $0087
PIE1             .EQ  $008C
PIE2             .EQ  $008D
PCON             .EQ  $008E
PR2              .EQ  $0092
TXSTA            .EQ  $0098
SPBRG            .EQ  $0099
ADCON1           .EQ  $009F

;-----Bank3------------------
UIR              .EQ  $0190
UIE              .EQ  $0191
UEIR             .EQ  $0192
UEIE             .EQ  $0193
USTAT            .EQ  $0194
UCTRL            .EQ  $0195
UADDR            .EQ  $0196
USWSTAT          .EQ  $0197
UEP0             .EQ  $0198
UEP1             .EQ  $0199
UEP2             .EQ  $019A
BD0OST           .EQ  $01A0
BD0OBC           .EQ  $01A1
BD0OAL           .EQ  $01A2
BD0IST           .EQ  $01A4
BD0IBC           .EQ  $01A5
BD0IAL           .EQ  $01A6
BD1OST           .EQ  $01A8
BD1OBC           .EQ  $01A9
BD1OAL           .EQ  $01AA
BD1IST           .EQ  $01AC
BD1IBC           .EQ  $01AD
BD1IAL           .EQ  $01AE
BD2OST           .EQ  $01B0
BD2OBC           .EQ  $01B1
BD2OAL           .EQ  $01B2
BD2IST           .EQ  $01B4
BD2IBC           .EQ  $01B5
BD2IAL           .EQ  $01B6

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
RC6              .EQ  $0006
RC7              .EQ  $0007


;----- INTCON Bits -----------------------------------------------------
RBIF             .EQ  $0000
INTF             .EQ  $0001
T0IF             .EQ  $0002
RBIE             .EQ  $0003
INTE             .EQ  $0004
T0IE             .EQ  $0005
PEIE             .EQ  $0006
GIE              .EQ  $0007

TMR0IF           .EQ  $0002
TMR0IE           .EQ  $0005


;----- PIR1 Bits -----------------------------------------------------
TMR1IF           .EQ  $0000
TMR2IF           .EQ  $0001
CCP1IF           .EQ  $0002
USBIF            .EQ  $0003
TXIF             .EQ  $0004
RCIF             .EQ  $0005
ADIF             .EQ  $0006


;----- PIR2 Bits -----------------------------------------------------
CCP2IF           .EQ  $0000


;----- T1CON Bits -----------------------------------------------------
TMR1ON           .EQ  $0000
TMR1CS           .EQ  $0001
NOT_T1SYNC       .EQ  $0002
T1OSCEN          .EQ  $0003

T1INSYNC         .EQ  $0002
T1CKPS0          .EQ  $0004
T1CKPS1          .EQ  $0005


;----- T2CON Bits -----------------------------------------------------
TMR2ON           .EQ  $0002

T2CKPS0          .EQ  $0000
T2CKPS1          .EQ  $0001
TOUTPS0          .EQ  $0003
TOUTPS1          .EQ  $0004
TOUTPS2          .EQ  $0005
TOUTPS3          .EQ  $0006


;----- CCP1CON Bits -----------------------------------------------------
CCP1M0           .EQ  $0000
CCP1M1           .EQ  $0001
CCP1M2           .EQ  $0002
CCP1M3           .EQ  $0003
DC1B0            .EQ  $0004
DC1B1            .EQ  $0005


;----- RCSTA Bits -----------------------------------------------------
RX9D             .EQ  $0000
OERR             .EQ  $0001
FERR             .EQ  $0002
CREN             .EQ  $0004
SREN             .EQ  $0005
RX9              .EQ  $0006
SPEN             .EQ  $0007

RCD8             .EQ  $0000
RC9              .EQ  $0006

NOT_RC8          .EQ  $0006

RC8_9            .EQ  $0006


;----- CCP2CON Bits -----------------------------------------------------
CCP2M0           .EQ  $0000
CCP2M1           .EQ  $0001
CCP2M2           .EQ  $0002
CCP2M3           .EQ  $0003
DC2B0            .EQ  $0004
DC2B1            .EQ  $0005


;----- ADCON0 Bits -----------------------------------------------------
ADON             .EQ  $0000
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
TRISC6           .EQ  $0006
TRISC7           .EQ  $0007


;----- PIE1 Bits -----------------------------------------------------
TMR1IE           .EQ  $0000
TMR2IE           .EQ  $0001
CCP1IE           .EQ  $0002
USBIE            .EQ  $0003
TXIE             .EQ  $0004
RCIE             .EQ  $0005
ADIE             .EQ  $0006


;----- PIE2 Bits -----------------------------------------------------
CCP2IE           .EQ  $0000


;----- PCON Bits -----------------------------------------------------
NOT_BOR          .EQ  $0000
NOT_POR          .EQ  $0001

NOT_BO           .EQ  $0000


;----- TXSTA Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SYNC             .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007

TXD8             .EQ  $0000
NOT_TX8          .EQ  $0006

TX8_9            .EQ  $0006


;----- ADCON1 Bits -----------------------------------------------------
PCFG0            .EQ  $0000
PCFG1            .EQ  $0001
PCFG2            .EQ  $0002


;----- UIR Bits -----------------------------------------------------
USB_RST          .EQ  $0000
UERR             .EQ  $0001
ACTIVITY         .EQ  $0002
TOK_DNE          .EQ  $0003
UIDLE            .EQ  $0004
STALL            .EQ  $0005


;----- UIE Bits -----------------------------------------------------
USB_RST          .EQ  $0000
UERR             .EQ  $0001
ACTIVITY         .EQ  $0002
TOK_DNE          .EQ  $0003
UIDLE            .EQ  $0004
STALL            .EQ  $0005


;----- UEIR Bits -----------------------------------------------------
PID_ERR          .EQ  $0000
CRC5             .EQ  $0001
CRC16            .EQ  $0002
DFN8             .EQ  $0003
BTO_ERR          .EQ  $0004
WRT_ERR          .EQ  $0005
OWN_ERR          .EQ  $0006
BTS_ERR          .EQ  $0007


;----- UEIE Bits -----------------------------------------------------
PID_ERR          .EQ  $0000
CRC5             .EQ  $0001
CRC16            .EQ  $0002
DFN8             .EQ  $0003
BTO_ERR          .EQ  $0004
WRT_ERR          .EQ  $0005
OWN_ERR          .EQ  $0006
BTS_ERR          .EQ  $0007


;----- USTAT Bits -----------------------------------------------------
IN               .EQ  $0002

ENDP0            .EQ  $0003
ENDP1            .EQ  $0004


;----- UCTRL Bits -----------------------------------------------------
SUSPND           .EQ  $0001
RESUME           .EQ  $0002
DEV_ATT          .EQ  $0003
PKT_DIS          .EQ  $0004
SE0              .EQ  $0005


;----- UEP0 Bits -----------------------------------------------------
EP_STALL         .EQ  $0000
EP_IN_EN         .EQ  $0001
EP_OUT_EN        .EQ  $0002
EP_CTL_DIS       .EQ  $0003


;----- UEP1 Bits -----------------------------------------------------
EP_STALL         .EQ  $0000
EP_IN_EN         .EQ  $0001
EP_OUT_EN        .EQ  $0002
EP_CTL_DIS       .EQ  $0003


;----- UEP2 Bits -----------------------------------------------------
EP_STALL         .EQ  $0000
EP_IN_EN         .EQ  $0001
EP_OUT_EN        .EQ  $0002
EP_CTL_DIS       .EQ  $0003


;----- BD0OST Bits -----------------------------------------------------
PID0_BSTALL      .EQ  $0002
PID1_DTS         .EQ  $0003
PID2             .EQ  $0004
PID3             .EQ  $0005
DATA0_1          .EQ  $0006
UOWN             .EQ  $0007

PID0             .EQ  $0002
PID1             .EQ  $0003
DATA01           .EQ  $0006
OWN              .EQ  $0007

BSTALL           .EQ  $0002
DTS              .EQ  $0003


;----- BD0IST Bits -----------------------------------------------------
PID0_BSTALL      .EQ  $0002
PID1_DTS         .EQ  $0003
PID2             .EQ  $0004
PID3             .EQ  $0005
DATA0_1          .EQ  $0006
UOWN             .EQ  $0007

PID0             .EQ  $0002
PID1             .EQ  $0003
DATA01           .EQ  $0006
OWN              .EQ  $0007

BSTALL           .EQ  $0002
DTS              .EQ  $0003


;----- BD0IBC Bits -----------------------------------------------------
BC0              .EQ  $0000
BC1              .EQ  $0001
BC2              .EQ  $0002
BC3              .EQ  $0003


;----- BD1OST Bits -----------------------------------------------------
PID0_BSTALL      .EQ  $0002
PID1_DTS         .EQ  $0003
PID2             .EQ  $0004
PID3             .EQ  $0005
DATA0_1          .EQ  $0006
UOWN             .EQ  $0007

PID0             .EQ  $0002
PID1             .EQ  $0003
DATA01           .EQ  $0006
OWN              .EQ  $0007

BSTALL           .EQ  $0002
DTS              .EQ  $0003


;----- BD1OBC Bits -----------------------------------------------------
BC0              .EQ  $0000
BC1              .EQ  $0001
BC2              .EQ  $0002
BC3              .EQ  $0003


;----- BD1IST Bits -----------------------------------------------------
PID0_BSTALL      .EQ  $0002
PID1_DTS         .EQ  $0003
PID2             .EQ  $0004
PID3             .EQ  $0005
DATA0_1          .EQ  $0006
UOWN             .EQ  $0007

PID0             .EQ  $0002
PID1             .EQ  $0003
DATA01           .EQ  $0006
OWN              .EQ  $0007

BSTALL           .EQ  $0002
DTS              .EQ  $0003


;----- BD1IBC Bits -----------------------------------------------------
BC0              .EQ  $0000
BC1              .EQ  $0001
BC2              .EQ  $0002
BC3              .EQ  $0003


;----- BD2OST Bits -----------------------------------------------------
PID0_BSTALL      .EQ  $0002
PID1_DTS         .EQ  $0003
PID2             .EQ  $0004
PID3             .EQ  $0005
DATA0_1          .EQ  $0006
UOWN             .EQ  $0007

PID0             .EQ  $0002
PID1             .EQ  $0003
DATA01           .EQ  $0006
OWN              .EQ  $0007

BSTALL           .EQ  $0002
DTS              .EQ  $0003


;----- BD2OBC Bits -----------------------------------------------------
BC0              .EQ  $0000
BC1              .EQ  $0001
BC2              .EQ  $0002
BC3              .EQ  $0003


;----- BD2IST Bits -----------------------------------------------------
PID0_BSTALL      .EQ  $0002
PID1_DTS         .EQ  $0003
PID2             .EQ  $0004
PID3             .EQ  $0005
DATA0_1          .EQ  $0006
UOWN             .EQ  $0007

PID0             .EQ  $0002
PID1             .EQ  $0003
DATA01           .EQ  $0006
OWN              .EQ  $0007

BSTALL           .EQ  $0002
DTS              .EQ  $0003


;----- BD2IBC Bits -----------------------------------------------------
BC0              .EQ  $0000
BC1              .EQ  $0001
BC2              .EQ  $0002
BC3              .EQ  $0003




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
_FOSC_HS             .EQ  $3FFC  HS oscillator
_HS_OSC              .EQ  $3FFC  HS oscillator
_FOSC_EC             .EQ  $3FFD  External clock. CLKOUT on OSC2 pin
_EC_OSC              .EQ  $3FFD  External clock. CLKOUT on OSC2 pin
_FOSC_H4             .EQ  $3FFE  HS osc with 4x PLL enabled
_H4_OSC              .EQ  $3FFE  HS osc with 4x PLL enabled
_FOSC_E4             .EQ  $3FFF  External clock with 4x PLL enabled. CLKOUT on OSC2 pin
_E4_OSC              .EQ  $3FFF  External clock with 4x PLL enabled. CLKOUT on OSC2 pin

_WDTE_OFF            .EQ  $3FFB  WDT disabled
_WDT_OFF             .EQ  $3FFB  WDT disabled
_WDTE_ON             .EQ  $3FFF  WDT enabled
_WDT_ON              .EQ  $3FFF  WDT enabled

_PWRTE_ON            .EQ  $3FF7  PWRT enabled
_PWRTE_OFF           .EQ  $3FFF  PWRT disabled

_CP_ALL              .EQ  $00CF  All memory is code protected
_CP_75               .EQ  $15DF  0800h-1FFFh code protected
_CP_50               .EQ  $2AEF  1000h-1FFFh code protected
_CP_OFF              .EQ  $3FFF  Code protection off

;----- DEVID Equates --------------------------------------------------
_DEVID1          .EQ  $2006

;----- IDLOC Equates --------------------------------------------------
_IDLOC0          .EQ  $2000
_IDLOC1          .EQ  $2001
_IDLOC2          .EQ  $2002
_IDLOC3          .EQ  $2003
