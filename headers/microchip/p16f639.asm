;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC16F639 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC16F639 microcontroller.  These names
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
PCLATH           .EQ  $000A
INTCON           .EQ  $000B
PIR1             .EQ  $000C
TMR1             .EQ  $000E
TMR1L            .EQ  $000E
TMR1H            .EQ  $000F
T1CON            .EQ  $0010
WDTCON           .EQ  $0018
CMCON0           .EQ  $0019
CMCON1           .EQ  $001A

;-----Bank1------------------
OPTION_REG       .EQ  $0081
TRISA            .EQ  $0085
TRISC            .EQ  $0087
PIE1             .EQ  $008C
PCON             .EQ  $008E
OSCCON           .EQ  $008F
OSCTUNE          .EQ  $0090
LVDCON           .EQ  $0094
WPUDA            .EQ  $0095
IOCA             .EQ  $0096
WDA              .EQ  $0097
VRCON            .EQ  $0099
EEDAT            .EQ  $009A
EEDATA           .EQ  $009A
EEADR            .EQ  $009B
EECON1           .EQ  $009C
EECON2           .EQ  $009D

;-----Bank2------------------
CRCON            .EQ  $0110
CRDAT0           .EQ  $0111
CRDAT1           .EQ  $0112
CRDAT2           .EQ  $0113
CRDAT3           .EQ  $0114

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


;----- PORTC Bits -----------------------------------------------------
RC0              .EQ  $0000
RC1              .EQ  $0001
RC2              .EQ  $0002
RC3              .EQ  $0003
RC4              .EQ  $0004
RC5              .EQ  $0005


;----- INTCON Bits -----------------------------------------------------
RAIF             .EQ  $0000
INTF             .EQ  $0001
T0IF             .EQ  $0002
RAIE             .EQ  $0003
INTE             .EQ  $0004
T0IE             .EQ  $0005
PEIE             .EQ  $0006
GIE              .EQ  $0007


;----- PIR1 Bits -----------------------------------------------------
TMR1IF           .EQ  $0000
OSFIF            .EQ  $0002
C1IF             .EQ  $0003
C2IF             .EQ  $0004
CRIF             .EQ  $0005
LVDIF            .EQ  $0006
EEIF             .EQ  $0007


;----- T1CON Bits -----------------------------------------------------
TMR1ON           .EQ  $0000
TMR1CS           .EQ  $0001
NOT_T1SYNC       .EQ  $0002
T1OSCEN          .EQ  $0003
TMR1GE           .EQ  $0006
T1GINV           .EQ  $0007

T1CKPS0          .EQ  $0004
T1CKPS1          .EQ  $0005


;----- WDTCON Bits -----------------------------------------------------
SWDTEN           .EQ  $0000

WDTPS0           .EQ  $0001
WDTPS1           .EQ  $0002
WDTPS2           .EQ  $0003
WDTPS3           .EQ  $0004


;----- CMCON0 Bits -----------------------------------------------------
CIS              .EQ  $0003
C1INV            .EQ  $0004
C2INV            .EQ  $0005
C1OUT            .EQ  $0006
C2OUT            .EQ  $0007

CM0              .EQ  $0000
CM1              .EQ  $0001
CM2              .EQ  $0002


;----- CMCON1 Bits -----------------------------------------------------
C2SYNC           .EQ  $0000
T1GSS            .EQ  $0001


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


;----- PIE1 Bits -----------------------------------------------------
TMR1IE           .EQ  $0000
OSFIE            .EQ  $0002
C1IE             .EQ  $0003
C2IE             .EQ  $0004
CRIE             .EQ  $0005
LVDIE            .EQ  $0006
EEIE             .EQ  $0007


;----- PCON Bits -----------------------------------------------------
NOT_BOR          .EQ  $0000
NOT_POR          .EQ  $0001
NOT_WUR          .EQ  $0003
SBOREN           .EQ  $0004
ULPWUE           .EQ  $0005

NOT_BOD          .EQ  $0000
SBODEN           .EQ  $0004


;----- OSCCON Bits -----------------------------------------------------
SCS              .EQ  $0000
LTS              .EQ  $0001
HTS              .EQ  $0002
OSTS             .EQ  $0003

IRCF0            .EQ  $0004
IRCF1            .EQ  $0005
IRCF2            .EQ  $0006


;----- OSCTUNE Bits -----------------------------------------------------
TUN0             .EQ  $0000
TUN1             .EQ  $0001
TUN2             .EQ  $0002
TUN3             .EQ  $0003
TUN4             .EQ  $0004


;----- LVDCON Bits -----------------------------------------------------
LVDEN            .EQ  $0004
IRVST            .EQ  $0005

LVDL0            .EQ  $0000
LVDL1            .EQ  $0001
LVDL2            .EQ  $0002


;----- WPUDA Bits -----------------------------------------------------
WPUDA0           .EQ  $0000
WPUDA1           .EQ  $0001
WPUDA2           .EQ  $0002
WPUDA4           .EQ  $0004
WPUDA5           .EQ  $0005


;----- IOCA Bits -----------------------------------------------------
IOCA0            .EQ  $0000
IOCA1            .EQ  $0001
IOCA2            .EQ  $0002
IOCA3            .EQ  $0003
IOCA4            .EQ  $0004
IOCA5            .EQ  $0005


;----- WDA Bits -----------------------------------------------------
WDA0             .EQ  $0000
WDA1             .EQ  $0001
WDA2             .EQ  $0002
WDA4             .EQ  $0004
WDA5             .EQ  $0005


;----- VRCON Bits -----------------------------------------------------
VRR              .EQ  $0005
VREN             .EQ  $0007

VR0              .EQ  $0000
VR1              .EQ  $0001
VR2              .EQ  $0002
VR3              .EQ  $0003


;----- EECON1 Bits -----------------------------------------------------
RD               .EQ  $0000
WR               .EQ  $0001
WREN             .EQ  $0002
WRERR            .EQ  $0003


;----- CRCON Bits -----------------------------------------------------
ENC_NOT_DEC      .EQ  $0006
GO_NOT_DONE      .EQ  $0007

CRREG0           .EQ  $0000
CRREG1           .EQ  $0001
ENC_DEC          .EQ  $0006
GO               .EQ  $0007




;==========================================================================
;
;       RAM Definitions
;
;==========================================================================

_MAXRAM  		 .EQ  $01FF

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
_FOSC_LP             .EQ  $3FF8  LP oscillator: Low-power crystal on RA5/T1CKI/OSC1/CLKIN and RA4/T1G/OSC2/CLKOUT
_LP_OSC              .EQ  $3FF8  LP oscillator: Low-power crystal on RA5/T1CKI/OSC1/CLKIN and RA4/T1G/OSC2/CLKOUT
_FOSC_XT             .EQ  $3FF9  XT oscillator: Crystal/resonator on RA5/T1CKI/OSC1/CLKIN and RA4/T1G/OSC2/CLKOUT
_XT_OSC              .EQ  $3FF9  XT oscillator: Crystal/resonator on RA5/T1CKI/OSC1/CLKIN and RA4/T1G/OSC2/CLKOUT
_FOSC_HS             .EQ  $3FFA  HS oscillator: High-speed crystal/resonator on RA5/T1CKI/OSC1/CLKIN and RA4/T1G/OSC2/CLKOUT
_HS_OSC              .EQ  $3FFA  HS oscillator: High-speed crystal/resonator on RA5/T1CKI/OSC1/CLKIN and RA4/T1G/OSC2/CLKOUT
_FOSC_EC             .EQ  $3FFB  EC: I/O function on RA4/T1G/OSC2/CLKOUT, CLKIN on RA5/T1CKI/OSC1/CLKIN
_EC_OSC              .EQ  $3FFB  EC: I/O function on RA4/T1G/OSC2/CLKOUT, CLKIN on RA5/T1CKI/OSC1/CLKIN
_FOSC_INTOSCIO       .EQ  $3FFC  INTOSCIO oscillator: I/O function on RA4/T1G/OSC2/CLKOUT pin, I/O function on RA5/T1CKI/OSC1/CLKIN
_INTRC_OSC_NOCLKOUT  .EQ  $3FFC  INTOSCIO oscillator: I/O function on RA4/T1G/OSC2/CLKOUT pin, I/O function on RA5/T1CKI/OSC1/CLKIN
_FOSC_INTOSCCLK      .EQ  $3FFD  INTOSC oscillator: CLKOUT function on RA4/T1G/OSC2/CLKOUT pin, I/O function on RA5/T1CKI/OSC1/CLKIN
_INTRC_OSC_CLKOUT    .EQ  $3FFD  INTOSC oscillator: CLKOUT function on RA4/T1G/OSC2/CLKOUT pin, I/O function on RA5/T1CKI/OSC1/CLKIN
_FOSC_EXTRCIO        .EQ  $3FFE  RCIO oscillator: I/O function on RA4/T1G/OSC2/CLKOUT pin, RC on RA5/T1CKI/OSC1/CLKIN
_EXTRC_OSC_NOCLKOUT  .EQ  $3FFE  RCIO oscillator: I/O function on RA4/T1G/OSC2/CLKOUT pin, RC on RA5/T1CKI/OSC1/CLKIN
_FOSC_EXTRCCLK       .EQ  $3FFF  RC oscillator: CLKOUT function on RA4/T1G/OSC2/CLKOUT pin, RC on RA5/T1CKI/OSC1/CLKIN
_EXTRC_OSC_CLKOUT    .EQ  $3FFF  RC oscillator: CLKOUT function on RA4/T1G/OSC2/CLKOUT pin, RC on RA5/T1CKI/OSC1/CLKIN

_WDTE_OFF            .EQ  $3FF7  WDT disabled and can be enabled by SWDTEN bit of the WDTCON register
_WDT_OFF             .EQ  $3FF7  WDT disabled and can be enabled by SWDTEN bit of the WDTCON register
_WDTE_ON             .EQ  $3FFF  WDT enabled
_WDT_ON              .EQ  $3FFF  WDT enabled

_PWRTE_ON            .EQ  $3FEF  PWRT enabled
_PWRTE_OFF           .EQ  $3FFF  PWRT disabled

_MCLRE_OFF           .EQ  $3FDF  MCLR pin function is alternate function, MCLR function is internally disabled
_MCLRE_ON            .EQ  $3FFF  MCLR pin is MCLR function and weak internal pull-up is enabled

_CP_ON               .EQ  $3FBF  Program memory is external read and write-protected
_CP_OFF              .EQ  $3FFF  Program memory is not code protected

_CPD_ON              .EQ  $3F7F  Data memory is external read protected
_CPD_OFF             .EQ  $3FFF  Data memory is not code protected

_BOREN_OFF           .EQ  $3CFF  BOD and SBODEN disabled
_BOD_OFF             .EQ  $3CFF  BOD and SBODEN disabled
_BOREN_SBODEN        .EQ  $3DFF  SBODEN controls BOD function
_BOD_SBODEN          .EQ  $3DFF  SBODEN controls BOD function
_BOREN_NSLEEP        .EQ  $3EFF  BOD enabled while running and disabled in Sleep. SBODEN bit disabled.
_BOD_NSLEEP          .EQ  $3EFF  BOD enabled while running and disabled in Sleep. SBODEN bit disabled.
_BOREN_ON            .EQ  $3FFF  BOD enabled and SBOdEN bit disabled
_BOD_ON              .EQ  $3FFF  BOD enabled and SBOdEN bit disabled

_IESO_OFF            .EQ  $3BFF  Internal External Switchover mode disabled
_IESO_ON             .EQ  $3FFF  Internal External Switchover mode enabled

_FCMEN_OFF           .EQ  $37FF  Fail-Safe Clock Monitor disabled
_FCMEN_ON            .EQ  $3FFF  Fail-Safe Clock Monitor enabled

_WURE_ON             .EQ  $2FFF  Wake-up and Reset enabled
_WUREN_ON            .EQ  $2FFF  Wake-up and Reset enabled
_WURE_OFF            .EQ  $3FFF  Standard wake-up and continue enabled
_WUREN_OFF           .EQ  $3FFF  Standard wake-up and continue enabled

;----- DEVID Equates --------------------------------------------------
_DEVID1          .EQ  $2006

;----- IDLOC Equates --------------------------------------------------
_IDLOC0          .EQ  $2000
_IDLOC1          .EQ  $2001
_IDLOC2          .EQ  $2002
_IDLOC3          .EQ  $2003

