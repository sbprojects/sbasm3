;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC18LF258 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC18LF258 microcontroller.  These names
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
CANSTATRO4       .EQ  $0F2E
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
CANSTATRO3       .EQ  $0F3E
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
CANSTATRO2       .EQ  $0F4E
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
CANSTATRO1       .EQ  $0F5E
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
PORTA            .EQ  $0F80
PORTB            .EQ  $0F81
PORTC            .EQ  $0F82
LATA             .EQ  $0F89
LATB             .EQ  $0F8A
LATC             .EQ  $0F8B
DDRA             .EQ  $0F92
TRISA            .EQ  $0F92
DDRB             .EQ  $0F93
TRISB            .EQ  $0F93
DDRC             .EQ  $0F94
TRISC            .EQ  $0F94
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
T3CON            .EQ  $0FB1
TMR3             .EQ  $0FB2
TMR3L            .EQ  $0FB2
TMR3H            .EQ  $0FB3
CCP1CON          .EQ  $0FBD
CCPR1            .EQ  $0FBE
CCPR1L           .EQ  $0FBE
CCPR1H           .EQ  $0FBF
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


;----- CANSTATRO4 Bits -----------------------------------------------------
ICODE0           .EQ  $0001
ICODE1           .EQ  $0002
ICODE2           .EQ  $0003
OPMODE0          .EQ  $0005
OPMODE1          .EQ  $0006
OPMODE2          .EQ  $0007


;----- TXB1CON Bits -----------------------------------------------------
TXPRI0           .EQ  $0000
TXPRI1           .EQ  $0001
TXREQ            .EQ  $0003
TXERR            .EQ  $0004
TXLARB           .EQ  $0005
TXABT            .EQ  $0006


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

TBB1D23          .EQ  $0003


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


;----- CANSTATRO3 Bits -----------------------------------------------------
ICODE0           .EQ  $0001
ICODE1           .EQ  $0002
ICODE2           .EQ  $0003
OPMODE0          .EQ  $0005
OPMODE1          .EQ  $0006
OPMODE2          .EQ  $0007


;----- TXB0CON Bits -----------------------------------------------------
TXPRI0           .EQ  $0000
TXPRI1           .EQ  $0001
TXREQ            .EQ  $0003
TXERR            .EQ  $0004
TXLARB           .EQ  $0005
TXABT            .EQ  $0006


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


;----- CANSTATRO2 Bits -----------------------------------------------------
ICODE0           .EQ  $0001
ICODE1           .EQ  $0002
ICODE2           .EQ  $0003
OPMODE0          .EQ  $0005
OPMODE1          .EQ  $0006
OPMODE2          .EQ  $0007


;----- RXB1CON Bits -----------------------------------------------------
FILHIT0          .EQ  $0000
FILHIT1          .EQ  $0001
FILHIT2          .EQ  $0002
RXRTRRO          .EQ  $0003
RXM0             .EQ  $0005
RXM1             .EQ  $0006
RXFUL            .EQ  $0007


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

RESB0            .EQ  $0004
RESB1            .EQ  $0005


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


;----- CANSTATRO1 Bits -----------------------------------------------------
ICODE0           .EQ  $0001
ICODE1           .EQ  $0002
ICODE2           .EQ  $0003
OPMODE0          .EQ  $0005
OPMODE1          .EQ  $0006
OPMODE2          .EQ  $0007


;----- RXB0CON Bits -----------------------------------------------------
FILHIT0          .EQ  $0000
JTOFF            .EQ  $0001
RXB0DBEN         .EQ  $0002
RXRTRRO          .EQ  $0003
RXM0             .EQ  $0005
RXM1             .EQ  $0006
RXFUL            .EQ  $0007


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

RESB0            .EQ  $0004
RESB1            .EQ  $0005


;----- RXB0D0 Bits -----------------------------------------------------
RXB0D00          .EQ  $0000
RXB0D01          .EQ  $0001
RXB0D02          .EQ  $0002
RXB0D03          .EQ  $0003
RXB0D04          .EQ  $0004
RXB0D05          .EQ  $0005
RXB0D06          .EQ  $0006
RXB0D07          .EQ  $0007

RB0D00           .EQ  $0000
RB0D01           .EQ  $0001
RB0D02           .EQ  $0002
RB0D03           .EQ  $0003
RB0D04           .EQ  $0004
RB0D05           .EQ  $0005
RB0D06           .EQ  $0006
RB0D07           .EQ  $0007


;----- RXB0D1 Bits -----------------------------------------------------
RXB0D10          .EQ  $0000
RXB0D11          .EQ  $0001
RXB0D12          .EQ  $0002
RXB0D13          .EQ  $0003
RXB0D14          .EQ  $0004
RXB0D15          .EQ  $0005
RXB0D16          .EQ  $0006
RXB0D17          .EQ  $0007

RB0D10           .EQ  $0000
RB0D11           .EQ  $0001
RB0D12           .EQ  $0002
RB0D13           .EQ  $0003
RB0D14           .EQ  $0004
RB0D15           .EQ  $0005
RB0D16           .EQ  $0006
RB0D17           .EQ  $0007


;----- RXB0D2 Bits -----------------------------------------------------
RXB0D20          .EQ  $0000
RXB0D21          .EQ  $0001
RXB0D22          .EQ  $0002
RXB0D23          .EQ  $0003
RXB0D24          .EQ  $0004
RXB0D25          .EQ  $0005
RXB0D26          .EQ  $0006
RXB0D27          .EQ  $0007

RB0D20           .EQ  $0000
RB0D21           .EQ  $0001
RB0D22           .EQ  $0002
RB0D23           .EQ  $0003
RB0D24           .EQ  $0004
RB0D25           .EQ  $0005
RB0D26           .EQ  $0006
RB0D27           .EQ  $0007


;----- RXB0D3 Bits -----------------------------------------------------
RXB0D30          .EQ  $0000
RXB0D31          .EQ  $0001
RXB0D32          .EQ  $0002
RXB0D33          .EQ  $0003
RXB0D34          .EQ  $0004
RXB0D35          .EQ  $0005
RXB0D36          .EQ  $0006
RXB0D37          .EQ  $0007

RB0D30           .EQ  $0000
RB0D31           .EQ  $0001
RB0D32           .EQ  $0002
RB0D33           .EQ  $0003
RB0D34           .EQ  $0004
RB0D35           .EQ  $0005
RB0D36           .EQ  $0006
RB0D37           .EQ  $0007


;----- RXB0D4 Bits -----------------------------------------------------
RXB0D40          .EQ  $0000
RXB0D41          .EQ  $0001
RXB0D42          .EQ  $0002
RXB0D43          .EQ  $0003
RXB0D44          .EQ  $0004
RXB0D45          .EQ  $0005
RXB0D46          .EQ  $0006
RXB0D47          .EQ  $0007

RB0D40           .EQ  $0000
RB0D41           .EQ  $0001
RB0D42           .EQ  $0002
RB0D43           .EQ  $0003
RB0D44           .EQ  $0004
RB0D45           .EQ  $0005
RB0D46           .EQ  $0006
RB0D47           .EQ  $0007


;----- RXB0D5 Bits -----------------------------------------------------
RXB0D50          .EQ  $0000
RXB0D51          .EQ  $0001
RXB0D52          .EQ  $0002
RXB0D53          .EQ  $0003
RXB0D54          .EQ  $0004
RXB0D55          .EQ  $0005
RXB0D56          .EQ  $0006
RXB0D57          .EQ  $0007

RB0D50           .EQ  $0000
RB0D51           .EQ  $0001
RB0D52           .EQ  $0002
RB0D53           .EQ  $0003
RB0D54           .EQ  $0004
RB0D55           .EQ  $0005
RB0D56           .EQ  $0006
RB0D57           .EQ  $0007


;----- RXB0D6 Bits -----------------------------------------------------
RXB0D60          .EQ  $0000
RXB0D61          .EQ  $0001
RXB0D62          .EQ  $0002
RXB0D63          .EQ  $0003
RXB0D64          .EQ  $0004
RXB0D65          .EQ  $0005
RXB0D66          .EQ  $0006
RXB0D67          .EQ  $0007

RB0D60           .EQ  $0000
RB0D61           .EQ  $0001
RB0D62           .EQ  $0002
RB0D63           .EQ  $0003
RB0D64           .EQ  $0004
RB0D65           .EQ  $0005
RB0D66           .EQ  $0006
RB0D67           .EQ  $0007


;----- RXB0D7 Bits -----------------------------------------------------
RXB0D70          .EQ  $0000
RXB0D71          .EQ  $0001
RXB0D72          .EQ  $0002
RXB0D73          .EQ  $0003
RXB0D74          .EQ  $0004
RXB0D75          .EQ  $0005
RXB0D76          .EQ  $0006
RXB0D77          .EQ  $0007

RB0D70           .EQ  $0000
RB0D71           .EQ  $0001
RB0D72           .EQ  $0002
RB0D73           .EQ  $0003
RB0D74           .EQ  $0004
RB0D75           .EQ  $0005
RB0D76           .EQ  $0006
RB0D77           .EQ  $0007


;----- CANSTAT Bits -----------------------------------------------------
ICODE0           .EQ  $0001
ICODE1           .EQ  $0002
ICODE2           .EQ  $0003
OPMODE0          .EQ  $0005
OPMODE1          .EQ  $0006
OPMODE2          .EQ  $0007


;----- CANCON Bits -----------------------------------------------------
WIN0             .EQ  $0001
WIN1             .EQ  $0002
WIN2             .EQ  $0003
ABAT             .EQ  $0004
REQOP0           .EQ  $0005
REQOP1           .EQ  $0006
REQOP2           .EQ  $0007


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
SEG2PHTS         .EQ  $0007


;----- BRGCON3 Bits -----------------------------------------------------
SEG2PH0          .EQ  $0000
SEG2PH1          .EQ  $0001
SEG2PH2          .EQ  $0002
WAKFIL           .EQ  $0006


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
RXB1OVFL         .EQ  $0006
RXB0OVFL         .EQ  $0007

RX2OVFL          .EQ  $0006
RX1OVFL          .EQ  $0007


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


;----- PORTA Bits -----------------------------------------------------
RA0              .EQ  $0000
RA1              .EQ  $0001
RA2              .EQ  $0002
RA3              .EQ  $0003
RA4              .EQ  $0004
RA5              .EQ  $0005
RA6              .EQ  $0006

AN0              .EQ  $0000
AN1              .EQ  $0001
AN2              .EQ  $0002
AN3              .EQ  $0003
AN4              .EQ  $0005
OSC2             .EQ  $0006

CVREF            .EQ  $0000
VREFM            .EQ  $0002
VREFP            .EQ  $0003
T0CKI            .EQ  $0004
NOT_SS           .EQ  $0005
CLKO             .EQ  $0006

SS               .EQ  $0005

LVDIN            .EQ  $0005


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
CANTX            .EQ  $0002
CANRX            .EQ  $0003
PGM              .EQ  $0005
PGC              .EQ  $0006
PGD              .EQ  $0007


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
SCK              .EQ  $0003
SDI              .EQ  $0004
SDO              .EQ  $0005
TX               .EQ  $0006
RX               .EQ  $0007

T1CKI            .EQ  $0000
CCP1             .EQ  $0002
SCL              .EQ  $0003
SDA              .EQ  $0004
CK               .EQ  $0006
; DT is a reserved word
; DT               .EQ  $0007


;----- LATA Bits -----------------------------------------------------
LATA0            .EQ  $0000
LATA1            .EQ  $0001
LATA2            .EQ  $0002
LATA3            .EQ  $0003
LATA4            .EQ  $0004
LATA5            .EQ  $0005
LATA6            .EQ  $0006


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


;----- DDRA Bits -----------------------------------------------------
TRISA0           .EQ  $0000
TRISA1           .EQ  $0001
TRISA2           .EQ  $0002
TRISA3           .EQ  $0003
TRISA4           .EQ  $0004
TRISA5           .EQ  $0005
TRISA6           .EQ  $0006

RA0              .EQ  $0000
RA1              .EQ  $0001
RA2              .EQ  $0002
RA3              .EQ  $0003
RA4              .EQ  $0004
RA5              .EQ  $0005
RA6              .EQ  $0006


;----- TRISA Bits -----------------------------------------------------
TRISA0           .EQ  $0000
TRISA1           .EQ  $0001
TRISA2           .EQ  $0002
TRISA3           .EQ  $0003
TRISA4           .EQ  $0004
TRISA5           .EQ  $0005
TRISA6           .EQ  $0006

RA0              .EQ  $0000
RA1              .EQ  $0001
RA2              .EQ  $0002
RA3              .EQ  $0003
RA4              .EQ  $0004
RA5              .EQ  $0005
RA6              .EQ  $0006


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


;----- PIE1 Bits -----------------------------------------------------
TMR1IE           .EQ  $0000
TMR2IE           .EQ  $0001
CCP1IE           .EQ  $0002
SSPIE            .EQ  $0003
TXIE             .EQ  $0004
RCIE             .EQ  $0005
ADIE             .EQ  $0006


;----- PIR1 Bits -----------------------------------------------------
TMR1IF           .EQ  $0000
TMR2IF           .EQ  $0001
CCP1IF           .EQ  $0002
SSPIF            .EQ  $0003
TXIF             .EQ  $0004
RCIF             .EQ  $0005
ADIF             .EQ  $0006


;----- IPR1 Bits -----------------------------------------------------
TMR1IP           .EQ  $0000
TMR2IP           .EQ  $0001
CCP1IP           .EQ  $0002
SSPIP            .EQ  $0003
TXIP             .EQ  $0004
RCIP             .EQ  $0005
ADIP             .EQ  $0006


;----- PIE2 Bits -----------------------------------------------------
TMR3IE           .EQ  $0001
LVDIE            .EQ  $0002
BCLIE            .EQ  $0003
EEIE             .EQ  $0004


;----- PIR2 Bits -----------------------------------------------------
TMR3IF           .EQ  $0001
LVDIF            .EQ  $0002
BCLIF            .EQ  $0003
EEIF             .EQ  $0004


;----- IPR2 Bits -----------------------------------------------------
TMR3IP           .EQ  $0001
LVDIP            .EQ  $0002
BCLIP            .EQ  $0003
EEIP             .EQ  $0004


;----- PIE3 Bits -----------------------------------------------------
RXB0IE           .EQ  $0000
RXB1IE           .EQ  $0001
TXB0IE           .EQ  $0002
TXB1IE           .EQ  $0003
TXB2IE           .EQ  $0004
ERRIE            .EQ  $0005
WAKIE            .EQ  $0006
IRXIE            .EQ  $0007

RX0IE            .EQ  $0000
RX1IE            .EQ  $0001
TX0IE            .EQ  $0002
TX1IE            .EQ  $0003
TX2IE            .EQ  $0004
IVRE             .EQ  $0007


;----- PIR3 Bits -----------------------------------------------------
RXB0IF           .EQ  $0000
RXB1IF           .EQ  $0001
TXB0IF           .EQ  $0002
TXB1IF           .EQ  $0003
TXB2IF           .EQ  $0004
ERRIF            .EQ  $0005
WAKIF            .EQ  $0006
IRXIF            .EQ  $0007

RX0IF            .EQ  $0000
RX1IF            .EQ  $0001
TX0IF            .EQ  $0002
TX1IF            .EQ  $0003
TX2IF            .EQ  $0004
IVRF             .EQ  $0007


;----- IPR3 Bits -----------------------------------------------------
RXB0IP           .EQ  $0000
RXB1IP           .EQ  $0001
TXB0IP           .EQ  $0002
TXB1IP           .EQ  $0003
TXB2IP           .EQ  $0004
ERRIP            .EQ  $0005
WAKIP            .EQ  $0006
IRXIP            .EQ  $0007

IVRP             .EQ  $0007


;----- EECON1 Bits -----------------------------------------------------
RD               .EQ  $0000
WR               .EQ  $0001
WREN             .EQ  $0002
WRERR            .EQ  $0003
FREE             .EQ  $0004
CFGS             .EQ  $0006
EEPGD            .EQ  $0007

EEFS             .EQ  $0006


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
RC9              .EQ  $0006

RC8_9            .EQ  $0006

NOT_RC8          .EQ  $0006


;----- TXSTA Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SYNC             .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007

TXD8             .EQ  $0000
TX8_9            .EQ  $0006

NOT_TX8          .EQ  $0006


;----- T3CON Bits -----------------------------------------------------
TMR3ON           .EQ  $0000
TMR3CS           .EQ  $0001
NOT_T3SYNC       .EQ  $0002
T3CCP1           .EQ  $0003
T3ECCP1          .EQ  $0006
RD16             .EQ  $0007

T3INSYNC         .EQ  $0002
T3CKPS0          .EQ  $0004
T3CKPS1          .EQ  $0005

T3SYNC           .EQ  $0002


;----- CCP1CON Bits -----------------------------------------------------
CCP1M0           .EQ  $0000
CCP1M1           .EQ  $0001
CCP1M2           .EQ  $0002
CCP1M3           .EQ  $0003
DC1B0            .EQ  $0004
DC1B1            .EQ  $0005

CCP1Y            .EQ  $0004
CCP1X            .EQ  $0005


;----- ADCON1 Bits -----------------------------------------------------
ADCS2            .EQ  $0006
ADFM             .EQ  $0007

PCFG0            .EQ  $0000
PCFG1            .EQ  $0001
PCFG2            .EQ  $0002
PCFG3            .EQ  $0003


;----- ADCON0 Bits -----------------------------------------------------
ADON             .EQ  $0000
GO_NOT_DONE      .EQ  $0002

DONE             .EQ  $0002
CHS0             .EQ  $0003
CHS1             .EQ  $0004
CHS2             .EQ  $0005
ADCS0            .EQ  $0006
ADCS1            .EQ  $0007

GO_DONE          .EQ  $0002

GO               .EQ  $0002

NOT_DONE         .EQ  $0002


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

I2C_READ         .EQ  $0002
I2C_START        .EQ  $0003
I2C_STOP         .EQ  $0004
I2C_DATA         .EQ  $0005

R                .EQ  $0002
D                .EQ  $0005

READ_WRITE       .EQ  $0002
DATA_ADDRESS     .EQ  $0005

NOT_WRITE        .EQ  $0002
NOT_ADDRESS      .EQ  $0005

NOT_W            .EQ  $0002
NOT_A            .EQ  $0005

R_W              .EQ  $0002
D_A              .EQ  $0005

I2C_DAT          .EQ  $0005


;----- T2CON Bits -----------------------------------------------------
TMR2ON           .EQ  $0002

T2CKPS0          .EQ  $0000
T2CKPS1          .EQ  $0001
TOUTPS0          .EQ  $0003
TOUTPS1          .EQ  $0004
TOUTPS2          .EQ  $0005
TOUTPS3          .EQ  $0006


;----- T1CON Bits -----------------------------------------------------
TMR1ON           .EQ  $0000
TMR1CS           .EQ  $0001
NOT_T1SYNC       .EQ  $0002
T1OSCEN          .EQ  $0003
RD16             .EQ  $0007

T1INSYNC         .EQ  $0002
T1CKPS0          .EQ  $0004
T1CKPS1          .EQ  $0005

T1SYNC           .EQ  $0002


;----- RCON Bits -----------------------------------------------------
NOT_BOR          .EQ  $0000
NOT_POR          .EQ  $0001
NOT_PD           .EQ  $0002
NOT_TO           .EQ  $0003
NOT_RI           .EQ  $0004
IPEN             .EQ  $0007

BOR              .EQ  $0000
POR              .EQ  $0001
PD               .EQ  $0002
TO               .EQ  $0003
RI               .EQ  $0004
NOT_IPEN         .EQ  $0007


;----- WDTCON Bits -----------------------------------------------------
SWDTEN           .EQ  $0000

SWDTE            .EQ  $0000


;----- LVDCON Bits -----------------------------------------------------
LVDEN            .EQ  $0004
IRVST            .EQ  $0005

LVDL0            .EQ  $0000
LVDL1            .EQ  $0001
LVDL2            .EQ  $0002
LVDL3            .EQ  $0003
IVRST            .EQ  $0005


;----- OSCCON Bits -----------------------------------------------------
SCS              .EQ  $0000


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

STKPTR0          .EQ  $0000
STKPTR1          .EQ  $0001
STKPTR2          .EQ  $0002
STKPTR3          .EQ  $0003
STKPTR4          .EQ  $0004
STKOVF           .EQ  $0007

SP0              .EQ  $0000
SP1              .EQ  $0001
SP2              .EQ  $0002
SP3              .EQ  $0003
SP4              .EQ  $0004



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
;     OSC = RC             RC oscillator
;     OSC = EC             EC oscillator w/ OSC2 configured as divide-by-4 clock output
;     OSC = ECIO           EC oscillator w/ OSC2 configured as RA6
;     OSC = HSPLL          HS oscillator with PLL enabled/Clock frequency = (4 x FOSC)
;     OSC = RCIO           RC oscillator w/ OSC2 configured as RA6
;
;   Oscillator System Clock Switch Enable bit:
;     OSCS = ON            Oscillator system clock switch option is enabled (oscillator switching is enabled)
;     OSCS = OFF           Oscillator system clock switch option is disabled (main oscillator is source)
;
;   Power-up Timer Enable bit:
;     PWRT = ON            PWRT enabled
;     PWRT = OFF           PWRT disabled
;
;   Brown-out Reset Enable bit:
;     BOR = OFF            Brown-out Reset disabled
;     BOR = ON             Brown-out Reset enabled
;
;   Brown-out Reset Voltage bits:
;     BORV = 45            VBOR set to 4.5V
;     BORV = 42            VBOR set to 4.2V
;     BORV = 27            VBOR set to 2.7V
;     BORV = 25            VBOR set to 2.5V
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
;
;   Stack Full/Underflow Reset Enable bit:
;     STVR = OFF           Stack Full/Underflow will not cause Reset
;     STVR = ON            Stack Full/Underflow will cause Reset
;
;   Low-Voltage ICSP Enable bit:
;     LVP = OFF            Low-Voltage ICSP disabled
;     LVP = ON             Low-Voltage ICSP enabled
;
;   Background Debugger Enable bit:
;     DEBUG = ON           Background Debugger enabled. RB6 and RB7 are dedicated to In-Circuit Debug.
;     DEBUG = OFF          Background Debugger disabled. RB6 and RB7 configured as general purpose I/O pins.
;
;   Code Protection bit:
;     CP0 = ON             Block 0 (000200-001FFFh) code protected
;     CP0 = OFF            Block 0 (000200-001FFFh) not code protected
;
;   Code Protection bit:
;     CP1 = ON             Block 1 (002000-003FFFh) code protected
;     CP1 = OFF            Block 1 (002000-003FFFh) not code protected
;
;   Code Protection bit:
;     CP2 = ON             Block 2 (004000-005FFFh) code protected
;     CP2 = OFF            Block 2 (004000-005FFFh) not code protected
;
;   Code Protection bit:
;     CP3 = ON             Block 3 (006000-007FFFh) code protected
;     CP3 = OFF            Block 3 (006000-007FFFh) not code protected
;
;   Boot Block Code Protection bit:
;     CPB = ON             Boot Block (000000-0001FFh) code protected
;     CPB = OFF            Boot Block (000000-0001FFh) not code protected
;
;   Data EEPROM Code Protection bit:
;     CPD = ON             Data EEPROM code protected
;     CPD = OFF            Data EEPROM not code protected
;
;   Write Protection bit:
;     WRT0 = ON            Block 0 (000200-001FFFh) write protected
;     WRT0 = OFF           Block 0 (000200-001FFFh) not write protected
;
;   Write Protection bit:
;     WRT1 = ON            Block 1 (002000-003FFFh) write protected
;     WRT1 = OFF           Block 1 (002000-003FFFh) not write protected
;
;   Write Protection bit:
;     WRT2 = ON            Block 2 (004000-005FFFh) write protected
;     WRT2 = OFF           Block 2 (004000-005FFFh) not write protected
;
;   Write Protection bit:
;     WRT3 = ON            Block 3 (006000-007FFFh) write protected
;     WRT3 = OFF           Block 3 (006000-007FFFh) not write protected
;
;   Configuration Register Write Protection bit:
;     WRTC = ON            Configuration registers (300000-3000FFh) write protected
;     WRTC = OFF           Configuration registers (300000-3000FFh) not write protected
;
;   Boot Block Write Protection bit:
;     WRTB = ON            Boot Block (000000-0001FFh) write protected
;     WRTB = OFF           Boot Block (000000-0001FFh) not write protected
;
;   Data EEPROM Write Protection bit:
;     WRTD = ON            Data EEPROM write protected
;     WRTD = OFF           Data EEPROM not write protected
;
;   Table Read Protection bit:
;     EBTR0 = ON           Block 0 (000200-001FFFh) protected from Table Reads executed in other blocks
;     EBTR0 = OFF          Block 0 (000200-001FFFh) not protected from Table Reads executed in other blocks
;
;   Table Read Protection bit:
;     EBTR1 = ON           Block 1 (002000-003FFFh) protected from Table Reads executed in other blocks
;     EBTR1 = OFF          Block 1 (002000-003FFFh) not protected from Table Reads executed in other blocks
;
;   Table Read Protection bit:
;     EBTR2 = ON           Block 2 (004000-005FFFh) protected from Table Reads executed in other blocks
;     EBTR2 = OFF          Block 2 (004000-005FFFh) not protected from Table Reads executed in other blocks
;
;   Table Read Protection bit:
;     EBTR3 = ON           Block 3 (006000-007FFFh) protected from Table Reads executed in other blocks
;     EBTR3 = OFF          Block 3 (006000-007FFFh) not protected from Table Reads executed in other blocks
;
;   Boot Block Table Read Protection bit:
;     EBTRB = ON           Boot Block (000000-0001FFh) protected from Table Reads executed in other blocks
;     EBTRB = OFF          Boot Block (000000-0001FFh) not protected from Table Reads executed in other blocks
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
_CONFIG4L       .EQ  $300006
_CONFIG5L       .EQ  $300008
_CONFIG5H       .EQ  $300009
_CONFIG6L       .EQ  $30000A
_CONFIG6H       .EQ  $30000B
_CONFIG7L       .EQ  $30000C
_CONFIG7H       .EQ  $30000D

;----- CONFIG1H Options --------------------------------------------------
_LP_OSC              .EQ  $F8  LP oscillator
_LP_OSC_1H           .EQ  $F8  LP oscillator
_XT_OSC              .EQ  $F9  XT oscillator
_XT_OSC_1H           .EQ  $F9  XT oscillator
_HS_OSC              .EQ  $FA  HS oscillator
_HS_OSC_1H           .EQ  $FA  HS oscillator
_RC_OSC              .EQ  $FB  RC oscillator
_RC_OSC_1H           .EQ  $FB  RC oscillator
_EC_OSC              .EQ  $FC  EC oscillator w/ OSC2 configured as divide-by-4 clock output
_EC_OSC_1H           .EQ  $FC  EC oscillator w/ OSC2 configured as divide-by-4 clock output
_ECIO_OSC            .EQ  $FD  EC oscillator w/ OSC2 configured as RA6
_ECIO_OSC_1H         .EQ  $FD  EC oscillator w/ OSC2 configured as RA6
_HSPLL_OSC           .EQ  $FE  HS oscillator with PLL enabled/Clock frequency = (4 x FOSC)
_HSPLL_OSC_1H        .EQ  $FE  HS oscillator with PLL enabled/Clock frequency = (4 x FOSC)
_RCIO_OSC            .EQ  $FF  RC oscillator w/ OSC2 configured as RA6
_RCIO_OSC_1H         .EQ  $FF  RC oscillator w/ OSC2 configured as RA6

_OSCS_ON_1H          .EQ  $DF  Oscillator system clock switch option is enabled (oscillator switching is enabled)
_OSCS_OFF_1H         .EQ  $FF  Oscillator system clock switch option is disabled (main oscillator is source)

;----- CONFIG2L Options --------------------------------------------------
_PWRT_ON_2L          .EQ  $FE  PWRT enabled
_PWRT_OFF_2L         .EQ  $FF  PWRT disabled

_BOR_OFF_2L          .EQ  $FD  Brown-out Reset disabled
_BOR_ON_2L           .EQ  $FF  Brown-out Reset enabled

_BORV_45_2L          .EQ  $F3  VBOR set to 4.5V
_BORV_42_2L          .EQ  $F7  VBOR set to 4.2V
_BORV_27_2L          .EQ  $FB  VBOR set to 2.7V
_BORV_25             .EQ  $FF  VBOR set to 2.5V
_BORV_25_2L          .EQ  $FF  VBOR set to 2.5V

;----- CONFIG2H Options --------------------------------------------------
_WDT_OFF_2H          .EQ  $FE  WDT disabled (control is placed on the SWDTEN bit)
_WDT_ON_2H           .EQ  $FF  WDT enabled

_WDTPS_1_2H          .EQ  $F1  1:1
_WDTPS_2_2H          .EQ  $F3  1:2
_WDTPS_4_2H          .EQ  $F5  1:4
_WDTPS_8_2H          .EQ  $F7  1:8
_WDTPS_16_2H         .EQ  $F9  1:16
_WDTPS_32_2H         .EQ  $FB  1:32
_WDTPS_64_2H         .EQ  $FD  1:64
_WDTPS_128_2H        .EQ  $FF  1:128

;----- CONFIG4L Options --------------------------------------------------
_STVR_OFF_4L         .EQ  $FE  Stack Full/Underflow will not cause Reset
_STVR_ON_4L          .EQ  $FF  Stack Full/Underflow will cause Reset

_LVP_OFF_4L          .EQ  $FB  Low-Voltage ICSP disabled
_LVP_ON_4L           .EQ  $FF  Low-Voltage ICSP enabled

_DEBUG_ON_4L         .EQ  $7F  Background Debugger enabled. RB6 and RB7 are dedicated to In-Circuit Debug.
_DEBUG_OFF_4L        .EQ  $FF  Background Debugger disabled. RB6 and RB7 configured as general purpose I/O pins.

;----- CONFIG5L Options --------------------------------------------------
_CP0_ON_5L           .EQ  $FE  Block 0 (000200-001FFFh) code protected
_CP0_OFF_5L          .EQ  $FF  Block 0 (000200-001FFFh) not code protected

_CP1_ON_5L           .EQ  $FD  Block 1 (002000-003FFFh) code protected
_CP1_OFF_5L          .EQ  $FF  Block 1 (002000-003FFFh) not code protected

_CP2_ON_5L           .EQ  $FB  Block 2 (004000-005FFFh) code protected
_CP2_OFF_5L          .EQ  $FF  Block 2 (004000-005FFFh) not code protected

_CP3_ON_5L           .EQ  $F7  Block 3 (006000-007FFFh) code protected
_CP3_OFF_5L          .EQ  $FF  Block 3 (006000-007FFFh) not code protected

;----- CONFIG5H Options --------------------------------------------------
_CPB_ON_5H           .EQ  $BF  Boot Block (000000-0001FFh) code protected
_CPB_OFF_5H          .EQ  $FF  Boot Block (000000-0001FFh) not code protected

_CPD_ON_5H           .EQ  $7F  Data EEPROM code protected
_CPD_OFF_5H          .EQ  $FF  Data EEPROM not code protected

;----- CONFIG6L Options --------------------------------------------------
_WRT0_ON_6L          .EQ  $FE  Block 0 (000200-001FFFh) write protected
_WRT0_OFF_6L         .EQ  $FF  Block 0 (000200-001FFFh) not write protected

_WRT1_ON_6L          .EQ  $FD  Block 1 (002000-003FFFh) write protected
_WRT1_OFF_6L         .EQ  $FF  Block 1 (002000-003FFFh) not write protected

_WRT2_ON_6L          .EQ  $FB  Block 2 (004000-005FFFh) write protected
_WRT2_OFF_6L         .EQ  $FF  Block 2 (004000-005FFFh) not write protected

_WRT3_ON_6L          .EQ  $F7  Block 3 (006000-007FFFh) write protected
_WRT3_OFF_6L         .EQ  $FF  Block 3 (006000-007FFFh) not write protected

;----- CONFIG6H Options --------------------------------------------------
_WRTC_ON_6H          .EQ  $DF  Configuration registers (300000-3000FFh) write protected
_WRTC_OFF_6H         .EQ  $FF  Configuration registers (300000-3000FFh) not write protected

_WRTB_ON_6H          .EQ  $BF  Boot Block (000000-0001FFh) write protected
_WRTB_OFF_6H         .EQ  $FF  Boot Block (000000-0001FFh) not write protected

_WRTD_ON_6H          .EQ  $7F  Data EEPROM write protected
_WRTD_OFF_6H         .EQ  $FF  Data EEPROM not write protected

;----- CONFIG7L Options --------------------------------------------------
_EBTR0_ON_7L         .EQ  $FE  Block 0 (000200-001FFFh) protected from Table Reads executed in other blocks
_EBTR0_OFF_7L        .EQ  $FF  Block 0 (000200-001FFFh) not protected from Table Reads executed in other blocks

_EBTR1_ON_7L         .EQ  $FD  Block 1 (002000-003FFFh) protected from Table Reads executed in other blocks
_EBTR1_OFF_7L        .EQ  $FF  Block 1 (002000-003FFFh) not protected from Table Reads executed in other blocks

_EBTR2_ON_7L         .EQ  $FB  Block 2 (004000-005FFFh) protected from Table Reads executed in other blocks
_EBTR2_OFF_7L        .EQ  $FF  Block 2 (004000-005FFFh) not protected from Table Reads executed in other blocks

_EBTR3_ON_7L         .EQ  $F7  Block 3 (006000-007FFFh) protected from Table Reads executed in other blocks
_EBTR3_OFF_7L        .EQ  $FF  Block 3 (006000-007FFFh) not protected from Table Reads executed in other blocks

;----- CONFIG7H Options --------------------------------------------------
_EBTRB_ON_7H         .EQ  $BF  Boot Block (000000-0001FFh) protected from Table Reads executed in other blocks
_EBTRB_OFF_7H        .EQ  $FF  Boot Block (000000-0001FFh) not protected from Table Reads executed in other blocks


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
