;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC18LF4580 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC18LF4580 microcontroller.  These names
;  are taken to match the data sheets as closely as possible.
;==========================================================================

;==========================================================================
;
;       Select cross overlay
;
;==========================================================================

                  .CR   pic16
                  .MS   16384

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
RXF6SIDH         .EQ  $0D60
RXF6SIDL         .EQ  $0D61
RXF6EIDH         .EQ  $0D62
RXF6EIDL         .EQ  $0D63
RXF7SIDH         .EQ  $0D64
RXF7SIDL         .EQ  $0D65
RXF7EIDH         .EQ  $0D66
RXF7EIDL         .EQ  $0D67
RXF8SIDH         .EQ  $0D68
RXF8SIDL         .EQ  $0D69
RXF8EIDH         .EQ  $0D6A
RXF8EIDL         .EQ  $0D6B
RXF9SIDH         .EQ  $0D70
RXF9SIDL         .EQ  $0D71
RXF9EIDH         .EQ  $0D72
RXF9EIDL         .EQ  $0D73
RXF10SIDH        .EQ  $0D74
RXF10SIDL        .EQ  $0D75
RXF10EIDH        .EQ  $0D76
RXF10EIDL        .EQ  $0D77
RXF11SIDH        .EQ  $0D78
RXF11SIDL        .EQ  $0D79
RXF11EIDH        .EQ  $0D7A
RXF11EIDL        .EQ  $0D7B
RXF12SIDH        .EQ  $0D80
RXF12SIDL        .EQ  $0D81
RXF12EIDH        .EQ  $0D82
RXF12EIDL        .EQ  $0D83
RXF13SIDH        .EQ  $0D84
RXF13SIDL        .EQ  $0D85
RXF13EIDH        .EQ  $0D86
RXF13EIDL        .EQ  $0D87
RXF14SIDH        .EQ  $0D88
RXF14SIDL        .EQ  $0D89
RXF14EIDH        .EQ  $0D8A
RXF14EIDL        .EQ  $0D8B
RXF15SIDH        .EQ  $0D90
RXF15SIDL        .EQ  $0D91
RXF15EIDH        .EQ  $0D92
RXF15EIDL        .EQ  $0D93
RXFCON0          .EQ  $0DD4
RXFCON1          .EQ  $0DD5
SDFLC            .EQ  $0DD8
RXFBCON0         .EQ  $0DE0
RXFBCON1         .EQ  $0DE1
RXFBCON2         .EQ  $0DE2
RXFBCON3         .EQ  $0DE3
RXFBCON4         .EQ  $0DE4
RXFBCON5         .EQ  $0DE5
RXFBCON6         .EQ  $0DE6
RXFBCON7         .EQ  $0DE7
MSEL0            .EQ  $0DF0
MSEL1            .EQ  $0DF1
MSEL2            .EQ  $0DF2
MSEL3            .EQ  $0DF3
BSEL0            .EQ  $0DF8
BIE0             .EQ  $0DFA
TXBIE            .EQ  $0DFC
B0CON            .EQ  $0E20
B0SIDH           .EQ  $0E21
B0SIDL           .EQ  $0E22
B0EIDH           .EQ  $0E23
B0EIDL           .EQ  $0E24
B0DLC            .EQ  $0E25
B0D0             .EQ  $0E26
B0D1             .EQ  $0E27
B0D2             .EQ  $0E28
B0D3             .EQ  $0E29
B0D4             .EQ  $0E2A
B0D5             .EQ  $0E2B
B0D6             .EQ  $0E2C
B0D7             .EQ  $0E2D
CANSTAT_RO9      .EQ  $0E2E
CANCON_RO9       .EQ  $0E2F
B1CON            .EQ  $0E30
B1SIDH           .EQ  $0E31
B1SIDL           .EQ  $0E32
B1EIDH           .EQ  $0E33
B1EIDL           .EQ  $0E34
B1DLC            .EQ  $0E35
B1D0             .EQ  $0E36
B1D1             .EQ  $0E37
B1D2             .EQ  $0E38
B1D3             .EQ  $0E39
B1D4             .EQ  $0E3A
B1D5             .EQ  $0E3B
B1D6             .EQ  $0E3C
B1D7             .EQ  $0E3D
CANSTAT_RO8      .EQ  $0E3E
CANCON_RO8       .EQ  $0E3F
B2CON            .EQ  $0E40
B2SIDH           .EQ  $0E41
B2SIDL           .EQ  $0E42
B2EIDH           .EQ  $0E43
B2EIDL           .EQ  $0E44
B2DLC            .EQ  $0E45
B2D0             .EQ  $0E46
B2D1             .EQ  $0E47
B2D2             .EQ  $0E48
B2D3             .EQ  $0E49
B2D4             .EQ  $0E4A
B2D5             .EQ  $0E4B
B2D6             .EQ  $0E4C
B2D7             .EQ  $0E4D
CANSTAT_RO7      .EQ  $0E4E
CANCON_RO7       .EQ  $0E4F
B3CON            .EQ  $0E50
B3SIDH           .EQ  $0E51
B3SIDL           .EQ  $0E52
B3EIDH           .EQ  $0E53
B3EIDL           .EQ  $0E54
B3DLC            .EQ  $0E55
B3D0             .EQ  $0E56
B3D1             .EQ  $0E57
B3D2             .EQ  $0E58
B3D3             .EQ  $0E59
B3D4             .EQ  $0E5A
B3D5             .EQ  $0E5B
B3D6             .EQ  $0E5C
B3D7             .EQ  $0E5D
CANSTAT_RO6      .EQ  $0E5E
CANCON_RO6       .EQ  $0E5F
B4CON            .EQ  $0E60
B4SIDH           .EQ  $0E61
B4SIDL           .EQ  $0E62
B4EIDH           .EQ  $0E63
B4EIDL           .EQ  $0E64
B4DLC            .EQ  $0E65
B4D0             .EQ  $0E66
B4D1             .EQ  $0E67
B4D2             .EQ  $0E68
B4D3             .EQ  $0E69
B4D4             .EQ  $0E6A
B4D5             .EQ  $0E6B
B4D6             .EQ  $0E6C
B4D7             .EQ  $0E6D
CANSTAT_RO5      .EQ  $0E6E
CANCON_RO5       .EQ  $0E6F
B5CON            .EQ  $0E70
B5SIDH           .EQ  $0E71
B5SIDL           .EQ  $0E72
B5EIDH           .EQ  $0E73
B5EIDL           .EQ  $0E74
B5DLC            .EQ  $0E75
B5D0             .EQ  $0E76
B5D1             .EQ  $0E77
B5D2             .EQ  $0E78
B5D3             .EQ  $0E79
B5D4             .EQ  $0E7A
B5D5             .EQ  $0E7B
B5D6             .EQ  $0E7C
B5D7             .EQ  $0E7D
CANSTAT_RO4      .EQ  $0E7E
CANCON_RO4       .EQ  $0E7F
RXF0SIDH         .EQ  $0F00
RXF0SIDL         .EQ  $0F01
RXF0EIDH         .EQ  $0F02
RXF0EIDL         .EQ  $0F03
RXF1SIDH         .EQ  $0F04
RXF1SIDL         .EQ  $0F05
RXF1EIDH         .EQ  $0F06
RXF1EIDL         .EQ  $0F07
RXF2SIDH         .EQ  $0F08
RXF2SIDL         .EQ  $0F09
RXF2EIDH         .EQ  $0F0A
RXF2EIDL         .EQ  $0F0B
RXF3SIDH         .EQ  $0F0C
RXF3SIDL         .EQ  $0F0D
RXF3EIDH         .EQ  $0F0E
RXF3EIDL         .EQ  $0F0F
RXF4SIDH         .EQ  $0F10
RXF4SIDL         .EQ  $0F11
RXF4EIDH         .EQ  $0F12
RXF4EIDL         .EQ  $0F13
RXF5SIDH         .EQ  $0F14
RXF5SIDL         .EQ  $0F15
RXF5EIDH         .EQ  $0F16
RXF5EIDL         .EQ  $0F17
RXM0SIDH         .EQ  $0F18
RXM0SIDL         .EQ  $0F19
RXM0EIDH         .EQ  $0F1A
RXM0EIDL         .EQ  $0F1B
RXM1SIDH         .EQ  $0F1C
RXM1SIDL         .EQ  $0F1D
RXM1EIDH         .EQ  $0F1E
RXM1EIDL         .EQ  $0F1F
TXB2CON          .EQ  $0F20
TXB2SIDH         .EQ  $0F21
TXB2SIDL         .EQ  $0F22
TXB2EIDH         .EQ  $0F23
TXB2EIDL         .EQ  $0F24
TXB2DLC          .EQ  $0F25
TXB2D0           .EQ  $0F26
TXB2D1           .EQ  $0F27
TXB2D2           .EQ  $0F28
TXB2D3           .EQ  $0F29
TXB2D4           .EQ  $0F2A
TXB2D5           .EQ  $0F2B
TXB2D6           .EQ  $0F2C
TXB2D7           .EQ  $0F2D
CANSTAT_RO3      .EQ  $0F2E
CANCON_RO3       .EQ  $0F2F
TXB1CON          .EQ  $0F30
TXB1SIDH         .EQ  $0F31
TXB1SIDL         .EQ  $0F32
TXB1EIDH         .EQ  $0F33
TXB1EIDL         .EQ  $0F34
TXB1DLC          .EQ  $0F35
TXB1D0           .EQ  $0F36
TXB1D1           .EQ  $0F37
TXB1D2           .EQ  $0F38
TXB1D3           .EQ  $0F39
TXB1D4           .EQ  $0F3A
TXB1D5           .EQ  $0F3B
TXB1D6           .EQ  $0F3C
TXB1D7           .EQ  $0F3D
CANSTAT_RO2      .EQ  $0F3E
CANCON_RO2       .EQ  $0F3F
TXB0CON          .EQ  $0F40
TXB0SIDH         .EQ  $0F41
TXB0SIDL         .EQ  $0F42
TXB0EIDH         .EQ  $0F43
TXB0EIDL         .EQ  $0F44
TXB0DLC          .EQ  $0F45
TXB0D0           .EQ  $0F46
TXB0D1           .EQ  $0F47
TXB0D2           .EQ  $0F48
TXB0D3           .EQ  $0F49
TXB0D4           .EQ  $0F4A
TXB0D5           .EQ  $0F4B
TXB0D6           .EQ  $0F4C
TXB0D7           .EQ  $0F4D
CANSTAT_RO1      .EQ  $0F4E
CANCON_RO1       .EQ  $0F4F
RXB1CON          .EQ  $0F50
RXB1SIDH         .EQ  $0F51
RXB1SIDL         .EQ  $0F52
RXB1EIDH         .EQ  $0F53
RXB1EIDL         .EQ  $0F54
RXB1DLC          .EQ  $0F55
RXB1D0           .EQ  $0F56
RXB1D1           .EQ  $0F57
RXB1D2           .EQ  $0F58
RXB1D3           .EQ  $0F59
RXB1D4           .EQ  $0F5A
RXB1D5           .EQ  $0F5B
RXB1D6           .EQ  $0F5C
RXB1D7           .EQ  $0F5D
CANSTAT_RO0      .EQ  $0F5E
CANCON_RO0       .EQ  $0F5F
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
BRGCON1          .EQ  $0F70
BRGCON2          .EQ  $0F71
BRGCON3          .EQ  $0F72
CIOCON           .EQ  $0F73
COMSTAT          .EQ  $0F74
RXERRCNT         .EQ  $0F75
TXERRCNT         .EQ  $0F76
ECANCON          .EQ  $0F77
PORTA            .EQ  $0F80
PORTB            .EQ  $0F81
PORTC            .EQ  $0F82
PORTD            .EQ  $0F83
PORTE            .EQ  $0F84
LATA             .EQ  $0F89
LATB             .EQ  $0F8A
LATC             .EQ  $0F8B
LATD             .EQ  $0F8C
LATE             .EQ  $0F8D
DDRA             .EQ  $0F92
TRISA            .EQ  $0F92
DDRB             .EQ  $0F93
TRISB            .EQ  $0F93
DDRC             .EQ  $0F94
TRISC            .EQ  $0F94
DDRD             .EQ  $0F95
TRISD            .EQ  $0F95
DDRE             .EQ  $0F96
TRISE            .EQ  $0F96
OSCTUNE          .EQ  $0F9B
PIE1             .EQ  $0F9D
PIR1             .EQ  $0F9E
IPR1             .EQ  $0F9F
PIE2             .EQ  $0FA0
PIR2             .EQ  $0FA1
IPR2             .EQ  $0FA2
PIE3             .EQ  $0FA3
PIR3             .EQ  $0FA4
IPR3             .EQ  $0FA5
EECON1           .EQ  $0FA6
EECON2           .EQ  $0FA7
EEDATA           .EQ  $0FA8
EEADR            .EQ  $0FA9
RCSTA            .EQ  $0FAB
TXSTA            .EQ  $0FAC
TXREG            .EQ  $0FAD
RCREG            .EQ  $0FAE
SPBRG            .EQ  $0FAF
SPBRGH           .EQ  $0FB0
T3CON            .EQ  $0FB1
TMR3             .EQ  $0FB2
TMR3L            .EQ  $0FB2
TMR3H            .EQ  $0FB3
CMCON            .EQ  $0FB4
CVRCON           .EQ  $0FB5
ECCP1AS          .EQ  $0FB6
ECCP1DEL         .EQ  $0FB7
BAUDCON          .EQ  $0FB8
BAUDCTL          .EQ  $0FB8
ECCP1CON         .EQ  $0FBA
ECCPR1           .EQ  $0FBB
ECCPR1L          .EQ  $0FBB
ECCPR1H          .EQ  $0FBC
CCP1CON          .EQ  $0FBD
CCPR1            .EQ  $0FBE
CCPR1L           .EQ  $0FBE
CCPR1H           .EQ  $0FBF
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
HLVDCON          .EQ  $0FD2
LVDCON           .EQ  $0FD2
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
EID16            .EQ  $0000
EID17            .EQ  $0001
EXIDEN           .EQ  $0003
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007

EXIDE            .EQ  $0003


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
EID16            .EQ  $0000
EID17            .EQ  $0001
EXIDEN           .EQ  $0003
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007

EXIDE            .EQ  $0003


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
EID16            .EQ  $0000
EID17            .EQ  $0001
EXIDEN           .EQ  $0003
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007

EXIDE            .EQ  $0003


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
EID16            .EQ  $0000
EID17            .EQ  $0001
EXIDEN           .EQ  $0003
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007

EXIDE            .EQ  $0003


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
EID16            .EQ  $0000
EID17            .EQ  $0001
EXIDEN           .EQ  $0003
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007

EXIDE            .EQ  $0003


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
EID16            .EQ  $0000
EID17            .EQ  $0001
EXIDEN           .EQ  $0003
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007

EXIDE            .EQ  $0003


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
EID16            .EQ  $0000
EID17            .EQ  $0001
EXIDEN           .EQ  $0003
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007

EXIDE            .EQ  $0003


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
EID16            .EQ  $0000
EID17            .EQ  $0001
EXIDEN           .EQ  $0003
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007

EXIDE            .EQ  $0003


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
EID16            .EQ  $0000
EID17            .EQ  $0001
EXIDEN           .EQ  $0003
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007

EXIDE            .EQ  $0003


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
EID16            .EQ  $0000
EID17            .EQ  $0001
EXIDEN           .EQ  $0003
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007

EXIDE            .EQ  $0003


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


;----- SDFLC Bits -----------------------------------------------------
FLC0             .EQ  $0000
FLC1             .EQ  $0001
FLC2             .EQ  $0002
FLC3             .EQ  $0003
FLC4             .EQ  $0004

DFLC0            .EQ  $0000
DFLC1            .EQ  $0001
DFLC2            .EQ  $0002
DFLC3            .EQ  $0003
DFLC4            .EQ  $0004


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
RTRRO            .EQ  $0005
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

RXRTRRO_B0CON    .EQ  $0005


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
EID16            .EQ  $0000
EID17            .EQ  $0001
EXIDE            .EQ  $0003
SRR              .EQ  $0004
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007

EXID             .EQ  $0003


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
DLC0             .EQ  $0000
DLC1             .EQ  $0001
DLC2             .EQ  $0002
DLC3             .EQ  $0003
RB0_B0DLC        .EQ  $0004
RB1_B0DLC        .EQ  $0005
RXRTR_TXRTR      .EQ  $0006

RESRB0           .EQ  $0004
RESRB1           .EQ  $0005
TXRTR            .EQ  $0006

RXRTR            .EQ  $0006


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
OPMODE0          .EQ  $0005
OPMODE1          .EQ  $0006
OPMODE2          .EQ  $0007

ICODE0           .EQ  $0000
ICODE1           .EQ  $0001
ICODE2           .EQ  $0002
ICODE3           .EQ  $0003
ICODE4           .EQ  $0004


;----- CANCON_RO9 Bits -----------------------------------------------------
FP0              .EQ  $0000
WIN0_FP1         .EQ  $0001
WIN1_FP2         .EQ  $0002
WIN2_FP3         .EQ  $0003
ABAT             .EQ  $0004
REQOP0           .EQ  $0005
REQOP1           .EQ  $0006
REQOP2           .EQ  $0007

WIN0             .EQ  $0001
WIN1             .EQ  $0002
WIN2             .EQ  $0003


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
RTRRO            .EQ  $0005
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

RXRTRRO_B1CON    .EQ  $0005


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
EID16            .EQ  $0000
EID17            .EQ  $0001
EXIDE            .EQ  $0003
SRR              .EQ  $0004
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007

EXID             .EQ  $0003


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
DLC0             .EQ  $0000
DLC1             .EQ  $0001
DLC2             .EQ  $0002
DLC3             .EQ  $0003
RB0_B1DLC        .EQ  $0004
RB1_B1DLC        .EQ  $0005
RXRTR_TXRTR      .EQ  $0006

RESRB0           .EQ  $0004
RESRB1           .EQ  $0005
TXRTR            .EQ  $0006

RXRTR            .EQ  $0006


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
OPMODE0          .EQ  $0005
OPMODE1          .EQ  $0006
OPMODE2          .EQ  $0007

ICODE0           .EQ  $0000
ICODE1           .EQ  $0001
ICODE2           .EQ  $0002
ICODE3           .EQ  $0003
ICODE4           .EQ  $0004


;----- CANCON_RO8 Bits -----------------------------------------------------
FP0              .EQ  $0000
WIN0_FP1         .EQ  $0001
WIN1_FP2         .EQ  $0002
WIN2_FP3         .EQ  $0003
ABAT             .EQ  $0004
REQOP0           .EQ  $0005
REQOP1           .EQ  $0006
REQOP2           .EQ  $0007

WIN0             .EQ  $0001
WIN1             .EQ  $0002
WIN2             .EQ  $0003


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
RTRRO            .EQ  $0005
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

RXRTRRO_B2CON    .EQ  $0005


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
EID16            .EQ  $0000
EID17            .EQ  $0001
EXIDE            .EQ  $0003
SRR              .EQ  $0004
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007

EXID             .EQ  $0003


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
DLC0             .EQ  $0000
DLC1             .EQ  $0001
DLC2             .EQ  $0002
DLC3             .EQ  $0003
RB0_B2DLC        .EQ  $0004
RB1_B2DLC        .EQ  $0005
RXRTR_TXRTR      .EQ  $0006

RESRB0           .EQ  $0004
RESRB1           .EQ  $0005
TXRTR            .EQ  $0006

RXRTR            .EQ  $0006


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
OPMODE0          .EQ  $0005
OPMODE1          .EQ  $0006
OPMODE2          .EQ  $0007

ICODE0           .EQ  $0000
ICODE1           .EQ  $0001
ICODE2           .EQ  $0002
ICODE3           .EQ  $0003
ICODE4           .EQ  $0004


;----- CANCON_RO7 Bits -----------------------------------------------------
FP0              .EQ  $0000
WIN0_FP1         .EQ  $0001
WIN1_FP2         .EQ  $0002
WIN2_FP3         .EQ  $0003
ABAT             .EQ  $0004
REQOP0           .EQ  $0005
REQOP1           .EQ  $0006
REQOP2           .EQ  $0007

WIN0             .EQ  $0001
WIN1             .EQ  $0002
WIN2             .EQ  $0003


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
RTRRO            .EQ  $0005
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

RXRTRRO_B3CON    .EQ  $0005


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
EID16            .EQ  $0000
EID17            .EQ  $0001
EXIDE            .EQ  $0003
SRR              .EQ  $0004
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007

EXID             .EQ  $0003


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
DLC0             .EQ  $0000
DLC1             .EQ  $0001
DLC2             .EQ  $0002
DLC3             .EQ  $0003
RB0_B3DLC        .EQ  $0004
RB1_B3DLC        .EQ  $0005
RXRTR_TXRTR      .EQ  $0006

RESRB0           .EQ  $0004
RESRB1           .EQ  $0005
TXRTR            .EQ  $0006

RXRTR            .EQ  $0006


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
OPMODE0          .EQ  $0005
OPMODE1          .EQ  $0006
OPMODE2          .EQ  $0007

ICODE0           .EQ  $0000
ICODE1           .EQ  $0001
ICODE2           .EQ  $0002
ICODE3           .EQ  $0003
ICODE4           .EQ  $0004


;----- CANCON_RO6 Bits -----------------------------------------------------
FP0              .EQ  $0000
WIN0_FP1         .EQ  $0001
WIN1_FP2         .EQ  $0002
WIN2_FP3         .EQ  $0003
ABAT             .EQ  $0004
REQOP0           .EQ  $0005
REQOP1           .EQ  $0006
REQOP2           .EQ  $0007

WIN0             .EQ  $0001
WIN1             .EQ  $0002
WIN2             .EQ  $0003


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
RTRRO            .EQ  $0005
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

RXRTRRO_B4CON    .EQ  $0005


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
EID16            .EQ  $0000
EID17            .EQ  $0001
EXIDE            .EQ  $0003
SRR              .EQ  $0004
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007

EXID             .EQ  $0003


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
DLC0             .EQ  $0000
DLC1             .EQ  $0001
DLC2             .EQ  $0002
DLC3             .EQ  $0003
RB0_B4DLC        .EQ  $0004
RB1_B4DLC        .EQ  $0005
RXRTR_TXRTR      .EQ  $0006

RESRB0           .EQ  $0004
RESRB1           .EQ  $0005
TXRTR            .EQ  $0006

RXRTR            .EQ  $0006


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

B46D77           .EQ  $0007


;----- CANSTAT_RO5 Bits -----------------------------------------------------
EICODE0          .EQ  $0000
EICODE1_ICODE0   .EQ  $0001
EICODE2_ICODE1   .EQ  $0002
EICODE3_ICODE2   .EQ  $0003
EICODE4          .EQ  $0004
OPMODE0          .EQ  $0005
OPMODE1          .EQ  $0006
OPMODE2          .EQ  $0007

ICODE0           .EQ  $0000
ICODE1           .EQ  $0001
ICODE2           .EQ  $0002
ICODE3           .EQ  $0003
ICODE4           .EQ  $0004


;----- CANCON_RO5 Bits -----------------------------------------------------
FP0              .EQ  $0000
WIN0_FP1         .EQ  $0001
WIN1_FP2         .EQ  $0002
WIN2_FP3         .EQ  $0003
ABAT             .EQ  $0004
REQOP0           .EQ  $0005
REQOP1           .EQ  $0006
REQOP2           .EQ  $0007

WIN0             .EQ  $0001
WIN1             .EQ  $0002
WIN2             .EQ  $0003


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
RTRRO            .EQ  $0005
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

RXRTRRO_B5CON    .EQ  $0005


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
EID16            .EQ  $0000
EID17            .EQ  $0001
EXIDE            .EQ  $0003
SRR              .EQ  $0004
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007

EXID             .EQ  $0003

EXIDEN           .EQ  $0003


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
DLC0             .EQ  $0000
DLC1             .EQ  $0001
DLC2             .EQ  $0002
DLC3             .EQ  $0003
RB0_B5DLC        .EQ  $0004
RB1_B5DLC        .EQ  $0005
RXRTR_TXRTR      .EQ  $0006

RESRB0           .EQ  $0004
RESRB1           .EQ  $0005

RXRTR            .EQ  $0006


;----- B5D0 Bits -----------------------------------------------------
B5D00            .EQ  $0000
B5D01            .EQ  $0001
B5D02            .EQ  $0002
B5D03            .EQ  $0003
B5D04            .EQ  $0004
B5D05            .EQ  $0005
B5D06            .EQ  $0006
B5D07            .EQ  $0007

B57D07           .EQ  $0007


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

B57D23           .EQ  $0003


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
OPMODE0          .EQ  $0005
OPMODE1          .EQ  $0006
OPMODE2          .EQ  $0007

ICODE0           .EQ  $0000
ICODE1           .EQ  $0001
ICODE2           .EQ  $0002
ICODE3           .EQ  $0003
ICODE4           .EQ  $0004


;----- CANCON_RO4 Bits -----------------------------------------------------
FP0              .EQ  $0000
WIN0_FP1         .EQ  $0001
WIN1_FP2         .EQ  $0002
WIN2_FP3         .EQ  $0003
ABAT             .EQ  $0004
REQOP0           .EQ  $0005
REQOP1           .EQ  $0006
REQOP2           .EQ  $0007

WIN0             .EQ  $0001
WIN1             .EQ  $0002
WIN2             .EQ  $0003


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
EID16            .EQ  $0000
EID17            .EQ  $0001
EXIDEN           .EQ  $0003
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007

EXIDE            .EQ  $0003


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
EID16            .EQ  $0000
EID17            .EQ  $0001
EXIDEN           .EQ  $0003
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007

EXIDE            .EQ  $0003


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
EID16            .EQ  $0000
EID17            .EQ  $0001
EXIDEN           .EQ  $0003
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007

EXIDE            .EQ  $0003


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
EID16            .EQ  $0000
EID17            .EQ  $0001
EXIDEN           .EQ  $0003
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007

EXIDE            .EQ  $0003


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
EID16            .EQ  $0000
EID17            .EQ  $0001
EXIDEN           .EQ  $0003
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007

EXIDE            .EQ  $0003


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
EID16            .EQ  $0000
EID17            .EQ  $0001
EXIDEN           .EQ  $0003
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007

EXIDE            .EQ  $0003


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
EID16            .EQ  $0000
EID17            .EQ  $0001
EXIDEN           .EQ  $0003
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
EID16            .EQ  $0000
EID17            .EQ  $0001
EXIDEN           .EQ  $0003
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
TXPRI0           .EQ  $0000
TXPRI1           .EQ  $0001
TXREQ            .EQ  $0003
TXERR            .EQ  $0004
TXLARB           .EQ  $0005
TXABT            .EQ  $0006
TXBIF            .EQ  $0007

TXBIFBXB2CON     .EQ  $0007


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
EID16            .EQ  $0000
EID17            .EQ  $0001
EXIDE            .EQ  $0003
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
DLC0             .EQ  $0000
DLC1             .EQ  $0001
DLC2             .EQ  $0002
DLC3             .EQ  $0003
TXRTR            .EQ  $0006


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
OPMODE0          .EQ  $0005
OPMODE1          .EQ  $0006
OPMODE2          .EQ  $0007

ICODE0           .EQ  $0000
ICODE1           .EQ  $0001
ICODE2           .EQ  $0002
ICODE3           .EQ  $0003
ICODE4           .EQ  $0004


;----- CANCON_RO3 Bits -----------------------------------------------------
FP0              .EQ  $0000
WIN0_FP1         .EQ  $0001
WIN1_FP2         .EQ  $0002
WIN2_FP3         .EQ  $0003
ABAT             .EQ  $0004
REQOP0           .EQ  $0005
REQOP1           .EQ  $0006
REQOP2           .EQ  $0007

WIN0             .EQ  $0001
WIN1             .EQ  $0002
WIN2             .EQ  $0003


;----- TXB1CON Bits -----------------------------------------------------
TXPRI0           .EQ  $0000
TXPRI1           .EQ  $0001
TXREQ            .EQ  $0003
TXERR            .EQ  $0004
TXLARB           .EQ  $0005
TXABT            .EQ  $0006
TXBIF            .EQ  $0007

TXBIFTXB1CON     .EQ  $0007


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
EID16            .EQ  $0000
EID17            .EQ  $0001
EXIDE            .EQ  $0003
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
DLC0             .EQ  $0000
DLC1             .EQ  $0001
DLC2             .EQ  $0002
DLC3             .EQ  $0003
TXRTR            .EQ  $0006


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
OPMODE0          .EQ  $0005
OPMODE1          .EQ  $0006
OPMODE2          .EQ  $0007

ICODE0           .EQ  $0000
ICODE1           .EQ  $0001
ICODE2           .EQ  $0002
ICODE3           .EQ  $0003
ICODE4           .EQ  $0004


;----- CANCON_RO2 Bits -----------------------------------------------------
FP0              .EQ  $0000
WIN0_FP1         .EQ  $0001
WIN1_FP2         .EQ  $0002
WIN2_FP3         .EQ  $0003
ABAT             .EQ  $0004
REQOP0           .EQ  $0005
REQOP1           .EQ  $0006
REQOP2           .EQ  $0007

WIN0             .EQ  $0001
WIN1             .EQ  $0002
WIN2             .EQ  $0003


;----- TXB0CON Bits -----------------------------------------------------
TXPRI0           .EQ  $0000
TXPRI1           .EQ  $0001
TXREQ            .EQ  $0003
TXERR            .EQ  $0004
TXLARB           .EQ  $0005
TXABT            .EQ  $0006
TXBIF            .EQ  $0007


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
EID16            .EQ  $0000
EID17            .EQ  $0001
EXIDE            .EQ  $0003
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
DLC0             .EQ  $0000
DLC1             .EQ  $0001
DLC2             .EQ  $0002
DLC3             .EQ  $0003
TXRTR            .EQ  $0006


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
OPMODE0          .EQ  $0005
OPMODE1          .EQ  $0006
OPMODE2          .EQ  $0007

ICODE0           .EQ  $0000
ICODE1           .EQ  $0001
ICODE2           .EQ  $0002
ICODE3           .EQ  $0003
ICODE4           .EQ  $0004


;----- CANCON_RO1 Bits -----------------------------------------------------
FP0              .EQ  $0000
WIN0_FP1         .EQ  $0001
WIN1_FP2         .EQ  $0002
WIN2_FP3         .EQ  $0003
ABAT             .EQ  $0004
REQOP0           .EQ  $0005
REQOP1           .EQ  $0006
REQOP2           .EQ  $0007

WIN0             .EQ  $0001
WIN1             .EQ  $0002
WIN2             .EQ  $0003


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
EID16            .EQ  $0000
EID17            .EQ  $0001
EXID             .EQ  $0003
SRR              .EQ  $0004
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
DLC0             .EQ  $0000
DLC1             .EQ  $0001
DLC2             .EQ  $0002
DLC3             .EQ  $0003
RB0_RXB1DLC      .EQ  $0004
RB1_RXB1DLC      .EQ  $0005
RXRTR            .EQ  $0006

RESRB0           .EQ  $0004
RESRB1           .EQ  $0005


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
OPMODE0          .EQ  $0005
OPMODE1          .EQ  $0006
OPMODE2          .EQ  $0007

ICODE0           .EQ  $0000
ICODE1           .EQ  $0001
ICODE2           .EQ  $0002
ICODE3           .EQ  $0003
ICODE4           .EQ  $0004


;----- CANCON_RO0 Bits -----------------------------------------------------
FP0              .EQ  $0000
WIN0_FP1         .EQ  $0001
WIN1_FP2         .EQ  $0002
WIN2_FP3         .EQ  $0003
ABAT             .EQ  $0004
REQOP0           .EQ  $0005
REQOP1           .EQ  $0006
REQOP2           .EQ  $0007

WIN0             .EQ  $0001
WIN1             .EQ  $0002
WIN2             .EQ  $0003


;----- RXB0CON Bits -----------------------------------------------------
FILHIT0          .EQ  $0000
JTOFF_FILHIT1    .EQ  $0001
RXB0DBEN_FILHIT2 .EQ  $0002
RXRTRRO_FILHIT3  .EQ  $0003
FILHIT4          .EQ  $0004
RXM0_RTRRO       .EQ  $0005
RXM1             .EQ  $0006
RXFUL            .EQ  $0007

JTOFF            .EQ  $0001
RXB0DBEN         .EQ  $0002
RXRTRRO_RXB0CON  .EQ  $0003
RXM0             .EQ  $0005

FILHIT1          .EQ  $0001
FILHIT2          .EQ  $0002
FILHIT3          .EQ  $0003
RTRRO            .EQ  $0005

RXBODBEN         .EQ  $0002


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
EID16            .EQ  $0000
EID17            .EQ  $0001
EXID             .EQ  $0003
SRR              .EQ  $0004
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
DLC0             .EQ  $0000
DLC1             .EQ  $0001
DLC2             .EQ  $0002
DLC3             .EQ  $0003
RB0_RXB0DLC      .EQ  $0004
RB1_RXB0DLC      .EQ  $0005
RXRTR            .EQ  $0006

RESRB0           .EQ  $0004
RESRB1           .EQ  $0005


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
OPMODE0          .EQ  $0005
OPMODE1          .EQ  $0006
OPMODE2          .EQ  $0007

ICODE0           .EQ  $0000
ICODE1           .EQ  $0001
ICODE2           .EQ  $0002
ICODE3           .EQ  $0003

EICODE1          .EQ  $0001
EICODE2          .EQ  $0002
EICODE3          .EQ  $0003


;----- CANCON Bits -----------------------------------------------------
FP0              .EQ  $0000
WIN0_FP1         .EQ  $0001
WIN1_FP2         .EQ  $0002
WIN2_FP3         .EQ  $0003
ABAT             .EQ  $0004
REQOP0           .EQ  $0005
REQOP1           .EQ  $0006
REQOP2           .EQ  $0007

WIN0             .EQ  $0001
WIN1             .EQ  $0002
WIN2             .EQ  $0003

FP1              .EQ  $0001
FP2              .EQ  $0002
FP3              .EQ  $0003


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
PRSEG0           .EQ  $0000
PRSEG1           .EQ  $0001
PRSEG2           .EQ  $0002
SEG1PH0          .EQ  $0003
SEG1PH1          .EQ  $0004
SEG1PH2          .EQ  $0005
SAM              .EQ  $0006
SEG2PHT          .EQ  $0007

SEG2PHTS         .EQ  $0007


;----- BRGCON3 Bits -----------------------------------------------------
SEG2PH0          .EQ  $0000
SEG2PH1          .EQ  $0001
SEG2PH2          .EQ  $0002
WAKFIL           .EQ  $0006
WAKDIS           .EQ  $0007


;----- CIOCON Bits -----------------------------------------------------
CANCAP           .EQ  $0004
ENDRHI           .EQ  $0005


;----- COMSTAT Bits -----------------------------------------------------
EWARN            .EQ  $0000
RXWARN           .EQ  $0001
TXWARN           .EQ  $0002
RXBP             .EQ  $0003
TXBP             .EQ  $0004
TXBO             .EQ  $0005
RXBnOVFL         .EQ  $0006
RXB0OVFL_NOT_FIFOEMPTY .EQ  $0007

RXB1OVFL         .EQ  $0006
RXB0OVFL         .EQ  $0007

FIFOEMPTY        .EQ  $0007

NOT_FIFOEMPTY    .EQ  $0007


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


;----- ECANCON Bits -----------------------------------------------------
EWIN0            .EQ  $0000
EWIN1            .EQ  $0001
EWIN2            .EQ  $0002
EWIN3            .EQ  $0003
EWIN4            .EQ  $0004
FIFOWM           .EQ  $0005
MDSEL0           .EQ  $0006
MDSEL1           .EQ  $0007

F                .EQ  $0005


;----- PORTA Bits -----------------------------------------------------
RA0              .EQ  $0000
RA1              .EQ  $0001
RA2              .EQ  $0002
RA3              .EQ  $0003
RA4              .EQ  $0004
RA5              .EQ  $0005
RA6              .EQ  $0006
RA7              .EQ  $0007

AN0              .EQ  $0000
AN1              .EQ  $0001
AN2              .EQ  $0002
AN3              .EQ  $0003
T0CKI            .EQ  $0004
AN4              .EQ  $0005
OSC2             .EQ  $0006
OSC1             .EQ  $0007

CVREF_PORTA      .EQ  $0000
VREFM            .EQ  $0002
VREFP            .EQ  $0003
HLVDIN           .EQ  $0005
CLKO             .EQ  $0006
CLKI             .EQ  $0007

CVREFA           .EQ  $0000
LVDIN            .EQ  $0005

SS               .EQ  $0005

NOT_SS           .EQ  $0005


;----- PORTB Bits -----------------------------------------------------
RB0_PORTB        .EQ  $0000
RB1_PORTB        .EQ  $0001
RB2              .EQ  $0002
RB3              .EQ  $0003
RB4              .EQ  $0004
RB5              .EQ  $0005
RB6              .EQ  $0006
RB7              .EQ  $0007

INT0             .EQ  $0000
INT1             .EQ  $0001
INT2             .EQ  $0002
CANRX            .EQ  $0003
KBI0             .EQ  $0004
KBI1             .EQ  $0005
KBI2             .EQ  $0006
KBI3             .EQ  $0007

AN10             .EQ  $0000
AN8              .EQ  $0001
CANTX            .EQ  $0002
AN9              .EQ  $0004
PGM              .EQ  $0005
PGC              .EQ  $0006
PGD              .EQ  $0007

FLT0             .EQ  $0000


;----- PORTC Bits -----------------------------------------------------
RC0              .EQ  $0000
RC1              .EQ  $0001
RC2              .EQ  $0002
RC3              .EQ  $0003
RC4              .EQ  $0004
RC5              .EQ  $0005
RC6              .EQ  $0006
RC7              .EQ  $0007

T1OSO            .EQ  $0000
T1OSI            .EQ  $0001
CCP1             .EQ  $0002
SCK              .EQ  $0003
SDI              .EQ  $0004
SDO              .EQ  $0005
TX               .EQ  $0006
RX               .EQ  $0007

T13CKI           .EQ  $0000
SCL              .EQ  $0003
SDA              .EQ  $0004
CK               .EQ  $0006
; DT is a reserved word
; DT               .EQ  $0007


;----- PORTD Bits -----------------------------------------------------
RD0              .EQ  $0000
RD1              .EQ  $0001
RD2              .EQ  $0002
RD3              .EQ  $0003
RD4              .EQ  $0004
RD5              .EQ  $0005
RD6              .EQ  $0006
RD7              .EQ  $0007

PSP0             .EQ  $0000
PSP1             .EQ  $0001
PSP2             .EQ  $0002
PSP3             .EQ  $0003
PSP4             .EQ  $0004
PSP5             .EQ  $0005
PSP6             .EQ  $0006
PSP7             .EQ  $0007

C1INB            .EQ  $0000
C1INA            .EQ  $0001
C2INB            .EQ  $0002
C2INA            .EQ  $0003
P1A              .EQ  $0004
P1B              .EQ  $0005
P1C              .EQ  $0006
P1D              .EQ  $0007

ECCP1            .EQ  $0004


;----- PORTE Bits -----------------------------------------------------
RE0              .EQ  $0000
RE1              .EQ  $0001
RE2              .EQ  $0002
RE3              .EQ  $0003


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


;----- DDRA Bits -----------------------------------------------------
TRISA0           .EQ  $0000
TRISA1           .EQ  $0001
TRISA2           .EQ  $0002
TRISA3           .EQ  $0003
TRISA4           .EQ  $0004
TRISA5           .EQ  $0005
TRISA6           .EQ  $0006
TRISA7           .EQ  $0007

RA0              .EQ  $0000
RA1              .EQ  $0001
RA2              .EQ  $0002
RA3              .EQ  $0003
RA4              .EQ  $0004
RA5              .EQ  $0005
RA6              .EQ  $0006
RA7              .EQ  $0007


;----- TRISA Bits -----------------------------------------------------
TRISA0           .EQ  $0000
TRISA1           .EQ  $0001
TRISA2           .EQ  $0002
TRISA3           .EQ  $0003
TRISA4           .EQ  $0004
TRISA5           .EQ  $0005
TRISA6           .EQ  $0006
TRISA7           .EQ  $0007

RA0              .EQ  $0000
RA1              .EQ  $0001
RA2              .EQ  $0002
RA3              .EQ  $0003
RA4              .EQ  $0004
RA5              .EQ  $0005
RA6              .EQ  $0006
RA7              .EQ  $0007


;----- DDRB Bits -----------------------------------------------------
TRISB0           .EQ  $0000
TRISB1           .EQ  $0001
TRISB2           .EQ  $0002
TRISB3           .EQ  $0003
TRISB4           .EQ  $0004
TRISB5           .EQ  $0005
TRISB6           .EQ  $0006
TRISB7           .EQ  $0007

RB0_DDRB         .EQ  $0000
RB1_DDRB         .EQ  $0001
RB2              .EQ  $0002
RB3              .EQ  $0003
RB4              .EQ  $0004
RB5              .EQ  $0005
RB6              .EQ  $0006
RB7              .EQ  $0007


;----- TRISB Bits -----------------------------------------------------
TRISB0           .EQ  $0000
TRISB1           .EQ  $0001
TRISB2           .EQ  $0002
TRISB3           .EQ  $0003
TRISB4           .EQ  $0004
TRISB5           .EQ  $0005
TRISB6           .EQ  $0006
TRISB7           .EQ  $0007

RB0_TRISB        .EQ  $0000
RB1_TRISB        .EQ  $0001
RB2              .EQ  $0002
RB3              .EQ  $0003
RB4              .EQ  $0004
RB5              .EQ  $0005
RB6              .EQ  $0006
RB7              .EQ  $0007


;----- DDRC Bits -----------------------------------------------------
TRISC0           .EQ  $0000
TRISC1           .EQ  $0001
TRISC2           .EQ  $0002
TRISC3           .EQ  $0003
TRISC4           .EQ  $0004
TRISC5           .EQ  $0005
TRISC6           .EQ  $0006
TRISC7           .EQ  $0007

RC0              .EQ  $0000
RC1              .EQ  $0001
RC2              .EQ  $0002
RC3              .EQ  $0003
RC4              .EQ  $0004
RC5              .EQ  $0005
RC6              .EQ  $0006
RC7              .EQ  $0007


;----- TRISC Bits -----------------------------------------------------
TRISC0           .EQ  $0000
TRISC1           .EQ  $0001
TRISC2           .EQ  $0002
TRISC3           .EQ  $0003
TRISC4           .EQ  $0004
TRISC5           .EQ  $0005
TRISC6           .EQ  $0006
TRISC7           .EQ  $0007

RC0              .EQ  $0000
RC1              .EQ  $0001
RC2              .EQ  $0002
RC3              .EQ  $0003
RC4              .EQ  $0004
RC5              .EQ  $0005
RC6              .EQ  $0006
RC7              .EQ  $0007


;----- DDRD Bits -----------------------------------------------------
TRISD0           .EQ  $0000
TRISD1           .EQ  $0001
TRISD2           .EQ  $0002
TRISD3           .EQ  $0003
TRISD4           .EQ  $0004
TRISD5           .EQ  $0005
TRISD6           .EQ  $0006
TRISD7           .EQ  $0007

RD0              .EQ  $0000
RD1              .EQ  $0001
RD2              .EQ  $0002
RD3              .EQ  $0003
RD4              .EQ  $0004
RD5              .EQ  $0005
RD6              .EQ  $0006
RD7              .EQ  $0007


;----- TRISD Bits -----------------------------------------------------
TRISD0           .EQ  $0000
TRISD1           .EQ  $0001
TRISD2           .EQ  $0002
TRISD3           .EQ  $0003
TRISD4           .EQ  $0004
TRISD5           .EQ  $0005
TRISD6           .EQ  $0006
TRISD7           .EQ  $0007

RD0              .EQ  $0000
RD1              .EQ  $0001
RD2              .EQ  $0002
RD3              .EQ  $0003
RD4              .EQ  $0004
RD5              .EQ  $0005
RD6              .EQ  $0006
RD7              .EQ  $0007


;----- DDRE Bits -----------------------------------------------------
TRISE0           .EQ  $0000
TRISE1           .EQ  $0001
TRISE2           .EQ  $0002
PSPMODE          .EQ  $0004
IBOV             .EQ  $0005
OBF              .EQ  $0006
IBF              .EQ  $0007

RE0              .EQ  $0000
RE1              .EQ  $0001
RE2              .EQ  $0002


;----- TRISE Bits -----------------------------------------------------
TRISE0           .EQ  $0000
TRISE1           .EQ  $0001
TRISE2           .EQ  $0002
PSPMODE          .EQ  $0004
IBOV             .EQ  $0005
OBF              .EQ  $0006
IBF              .EQ  $0007

RE0              .EQ  $0000
RE1              .EQ  $0001
RE2              .EQ  $0002


;----- OSCTUNE Bits -----------------------------------------------------
PLLEN            .EQ  $0006
INTSRC           .EQ  $0007

TUN0             .EQ  $0000
TUN1             .EQ  $0001
TUN2             .EQ  $0002
TUN3             .EQ  $0003
TUN4             .EQ  $0004
INTSCR           .EQ  $0007


;----- PIE1 Bits -----------------------------------------------------
TMR1IE           .EQ  $0000
TMR2IE           .EQ  $0001
CCP1IE           .EQ  $0002
SSPIE            .EQ  $0003
TXIE             .EQ  $0004
RCIE             .EQ  $0005
ADIE             .EQ  $0006
PSPIE            .EQ  $0007


;----- PIR1 Bits -----------------------------------------------------
TMR1IF           .EQ  $0000
TMR2IF           .EQ  $0001
CCP1IF           .EQ  $0002
SSPIF            .EQ  $0003
TXIF             .EQ  $0004
RCIF             .EQ  $0005
ADIF             .EQ  $0006
PSPIF            .EQ  $0007


;----- IPR1 Bits -----------------------------------------------------
TMR1IP           .EQ  $0000
TMR2IP           .EQ  $0001
CCP1IP           .EQ  $0002
SSPIP            .EQ  $0003
TXIP             .EQ  $0004
RCIP             .EQ  $0005
ADIP             .EQ  $0006
PSPIP            .EQ  $0007

TXBIP            .EQ  $0004


;----- PIE2 Bits -----------------------------------------------------
ECCP1IE          .EQ  $0000
TMR3IE           .EQ  $0001
HLVDIE           .EQ  $0002
BCLIE            .EQ  $0003
EEIE             .EQ  $0004
CMIE             .EQ  $0006
OSCFIE           .EQ  $0007

LVDIE            .EQ  $0002


;----- PIR2 Bits -----------------------------------------------------
ECCP1IF          .EQ  $0000
TMR3IF           .EQ  $0001
HLVDIF           .EQ  $0002
BCLIF            .EQ  $0003
EEIF             .EQ  $0004
CMIF             .EQ  $0006
OSCFIF           .EQ  $0007

LVDIF            .EQ  $0002


;----- IPR2 Bits -----------------------------------------------------
ECCP1IP          .EQ  $0000
TMR3IP           .EQ  $0001
HLVDIP           .EQ  $0002
BCLIP            .EQ  $0003
EEIP             .EQ  $0004
CMIP             .EQ  $0006
OSCFIP           .EQ  $0007

LVDIP            .EQ  $0002


;----- PIE3 Bits -----------------------------------------------------
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

FIFOMWIE         .EQ  $0000


;----- PIR3 Bits -----------------------------------------------------
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


;----- IPR3 Bits -----------------------------------------------------
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


;----- RCSTA Bits -----------------------------------------------------
RX9D             .EQ  $0000
OERR             .EQ  $0001
FERR             .EQ  $0002
ADDEN            .EQ  $0003
CREN             .EQ  $0004
SREN             .EQ  $0005
RX9              .EQ  $0006
SPEN             .EQ  $0007

ADEN             .EQ  $0003


;----- TXSTA Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SENDB            .EQ  $0003
SYNC             .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007


;----- T3CON Bits -----------------------------------------------------
TMR3ON           .EQ  $0000
TMR3CS           .EQ  $0001
NOT_T3SYNC       .EQ  $0002
T3CCP1           .EQ  $0003
T3ECCP1          .EQ  $0006
RD16             .EQ  $0007

T3SYNC           .EQ  $0002
T3CKPS0          .EQ  $0004
T3CKPS1          .EQ  $0005
T3CCP2           .EQ  $0006

T3NSYNC          .EQ  $0002


;----- CMCON Bits -----------------------------------------------------
CIS              .EQ  $0003
C1INV            .EQ  $0004
C2INV            .EQ  $0005
C1OUT            .EQ  $0006
C2OUT            .EQ  $0007

CM0              .EQ  $0000
CM1              .EQ  $0001
CM2              .EQ  $0002


;----- CVRCON Bits -----------------------------------------------------
CVRSS            .EQ  $0004
CVRR             .EQ  $0005
CVROE            .EQ  $0006
CVREN            .EQ  $0007

CVR0             .EQ  $0000
CVR1             .EQ  $0001
CVR2             .EQ  $0002
CVR3             .EQ  $0003
CVREF_CVRCON     .EQ  $0004


;----- ECCP1AS Bits -----------------------------------------------------
ECCPASE          .EQ  $0007

PSSBD0           .EQ  $0000
PSSBD1           .EQ  $0001
PSSAC0           .EQ  $0002
PSSAC1           .EQ  $0003
ECCPAS0          .EQ  $0004
ECCPAS1          .EQ  $0005
ECCPAS2          .EQ  $0006


;----- ECCP1DEL Bits -----------------------------------------------------
PRSEN            .EQ  $0007

PDC0             .EQ  $0000
PDC1             .EQ  $0001
PDC2             .EQ  $0002
PDC3             .EQ  $0003
PDC4             .EQ  $0004
PDC5             .EQ  $0005
PDC6             .EQ  $0006


;----- BAUDCON Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
TXCKP            .EQ  $0004
RXDTP            .EQ  $0005
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007

SCKP             .EQ  $0004


;----- BAUDCTL Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
TXCKP            .EQ  $0004
RXDTP            .EQ  $0005
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007

SCKP             .EQ  $0004


;----- ECCP1CON Bits -----------------------------------------------------
ECCP1M0          .EQ  $0000
ECCP1M1          .EQ  $0001
ECCP1M2          .EQ  $0002
ECCP1M3          .EQ  $0003
EDC1B0           .EQ  $0004
EDC1B1           .EQ  $0005
EPWM1M0          .EQ  $0006
EPWM1M1          .EQ  $0007


;----- CCP1CON Bits -----------------------------------------------------
CCP1M0           .EQ  $0000
CCP1M1           .EQ  $0001
CCP1M2           .EQ  $0002
CCP1M3           .EQ  $0003
DC1B0            .EQ  $0004
DC1B1            .EQ  $0005


;----- ADCON2 Bits -----------------------------------------------------
ADFM             .EQ  $0007

ADCS0            .EQ  $0000
ADCS1            .EQ  $0001
ADCS2            .EQ  $0002
ACQT0            .EQ  $0003
ACQT1            .EQ  $0004
ACQT2            .EQ  $0005


;----- ADCON1 Bits -----------------------------------------------------
PCFG0            .EQ  $0000
PCFG1            .EQ  $0001
PCFG2            .EQ  $0002
PCFG3            .EQ  $0003
VCFG0            .EQ  $0004
VCFG1            .EQ  $0005


;----- ADCON0 Bits -----------------------------------------------------
ADON             .EQ  $0000
GO_NOT_DONE      .EQ  $0001

GO_DONE          .EQ  $0001
CHS0             .EQ  $0002
CHS1             .EQ  $0003
CHS2             .EQ  $0004
CHS3             .EQ  $0005

DONE             .EQ  $0001

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

I2C_READ         .EQ  $0002
I2C_START        .EQ  $0003
I2C_STOP         .EQ  $0004
I2C_DAT          .EQ  $0005

NOT_W            .EQ  $0002
NOT_A            .EQ  $0005

NOT_WRITE        .EQ  $0002
NOT_ADDRESS      .EQ  $0005

READ_WRITE       .EQ  $0002
DATA_ADDRESS     .EQ  $0005

R                .EQ  $0002
D                .EQ  $0005


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
TMR1CS           .EQ  $0001
NOT_T1SYNC       .EQ  $0002
T1OSCEN          .EQ  $0003
T1RUN            .EQ  $0006
RD16             .EQ  $0007

T1SYNC           .EQ  $0002
T1CKPS0          .EQ  $0004
T1CKPS1          .EQ  $0005

T1INSYNC         .EQ  $0002


;----- RCON Bits -----------------------------------------------------
NOT_BOR          .EQ  $0000
NOT_POR          .EQ  $0001
NOT_PD           .EQ  $0002
NOT_TO           .EQ  $0003
NOT_RI           .EQ  $0004
SBOREN           .EQ  $0006
IPEN             .EQ  $0007

BOR              .EQ  $0000
POR              .EQ  $0001
PD               .EQ  $0002
TO               .EQ  $0003
RI               .EQ  $0004


;----- WDTCON Bits -----------------------------------------------------
SWDTEN           .EQ  $0000

SWDTE            .EQ  $0000


;----- HLVDCON Bits -----------------------------------------------------
HLVDEN           .EQ  $0004
IRVST            .EQ  $0005
VDIRMAG          .EQ  $0007

HLVDL0           .EQ  $0000
HLVDL1           .EQ  $0001
HLVDL2           .EQ  $0002
HLVDL3           .EQ  $0003

LVDL0            .EQ  $0000
LVDL1            .EQ  $0001
LVDL2            .EQ  $0002
LVDL3            .EQ  $0003
LVDEN            .EQ  $0004
IVRST            .EQ  $0005

LVV0             .EQ  $0000
LVV1             .EQ  $0001
LVV2             .EQ  $0002
LVV3             .EQ  $0003
BGST             .EQ  $0005


;----- LVDCON Bits -----------------------------------------------------
HLVDEN           .EQ  $0004
IRVST            .EQ  $0005
VDIRMAG          .EQ  $0007

HLVDL0           .EQ  $0000
HLVDL1           .EQ  $0001
HLVDL2           .EQ  $0002
HLVDL3           .EQ  $0003

LVDL0            .EQ  $0000
LVDL1            .EQ  $0001
LVDL2            .EQ  $0002
LVDL3            .EQ  $0003
LVDEN            .EQ  $0004
IVRST            .EQ  $0005

LVV0             .EQ  $0000
LVV1             .EQ  $0001
LVV2             .EQ  $0002
LVV3             .EQ  $0003
BGST             .EQ  $0005


;----- OSCCON Bits -----------------------------------------------------
IOFS             .EQ  $0002
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
T0PS3            .EQ  $0003


;----- STATUS Bits -----------------------------------------------------
C                .EQ  $0000
DC               .EQ  $0001
Z                .EQ  $0002
OV               .EQ  $0003
N                .EQ  $0004


;----- INTCON3 Bits -----------------------------------------------------
INT1IF           .EQ  $0000
INT2IF           .EQ  $0001
INT1IE           .EQ  $0003
INT2IE           .EQ  $0004
INT1IP           .EQ  $0006
INT2IP           .EQ  $0007

INT1F            .EQ  $0000
INT2F            .EQ  $0001
INT1E            .EQ  $0003
INT2E            .EQ  $0004
INT1P            .EQ  $0006
INT2P            .EQ  $0007


;----- INTCON2 Bits -----------------------------------------------------
RBIP             .EQ  $0000
TMR0IP           .EQ  $0002
INTEDG2          .EQ  $0004
INTEDG1          .EQ  $0005
INTEDG0          .EQ  $0006
NOT_RBPU         .EQ  $0007

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


;----- STKPTR Bits -----------------------------------------------------
STKUNF           .EQ  $0006
STKFUL           .EQ  $0007

STKPTR0          .EQ  $0000
STKPTR1          .EQ  $0001
STKPTR2          .EQ  $0002
STKPTR3          .EQ  $0003
STKPTR4          .EQ  $0004
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
;   Oscillator Selection bits:
;     OSC = LP             LP oscillator
;     OSC = XT             XT oscillator
;     OSC = HS             HS oscillator
;     OSC = RC             External RC oscillator, CLKO function on RA6
;     OSC = EC             EC oscillator, CLKO function on RA6
;     OSC = ECIO           EC oscillator, port function on RA6
;     OSC = HSPLL          HS oscillator, PLL enabled (Clock Frequency = 4 x FOSC1)
;     OSC = RCIO           External RC oscillator, port function on RA6
;     OSC = IRCIO67        Internal oscillator block, port function on RA6 and RA7
;     OSC = IRCIO7         Internal oscillator block, CLKO function on RA6, port function on RA7
;
;   Fail-Safe Clock Monitor Enable bit:
;     FCMEN = OFF          Fail-Safe Clock Monitor disabled
;     FCMEN = ON           Fail-Safe Clock Monitor enabled
;
;   Internal/External Oscillator Switchover bit:
;     IESO = OFF           Oscillator Switchover mode disabled
;     IESO = ON            Oscillator Switchover mode enabled
;
;   Power-up Timer Enable bit:
;     PWRT = ON            PWRT enabled
;     PWRT = OFF           PWRT disabled
;
;   Brown-out Reset Enable bits:
;     BOREN = OFF          Brown-out Reset disabled in hardware and software
;     BOREN = SBORENCTRL   Brown-out Reset enabled and controlled by software (SBOREN is enabled)
;     BOREN = BOACTIVE     Brown-out Reset enabled in hardware only and disabled in Sleep mode (SBOREN is disabled)
;     BOREN = BOHW         Brown-out Reset enabled in hardware only (SBOREN is disabled)
;
;   Brown-out Reset Voltage bits:
;     BORV = 0             VBOR set to 4.6V
;     BORV = 1             VBOR set to 4.3V
;     BORV = 2             VBOR set to 2.8V
;     BORV = 3             VBOR set to 2.1V
;
;   Watchdog Timer Enable bit:
;     WDT = OFF            WDT disabled (control is placed on the SWDTEN bit)
;     WDT = ON             WDT enabled
;
;   Watchdog Timer Postscale Select bits:
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
;
;   PORTB A/D Enable bit:
;     PBADEN = OFF         PORTB<4:0> pins are configured as digital I/O on Reset
;     PBADEN = ON          PORTB<4:0> pins are configured as analog input channels on Reset
;
;   Low-Power Timer 1 Oscillator Enable bit:
;     LPT1OSC = OFF        Timer1 configured for higher power operation
;     LPT1OSC = ON         Timer1 configured for low-power operation
;
;   MCLR Pin Enable bit:
;     MCLRE = OFF          RE3 input pin enabled; MCLR disabled
;     MCLRE = ON           MCLR pin enabled; RE3 input pin disabled
;
;   Stack Full/Underflow Reset Enable bit:
;     STVREN = OFF         Stack full/underflow will not cause Reset
;     STVREN = ON          Stack full/underflow will cause Reset
;
;   Single-Supply ICSP Enable bit:
;     LVP = OFF            Single-Supply ICSP disabled
;     LVP = ON             Single-Supply ICSP enabled
;
;   Boot Block Size Select bit:
;     BBSIZ = 1024         1K words (2K bytes) boot block
;     BBSIZ = 2048         2K words (4K bytes) boot block
;
;   Extended Instruction Set Enable bit:
;     XINST = OFF          Instruction set extension and Indexed Addressing mode disabled (Legacy mode)
;     XINST = ON           Instruction set extension and Indexed Addressing mode enabled
;
;   Background Debugger Enable bit:
;     DEBUG = ON           Background debugger enabled, RB6 and RB7 are dedicated to In-Circuit Debug
;     DEBUG = OFF          Background debugger disabled, RB6 and RB7 configured as general purpose I/O pins
;
;   Code Protection bit:
;     CP0 = ON             Block 0 (000800-001FFFh) code-protected
;     CP0 = OFF            Block 0 (000800-001FFFh) not code-protected
;
;   Code Protection bit:
;     CP1 = ON             Block 1 (002000-003FFFh) code-protected
;     CP1 = OFF            Block 1 (002000-003FFFh) not code-protected
;
;   Code Protection bit:
;     CP2 = ON             Block 2 (004000-005FFFh) code-protected
;     CP2 = OFF            Block 2 (004000-005FFFh) not code-protected
;
;   Code Protection bit:
;     CP3 = ON             Block 3 (006000-007FFFh) code-protected
;     CP3 = OFF            Block 3 (006000-007FFFh) not code-protected
;
;   Boot Block Code Protection bit:
;     CPB = ON             Boot block (000000-0007FFh) code-protected
;     CPB = OFF            Boot block (000000-0007FFh) not code-protected
;
;   Data EEPROM Code Protection bit:
;     CPD = ON             Data EEPROM code-protected
;     CPD = OFF            Data EEPROM not code-protected
;
;   Write Protection bit:
;     WRT0 = ON            Block 0 (000800-001FFFh) write-protected
;     WRT0 = OFF           Block 0 (000800-001FFFh) not write-protected
;
;   Write Protection bit:
;     WRT1 = ON            Block 1 (002000-003FFFh) write-protected
;     WRT1 = OFF           Block 1 (002000-003FFFh) not write-protected
;
;   Write Protection bit:
;     WRT2 = ON            Block 2 (004000-005FFFh) write-protected
;     WRT2 = OFF           Block 2 (004000-005FFFh) not write-protected
;
;   Write Protection bit:
;     WRT3 = ON            Block 3 (006000-007FFFh) write-protected
;     WRT3 = OFF           Block 3 (006000-007FFFh) not write-protected
;
;   Configuration Register Write Protection bit:
;     WRTC = ON            Configuration registers (300000-3000FFh) write-protected
;     WRTC = OFF           Configuration registers (300000-3000FFh) not write-protected
;
;   Boot Block Write Protection bit:
;     WRTB = ON            Boot block (000000-0007FFh) write-protected
;     WRTB = OFF           Boot block (000000-0007FFh) not write-protected
;
;   Data EEPROM Write Protection bit:
;     WRTD = ON            Data EEPROM write-protected
;     WRTD = OFF           Data EEPROM not write-protected
;
;   Table Read Protection bit:
;     EBTR0 = ON           Block 0 (000800-001FFFh) protected from table reads executed in other blocks
;     EBTR0 = OFF          Block 0 (000800-001FFFh) not protected from table reads executed in other blocks
;
;   Table Read Protection bit:
;     EBTR1 = ON           Block 1 (002000-003FFFh) protected from table reads executed in other blocks
;     EBTR1 = OFF          Block 1 (002000-003FFFh) not protected from table reads executed in other blocks
;
;   Table Read Protection bit:
;     EBTR2 = ON           Block 2 (004000-005FFFh) protected from table reads executed in other blocks
;     EBTR2 = OFF          Block 2 (004000-005FFFh) not protected from table reads executed in other blocks
;
;   Table Read Protection bit:
;     EBTR3 = ON           Block 3 (006000-007FFFh) protected from table reads executed in other blocks
;     EBTR3 = OFF          Block 3 (006000-007FFFh) not protected from table reads executed in other blocks
;
;   Boot Block Table Read Protection bit:
;     EBTRB = ON           Boot block (000000-0007FFh) protected from table reads executed in other blocks
;     EBTRB = OFF          Boot block (000000-0007FFh) not protected from table reads executed in other blocks
;
;==========================================================================
;==========================================================================
;
;       Configuration Bits
;
;   NAME            Address
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

;----- CONFIG1H Options --------------------------------------------------
_OSC_LP_1H           .EQ  $F0  LP oscillator
_OSC_XT_1H           .EQ  $F1  XT oscillator
_OSC_HS_1H           .EQ  $F2  HS oscillator
_OSC_RC_1H           .EQ  $F3  External RC oscillator, CLKO function on RA6
_OSC_EC_1H           .EQ  $F4  EC oscillator, CLKO function on RA6
_OSC_ECIO_1H         .EQ  $F5  EC oscillator, port function on RA6
_OSC_HSPLL_1H        .EQ  $F6  HS oscillator, PLL enabled (Clock Frequency = 4 x FOSC1)
_OSC_RCIO_1H         .EQ  $F7  External RC oscillator, port function on RA6
_OSC_IRCIO67_1H      .EQ  $F8  Internal oscillator block, port function on RA6 and RA7
_OSC_IRCIO7_1H       .EQ  $F9  Internal oscillator block, CLKO function on RA6, port function on RA7

_FCMEN_OFF_1H        .EQ  $BF  Fail-Safe Clock Monitor disabled
_FCMEN_ON_1H         .EQ  $FF  Fail-Safe Clock Monitor enabled

_IESO_OFF_1H         .EQ  $7F  Oscillator Switchover mode disabled
_IESO_ON_1H          .EQ  $FF  Oscillator Switchover mode enabled

;----- CONFIG2L Options --------------------------------------------------
_PWRT_ON_2L          .EQ  $FE  PWRT enabled
_PWRT_OFF_2L         .EQ  $FF  PWRT disabled

_BOREN_OFF_2L        .EQ  $F9  Brown-out Reset disabled in hardware and software
_BOREN_SBORENCTRL_2L .EQ  $FB  Brown-out Reset enabled and controlled by software (SBOREN is enabled)
_BOREN_BOACTIVE_2L   .EQ  $FD  Brown-out Reset enabled in hardware only and disabled in Sleep mode (SBOREN is disabled)
_BOREN_BOHW_2L       .EQ  $FF  Brown-out Reset enabled in hardware only (SBOREN is disabled)

_BORV_0_2L           .EQ  $E7  VBOR set to 4.6V
_BORV_1_2L           .EQ  $EF  VBOR set to 4.3V
_BORV_2_2L           .EQ  $F7  VBOR set to 2.8V
_BORV_3_2L           .EQ  $FF  VBOR set to 2.1V

;----- CONFIG2H Options --------------------------------------------------
_WDT_OFF_2H          .EQ  $FE  WDT disabled (control is placed on the SWDTEN bit)
_WDT_ON_2H           .EQ  $FF  WDT enabled

_WDTPS_1_2H          .EQ  $E1  1:1
_WDTPS_2_2H          .EQ  $E3  1:2
_WDTPS_4_2H          .EQ  $E5  1:4
_WDTPS_8_2H          .EQ  $E7  1:8
_WDTPS_16_2H         .EQ  $E9  1:16
_WDTPS_32_2H         .EQ  $EB  1:32
_WDTPS_64_2H         .EQ  $ED  1:64
_WDTPS_128_2H        .EQ  $EF  1:128
_WDTPS_256_2H        .EQ  $F1  1:256
_WDTPS_512_2H        .EQ  $F3  1:512
_WDTPS_1024_2H       .EQ  $F5  1:1024
_WDTPS_2048_2H       .EQ  $F7  1:2048
_WDTPS_4096_2H       .EQ  $F9  1:4096
_WDTPS_8192_2H       .EQ  $FB  1:8192
_WDTPS_16384_2H      .EQ  $FD  1:16384
_WDTPS_32768_2H      .EQ  $FF  1:32768

;----- CONFIG3H Options --------------------------------------------------
_PBADEN_OFF_3H       .EQ  $FD  PORTB<4:0> pins are configured as digital I/O on Reset
_PBADEN_ON_3H        .EQ  $FF  PORTB<4:0> pins are configured as analog input channels on Reset

_LPT1OSC_OFF_3H      .EQ  $FB  Timer1 configured for higher power operation
_LPT1OSC_ON_3H       .EQ  $FF  Timer1 configured for low-power operation

_MCLRE_OFF_3H        .EQ  $7F  RE3 input pin enabled; MCLR disabled
_MCLRE_ON_3H         .EQ  $FF  MCLR pin enabled; RE3 input pin disabled

;----- CONFIG4L Options --------------------------------------------------
_STVREN_OFF_4L       .EQ  $FE  Stack full/underflow will not cause Reset
_STVREN_ON_4L        .EQ  $FF  Stack full/underflow will cause Reset

_LVP_OFF_4L          .EQ  $FB  Single-Supply ICSP disabled
_LVP_ON_4L           .EQ  $FF  Single-Supply ICSP enabled

_BBSIZ_1024_4L       .EQ  $EF  1K words (2K bytes) boot block
_BBSIZ_2048_4L       .EQ  $FF  2K words (4K bytes) boot block

_XINST_OFF_4L        .EQ  $BF  Instruction set extension and Indexed Addressing mode disabled (Legacy mode)
_XINST_ON_4L         .EQ  $FF  Instruction set extension and Indexed Addressing mode enabled

_DEBUG_ON_4L         .EQ  $7F  Background debugger enabled, RB6 and RB7 are dedicated to In-Circuit Debug
_DEBUG_OFF_4L        .EQ  $FF  Background debugger disabled, RB6 and RB7 configured as general purpose I/O pins

;----- CONFIG5L Options --------------------------------------------------
_CP0_ON_5L           .EQ  $FE  Block 0 (000800-001FFFh) code-protected
_CP0_OFF_5L          .EQ  $FF  Block 0 (000800-001FFFh) not code-protected

_CP1_ON_5L           .EQ  $FD  Block 1 (002000-003FFFh) code-protected
_CP1_OFF_5L          .EQ  $FF  Block 1 (002000-003FFFh) not code-protected

_CP2_ON_5L           .EQ  $FB  Block 2 (004000-005FFFh) code-protected
_CP2_OFF_5L          .EQ  $FF  Block 2 (004000-005FFFh) not code-protected

_CP3_ON_5L           .EQ  $F7  Block 3 (006000-007FFFh) code-protected
_CP3_OFF_5L          .EQ  $FF  Block 3 (006000-007FFFh) not code-protected

;----- CONFIG5H Options --------------------------------------------------
_CPB_ON_5H           .EQ  $BF  Boot block (000000-0007FFh) code-protected
_CPB_OFF_5H          .EQ  $FF  Boot block (000000-0007FFh) not code-protected

_CPD_ON_5H           .EQ  $7F  Data EEPROM code-protected
_CPD_OFF_5H          .EQ  $FF  Data EEPROM not code-protected

;----- CONFIG6L Options --------------------------------------------------
_WRT0_ON_6L          .EQ  $FE  Block 0 (000800-001FFFh) write-protected
_WRT0_OFF_6L         .EQ  $FF  Block 0 (000800-001FFFh) not write-protected

_WRT1_ON_6L          .EQ  $FD  Block 1 (002000-003FFFh) write-protected
_WRT1_OFF_6L         .EQ  $FF  Block 1 (002000-003FFFh) not write-protected

_WRT2_ON_6L          .EQ  $FB  Block 2 (004000-005FFFh) write-protected
_WRT2_OFF_6L         .EQ  $FF  Block 2 (004000-005FFFh) not write-protected

_WRT3_ON_6L          .EQ  $F7  Block 3 (006000-007FFFh) write-protected
_WRT3_OFF_6L         .EQ  $FF  Block 3 (006000-007FFFh) not write-protected

;----- CONFIG6H Options --------------------------------------------------
_WRTC_ON_6H          .EQ  $DF  Configuration registers (300000-3000FFh) write-protected
_WRTC_OFF_6H         .EQ  $FF  Configuration registers (300000-3000FFh) not write-protected

_WRTB_ON_6H          .EQ  $BF  Boot block (000000-0007FFh) write-protected
_WRTB_OFF_6H         .EQ  $FF  Boot block (000000-0007FFh) not write-protected

_WRTD_ON_6H          .EQ  $7F  Data EEPROM write-protected
_WRTD_OFF_6H         .EQ  $FF  Data EEPROM not write-protected

;----- CONFIG7L Options --------------------------------------------------
_EBTR0_ON_7L         .EQ  $FE  Block 0 (000800-001FFFh) protected from table reads executed in other blocks
_EBTR0_OFF_7L        .EQ  $FF  Block 0 (000800-001FFFh) not protected from table reads executed in other blocks

_EBTR1_ON_7L         .EQ  $FD  Block 1 (002000-003FFFh) protected from table reads executed in other blocks
_EBTR1_OFF_7L        .EQ  $FF  Block 1 (002000-003FFFh) not protected from table reads executed in other blocks

_EBTR2_ON_7L         .EQ  $FB  Block 2 (004000-005FFFh) protected from table reads executed in other blocks
_EBTR2_OFF_7L        .EQ  $FF  Block 2 (004000-005FFFh) not protected from table reads executed in other blocks

_EBTR3_ON_7L         .EQ  $F7  Block 3 (006000-007FFFh) protected from table reads executed in other blocks
_EBTR3_OFF_7L        .EQ  $FF  Block 3 (006000-007FFFh) not protected from table reads executed in other blocks

;----- CONFIG7H Options --------------------------------------------------
_EBTRB_ON_7H         .EQ  $BF  Boot block (000000-0007FFh) protected from table reads executed in other blocks
_EBTRB_OFF_7H        .EQ  $FF  Boot block (000000-0007FFh) not protected from table reads executed in other blocks


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
