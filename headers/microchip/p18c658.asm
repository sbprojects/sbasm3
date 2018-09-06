;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC18C658 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC18C658 microcontroller.  These names
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
RXF1EID8         .EQ  $0F06
RXF1EIDH         .EQ  $0F06
RXF1EID0         .EQ  $0F07
RXF1EIDL         .EQ  $0F07
RXF2SIDH         .EQ  $0F08
RXF2SIDL         .EQ  $0F09
RXF2EID8         .EQ  $0F0A
RXF2EIDH         .EQ  $0F0A
RXF2EID0         .EQ  $0F0B
RXF2EIDL         .EQ  $0F0B
RXF3SIDH         .EQ  $0F0C
RXF3SIDL         .EQ  $0F0D
RXF3EID8         .EQ  $0F0E
RXF3EIDH         .EQ  $0F0E
RXF3EID0         .EQ  $0F0F
RXF3EIDL         .EQ  $0F0F
RXF4SIDH         .EQ  $0F10
RXF4SIDL         .EQ  $0F11
RXF4EID8         .EQ  $0F12
RXF4EIDH         .EQ  $0F12
RXF4EID0         .EQ  $0F13
RXF4EIDL         .EQ  $0F13
RXF5SIDH         .EQ  $0F14
RXF5SIDL         .EQ  $0F15
RXF5EID8         .EQ  $0F16
RXF5EIDH         .EQ  $0F16
RXF5EID0         .EQ  $0F17
RXF5EIDL         .EQ  $0F17
RXM0SIDH         .EQ  $0F18
RXM0SIDL         .EQ  $0F19
RXM0EID8         .EQ  $0F1A
RXM0EIDH         .EQ  $0F1A
RXM0EID0         .EQ  $0F1B
RXM0EIDL         .EQ  $0F1B
RXM1SIDH         .EQ  $0F1C
RXM1SIDL         .EQ  $0F1D
RXM1EID8         .EQ  $0F1E
RXM1EIDH         .EQ  $0F1E
RXM1EID0         .EQ  $0F1F
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
CANSTATRO3       .EQ  $0F2E
CANSTAT_R04      .EQ  $0F2E
CANSTAT_RO4      .EQ  $0F2E
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
CANSTATRO2       .EQ  $0F3E
CANSTAT_R03      .EQ  $0F3E
CANSTAT_RO3      .EQ  $0F3E
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
CANSTATRO1       .EQ  $0F4E
CANSTAT_R02      .EQ  $0F4E
CANSTAT_RO2      .EQ  $0F4E
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
CANSTATRO0       .EQ  $0F5E
CANSTAT_R01      .EQ  $0F5E
CANSTAT_RO1      .EQ  $0F5E
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
PORTD            .EQ  $0F83
PORTE            .EQ  $0F84
PORTF            .EQ  $0F85
PORTG            .EQ  $0F86
LATA             .EQ  $0F89
LATB             .EQ  $0F8A
LATC             .EQ  $0F8B
LATD             .EQ  $0F8C
LATE             .EQ  $0F8D
LATF             .EQ  $0F8E
LATG             .EQ  $0F8F
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
DDRF             .EQ  $0F97
TRISF            .EQ  $0F97
DDRG             .EQ  $0F98
TRISG            .EQ  $0F98
PIE1             .EQ  $0F9D
PIR1             .EQ  $0F9E
IPR1             .EQ  $0F9F
PIE2             .EQ  $0FA0
PIR2             .EQ  $0FA1
IPR2             .EQ  $0FA2
PIE3             .EQ  $0FA3
PIR3             .EQ  $0FA4
IPR3             .EQ  $0FA5
COM1CON          .EQ  $0FAB
RCSTA            .EQ  $0FAB
COM1STA          .EQ  $0FAC
TXSTA            .EQ  $0FAC
COM1TX           .EQ  $0FAD
TXREG            .EQ  $0FAD
COM1REC          .EQ  $0FAE
RCREG            .EQ  $0FAE
COM1BRG          .EQ  $0FAF
SPBRG            .EQ  $0FAF
PSPCON           .EQ  $0FB0
T3CON            .EQ  $0FB1
TMR3             .EQ  $0FB2
TMR3L            .EQ  $0FB2
TMR3H            .EQ  $0FB3
CMCON            .EQ  $0FB4
CVRCON           .EQ  $0FB5
VRCON            .EQ  $0FB5
CCP2CON          .EQ  $0FBA
CCPR2            .EQ  $0FBB
CCPR2L           .EQ  $0FBB
CCPR2H           .EQ  $0FBC
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


;----- RXF1EID8 Bits -----------------------------------------------------
EID8             .EQ  $0000
EID9             .EQ  $0001
EID10            .EQ  $0002
EID11            .EQ  $0003
EID12            .EQ  $0004
EID13            .EQ  $0005
EID14            .EQ  $0006
EID15            .EQ  $0007


;----- RXF1EIDH Bits -----------------------------------------------------
EID8             .EQ  $0000
EID9             .EQ  $0001
EID10            .EQ  $0002
EID11            .EQ  $0003
EID12            .EQ  $0004
EID13            .EQ  $0005
EID14            .EQ  $0006
EID15            .EQ  $0007


;----- RXF1EID0 Bits -----------------------------------------------------
EID0             .EQ  $0000
EID1             .EQ  $0001
EID2             .EQ  $0002
EID3             .EQ  $0003
EID4             .EQ  $0004
EID5             .EQ  $0005
EID6             .EQ  $0006
EID7             .EQ  $0007


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


;----- RXF2EID8 Bits -----------------------------------------------------
EID8             .EQ  $0000
EID9             .EQ  $0001
EID10            .EQ  $0002
EID11            .EQ  $0003
EID12            .EQ  $0004
EID13            .EQ  $0005
EID14            .EQ  $0006
EID15            .EQ  $0007


;----- RXF2EIDH Bits -----------------------------------------------------
EID8             .EQ  $0000
EID9             .EQ  $0001
EID10            .EQ  $0002
EID11            .EQ  $0003
EID12            .EQ  $0004
EID13            .EQ  $0005
EID14            .EQ  $0006
EID15            .EQ  $0007


;----- RXF2EID0 Bits -----------------------------------------------------
EID0             .EQ  $0000
EID1             .EQ  $0001
EID2             .EQ  $0002
EID3             .EQ  $0003
EID4             .EQ  $0004
EID5             .EQ  $0005
EID6             .EQ  $0006
EID7             .EQ  $0007


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


;----- RXF3EID8 Bits -----------------------------------------------------
EID8             .EQ  $0000
EID9             .EQ  $0001
EID10            .EQ  $0002
EID11            .EQ  $0003
EID12            .EQ  $0004
EID13            .EQ  $0005
EID14            .EQ  $0006
EID15            .EQ  $0007


;----- RXF3EIDH Bits -----------------------------------------------------
EID8             .EQ  $0000
EID9             .EQ  $0001
EID10            .EQ  $0002
EID11            .EQ  $0003
EID12            .EQ  $0004
EID13            .EQ  $0005
EID14            .EQ  $0006
EID15            .EQ  $0007


;----- RXF3EID0 Bits -----------------------------------------------------
EID0             .EQ  $0000
EID1             .EQ  $0001
EID2             .EQ  $0002
EID3             .EQ  $0003
EID4             .EQ  $0004
EID5             .EQ  $0005
EID6             .EQ  $0006
EID7             .EQ  $0007


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


;----- RXF4EID8 Bits -----------------------------------------------------
EID8             .EQ  $0000
EID9             .EQ  $0001
EID10            .EQ  $0002
EID11            .EQ  $0003
EID12            .EQ  $0004
EID13            .EQ  $0005
EID14            .EQ  $0006
EID15            .EQ  $0007


;----- RXF4EIDH Bits -----------------------------------------------------
EID8             .EQ  $0000
EID9             .EQ  $0001
EID10            .EQ  $0002
EID11            .EQ  $0003
EID12            .EQ  $0004
EID13            .EQ  $0005
EID14            .EQ  $0006
EID15            .EQ  $0007


;----- RXF4EID0 Bits -----------------------------------------------------
EID0             .EQ  $0000
EID1             .EQ  $0001
EID2             .EQ  $0002
EID3             .EQ  $0003
EID4             .EQ  $0004
EID5             .EQ  $0005
EID6             .EQ  $0006
EID7             .EQ  $0007


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


;----- RXF5EID8 Bits -----------------------------------------------------
EID8             .EQ  $0000
EID9             .EQ  $0001
EID10            .EQ  $0002
EID11            .EQ  $0003
EID12            .EQ  $0004
EID13            .EQ  $0005
EID14            .EQ  $0006
EID15            .EQ  $0007


;----- RXF5EIDH Bits -----------------------------------------------------
EID8             .EQ  $0000
EID9             .EQ  $0001
EID10            .EQ  $0002
EID11            .EQ  $0003
EID12            .EQ  $0004
EID13            .EQ  $0005
EID14            .EQ  $0006
EID15            .EQ  $0007


;----- RXF5EID0 Bits -----------------------------------------------------
EID0             .EQ  $0000
EID1             .EQ  $0001
EID2             .EQ  $0002
EID3             .EQ  $0003
EID4             .EQ  $0004
EID5             .EQ  $0005
EID6             .EQ  $0006
EID7             .EQ  $0007


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


;----- RXM0EID8 Bits -----------------------------------------------------
EID8             .EQ  $0000
EID9             .EQ  $0001
EID10            .EQ  $0002
EID11            .EQ  $0003
EID12            .EQ  $0004
EID13            .EQ  $0005
EID14            .EQ  $0006
EID15            .EQ  $0007


;----- RXM0EIDH Bits -----------------------------------------------------
EID8             .EQ  $0000
EID9             .EQ  $0001
EID10            .EQ  $0002
EID11            .EQ  $0003
EID12            .EQ  $0004
EID13            .EQ  $0005
EID14            .EQ  $0006
EID15            .EQ  $0007


;----- RXM0EID0 Bits -----------------------------------------------------
EID0             .EQ  $0000
EID1             .EQ  $0001
EID2             .EQ  $0002
EID3             .EQ  $0003
EID4             .EQ  $0004
EID5             .EQ  $0005
EID6             .EQ  $0006
EID7             .EQ  $0007


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


;----- RXM1EID8 Bits -----------------------------------------------------
EID8             .EQ  $0000
EID9             .EQ  $0001
EID10            .EQ  $0002
EID11            .EQ  $0003
EID12            .EQ  $0004
EID13            .EQ  $0005
EID14            .EQ  $0006
EID15            .EQ  $0007


;----- RXM1EIDH Bits -----------------------------------------------------
EID8             .EQ  $0000
EID9             .EQ  $0001
EID10            .EQ  $0002
EID11            .EQ  $0003
EID12            .EQ  $0004
EID13            .EQ  $0005
EID14            .EQ  $0006
EID15            .EQ  $0007


;----- RXM1EID0 Bits -----------------------------------------------------
EID0             .EQ  $0000
EID1             .EQ  $0001
EID2             .EQ  $0002
EID3             .EQ  $0003
EID4             .EQ  $0004
EID5             .EQ  $0005
EID6             .EQ  $0006
EID7             .EQ  $0007


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

EXID             .EQ  $0003


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

DCL0             .EQ  $0000
RTR              .EQ  $0006


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


;----- CANSTATRO3 Bits -----------------------------------------------------
ICODE0           .EQ  $0001
ICODE1           .EQ  $0002
ICODE2           .EQ  $0003
OPMODE0          .EQ  $0005
OPMODE1          .EQ  $0006
OPMODE2          .EQ  $0007


;----- CANSTAT_R04 Bits -----------------------------------------------------
ICODE0           .EQ  $0001
ICODE1           .EQ  $0002
ICODE2           .EQ  $0003
OPMODE0          .EQ  $0005
OPMODE1          .EQ  $0006
OPMODE2          .EQ  $0007


;----- CANSTAT_RO4 Bits -----------------------------------------------------
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

EXID             .EQ  $0003


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

RTR              .EQ  $0006


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


;----- CANSTATRO2 Bits -----------------------------------------------------
ICODE0           .EQ  $0001
ICODE1           .EQ  $0002
ICODE2           .EQ  $0003
OPMODE0          .EQ  $0005
OPMODE1          .EQ  $0006
OPMODE2          .EQ  $0007


;----- CANSTAT_R03 Bits -----------------------------------------------------
ICODE0           .EQ  $0001
ICODE1           .EQ  $0002
ICODE2           .EQ  $0003
OPMODE0          .EQ  $0005
OPMODE1          .EQ  $0006
OPMODE2          .EQ  $0007


;----- CANSTAT_RO3 Bits -----------------------------------------------------
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
EXIDEN           .EQ  $0003
SID0             .EQ  $0005
SID1             .EQ  $0006
SID2             .EQ  $0007

EXID             .EQ  $0003


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

RTR              .EQ  $0006


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


;----- CANSTATRO1 Bits -----------------------------------------------------
ICODE0           .EQ  $0001
ICODE1           .EQ  $0002
ICODE2           .EQ  $0003
OPMODE0          .EQ  $0005
OPMODE1          .EQ  $0006
OPMODE2          .EQ  $0007


;----- CANSTAT_R02 Bits -----------------------------------------------------
ICODE0           .EQ  $0001
ICODE1           .EQ  $0002
ICODE2           .EQ  $0003
OPMODE0          .EQ  $0005
OPMODE1          .EQ  $0006
OPMODE2          .EQ  $0007


;----- CANSTAT_RO2 Bits -----------------------------------------------------
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
RESB0            .EQ  $0004
RESB1            .EQ  $0005
RXRTR            .EQ  $0006

RESBO            .EQ  $0004
RTR              .EQ  $0006


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


;----- CANSTATRO0 Bits -----------------------------------------------------
ICODE0           .EQ  $0001
ICODE1           .EQ  $0002
ICODE2           .EQ  $0003
OPMODE0          .EQ  $0005
OPMODE1          .EQ  $0006
OPMODE2          .EQ  $0007


;----- CANSTAT_R01 Bits -----------------------------------------------------
ICODE0           .EQ  $0001
ICODE1           .EQ  $0002
ICODE2           .EQ  $0003
OPMODE0          .EQ  $0005
OPMODE1          .EQ  $0006
OPMODE2          .EQ  $0007


;----- CANSTAT_RO1 Bits -----------------------------------------------------
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

RX0DBEN          .EQ  $0002


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
RESB0            .EQ  $0004
RESB1            .EQ  $0005
RXRTR            .EQ  $0006

RTR              .EQ  $0006


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

ICOED0           .EQ  $0001


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
TX1EN            .EQ  $0006
TX1SRC           .EQ  $0007


;----- COMSTAT Bits -----------------------------------------------------
EWARN            .EQ  $0000
RXWARN           .EQ  $0001
TXWARN           .EQ  $0002
RXBP             .EQ  $0003
TXBP             .EQ  $0004
TXBO             .EQ  $0005
RXB1OVFL         .EQ  $0006
RXB0OVFL         .EQ  $0007

RX1OVFL          .EQ  $0006
RX0OVFL          .EQ  $0007


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

VREFM            .EQ  $0002
VREFP            .EQ  $0003
T0CKI            .EQ  $0004
SS               .EQ  $0005
CLK0             .EQ  $0006

LVDIN            .EQ  $0005


;----- PORTB Bits -----------------------------------------------------
RB0              .EQ  $0000
RB1              .EQ  $0001
RB2              .EQ  $0002
RB3              .EQ  $0003
RB4              .EQ  $0004
RB5              .EQ  $0005
RB6              .EQ  $0006
RB7              .EQ  $0007

INT0             .EQ  $0000
INT1             .EQ  $0001
INT2             .EQ  $0002
INT3             .EQ  $0003


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


;----- PORTE Bits -----------------------------------------------------
RE0              .EQ  $0000
RE1              .EQ  $0001
RE2              .EQ  $0002
RE3              .EQ  $0003
RE4              .EQ  $0004
RE5              .EQ  $0005
RE6              .EQ  $0006
RE7              .EQ  $0007

NOT_RD           .EQ  $0000
NOT_WR           .EQ  $0001
NOT_CS           .EQ  $0002
CCP2             .EQ  $0007

AN5              .EQ  $0000


;----- PORTF Bits -----------------------------------------------------
RF0              .EQ  $0000
RF1              .EQ  $0001
RF2              .EQ  $0002
RF3              .EQ  $0003
RF4              .EQ  $0004
RF5              .EQ  $0005
RF6              .EQ  $0006
RF7              .EQ  $0007

AN5              .EQ  $0000
AN6              .EQ  $0001
AN7              .EQ  $0002
AN8              .EQ  $0003
AN9              .EQ  $0004
AN10             .EQ  $0005
AN11             .EQ  $0006


;----- PORTG Bits -----------------------------------------------------
RG0              .EQ  $0000
RG1              .EQ  $0001
RG2              .EQ  $0002
RG3              .EQ  $0003
RG4              .EQ  $0004

CANTX1           .EQ  $0000
CANTX2           .EQ  $0001
CANRX            .EQ  $0002


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
LATE3            .EQ  $0003
LATE4            .EQ  $0004
LATE5            .EQ  $0005
LATE6            .EQ  $0006
LATE7            .EQ  $0007


;----- LATF Bits -----------------------------------------------------
LATF0            .EQ  $0000
LATF1            .EQ  $0001
LATF2            .EQ  $0002
LATF3            .EQ  $0003
LATF4            .EQ  $0004
LATF5            .EQ  $0005
LATF6            .EQ  $0006
LATF7            .EQ  $0007


;----- LATG Bits -----------------------------------------------------
LATG0            .EQ  $0000
LATG1            .EQ  $0001
LATG2            .EQ  $0002
LATG3            .EQ  $0003
LATG4            .EQ  $0004


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

RB0              .EQ  $0000
RB1              .EQ  $0001
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

RB0              .EQ  $0000
RB1              .EQ  $0001
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
TRISE3           .EQ  $0003
TRISE4           .EQ  $0004
TRISE5           .EQ  $0005
TRISE6           .EQ  $0006
TRISE7           .EQ  $0007

RE0              .EQ  $0000
RE1              .EQ  $0001
RE2              .EQ  $0002
RE3              .EQ  $0003
RE4              .EQ  $0004
RE5              .EQ  $0005
RE6              .EQ  $0006
RE7              .EQ  $0007


;----- TRISE Bits -----------------------------------------------------
TRISE0           .EQ  $0000
TRISE1           .EQ  $0001
TRISE2           .EQ  $0002
TRISE3           .EQ  $0003
TRISE4           .EQ  $0004
TRISE5           .EQ  $0005
TRISE6           .EQ  $0006
TRISE7           .EQ  $0007

RE0              .EQ  $0000
RE1              .EQ  $0001
RE2              .EQ  $0002
RE3              .EQ  $0003
RE4              .EQ  $0004
RE5              .EQ  $0005
RE6              .EQ  $0006
RE7              .EQ  $0007


;----- DDRF Bits -----------------------------------------------------
TRISF0           .EQ  $0000
TRISF1           .EQ  $0001
TRISF2           .EQ  $0002
TRISF3           .EQ  $0003
TRISF4           .EQ  $0004
TRISF5           .EQ  $0005
TRISF6           .EQ  $0006
TRISF7           .EQ  $0007

RF0              .EQ  $0000
RF1              .EQ  $0001
RF2              .EQ  $0002
RF3              .EQ  $0003
RF4              .EQ  $0004
RF5              .EQ  $0005
RF6              .EQ  $0006
RF7              .EQ  $0007


;----- TRISF Bits -----------------------------------------------------
TRISF0           .EQ  $0000
TRISF1           .EQ  $0001
TRISF2           .EQ  $0002
TRISF3           .EQ  $0003
TRISF4           .EQ  $0004
TRISF5           .EQ  $0005
TRISF6           .EQ  $0006
TRISF7           .EQ  $0007

RF0              .EQ  $0000
RF1              .EQ  $0001
RF2              .EQ  $0002
RF3              .EQ  $0003
RF4              .EQ  $0004
RF5              .EQ  $0005
RF6              .EQ  $0006
RF7              .EQ  $0007


;----- DDRG Bits -----------------------------------------------------
TRISG0           .EQ  $0000
TRISG1           .EQ  $0001
TRISG2           .EQ  $0002
TRISG3           .EQ  $0003
TRISG4           .EQ  $0004

RG0              .EQ  $0000
RG1              .EQ  $0001
RG2              .EQ  $0002
RG3              .EQ  $0003
RG4              .EQ  $0004


;----- TRISG Bits -----------------------------------------------------
TRISG0           .EQ  $0000
TRISG1           .EQ  $0001
TRISG2           .EQ  $0002
TRISG3           .EQ  $0003
TRISG4           .EQ  $0004

RG0              .EQ  $0000
RG1              .EQ  $0001
RG2              .EQ  $0002
RG3              .EQ  $0003
RG4              .EQ  $0004


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


;----- PIE2 Bits -----------------------------------------------------
CCP2IE           .EQ  $0000
TMR3IE           .EQ  $0001
LVDIE            .EQ  $0002
BCLIE            .EQ  $0003
CMIE             .EQ  $0006


;----- PIR2 Bits -----------------------------------------------------
CCP2IF           .EQ  $0000
TMR3IF           .EQ  $0001
LVDIF            .EQ  $0002
BCLIF            .EQ  $0003
CMIF             .EQ  $0006


;----- IPR2 Bits -----------------------------------------------------
CCP2IP           .EQ  $0000
TMR3IP           .EQ  $0001
LVDIP            .EQ  $0002
BCLIP            .EQ  $0003
CMIP             .EQ  $0006


;----- PIE3 Bits -----------------------------------------------------
RXB0IE           .EQ  $0000
RXB1IE           .EQ  $0001
TXB0IE           .EQ  $0002
TXB1IE           .EQ  $0003
TXB2IE           .EQ  $0004
ERRIE            .EQ  $0005
WAKIE            .EQ  $0006
IRXIE            .EQ  $0007


;----- PIR3 Bits -----------------------------------------------------
RXB0IF           .EQ  $0000
RXB1IF           .EQ  $0001
TXB0IF           .EQ  $0002
TXB1IF           .EQ  $0003
TXB2IF           .EQ  $0004
ERRIF            .EQ  $0005
WAKIF            .EQ  $0006
IRXIF            .EQ  $0007


;----- IPR3 Bits -----------------------------------------------------
RXB0IP           .EQ  $0000
RXB1IP           .EQ  $0001
TXB0IP           .EQ  $0002
TXB1IP           .EQ  $0003
TXB2IP           .EQ  $0004
ERRIP            .EQ  $0005
WAKIP            .EQ  $0006
IRXIP            .EQ  $0007


;----- COM1CON Bits -----------------------------------------------------
RX9D             .EQ  $0000
OERR             .EQ  $0001
FERR             .EQ  $0002
ADDEN            .EQ  $0003
CREN             .EQ  $0004
SREN             .EQ  $0005
RX9              .EQ  $0006
SPEN             .EQ  $0007

ADEN             .EQ  $0003


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


;----- COM1STA Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SYNC             .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007


;----- TXSTA Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SYNC             .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007


;----- PSPCON Bits -----------------------------------------------------
PSPMODE          .EQ  $0004
IBOV             .EQ  $0005
OBF              .EQ  $0006
IBF              .EQ  $0007


;----- T3CON Bits -----------------------------------------------------
TMR3ON           .EQ  $0000
TMR3CS           .EQ  $0001
NOT_T3SYNC       .EQ  $0002
T3CCP1           .EQ  $0003
T3CCP2           .EQ  $0006
RD16             .EQ  $0007

T3SYNC           .EQ  $0002
T3CKPS0          .EQ  $0004
T3CKPS1          .EQ  $0005

T3INSYNC         .EQ  $0002


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
VRSS             .EQ  $0004
VRR              .EQ  $0005
VROEN            .EQ  $0006
VREN             .EQ  $0007

VR0              .EQ  $0000
VR1              .EQ  $0001
VR2              .EQ  $0002
VR3              .EQ  $0003
CRR              .EQ  $0005
VROE             .EQ  $0006
CVREN            .EQ  $0007


;----- VRCON Bits -----------------------------------------------------
VRSS             .EQ  $0004
VRR              .EQ  $0005
VROEN            .EQ  $0006
VREN             .EQ  $0007

VR0              .EQ  $0000
VR1              .EQ  $0001
VR2              .EQ  $0002
VR3              .EQ  $0003
CRR              .EQ  $0005
VROE             .EQ  $0006
CVREN            .EQ  $0007


;----- CCP2CON Bits -----------------------------------------------------
CCP2M0           .EQ  $0000
CCP2M1           .EQ  $0001
CCP2M2           .EQ  $0002
CCP2M3           .EQ  $0003
DC2B0            .EQ  $0004
DC2B1            .EQ  $0005

CCPM3            .EQ  $0003
CCP2Y            .EQ  $0004
CCP2X            .EQ  $0005

DCCPX            .EQ  $0005


;----- CCP1CON Bits -----------------------------------------------------
CCP1M0           .EQ  $0000
CCP1M1           .EQ  $0001
CCP1M2           .EQ  $0002
CCP1M3           .EQ  $0003
DC1B0            .EQ  $0004
DC1B1            .EQ  $0005

CCPM3            .EQ  $0003
CCP1Y            .EQ  $0004
CCP1X            .EQ  $0005


;----- ADCON2 Bits -----------------------------------------------------
ADFM             .EQ  $0007

ADCS0            .EQ  $0000
ADCS1            .EQ  $0001
ADCS2            .EQ  $0002


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

GO               .EQ  $0001
CHS0             .EQ  $0002
CHS1             .EQ  $0003
CHS2             .EQ  $0004
CHS3             .EQ  $0005

NOT_DONE         .EQ  $0001

DONE             .EQ  $0001

GO_DONE          .EQ  $0001


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
LWRT             .EQ  $0006
IPEN             .EQ  $0007

BOR              .EQ  $0000
POR              .EQ  $0001
PD               .EQ  $0002
TO               .EQ  $0003
RI               .EQ  $0004
NOT_LWRT         .EQ  $0006
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
T0PS3            .EQ  $0003
T016BIT          .EQ  $0006


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
;   Code Protection bits:
;     CP = ON              All of program memory code protected
;     CP = OFF             Program memory code protection off
;
;   Oscillator Selection bits:
;     OSC = LP             LP oscillator
;     OSC = XT             XT oscillator
;     OSC = HS             HS oscillator
;     OSC = RC             RC oscillator
;     OSC = EC             EC oscillator w/ OSC2 configured as divide by 4 clock output
;     OSC = ECIO           EC oscillator w/ OSC2 configured as RA6
;     OSC = HSPLL          HS4 oscillator with PLL enabled/Clock frequency = (4 x Fosc)
;     OSC = RCIO           RC oscillator w/ OSC2 configured as RA6
;
;   Oscillator System Clock Switch Enable bit:
;     OSCS = ON            Oscillator system clock switch option is enabled (Oscillator switching is enabled)
;     OSCS = OFF           Oscillator system clock switch option is disabled (Main oscillator is source)
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
;   Stack Full/Underflow RESET Enable bit:
;     STVR = OFF           Stack Full/Underflow will not cause RESET
;     STVR = ON            Stack Full/Underflow will cause RESET
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
;   CONFIG4L        300006h
;
;==========================================================================

; The following is an assignment of address values for all of the
; configuration registers for the purpose of table reads
_CONFIG0        .EQ  $300000
_CONFIG1        .EQ  $300001
_CONFIG2        .EQ  $300002
_CONFIG3        .EQ  $300003
_CONFIG6        .EQ  $300006

;----- CONFIG1L Options --------------------------------------------------
_CP_ON_0             .EQ  $00  All of program memory code protected
_CP_OFF_0            .EQ  $FF  Program memory code protection off

;----- CONFIG1H Options --------------------------------------------------
_LP_OSC_1            .EQ  $F8  LP oscillator
_XT_OSC_1            .EQ  $F9  XT oscillator
_HS_OSC_1            .EQ  $FA  HS oscillator
_RC_OSC_1            .EQ  $FB  RC oscillator
_EC_OSC_1            .EQ  $FC  EC oscillator w/ OSC2 configured as divide by 4 clock output
_ECIO_OSC_1          .EQ  $FD  EC oscillator w/ OSC2 configured as RA6
_HSPLL_OSC_1         .EQ  $FE  HS4 oscillator with PLL enabled/Clock frequency = (4 x Fosc)
_RCIO_OSC_1          .EQ  $FF  RC oscillator w/ OSC2 configured as RA6

_OSCS_ON_1           .EQ  $DF  Oscillator system clock switch option is enabled (Oscillator switching is enabled)
_OSCS_OFF_1          .EQ  $FF  Oscillator system clock switch option is disabled (Main oscillator is source)

;----- CONFIG2L Options --------------------------------------------------
_PWRT_ON_2           .EQ  $FE  PWRT enabled
_PWRT_OFF_2          .EQ  $FF  PWRT disabled

_BOR_OFF_2           .EQ  $FD  Brown-out Reset disabled
_BOR_ON_2            .EQ  $FF  Brown-out Reset enabled

_BORV_45_2           .EQ  $F3  VBOR set to 4.5V
_BORV_42_2           .EQ  $F7  VBOR set to 4.2V
_BORV_27_2           .EQ  $FB  VBOR set to 2.7V
_BORV_25_2           .EQ  $FF  VBOR set to 2.5V

;----- CONFIG2H Options --------------------------------------------------
_WDT_OFF_3           .EQ  $FE  WDT disabled (control is placed on the SWDTEN bit)
_WDT_ON_3            .EQ  $FF  WDT enabled

_WDTPS_1_3           .EQ  $F1  1:1
_WDTPS_2_3           .EQ  $F3  1:2
_WDTPS_4_3           .EQ  $F5  1:4
_WDTPS_8_3           .EQ  $F7  1:8
_WDTPS_16_3          .EQ  $F9  1:16
_WDTPS_32_3          .EQ  $FB  1:32
_WDTPS_64_3          .EQ  $FD  1:64
_WDTPS_128_3         .EQ  $FF  1:128

;----- CONFIG4L Options --------------------------------------------------
_STVR_OFF_6          .EQ  $FE  Stack Full/Underflow will not cause RESET
_STVR_ON_6           .EQ  $FF  Stack Full/Underflow will cause RESET


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
