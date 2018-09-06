;---------------------------------------------------------------------------
;   def8051.asm
;
;   Definition file for 8051 Microcontroller
;
;---------------------------------------------------------------------------

            .CR     8051

;---------------------------------------------------------------------------
; Constants
;---------------------------------------------------------------------------

MAX_RAM     =       07FH        Last internal RAM address
STACK_INIT  =       06FH        Allows 16 bytes of stack space (070H..07FH)         

;---------------------------------------------------------------------------
; SFR Registers
;---------------------------------------------------------------------------

P0          .EQ     080H        Port 0
SP          .EQ     081H        Stack Pointer
DPL         .EQ     082H        DPTR Low byte
DPH         .EQ     083H        DPTR High Byte
PCON        .EQ     087H        Power Control
TCON        .EQ     088H        Timer/Counter Control
TMOD        .EQ     089H        Timer/counter Mode Control
TL0         .EQ     08AH        Timer/Counter 0 Low byte
TL1         .EQ     08BH        Timer/Counter 1 Low byte
TH0         .EQ     08CH        Timer/Counter 0 High byte
TH1         .EQ     08DH        Timer/Counter 1 High byte
P1          .EQ     090H        Port 1
SCON        .EQ     098H        Serial Control
SBUF        .EQ     099H        Serial Data Buffer
P2          .EQ     0A0H        Port 2
IE          .EQ     0A8H        Interrupt Enable Control
P3          .EQ     0B0H        Port 3
IP          .EQ     0B8H        Interrupt Priority Control
PSW         .EQ     0D0H        Program Status Word
ACC         .EQ     0E0H        Accumulator
B           .EQ     0F0H        Register B

;---------------------------------------------------------------------------
; SFR Flags
;---------------------------------------------------------------------------

CY          .EQ     PSW.7       Carry flag
AC          .EQ     PSW.6       Axiliary carry flag
F0          .EQ     PSW.5       General purpose flag
RS1         .EQ     PSW.4       Register select bit 1
RS0         .EQ     PSW.3       Register select bit 0
OV          .EQ     PSW.2       Overflow flag
F1          .EQ     PSW.1       General purpose flag
P           .EQ     PSW.0       Parity flag (1 if ACC has odd number of 1's)

EA          .EQ     IE.7        Disable all interrupts if EA = 0
ET2         .EQ     IE.5        Enable T2 interrupt
ES          .EQ     IE.4        Enable Serial Port interrupt
ET1         .EQ     IE.3        Enable Timer 1 overflow interrupt
EX1         .EQ     IE.2        Enable External interrupt 1
ET0         .EQ     IE.1        Enable Timer 0 overflow interrupt
EX0         .EQ     IE.0        Enable External interrupt 0

PT2         .EQ     IP.5        Timer 2 interrupt priority level
PS          .EQ     IP.4        Serial Port interrupt priority level
PT1         .EQ     IP.3        Timer 1 interrupt priority level
PX1         .EQ     IP.2        External interrupt 1 priority level
PT0         .EQ     IP.1        Timer 0 interrupt priority level
PX0         .EQ     IP.0        External interrupt 2 priority level

TF1         .EQ     TCON.7      Timer 1 overflow flag
TR1         .EQ     TCON.6      Timer 1 run control bit
TF0         .EQ     TCON.5      Timer 0 overflow flag
TR0         .EQ     TCON.4      Timer 0 run control bit
IE1         .EQ     TCON.3      External interrupt 1 edge flag
IT1         .EQ     TCON.2      Interrupt 1 type control bit
IE0         .EQ     TCON.1      External interrupt 0 edge flag
IT0         .EQ     TCON.0      Interrupt 0 type control bit

SM0         .EQ     SCON.7      Serial port mode specifier
SM1         .EQ     SCON.6      Serial port mode specifier
SM2         .EQ     SCON.5      Enables multi processor communication feature
REN         .EQ     SCON.4      Enable receiver
TB8         .EQ     SCON.3      The 9th bit used for 9-bit data transmit mode
RB8         .EQ     SCON.2      The 9th bit used for 9-bit data receive mode
T1          .EQ     SCON.1      Transmit interrupt flag
R1          .EQ     SCON.0      Receive interrupt flag


