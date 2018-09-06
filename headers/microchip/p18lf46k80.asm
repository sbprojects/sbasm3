;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC18LF46K80 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC18LF46K80 microcontroller.  These names
;  are taken to match the data sheets as closely as possible.
;==========================================================================

;==========================================================================
;
;       Select cross overlay
;
;==========================================================================

                  .CR   pic16
                  .MS   32768

;==========================================================================
;       18xxxx Family        .EQates
;==========================================================================
FSR0             .EQ  0
FSR1             .EQ  1
FSR2             .EQ  2

FAST             .EQ  1

W                .EQ  0
A                .EQ  0
ACCESS           .EQ  0
BANKED           .EQ  1
;==========================================================================

;==========================================================================
;       16Cxxx/17Cxxx Substitutions
;==========================================================================
  #define DDRA  TRISA      ; PIC17Cxxx SFR substitution
  #define DDRB  TRISB      ; PIC17Cxxx SFR substitution
  #define DDRC  TRISC      ; PIC17Cxxx SFR substitution
  #define DDRD  TRISD      ; PIC17Cxxx SFR substitution
  #define DDRE  TRISE      ; PIC17Cxxx SFR substitution

;==========================================================================
;
;       Register Definitions
;
;==========================================================================

;----- Register Files -----------------------------------------------------
RXERRCNT         .EQ  $0E41
TXERRCNT         .EQ  $0E42
BRGCON1          .EQ  $0E43
BRGCON2          .EQ  $0E44
BRGCON3          .EQ  $0E45
RXFCON0          .EQ  $0E46
RXFCON1          .EQ  $0E47
RXF6SIDH         .EQ  $0E48
RXF6SIDL         .EQ  $0E49
RXF6EIDH         .EQ  $0E4A
RXF6EIDL         .EQ  $0E4B
RXF7SIDH         .EQ  $0E4C
RXF7SIDL         .EQ  $0E4D
RXF7EIDH         .EQ  $0E4E
RXF7EIDL         .EQ  $0E4F
RXF8SIDH         .EQ  $0E50
RXF8SIDL         .EQ  $0E51
RXF8EIDH         .EQ  $0E52
RXF8EIDL         .EQ  $0E53
RXF9SIDH         .EQ  $0E54
RXF9SIDL         .EQ  $0E55
RXF9EIDH         .EQ  $0E56
RXF9EIDL         .EQ  $0E57
RXF10SIDH        .EQ  $0E58
RXF10SIDL        .EQ  $0E59
RXF10EIDH        .EQ  $0E5A
RXF10EIDL        .EQ  $0E5B
RXF11SIDH        .EQ  $0E5C
RXF11SIDL        .EQ  $0E5D
RXF11EIDH        .EQ  $0E5E
RXF11EIDL        .EQ  $0E5F
RXF12SIDH        .EQ  $0E60
RXF12SIDL        .EQ  $0E61
RXF12EIDH        .EQ  $0E62
RXF12EIDL        .EQ  $0E63
RXF13SIDH        .EQ  $0E64
RXF13SIDL        .EQ  $0E65
RXF13EIDH        .EQ  $0E66
RXF13EIDL        .EQ  $0E67
RXF14SIDH        .EQ  $0E68
RXF14SIDL        .EQ  $0E69
RXF14EIDH        .EQ  $0E6A
RXF14EIDL        .EQ  $0E6B
RXF15SIDH        .EQ  $0E6C
RXF15SIDL        .EQ  $0E6D
RXF15EIDH        .EQ  $0E6E
RXF15EIDL        .EQ  $0E6F
SDFLC            .EQ  $0E70
RXFBCON0         .EQ  $0E71
RXFBCON1         .EQ  $0E72
RXFBCON2         .EQ  $0E73
RXFBCON3         .EQ  $0E74
RXFBCON4         .EQ  $0E75
RXFBCON5         .EQ  $0E76
RXFBCON6         .EQ  $0E77
RXFBCON7         .EQ  $0E78
MSEL0            .EQ  $0E79
MSEL1            .EQ  $0E7A
MSEL2            .EQ  $0E7B
MSEL3            .EQ  $0E7C
BSEL0            .EQ  $0E7D
BIE0             .EQ  $0E7E
TXBIE            .EQ  $0E7F
B0CON            .EQ  $0E80
B0SIDH           .EQ  $0E81
B0SIDL           .EQ  $0E82
B0EIDH           .EQ  $0E83
B0EIDL           .EQ  $0E84
B0DLC            .EQ  $0E85
B0D0             .EQ  $0E86
B0D1             .EQ  $0E87
B0D2             .EQ  $0E88
B0D3             .EQ  $0E89
B0D4             .EQ  $0E8A
B0D5             .EQ  $0E8B
B0D6             .EQ  $0E8C
B0D7             .EQ  $0E8D
CANSTAT_RO9      .EQ  $0E8E
CANCON_RO9       .EQ  $0E8F
B1CON            .EQ  $0E90
B1SIDH           .EQ  $0E91
B1SIDL           .EQ  $0E92
B1EIDH           .EQ  $0E93
B1EIDL           .EQ  $0E94
B1DLC            .EQ  $0E95
B1D0             .EQ  $0E96
B1D1             .EQ  $0E97
B1D2             .EQ  $0E98
B1D3             .EQ  $0E99
B1D4             .EQ  $0E9A
B1D5             .EQ  $0E9B
B1D6             .EQ  $0E9C
B1D7             .EQ  $0E9D
CANSTAT_RO8      .EQ  $0E9E
CANCON_RO8       .EQ  $0E9F
B2CON            .EQ  $0EA0
B2SIDH           .EQ  $0EA1
B2SIDL           .EQ  $0EA2
B2EIDH           .EQ  $0EA3
B2EIDL           .EQ  $0EA4
B2DLC            .EQ  $0EA5
B2D0             .EQ  $0EA6
B2D1             .EQ  $0EA7
B2D2             .EQ  $0EA8
B2D3             .EQ  $0EA9
B2D4             .EQ  $0EAA
B2D5             .EQ  $0EAB
B2D6             .EQ  $0EAC
B2D7             .EQ  $0EAD
CANSTAT_RO7      .EQ  $0EAE
CANCON_RO7       .EQ  $0EAF
B3CON            .EQ  $0EB0
B3SIDH           .EQ  $0EB1
B3SIDL           .EQ  $0EB2
B3EIDH           .EQ  $0EB3
B3EIDL           .EQ  $0EB4
B3DLC            .EQ  $0EB5
B3D0             .EQ  $0EB6
B3D1             .EQ  $0EB7
B3D2             .EQ  $0EB8
B3D3             .EQ  $0EB9
B3D4             .EQ  $0EBA
B3D5             .EQ  $0EBB
B3D6             .EQ  $0EBC
B3D7             .EQ  $0EBD
CANSTAT_RO6      .EQ  $0EBE
CANCON_RO6       .EQ  $0EBF
B4CON            .EQ  $0EC0
B4SIDH           .EQ  $0EC1
B4SIDL           .EQ  $0EC2
B4EIDH           .EQ  $0EC3
B4EIDL           .EQ  $0EC4
B4DLC            .EQ  $0EC5
B4D0             .EQ  $0EC6
B4D1             .EQ  $0EC7
B4D2             .EQ  $0EC8
B4D3             .EQ  $0EC9
B4D4             .EQ  $0ECA
B4D5             .EQ  $0ECB
B4D6             .EQ  $0ECC
B4D7             .EQ  $0ECD
CANSTAT_RO5      .EQ  $0ECE
CANCON_RO5       .EQ  $0ECF
B5CON            .EQ  $0ED0
B5SIDH           .EQ  $0ED1
B5SIDL           .EQ  $0ED2
B5EIDH           .EQ  $0ED3
B5EIDL           .EQ  $0ED4
B5DLC            .EQ  $0ED5
B5D0             .EQ  $0ED6
B5D1             .EQ  $0ED7
B5D2             .EQ  $0ED8
B5D3             .EQ  $0ED9
B5D4             .EQ  $0EDA
B5D5             .EQ  $0EDB
B5D6             .EQ  $0EDC
B5D7             .EQ  $0EDD
CANSTAT_RO4      .EQ  $0EDE
CANCON_RO4       .EQ  $0EDF
RXF0SIDH         .EQ  $0EE0
RXF0SIDL         .EQ  $0EE1
RXF0EIDH         .EQ  $0EE2
RXF0EIDL         .EQ  $0EE3
RXF1SIDH         .EQ  $0EE4
RXF1SIDL         .EQ  $0EE5
RXF1EIDH         .EQ  $0EE6
RXF1EIDL         .EQ  $0EE7
RXF2SIDH         .EQ  $0EE8
RXF2SIDL         .EQ  $0EE9
RXF2EIDH         .EQ  $0EEA
RXF2EIDL         .EQ  $0EEB
RXF3SIDH         .EQ  $0EEC
RXF3SIDL         .EQ  $0EED
RXF3EIDH         .EQ  $0EEE
RXF3EIDL         .EQ  $0EEF
RXF4SIDH         .EQ  $0EF0
RXF4SIDL         .EQ  $0EF1
RXF4EIDH         .EQ  $0EF2
RXF4EIDL         .EQ  $0EF3
RXF5SIDH         .EQ  $0EF4
RXF5SIDL         .EQ  $0EF5
RXF5EIDH         .EQ  $0EF6
RXF5EIDL         .EQ  $0EF7
RXM0SIDH         .EQ  $0EF8
RXM0SIDL         .EQ  $0EF9
RXM0EIDH         .EQ  $0EFA
RXM0EIDL         .EQ  $0EFB
RXM1SIDH         .EQ  $0EFC
RXM1SIDL         .EQ  $0EFD
RXM1EIDH         .EQ  $0EFE
RXM1EIDL         .EQ  $0EFF
TXB2CON          .EQ  $0F00
TXB2SIDH         .EQ  $0F01
TXB2SIDL         .EQ  $0F02
TXB2EIDH         .EQ  $0F03
TXB2EIDL         .EQ  $0F04
TXB2DLC          .EQ  $0F05
TXB2D0           .EQ  $0F06
TXB2D1           .EQ  $0F07
TXB2D2           .EQ  $0F08
TXB2D3           .EQ  $0F09
TXB2D4           .EQ  $0F0A
TXB2D5           .EQ  $0F0B
TXB2D6           .EQ  $0F0C
TXB2D7           .EQ  $0F0D
CANSTAT_RO3      .EQ  $0F0E
CANCON_RO3       .EQ  $0F0F
TXB1CON          .EQ  $0F10
TXB1SIDH         .EQ  $0F11
TXB1SIDL         .EQ  $0F12
TXB1EIDH         .EQ  $0F13
TXB1EIDL         .EQ  $0F14
TXB1DLC          .EQ  $0F15
TXB1D0           .EQ  $0F16
TXB1D1           .EQ  $0F17
TXB1D2           .EQ  $0F18
TXB1D3           .EQ  $0F19
TXB1D4           .EQ  $0F1A
TXB1D5           .EQ  $0F1B
TXB1D6           .EQ  $0F1C
TXB1D7           .EQ  $0F1D
CANSTAT_RO2      .EQ  $0F1E
CANCON_RO2       .EQ  $0F1F
TXB0CON          .EQ  $0F20
TXB0SIDH         .EQ  $0F21
TXB0SIDL         .EQ  $0F22
TXB0EIDH         .EQ  $0F23
TXB0EIDL         .EQ  $0F24
TXB0DLC          .EQ  $0F25
TXB0D0           .EQ  $0F26
TXB0D1           .EQ  $0F27
TXB0D2           .EQ  $0F28
TXB0D3           .EQ  $0F29
TXB0D4           .EQ  $0F2A
TXB0D5           .EQ  $0F2B
TXB0D6           .EQ  $0F2C
TXB0D7           .EQ  $0F2D
CANSTAT_RO1      .EQ  $0F2E
CANCON_RO1       .EQ  $0F2F
RXB1CON          .EQ  $0F30
RXB1SIDH         .EQ  $0F31
RXB1SIDL         .EQ  $0F32
RXB1EIDH         .EQ  $0F33
RXB1EIDL         .EQ  $0F34
RXB1DLC          .EQ  $0F35
RXB1D0           .EQ  $0F36
RXB1D1           .EQ  $0F37
RXB1D2           .EQ  $0F38
RXB1D3           .EQ  $0F39
RXB1D4           .EQ  $0F3A
RXB1D5           .EQ  $0F3B
RXB1D6           .EQ  $0F3C
RXB1D7           .EQ  $0F3D
CANSTAT_RO0      .EQ  $0F3E
CANCON_RO0       .EQ  $0F3F
PSPCON           .EQ  $0F46
CCP5CON          .EQ  $0F47
CCPR5            .EQ  $0F48
CCPR5L           .EQ  $0F48
CCPR5H           .EQ  $0F49
CCP4CON          .EQ  $0F4A
CCPR4            .EQ  $0F4B
CCPR4L           .EQ  $0F4B
CCPR4H           .EQ  $0F4C
CCP3CON          .EQ  $0F4D
CCPR3            .EQ  $0F4E
CCPR3L           .EQ  $0F4E
CCPR3H           .EQ  $0F4F
CCP2CON          .EQ  $0F50
ECCP2CON         .EQ  $0F50
CCPR2            .EQ  $0F51
CCPR2L           .EQ  $0F51
CCPR2H           .EQ  $0F52
CTMUICON         .EQ  $0F53
CTMUCONL         .EQ  $0F54
CTMUCONH         .EQ  $0F55
PADCFG1          .EQ  $0F56
PMD2             .EQ  $0F57
PMD1             .EQ  $0F58
PMD0             .EQ  $0F59
IOCB             .EQ  $0F5A
WPUB             .EQ  $0F5B
ANCON1           .EQ  $0F5C
ANCON0           .EQ  $0F5D
CM2CON           .EQ  $0F5E
CM2CON1          .EQ  $0F5E
CM1CON           .EQ  $0F5F
CM1CON1          .EQ  $0F5F
RXB0CON          .EQ  $0F60
RXB0SIDH         .EQ  $0F61
RXB0SIDL         .EQ  $0F62
RXB0EIDH         .EQ  $0F63
RXB0EIDL         .EQ  $0F64
RXB0DLC          .EQ  $0F65
RXB0D0           .EQ  $0F66
RXB0D1           .EQ  $0F67
RXB0D2           .EQ  $0F68
RXB0D3           .EQ  $0F69
RXB0D4           .EQ  $0F6A
RXB0D5           .EQ  $0F6B
RXB0D6           .EQ  $0F6C
RXB0D7           .EQ  $0F6D
CANSTAT          .EQ  $0F6E
CANCON           .EQ  $0F6F
CIOCON           .EQ  $0F70
COMSTAT          .EQ  $0F71
ECANCON          .EQ  $0F72
EEDATA           .EQ  $0F73
EEADR            .EQ  $0F74
EEADRH           .EQ  $0F75
PIE5             .EQ  $0F76
PIR5             .EQ  $0F77
IPR5             .EQ  $0F78
TXREG2           .EQ  $0F79
RCREG2           .EQ  $0F7A
SPBRG2           .EQ  $0F7B
SPBRGH2          .EQ  $0F7C
SPBRGH1          .EQ  $0F7D
EECON2           .EQ  $0F7E
EECON1           .EQ  $0F7F
PORTA            .EQ  $0F80
PORTB            .EQ  $0F81
PORTC            .EQ  $0F82
PORTD            .EQ  $0F83
PORTE            .EQ  $0F84
TMR4             .EQ  $0F87
T4CON            .EQ  $0F88
LATA             .EQ  $0F89
LATB             .EQ  $0F8A
LATC             .EQ  $0F8B
LATD             .EQ  $0F8C
LATE             .EQ  $0F8D
SLRCON           .EQ  $0F90
ODCON            .EQ  $0F91
TRISA            .EQ  $0F92
TRISB            .EQ  $0F93
TRISC            .EQ  $0F94
TRISD            .EQ  $0F95
TRISE            .EQ  $0F96
CCPTMRS          .EQ  $0F99
REFOCON          .EQ  $0F9A
OSCTUNE          .EQ  $0F9B
PSTR1CON         .EQ  $0F9C
PIE1             .EQ  $0F9D
PIR1             .EQ  $0F9E
IPR1             .EQ  $0F9F
PIE2             .EQ  $0FA0
PIR2             .EQ  $0FA1
IPR2             .EQ  $0FA2
PIE3             .EQ  $0FA3
PIR3             .EQ  $0FA4
IPR3             .EQ  $0FA5
RCSTA2           .EQ  $0FA6
BAUDCON1         .EQ  $0FA7
HLVDCON          .EQ  $0FA8
PR4              .EQ  $0FA9
T1GCON           .EQ  $0FAA
RCSTA            .EQ  $0FAB
RCSTA1           .EQ  $0FAB
TXSTA            .EQ  $0FAC
TXSTA1           .EQ  $0FAC
TXREG            .EQ  $0FAD
TXREG1           .EQ  $0FAD
RCREG            .EQ  $0FAE
RCREG1           .EQ  $0FAE
SPBRG            .EQ  $0FAF
SPBRG1           .EQ  $0FAF
T3GCON           .EQ  $0FB0
T3CON            .EQ  $0FB1
TMR3             .EQ  $0FB2
TMR3L            .EQ  $0FB2
TMR3H            .EQ  $0FB3
CMSTAT           .EQ  $0FB4
CMSTATUS         .EQ  $0FB4
CVRCON           .EQ  $0FB5
PIE4             .EQ  $0FB6
PIR4             .EQ  $0FB7
IPR4             .EQ  $0FB8
BAUDCON2         .EQ  $0FB9
TXSTA2           .EQ  $0FBA
CCP1CON          .EQ  $0FBB
ECCP1CON         .EQ  $0FBB
CCPR1            .EQ  $0FBC
CCPR1L           .EQ  $0FBC
CCPR1H           .EQ  $0FBD
ECCP1DEL         .EQ  $0FBE
PWM1CON          .EQ  $0FBE
ECCP1AS          .EQ  $0FBF
ADCON2           .EQ  $0FC0
ADCON1           .EQ  $0FC1
ADCON0           .EQ  $0FC2
ADRES            .EQ  $0FC3
ADRESL           .EQ  $0FC3
ADRESH           .EQ  $0FC4
SSPCON2          .EQ  $0FC5
SSPCON1          .EQ  $0FC6
SSPSTAT          .EQ  $0FC7
SSPADD           .EQ  $0FC8
SSPBUF           .EQ  $0FC9
T2CON            .EQ  $0FCA
PR2              .EQ  $0FCB
TMR2             .EQ  $0FCC
T1CON            .EQ  $0FCD
TMR1             .EQ  $0FCE
TMR1L            .EQ  $0FCE
TMR1H            .EQ  $0FCF
RCON             .EQ  $0FD0
WDTCON           .EQ  $0FD1
OSCCON2          .EQ  $0FD2
OSCCON           .EQ  $0FD3
T0CON            .EQ  $0FD5
TMR0             .EQ  $0FD6
TMR0L            .EQ  $0FD6
TMR0H            .EQ  $0FD7
STATUS           .EQ  $0FD8
FSR2L            .EQ  $0FD9
FSR2H            .EQ  $0FDA
PLUSW2           .EQ  $0FDB
PREINC2          .EQ  $0FDC
POSTDEC2         .EQ  $0FDD
POSTINC2         .EQ  $0FDE
INDF2            .EQ  $0FDF
BSR              .EQ  $0FE0
FSR1L            .EQ  $0FE1
FSR1H            .EQ  $0FE2
PLUSW1           .EQ  $0FE3
PREINC1          .EQ  $0FE4
POSTDEC1         .EQ  $0FE5
POSTINC1         .EQ  $0FE6
INDF1            .EQ  $0FE7
WREG             .EQ  $0FE8
FSR0L            .EQ  $0FE9
FSR0H            .EQ  $0FEA
PLUSW0           .EQ  $0FEB
PREINC0          .EQ  $0FEC
POSTDEC0         .EQ  $0FED
POSTINC0         .EQ  $0FEE
INDF0            .EQ  $0FEF
INTCON3          .EQ  $0FF0
INTCON2          .EQ  $0FF1
INTCON           .EQ  $0FF2
INTCON1          .EQ  $0FF2
PROD             .EQ  $0FF3
PRODL            .EQ  $0FF3
PRODH            .EQ  $0FF4
TABLAT           .EQ  $0FF5
TBLPTR           .EQ  $0FF6
TBLPTRL          .EQ  $0FF6
TBLPTRH          .EQ  $0FF7
TBLPTRU          .EQ  $0FF8
PC               .EQ  $0FF9
PCL              .EQ  $0FF9
PCLATH           .EQ  $0FFA
PCLATU           .EQ  $0FFB
STKPTR           .EQ  $0FFC
TOS              .EQ  $0FFD
TOSL             .EQ  $0FFD
TOSH             .EQ  $0FFE
TOSU             .EQ  $0FFF

;----- RXERRCNT Bits -----------------------------------------------------
REC0             .EQ  $0000
REC1             .EQ  $0001
REC2             .EQ  $0002
REC3             .EQ  $0003
REC4             .EQ  $0004
REC5             .EQ  $0005
REC6             .EQ  $0006
REC7             .EQ  $0007


;----- TXERRCNT Bits -----------------------------------------------------
TEC0             .EQ  $0000
TEC1             .EQ  $0001
TEC2             .EQ  $0002
TEC3             .EQ  $0003
TEC4             .EQ  $0004
TEC5             .EQ  $0005
TEC6             .EQ  $0006
TEC7             .EQ  $0007


;----- BRGCON1 Bits -----------------------------------------------------
BRP0             .EQ  $0000
BRP1             .EQ  $0001
BRP2             .EQ  $0002
BRP3             .EQ  $0003
BRP4             .EQ  $0004
BRP5             .EQ  $0005
SJW0             .EQ  $0006
SJW1             .EQ  $0007


;----- BRGCON2 Bits -----------------------------------------------------
SAM              .EQ  $0006
SEG2PHTS         .EQ  $0007

PRSEG0           .EQ  $0000
PRSEG1           .EQ  $0001
PRSEG2           .EQ  $0002
SEG1PH0          .EQ  $0003
SEG1PH1          .EQ  $0004
SEG1PH2          .EQ  $0005


;----- BRGCON3 Bits -----------------------------------------------------
WAKFIL           .EQ  $0006
WAKDIS           .EQ  $0007

SEG2PH0          .EQ  $0000
SEG2PH1          .EQ  $0001
SEG2PH2          .EQ  $0002


;----- RXFCON0 Bits -----------------------------------------------------
RXF0EN           .EQ  $0000
RXF1EN           .EQ  $0001
RXF2EN           .EQ  $0002
RXF3EN           .EQ  $0003
RXF4EN           .EQ  $0004
RXF5EN           .EQ  $0005
RXF6EN           .EQ  $0006
RXF7EN           .EQ  $0007


;----- RXFCON1 Bits -----------------------------------------------------
RXF8EN           .EQ  $0000
RXF9EN           .EQ  $0001
RXF10EN          .EQ  $0002
RXF11EN          .EQ  $0003
RXF12EN          .EQ  $0004
RXF13EN          .EQ  $0005
RXF14EN          .EQ  $0006
RXF15EN          .EQ  $0007


;----- RXF6SIDH Bits -----------------------------------------------------
SID3             .EQ  $0000
SID4             .EQ  $0001
SID5             .EQ  $0002
SID6             .EQ  $0003
SID7             .EQ  $0004
SID8             .EQ  $0005
SID9             .EQ  $0006
SID10            .EQ  $0007


;----- RXF6SIDL Bits -----------------------------------------------------
EXIDEN           .EQ  $0003

EID16            .EQ  $0000
EID17            .EQ  $0001
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007


;----- RXF6EIDH Bits -----------------------------------------------------
EID8             .EQ  $0000
EID9             .EQ  $0001
EID10            .EQ  $0002
EID11            .EQ  $0003
EID12            .EQ  $0004
EID13            .EQ  $0005
EID14            .EQ  $0006
EID15            .EQ  $0007


;----- RXF6EIDL Bits -----------------------------------------------------
EID0             .EQ  $0000
EID1             .EQ  $0001
EID2             .EQ  $0002
EID3             .EQ  $0003
EID4             .EQ  $0004
EID5             .EQ  $0005
EID6             .EQ  $0006
EID7             .EQ  $0007


;----- RXF7SIDH Bits -----------------------------------------------------
SID3             .EQ  $0000
SID4             .EQ  $0001
SID5             .EQ  $0002
SID6             .EQ  $0003
SID7             .EQ  $0004
SID8             .EQ  $0005
SID9             .EQ  $0006
SID10            .EQ  $0007


;----- RXF7SIDL Bits -----------------------------------------------------
EXIDEN           .EQ  $0003

EID16            .EQ  $0000
EID17            .EQ  $0001
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007


;----- RXF7EIDH Bits -----------------------------------------------------
EID8             .EQ  $0000
EID9             .EQ  $0001
EID10            .EQ  $0002
EID11            .EQ  $0003
EID12            .EQ  $0004
EID13            .EQ  $0005
EID14            .EQ  $0006
EID15            .EQ  $0007


;----- RXF7EIDL Bits -----------------------------------------------------
EID0             .EQ  $0000
EID1             .EQ  $0001
EID2             .EQ  $0002
EID3             .EQ  $0003
EID4             .EQ  $0004
EID5             .EQ  $0005
EID6             .EQ  $0006
EID7             .EQ  $0007


;----- RXF8SIDH Bits -----------------------------------------------------
SID3             .EQ  $0000
SID4             .EQ  $0001
SID5             .EQ  $0002
SID6             .EQ  $0003
SID7             .EQ  $0004
SID8             .EQ  $0005
SID9             .EQ  $0006
SID10            .EQ  $0007


;----- RXF8SIDL Bits -----------------------------------------------------
EXIDEN           .EQ  $0003

EID16            .EQ  $0000
EID17            .EQ  $0001
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007


;----- RXF8EIDH Bits -----------------------------------------------------
EID8             .EQ  $0000
EID9             .EQ  $0001
EID10            .EQ  $0002
EID11            .EQ  $0003
EID12            .EQ  $0004
EID13            .EQ  $0005
EID14            .EQ  $0006
EID15            .EQ  $0007


;----- RXF8EIDL Bits -----------------------------------------------------
EID0             .EQ  $0000
EID1             .EQ  $0001
EID2             .EQ  $0002
EID3             .EQ  $0003
EID4             .EQ  $0004
EID5             .EQ  $0005
EID6             .EQ  $0006
EID7             .EQ  $0007


;----- RXF9SIDH Bits -----------------------------------------------------
SID3             .EQ  $0000
SID4             .EQ  $0001
SID5             .EQ  $0002
SID6             .EQ  $0003
SID7             .EQ  $0004
SID8             .EQ  $0005
SID9             .EQ  $0006
SID10            .EQ  $0007


;----- RXF9SIDL Bits -----------------------------------------------------
EXIDEN           .EQ  $0003

EID16            .EQ  $0000
EID17            .EQ  $0001
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007


;----- RXF9EIDH Bits -----------------------------------------------------
EID8             .EQ  $0000
EID9             .EQ  $0001
EID10            .EQ  $0002
EID11            .EQ  $0003
EID12            .EQ  $0004
EID13            .EQ  $0005
EID14            .EQ  $0006
EID15            .EQ  $0007


;----- RXF9EIDL Bits -----------------------------------------------------
EID0             .EQ  $0000
EID1             .EQ  $0001
EID2             .EQ  $0002
EID3             .EQ  $0003
EID4             .EQ  $0004
EID5             .EQ  $0005
EID6             .EQ  $0006
EID7             .EQ  $0007


;----- RXF10SIDH Bits -----------------------------------------------------
SID3             .EQ  $0000
SID4             .EQ  $0001
SID5             .EQ  $0002
SID6             .EQ  $0003
SID7             .EQ  $0004
SID8             .EQ  $0005
SID9             .EQ  $0006
SID10            .EQ  $0007


;----- RXF10SIDL Bits -----------------------------------------------------
EXIDEN           .EQ  $0003

EID16            .EQ  $0000
EID17            .EQ  $0001
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007


;----- RXF10EIDH Bits -----------------------------------------------------
EID8             .EQ  $0000
EID9             .EQ  $0001
EID10            .EQ  $0002
EID11            .EQ  $0003
EID12            .EQ  $0004
EID13            .EQ  $0005
EID14            .EQ  $0006
EID15            .EQ  $0007


;----- RXF10EIDL Bits -----------------------------------------------------
EID0             .EQ  $0000
EID1             .EQ  $0001
EID2             .EQ  $0002
EID3             .EQ  $0003
EID4             .EQ  $0004
EID5             .EQ  $0005
EID6             .EQ  $0006
EID7             .EQ  $0007


;----- RXF11SIDH Bits -----------------------------------------------------
SID3             .EQ  $0000
SID4             .EQ  $0001
SID5             .EQ  $0002
SID6             .EQ  $0003
SID7             .EQ  $0004
SID8             .EQ  $0005
SID9             .EQ  $0006
SID10            .EQ  $0007


;----- RXF11SIDL Bits -----------------------------------------------------
EXIDEN           .EQ  $0003

EID16            .EQ  $0000
EID17            .EQ  $0001
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007


;----- RXF11EIDH Bits -----------------------------------------------------
EID8             .EQ  $0000
EID9             .EQ  $0001
EID10            .EQ  $0002
EID11            .EQ  $0003
EID12            .EQ  $0004
EID13            .EQ  $0005
EID14            .EQ  $0006
EID15            .EQ  $0007


;----- RXF11EIDL Bits -----------------------------------------------------
EID0             .EQ  $0000
EID1             .EQ  $0001
EID2             .EQ  $0002
EID3             .EQ  $0003
EID4             .EQ  $0004
EID5             .EQ  $0005
EID6             .EQ  $0006
EID7             .EQ  $0007


;----- RXF12SIDH Bits -----------------------------------------------------
SID3             .EQ  $0000
SID4             .EQ  $0001
SID5             .EQ  $0002
SID6             .EQ  $0003
SID7             .EQ  $0004
SID8             .EQ  $0005
SID9             .EQ  $0006
SID10            .EQ  $0007


;----- RXF12SIDL Bits -----------------------------------------------------
EXIDEN           .EQ  $0003

EID16            .EQ  $0000
EID17            .EQ  $0001
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007


;----- RXF12EIDH Bits -----------------------------------------------------
EID8             .EQ  $0000
EID9             .EQ  $0001
EID10            .EQ  $0002
EID11            .EQ  $0003
EID12            .EQ  $0004
EID13            .EQ  $0005
EID14            .EQ  $0006
EID15            .EQ  $0007


;----- RXF12EIDL Bits -----------------------------------------------------
EID0             .EQ  $0000
EID1             .EQ  $0001
EID2             .EQ  $0002
EID3             .EQ  $0003
EID4             .EQ  $0004
EID5             .EQ  $0005
EID6             .EQ  $0006
EID7             .EQ  $0007


;----- RXF13SIDH Bits -----------------------------------------------------
SID3             .EQ  $0000
SID4             .EQ  $0001
SID5             .EQ  $0002
SID6             .EQ  $0003
SID7             .EQ  $0004
SID8             .EQ  $0005
SID9             .EQ  $0006
SID10            .EQ  $0007


;----- RXF13SIDL Bits -----------------------------------------------------
EXIDEN           .EQ  $0003

EID16            .EQ  $0000
EID17            .EQ  $0001
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007


;----- RXF13EIDH Bits -----------------------------------------------------
EID8             .EQ  $0000
EID9             .EQ  $0001
EID10            .EQ  $0002
EID11            .EQ  $0003
EID12            .EQ  $0004
EID13            .EQ  $0005
EID14            .EQ  $0006
EID15            .EQ  $0007


;----- RXF13EIDL Bits -----------------------------------------------------
EID0             .EQ  $0000
EID1             .EQ  $0001
EID2             .EQ  $0002
EID3             .EQ  $0003
EID4             .EQ  $0004
EID5             .EQ  $0005
EID6             .EQ  $0006
EID7             .EQ  $0007


;----- RXF14SIDH Bits -----------------------------------------------------
SID3             .EQ  $0000
SID4             .EQ  $0001
SID5             .EQ  $0002
SID6             .EQ  $0003
SID7             .EQ  $0004
SID8             .EQ  $0005
SID9             .EQ  $0006
SID10            .EQ  $0007


;----- RXF14SIDL Bits -----------------------------------------------------
EXIDEN           .EQ  $0003

EID16            .EQ  $0000
EID17            .EQ  $0001
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007


;----- RXF14EIDH Bits -----------------------------------------------------
EID8             .EQ  $0000
EID9             .EQ  $0001
EID10            .EQ  $0002
EID11            .EQ  $0003
EID12            .EQ  $0004
EID13            .EQ  $0005
EID14            .EQ  $0006
EID15            .EQ  $0007


;----- RXF14EIDL Bits -----------------------------------------------------
EID0             .EQ  $0000
EID1             .EQ  $0001
EID2             .EQ  $0002
EID3             .EQ  $0003
EID4             .EQ  $0004
EID5             .EQ  $0005
EID6             .EQ  $0006
EID7             .EQ  $0007


;----- RXF15SIDH Bits -----------------------------------------------------
SID3             .EQ  $0000
SID4             .EQ  $0001
SID5             .EQ  $0002
SID6             .EQ  $0003
SID7             .EQ  $0004
SID8             .EQ  $0005
SID9             .EQ  $0006
SID10            .EQ  $0007


;----- RXF15SIDL Bits -----------------------------------------------------
EXIDEN           .EQ  $0003

EID16            .EQ  $0000
EID17            .EQ  $0001
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007


;----- RXF15EIDH Bits -----------------------------------------------------
EID8             .EQ  $0000
EID9             .EQ  $0001
EID10            .EQ  $0002
EID11            .EQ  $0003
EID12            .EQ  $0004
EID13            .EQ  $0005
EID14            .EQ  $0006
EID15            .EQ  $0007


;----- RXF15EIDL Bits -----------------------------------------------------
EID0             .EQ  $0000
EID1             .EQ  $0001
EID2             .EQ  $0002
EID3             .EQ  $0003
EID4             .EQ  $0004
EID5             .EQ  $0005
EID6             .EQ  $0006
EID7             .EQ  $0007


;----- SDFLC Bits -----------------------------------------------------
FLC0             .EQ  $0000
FLC1             .EQ  $0001
FLC2             .EQ  $0002
FLC3             .EQ  $0003
FLC4             .EQ  $0004


;----- RXFBCON0 Bits -----------------------------------------------------
F0BP_0           .EQ  $0000
F0BP_1           .EQ  $0001
F0BP_2           .EQ  $0002
F0BP_3           .EQ  $0003
F1BP_0           .EQ  $0004
F1BP_1           .EQ  $0005
F1BP_2           .EQ  $0006
F1BP_3           .EQ  $0007


;----- RXFBCON1 Bits -----------------------------------------------------
F2BP_0           .EQ  $0000
F2BP_1           .EQ  $0001
F2BP_2           .EQ  $0002
F2BP_3           .EQ  $0003
F3BP_0           .EQ  $0004
F3BP_1           .EQ  $0005
F3BP_2           .EQ  $0006
F3BP_3           .EQ  $0007


;----- RXFBCON2 Bits -----------------------------------------------------
F4BP_0           .EQ  $0000
F4BP_1           .EQ  $0001
F4BP_2           .EQ  $0002
F4BP_3           .EQ  $0003
F5BP_0           .EQ  $0004
F5BP_1           .EQ  $0005
F5BP_2           .EQ  $0006
F5BP_3           .EQ  $0007


;----- RXFBCON3 Bits -----------------------------------------------------
F6BP_0           .EQ  $0000
F6BP_1           .EQ  $0001
F6BP_2           .EQ  $0002
F6BP_3           .EQ  $0003
F7BP_0           .EQ  $0004
F7BP_1           .EQ  $0005
F7BP_2           .EQ  $0006
F7BP_3           .EQ  $0007


;----- RXFBCON4 Bits -----------------------------------------------------
F8BP_0           .EQ  $0000
F8BP_1           .EQ  $0001
F8BP_2           .EQ  $0002
F8BP_3           .EQ  $0003
F9BP_0           .EQ  $0004
F9BP_1           .EQ  $0005
F9BP_2           .EQ  $0006
F9BP_3           .EQ  $0007


;----- RXFBCON5 Bits -----------------------------------------------------
F10BP_0          .EQ  $0000
F10BP_1          .EQ  $0001
F10BP_2          .EQ  $0002
F10BP_3          .EQ  $0003
F11BP_0          .EQ  $0004
F11BP_1          .EQ  $0005
F11BP_2          .EQ  $0006
F11BP_3          .EQ  $0007


;----- RXFBCON6 Bits -----------------------------------------------------
F12BP_0          .EQ  $0000
F12BP_1          .EQ  $0001
F12BP_2          .EQ  $0002
F12BP_3          .EQ  $0003
F13BP_0          .EQ  $0004
F13BP_1          .EQ  $0005
F13BP_2          .EQ  $0006
F13BP_3          .EQ  $0007


;----- RXFBCON7 Bits -----------------------------------------------------
F14BP_0          .EQ  $0000
F14BP_1          .EQ  $0001
F14BP_2          .EQ  $0002
F14BP_3          .EQ  $0003
F15BP_0          .EQ  $0004
F15BP_1          .EQ  $0005
F15BP_2          .EQ  $0006
F15BP_3          .EQ  $0007


;----- MSEL0 Bits -----------------------------------------------------
FIL0_0           .EQ  $0000
FIL0_1           .EQ  $0001
FIL1_0           .EQ  $0002
FIL1_1           .EQ  $0003
FIL2_0           .EQ  $0004
FIL2_1           .EQ  $0005
FIL3_0           .EQ  $0006
FIL3_1           .EQ  $0007


;----- MSEL1 Bits -----------------------------------------------------
FIL4_0           .EQ  $0000
FIL4_1           .EQ  $0001
FIL5_0           .EQ  $0002
FIL5_1           .EQ  $0003
FIL6_0           .EQ  $0004
FIL6_1           .EQ  $0005
FIL7_0           .EQ  $0006
FIL7_1           .EQ  $0007


;----- MSEL2 Bits -----------------------------------------------------
FIL8_0           .EQ  $0000
FIL8_1           .EQ  $0001
FIL9_0           .EQ  $0002
FIL9_1           .EQ  $0003
FIL10_0          .EQ  $0004
FIL10_1          .EQ  $0005
FIL11_0          .EQ  $0006
FIL11_1          .EQ  $0007


;----- MSEL3 Bits -----------------------------------------------------
FIL12_0          .EQ  $0000
FIL12_1          .EQ  $0001
FIL13_0          .EQ  $0002
FIL13_1          .EQ  $0003
FIL14_0          .EQ  $0004
FIL14_1          .EQ  $0005
FIL15_0          .EQ  $0006
FIL15_1          .EQ  $0007


;----- BSEL0 Bits -----------------------------------------------------
B0TXEN           .EQ  $0002
B1TXEN           .EQ  $0003
B2TXEN           .EQ  $0004
B3TXEN           .EQ  $0005
B4TXEN           .EQ  $0006
B5TXEN           .EQ  $0007


;----- BIE0 Bits -----------------------------------------------------
RXB0IE           .EQ  $0000
RXB1IE           .EQ  $0001
B0IE             .EQ  $0002
B1IE             .EQ  $0003
B2IE             .EQ  $0004
B3IE             .EQ  $0005
B4IE             .EQ  $0006
B5IE             .EQ  $0007


;----- TXBIE Bits -----------------------------------------------------
TXB0IE           .EQ  $0002
TXB1IE           .EQ  $0003
TXB2IE           .EQ  $0004


;----- B0CON Bits -----------------------------------------------------
FILHIT0_TXPRI0   .EQ  $0000
FILHIT1_TXPRI1   .EQ  $0001
FILHIT2_RTREN    .EQ  $0002
FILHIT3_TXREQ    .EQ  $0003
FILHIT4_TXERR    .EQ  $0004
RXRTRRO_TXLARB   .EQ  $0005
RXM1_TXABT       .EQ  $0006
RXFUL_TXBIF      .EQ  $0007

FILHIT0          .EQ  $0000
FILHIT1          .EQ  $0001
FILHIT2          .EQ  $0002
FILHIT3          .EQ  $0003
FILHIT4          .EQ  $0004
RXRTRRO_B0CON    .EQ  $0005
RXM1             .EQ  $0006
RXFUL            .EQ  $0007

TXPRI0           .EQ  $0000
TXPRI1           .EQ  $0001
RTREN            .EQ  $0002
TXREQ            .EQ  $0003
TXERR            .EQ  $0004
TXLARB           .EQ  $0005
TXABT            .EQ  $0006
TXBIF            .EQ  $0007


;----- B0SIDH Bits -----------------------------------------------------
SID3             .EQ  $0000
SID4             .EQ  $0001
SID5             .EQ  $0002
SID6             .EQ  $0003
SID7             .EQ  $0004
SID8             .EQ  $0005
SID9             .EQ  $0006
SID10            .EQ  $0007


;----- B0SIDL Bits -----------------------------------------------------
EXIDE            .EQ  $0003
SRR              .EQ  $0004

EID16            .EQ  $0000
EID17            .EQ  $0001
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007


;----- B0EIDH Bits -----------------------------------------------------
EID8             .EQ  $0000
EID9             .EQ  $0001
EID10            .EQ  $0002
EID11            .EQ  $0003
EID12            .EQ  $0004
EID13            .EQ  $0005
EID14            .EQ  $0006
EID15            .EQ  $0007


;----- B0EIDL Bits -----------------------------------------------------
EID0             .EQ  $0000
EID1             .EQ  $0001
EID2             .EQ  $0002
EID3             .EQ  $0003
EID4             .EQ  $0004
EID5             .EQ  $0005
EID6             .EQ  $0006
EID7             .EQ  $0007


;----- B0DLC Bits -----------------------------------------------------
RXRTR_TXRTR      .EQ  $0006

DLC0             .EQ  $0000
DLC1             .EQ  $0001
DLC2             .EQ  $0002
DLC3             .EQ  $0003
RB0_B0DLC        .EQ  $0004
RB1_B0DLC        .EQ  $0005
RXRTR            .EQ  $0006

TXRTR            .EQ  $0006


;----- B0D0 Bits -----------------------------------------------------
B0D00            .EQ  $0000
B0D01            .EQ  $0001
B0D02            .EQ  $0002
B0D03            .EQ  $0003
B0D04            .EQ  $0004
B0D05            .EQ  $0005
B0D06            .EQ  $0006
B0D07            .EQ  $0007


;----- B0D1 Bits -----------------------------------------------------
B0D10            .EQ  $0000
B0D11            .EQ  $0001
B0D12            .EQ  $0002
B0D13            .EQ  $0003
B0D14            .EQ  $0004
B0D15            .EQ  $0005
B0D16            .EQ  $0006
B0D17            .EQ  $0007


;----- B0D2 Bits -----------------------------------------------------
B0D20            .EQ  $0000
B0D21            .EQ  $0001
B0D22            .EQ  $0002
B0D23            .EQ  $0003
B0D24            .EQ  $0004
B0D25            .EQ  $0005
B0D26            .EQ  $0006
B0D27            .EQ  $0007


;----- B0D3 Bits -----------------------------------------------------
B0D30            .EQ  $0000
B0D31            .EQ  $0001
B0D32            .EQ  $0002
B0D33            .EQ  $0003
B0D34            .EQ  $0004
B0D35            .EQ  $0005
B0D36            .EQ  $0006
B0D37            .EQ  $0007


;----- B0D4 Bits -----------------------------------------------------
B0D40            .EQ  $0000
B0D41            .EQ  $0001
B0D42            .EQ  $0002
B0D43            .EQ  $0003
B0D44            .EQ  $0004
B0D45            .EQ  $0005
B0D46            .EQ  $0006
B0D47            .EQ  $0007


;----- B0D5 Bits -----------------------------------------------------
B0D50            .EQ  $0000
B0D51            .EQ  $0001
B0D52            .EQ  $0002
B0D53            .EQ  $0003
B0D54            .EQ  $0004
B0D55            .EQ  $0005
B0D56            .EQ  $0006
B0D57            .EQ  $0007


;----- B0D6 Bits -----------------------------------------------------
B0D60            .EQ  $0000
B0D61            .EQ  $0001
B0D62            .EQ  $0002
B0D63            .EQ  $0003
B0D64            .EQ  $0004
B0D65            .EQ  $0005
B0D66            .EQ  $0006
B0D67            .EQ  $0007


;----- B0D7 Bits -----------------------------------------------------
B0D70            .EQ  $0000
B0D71            .EQ  $0001
B0D72            .EQ  $0002
B0D73            .EQ  $0003
B0D74            .EQ  $0004
B0D75            .EQ  $0005
B0D76            .EQ  $0006
B0D77            .EQ  $0007


;----- CANSTAT_RO9 Bits -----------------------------------------------------
EICODE0          .EQ  $0000
EICODE1_ICODE0   .EQ  $0001
EICODE2_ICODE1   .EQ  $0002
EICODE3_ICODE2   .EQ  $0003
EICODE4          .EQ  $0004

EICODE1          .EQ  $0001
EICODE2          .EQ  $0002
EICODE3          .EQ  $0003
OPMODE0          .EQ  $0005
OPMODE1          .EQ  $0006
OPMODE2          .EQ  $0007

ICODE0           .EQ  $0001
ICODE1           .EQ  $0002
ICODE2           .EQ  $0003


;----- CANCON_RO9 Bits -----------------------------------------------------
FP0              .EQ  $0000
WIN0_FP1         .EQ  $0001
WIN1_FP2         .EQ  $0002
WIN2_FP3         .EQ  $0003
ABAT             .EQ  $0004

WIN0             .EQ  $0001
WIN1             .EQ  $0002
WIN2             .EQ  $0003

FP1              .EQ  $0001
FP2              .EQ  $0002
FP3              .EQ  $0003


;----- B1CON Bits -----------------------------------------------------
FILHIT0_TXPRI0   .EQ  $0000
FILHIT1_TXPRI1   .EQ  $0001
FILHIT2_RTREN    .EQ  $0002
FILHIT3_TXREQ    .EQ  $0003
FILHIT4_TXERR    .EQ  $0004
RXRTRRO_TXLARB   .EQ  $0005
RXM1_TXABT       .EQ  $0006
RXFUL_TXBIF      .EQ  $0007

FILHIT0          .EQ  $0000
FILHIT1          .EQ  $0001
FILHIT2          .EQ  $0002
FILHIT3          .EQ  $0003
FILHIT4          .EQ  $0004
RXRTRRO_B1CON    .EQ  $0005
RXM1             .EQ  $0006
RXFUL            .EQ  $0007

TXPRI0           .EQ  $0000
TXPRI1           .EQ  $0001
RTREN            .EQ  $0002
TXREQ            .EQ  $0003
TXERR            .EQ  $0004
TXLARB           .EQ  $0005
TXABT            .EQ  $0006
TXBIF            .EQ  $0007


;----- B1SIDH Bits -----------------------------------------------------
SID3             .EQ  $0000
SID4             .EQ  $0001
SID5             .EQ  $0002
SID6             .EQ  $0003
SID7             .EQ  $0004
SID8             .EQ  $0005
SID9             .EQ  $0006
SID10            .EQ  $0007


;----- B1SIDL Bits -----------------------------------------------------
EXIDE            .EQ  $0003
SRR              .EQ  $0004

EID16            .EQ  $0000
EID17            .EQ  $0001
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007


;----- B1EIDH Bits -----------------------------------------------------
EID8             .EQ  $0000
EID9             .EQ  $0001
EID10            .EQ  $0002
EID11            .EQ  $0003
EID12            .EQ  $0004
EID13            .EQ  $0005
EID14            .EQ  $0006
EID15            .EQ  $0007


;----- B1EIDL Bits -----------------------------------------------------
EID0             .EQ  $0000
EID1             .EQ  $0001
EID2             .EQ  $0002
EID3             .EQ  $0003
EID4             .EQ  $0004
EID5             .EQ  $0005
EID6             .EQ  $0006
EID7             .EQ  $0007


;----- B1DLC Bits -----------------------------------------------------
RXRTR_TXRTR      .EQ  $0006

DLC0             .EQ  $0000
DLC1             .EQ  $0001
DLC2             .EQ  $0002
DLC3             .EQ  $0003
RB0_B1DLC        .EQ  $0004
RB1_B1DLC        .EQ  $0005
RXRTR            .EQ  $0006

TXRTR            .EQ  $0006


;----- B1D0 Bits -----------------------------------------------------
B1D00            .EQ  $0000
B1D01            .EQ  $0001
B1D02            .EQ  $0002
B1D03            .EQ  $0003
B1D04            .EQ  $0004
B1D05            .EQ  $0005
B1D06            .EQ  $0006
B1D07            .EQ  $0007


;----- B1D1 Bits -----------------------------------------------------
B1D10            .EQ  $0000
B1D11            .EQ  $0001
B1D12            .EQ  $0002
B1D13            .EQ  $0003
B1D14            .EQ  $0004
B1D15            .EQ  $0005
B1D16            .EQ  $0006
B1D17            .EQ  $0007


;----- B1D2 Bits -----------------------------------------------------
B1D20            .EQ  $0000
B1D21            .EQ  $0001
B1D22            .EQ  $0002
B1D23            .EQ  $0003
B1D24            .EQ  $0004
B1D25            .EQ  $0005
B1D26            .EQ  $0006
B1D27            .EQ  $0007


;----- B1D3 Bits -----------------------------------------------------
B1D30            .EQ  $0000
B1D31            .EQ  $0001
B1D32            .EQ  $0002
B1D33            .EQ  $0003
B1D34            .EQ  $0004
B1D35            .EQ  $0005
B1D36            .EQ  $0006
B1D37            .EQ  $0007


;----- B1D4 Bits -----------------------------------------------------
B1D40            .EQ  $0000
B1D41            .EQ  $0001
B1D42            .EQ  $0002
B1D43            .EQ  $0003
B1D44            .EQ  $0004
B1D45            .EQ  $0005
B1D46            .EQ  $0006
B1D47            .EQ  $0007


;----- B1D5 Bits -----------------------------------------------------
B1D50            .EQ  $0000
B1D51            .EQ  $0001
B1D52            .EQ  $0002
B1D53            .EQ  $0003
B1D54            .EQ  $0004
B1D55            .EQ  $0005
B1D56            .EQ  $0006
B1D57            .EQ  $0007


;----- B1D6 Bits -----------------------------------------------------
B1D60            .EQ  $0000
B1D61            .EQ  $0001
B1D62            .EQ  $0002
B1D63            .EQ  $0003
B1D64            .EQ  $0004
B1D65            .EQ  $0005
B1D66            .EQ  $0006
B1D67            .EQ  $0007


;----- B1D7 Bits -----------------------------------------------------
B1D70            .EQ  $0000
B1D71            .EQ  $0001
B1D72            .EQ  $0002
B1D73            .EQ  $0003
B1D74            .EQ  $0004
B1D75            .EQ  $0005
B1D76            .EQ  $0006
B1D77            .EQ  $0007


;----- CANSTAT_RO8 Bits -----------------------------------------------------
EICODE0          .EQ  $0000
EICODE1_ICODE0   .EQ  $0001
EICODE2_ICODE1   .EQ  $0002
EICODE3_ICODE2   .EQ  $0003
EICODE4          .EQ  $0004

EICODE1          .EQ  $0001
EICODE2          .EQ  $0002
EICODE3          .EQ  $0003
OPMODE0          .EQ  $0005
OPMODE1          .EQ  $0006
OPMODE2          .EQ  $0007

ICODE0           .EQ  $0001
ICODE1           .EQ  $0002
ICODE2           .EQ  $0003


;----- CANCON_RO8 Bits -----------------------------------------------------
FP0              .EQ  $0000
WIN0_FP1         .EQ  $0001
WIN1_FP2         .EQ  $0002
WIN2_FP3         .EQ  $0003
ABAT             .EQ  $0004

WIN0             .EQ  $0001
WIN1             .EQ  $0002
WIN2             .EQ  $0003

FP1              .EQ  $0001
FP2              .EQ  $0002
FP3              .EQ  $0003


;----- B2CON Bits -----------------------------------------------------
FILHIT0_TXPRI0   .EQ  $0000
FILHIT1_TXPRI1   .EQ  $0001
FILHIT2_RTREN    .EQ  $0002
FILHIT3_TXREQ    .EQ  $0003
FILHIT4_TXERR    .EQ  $0004
RXRTRRO_TXLARB   .EQ  $0005
RXM1_TXABT       .EQ  $0006
RXFUL_TXBIF      .EQ  $0007

FILHIT0          .EQ  $0000
FILHIT1          .EQ  $0001
FILHIT2          .EQ  $0002
FILHIT3          .EQ  $0003
FILHIT4          .EQ  $0004
RXRTRRO_B2CON    .EQ  $0005
RXM1             .EQ  $0006
RXFUL            .EQ  $0007

TXPRI0           .EQ  $0000
TXPRI1           .EQ  $0001
RTREN            .EQ  $0002
TXREQ            .EQ  $0003
TXERR            .EQ  $0004
TXLARB           .EQ  $0005
TXABT            .EQ  $0006
TXBIF            .EQ  $0007


;----- B2SIDH Bits -----------------------------------------------------
SID3             .EQ  $0000
SID4             .EQ  $0001
SID5             .EQ  $0002
SID6             .EQ  $0003
SID7             .EQ  $0004
SID8             .EQ  $0005
SID9             .EQ  $0006
SID10            .EQ  $0007


;----- B2SIDL Bits -----------------------------------------------------
EXIDE            .EQ  $0003
SRR              .EQ  $0004

EID16            .EQ  $0000
EID17            .EQ  $0001
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007


;----- B2EIDH Bits -----------------------------------------------------
EID8             .EQ  $0000
EID9             .EQ  $0001
EID10            .EQ  $0002
EID11            .EQ  $0003
EID12            .EQ  $0004
EID13            .EQ  $0005
EID14            .EQ  $0006
EID15            .EQ  $0007


;----- B2EIDL Bits -----------------------------------------------------
EID0             .EQ  $0000
EID1             .EQ  $0001
EID2             .EQ  $0002
EID3             .EQ  $0003
EID4             .EQ  $0004
EID5             .EQ  $0005
EID6             .EQ  $0006
EID7             .EQ  $0007


;----- B2DLC Bits -----------------------------------------------------
RXRTR_TXRTR      .EQ  $0006

DLC0             .EQ  $0000
DLC1             .EQ  $0001
DLC2             .EQ  $0002
DLC3             .EQ  $0003
RB0_B2DLC        .EQ  $0004
RB1_B2DLC        .EQ  $0005
RXRTR            .EQ  $0006

TXRTR            .EQ  $0006


;----- B2D0 Bits -----------------------------------------------------
B2D00            .EQ  $0000
B2D01            .EQ  $0001
B2D02            .EQ  $0002
B2D03            .EQ  $0003
B2D04            .EQ  $0004
B2D05            .EQ  $0005
B2D06            .EQ  $0006
B2D07            .EQ  $0007


;----- B2D1 Bits -----------------------------------------------------
B2D10            .EQ  $0000
B2D11            .EQ  $0001
B2D12            .EQ  $0002
B2D13            .EQ  $0003
B2D14            .EQ  $0004
B2D15            .EQ  $0005
B2D16            .EQ  $0006
B2D17            .EQ  $0007


;----- B2D2 Bits -----------------------------------------------------
B2D20            .EQ  $0000
B2D21            .EQ  $0001
B2D22            .EQ  $0002
B2D23            .EQ  $0003
B2D24            .EQ  $0004
B2D25            .EQ  $0005
B2D26            .EQ  $0006
B2D27            .EQ  $0007


;----- B2D3 Bits -----------------------------------------------------
B2D30            .EQ  $0000
B2D31            .EQ  $0001
B2D32            .EQ  $0002
B2D33            .EQ  $0003
B2D34            .EQ  $0004
B2D35            .EQ  $0005
B2D36            .EQ  $0006
B2D37            .EQ  $0007


;----- B2D4 Bits -----------------------------------------------------
B2D40            .EQ  $0000
B2D41            .EQ  $0001
B2D42            .EQ  $0002
B2D43            .EQ  $0003
B2D44            .EQ  $0004
B2D45            .EQ  $0005
B2D46            .EQ  $0006
B2D47            .EQ  $0007


;----- B2D5 Bits -----------------------------------------------------
B2D50            .EQ  $0000
B2D51            .EQ  $0001
B2D52            .EQ  $0002
B2D53            .EQ  $0003
B2D54            .EQ  $0004
B2D55            .EQ  $0005
B2D56            .EQ  $0006
B2D57            .EQ  $0007


;----- B2D6 Bits -----------------------------------------------------
B2D60            .EQ  $0000
B2D61            .EQ  $0001
B2D62            .EQ  $0002
B2D63            .EQ  $0003
B2D64            .EQ  $0004
B2D65            .EQ  $0005
B2D66            .EQ  $0006
B2D67            .EQ  $0007


;----- B2D7 Bits -----------------------------------------------------
B2D70            .EQ  $0000
B2D71            .EQ  $0001
B2D72            .EQ  $0002
B2D73            .EQ  $0003
B2D74            .EQ  $0004
B2D75            .EQ  $0005
B2D76            .EQ  $0006
B2D77            .EQ  $0007


;----- CANSTAT_RO7 Bits -----------------------------------------------------
EICODE0          .EQ  $0000
EICODE1_ICODE0   .EQ  $0001
EICODE2_ICODE1   .EQ  $0002
EICODE3_ICODE2   .EQ  $0003
EICODE4          .EQ  $0004

EICODE1          .EQ  $0001
EICODE2          .EQ  $0002
EICODE3          .EQ  $0003
OPMODE0          .EQ  $0005
OPMODE1          .EQ  $0006
OPMODE2          .EQ  $0007

ICODE0           .EQ  $0001
ICODE1           .EQ  $0002
ICODE2           .EQ  $0003


;----- CANCON_RO7 Bits -----------------------------------------------------
FP0              .EQ  $0000
WIN0_FP1         .EQ  $0001
WIN1_FP2         .EQ  $0002
WIN2_FP3         .EQ  $0003
ABAT             .EQ  $0004

WIN0             .EQ  $0001
WIN1             .EQ  $0002
WIN2             .EQ  $0003

FP1              .EQ  $0001
FP2              .EQ  $0002
FP3              .EQ  $0003


;----- B3CON Bits -----------------------------------------------------
FILHIT0_TXPRI0   .EQ  $0000
FILHIT1_TXPRI1   .EQ  $0001
FILHIT2_RTREN    .EQ  $0002
FILHIT3_TXREQ    .EQ  $0003
FILHIT4_TXERR    .EQ  $0004
RXRTRRO_TXLARB   .EQ  $0005
RXM1_TXABT       .EQ  $0006
RXFUL_TXBIF      .EQ  $0007

FILHIT0          .EQ  $0000
FILHIT1          .EQ  $0001
FILHIT2          .EQ  $0002
FILHIT3          .EQ  $0003
FILHIT4          .EQ  $0004
RXRTRRO_B3CON    .EQ  $0005
RXM1             .EQ  $0006
RXFUL            .EQ  $0007

TXPRI0           .EQ  $0000
TXPRI1           .EQ  $0001
RTREN            .EQ  $0002
TXREQ            .EQ  $0003
TXERR            .EQ  $0004
TXLARB           .EQ  $0005
TXABT            .EQ  $0006
TXBIF            .EQ  $0007


;----- B3SIDH Bits -----------------------------------------------------
SID3             .EQ  $0000
SID4             .EQ  $0001
SID5             .EQ  $0002
SID6             .EQ  $0003
SID7             .EQ  $0004
SID8             .EQ  $0005
SID9             .EQ  $0006
SID10            .EQ  $0007


;----- B3SIDL Bits -----------------------------------------------------
EXIDE            .EQ  $0003
SRR              .EQ  $0004

EID16            .EQ  $0000
EID17            .EQ  $0001
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007


;----- B3EIDH Bits -----------------------------------------------------
EID8             .EQ  $0000
EID9             .EQ  $0001
EID10            .EQ  $0002
EID11            .EQ  $0003
EID12            .EQ  $0004
EID13            .EQ  $0005
EID14            .EQ  $0006
EID15            .EQ  $0007


;----- B3EIDL Bits -----------------------------------------------------
EID0             .EQ  $0000
EID1             .EQ  $0001
EID2             .EQ  $0002
EID3             .EQ  $0003
EID4             .EQ  $0004
EID5             .EQ  $0005
EID6             .EQ  $0006
EID7             .EQ  $0007


;----- B3DLC Bits -----------------------------------------------------
RXRTR_TXRTR      .EQ  $0006

DLC0             .EQ  $0000
DLC1             .EQ  $0001
DLC2             .EQ  $0002
DLC3             .EQ  $0003
RB0_B3DLC        .EQ  $0004
RB1_B3DLC        .EQ  $0005
RXRTR            .EQ  $0006

TXRTR            .EQ  $0006


;----- B3D0 Bits -----------------------------------------------------
B3D00            .EQ  $0000
B3D01            .EQ  $0001
B3D02            .EQ  $0002
B3D03            .EQ  $0003
B3D04            .EQ  $0004
B3D05            .EQ  $0005
B3D06            .EQ  $0006
B3D07            .EQ  $0007


;----- B3D1 Bits -----------------------------------------------------
B3D10            .EQ  $0000
B3D11            .EQ  $0001
B3D12            .EQ  $0002
B3D13            .EQ  $0003
B3D14            .EQ  $0004
B3D15            .EQ  $0005
B3D16            .EQ  $0006
B3D17            .EQ  $0007


;----- B3D2 Bits -----------------------------------------------------
B3D20            .EQ  $0000
B3D21            .EQ  $0001
B3D22            .EQ  $0002
B3D23            .EQ  $0003
B3D24            .EQ  $0004
B3D25            .EQ  $0005
B3D26            .EQ  $0006
B3D27            .EQ  $0007


;----- B3D3 Bits -----------------------------------------------------
B3D30            .EQ  $0000
B3D31            .EQ  $0001
B3D32            .EQ  $0002
B3D33            .EQ  $0003
B3D34            .EQ  $0004
B3D35            .EQ  $0005
B3D36            .EQ  $0006
B3D37            .EQ  $0007


;----- B3D4 Bits -----------------------------------------------------
B3D40            .EQ  $0000
B3D41            .EQ  $0001
B3D42            .EQ  $0002
B3D43            .EQ  $0003
B3D44            .EQ  $0004
B3D45            .EQ  $0005
B3D46            .EQ  $0006
B3D47            .EQ  $0007


;----- B3D5 Bits -----------------------------------------------------
B3D50            .EQ  $0000
B3D51            .EQ  $0001
B3D52            .EQ  $0002
B3D53            .EQ  $0003
B3D54            .EQ  $0004
B3D55            .EQ  $0005
B3D56            .EQ  $0006
B3D57            .EQ  $0007


;----- B3D6 Bits -----------------------------------------------------
B3D60            .EQ  $0000
B3D61            .EQ  $0001
B3D62            .EQ  $0002
B3D63            .EQ  $0003
B3D64            .EQ  $0004
B3D65            .EQ  $0005
B3D66            .EQ  $0006
B3D67            .EQ  $0007


;----- B3D7 Bits -----------------------------------------------------
B3D70            .EQ  $0000
B3D71            .EQ  $0001
B3D72            .EQ  $0002
B3D73            .EQ  $0003
B3D74            .EQ  $0004
B3D75            .EQ  $0005
B3D76            .EQ  $0006
B3D77            .EQ  $0007


;----- CANSTAT_RO6 Bits -----------------------------------------------------
EICODE0          .EQ  $0000
EICODE1_ICODE0   .EQ  $0001
EICODE2_ICODE1   .EQ  $0002
EICODE3_ICODE2   .EQ  $0003
EICODE4          .EQ  $0004

EICODE1          .EQ  $0001
EICODE2          .EQ  $0002
EICODE3          .EQ  $0003
OPMODE0          .EQ  $0005
OPMODE1          .EQ  $0006
OPMODE2          .EQ  $0007

ICODE0           .EQ  $0001
ICODE1           .EQ  $0002
ICODE2           .EQ  $0003


;----- CANCON_RO6 Bits -----------------------------------------------------
FP0              .EQ  $0000
WIN0_FP1         .EQ  $0001
WIN1_FP2         .EQ  $0002
WIN2_FP3         .EQ  $0003
ABAT             .EQ  $0004

WIN0             .EQ  $0001
WIN1             .EQ  $0002
WIN2             .EQ  $0003

FP1              .EQ  $0001
FP2              .EQ  $0002
FP3              .EQ  $0003


;----- B4CON Bits -----------------------------------------------------
FILHIT0_TXPRI0   .EQ  $0000
FILHIT1_TXPRI1   .EQ  $0001
FILHIT2_RTREN    .EQ  $0002
FILHIT3_TXREQ    .EQ  $0003
FILHIT4_TXERR    .EQ  $0004
RXRTRRO_TXLARB   .EQ  $0005
RXM1_TXABT       .EQ  $0006
RXFUL_TXBIF      .EQ  $0007

FILHIT0          .EQ  $0000
FILHIT1          .EQ  $0001
FILHIT2          .EQ  $0002
FILHIT3          .EQ  $0003
FILHIT4          .EQ  $0004
RXRTRRO_B4CON    .EQ  $0005
RXM1             .EQ  $0006
RXFUL            .EQ  $0007

TXPRI0           .EQ  $0000
TXPRI1           .EQ  $0001
RTREN            .EQ  $0002
TXREQ            .EQ  $0003
TXERR            .EQ  $0004
TXLARB           .EQ  $0005
TXABT            .EQ  $0006
TXBIF            .EQ  $0007


;----- B4SIDH Bits -----------------------------------------------------
SID3             .EQ  $0000
SID4             .EQ  $0001
SID5             .EQ  $0002
SID6             .EQ  $0003
SID7             .EQ  $0004
SID8             .EQ  $0005
SID9             .EQ  $0006
SID10            .EQ  $0007


;----- B4SIDL Bits -----------------------------------------------------
EXIDE            .EQ  $0003
SRR              .EQ  $0004

EID16            .EQ  $0000
EID17            .EQ  $0001
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007


;----- B4EIDH Bits -----------------------------------------------------
EID8             .EQ  $0000
EID9             .EQ  $0001
EID10            .EQ  $0002
EID11            .EQ  $0003
EID12            .EQ  $0004
EID13            .EQ  $0005
EID14            .EQ  $0006
EID15            .EQ  $0007


;----- B4EIDL Bits -----------------------------------------------------
EID0             .EQ  $0000
EID1             .EQ  $0001
EID2             .EQ  $0002
EID3             .EQ  $0003
EID4             .EQ  $0004
EID5             .EQ  $0005
EID6             .EQ  $0006
EID7             .EQ  $0007


;----- B4DLC Bits -----------------------------------------------------
RXRTR_TXRTR      .EQ  $0006

DLC0             .EQ  $0000
DLC1             .EQ  $0001
DLC2             .EQ  $0002
DLC3             .EQ  $0003
RB0_B4DLC        .EQ  $0004
RB1_B4DLC        .EQ  $0005
RXRTR            .EQ  $0006

TXRTR            .EQ  $0006


;----- B4D0 Bits -----------------------------------------------------
B4D00            .EQ  $0000
B4D01            .EQ  $0001
B4D02            .EQ  $0002
B4D03            .EQ  $0003
B4D04            .EQ  $0004
B4D05            .EQ  $0005
B4D06            .EQ  $0006
B4D07            .EQ  $0007


;----- B4D1 Bits -----------------------------------------------------
B4D10            .EQ  $0000
B4D11            .EQ  $0001
B4D12            .EQ  $0002
B4D13            .EQ  $0003
B4D14            .EQ  $0004
B4D15            .EQ  $0005
B4D16            .EQ  $0006
B4D17            .EQ  $0007


;----- B4D2 Bits -----------------------------------------------------
B4D20            .EQ  $0000
B4D21            .EQ  $0001
B4D22            .EQ  $0002
B4D23            .EQ  $0003
B4D24            .EQ  $0004
B4D25            .EQ  $0005
B4D26            .EQ  $0006
B4D27            .EQ  $0007


;----- B4D3 Bits -----------------------------------------------------
B4D30            .EQ  $0000
B4D31            .EQ  $0001
B4D32            .EQ  $0002
B4D33            .EQ  $0003
B4D34            .EQ  $0004
B4D35            .EQ  $0005
B4D36            .EQ  $0006
B4D37            .EQ  $0007


;----- B4D4 Bits -----------------------------------------------------
B4D40            .EQ  $0000
B4D41            .EQ  $0001
B4D42            .EQ  $0002
B4D43            .EQ  $0003
B4D44            .EQ  $0004
B4D45            .EQ  $0005
B4D46            .EQ  $0006
B4D47            .EQ  $0007


;----- B4D5 Bits -----------------------------------------------------
B4D50            .EQ  $0000
B4D51            .EQ  $0001
B4D52            .EQ  $0002
B4D53            .EQ  $0003
B4D54            .EQ  $0004
B4D55            .EQ  $0005
B4D56            .EQ  $0006
B4D57            .EQ  $0007


;----- B4D6 Bits -----------------------------------------------------
B4D60            .EQ  $0000
B4D61            .EQ  $0001
B4D62            .EQ  $0002
B4D63            .EQ  $0003
B4D64            .EQ  $0004
B4D65            .EQ  $0005
B4D66            .EQ  $0006
B4D67            .EQ  $0007


;----- B4D7 Bits -----------------------------------------------------
B4D70            .EQ  $0000
B4D71            .EQ  $0001
B4D72            .EQ  $0002
B4D73            .EQ  $0003
B4D74            .EQ  $0004
B4D75            .EQ  $0005
B4D76            .EQ  $0006
B4D77            .EQ  $0007


;----- CANSTAT_RO5 Bits -----------------------------------------------------
EICODE0          .EQ  $0000
EICODE1_ICODE0   .EQ  $0001
EICODE2_ICODE1   .EQ  $0002
EICODE3_ICODE2   .EQ  $0003
EICODE4          .EQ  $0004

EICODE1          .EQ  $0001
EICODE2          .EQ  $0002
EICODE3          .EQ  $0003
OPMODE0          .EQ  $0005
OPMODE1          .EQ  $0006
OPMODE2          .EQ  $0007

ICODE0           .EQ  $0001
ICODE1           .EQ  $0002
ICODE2           .EQ  $0003


;----- CANCON_RO5 Bits -----------------------------------------------------
FP0              .EQ  $0000
WIN0_FP1         .EQ  $0001
WIN1_FP2         .EQ  $0002
WIN2_FP3         .EQ  $0003
ABAT             .EQ  $0004

WIN0             .EQ  $0001
WIN1             .EQ  $0002
WIN2             .EQ  $0003

FP1              .EQ  $0001
FP2              .EQ  $0002
FP3              .EQ  $0003


;----- B5CON Bits -----------------------------------------------------
FILHIT0_TXPRI0   .EQ  $0000
FILHIT1_TXPRI1   .EQ  $0001
FILHIT2_RTREN    .EQ  $0002
FILHIT3_TXREQ    .EQ  $0003
FILHIT4_TXERR    .EQ  $0004
RXRTRRO_TXLARB   .EQ  $0005
RXM1_TXABT       .EQ  $0006
RXFUL_TXBIF      .EQ  $0007

FILHIT0          .EQ  $0000
FILHIT1          .EQ  $0001
FILHIT2          .EQ  $0002
FILHIT3          .EQ  $0003
FILHIT4          .EQ  $0004
RXRTRRO_B5CON    .EQ  $0005
RXM1             .EQ  $0006
RXFUL            .EQ  $0007

TXPRI0           .EQ  $0000
TXPRI1           .EQ  $0001
RTREN            .EQ  $0002
TXREQ            .EQ  $0003
TXERR            .EQ  $0004
TXLARB           .EQ  $0005
TXABT            .EQ  $0006
TXBIF            .EQ  $0007


;----- B5SIDH Bits -----------------------------------------------------
SID3             .EQ  $0000
SID4             .EQ  $0001
SID5             .EQ  $0002
SID6             .EQ  $0003
SID7             .EQ  $0004
SID8             .EQ  $0005
SID9             .EQ  $0006
SID10            .EQ  $0007


;----- B5SIDL Bits -----------------------------------------------------
EXIDE            .EQ  $0003
SRR              .EQ  $0004

EID16            .EQ  $0000
EID17            .EQ  $0001
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007


;----- B5EIDH Bits -----------------------------------------------------
EID8             .EQ  $0000
EID9             .EQ  $0001
EID10            .EQ  $0002
EID11            .EQ  $0003
EID12            .EQ  $0004
EID13            .EQ  $0005
EID14            .EQ  $0006
EID15            .EQ  $0007


;----- B5EIDL Bits -----------------------------------------------------
EID0             .EQ  $0000
EID1             .EQ  $0001
EID2             .EQ  $0002
EID3             .EQ  $0003
EID4             .EQ  $0004
EID5             .EQ  $0005
EID6             .EQ  $0006
EID7             .EQ  $0007


;----- B5DLC Bits -----------------------------------------------------
RXRTR_TXRTR      .EQ  $0006

DLC0             .EQ  $0000
DLC1             .EQ  $0001
DLC2             .EQ  $0002
DLC3             .EQ  $0003
RB0_B5DLC        .EQ  $0004
RB1_B5DLC        .EQ  $0005
RXRTR            .EQ  $0006

TXRTR            .EQ  $0006


;----- B5D0 Bits -----------------------------------------------------
B5D00            .EQ  $0000
B5D01            .EQ  $0001
B5D02            .EQ  $0002
B5D03            .EQ  $0003
B5D04            .EQ  $0004
B5D05            .EQ  $0005
B5D06            .EQ  $0006
B5D07            .EQ  $0007


;----- B5D1 Bits -----------------------------------------------------
B5D10            .EQ  $0000
B5D11            .EQ  $0001
B5D12            .EQ  $0002
B5D13            .EQ  $0003
B5D14            .EQ  $0004
B5D15            .EQ  $0005
B5D16            .EQ  $0006
B5D17            .EQ  $0007


;----- B5D2 Bits -----------------------------------------------------
B5D20            .EQ  $0000
B5D21            .EQ  $0001
B5D22            .EQ  $0002
B5D23            .EQ  $0003
B5D24            .EQ  $0004
B5D25            .EQ  $0005
B5D26            .EQ  $0006
B5D27            .EQ  $0007


;----- B5D3 Bits -----------------------------------------------------
B5D30            .EQ  $0000
B5D31            .EQ  $0001
B5D32            .EQ  $0002
B5D33            .EQ  $0003
B5D34            .EQ  $0004
B5D35            .EQ  $0005
B5D36            .EQ  $0006
B5D37            .EQ  $0007


;----- B5D4 Bits -----------------------------------------------------
B5D40            .EQ  $0000
B5D41            .EQ  $0001
B5D42            .EQ  $0002
B5D43            .EQ  $0003
B5D44            .EQ  $0004
B5D45            .EQ  $0005
B5D46            .EQ  $0006
B5D47            .EQ  $0007


;----- B5D5 Bits -----------------------------------------------------
B5D50            .EQ  $0000
B5D51            .EQ  $0001
B5D52            .EQ  $0002
B5D53            .EQ  $0003
B5D54            .EQ  $0004
B5D55            .EQ  $0005
B5D56            .EQ  $0006
B5D57            .EQ  $0007


;----- B5D6 Bits -----------------------------------------------------
B5D60            .EQ  $0000
B5D61            .EQ  $0001
B5D62            .EQ  $0002
B5D63            .EQ  $0003
B5D64            .EQ  $0004
B5D65            .EQ  $0005
B5D66            .EQ  $0006
B5D67            .EQ  $0007


;----- B5D7 Bits -----------------------------------------------------
B5D70            .EQ  $0000
B5D71            .EQ  $0001
B5D72            .EQ  $0002
B5D73            .EQ  $0003
B5D74            .EQ  $0004
B5D75            .EQ  $0005
B5D76            .EQ  $0006
B5D77            .EQ  $0007


;----- CANSTAT_RO4 Bits -----------------------------------------------------
EICODE0          .EQ  $0000
EICODE1_ICODE0   .EQ  $0001
EICODE2_ICODE1   .EQ  $0002
EICODE3_ICODE2   .EQ  $0003
EICODE4          .EQ  $0004

EICODE1          .EQ  $0001
EICODE2          .EQ  $0002
EICODE3          .EQ  $0003
OPMODE0          .EQ  $0005
OPMODE1          .EQ  $0006
OPMODE2          .EQ  $0007

ICODE0           .EQ  $0001
ICODE1           .EQ  $0002
ICODE2           .EQ  $0003


;----- CANCON_RO4 Bits -----------------------------------------------------
FP0              .EQ  $0000
WIN0_FP1         .EQ  $0001
WIN1_FP2         .EQ  $0002
WIN2_FP3         .EQ  $0003
ABAT             .EQ  $0004

WIN0             .EQ  $0001
WIN1             .EQ  $0002
WIN2             .EQ  $0003

FP1              .EQ  $0001
FP2              .EQ  $0002
FP3              .EQ  $0003


;----- RXF0SIDH Bits -----------------------------------------------------
SID3             .EQ  $0000
SID4             .EQ  $0001
SID5             .EQ  $0002
SID6             .EQ  $0003
SID7             .EQ  $0004
SID8             .EQ  $0005
SID9             .EQ  $0006
SID10            .EQ  $0007


;----- RXF0SIDL Bits -----------------------------------------------------
EXIDEN           .EQ  $0003

EID16            .EQ  $0000
EID17            .EQ  $0001
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007


;----- RXF0EIDH Bits -----------------------------------------------------
EID8             .EQ  $0000
EID9             .EQ  $0001
EID10            .EQ  $0002
EID11            .EQ  $0003
EID12            .EQ  $0004
EID13            .EQ  $0005
EID14            .EQ  $0006
EID15            .EQ  $0007


;----- RXF0EIDL Bits -----------------------------------------------------
EID0             .EQ  $0000
EID1             .EQ  $0001
EID2             .EQ  $0002
EID3             .EQ  $0003
EID4             .EQ  $0004
EID5             .EQ  $0005
EID6             .EQ  $0006
EID7             .EQ  $0007


;----- RXF1SIDH Bits -----------------------------------------------------
SID3             .EQ  $0000
SID4             .EQ  $0001
SID5             .EQ  $0002
SID6             .EQ  $0003
SID7             .EQ  $0004
SID8             .EQ  $0005
SID9             .EQ  $0006
SID10            .EQ  $0007


;----- RXF1SIDL Bits -----------------------------------------------------
EXIDEN           .EQ  $0003

EID16            .EQ  $0000
EID17            .EQ  $0001
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007


;----- RXF1EIDH Bits -----------------------------------------------------
EID8             .EQ  $0000
EID9             .EQ  $0001
EID10            .EQ  $0002
EID11            .EQ  $0003
EID12            .EQ  $0004
EID13            .EQ  $0005
EID14            .EQ  $0006
EID15            .EQ  $0007


;----- RXF1EIDL Bits -----------------------------------------------------
EID0             .EQ  $0000
EID1             .EQ  $0001
EID2             .EQ  $0002
EID3             .EQ  $0003
EID4             .EQ  $0004
EID5             .EQ  $0005
EID6             .EQ  $0006
EID7             .EQ  $0007


;----- RXF2SIDH Bits -----------------------------------------------------
SID3             .EQ  $0000
SID4             .EQ  $0001
SID5             .EQ  $0002
SID6             .EQ  $0003
SID7             .EQ  $0004
SID8             .EQ  $0005
SID9             .EQ  $0006
SID10            .EQ  $0007


;----- RXF2SIDL Bits -----------------------------------------------------
EXIDEN           .EQ  $0003

EID16            .EQ  $0000
EID17            .EQ  $0001
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007


;----- RXF2EIDH Bits -----------------------------------------------------
EID8             .EQ  $0000
EID9             .EQ  $0001
EID10            .EQ  $0002
EID11            .EQ  $0003
EID12            .EQ  $0004
EID13            .EQ  $0005
EID14            .EQ  $0006
EID15            .EQ  $0007


;----- RXF2EIDL Bits -----------------------------------------------------
EID0             .EQ  $0000
EID1             .EQ  $0001
EID2             .EQ  $0002
EID3             .EQ  $0003
EID4             .EQ  $0004
EID5             .EQ  $0005
EID6             .EQ  $0006
EID7             .EQ  $0007


;----- RXF3SIDH Bits -----------------------------------------------------
SID3             .EQ  $0000
SID4             .EQ  $0001
SID5             .EQ  $0002
SID6             .EQ  $0003
SID7             .EQ  $0004
SID8             .EQ  $0005
SID9             .EQ  $0006
SID10            .EQ  $0007


;----- RXF3SIDL Bits -----------------------------------------------------
EXIDEN           .EQ  $0003

EID16            .EQ  $0000
EID17            .EQ  $0001
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007


;----- RXF3EIDH Bits -----------------------------------------------------
EID8             .EQ  $0000
EID9             .EQ  $0001
EID10            .EQ  $0002
EID11            .EQ  $0003
EID12            .EQ  $0004
EID13            .EQ  $0005
EID14            .EQ  $0006
EID15            .EQ  $0007


;----- RXF3EIDL Bits -----------------------------------------------------
EID0             .EQ  $0000
EID1             .EQ  $0001
EID2             .EQ  $0002
EID3             .EQ  $0003
EID4             .EQ  $0004
EID5             .EQ  $0005
EID6             .EQ  $0006
EID7             .EQ  $0007


;----- RXF4SIDH Bits -----------------------------------------------------
SID3             .EQ  $0000
SID4             .EQ  $0001
SID5             .EQ  $0002
SID6             .EQ  $0003
SID7             .EQ  $0004
SID8             .EQ  $0005
SID9             .EQ  $0006
SID10            .EQ  $0007


;----- RXF4SIDL Bits -----------------------------------------------------
EXIDEN           .EQ  $0003

EID16            .EQ  $0000
EID17            .EQ  $0001
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007


;----- RXF4EIDH Bits -----------------------------------------------------
EID8             .EQ  $0000
EID9             .EQ  $0001
EID10            .EQ  $0002
EID11            .EQ  $0003
EID12            .EQ  $0004
EID13            .EQ  $0005
EID14            .EQ  $0006
EID15            .EQ  $0007


;----- RXF4EIDL Bits -----------------------------------------------------
EID0             .EQ  $0000
EID1             .EQ  $0001
EID2             .EQ  $0002
EID3             .EQ  $0003
EID4             .EQ  $0004
EID5             .EQ  $0005
EID6             .EQ  $0006
EID7             .EQ  $0007


;----- RXF5SIDH Bits -----------------------------------------------------
SID3             .EQ  $0000
SID4             .EQ  $0001
SID5             .EQ  $0002
SID6             .EQ  $0003
SID7             .EQ  $0004
SID8             .EQ  $0005
SID9             .EQ  $0006
SID10            .EQ  $0007


;----- RXF5SIDL Bits -----------------------------------------------------
EXIDEN           .EQ  $0003

EID16            .EQ  $0000
EID17            .EQ  $0001
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007


;----- RXF5EIDH Bits -----------------------------------------------------
EID8             .EQ  $0000
EID9             .EQ  $0001
EID10            .EQ  $0002
EID11            .EQ  $0003
EID12            .EQ  $0004
EID13            .EQ  $0005
EID14            .EQ  $0006
EID15            .EQ  $0007


;----- RXF5EIDL Bits -----------------------------------------------------
EID0             .EQ  $0000
EID1             .EQ  $0001
EID2             .EQ  $0002
EID3             .EQ  $0003
EID4             .EQ  $0004
EID5             .EQ  $0005
EID6             .EQ  $0006
EID7             .EQ  $0007


;----- RXM0SIDH Bits -----------------------------------------------------
SID3             .EQ  $0000
SID4             .EQ  $0001
SID5             .EQ  $0002
SID6             .EQ  $0003
SID7             .EQ  $0004
SID8             .EQ  $0005
SID9             .EQ  $0006
SID10            .EQ  $0007


;----- RXM0SIDL Bits -----------------------------------------------------
EXIDEN           .EQ  $0003

EID16            .EQ  $0000
EID17            .EQ  $0001
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007


;----- RXM0EIDH Bits -----------------------------------------------------
EID8             .EQ  $0000
EID9             .EQ  $0001
EID10            .EQ  $0002
EID11            .EQ  $0003
EID12            .EQ  $0004
EID13            .EQ  $0005
EID14            .EQ  $0006
EID15            .EQ  $0007


;----- RXM0EIDL Bits -----------------------------------------------------
EID0             .EQ  $0000
EID1             .EQ  $0001
EID2             .EQ  $0002
EID3             .EQ  $0003
EID4             .EQ  $0004
EID5             .EQ  $0005
EID6             .EQ  $0006
EID7             .EQ  $0007


;----- RXM1SIDH Bits -----------------------------------------------------
SID3             .EQ  $0000
SID4             .EQ  $0001
SID5             .EQ  $0002
SID6             .EQ  $0003
SID7             .EQ  $0004
SID8             .EQ  $0005
SID9             .EQ  $0006
SID10            .EQ  $0007


;----- RXM1SIDL Bits -----------------------------------------------------
EXIDEN           .EQ  $0003

EID16            .EQ  $0000
EID17            .EQ  $0001
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007


;----- RXM1EIDH Bits -----------------------------------------------------
EID8             .EQ  $0000
EID9             .EQ  $0001
EID10            .EQ  $0002
EID11            .EQ  $0003
EID12            .EQ  $0004
EID13            .EQ  $0005
EID14            .EQ  $0006
EID15            .EQ  $0007


;----- RXM1EIDL Bits -----------------------------------------------------
EID0             .EQ  $0000
EID1             .EQ  $0001
EID2             .EQ  $0002
EID3             .EQ  $0003
EID4             .EQ  $0004
EID5             .EQ  $0005
EID6             .EQ  $0006
EID7             .EQ  $0007


;----- TXB2CON Bits -----------------------------------------------------
TXREQ            .EQ  $0003
TXERR            .EQ  $0004
TXLARB           .EQ  $0005
TXABT            .EQ  $0006
TXBIF            .EQ  $0007

TXPRI0           .EQ  $0000
TXPRI1           .EQ  $0001


;----- TXB2SIDH Bits -----------------------------------------------------
SID3             .EQ  $0000
SID4             .EQ  $0001
SID5             .EQ  $0002
SID6             .EQ  $0003
SID7             .EQ  $0004
SID8             .EQ  $0005
SID9             .EQ  $0006
SID10            .EQ  $0007


;----- TXB2SIDL Bits -----------------------------------------------------
EXIDE            .EQ  $0003
SRR              .EQ  $0004

EID16            .EQ  $0000
EID17            .EQ  $0001
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007


;----- TXB2EIDH Bits -----------------------------------------------------
EID8             .EQ  $0000
EID9             .EQ  $0001
EID10            .EQ  $0002
EID11            .EQ  $0003
EID12            .EQ  $0004
EID13            .EQ  $0005
EID14            .EQ  $0006
EID15            .EQ  $0007


;----- TXB2EIDL Bits -----------------------------------------------------
EID0             .EQ  $0000
EID1             .EQ  $0001
EID2             .EQ  $0002
EID3             .EQ  $0003
EID4             .EQ  $0004
EID5             .EQ  $0005
EID6             .EQ  $0006
EID7             .EQ  $0007


;----- TXB2DLC Bits -----------------------------------------------------
TXRTR            .EQ  $0006

DLC0             .EQ  $0000
DLC1             .EQ  $0001
DLC2             .EQ  $0002
DLC3             .EQ  $0003


;----- TXB2D0 Bits -----------------------------------------------------
TXB2D00          .EQ  $0000
TXB2D01          .EQ  $0001
TXB2D02          .EQ  $0002
TXB2D03          .EQ  $0003
TXB2D04          .EQ  $0004
TXB2D05          .EQ  $0005
TXB2D06          .EQ  $0006
TXB2D07          .EQ  $0007


;----- TXB2D1 Bits -----------------------------------------------------
TXB2D10          .EQ  $0000
TXB2D11          .EQ  $0001
TXB2D12          .EQ  $0002
TXB2D13          .EQ  $0003
TXB2D14          .EQ  $0004
TXB2D15          .EQ  $0005
TXB2D16          .EQ  $0006
TXB2D17          .EQ  $0007


;----- TXB2D2 Bits -----------------------------------------------------
TXB2D20          .EQ  $0000
TXB2D21          .EQ  $0001
TXB2D22          .EQ  $0002
TXB2D23          .EQ  $0003
TXB2D24          .EQ  $0004
TXB2D25          .EQ  $0005
TXB2D26          .EQ  $0006
TXB2D27          .EQ  $0007


;----- TXB2D3 Bits -----------------------------------------------------
TXB2D30          .EQ  $0000
TXB2D31          .EQ  $0001
TXB2D32          .EQ  $0002
TXB2D33          .EQ  $0003
TXB2D34          .EQ  $0004
TXB2D35          .EQ  $0005
TXB2D36          .EQ  $0006
TXB2D37          .EQ  $0007


;----- TXB2D4 Bits -----------------------------------------------------
TXB2D40          .EQ  $0000
TXB2D41          .EQ  $0001
TXB2D42          .EQ  $0002
TXB2D43          .EQ  $0003
TXB2D44          .EQ  $0004
TXB2D45          .EQ  $0005
TXB2D46          .EQ  $0006
TXB2D47          .EQ  $0007


;----- TXB2D5 Bits -----------------------------------------------------
TXB2D50          .EQ  $0000
TXB2D51          .EQ  $0001
TXB2D52          .EQ  $0002
TXB2D53          .EQ  $0003
TXB2D54          .EQ  $0004
TXB2D55          .EQ  $0005
TXB2D56          .EQ  $0006
TXB2D57          .EQ  $0007


;----- TXB2D6 Bits -----------------------------------------------------
TXB2D60          .EQ  $0000
TXB2D61          .EQ  $0001
TXB2D62          .EQ  $0002
TXB2D63          .EQ  $0003
TXB2D64          .EQ  $0004
TXB2D65          .EQ  $0005
TXB2D66          .EQ  $0006
TXB2D67          .EQ  $0007


;----- TXB2D7 Bits -----------------------------------------------------
TXB2D70          .EQ  $0000
TXB2D71          .EQ  $0001
TXB2D72          .EQ  $0002
TXB2D73          .EQ  $0003
TXB2D74          .EQ  $0004
TXB2D75          .EQ  $0005
TXB2D76          .EQ  $0006
TXB2D77          .EQ  $0007


;----- CANSTAT_RO3 Bits -----------------------------------------------------
EICODE0          .EQ  $0000
EICODE1_ICODE0   .EQ  $0001
EICODE2_ICODE1   .EQ  $0002
EICODE3_ICODE2   .EQ  $0003
EICODE4          .EQ  $0004

EICODE1          .EQ  $0001
EICODE2          .EQ  $0002
EICODE3          .EQ  $0003
OPMODE0          .EQ  $0005
OPMODE1          .EQ  $0006
OPMODE2          .EQ  $0007

ICODE0           .EQ  $0001
ICODE1           .EQ  $0002
ICODE2           .EQ  $0003


;----- CANCON_RO3 Bits -----------------------------------------------------
FP0              .EQ  $0000
WIN0_FP1         .EQ  $0001
WIN1_FP2         .EQ  $0002
WIN2_FP3         .EQ  $0003
ABAT             .EQ  $0004

WIN0             .EQ  $0001
WIN1             .EQ  $0002
WIN2             .EQ  $0003

FP1              .EQ  $0001
FP2              .EQ  $0002
FP3              .EQ  $0003


;----- TXB1CON Bits -----------------------------------------------------
TXREQ            .EQ  $0003
TXERR            .EQ  $0004
TXLARB           .EQ  $0005
TXABT            .EQ  $0006
TXBIF            .EQ  $0007

TXPRI0           .EQ  $0000
TXPRI1           .EQ  $0001


;----- TXB1SIDH Bits -----------------------------------------------------
SID3             .EQ  $0000
SID4             .EQ  $0001
SID5             .EQ  $0002
SID6             .EQ  $0003
SID7             .EQ  $0004
SID8             .EQ  $0005
SID9             .EQ  $0006
SID10            .EQ  $0007


;----- TXB1SIDL Bits -----------------------------------------------------
EXIDE            .EQ  $0003
SRR              .EQ  $0004

EID16            .EQ  $0000
EID17            .EQ  $0001
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007


;----- TXB1EIDH Bits -----------------------------------------------------
EID8             .EQ  $0000
EID9             .EQ  $0001
EID10            .EQ  $0002
EID11            .EQ  $0003
EID12            .EQ  $0004
EID13            .EQ  $0005
EID14            .EQ  $0006
EID15            .EQ  $0007


;----- TXB1EIDL Bits -----------------------------------------------------
EID0             .EQ  $0000
EID1             .EQ  $0001
EID2             .EQ  $0002
EID3             .EQ  $0003
EID4             .EQ  $0004
EID5             .EQ  $0005
EID6             .EQ  $0006
EID7             .EQ  $0007


;----- TXB1DLC Bits -----------------------------------------------------
TXRTR            .EQ  $0006

DLC0             .EQ  $0000
DLC1             .EQ  $0001
DLC2             .EQ  $0002
DLC3             .EQ  $0003


;----- TXB1D0 Bits -----------------------------------------------------
TXB1D00          .EQ  $0000
TXB1D01          .EQ  $0001
TXB1D02          .EQ  $0002
TXB1D03          .EQ  $0003
TXB1D04          .EQ  $0004
TXB1D05          .EQ  $0005
TXB1D06          .EQ  $0006
TXB1D07          .EQ  $0007


;----- TXB1D1 Bits -----------------------------------------------------
TXB1D10          .EQ  $0000
TXB1D11          .EQ  $0001
TXB1D12          .EQ  $0002
TXB1D13          .EQ  $0003
TXB1D14          .EQ  $0004
TXB1D15          .EQ  $0005
TXB1D16          .EQ  $0006
TXB1D17          .EQ  $0007


;----- TXB1D2 Bits -----------------------------------------------------
TXB1D20          .EQ  $0000
TXB1D21          .EQ  $0001
TXB1D22          .EQ  $0002
TXB1D23          .EQ  $0003
TXB1D24          .EQ  $0004
TXB1D25          .EQ  $0005
TXB1D26          .EQ  $0006
TXB1D27          .EQ  $0007


;----- TXB1D3 Bits -----------------------------------------------------
TXB1D30          .EQ  $0000
TXB1D31          .EQ  $0001
TXB1D32          .EQ  $0002
TXB1D33          .EQ  $0003
TXB1D34          .EQ  $0004
TXB1D35          .EQ  $0005
TXB1D36          .EQ  $0006
TXB1D37          .EQ  $0007


;----- TXB1D4 Bits -----------------------------------------------------
TXB1D40          .EQ  $0000
TXB1D41          .EQ  $0001
TXB1D42          .EQ  $0002
TXB1D43          .EQ  $0003
TXB1D44          .EQ  $0004
TXB1D45          .EQ  $0005
TXB1D46          .EQ  $0006
TXB1D47          .EQ  $0007


;----- TXB1D5 Bits -----------------------------------------------------
TXB1D50          .EQ  $0000
TXB1D51          .EQ  $0001
TXB1D52          .EQ  $0002
TXB1D53          .EQ  $0003
TXB1D54          .EQ  $0004
TXB1D55          .EQ  $0005
TXB1D56          .EQ  $0006
TXB1D57          .EQ  $0007


;----- TXB1D6 Bits -----------------------------------------------------
TXB1D60          .EQ  $0000
TXB1D61          .EQ  $0001
TXB1D62          .EQ  $0002
TXB1D63          .EQ  $0003
TXB1D64          .EQ  $0004
TXB1D65          .EQ  $0005
TXB1D66          .EQ  $0006
TXB1D67          .EQ  $0007


;----- TXB1D7 Bits -----------------------------------------------------
TXB1D70          .EQ  $0000
TXB1D71          .EQ  $0001
TXB1D72          .EQ  $0002
TXB1D73          .EQ  $0003
TXB1D74          .EQ  $0004
TXB1D75          .EQ  $0005
TXB1D76          .EQ  $0006
TXB1D77          .EQ  $0007


;----- CANSTAT_RO2 Bits -----------------------------------------------------
EICODE0          .EQ  $0000
EICODE1_ICODE0   .EQ  $0001
EICODE2_ICODE1   .EQ  $0002
EICODE3_ICODE2   .EQ  $0003
EICODE4          .EQ  $0004

EICODE1          .EQ  $0001
EICODE2          .EQ  $0002
EICODE3          .EQ  $0003
OPMODE0          .EQ  $0005
OPMODE1          .EQ  $0006
OPMODE2          .EQ  $0007

ICODE20          .EQ  $0001
ICODE21          .EQ  $0002
ICODE2           .EQ  $0003


;----- CANCON_RO2 Bits -----------------------------------------------------
FP0              .EQ  $0000
WIN0_FP1         .EQ  $0001
WIN1_FP2         .EQ  $0002
WIN2_FP3         .EQ  $0003
ABAT             .EQ  $0004

WIN0             .EQ  $0001
WIN1             .EQ  $0002
WIN2             .EQ  $0003

FP1              .EQ  $0001
FP2              .EQ  $0002
FP3              .EQ  $0003


;----- TXB0CON Bits -----------------------------------------------------
TXREQ            .EQ  $0003
TXERR            .EQ  $0004
TXLARB           .EQ  $0005
TXABT            .EQ  $0006
TXBIF            .EQ  $0007

TXPRI0           .EQ  $0000
TXPRI1           .EQ  $0001


;----- TXB0SIDH Bits -----------------------------------------------------
SID3             .EQ  $0000
SID4             .EQ  $0001
SID5             .EQ  $0002
SID6             .EQ  $0003
SID7             .EQ  $0004
SID8             .EQ  $0005
SID9             .EQ  $0006
SID10            .EQ  $0007


;----- TXB0SIDL Bits -----------------------------------------------------
EXIDE            .EQ  $0003
SRR              .EQ  $0004

EID16            .EQ  $0000
EID17            .EQ  $0001
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007


;----- TXB0EIDH Bits -----------------------------------------------------
EID8             .EQ  $0000
EID9             .EQ  $0001
EID10            .EQ  $0002
EID11            .EQ  $0003
EID12            .EQ  $0004
EID13            .EQ  $0005
EID14            .EQ  $0006
EID15            .EQ  $0007


;----- TXB0EIDL Bits -----------------------------------------------------
EID0             .EQ  $0000
EID1             .EQ  $0001
EID2             .EQ  $0002
EID3             .EQ  $0003
EID4             .EQ  $0004
EID5             .EQ  $0005
EID6             .EQ  $0006
EID7             .EQ  $0007


;----- TXB0DLC Bits -----------------------------------------------------
TXRTR            .EQ  $0006

DLC0             .EQ  $0000
DLC1             .EQ  $0001
DLC2             .EQ  $0002
DLC3             .EQ  $0003


;----- TXB0D0 Bits -----------------------------------------------------
TXB0D00          .EQ  $0000
TXB0D01          .EQ  $0001
TXB0D02          .EQ  $0002
TXB0D03          .EQ  $0003
TXB0D04          .EQ  $0004
TXB0D05          .EQ  $0005
TXB0D06          .EQ  $0006
TXB0D07          .EQ  $0007


;----- TXB0D1 Bits -----------------------------------------------------
TXB0D10          .EQ  $0000
TXB0D11          .EQ  $0001
TXB0D12          .EQ  $0002
TXB0D13          .EQ  $0003
TXB0D14          .EQ  $0004
TXB0D15          .EQ  $0005
TXB0D16          .EQ  $0006
TXB0D17          .EQ  $0007


;----- TXB0D2 Bits -----------------------------------------------------
TXB0D20          .EQ  $0000
TXB0D21          .EQ  $0001
TXB0D22          .EQ  $0002
TXB0D23          .EQ  $0003
TXB0D24          .EQ  $0004
TXB0D25          .EQ  $0005
TXB0D26          .EQ  $0006
TXB0D27          .EQ  $0007


;----- TXB0D3 Bits -----------------------------------------------------
TXB0D30          .EQ  $0000
TXB0D31          .EQ  $0001
TXB0D32          .EQ  $0002
TXB0D33          .EQ  $0003
TXB0D34          .EQ  $0004
TXB0D35          .EQ  $0005
TXB0D36          .EQ  $0006
TXB0D37          .EQ  $0007


;----- TXB0D4 Bits -----------------------------------------------------
TXB0D40          .EQ  $0000
TXB0D41          .EQ  $0001
TXB0D42          .EQ  $0002
TXB0D43          .EQ  $0003
TXB0D44          .EQ  $0004
TXB0D45          .EQ  $0005
TXB0D46          .EQ  $0006
TXB0D47          .EQ  $0007


;----- TXB0D5 Bits -----------------------------------------------------
TXB0D50          .EQ  $0000
TXB0D51          .EQ  $0001
TXB0D52          .EQ  $0002
TXB0D53          .EQ  $0003
TXB0D54          .EQ  $0004
TXB0D55          .EQ  $0005
TXB0D56          .EQ  $0006
TXB0D57          .EQ  $0007


;----- TXB0D6 Bits -----------------------------------------------------
TXB0D60          .EQ  $0000
TXB0D61          .EQ  $0001
TXB0D62          .EQ  $0002
TXB0D63          .EQ  $0003
TXB0D64          .EQ  $0004
TXB0D65          .EQ  $0005
TXB0D66          .EQ  $0006
TXB0D67          .EQ  $0007


;----- TXB0D7 Bits -----------------------------------------------------
TXB0D70          .EQ  $0000
TXB0D71          .EQ  $0001
TXB0D72          .EQ  $0002
TXB0D73          .EQ  $0003
TXB0D74          .EQ  $0004
TXB0D75          .EQ  $0005
TXB0D76          .EQ  $0006
TXB0D77          .EQ  $0007


;----- CANSTAT_RO1 Bits -----------------------------------------------------
EICODE0          .EQ  $0000
EICODE1_ICODE0   .EQ  $0001
EICODE2_ICODE1   .EQ  $0002
EICODE3_ICODE2   .EQ  $0003
EICODE4          .EQ  $0004

EICODE1          .EQ  $0001
EICODE2          .EQ  $0002
EICODE3          .EQ  $0003
OPMODE0          .EQ  $0005
OPMODE1          .EQ  $0006
OPMODE2          .EQ  $0007

ICODE0           .EQ  $0001
ICODE1           .EQ  $0002
ICODE2           .EQ  $0003


;----- CANCON_RO1 Bits -----------------------------------------------------
FP0              .EQ  $0000
WIN0_FP1         .EQ  $0001
WIN1_FP2         .EQ  $0002
WIN2_FP3         .EQ  $0003
ABAT             .EQ  $0004

WIN0             .EQ  $0001
WIN1             .EQ  $0002
WIN2             .EQ  $0003

FP1              .EQ  $0001
FP2              .EQ  $0002
FP3              .EQ  $0003


;----- RXB1CON Bits -----------------------------------------------------
FILHIT0          .EQ  $0000
FILHIT1          .EQ  $0001
FILHIT2          .EQ  $0002
RXRTRRO_FILHIT3  .EQ  $0003
FILHIT4          .EQ  $0004
RXM0_RTRRO       .EQ  $0005
RXM1             .EQ  $0006
RXFUL            .EQ  $0007

RXRTRRO_RXB1CON  .EQ  $0003
RXM0             .EQ  $0005

FILHIT3          .EQ  $0003
RTRRO            .EQ  $0005


;----- RXB1SIDH Bits -----------------------------------------------------
SID3             .EQ  $0000
SID4             .EQ  $0001
SID5             .EQ  $0002
SID6             .EQ  $0003
SID7             .EQ  $0004
SID8             .EQ  $0005
SID9             .EQ  $0006
SID10            .EQ  $0007


;----- RXB1SIDL Bits -----------------------------------------------------
EXID             .EQ  $0003
SRR              .EQ  $0004

EDI16            .EQ  $0000
EDI17            .EQ  $0001
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007


;----- RXB1EIDH Bits -----------------------------------------------------
EID8             .EQ  $0000
EID9             .EQ  $0001
EID10            .EQ  $0002
EID11            .EQ  $0003
EID12            .EQ  $0004
EID13            .EQ  $0005
EID14            .EQ  $0006
EID15            .EQ  $0007


;----- RXB1EIDL Bits -----------------------------------------------------
EID0             .EQ  $0000
EID1             .EQ  $0001
EID2             .EQ  $0002
EID3             .EQ  $0003
EID4             .EQ  $0004
EID5             .EQ  $0005
EID6             .EQ  $0006
EID7             .EQ  $0007


;----- RXB1DLC Bits -----------------------------------------------------
RXRTR            .EQ  $0006

DLC0             .EQ  $0000
DLC1             .EQ  $0001
DLC2             .EQ  $0002
DLC3             .EQ  $0003
RB0_RXB1DLC      .EQ  $0004
RB1_RXB1DLC      .EQ  $0005


;----- RXB1D0 Bits -----------------------------------------------------
RXB1D00          .EQ  $0000
RXB1D01          .EQ  $0001
RXB1D02          .EQ  $0002
RXB1D03          .EQ  $0003
RXB1D04          .EQ  $0004
RXB1D05          .EQ  $0005
RXB1D06          .EQ  $0006
RXB1D07          .EQ  $0007


;----- RXB1D1 Bits -----------------------------------------------------
RXB1D10          .EQ  $0000
RXB1D11          .EQ  $0001
RXB1D12          .EQ  $0002
RXB1D13          .EQ  $0003
RXB1D14          .EQ  $0004
RXB1D15          .EQ  $0005
RXB1D16          .EQ  $0006
RXB1D17          .EQ  $0007


;----- RXB1D2 Bits -----------------------------------------------------
RXB1D20          .EQ  $0000
RXB1D21          .EQ  $0001
RXB1D22          .EQ  $0002
RXB1D23          .EQ  $0003
RXB1D24          .EQ  $0004
RXB1D25          .EQ  $0005
RXB1D26          .EQ  $0006
RXB1D27          .EQ  $0007


;----- RXB1D3 Bits -----------------------------------------------------
RXB1D30          .EQ  $0000
RXB1D31          .EQ  $0001
RXB1D32          .EQ  $0002
RXB1D33          .EQ  $0003
RXB1D34          .EQ  $0004
RXB1D35          .EQ  $0005
RXB1D36          .EQ  $0006
RXB1D37          .EQ  $0007


;----- RXB1D4 Bits -----------------------------------------------------
RXB1D40          .EQ  $0000
RXB1D41          .EQ  $0001
RXB1D42          .EQ  $0002
RXB1D43          .EQ  $0003
RXB1D44          .EQ  $0004
RXB1D45          .EQ  $0005
RXB1D46          .EQ  $0006
RXB1D47          .EQ  $0007


;----- RXB1D5 Bits -----------------------------------------------------
RXB1D50          .EQ  $0000
RXB1D51          .EQ  $0001
RXB1D52          .EQ  $0002
RXB1D53          .EQ  $0003
RXB1D54          .EQ  $0004
RXB1D55          .EQ  $0005
RXB1D56          .EQ  $0006
RXB1D57          .EQ  $0007


;----- RXB1D6 Bits -----------------------------------------------------
RXB1D60          .EQ  $0000
RXB1D61          .EQ  $0001
RXB1D62          .EQ  $0002
RXB1D63          .EQ  $0003
RXB1D64          .EQ  $0004
RXB1D65          .EQ  $0005
RXB1D66          .EQ  $0006
RXB1D67          .EQ  $0007


;----- RXB1D7 Bits -----------------------------------------------------
RXB1D70          .EQ  $0000
RXB1D71          .EQ  $0001
RXB1D72          .EQ  $0002
RXB1D73          .EQ  $0003
RXB1D74          .EQ  $0004
RXB1D75          .EQ  $0005
RXB1D76          .EQ  $0006
RXB1D77          .EQ  $0007


;----- CANSTAT_RO0 Bits -----------------------------------------------------
EICODE0          .EQ  $0000
EICODE1_ICODE0   .EQ  $0001
EICODE2_ICODE1   .EQ  $0002
EICODE3_ICODE2   .EQ  $0003
EICODE4          .EQ  $0004

EICODE1          .EQ  $0001
EICODE2          .EQ  $0002
EICODE3          .EQ  $0003
OPMODE0          .EQ  $0005
OPMODE1          .EQ  $0006
OPMODE2          .EQ  $0007

ICODE0           .EQ  $0001
ICODE1           .EQ  $0002
ICODE2           .EQ  $0003


;----- CANCON_RO0 Bits -----------------------------------------------------
FP0              .EQ  $0000
WIN0_FP1         .EQ  $0001
WIN1_FP2         .EQ  $0002
WIN2_FP3         .EQ  $0003
ABAT             .EQ  $0004

WIN0             .EQ  $0001
WIN1             .EQ  $0002
WIN2             .EQ  $0003

FP1              .EQ  $0001
FP2              .EQ  $0002
FP3              .EQ  $0003


;----- PSPCON Bits -----------------------------------------------------
PSPMODE          .EQ  $0004
IBOV             .EQ  $0005
OBF              .EQ  $0006
IBF              .EQ  $0007


;----- CCP5CON Bits -----------------------------------------------------
CCP5M0           .EQ  $0000
CCP5M1           .EQ  $0001
CCP5M2           .EQ  $0002
CCP5M3           .EQ  $0003
DC5B0            .EQ  $0004
DC5B1            .EQ  $0005

CCP5Y            .EQ  $0004
CCP5X            .EQ  $0005


;----- CCP4CON Bits -----------------------------------------------------
CCP4M0           .EQ  $0000
CCP4M1           .EQ  $0001
CCP4M2           .EQ  $0002
CCP4M3           .EQ  $0003
DC4B0            .EQ  $0004
DC4B1            .EQ  $0005

CCP4Y            .EQ  $0004
CCP4X            .EQ  $0005


;----- CCP3CON Bits -----------------------------------------------------
CCP3M0           .EQ  $0000
CCP3M1           .EQ  $0001
CCP3M2           .EQ  $0002
CCP3M3           .EQ  $0003
DC3B0            .EQ  $0004
DC3B1            .EQ  $0005

CCP3Y            .EQ  $0004
CCP3X            .EQ  $0005


;----- CCP2CON Bits -----------------------------------------------------
CCP2M0           .EQ  $0000
CCP2M1           .EQ  $0001
CCP2M2           .EQ  $0002
CCP2M3           .EQ  $0003
DC2B0            .EQ  $0004
DC2B1            .EQ  $0005

CCP2Y            .EQ  $0004
CCP2X            .EQ  $0005


;----- ECCP2CON Bits -----------------------------------------------------
CCP2M0           .EQ  $0000
CCP2M1           .EQ  $0001
CCP2M2           .EQ  $0002
CCP2M3           .EQ  $0003
DC2B0            .EQ  $0004
DC2B1            .EQ  $0005

CCP2Y            .EQ  $0004
CCP2X            .EQ  $0005


;----- CTMUICON Bits -----------------------------------------------------
IRNG0            .EQ  $0000
IRNG1            .EQ  $0001
ITRIM0           .EQ  $0002
ITRIM1           .EQ  $0003
ITRIM2           .EQ  $0004
ITRIM3           .EQ  $0005
ITRIM4           .EQ  $0006
ITRIM5           .EQ  $0007


;----- CTMUCONL Bits -----------------------------------------------------
EDG1STAT         .EQ  $0000
EDG2STAT         .EQ  $0001
EDG1POL          .EQ  $0004
EDG2POL          .EQ  $0007

EDG1SEL0         .EQ  $0002
EDG1SEL1         .EQ  $0003
EDG2SEL0         .EQ  $0005
EDG2SEL1         .EQ  $0006


;----- CTMUCONH Bits -----------------------------------------------------
CTTRIG           .EQ  $0000
IDISSEN          .EQ  $0001
EDGSEQEN         .EQ  $0002
EDGEN            .EQ  $0003
TGEN             .EQ  $0004
CTMUSIDL         .EQ  $0005
CTMUEN           .EQ  $0007


;----- PADCFG1 Bits -----------------------------------------------------
CTMUDS           .EQ  $0000
REPU             .EQ  $0006
RDPU             .EQ  $0007


;----- PMD2 Bits -----------------------------------------------------
CMP1MD           .EQ  $0000
CMP2MD           .EQ  $0001
ECANMD           .EQ  $0002


;----- PMD1 Bits -----------------------------------------------------
TMR0MD           .EQ  $0000
TMR1MD           .EQ  $0001
TMR2MD           .EQ  $0002
TMR3MD           .EQ  $0003
TMR4MD           .EQ  $0004
ADCMD            .EQ  $0005
CTMUMD           .EQ  $0006
PSPMD            .EQ  $0007


;----- PMD0 Bits -----------------------------------------------------
SSPMD            .EQ  $0000
UART1MD          .EQ  $0001
UART2MD          .EQ  $0002
CCP1MD           .EQ  $0003
CCP2MD           .EQ  $0004
CCP3MD           .EQ  $0005
CCP4MD           .EQ  $0006
CCP5MD           .EQ  $0007


;----- IOCB Bits -----------------------------------------------------
IOCB4            .EQ  $0004
IOCB5            .EQ  $0005
IOCB6            .EQ  $0006
IOCB7            .EQ  $0007


;----- WPUB Bits -----------------------------------------------------
WPUB0            .EQ  $0000
WPUB1            .EQ  $0001
WPUB2            .EQ  $0002
WPUB3            .EQ  $0003
WPUB4            .EQ  $0004
WPUB5            .EQ  $0005
WPUB6            .EQ  $0006
WPUB7            .EQ  $0007


;----- ANCON1 Bits -----------------------------------------------------
ANSEL8           .EQ  $0000
ANSEL9           .EQ  $0001
ANSEL10          .EQ  $0002
ANSEL11          .EQ  $0003
ANSEL12          .EQ  $0004
ANSEL13          .EQ  $0005
ANSEL14          .EQ  $0006


;----- ANCON0 Bits -----------------------------------------------------
ANSEL0           .EQ  $0000
ANSEL1           .EQ  $0001
ANSEL2           .EQ  $0002
ANSEL3           .EQ  $0003
ANSEL4           .EQ  $0004
ANSEL5           .EQ  $0005
ANSEL6           .EQ  $0006
ANSEL7           .EQ  $0007


;----- CM2CON Bits -----------------------------------------------------
CREF             .EQ  $0002
CPOL             .EQ  $0005
COE              .EQ  $0006
CON              .EQ  $0007

CCH0             .EQ  $0000
CCH1             .EQ  $0001
EVPOL0           .EQ  $0003
EVPOL1           .EQ  $0004


;----- CM2CON1 Bits -----------------------------------------------------
CREF             .EQ  $0002
CPOL             .EQ  $0005
COE              .EQ  $0006
CON              .EQ  $0007

CCH0             .EQ  $0000
CCH1             .EQ  $0001
EVPOL0           .EQ  $0003
EVPOL1           .EQ  $0004


;----- CM1CON Bits -----------------------------------------------------
CREF             .EQ  $0002
CPOL             .EQ  $0005
COE              .EQ  $0006
CON              .EQ  $0007

CCH0             .EQ  $0000
CCH1             .EQ  $0001
EVPOL0           .EQ  $0003
EVPOL1           .EQ  $0004


;----- CM1CON1 Bits -----------------------------------------------------
CREF             .EQ  $0002
CPOL             .EQ  $0005
COE              .EQ  $0006
CON              .EQ  $0007

CCH0             .EQ  $0000
CCH1             .EQ  $0001
EVPOL0           .EQ  $0003
EVPOL1           .EQ  $0004


;----- RXB0CON Bits -----------------------------------------------------
FILHIT0          .EQ  $0000
JTOFF_FILHIT1    .EQ  $0001
RB0DBEN_FILHIT2  .EQ  $0002
RXRTRRO_FILHIT3  .EQ  $0003
FILHIT4          .EQ  $0004
RXM0_RTRRO       .EQ  $0005
RXM1             .EQ  $0006
RXFUL            .EQ  $0007

JTOFF            .EQ  $0001
RB0DBEN          .EQ  $0002
RXRTRRO_RXB0CON  .EQ  $0003
RTRRO            .EQ  $0005

FILHIT1          .EQ  $0001
FILHIT2          .EQ  $0002
FILHIT3          .EQ  $0003
RXM0             .EQ  $0005


;----- RXB0SIDH Bits -----------------------------------------------------
SID3             .EQ  $0000
SID4             .EQ  $0001
SID5             .EQ  $0002
SID6             .EQ  $0003
SID7             .EQ  $0004
SID8             .EQ  $0005
SID9             .EQ  $0006
SID10            .EQ  $0007


;----- RXB0SIDL Bits -----------------------------------------------------
EXID             .EQ  $0003
SRR              .EQ  $0004

EID16            .EQ  $0000
EID17            .EQ  $0001
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007


;----- RXB0EIDH Bits -----------------------------------------------------
EID8             .EQ  $0000
EID9             .EQ  $0001
EID10            .EQ  $0002
EID11            .EQ  $0003
EID12            .EQ  $0004
EID13            .EQ  $0005
EID14            .EQ  $0006
EID15            .EQ  $0007


;----- RXB0EIDL Bits -----------------------------------------------------
EID0             .EQ  $0000
EID1             .EQ  $0001
EID2             .EQ  $0002
EID3             .EQ  $0003
EID4             .EQ  $0004
EID5             .EQ  $0005
EID6             .EQ  $0006
EID7             .EQ  $0007


;----- RXB0DLC Bits -----------------------------------------------------
RXRTR            .EQ  $0006

DLC0             .EQ  $0000
DLC1             .EQ  $0001
DLC2             .EQ  $0002
DLC3             .EQ  $0003
RB0_RXB0DLC      .EQ  $0004
RB1_RXB0DLC      .EQ  $0005


;----- RXB0D0 Bits -----------------------------------------------------
RXB0D00          .EQ  $0000
RXB0D01          .EQ  $0001
RXB0D02          .EQ  $0002
RXB0D03          .EQ  $0003
RXB0D04          .EQ  $0004
RXB0D05          .EQ  $0005
RXB0D06          .EQ  $0006
RXB0D07          .EQ  $0007


;----- RXB0D1 Bits -----------------------------------------------------
RXB0D10          .EQ  $0000
RXB0D11          .EQ  $0001
RXB0D12          .EQ  $0002
RXB0D13          .EQ  $0003
RXB0D14          .EQ  $0004
RXB0D15          .EQ  $0005
RXB0D16          .EQ  $0006
RXB0D17          .EQ  $0007


;----- RXB0D2 Bits -----------------------------------------------------
RXB0D20          .EQ  $0000
RXB0D21          .EQ  $0001
RXB0D22          .EQ  $0002
RXB0D23          .EQ  $0003
RXB0D24          .EQ  $0004
RXB0D25          .EQ  $0005
RXB0D26          .EQ  $0006
RXB0D27          .EQ  $0007


;----- RXB0D3 Bits -----------------------------------------------------
RXB0D30          .EQ  $0000
RXB0D31          .EQ  $0001
RXB0D32          .EQ  $0002
RXB0D33          .EQ  $0003
RXB0D34          .EQ  $0004
RXB0D35          .EQ  $0005
RXB0D36          .EQ  $0006
RXB0D37          .EQ  $0007


;----- RXB0D4 Bits -----------------------------------------------------
RXB0D40          .EQ  $0000
RXB0D41          .EQ  $0001
RXB0D42          .EQ  $0002
RXB0D43          .EQ  $0003
RXB0D44          .EQ  $0004
RXB0D45          .EQ  $0005
RXB0D46          .EQ  $0006
RXB0D47          .EQ  $0007


;----- RXB0D5 Bits -----------------------------------------------------
RXB0D50          .EQ  $0000
RXB0D51          .EQ  $0001
RXB0D52          .EQ  $0002
RXB0D53          .EQ  $0003
RXB0D54          .EQ  $0004
RXB0D55          .EQ  $0005
RXB0D56          .EQ  $0006
RXB0D57          .EQ  $0007


;----- RXB0D6 Bits -----------------------------------------------------
RXB0D60          .EQ  $0000
RXB0D61          .EQ  $0001
RXB0D62          .EQ  $0002
RXB0D63          .EQ  $0003
RXB0D64          .EQ  $0004
RXB0D65          .EQ  $0005
RXB0D66          .EQ  $0006
RXB0D67          .EQ  $0007


;----- RXB0D7 Bits -----------------------------------------------------
RXB0D70          .EQ  $0000
RXB0D71          .EQ  $0001
RXB0D72          .EQ  $0002
RXB0D73          .EQ  $0003
RXB0D74          .EQ  $0004
RXB0D75          .EQ  $0005
RXB0D76          .EQ  $0006
RXB0D77          .EQ  $0007


;----- CANSTAT Bits -----------------------------------------------------
EICODE0          .EQ  $0000
EICODE1_ICODE0   .EQ  $0001
EICODE2_ICODE1   .EQ  $0002
EICODE3_ICODE2   .EQ  $0003
EICODE4          .EQ  $0004

EICODE1          .EQ  $0001
EICODE2          .EQ  $0002
EICODE3          .EQ  $0003
OPMODE0          .EQ  $0005
OPMODE1          .EQ  $0006
OPMODE2          .EQ  $0007

ICODE0           .EQ  $0001
ICODE1           .EQ  $0002
ICODE2           .EQ  $0003


;----- CANCON Bits -----------------------------------------------------
FP0              .EQ  $0000
WIN0_FP1         .EQ  $0001
WIN1_FP2         .EQ  $0002
WIN2_FP3         .EQ  $0003
ABAT             .EQ  $0004

WIN0             .EQ  $0001
WIN1             .EQ  $0002
WIN2             .EQ  $0003

FP1              .EQ  $0001
FP2              .EQ  $0002
FP3              .EQ  $0003


;----- CIOCON Bits -----------------------------------------------------
CLKSEL           .EQ  $0000
CANCAP           .EQ  $0004
ENDRHI           .EQ  $0005
TX2EN            .EQ  $0006
TX2SRC           .EQ  $0007


;----- COMSTAT Bits -----------------------------------------------------
EWARN            .EQ  $0000
RXWARN           .EQ  $0001
TXWARN           .EQ  $0002
RXBP             .EQ  $0003
TXBP             .EQ  $0004
TXBO             .EQ  $0005
RXB1OVFL         .EQ  $0006
RXB0OVFL         .EQ  $0007

NOT_FIFOEMPTY    .EQ  $0007


;----- ECANCON Bits -----------------------------------------------------
FIFOWM           .EQ  $0005

EWIN0            .EQ  $0000
EWIN1            .EQ  $0001
EWIN2            .EQ  $0002
EWIN3            .EQ  $0003
EWIN4            .EQ  $0004
MDSEL0           .EQ  $0006
MDSEL1           .EQ  $0007


;----- PIE5 Bits -----------------------------------------------------
RXB0IE           .EQ  $0000
RXB1IE           .EQ  $0001
TXB0IE           .EQ  $0002
TXB1IE           .EQ  $0003
TXB2IE           .EQ  $0004
ERRIE            .EQ  $0005
WAKIE            .EQ  $0006
IRXIE            .EQ  $0007

FIFOWMIE         .EQ  $0000
RXBnIE           .EQ  $0001
TXBnIE           .EQ  $0004


;----- PIR5 Bits -----------------------------------------------------
RXB0IF           .EQ  $0000
RXB1IF           .EQ  $0001
TXB0IF           .EQ  $0002
TXB1IF           .EQ  $0003
TXB2IF           .EQ  $0004
ERRIF            .EQ  $0005
WAKIF            .EQ  $0006
IRXIF            .EQ  $0007

FIFOWMIF         .EQ  $0000
RXBnIF           .EQ  $0001
TXBnIF           .EQ  $0004


;----- IPR5 Bits -----------------------------------------------------
RXB0IP           .EQ  $0000
RXB1IP           .EQ  $0001
TXB0IP           .EQ  $0002
TXB1IP           .EQ  $0003
TXB2IP           .EQ  $0004
ERRIP            .EQ  $0005
WAKIP            .EQ  $0006
IRXIP            .EQ  $0007

FIFOWMIP         .EQ  $0000
RXBnIP           .EQ  $0001
TXBnIP           .EQ  $0004


;----- EECON1 Bits -----------------------------------------------------
RD               .EQ  $0000
WR               .EQ  $0001
WREN             .EQ  $0002
WRERR            .EQ  $0003
FREE             .EQ  $0004
CFGS             .EQ  $0006
EEPGD            .EQ  $0007


;----- PORTA Bits -----------------------------------------------------
RA0              .EQ  $0000
RA1              .EQ  $0001
RA2              .EQ  $0002
RA3              .EQ  $0003
RA5              .EQ  $0005
RA6              .EQ  $0006
RA7              .EQ  $0007


;----- PORTB Bits -----------------------------------------------------
RB0_PORTB        .EQ  $0000
RB1_PORTB        .EQ  $0001
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


;----- PORTD Bits -----------------------------------------------------
RD0              .EQ  $0000
RD1              .EQ  $0001
RD2              .EQ  $0002
RD3              .EQ  $0003
RD4              .EQ  $0004
RD5              .EQ  $0005
RD6              .EQ  $0006
RD7              .EQ  $0007


;----- PORTE Bits -----------------------------------------------------
RE0              .EQ  $0000
RE1              .EQ  $0001
RE2              .EQ  $0002
RE3              .EQ  $0003


;----- T4CON Bits -----------------------------------------------------
TMR4ON           .EQ  $0002

T4CKPS0          .EQ  $0000
T4CKPS1          .EQ  $0001
T4OUTPS0         .EQ  $0003
T4OUTPS1         .EQ  $0004
T4OUTPS2         .EQ  $0005
T4OUTPS3         .EQ  $0006


;----- LATA Bits -----------------------------------------------------
LATA0            .EQ  $0000
LATA1            .EQ  $0001
LATA2            .EQ  $0002
LATA3            .EQ  $0003
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


;----- LATD Bits -----------------------------------------------------
LATD0            .EQ  $0000
LATD1            .EQ  $0001
LATD2            .EQ  $0002
LATD3            .EQ  $0003
LATD4            .EQ  $0004
LATD5            .EQ  $0005
LATD6            .EQ  $0006
LATD7            .EQ  $0007


;----- LATE Bits -----------------------------------------------------
LATE0            .EQ  $0000
LATE1            .EQ  $0001
LATE2            .EQ  $0002


;----- SLRCON Bits -----------------------------------------------------
SLRA             .EQ  $0000
SLRB             .EQ  $0001
SLRC             .EQ  $0002
SLRD             .EQ  $0003
SLRE             .EQ  $0004


;----- ODCON Bits -----------------------------------------------------
U1OD             .EQ  $0000
U2OD             .EQ  $0001
CCP1OD           .EQ  $0002
CCP2OD           .EQ  $0003
CCP3OD           .EQ  $0004
CCP4OD           .EQ  $0005
CCP5OD           .EQ  $0006
SSPOD            .EQ  $0007


;----- TRISA Bits -----------------------------------------------------
TRISA0           .EQ  $0000
TRISA1           .EQ  $0001
TRISA2           .EQ  $0002
TRISA3           .EQ  $0003
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


;----- TRISD Bits -----------------------------------------------------
TRISD0           .EQ  $0000
TRISD1           .EQ  $0001
TRISD2           .EQ  $0002
TRISD3           .EQ  $0003
TRISD4           .EQ  $0004
TRISD5           .EQ  $0005
TRISD6           .EQ  $0006
TRISD7           .EQ  $0007


;----- TRISE Bits -----------------------------------------------------
TRISE0           .EQ  $0000
TRISE1           .EQ  $0001
TRISE2           .EQ  $0002


;----- CCPTMRS Bits -----------------------------------------------------
C1TSEL           .EQ  $0000
C2TSEL           .EQ  $0001
C3TSEL           .EQ  $0002
C4TSEL           .EQ  $0003
C5TSEL           .EQ  $0004


;----- REFOCON Bits -----------------------------------------------------
ROSEL            .EQ  $0004
ROSSLP           .EQ  $0005
ROON             .EQ  $0007

RODIV0           .EQ  $0000
RODIV1           .EQ  $0001
RODIV2           .EQ  $0002
RODIV3           .EQ  $0003


;----- OSCTUNE Bits -----------------------------------------------------
PLLEN            .EQ  $0006
INTSRC           .EQ  $0007

TUN0             .EQ  $0000
TUN1             .EQ  $0001
TUN2             .EQ  $0002
TUN3             .EQ  $0003
TUN4             .EQ  $0004
TUN5             .EQ  $0005


;----- PSTR1CON Bits -----------------------------------------------------
STRA             .EQ  $0000
STRB             .EQ  $0001
STRC             .EQ  $0002
STRD             .EQ  $0003
STRSYNC          .EQ  $0004

CMPL0            .EQ  $0006
CMPL1            .EQ  $0007


;----- PIE1 Bits -----------------------------------------------------
TMR1IE           .EQ  $0000
TMR2IE           .EQ  $0001
TMR1GIE          .EQ  $0002
SSPIE            .EQ  $0003
TX1IE            .EQ  $0004
RC1IE            .EQ  $0005
ADIE             .EQ  $0006
PSPIE            .EQ  $0007

TXIE             .EQ  $0004
RCIE             .EQ  $0005


;----- PIR1 Bits -----------------------------------------------------
TMR1IF           .EQ  $0000
TMR2IF           .EQ  $0001
TMR1GIF          .EQ  $0002
SSPIF            .EQ  $0003
TX1IF            .EQ  $0004
RC1IF            .EQ  $0005
ADIF             .EQ  $0006
PSPIF            .EQ  $0007

TXIF             .EQ  $0004
RCIF             .EQ  $0005


;----- IPR1 Bits -----------------------------------------------------
TMR1IP           .EQ  $0000
TMR2IP           .EQ  $0001
TMR1GIP          .EQ  $0002
SSPIP            .EQ  $0003
TX1IP            .EQ  $0004
RC1IP            .EQ  $0005
ADIP             .EQ  $0006
PSPIP            .EQ  $0007

TXIP             .EQ  $0004
RCIP             .EQ  $0005


;----- PIE2 Bits -----------------------------------------------------
TMR3GIE          .EQ  $0000
TMR3IE           .EQ  $0001
HLVDIE           .EQ  $0002
BCLIE            .EQ  $0003
OSCFIE           .EQ  $0007

LVDIE            .EQ  $0002


;----- PIR2 Bits -----------------------------------------------------
TMR3GIF          .EQ  $0000
TMR3IF           .EQ  $0001
HLVDIF           .EQ  $0002
BCLIF            .EQ  $0003
OSCFIF           .EQ  $0007

LVDIF            .EQ  $0002


;----- IPR2 Bits -----------------------------------------------------
TMR3GIP          .EQ  $0000
TMR3IP           .EQ  $0001
HLVDIP           .EQ  $0002
BCLIP            .EQ  $0003
OSCFIP           .EQ  $0007

LVDIP            .EQ  $0002


;----- PIE3 Bits -----------------------------------------------------
CCP1IE           .EQ  $0001
CCP2IE           .EQ  $0002
CTMUIE           .EQ  $0003
TX2IE            .EQ  $0004
RC2IE            .EQ  $0005


;----- PIR3 Bits -----------------------------------------------------
CCP1IF           .EQ  $0001
CCP2IF           .EQ  $0002
CTMUIF           .EQ  $0003
TX2IF            .EQ  $0004
RC2IF            .EQ  $0005


;----- IPR3 Bits -----------------------------------------------------
CCP1IP           .EQ  $0001
CCP2IP           .EQ  $0002
CTMUIP           .EQ  $0003
TX2IP            .EQ  $0004
RC2IP            .EQ  $0005


;----- RCSTA2 Bits -----------------------------------------------------
RX9D             .EQ  $0000
OERR             .EQ  $0001
FERR             .EQ  $0002
ADDEN            .EQ  $0003
CREN             .EQ  $0004
SREN             .EQ  $0005
RX9              .EQ  $0006
SPEN             .EQ  $0007

RX9D2            .EQ  $0000
OERR2            .EQ  $0001
FERR2            .EQ  $0002
ADDEN2           .EQ  $0003
CREN2            .EQ  $0004
SREN2            .EQ  $0005
RX92             .EQ  $0006
SPEN2            .EQ  $0007


;----- BAUDCON1 Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
TXCKP            .EQ  $0004
RXDTP            .EQ  $0005
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007

RCMT             .EQ  $0006


;----- HLVDCON Bits -----------------------------------------------------
HLVDEN           .EQ  $0004
IRVST            .EQ  $0005
BGVST            .EQ  $0006
VDIRMAG          .EQ  $0007

HLVDL0           .EQ  $0000
HLVDL1           .EQ  $0001
HLVDL2           .EQ  $0002
HLVDL3           .EQ  $0003


;----- T1GCON Bits -----------------------------------------------------
T1GVAL           .EQ  $0002
T1GGO_NOT_T1DONE .EQ  $0003
T1GSPM           .EQ  $0004
T1GTM            .EQ  $0005
T1GPOL           .EQ  $0006
TMR1GE           .EQ  $0007

T1GSS0           .EQ  $0000
T1GSS1           .EQ  $0001
T1GGO            .EQ  $0003

NOT_T1DONE       .EQ  $0003


;----- RCSTA Bits -----------------------------------------------------
RX9D             .EQ  $0000
OERR             .EQ  $0001
FERR             .EQ  $0002
ADDEN            .EQ  $0003
CREN             .EQ  $0004
SREN             .EQ  $0005
RX9              .EQ  $0006
SPEN             .EQ  $0007

RCD8             .EQ  $0000
ADEN             .EQ  $0003
RC9              .EQ  $0006

NOT_RC8          .EQ  $0006

RC8_9            .EQ  $0006

RX9D1            .EQ  $0000
OERR1            .EQ  $0001
FERR1            .EQ  $0002
ADDEN1           .EQ  $0003
CREN1            .EQ  $0004
SREN1            .EQ  $0005
RX91             .EQ  $0006
SPEN1            .EQ  $0007


;----- RCSTA1 Bits -----------------------------------------------------
RX9D             .EQ  $0000
OERR             .EQ  $0001
FERR             .EQ  $0002
ADDEN            .EQ  $0003
CREN             .EQ  $0004
SREN             .EQ  $0005
RX9              .EQ  $0006
SPEN             .EQ  $0007

RCD8             .EQ  $0000
ADEN             .EQ  $0003
RC9              .EQ  $0006

NOT_RC8          .EQ  $0006

RC8_9            .EQ  $0006

RX9D1            .EQ  $0000
OERR1            .EQ  $0001
FERR1            .EQ  $0002
ADDEN1           .EQ  $0003
CREN1            .EQ  $0004
SREN1            .EQ  $0005
RX91             .EQ  $0006
SPEN1            .EQ  $0007


;----- TXSTA Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SENDB            .EQ  $0003
SYNC             .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007

TXD8             .EQ  $0000
TX8_9            .EQ  $0006

NOT_TX8          .EQ  $0006

TX9D1            .EQ  $0000
TRMT1            .EQ  $0001
BRGH1            .EQ  $0002
SENDB1           .EQ  $0003
SYNC1            .EQ  $0004
TXEN1            .EQ  $0005
TX91             .EQ  $0006
CSRC1            .EQ  $0007


;----- TXSTA1 Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SENDB            .EQ  $0003
SYNC             .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007

TXD8             .EQ  $0000
TX8_9            .EQ  $0006

NOT_TX8          .EQ  $0006

TX9D1            .EQ  $0000
TRMT1            .EQ  $0001
BRGH1            .EQ  $0002
SENDB1           .EQ  $0003
SYNC1            .EQ  $0004
TXEN1            .EQ  $0005
TX91             .EQ  $0006
CSRC1            .EQ  $0007


;----- T3GCON Bits -----------------------------------------------------
T3GVAL           .EQ  $0002
T3GGO_NOT_T3DONE .EQ  $0003
T3GSPM           .EQ  $0004
T3GTM            .EQ  $0005
T3GPOL           .EQ  $0006
TMR3GE           .EQ  $0007

T3GSS0           .EQ  $0000
T3GSS1           .EQ  $0001
T3GGO            .EQ  $0003

NOT_T3DONE       .EQ  $0003


;----- T3CON Bits -----------------------------------------------------
TMR3ON           .EQ  $0000
RD16             .EQ  $0001
NOT_T3SYNC       .EQ  $0002
SOSCEN           .EQ  $0003

T3CKPS0          .EQ  $0004
T3CKPS1          .EQ  $0005
TMR3CS0          .EQ  $0006
TMR3CS1          .EQ  $0007


;----- CMSTAT Bits -----------------------------------------------------
CMP1OUT          .EQ  $0006
CMP2OUT          .EQ  $0007


;----- CMSTATUS Bits -----------------------------------------------------
CMP1OUT          .EQ  $0006
CMP2OUT          .EQ  $0007


;----- CVRCON Bits -----------------------------------------------------
CVRSS            .EQ  $0005
CVROE            .EQ  $0006
CVREN            .EQ  $0007

CVR0             .EQ  $0000
CVR1             .EQ  $0001
CVR2             .EQ  $0002
CVR3             .EQ  $0003
CVR4             .EQ  $0004


;----- PIE4 Bits -----------------------------------------------------
CCP3IE           .EQ  $0000
CCP4IE           .EQ  $0001
CCP5IE           .EQ  $0002
CMP1IE           .EQ  $0004
CMP2IE           .EQ  $0005
EEIE             .EQ  $0006
TMR4IE           .EQ  $0007


;----- PIR4 Bits -----------------------------------------------------
CCP3IF           .EQ  $0000
CCP4IF           .EQ  $0001
CCP5IF           .EQ  $0002
CMP1IF           .EQ  $0004
CMP2IF           .EQ  $0005
EEIF             .EQ  $0006
TMR4IF           .EQ  $0007


;----- IPR4 Bits -----------------------------------------------------
CCP3IP           .EQ  $0000
CCP4IP           .EQ  $0001
CCP5IP           .EQ  $0002
CMP1IP           .EQ  $0004
CMP2IP           .EQ  $0005
EEIP             .EQ  $0006
TMR4IP           .EQ  $0007


;----- BAUDCON2 Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
TXCKP            .EQ  $0004
RXDTP            .EQ  $0005
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007

RCMT             .EQ  $0006


;----- TXSTA2 Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SENDB            .EQ  $0003
SYNC             .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007

TX9D2            .EQ  $0000
TRMT2            .EQ  $0001
BRGH2            .EQ  $0002
SENDB2           .EQ  $0003
SYNC2            .EQ  $0004
TXEN2            .EQ  $0005
TX92             .EQ  $0006
CSRC2            .EQ  $0007


;----- CCP1CON Bits -----------------------------------------------------
CCP1M0           .EQ  $0000
CCP1M1           .EQ  $0001
CCP1M2           .EQ  $0002
CCP1M3           .EQ  $0003
DC1B0            .EQ  $0004
DC1B1            .EQ  $0005
P1M0             .EQ  $0006
P1M1             .EQ  $0007

CCP1Y            .EQ  $0004
CCP1X            .EQ  $0005


;----- ECCP1CON Bits -----------------------------------------------------
CCP1M0           .EQ  $0000
CCP1M1           .EQ  $0001
CCP1M2           .EQ  $0002
CCP1M3           .EQ  $0003
DC1B0            .EQ  $0004
DC1B1            .EQ  $0005
P1M0             .EQ  $0006
P1M1             .EQ  $0007

CCP1Y            .EQ  $0004
CCP1X            .EQ  $0005


;----- ECCP1DEL Bits -----------------------------------------------------
P1RSEN           .EQ  $0007

P1DC0            .EQ  $0000
P1DC1            .EQ  $0001
P1DC2            .EQ  $0002
P1DC3            .EQ  $0003
P1DC4            .EQ  $0004
P1DC5            .EQ  $0005
P1DC6            .EQ  $0006


;----- PWM1CON Bits -----------------------------------------------------
P1RSEN           .EQ  $0007

P1DC0            .EQ  $0000
P1DC1            .EQ  $0001
P1DC2            .EQ  $0002
P1DC3            .EQ  $0003
P1DC4            .EQ  $0004
P1DC5            .EQ  $0005
P1DC6            .EQ  $0006


;----- ECCP1AS Bits -----------------------------------------------------
ECCP1ASE         .EQ  $0007

PSS1BD0          .EQ  $0000
PSS1BD1          .EQ  $0001
PSS1AC0          .EQ  $0002
PSS1AC1          .EQ  $0003
ECCP1AS0         .EQ  $0004
ECCP1AS1         .EQ  $0005
ECCP1AS2         .EQ  $0006


;----- ADCON2 Bits -----------------------------------------------------
ADFM             .EQ  $0007

ADCS0            .EQ  $0000
ADCS1            .EQ  $0001
ADCS2            .EQ  $0002
ACQT0            .EQ  $0003
ACQT1            .EQ  $0004
ACQT2            .EQ  $0005


;----- ADCON1 Bits -----------------------------------------------------
VNCFG            .EQ  $0003

CHSN0            .EQ  $0000
CHSN1            .EQ  $0001
CHSN2            .EQ  $0002
VCFG0            .EQ  $0004
VCFG1            .EQ  $0005
TRIGSEL0         .EQ  $0006
TRIGSEL1         .EQ  $0007


;----- ADCON0 Bits -----------------------------------------------------
ADON             .EQ  $0000
GO_NOT_DONE      .EQ  $0001

DONE             .EQ  $0001
CHS0             .EQ  $0002
CHS1             .EQ  $0003
CHS2             .EQ  $0004
CHS3             .EQ  $0005
CHS4             .EQ  $0006

GO               .EQ  $0001

NOT_DONE         .EQ  $0001


;----- SSPCON2 Bits -----------------------------------------------------
SEN              .EQ  $0000
RSEN             .EQ  $0001
PEN              .EQ  $0002
RCEN             .EQ  $0003
ACKEN            .EQ  $0004
ACKDT            .EQ  $0005
ACKSTAT          .EQ  $0006
GCEN             .EQ  $0007

ADMSK1           .EQ  $0001
ADMSK2           .EQ  $0002
ADMSK3           .EQ  $0003
ADMSK4           .EQ  $0004
ADMSK5           .EQ  $0005


;----- SSPCON1 Bits -----------------------------------------------------
CKP              .EQ  $0004
SSPEN            .EQ  $0005
SSPOV            .EQ  $0006
WCOL             .EQ  $0007

SSPM0            .EQ  $0000
SSPM1            .EQ  $0001
SSPM2            .EQ  $0002
SSPM3            .EQ  $0003


;----- SSPSTAT Bits -----------------------------------------------------
BF               .EQ  $0000
UA               .EQ  $0001
R_NOT_W          .EQ  $0002
S                .EQ  $0003
P                .EQ  $0004
D_NOT_A          .EQ  $0005
CKE              .EQ  $0006
SMP              .EQ  $0007

R_W              .EQ  $0002
D_A              .EQ  $0005

NOT_W            .EQ  $0002
NOT_A            .EQ  $0005

NOT_WRITE        .EQ  $0002
NOT_ADDRESS      .EQ  $0005

READ_WRITE       .EQ  $0002
DATA_ADDRESS     .EQ  $0005

I2C_READ         .EQ  $0002
I2C_START        .EQ  $0003
I2C_STOP         .EQ  $0004
I2C_DAT          .EQ  $0005


;----- SSPADD Bits -----------------------------------------------------
MSK0             .EQ  $0000
MSK1             .EQ  $0001
MSK2             .EQ  $0002
MSK3             .EQ  $0003
MSK4             .EQ  $0004
MSK5             .EQ  $0005
MSK6             .EQ  $0006
MSK7             .EQ  $0007


;----- T2CON Bits -----------------------------------------------------
TMR2ON           .EQ  $0002

T2CKPS0          .EQ  $0000
T2CKPS1          .EQ  $0001
T2OUTPS0         .EQ  $0003
T2OUTPS1         .EQ  $0004
T2OUTPS2         .EQ  $0005
T2OUTPS3         .EQ  $0006


;----- T1CON Bits -----------------------------------------------------
TMR1ON           .EQ  $0000
RD16             .EQ  $0001
NOT_T1SYNC       .EQ  $0002
SOSCEN           .EQ  $0003

T1CKPS0          .EQ  $0004
T1CKPS1          .EQ  $0005
TMR1CS0          .EQ  $0006
TMR1CS1          .EQ  $0007


;----- RCON Bits -----------------------------------------------------
NOT_BOR          .EQ  $0000
NOT_POR          .EQ  $0001
NOT_PD           .EQ  $0002
NOT_TO           .EQ  $0003
NOT_RI           .EQ  $0004
NOT_CM           .EQ  $0005
SBOREN           .EQ  $0006
IPEN             .EQ  $0007

BOR              .EQ  $0000
POR              .EQ  $0001
PD               .EQ  $0002
TO               .EQ  $0003
RI               .EQ  $0004
CM               .EQ  $0005


;----- WDTCON Bits -----------------------------------------------------
SWDTEN           .EQ  $0000
ULPSINK          .EQ  $0001
ULPEN            .EQ  $0002
SRETEN           .EQ  $0004
ULPLVL           .EQ  $0005
REGSLP           .EQ  $0007

SWDTE            .EQ  $0000


;----- OSCCON2 Bits -----------------------------------------------------
MFIOSEL          .EQ  $0000
MFIOFS           .EQ  $0001
SOSCGO           .EQ  $0003
SOSCDRV          .EQ  $0004
SOSCRUN          .EQ  $0006

LVDL0            .EQ  $0000
LVDL1            .EQ  $0001
LVDL2            .EQ  $0002
LVDL3            .EQ  $0003


;----- OSCCON Bits -----------------------------------------------------
HFIOFS           .EQ  $0002
OSTS             .EQ  $0003
IDLEN            .EQ  $0007

SCS0             .EQ  $0000
SCS1             .EQ  $0001
IRCF0            .EQ  $0004
IRCF1            .EQ  $0005
IRCF2            .EQ  $0006


;----- T0CON Bits -----------------------------------------------------
PSA              .EQ  $0003
T0SE             .EQ  $0004
T0CS             .EQ  $0005
T08BIT           .EQ  $0006
TMR0ON           .EQ  $0007

T0PS0            .EQ  $0000
T0PS1            .EQ  $0001
T0PS2            .EQ  $0002


;----- STATUS Bits -----------------------------------------------------
C                .EQ  $0000
DC               .EQ  $0001
Z                .EQ  $0002
OV               .EQ  $0003
N                .EQ  $0004


;----- INTCON3 Bits -----------------------------------------------------
INT1IF           .EQ  $0000
INT2IF           .EQ  $0001
INT3IF           .EQ  $0002
INT1IE           .EQ  $0003
INT2IE           .EQ  $0004
INT3IE           .EQ  $0005
INT1IP           .EQ  $0006
INT2IP           .EQ  $0007

INT1F            .EQ  $0000
INT2F            .EQ  $0001
INT3F            .EQ  $0002
INT1E            .EQ  $0003
INT2E            .EQ  $0004
INT3E            .EQ  $0005
INT1P            .EQ  $0006
INT2P            .EQ  $0007


;----- INTCON2 Bits -----------------------------------------------------
RBIP             .EQ  $0000
INT3IP           .EQ  $0001
TMR0IP           .EQ  $0002
INTEDG3          .EQ  $0003
INTEDG2          .EQ  $0004
INTEDG1          .EQ  $0005
INTEDG0          .EQ  $0006
NOT_RBPU         .EQ  $0007

INT3P            .EQ  $0001
T0IP             .EQ  $0002
RBPU             .EQ  $0007


;----- INTCON Bits -----------------------------------------------------
RBIF             .EQ  $0000
INT0IF           .EQ  $0001
TMR0IF           .EQ  $0002
RBIE             .EQ  $0003
INT0IE           .EQ  $0004
TMR0IE           .EQ  $0005
PEIE_GIEL        .EQ  $0006
GIE_GIEH         .EQ  $0007

INT0F            .EQ  $0001
T0IF             .EQ  $0002
INT0E            .EQ  $0004
T0IE             .EQ  $0005
PEIE             .EQ  $0006
GIE              .EQ  $0007

GIEL             .EQ  $0006
GIEH             .EQ  $0007


;----- INTCON1 Bits -----------------------------------------------------
RBIF             .EQ  $0000
INT0IF           .EQ  $0001
TMR0IF           .EQ  $0002
RBIE             .EQ  $0003
INT0IE           .EQ  $0004
TMR0IE           .EQ  $0005
PEIE_GIEL        .EQ  $0006
GIE_GIEH         .EQ  $0007

INT0F            .EQ  $0001
T0IF             .EQ  $0002
INT0E            .EQ  $0004
T0IE             .EQ  $0005
PEIE             .EQ  $0006
GIE              .EQ  $0007

GIEL             .EQ  $0006
GIEH             .EQ  $0007


;----- STKPTR Bits -----------------------------------------------------
STKUNF           .EQ  $0006
STKFUL           .EQ  $0007

SP0              .EQ  $0000
SP1              .EQ  $0001
SP2              .EQ  $0002
SP3              .EQ  $0003
SP4              .EQ  $0004
STKOVF           .EQ  $0007



;==========================================================================
;
;       RAM Definitions
;
;==========================================================================

_MAXRAM          .EQ  $0FFF

;==========================================================================
;
;   IMPORTANT: For the PIC18 devices, the __CONFIG directive has been
;              superseded by the CONFIG directive.  The following settings
;              are available for this device.
;
;   VREG Sleep Enable bit:
;     RETEN = ON           Ultra low-power regulator is Enabled (Controlled by SRETEN bit)
;     RETEN = OFF          Ultra low-power regulator is Disabled (Controlled by REGSLP bit)
;
;   LF-INTOSC Low-power Enable bit:
;     INTOSCSEL = LOW      LF-INTOSC in Low-power mode during Sleep
;     INTOSCSEL = HIGH     LF-INTOSC in High-power mode during Sleep
;
;   SOSC Power Selection and mode Configuration bits:
;     SOSCSEL = LOW        Low Power SOSC circuit selected
;     SOSCSEL = DIG        Digital (SCLKI) mode
;     SOSCSEL = HIGH       High Power SOSC circuit selected
;
;   Extended Instruction Set:
;     XINST = OFF          Disabled
;     XINST = ON           Enabled
;
;   Oscillator:
;     FOSC = LP            LP oscillator
;     FOSC = XT            XT oscillator
;     FOSC = HS2           HS oscillator (High power, 16 MHz - 25 MHz)
;     FOSC = HS1           HS oscillator (Medium power, 4 MHz - 16 MHz)
;     FOSC = EC3IO         EC oscillator, CLKOUT function on OSC2 (High power, 16 MHz - 64 MHz)
;     FOSC = EC3           EC oscillator (High power, 16 MHz - 64 MHz)
;     FOSC = RC            External RC oscillator, CLKOUT function on OSC2
;     FOSC = RCIO          External RC oscillator
;     FOSC = INTIO2        Internal RC oscillator
;     FOSC = INTIO1        Internal RC oscillator, CLKOUT function on OSC2
;     FOSC = EC2IO         EC oscillator, CLKOUT function on OSC2 (Medium power, 160 kHz - 16 MHz)
;     FOSC = EC2           EC oscillator (Medium power, 160 kHz - 16 MHz)
;     FOSC = EC1IO         EC oscillator, CLKOUT function on OSC2 (Low power, DC - 160 kHz)
;     FOSC = EC1           EC oscillator (Low power, DC - 160 kHz)
;
;   PLL x4 Enable bit:
;     PLLCFG = OFF         Disabled
;     PLLCFG = ON          Enabled
;
;   Fail-Safe Clock Monitor:
;     FCMEN = OFF          Disabled
;     FCMEN = ON           Enabled
;
;   Internal External Oscillator Switch Over Mode:
;     IESO = OFF           Disabled
;     IESO = ON            Enabled
;
;   Power Up Timer:
;     PWRTEN = ON          Enabled
;     PWRTEN = OFF         Disabled
;
;   Brown Out Detect:
;     BOREN = OFF          Disabled in hardware, SBOREN disabled
;     BOREN = ON           Controlled with SBOREN bit
;     BOREN = NOSLP        Enabled while active, disabled in SLEEP, SBOREN disabled
;     BOREN = SBORDIS      Enabled in hardware, SBOREN disabled
;
;   Brown-out Reset Voltage bits:
;     BORV = 0             3.0V
;     BORV = 1             2.7V
;     BORV = 2             2.0V
;     BORV = 3             1.8V
;
;   BORMV Power level:
;     BORPWR = LOW         BORMV set to low power level
;     BORPWR = MEDIUM      BORMV set to medium power level
;     BORPWR = HIGH        BORMV set to high power level
;     BORPWR = ZPBORMV     ZPBORMV instead of BORMV is selected
;
;   Watchdog Timer:
;     WDTEN = OFF          WDT disabled in hardware; SWDTEN bit disabled
;     WDTEN = NOSLP        WDT enabled only while device is active and disabled in Sleep mode; SWDTEN bit disabled
;     WDTEN = ON           WDT controlled by SWDTEN bit setting
;     WDTEN = SWDTDIS      WDT enabled in hardware; SWDTEN bit disabled
;
;   Watchdog Postscaler:
;     WDTPS = 1            1:1
;     WDTPS = 2            1:2
;     WDTPS = 4            1:4
;     WDTPS = 8            1:8
;     WDTPS = 16           1:16
;     WDTPS = 32           1:32
;     WDTPS = 64           1:64
;     WDTPS = 128          1:128
;     WDTPS = 256          1:256
;     WDTPS = 512          1:512
;     WDTPS = 1024         1:1024
;     WDTPS = 2048         1:2048
;     WDTPS = 4096         1:4096
;     WDTPS = 8192         1:8192
;     WDTPS = 16384        1:16384
;     WDTPS = 32768        1:32768
;     WDTPS = 65536        1:65536
;     WDTPS = 131072       1:131072
;     WDTPS = 262144       1:262144
;     WDTPS = 524288       1:524288
;     WDTPS = 1048576      1:1048576
;
;   ECAN Mux bit:
;     CANMX = PORTC        ECAN TX and RX pins are located on RC6 and RC7, respectively
;     CANMX = PORTB        ECAN TX and RX pins are located on RB2 and RB3, respectively
;
;   MSSP address masking:
;     MSSPMSK = MSK5       5 bit address masking mode
;     MSSPMSK = MSK7       7 Bit address masking mode
;
;   Master Clear Enable:
;     MCLRE = OFF          MCLR Disabled, RG5 Enabled
;     MCLRE = ON           MCLR Enabled, RE3 Disabled
;
;   Stack Overflow Reset:
;     STVREN = OFF         Disabled
;     STVREN = ON          Enabled
;
;   Boot Block Size:
;     BBSIZ = BB1K         1K word Boot Block size
;     BBSIZ = BB2K         2K word Boot Block size
;
;   Code Protect 00800-03FFF:
;     CP0 = ON             Enabled
;     CP0 = OFF            Disabled
;
;   Code Protect 04000-07FFF:
;     CP1 = ON             Enabled
;     CP1 = OFF            Disabled
;
;   Code Protect 08000-0BFFF:
;     CP2 = ON             Enabled
;     CP2 = OFF            Disabled
;
;   Code Protect 0C000-0FFFF:
;     CP3 = ON             Enabled
;     CP3 = OFF            Disabled
;
;   Code Protect Boot:
;     CPB = ON             Enabled
;     CPB = OFF            Disabled
;
;   Data EE Read Protect:
;     CPD = ON             Enabled
;     CPD = OFF            Disabled
;
;   Table Write Protect 00800-03FFF:
;     WRT0 = ON            Enabled
;     WRT0 = OFF           Disabled
;
;   Table Write Protect 04000-07FFF:
;     WRT1 = ON            Enabled
;     WRT1 = OFF           Disabled
;
;   Table Write Protect 08000-0BFFF:
;     WRT2 = ON            Enabled
;     WRT2 = OFF           Disabled
;
;   Table Write Protect 0C000-0FFFF:
;     WRT3 = ON            Enabled
;     WRT3 = OFF           Disabled
;
;   Config. Write Protect:
;     WRTC = ON            Enabled
;     WRTC = OFF           Disabled
;
;   Table Write Protect Boot:
;     WRTB = ON            Enabled
;     WRTB = OFF           Disabled
;
;   Data EE Write Protect:
;     WRTD = ON            Enabled
;     WRTD = OFF           Disabled
;
;   Table Read Protect 00800-03FFF:
;     EBTR0 = ON           Enabled
;     EBTR0 = OFF          Disabled
;
;   Table Read Protect 04000-07FFF:
;     EBTR1 = ON           Enabled
;     EBTR1 = OFF          Disabled
;
;   Table Read Protect 08000-0BFFF:
;     EBTR2 = ON           Enabled
;     EBTR2 = OFF          Disabled
;
;   Table Read Protect 0C000-0FFFF:
;     EBTR3 = ON           Enabled
;     EBTR3 = OFF          Disabled
;
;   Table Read Protect Boot:
;     EBTRB = ON           Enabled
;     EBTRB = OFF          Disabled
;
;==========================================================================
;==========================================================================
;
;       Configuration Bits
;
;   NAME            Address
;   CONFIG1L        300000h
;   CONFIG1H        300001h
;   CONFIG2L        300002h
;   CONFIG2H        300003h
;   CONFIG3H        300005h
;   CONFIG4L        300006h
;   CONFIG5L        300008h
;   CONFIG5H        300009h
;   CONFIG6L        30000Ah
;   CONFIG6H        30000Bh
;   CONFIG7L        30000Ch
;   CONFIG7H        30000Dh
;
;==========================================================================

; The following is an assignment of address values for all of the
; configuration registers for the purpose of table reads
_CONFIG1L       .EQ  $300000
_CONFIG1H       .EQ  $300001
_CONFIG2L       .EQ  $300002
_CONFIG2H       .EQ  $300003
_CONFIG3H       .EQ  $300005
_CONFIG4L       .EQ  $300006
_CONFIG5L       .EQ  $300008
_CONFIG5H       .EQ  $300009
_CONFIG6L       .EQ  $30000A
_CONFIG6H       .EQ  $30000B
_CONFIG7L       .EQ  $30000C
_CONFIG7H       .EQ  $30000D

;----- CONFIG1L Options --------------------------------------------------
_RETEN_ON_1L         .EQ  $FE  Ultra low-power regulator is Enabled (Controlled by SRETEN bit)
_RETEN_OFF_1L        .EQ  $FF  Ultra low-power regulator is Disabled (Controlled by REGSLP bit)

_INTOSCSEL_LOW_1L    .EQ  $FB  LF-INTOSC in Low-power mode during Sleep
_INTOSCSEL_HIGH_1L   .EQ  $FF  LF-INTOSC in High-power mode during Sleep

_SOSCSEL_LOW_1L      .EQ  $EF  Low Power SOSC circuit selected
_SOSCSEL_DIG_1L      .EQ  $F7  Digital (SCLKI) mode
_SOSCSEL_HIGH_1L     .EQ  $FF  High Power SOSC circuit selected

_XINST_OFF_1L        .EQ  $BF  Disabled
_XINST_ON_1L         .EQ  $FF  Enabled

;----- CONFIG1H Options --------------------------------------------------
_FOSC_LP_1H          .EQ  $F0  LP oscillator
_FOSC_XT_1H          .EQ  $F1  XT oscillator
_FOSC_HS2_1H         .EQ  $F2  HS oscillator (High power, 16 MHz - 25 MHz)
_FOSC_HS1_1H         .EQ  $F3  HS oscillator (Medium power, 4 MHz - 16 MHz)
_FOSC_EC3IO_1H       .EQ  $F4  EC oscillator, CLKOUT function on OSC2 (High power, 16 MHz - 64 MHz)
_FOSC_EC3_1H         .EQ  $F5  EC oscillator (High power, 16 MHz - 64 MHz)
_FOSC_RC_1H          .EQ  $F6  External RC oscillator, CLKOUT function on OSC2
_FOSC_RCIO_1H        .EQ  $F7  External RC oscillator
_FOSC_INTIO2_1H      .EQ  $F8  Internal RC oscillator
_FOSC_INTIO1_1H      .EQ  $F9  Internal RC oscillator, CLKOUT function on OSC2
_FOSC_EC2IO_1H       .EQ  $FA  EC oscillator, CLKOUT function on OSC2 (Medium power, 160 kHz - 16 MHz)
_FOSC_EC2_1H         .EQ  $FB  EC oscillator (Medium power, 160 kHz - 16 MHz)
_FOSC_EC1IO_1H       .EQ  $FC  EC oscillator, CLKOUT function on OSC2 (Low power, DC - 160 kHz)
_FOSC_EC1_1H         .EQ  $FD  EC oscillator (Low power, DC - 160 kHz)

_PLLCFG_OFF_1H       .EQ  $EF  Disabled
_PLLCFG_ON_1H        .EQ  $FF  Enabled

_FCMEN_OFF_1H        .EQ  $BF  Disabled
_FCMEN_ON_1H         .EQ  $FF  Enabled

_IESO_OFF_1H         .EQ  $7F  Disabled
_IESO_ON_1H          .EQ  $FF  Enabled

;----- CONFIG2L Options --------------------------------------------------
_PWRTEN_ON_2L        .EQ  $FE  Enabled
_PWRTEN_OFF_2L       .EQ  $FF  Disabled

_BOREN_OFF_2L        .EQ  $F9  Disabled in hardware, SBOREN disabled
_BOREN_ON_2L         .EQ  $FB  Controlled with SBOREN bit
_BOREN_NOSLP_2L      .EQ  $FD  Enabled while active, disabled in SLEEP, SBOREN disabled
_BOREN_SBORDIS_2L    .EQ  $FF  Enabled in hardware, SBOREN disabled

_BORV_0_2L           .EQ  $E7  3.0V
_BORV_1_2L           .EQ  $EF  2.7V
_BORV_2_2L           .EQ  $F7  2.0V
_BORV_3_2L           .EQ  $FF  1.8V

_BORPWR_LOW_2L       .EQ  $9F  BORMV set to low power level
_BORPWR_MEDIUM_2L    .EQ  $BF  BORMV set to medium power level
_BORPWR_HIGH_2L      .EQ  $DF  BORMV set to high power level
_BORPWR_ZPBORMV_2L   .EQ  $FF  ZPBORMV instead of BORMV is selected

;----- CONFIG2H Options --------------------------------------------------
_WDTEN_OFF_2H        .EQ  $FC  WDT disabled in hardware; SWDTEN bit disabled
_WDTEN_NOSLP_2H      .EQ  $FD  WDT enabled only while device is active and disabled in Sleep mode; SWDTEN bit disabled
_WDTEN_ON_2H         .EQ  $FE  WDT controlled by SWDTEN bit setting
_WDTEN_SWDTDIS_2H    .EQ  $FF  WDT enabled in hardware; SWDTEN bit disabled

_WDTPS_1_2H          .EQ  $83  1:1
_WDTPS_2_2H          .EQ  $87  1:2
_WDTPS_4_2H          .EQ  $8B  1:4
_WDTPS_8_2H          .EQ  $8F  1:8
_WDTPS_16_2H         .EQ  $93  1:16
_WDTPS_32_2H         .EQ  $97  1:32
_WDTPS_64_2H         .EQ  $9B  1:64
_WDTPS_128_2H        .EQ  $9F  1:128
_WDTPS_256_2H        .EQ  $A3  1:256
_WDTPS_512_2H        .EQ  $A7  1:512
_WDTPS_1024_2H       .EQ  $AB  1:1024
_WDTPS_2048_2H       .EQ  $AF  1:2048
_WDTPS_4096_2H       .EQ  $B3  1:4096
_WDTPS_8192_2H       .EQ  $B7  1:8192
_WDTPS_16384_2H      .EQ  $BB  1:16384
_WDTPS_32768_2H      .EQ  $BF  1:32768
_WDTPS_65536_2H      .EQ  $C3  1:65536
_WDTPS_131072_2H     .EQ  $C7  1:131072
_WDTPS_262144_2H     .EQ  $CB  1:262144
_WDTPS_524288_2H     .EQ  $CF  1:524288
_WDTPS_1048576_2H    .EQ  $FF  1:1048576

;----- CONFIG3H Options --------------------------------------------------
_CANMX_PORTC_3H      .EQ  $FE  ECAN TX and RX pins are located on RC6 and RC7, respectively
_CANMX_PORTB_3H      .EQ  $FF  ECAN TX and RX pins are located on RB2 and RB3, respectively

_MSSPMSK_MSK5_3H     .EQ  $F7  5 bit address masking mode
_MSSPMSK_MSK7_3H     .EQ  $FF  7 Bit address masking mode

_MCLRE_OFF_3H        .EQ  $7F  MCLR Disabled, RG5 Enabled
_MCLRE_ON_3H         .EQ  $FF  MCLR Enabled, RE3 Disabled

;----- CONFIG4L Options --------------------------------------------------
_STVREN_OFF_4L       .EQ  $FE  Disabled
_STVREN_ON_4L        .EQ  $FF  Enabled

_BBSIZ_BB1K_4L       .EQ  $EF  1K word Boot Block size
_BBSIZ_BB2K_4L       .EQ  $FF  2K word Boot Block size

;----- CONFIG5L Options --------------------------------------------------
_CP0_ON_5L           .EQ  $FE  Enabled
_CP0_OFF_5L          .EQ  $FF  Disabled

_CP1_ON_5L           .EQ  $FD  Enabled
_CP1_OFF_5L          .EQ  $FF  Disabled

_CP2_ON_5L           .EQ  $FB  Enabled
_CP2_OFF_5L          .EQ  $FF  Disabled

_CP3_ON_5L           .EQ  $F7  Enabled
_CP3_OFF_5L          .EQ  $FF  Disabled

;----- CONFIG5H Options --------------------------------------------------
_CPB_ON_5H           .EQ  $BF  Enabled
_CPB_OFF_5H          .EQ  $FF  Disabled

_CPD_ON_5H           .EQ  $7F  Enabled
_CPD_OFF_5H          .EQ  $FF  Disabled

;----- CONFIG6L Options --------------------------------------------------
_WRT0_ON_6L          .EQ  $FE  Enabled
_WRT0_OFF_6L         .EQ  $FF  Disabled

_WRT1_ON_6L          .EQ  $FD  Enabled
_WRT1_OFF_6L         .EQ  $FF  Disabled

_WRT2_ON_6L          .EQ  $FB  Enabled
_WRT2_OFF_6L         .EQ  $FF  Disabled

_WRT3_ON_6L          .EQ  $F7  Enabled
_WRT3_OFF_6L         .EQ  $FF  Disabled

;----- CONFIG6H Options --------------------------------------------------
_WRTC_ON_6H          .EQ  $DF  Enabled
_WRTC_OFF_6H         .EQ  $FF  Disabled

_WRTB_ON_6H          .EQ  $BF  Enabled
_WRTB_OFF_6H         .EQ  $FF  Disabled

_WRTD_ON_6H          .EQ  $7F  Enabled
_WRTD_OFF_6H         .EQ  $FF  Disabled

;----- CONFIG7L Options --------------------------------------------------
_EBTR0_ON_7L         .EQ  $FE  Enabled
_EBTR0_OFF_7L        .EQ  $FF  Disabled

_EBTR1_ON_7L         .EQ  $FD  Enabled
_EBTR1_OFF_7L        .EQ  $FF  Disabled

_EBTR2_ON_7L         .EQ  $FB  Enabled
_EBTR2_OFF_7L        .EQ  $FF  Disabled

_EBTR3_ON_7L         .EQ  $F7  Enabled
_EBTR3_OFF_7L        .EQ  $FF  Disabled

;----- CONFIG7H Options --------------------------------------------------
_EBTRB_ON_7H         .EQ  $BF  Enabled
_EBTRB_OFF_7H        .EQ  $FF  Disabled


;----- DEVID Equates --------------------------------------------------
_DEVID1          .EQ  $3FFFFE
_DEVID2          .EQ  $3FFFFF

;----- IDLOC Equates --------------------------------------------------
_IDLOC0          .EQ  $200000
_IDLOC1          .EQ  $200001
_IDLOC2          .EQ  $200002
_IDLOC3          .EQ  $200003
_IDLOC4          .EQ  $200004
_IDLOC5          .EQ  $200005
_IDLOC6          .EQ  $200006
_IDLOC7          .EQ  $200007
