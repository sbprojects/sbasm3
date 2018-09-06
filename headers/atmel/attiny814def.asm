;*************************************************************************
;* A P P L I C A T I O N   N O T E   F O R   T H E   A V R   F A M I L Y
;*
;* Number            : AVR000
;* File Name         : ATtiny814def.inc
;* Title             : Register/Bit Definitions for the ATtiny814
;* Created           : 2016-09-29 14:07
;* Version           : 1.00
;* Support e-mail    : avr@atmel.com
;* Target MCU        : ATtiny814
;*
;* DESCRIPTION
;* When including this file in the assembly program file, all I/O register
;* names and I/O register bit names appearing in the data book can be used.
;* In addition, the six registers forming the three data pointers X, Y and
;* Z have been assigned names XL - ZH. Highest RAM address for Internal
;* SRAM is also defined
;*
;*************************************************************************




; ***** SPECIFY DEVICE ***************************************************
; device	ATtiny814


SIGNATURE_000	= 0x1E
SIGNATURE_001	= 0x93
SIGNATURE_002	= 0x22

                .CR     avr
                .FA     enhanced128k
				.MS		$1000

; ***** ABSOLUTE I/O REGISTER LOCATIONS **********************************


;*************************************************************************
;** AC0 - Analog Comparator
;*************************************************************************

AC0_CTRLA = 1648                    ; Control A
AC0_MUXCTRLA = 1650                 ; Mux Control A
AC0_INTCTRL = 1654                  ; Interrupt Control
AC0_STATUS = 1655                   ; Status

;*************************************************************************
;** ADC0 - Analog to Digital Converter
;*************************************************************************

ADC0_CTRLA = 1536                   ; Control A
ADC0_CTRLB = 1537                   ; Control B
ADC0_CTRLC = 1538                   ; Control C
ADC0_CTRLD = 1539                   ; Control D
ADC0_CTRLE = 1540                   ; Control E
ADC0_SAMPCTRL = 1541                ; Sample Control
ADC0_MUXPOS = 1542                  ; Positive mux input
ADC0_COMMAND = 1544                 ; Command
ADC0_EVCTRL = 1545                  ; Event Control
ADC0_INTCTRL = 1546                 ; Interrupt Control
ADC0_INTFLAGS = 1547                ; Interrupt Flags
ADC0_DBGCTRL = 1548                 ; Debug Control
ADC0_TEMP = 1549                    ; Temporary Data
ADC0_RES = 1552                     ; ADC Accumulator Result
ADC0_WINLT = 1554                   ; Window comparator low threshold
ADC0_WINHT = 1556                   ; Window comparator high threshold
ADC0_CALIB = 1558                   ; Calibration

;*************************************************************************
;** BOD - Bod interface
;*************************************************************************

BOD_CTRLA = 128                     ; Control A
BOD_CTRLB = 129                     ; Control B
BOD_VLMCTRLA = 136                  ; Voltage level monitor Control
BOD_INTCTRL = 137                   ; Voltage level monitor interrupt Control
BOD_INTFLAGS = 138                  ; Voltage level monitor interrupt Flags
BOD_STATUS = 139                    ; Voltage level monitor status

;*************************************************************************
;** CCL - Configurable Custom Logic
;*************************************************************************

CCL_CTRLA = 448                     ; Control Register A
CCL_SEQCTRL0 = 449                  ; Sequential Control 0
CCL_LUT0CTRLA = 453                 ; LUT Control 0 A
CCL_LUT0CTRLB = 454                 ; LUT Control 0 B
CCL_LUT0CTRLC = 455                 ; LUT Control 0 C
CCL_TRUTH0 = 456                    ; Truth 0
CCL_LUT1CTRLA = 457                 ; LUT Control 1 A
CCL_LUT1CTRLB = 458                 ; LUT Control 1 B
CCL_LUT1CTRLC = 459                 ; LUT Control 1 C
CCL_TRUTH1 = 460                    ; Truth 1

;*************************************************************************
;** CLKCTRL - Clock controller
;*************************************************************************

CLKCTRL_MCLKCTRLA = 96              ; MCLK Control A
CLKCTRL_MCLKCTRLB = 97              ; MCLK Control B
CLKCTRL_MCLKLOCK = 98               ; MCLK Lock
CLKCTRL_MCLKSTATUS = 99             ; MCLK Status
CLKCTRL_OSC20MCTRLA = 112           ; OSC20M Control A
CLKCTRL_OSC20MCALIBA = 113          ; OSC20M Calibration A
CLKCTRL_OSC20MCALIBB = 114          ; OSC20M Calibration B
CLKCTRL_OSC32KCTRLA = 120           ; OSC32K Control A
CLKCTRL_XOSC32KCTRLA = 124          ; XOSC32K Control A

;*************************************************************************
;** CPU - CPU
;*************************************************************************

CPU_CCP = 52                        ; Configuration Change Protection
CPU_SPL = 61                        ; Stack Pointer Low
CPU_SPH = 62                        ; Stack Pointer High
CPU_SREG = 63                       ; Status Register

;*************************************************************************
;** CPUINT - Interrupt Controller
;*************************************************************************

CPUINT_CTRLA = 272                  ; Control A
CPUINT_STATUS = 273                 ; Status
CPUINT_LVL0PRI = 274                ; Interrupt Level 0 Priority
CPUINT_LVL1VEC = 275                ; Interrupt Level 1 Priority Vector

;*************************************************************************
;** CRCSCAN - CRCSCAN
;*************************************************************************

CRCSCAN_CTRLA = 288                 ; Control A
CRCSCAN_CTRLB = 289                 ; Control B
CRCSCAN_STATUS = 290                ; Status

;*************************************************************************
;** DAC0 - Digital to Analog Converter
;*************************************************************************

DAC0_CTRLA = 1664                   ; Control Register A
DAC0_DATA = 1665                    ; DATA Register

;*************************************************************************
;** EVSYS - Event System
;*************************************************************************

EVSYS_ASYNCSTROBE = 384             ; Asynchronous Strobe
EVSYS_SYNCSTROBE = 385              ; Synchronous Strobe
EVSYS_ASYNCCH0 = 386                ; Asynchronous Multiplexer Channel 0
EVSYS_ASYNCCH1 = 387                ; Asynchronous Multiplexer Channel 1
EVSYS_ASYNCCH2 = 388                ; Asynchronous Multiplexer Channel 2
EVSYS_ASYNCCH3 = 389                ; Asynchronous Multiplexer Channel 3
EVSYS_SYNCCH0 = 394                 ; Synchronous User Selection Ch  0
EVSYS_SYNCCH1 = 395                 ; Synchronous Multiplexer Channel 1
EVSYS_ASYNCUSER0 = 402              ; Asynchronous User Selection Ch 0 - TCB0
EVSYS_ASYNCUSER1 = 403              ; Asynchronous User Selection Ch 1 - ADC0
EVSYS_ASYNCUSER2 = 404              ; Asynchronous User Selection Ch 2 - CCL LUT0 Event 0
EVSYS_ASYNCUSER3 = 405              ; Asynchronous User Selection Ch 3 - CCL LUT1 Event 0
EVSYS_ASYNCUSER4 = 406              ; Asynchronous User Selection Ch 4 - CCL LUT0 Event 1
EVSYS_ASYNCUSER5 = 407              ; Asynchronous User Selection Ch 5 - CCL LUT1 Event 1
EVSYS_ASYNCUSER6 = 408              ; Asynchronous User Selection Ch 6 - TCD0 Event 0
EVSYS_ASYNCUSER7 = 409              ; Asynchronous User Selection Ch 7 - TCD0 Event 1
EVSYS_ASYNCUSER8 = 410              ; Asynchronous Multiplexer User 8 - Event Out 0
EVSYS_ASYNCUSER9 = 411              ; Asynchronous User Selection Ch 9 - Event Out 1
EVSYS_ASYNCUSER10 = 412             ; Asynchronous User Selection Ch 0 - Event Out 2
EVSYS_SYNCUSER0 = 418               ; Synchronous User Ch 0 - TCA0
EVSYS_SYNCUSER1 = 419               ; Synchronous User Ch 1 - USART0

;*************************************************************************
;** FUSE - Fuses
;*************************************************************************

FUSE_WDTCFG = 4736                  ; Watchdog Configuration
FUSE_BODCFG = 4737                  ; BOD Configuration
FUSE_OSCCFG = 4738                  ; Oscillator Configuration
FUSE_TCD0CFG = 4740                 ; TCD0 Configuration
FUSE_SYSCFG0 = 4741                 ; System Configuration 0
FUSE_SYSCFG1 = 4742                 ; System Configuration 1
FUSE_APPEND = 4743                  ; Application Code Section End
FUSE_BOOTEND = 4744                 ; Boot Section End

;*************************************************************************
;** GPIO - General Purpose IO
;*************************************************************************

GPIO_GPIOR0 = 28                    ; General Purpose IO Register 0
GPIO_GPIOR1 = 29                    ; General Purpose IO Register 1
GPIO_GPIOR2 = 30                    ; General Purpose IO Register 2
GPIO_GPIOR3 = 31                    ; General Purpose IO Register 3

;*************************************************************************
;** LOCKBIT - Lockbit
;*************************************************************************

LOCKBIT_LOCKBIT = 4746              ; Lock bits

;*************************************************************************
;** NVMCTRL - Non-volatile Memory Controller
;*************************************************************************

NVMCTRL_CTRLA = 4096                ; Control A
NVMCTRL_CTRLB = 4097                ; Control B
NVMCTRL_STATUS = 4098               ; Status
NVMCTRL_INTCTRL = 4099              ; Interrupt Control
NVMCTRL_INTFLAGS = 4100             ; Interrupt Flags
NVMCTRL_DATA = 4102                 ; Data
NVMCTRL_ADDR = 4104                 ; Address

;*************************************************************************
;** PORTA - I/O Ports
;*************************************************************************

PORTA_DIR = 1024                    ; Data Direction
PORTA_DIRSET = 1025                 ; Data Direction Set
PORTA_DIRCLR = 1026                 ; Data Direction Clear
PORTA_DIRTGL = 1027                 ; Data Direction Toggle
PORTA_OUT = 1028                    ; Output Value
PORTA_OUTSET = 1029                 ; Output Value Set
PORTA_OUTCLR = 1030                 ; Output Value Clear
PORTA_OUTTGL = 1031                 ; Output Value Toggle
PORTA_IN = 1032                     ; Input Value
PORTA_INTFLAGS = 1033               ; Interrupt Flags
PORTA_PIN0CTRL = 1040               ; Pin 0 Control
PORTA_PIN1CTRL = 1041               ; Pin 1 Control
PORTA_PIN2CTRL = 1042               ; Pin 2 Control
PORTA_PIN3CTRL = 1043               ; Pin 3 Control
PORTA_PIN4CTRL = 1044               ; Pin 4 Control
PORTA_PIN5CTRL = 1045               ; Pin 5 Control
PORTA_PIN6CTRL = 1046               ; Pin 6 Control
PORTA_PIN7CTRL = 1047               ; Pin 7 Control

;*************************************************************************
;** PORTB - I/O Ports
;*************************************************************************

PORTB_DIR = 1056                    ; Data Direction
PORTB_DIRSET = 1057                 ; Data Direction Set
PORTB_DIRCLR = 1058                 ; Data Direction Clear
PORTB_DIRTGL = 1059                 ; Data Direction Toggle
PORTB_OUT = 1060                    ; Output Value
PORTB_OUTSET = 1061                 ; Output Value Set
PORTB_OUTCLR = 1062                 ; Output Value Clear
PORTB_OUTTGL = 1063                 ; Output Value Toggle
PORTB_IN = 1064                     ; Input Value
PORTB_INTFLAGS = 1065               ; Interrupt Flags
PORTB_PIN0CTRL = 1072               ; Pin 0 Control
PORTB_PIN1CTRL = 1073               ; Pin 1 Control
PORTB_PIN2CTRL = 1074               ; Pin 2 Control
PORTB_PIN3CTRL = 1075               ; Pin 3 Control
PORTB_PIN4CTRL = 1076               ; Pin 4 Control
PORTB_PIN5CTRL = 1077               ; Pin 5 Control
PORTB_PIN6CTRL = 1078               ; Pin 6 Control
PORTB_PIN7CTRL = 1079               ; Pin 7 Control

;*************************************************************************
;** PORTC - I/O Ports
;*************************************************************************

PORTC_DIR = 1088                    ; Data Direction
PORTC_DIRSET = 1089                 ; Data Direction Set
PORTC_DIRCLR = 1090                 ; Data Direction Clear
PORTC_DIRTGL = 1091                 ; Data Direction Toggle
PORTC_OUT = 1092                    ; Output Value
PORTC_OUTSET = 1093                 ; Output Value Set
PORTC_OUTCLR = 1094                 ; Output Value Clear
PORTC_OUTTGL = 1095                 ; Output Value Toggle
PORTC_IN = 1096                     ; Input Value
PORTC_INTFLAGS = 1097               ; Interrupt Flags
PORTC_PIN0CTRL = 1104               ; Pin 0 Control
PORTC_PIN1CTRL = 1105               ; Pin 1 Control
PORTC_PIN2CTRL = 1106               ; Pin 2 Control
PORTC_PIN3CTRL = 1107               ; Pin 3 Control
PORTC_PIN4CTRL = 1108               ; Pin 4 Control
PORTC_PIN5CTRL = 1109               ; Pin 5 Control
PORTC_PIN6CTRL = 1110               ; Pin 6 Control
PORTC_PIN7CTRL = 1111               ; Pin 7 Control

;*************************************************************************
;** PORTMUX - Port Multiplexer
;*************************************************************************

PORTMUX_CTRLA = 512                 ; Port Multiplexer Control A
PORTMUX_CTRLB = 513                 ; Port Multiplexer Control B
PORTMUX_CTRLC = 514                 ; Port Multiplexer Control C
PORTMUX_CTRLD = 515                 ; Port Multiplexer Control D

;*************************************************************************
;** RSTCTRL - Reset controller
;*************************************************************************

RSTCTRL_RSTFR = 64                  ; Reset Flags
RSTCTRL_SWRR = 65                   ; Software Reset

;*************************************************************************
;** RTC - Real-Time Counter
;*************************************************************************

RTC_CTRLA = 320                     ; Control A
RTC_STATUS = 321                    ; Status
RTC_INTCTRL = 322                   ; Interrupt Control
RTC_INTFLAGS = 323                  ; Interrupt Flags
RTC_TEMP = 324                      ; Temporary
RTC_DBGCTRL = 325                   ; Debug control
RTC_CLKSEL = 327                    ; Clock Select
RTC_CNT = 328                       ; Counter
RTC_PER = 330                       ; Period
RTC_CMP = 332                       ; Compare
RTC_PITCTRLA = 336                  ; PIT Control A
RTC_PITSTATUS = 337                 ; PIT Status
RTC_PITINTCTRL = 338                ; PIT Interrupt Control
RTC_PITINTFLAGS = 339               ; PIT Interrupt Flags
RTC_PITDBGCTRL = 341                ; PIT Debug control

;*************************************************************************
;** SIGROW - Signature row
;*************************************************************************

SIGROW_DEVICEID0 = 4352             ; Device ID Byte 0
SIGROW_DEVICEID1 = 4353             ; Device ID Byte 1
SIGROW_DEVICEID2 = 4354             ; Device ID Byte 2
SIGROW_SERNUM0 = 4355               ; Serial Number Byte 0
SIGROW_SERNUM1 = 4356               ; Serial Number Byte 1
SIGROW_SERNUM2 = 4357               ; Serial Number Byte 2
SIGROW_SERNUM3 = 4358               ; Serial Number Byte 3
SIGROW_SERNUM4 = 4359               ; Serial Number Byte 4
SIGROW_SERNUM5 = 4360               ; Serial Number Byte 5
SIGROW_SERNUM6 = 4361               ; Serial Number Byte 6
SIGROW_SERNUM7 = 4362               ; Serial Number Byte 7
SIGROW_SERNUM8 = 4363               ; Serial Number Byte 8
SIGROW_SERNUM9 = 4364               ; Serial Number Byte 9
SIGROW_TEMPSENSE0 = 4384            ; Temperature Sensor Calibration Byte 0
SIGROW_TEMPSENSE1 = 4385            ; Temperature Sensor Calibration Byte 1

;*************************************************************************
;** SLPCTRL - Sleep Controller
;*************************************************************************

SLPCTRL_CTRLA = 80                  ; Control

;*************************************************************************
;** SPI0 - Serial Peripheral Interface
;*************************************************************************

SPI0_CTRLA = 2080                   ; Control A
SPI0_CTRLB = 2081                   ; Control B
SPI0_INTCTRL = 2082                 ; Interrupt Control
SPI0_INTFLAGS = 2083                ; Interrupt Flags
SPI0_DATA = 2084                    ; Data

;*************************************************************************
;** SYSCFG - System Configuration Registers
;*************************************************************************

SYSCFG_REVID = 3841                 ; Revision ID
SYSCFG_EXTBRK = 3842                ; External Break

;*************************************************************************
;** TCA0 - 16-bit Timer/Counter Type A
;*************************************************************************

TCA0_SINGLE_CTRLA = 2560            ; SINGLE Control A
TCA0_SINGLE_CTRLB = 2561            ; SINGLE Control B
TCA0_SINGLE_CTRLC = 2562            ; SINGLE Control C
TCA0_SINGLE_CTRLD = 2563            ; SINGLE Control D
TCA0_SINGLE_CTRLECLR = 2564         ; SINGLE Control E Clear
TCA0_SINGLE_CTRLESET = 2565         ; SINGLE Control E Set
TCA0_SINGLE_CTRLFCLR = 2566         ; SINGLE Control F Clear
TCA0_SINGLE_CTRLFSET = 2567         ; SINGLE Control F Set
TCA0_SINGLE_EVCTRL = 2569           ; SINGLE Event Control
TCA0_SINGLE_INTCTRL = 2570          ; SINGLE Interrupt Control
TCA0_SINGLE_INTFLAGS = 2571         ; SINGLE Interrupt Flags
TCA0_SINGLE_DBGCTRL = 2574          ; SINGLE Degbug Control
TCA0_SINGLE_TEMP = 2575             ; SINGLE Temporary data for 16-bit Access
TCA0_SINGLE_CNT = 2592              ; SINGLE Count
TCA0_SINGLE_PER = 2598              ; SINGLE Period
TCA0_SINGLE_CMP0 = 2600             ; SINGLE Compare 0
TCA0_SINGLE_CMP1 = 2602             ; SINGLE Compare 1
TCA0_SINGLE_CMP2 = 2604             ; SINGLE Compare 2
TCA0_SINGLE_PERBUF = 2614           ; SINGLE Period Buffer
TCA0_SINGLE_CMP0BUF = 2616          ; SINGLE Compare 0 Buffer
TCA0_SINGLE_CMP1BUF = 2618          ; SINGLE Compare 1 Buffer
TCA0_SINGLE_CMP2BUF = 2620          ; SINGLE Compare 2 Buffer
TCA0_SPLIT_CTRLA = 2560             ; SPLIT Control A
TCA0_SPLIT_CTRLB = 2561             ; SPLIT Control B
TCA0_SPLIT_CTRLC = 2562             ; SPLIT Control C
TCA0_SPLIT_CTRLD = 2563             ; SPLIT Control D
TCA0_SPLIT_CTRLECLR = 2564          ; SPLIT Control E Clear
TCA0_SPLIT_CTRLESET = 2565          ; SPLIT Control E Set
TCA0_SPLIT_INTCTRL = 2570           ; SPLIT Interrupt Control
TCA0_SPLIT_INTFLAGS = 2571          ; SPLIT Interrupt Flags
TCA0_SPLIT_DBGCTRL = 2574           ; SPLIT Degbug Control
TCA0_SPLIT_LCNT = 2592              ; SPLIT Low Count
TCA0_SPLIT_HCNT = 2593              ; SPLIT High Count
TCA0_SPLIT_LPER = 2598              ; SPLIT Low Period
TCA0_SPLIT_HPER = 2599              ; SPLIT High Period
TCA0_SPLIT_LCMP0 = 2600             ; SPLIT Low Compare
TCA0_SPLIT_HCMP0 = 2601             ; SPLIT High Compare
TCA0_SPLIT_LCMP1 = 2602             ; SPLIT Low Compare
TCA0_SPLIT_HCMP1 = 2603             ; SPLIT High Compare
TCA0_SPLIT_LCMP2 = 2604             ; SPLIT Low Compare
TCA0_SPLIT_HCMP2 = 2605             ; SPLIT High Compare

;*************************************************************************
;** TCB0 - 16-bit Timer Type B
;*************************************************************************

TCB0_CTRLA = 2624                   ; Control A
TCB0_CTRLB = 2625                   ; Control Register B
TCB0_EVCTRL = 2628                  ; Event Control
TCB0_INTCTRL = 2629                 ; Interrupt Control
TCB0_INTFLAGS = 2630                ; Interrupt Flags
TCB0_STATUS = 2631                  ; Status
TCB0_DBGCTRL = 2632                 ; Debug Control
TCB0_TEMP = 2633                    ; Temporary Value
TCB0_CNT = 2634                     ; Count
TCB0_CCMP = 2636                    ; Compare or Capture

;*************************************************************************
;** TCD0 - Timer Counter D
;*************************************************************************

TCD0_CTRLA = 2688                   ; Control A
TCD0_CTRLB = 2689                   ; Control B
TCD0_CTRLC = 2690                   ; Control C
TCD0_CTRLD = 2691                   ; Control D
TCD0_CTRLE = 2692                   ; Control E
TCD0_EVCTRLA = 2696                 ; EVCTRLA
TCD0_EVCTRLB = 2697                 ; EVCTRLB
TCD0_INTCTRL = 2700                 ; Interrupt Control
TCD0_INTFLAGS = 2701                ; Interrupt Flags
TCD0_STATUS = 2702                  ; Status
TCD0_INPUTCTRLA = 2704              ; Input Control A
TCD0_INPUTCTRLB = 2705              ; Input Control B
TCD0_FAULTCTRL = 2706               ; Fault Control
TCD0_DLYCTRL = 2708                 ; Delay Control
TCD0_DLYVAL = 2709                  ; Delay value
TCD0_DITCTRL = 2712                 ; Dither Control A
TCD0_DITVAL = 2713                  ; Dither value
TCD0_DBGCTRL = 2718                 ; Debug Control
TCD0_SCAPTUREA = 2722               ; Capture A
TCD0_SCAPTUREB = 2724               ; Capture B
TCD0_CMPASET = 2728                 ; Compare A Set
TCD0_CMPACLR = 2730                 ; Compare A Clear
TCD0_CMPBSET = 2732                 ; Compare B Set
TCD0_CMPBCLR = 2734                 ; Compare B Clear

;*************************************************************************
;** TWI0 - Two-Wire Interface
;*************************************************************************

TWI0_CTRLA = 2064                   ; Control A
TWI0_DBGCTRL = 2066                 ; Debug Control Register
TWI0_MCTRLA = 2067                  ; Master Control A
TWI0_MCTRLB = 2068                  ; Master Control B
TWI0_MSTATUS = 2069                 ; Master Status
TWI0_MBAUD = 2070                   ; Master Baurd Rate Control
TWI0_MADDR = 2071                   ; Master Address
TWI0_MDATA = 2072                   ; Master Data
TWI0_SCTRLA = 2073                  ; Slave Control A
TWI0_SCTRLB = 2074                  ; Slave Control B
TWI0_SSTATUS = 2075                 ; Slave Status
TWI0_SADDR = 2076                   ; Slave Address
TWI0_SDATA = 2077                   ; Slave Data
TWI0_SADDRMASK = 2078               ; Slave Address Mask

;*************************************************************************
;** USART0 - Universal Synchronous and Asynchronous Receiver and Transmitter
;*************************************************************************

USART0_RXDATAL = 2048               ; Receive Data Low Byte
USART0_RXDATAH = 2049               ; Receive Data High Byte
USART0_TXDATAL = 2050               ; Transmit Data Low Byte
USART0_TXDATAH = 2051               ; Transmit Data High Byte
USART0_STATUS = 2052                ; Status
USART0_CTRLA = 2053                 ; Control A
USART0_CTRLB = 2054                 ; Control B
USART0_CTRLC = 2055                 ; Control C
USART0_BAUD = 2056                  ; Baud Rate
USART0_DBGCTRL = 2059               ; Debug Control
USART0_EVCTRL = 2060                ; Event Control
USART0_TXPLCTRL = 2061              ; IRCOM Transmitter Pulse Length Control
USART0_RXPLCTRL = 2062              ; IRCOM Receiver Pulse Length Control

;*************************************************************************
;** USERROW - User Row
;*************************************************************************

USERROW_USERROW0 = 4864             ; User Row Byte 0
USERROW_USERROW1 = 4865             ; User Row Byte 1
USERROW_USERROW2 = 4866             ; User Row Byte 2
USERROW_USERROW3 = 4867             ; User Row Byte 3
USERROW_USERROW4 = 4868             ; User Row Byte 4
USERROW_USERROW5 = 4869             ; User Row Byte 5
USERROW_USERROW6 = 4870             ; User Row Byte 6
USERROW_USERROW7 = 4871             ; User Row Byte 7
USERROW_USERROW8 = 4872             ; User Row Byte 8
USERROW_USERROW9 = 4873             ; User Row Byte 9
USERROW_USERROW10 = 4874            ; User Row Byte 10
USERROW_USERROW11 = 4875            ; User Row Byte 11
USERROW_USERROW12 = 4876            ; User Row Byte 12
USERROW_USERROW13 = 4877            ; User Row Byte 13
USERROW_USERROW14 = 4878            ; User Row Byte 14
USERROW_USERROW15 = 4879            ; User Row Byte 15
USERROW_USERROW16 = 4880            ; User Row Byte 16
USERROW_USERROW17 = 4881            ; User Row Byte 17
USERROW_USERROW18 = 4882            ; User Row Byte 18
USERROW_USERROW19 = 4883            ; User Row Byte 19
USERROW_USERROW20 = 4884            ; User Row Byte 20
USERROW_USERROW21 = 4885            ; User Row Byte 21
USERROW_USERROW22 = 4886            ; User Row Byte 22
USERROW_USERROW23 = 4887            ; User Row Byte 23
USERROW_USERROW24 = 4888            ; User Row Byte 24
USERROW_USERROW25 = 4889            ; User Row Byte 25
USERROW_USERROW26 = 4890            ; User Row Byte 26
USERROW_USERROW27 = 4891            ; User Row Byte 27
USERROW_USERROW28 = 4892            ; User Row Byte 28
USERROW_USERROW29 = 4893            ; User Row Byte 29
USERROW_USERROW30 = 4894            ; User Row Byte 30
USERROW_USERROW31 = 4895            ; User Row Byte 31

;*************************************************************************
;** VPORTA - Virtual Ports
;*************************************************************************

VPORTA_DIR = 0                      ; Data Direction
VPORTA_OUT = 1                      ; Output Value
VPORTA_IN = 2                       ; Input Value
VPORTA_INTFLAGS = 3                 ; Interrupt Flags

;*************************************************************************
;** VPORTB - Virtual Ports
;*************************************************************************

VPORTB_DIR = 4                      ; Data Direction
VPORTB_OUT = 5                      ; Output Value
VPORTB_IN = 6                       ; Input Value
VPORTB_INTFLAGS = 7                 ; Interrupt Flags

;*************************************************************************
;** VPORTC - Virtual Ports
;*************************************************************************

VPORTC_DIR = 8                      ; Data Direction
VPORTC_OUT = 9                      ; Output Value
VPORTC_IN = 10                      ; Input Value
VPORTC_INTFLAGS = 11                ; Interrupt Flags

;*************************************************************************
;** VREF - Voltage reference
;*************************************************************************

VREF_CTRLA = 160                    ; Control A
VREF_CTRLB = 161                    ; Control B

;*************************************************************************
;** WDT - Watch-Dog Timer
;*************************************************************************

WDT_CTRLA = 256                     ; Control A
WDT_STATUS = 257                    ; Status


; ***** ALL MODULE BASE ADRESSES *****************************************

AC0_base = 0x0670                   ; Analog Comparator
ADC0_base = 0x0600                  ; Analog to Digital Converter
BOD_base = 0x0080                   ; Bod interface
CCL_base = 0x01C0                   ; Configurable Custom Logic
CLKCTRL_base = 0x0060               ; Clock controller
CPU_base = 0x0030                   ; CPU
CPUINT_base = 0x0110                ; Interrupt Controller
CRCSCAN_base = 0x0120               ; CRCSCAN
DAC0_base = 0x0680                  ; Digital to Analog Converter
EVSYS_base = 0x0180                 ; Event System
FUSE_base = 0x1280                  ; Fuses
GPIO_base = 0x001C                  ; General Purpose IO
LOCKBIT_base = 0x128A               ; Lockbit
NVMCTRL_base = 0x1000               ; Non-volatile Memory Controller
PORTA_base = 0x0400                 ; I/O Ports
PORTB_base = 0x0420                 ; I/O Ports
PORTC_base = 0x0440                 ; I/O Ports
PORTMUX_base = 0x0200               ; Port Multiplexer
RSTCTRL_base = 0x0040               ; Reset controller
RTC_base = 0x0140                   ; Real-Time Counter
SIGROW_base = 0x1100                ; Signature row
SLPCTRL_base = 0x0050               ; Sleep Controller
SPI0_base = 0x0820                  ; Serial Peripheral Interface
SYSCFG_base = 0x0F00                ; System Configuration Registers
TCA0_base = 0x0A00                  ; 16-bit Timer/Counter Type A
TCB0_base = 0x0A40                  ; 16-bit Timer Type B
TCD0_base = 0x0A80                  ; Timer Counter D
TWI0_base = 0x0810                  ; Two-Wire Interface
USART0_base = 0x0800                ; Universal Synchronous and Asynchronous Receiver and Transmitter
USERROW_base = 0x1300               ; User Row
VPORTA_base = 0x0000                ; Virtual Ports
VPORTB_base = 0x0004                ; Virtual Ports
VPORTC_base = 0x0008                ; Virtual Ports
VREF_base = 0x00A0                  ; Voltage reference
WDT_base = 0x0100                   ; Watch-Dog Timer


; ***** IO REGISTER OFFSETS **********************************************


;*************************************************************************
;** AC - Analog Comparator
;*************************************************************************
AC_CTRLA_offset = 0x00              ; Control A
AC_MUXCTRLA_offset = 0x02           ; Mux Control A
AC_INTCTRL_offset = 0x06            ; Interrupt Control
AC_STATUS_offset = 0x07             ; Status

;*************************************************************************
;** ADC - Analog to Digital Converter
;*************************************************************************
ADC_CTRLA_offset = 0x00             ; Control A
ADC_CTRLB_offset = 0x01             ; Control B
ADC_CTRLC_offset = 0x02             ; Control C
ADC_CTRLD_offset = 0x03             ; Control D
ADC_CTRLE_offset = 0x04             ; Control E
ADC_SAMPCTRL_offset = 0x05          ; Sample Control
ADC_MUXPOS_offset = 0x06            ; Positive mux input
ADC_COMMAND_offset = 0x08           ; Command
ADC_EVCTRL_offset = 0x09            ; Event Control
ADC_INTCTRL_offset = 0x0A           ; Interrupt Control
ADC_INTFLAGS_offset = 0x0B          ; Interrupt Flags
ADC_DBGCTRL_offset = 0x0C           ; Debug Control
ADC_TEMP_offset = 0x0D              ; Temporary Data
ADC_RES_offset = 0x10               ; ADC Accumulator Result
ADC_WINLT_offset = 0x12             ; Window comparator low threshold
ADC_WINHT_offset = 0x14             ; Window comparator high threshold
ADC_CALIB_offset = 0x16             ; Calibration

;*************************************************************************
;** BOD - Bod interface
;*************************************************************************
BOD_CTRLA_offset = 0x00             ; Control A
BOD_CTRLB_offset = 0x01             ; Control B
BOD_VLMCTRLA_offset = 0x08          ; Voltage level monitor Control
BOD_INTCTRL_offset = 0x09           ; Voltage level monitor interrupt Control
BOD_INTFLAGS_offset = 0x0A          ; Voltage level monitor interrupt Flags
BOD_STATUS_offset = 0x0B            ; Voltage level monitor status

;*************************************************************************
;** CCL - Configurable Custom Logic
;*************************************************************************
CCL_CTRLA_offset = 0x00             ; Control Register A
CCL_SEQCTRL0_offset = 0x01          ; Sequential Control 0
CCL_LUT0CTRLA_offset = 0x05         ; LUT Control 0 A
CCL_LUT0CTRLB_offset = 0x06         ; LUT Control 0 B
CCL_LUT0CTRLC_offset = 0x07         ; LUT Control 0 C
CCL_TRUTH0_offset = 0x08            ; Truth 0
CCL_LUT1CTRLA_offset = 0x09         ; LUT Control 1 A
CCL_LUT1CTRLB_offset = 0x0A         ; LUT Control 1 B
CCL_LUT1CTRLC_offset = 0x0B         ; LUT Control 1 C
CCL_TRUTH1_offset = 0x0C            ; Truth 1

;*************************************************************************
;** CLKCTRL - Clock controller
;*************************************************************************
CLKCTRL_MCLKCTRLA_offset = 0x00     ; MCLK Control A
CLKCTRL_MCLKCTRLB_offset = 0x01     ; MCLK Control B
CLKCTRL_MCLKLOCK_offset = 0x02      ; MCLK Lock
CLKCTRL_MCLKSTATUS_offset = 0x03    ; MCLK Status
CLKCTRL_OSC20MCTRLA_offset = 0x10   ; OSC20M Control A
CLKCTRL_OSC20MCALIBA_offset = 0x11  ; OSC20M Calibration A
CLKCTRL_OSC20MCALIBB_offset = 0x12  ; OSC20M Calibration B
CLKCTRL_OSC32KCTRLA_offset = 0x18   ; OSC32K Control A
CLKCTRL_XOSC32KCTRLA_offset = 0x1C  ; XOSC32K Control A

;*************************************************************************
;** CPU - CPU
;*************************************************************************
CPU_CCP_offset = 0x04               ; Configuration Change Protection
CPU_SPL_offset = 0x0D               ; Stack Pointer Low
CPU_SPH_offset = 0x0E               ; Stack Pointer High
CPU_SREG_offset = 0x0F              ; Status Register

;*************************************************************************
;** CPUINT - Interrupt Controller
;*************************************************************************
CPUINT_CTRLA_offset = 0x00          ; Control A
CPUINT_STATUS_offset = 0x01         ; Status
CPUINT_LVL0PRI_offset = 0x02        ; Interrupt Level 0 Priority
CPUINT_LVL1VEC_offset = 0x03        ; Interrupt Level 1 Priority Vector

;*************************************************************************
;** CRCSCAN - CRCSCAN
;*************************************************************************
CRCSCAN_CTRLA_offset = 0x00         ; Control A
CRCSCAN_CTRLB_offset = 0x01         ; Control B
CRCSCAN_STATUS_offset = 0x02        ; Status

;*************************************************************************
;** DAC - Digital to Analog Converter
;*************************************************************************
DAC_CTRLA_offset = 0x00             ; Control Register A
DAC_DATA_offset = 0x01              ; DATA Register

;*************************************************************************
;** EVSYS - Event System
;*************************************************************************
EVSYS_ASYNCSTROBE_offset = 0x00     ; Asynchronous Strobe
EVSYS_SYNCSTROBE_offset = 0x01      ; Synchronous Strobe
EVSYS_ASYNCCH0_offset = 0x02        ; Asynchronous Multiplexer Channel 0
EVSYS_ASYNCCH1_offset = 0x03        ; Asynchronous Multiplexer Channel 1
EVSYS_ASYNCCH2_offset = 0x04        ; Asynchronous Multiplexer Channel 2
EVSYS_ASYNCCH3_offset = 0x05        ; Asynchronous Multiplexer Channel 3
EVSYS_SYNCCH0_offset = 0x0A         ; Synchronous User Selection Ch  0
EVSYS_SYNCCH1_offset = 0x0B         ; Synchronous Multiplexer Channel 1
EVSYS_ASYNCUSER0_offset = 0x12      ; Asynchronous User Selection Ch 0 - TCB0
EVSYS_ASYNCUSER1_offset = 0x13      ; Asynchronous User Selection Ch 1 - ADC0
EVSYS_ASYNCUSER2_offset = 0x14      ; Asynchronous User Selection Ch 2 - CCL LUT0 Event 0
EVSYS_ASYNCUSER3_offset = 0x15      ; Asynchronous User Selection Ch 3 - CCL LUT1 Event 0
EVSYS_ASYNCUSER4_offset = 0x16      ; Asynchronous User Selection Ch 4 - CCL LUT0 Event 1
EVSYS_ASYNCUSER5_offset = 0x17      ; Asynchronous User Selection Ch 5 - CCL LUT1 Event 1
EVSYS_ASYNCUSER6_offset = 0x18      ; Asynchronous User Selection Ch 6 - TCD0 Event 0
EVSYS_ASYNCUSER7_offset = 0x19      ; Asynchronous User Selection Ch 7 - TCD0 Event 1
EVSYS_ASYNCUSER8_offset = 0x1A      ; Asynchronous Multiplexer User 8 - Event Out 0
EVSYS_ASYNCUSER9_offset = 0x1B      ; Asynchronous User Selection Ch 9 - Event Out 1
EVSYS_ASYNCUSER10_offset = 0x1C     ; Asynchronous User Selection Ch 0 - Event Out 2
EVSYS_SYNCUSER0_offset = 0x22       ; Synchronous User Ch 0 - TCA0
EVSYS_SYNCUSER1_offset = 0x23       ; Synchronous User Ch 1 - USART0

;*************************************************************************
;** FUSE - Fuses
;*************************************************************************
FUSE_WDTCFG_offset = 0x00           ; Watchdog Configuration
FUSE_BODCFG_offset = 0x01           ; BOD Configuration
FUSE_OSCCFG_offset = 0x02           ; Oscillator Configuration
FUSE_TCD0CFG_offset = 0x04          ; TCD0 Configuration
FUSE_SYSCFG0_offset = 0x05          ; System Configuration 0
FUSE_SYSCFG1_offset = 0x06          ; System Configuration 1
FUSE_APPEND_offset = 0x07           ; Application Code Section End
FUSE_BOOTEND_offset = 0x08          ; Boot Section End

;*************************************************************************
;** GPIO - General Purpose IO
;*************************************************************************
GPIO_GPIOR0_offset = 0x00           ; General Purpose IO Register 0
GPIO_GPIOR1_offset = 0x01           ; General Purpose IO Register 1
GPIO_GPIOR2_offset = 0x02           ; General Purpose IO Register 2
GPIO_GPIOR3_offset = 0x03           ; General Purpose IO Register 3

;*************************************************************************
;** LOCKBIT - Lockbit
;*************************************************************************
LOCKBIT_LOCKBIT_offset = 0x00       ; Lock bits

;*************************************************************************
;** NVMCTRL - Non-volatile Memory Controller
;*************************************************************************
NVMCTRL_CTRLA_offset = 0x00         ; Control A
NVMCTRL_CTRLB_offset = 0x01         ; Control B
NVMCTRL_STATUS_offset = 0x02        ; Status
NVMCTRL_INTCTRL_offset = 0x03       ; Interrupt Control
NVMCTRL_INTFLAGS_offset = 0x04      ; Interrupt Flags
NVMCTRL_DATA_offset = 0x06          ; Data
NVMCTRL_ADDR_offset = 0x08          ; Address

;*************************************************************************
;** PORT - I/O Ports
;*************************************************************************
PORT_DIR_offset = 0x00              ; Data Direction
PORT_DIRSET_offset = 0x01           ; Data Direction Set
PORT_DIRCLR_offset = 0x02           ; Data Direction Clear
PORT_DIRTGL_offset = 0x03           ; Data Direction Toggle
PORT_OUT_offset = 0x04              ; Output Value
PORT_OUTSET_offset = 0x05           ; Output Value Set
PORT_OUTCLR_offset = 0x06           ; Output Value Clear
PORT_OUTTGL_offset = 0x07           ; Output Value Toggle
PORT_IN_offset = 0x08               ; Input Value
PORT_INTFLAGS_offset = 0x09         ; Interrupt Flags
PORT_PIN0CTRL_offset = 0x10         ; Pin 0 Control
PORT_PIN1CTRL_offset = 0x11         ; Pin 1 Control
PORT_PIN2CTRL_offset = 0x12         ; Pin 2 Control
PORT_PIN3CTRL_offset = 0x13         ; Pin 3 Control
PORT_PIN4CTRL_offset = 0x14         ; Pin 4 Control
PORT_PIN5CTRL_offset = 0x15         ; Pin 5 Control
PORT_PIN6CTRL_offset = 0x16         ; Pin 6 Control
PORT_PIN7CTRL_offset = 0x17         ; Pin 7 Control

;*************************************************************************
;** PORTMUX - Port Multiplexer
;*************************************************************************
PORTMUX_CTRLA_offset = 0x00         ; Port Multiplexer Control A
PORTMUX_CTRLB_offset = 0x01         ; Port Multiplexer Control B
PORTMUX_CTRLC_offset = 0x02         ; Port Multiplexer Control C
PORTMUX_CTRLD_offset = 0x03         ; Port Multiplexer Control D

;*************************************************************************
;** PTC - Peripherial Touch Controller
;*************************************************************************

;*************************************************************************
;** RSTCTRL - Reset controller
;*************************************************************************
RSTCTRL_RSTFR_offset = 0x00         ; Reset Flags
RSTCTRL_SWRR_offset = 0x01          ; Software Reset

;*************************************************************************
;** RTC - Real-Time Counter
;*************************************************************************
RTC_CTRLA_offset = 0x00             ; Control A
RTC_STATUS_offset = 0x01            ; Status
RTC_INTCTRL_offset = 0x02           ; Interrupt Control
RTC_INTFLAGS_offset = 0x03          ; Interrupt Flags
RTC_TEMP_offset = 0x04              ; Temporary
RTC_DBGCTRL_offset = 0x05           ; Debug control
RTC_CLKSEL_offset = 0x07            ; Clock Select
RTC_CNT_offset = 0x08               ; Counter
RTC_PER_offset = 0x0A               ; Period
RTC_CMP_offset = 0x0C               ; Compare
RTC_PITCTRLA_offset = 0x10          ; PIT Control A
RTC_PITSTATUS_offset = 0x11         ; PIT Status
RTC_PITINTCTRL_offset = 0x12        ; PIT Interrupt Control
RTC_PITINTFLAGS_offset = 0x13       ; PIT Interrupt Flags
RTC_PITDBGCTRL_offset = 0x15        ; PIT Debug control

;*************************************************************************
;** SIGROW - Signature row
;*************************************************************************
SIGROW_DEVICEID0_offset = 0x00      ; Device ID Byte 0
SIGROW_DEVICEID1_offset = 0x01      ; Device ID Byte 1
SIGROW_DEVICEID2_offset = 0x02      ; Device ID Byte 2
SIGROW_SERNUM0_offset = 0x03        ; Serial Number Byte 0
SIGROW_SERNUM1_offset = 0x04        ; Serial Number Byte 1
SIGROW_SERNUM2_offset = 0x05        ; Serial Number Byte 2
SIGROW_SERNUM3_offset = 0x06        ; Serial Number Byte 3
SIGROW_SERNUM4_offset = 0x07        ; Serial Number Byte 4
SIGROW_SERNUM5_offset = 0x08        ; Serial Number Byte 5
SIGROW_SERNUM6_offset = 0x09        ; Serial Number Byte 6
SIGROW_SERNUM7_offset = 0x0A        ; Serial Number Byte 7
SIGROW_SERNUM8_offset = 0x0B        ; Serial Number Byte 8
SIGROW_SERNUM9_offset = 0x0C        ; Serial Number Byte 9
SIGROW_TEMPSENSE0_offset = 0x20     ; Temperature Sensor Calibration Byte 0
SIGROW_TEMPSENSE1_offset = 0x21     ; Temperature Sensor Calibration Byte 1

;*************************************************************************
;** SLPCTRL - Sleep Controller
;*************************************************************************
SLPCTRL_CTRLA_offset = 0x00         ; Control

;*************************************************************************
;** SPI - Serial Peripheral Interface
;*************************************************************************
SPI_CTRLA_offset = 0x00             ; Control A
SPI_CTRLB_offset = 0x01             ; Control B
SPI_INTCTRL_offset = 0x02           ; Interrupt Control
SPI_INTFLAGS_offset = 0x03          ; Interrupt Flags
SPI_DATA_offset = 0x04              ; Data

;*************************************************************************
;** SYSCFG - System Configuration Registers
;*************************************************************************
SYSCFG_REVID_offset = 0x01          ; Revision ID
SYSCFG_EXTBRK_offset = 0x02         ; External Break

;*************************************************************************
;** TCA - 16-bit Timer/Counter Type A
;*************************************************************************
TCA_SINGLE_CTRLA_offset = 0x00      ; Control A
TCA_SINGLE_CTRLB_offset = 0x01      ; Control B
TCA_SINGLE_CTRLC_offset = 0x02      ; Control C
TCA_SINGLE_CTRLD_offset = 0x03      ; Control D
TCA_SINGLE_CTRLECLR_offset = 0x04   ; Control E Clear
TCA_SINGLE_CTRLESET_offset = 0x05   ; Control E Set
TCA_SINGLE_CTRLFCLR_offset = 0x06   ; Control F Clear
TCA_SINGLE_CTRLFSET_offset = 0x07   ; Control F Set
TCA_SINGLE_EVCTRL_offset = 0x09     ; Event Control
TCA_SINGLE_INTCTRL_offset = 0x0A    ; Interrupt Control
TCA_SINGLE_INTFLAGS_offset = 0x0B   ; Interrupt Flags
TCA_SINGLE_DBGCTRL_offset = 0x0E    ; Degbug Control
TCA_SINGLE_TEMP_offset = 0x0F       ; Temporary data for 16-bit Access
TCA_SINGLE_CNT_offset = 0x20        ; Count
TCA_SINGLE_PER_offset = 0x26        ; Period
TCA_SINGLE_CMP0_offset = 0x28       ; Compare 0
TCA_SINGLE_CMP1_offset = 0x2A       ; Compare 1
TCA_SINGLE_CMP2_offset = 0x2C       ; Compare 2
TCA_SINGLE_PERBUF_offset = 0x36     ; Period Buffer
TCA_SINGLE_CMP0BUF_offset = 0x38    ; Compare 0 Buffer
TCA_SINGLE_CMP1BUF_offset = 0x3A    ; Compare 1 Buffer
TCA_SINGLE_CMP2BUF_offset = 0x3C    ; Compare 2 Buffer
TCA_SPLIT_CTRLA_offset = 0x00       ; Control A
TCA_SPLIT_CTRLB_offset = 0x01       ; Control B
TCA_SPLIT_CTRLC_offset = 0x02       ; Control C
TCA_SPLIT_CTRLD_offset = 0x03       ; Control D
TCA_SPLIT_CTRLECLR_offset = 0x04    ; Control E Clear
TCA_SPLIT_CTRLESET_offset = 0x05    ; Control E Set
TCA_SPLIT_INTCTRL_offset = 0x0A     ; Interrupt Control
TCA_SPLIT_INTFLAGS_offset = 0x0B    ; Interrupt Flags
TCA_SPLIT_DBGCTRL_offset = 0x0E     ; Degbug Control
TCA_SPLIT_LCNT_offset = 0x20        ; Low Count
TCA_SPLIT_HCNT_offset = 0x21        ; High Count
TCA_SPLIT_LPER_offset = 0x26        ; Low Period
TCA_SPLIT_HPER_offset = 0x27        ; High Period
TCA_SPLIT_LCMP0_offset = 0x28       ; Low Compare
TCA_SPLIT_HCMP0_offset = 0x29       ; High Compare
TCA_SPLIT_LCMP1_offset = 0x2A       ; Low Compare
TCA_SPLIT_HCMP1_offset = 0x2B       ; High Compare
TCA_SPLIT_LCMP2_offset = 0x2C       ; Low Compare
TCA_SPLIT_HCMP2_offset = 0x2D       ; High Compare
TCA_SINGLE_offset = 0x00            ; 
TCA_SPLIT_offset = 0x00             ; 

;*************************************************************************
;** TCB - 16-bit Timer Type B
;*************************************************************************
TCB_CTRLA_offset = 0x00             ; Control A
TCB_CTRLB_offset = 0x01             ; Control Register B
TCB_EVCTRL_offset = 0x04            ; Event Control
TCB_INTCTRL_offset = 0x05           ; Interrupt Control
TCB_INTFLAGS_offset = 0x06          ; Interrupt Flags
TCB_STATUS_offset = 0x07            ; Status
TCB_DBGCTRL_offset = 0x08           ; Debug Control
TCB_TEMP_offset = 0x09              ; Temporary Value
TCB_CNT_offset = 0x0A               ; Count
TCB_CCMP_offset = 0x0C              ; Compare or Capture

;*************************************************************************
;** TCD - Timer Counter D
;*************************************************************************
TCD_CTRLA_offset = 0x00             ; Control A
TCD_CTRLB_offset = 0x01             ; Control B
TCD_CTRLC_offset = 0x02             ; Control C
TCD_CTRLD_offset = 0x03             ; Control D
TCD_CTRLE_offset = 0x04             ; Control E
TCD_EVCTRLA_offset = 0x08           ; EVCTRLA
TCD_EVCTRLB_offset = 0x09           ; EVCTRLB
TCD_INTCTRL_offset = 0x0C           ; Interrupt Control
TCD_INTFLAGS_offset = 0x0D          ; Interrupt Flags
TCD_STATUS_offset = 0x0E            ; Status
TCD_INPUTCTRLA_offset = 0x10        ; Input Control A
TCD_INPUTCTRLB_offset = 0x11        ; Input Control B
TCD_FAULTCTRL_offset = 0x12         ; Fault Control
TCD_DLYCTRL_offset = 0x14           ; Delay Control
TCD_DLYVAL_offset = 0x15            ; Delay value
TCD_DITCTRL_offset = 0x18           ; Dither Control A
TCD_DITVAL_offset = 0x19            ; Dither value
TCD_DBGCTRL_offset = 0x1E           ; Debug Control
TCD_SCAPTUREA_offset = 0x22         ; Capture A
TCD_SCAPTUREB_offset = 0x24         ; Capture B
TCD_CMPASET_offset = 0x28           ; Compare A Set
TCD_CMPACLR_offset = 0x2A           ; Compare A Clear
TCD_CMPBSET_offset = 0x2C           ; Compare B Set
TCD_CMPBCLR_offset = 0x2E           ; Compare B Clear

;*************************************************************************
;** TWI - Two-Wire Interface
;*************************************************************************
TWI_CTRLA_offset = 0x00             ; Control A
TWI_DBGCTRL_offset = 0x02           ; Debug Control Register
TWI_MCTRLA_offset = 0x03            ; Master Control A
TWI_MCTRLB_offset = 0x04            ; Master Control B
TWI_MSTATUS_offset = 0x05           ; Master Status
TWI_MBAUD_offset = 0x06             ; Master Baurd Rate Control
TWI_MADDR_offset = 0x07             ; Master Address
TWI_MDATA_offset = 0x08             ; Master Data
TWI_SCTRLA_offset = 0x09            ; Slave Control A
TWI_SCTRLB_offset = 0x0A            ; Slave Control B
TWI_SSTATUS_offset = 0x0B           ; Slave Status
TWI_SADDR_offset = 0x0C             ; Slave Address
TWI_SDATA_offset = 0x0D             ; Slave Data
TWI_SADDRMASK_offset = 0x0E         ; Slave Address Mask

;*************************************************************************
;** USART - Universal Synchronous and Asynchronous Receiver and Transmitter
;*************************************************************************
USART_RXDATAL_offset = 0x00         ; Receive Data Low Byte
USART_RXDATAH_offset = 0x01         ; Receive Data High Byte
USART_TXDATAL_offset = 0x02         ; Transmit Data Low Byte
USART_TXDATAH_offset = 0x03         ; Transmit Data High Byte
USART_STATUS_offset = 0x04          ; Status
USART_CTRLA_offset = 0x05           ; Control A
USART_CTRLB_offset = 0x06           ; Control B
USART_CTRLC_offset = 0x07           ; Control C
USART_BAUD_offset = 0x08            ; Baud Rate
USART_DBGCTRL_offset = 0x0B         ; Debug Control
USART_EVCTRL_offset = 0x0C          ; Event Control
USART_TXPLCTRL_offset = 0x0D        ; IRCOM Transmitter Pulse Length Control
USART_RXPLCTRL_offset = 0x0E        ; IRCOM Receiver Pulse Length Control

;*************************************************************************
;** USERROW - User Row
;*************************************************************************
USERROW_USERROW0_offset = 0x00      ; User Row Byte 0
USERROW_USERROW1_offset = 0x01      ; User Row Byte 1
USERROW_USERROW2_offset = 0x02      ; User Row Byte 2
USERROW_USERROW3_offset = 0x03      ; User Row Byte 3
USERROW_USERROW4_offset = 0x04      ; User Row Byte 4
USERROW_USERROW5_offset = 0x05      ; User Row Byte 5
USERROW_USERROW6_offset = 0x06      ; User Row Byte 6
USERROW_USERROW7_offset = 0x07      ; User Row Byte 7
USERROW_USERROW8_offset = 0x08      ; User Row Byte 8
USERROW_USERROW9_offset = 0x09      ; User Row Byte 9
USERROW_USERROW10_offset = 0x0A     ; User Row Byte 10
USERROW_USERROW11_offset = 0x0B     ; User Row Byte 11
USERROW_USERROW12_offset = 0x0C     ; User Row Byte 12
USERROW_USERROW13_offset = 0x0D     ; User Row Byte 13
USERROW_USERROW14_offset = 0x0E     ; User Row Byte 14
USERROW_USERROW15_offset = 0x0F     ; User Row Byte 15
USERROW_USERROW16_offset = 0x10     ; User Row Byte 16
USERROW_USERROW17_offset = 0x11     ; User Row Byte 17
USERROW_USERROW18_offset = 0x12     ; User Row Byte 18
USERROW_USERROW19_offset = 0x13     ; User Row Byte 19
USERROW_USERROW20_offset = 0x14     ; User Row Byte 20
USERROW_USERROW21_offset = 0x15     ; User Row Byte 21
USERROW_USERROW22_offset = 0x16     ; User Row Byte 22
USERROW_USERROW23_offset = 0x17     ; User Row Byte 23
USERROW_USERROW24_offset = 0x18     ; User Row Byte 24
USERROW_USERROW25_offset = 0x19     ; User Row Byte 25
USERROW_USERROW26_offset = 0x1A     ; User Row Byte 26
USERROW_USERROW27_offset = 0x1B     ; User Row Byte 27
USERROW_USERROW28_offset = 0x1C     ; User Row Byte 28
USERROW_USERROW29_offset = 0x1D     ; User Row Byte 29
USERROW_USERROW30_offset = 0x1E     ; User Row Byte 30
USERROW_USERROW31_offset = 0x1F     ; User Row Byte 31

;*************************************************************************
;** VPORT - Virtual Ports
;*************************************************************************
VPORT_DIR_offset = 0x00             ; Data Direction
VPORT_OUT_offset = 0x01             ; Output Value
VPORT_IN_offset = 0x02              ; Input Value
VPORT_INTFLAGS_offset = 0x03        ; Interrupt Flags

;*************************************************************************
;** VREF - Voltage reference
;*************************************************************************
VREF_CTRLA_offset = 0x00            ; Control A
VREF_CTRLB_offset = 0x01            ; Control B

;*************************************************************************
;** WDT - Watch-Dog Timer
;*************************************************************************
WDT_CTRLA_offset = 0x00             ; Control A
WDT_STATUS_offset = 0x01            ; Status


; ***** LOCKBIT REGISTER LOCATIONS ***************************************




; ***** FUSE REGISTER LOCATIONS ******************************************




; ***** BIT AND VALUE DEFINITIONS ****************************************


;*************************************************************************
;** AC - Analog Comparator
;*************************************************************************

; AC_CTRLA masks
AC_ENABLE_bm = 0x01                 ; Enable bit mask
AC_ENABLE_bp = 0                    ; Enable bit position
AC_HYSMODE_gm = 0x06                ; Hysteresis Mode group mask
AC_HYSMODE_gp = 1                   ; Hysteresis Mode group position
AC_HYSMODE0_bm = 1<<1             ; Hysteresis Mode bit 0 mask
AC_HYSMODE0_bp = 1                  ; Hysteresis Mode bit 0 position
AC_HYSMODE1_bm = 1<<2             ; Hysteresis Mode bit 1 mask
AC_HYSMODE1_bp = 2                  ; Hysteresis Mode bit 1 position
AC_INTMODE_gm = 0x30                ; Interrupt Mode group mask
AC_INTMODE_gp = 4                   ; Interrupt Mode group position
AC_INTMODE0_bm = 1<<4             ; Interrupt Mode bit 0 mask
AC_INTMODE0_bp = 4                  ; Interrupt Mode bit 0 position
AC_INTMODE1_bm = 1<<5             ; Interrupt Mode bit 1 mask
AC_INTMODE1_bp = 5                  ; Interrupt Mode bit 1 position
AC_LSMODE_bm = 0x08                 ; Low Speed Mode bit mask
AC_LSMODE_bp = 3                    ; Low Speed Mode bit position
AC_OUTEN_bm = 0x40                  ; Output Buffer Enable bit mask
AC_OUTEN_bp = 6                     ; Output Buffer Enable bit position
AC_RUNSTDBY_bm = 0x80               ; Run in Standby Mode bit mask
AC_RUNSTDBY_bp = 7                  ; Run in Standby Mode bit position

; AC_INTCTRL masks
AC_CMP_bm = 0x01                    ; Analog Comparator 0 Interrupt Enable bit mask
AC_CMP_bp = 0                       ; Analog Comparator 0 Interrupt Enable bit position

; AC_MUXCTRLA masks
AC_INVERT_bm = 0x80                 ; Invert AC Output bit mask
AC_INVERT_bp = 7                    ; Invert AC Output bit position
AC_MUXNEG_gm = 0x03                 ; Negative Input MUX Selection group mask
AC_MUXNEG_gp = 0                    ; Negative Input MUX Selection group position
AC_MUXNEG0_bm = 1<<0              ; Negative Input MUX Selection bit 0 mask
AC_MUXNEG0_bp = 0                   ; Negative Input MUX Selection bit 0 position
AC_MUXNEG1_bm = 1<<1              ; Negative Input MUX Selection bit 1 mask
AC_MUXNEG1_bp = 1                   ; Negative Input MUX Selection bit 1 position
AC_MUXPOS_gm = 0x18                 ; Positive Input MUX Selection group mask
AC_MUXPOS_gp = 3                    ; Positive Input MUX Selection group position
AC_MUXPOS0_bm = 1<<3              ; Positive Input MUX Selection bit 0 mask
AC_MUXPOS0_bp = 3                   ; Positive Input MUX Selection bit 0 position
AC_MUXPOS1_bm = 1<<4              ; Positive Input MUX Selection bit 1 mask
AC_MUXPOS1_bp = 4                   ; Positive Input MUX Selection bit 1 position

; AC_STATUS masks
; Masks for AC_CMP already defined
AC_STATE_bm = 0x10                  ; Analog Comparator State bit mask
AC_STATE_bp = 4                     ; Analog Comparator State bit position

; Hysteresis Mode select
AC_HYSMODE_OFF_gc = 0x00<<1       ; No hysteresis
AC_HYSMODE_10mV_gc = 0x01<<1      ; 10mV hysteresis
AC_HYSMODE_25mV_gc = 0x02<<1      ; 25mV hysteresis
AC_HYSMODE_50mV_gc = 0x03<<1      ; 50mV hysteresis

; Interrupt Mode select
AC_INTMODE_BOTHEDGE_gc = 0x00<<4  ; Any Edge
AC_INTMODE_NEGEDGE_gc = 0x02<<4   ; Negative Edge
AC_INTMODE_POSEDGE_gc = 0x03<<4   ; Positive Edge

; Low Speed Mode select
AC_LSMODE_DIS_gc = 0x00<<3        ; Low speed mode disabled
AC_LSMODE_EN_gc = 0x01<<3         ; Low speed mode enabled

; Negative Input MUX Selection select
AC_MUXNEG_PIN0_gc = 0x00<<0       ; Negative Pin 0
AC_MUXNEG_PIN1_gc = 0x01<<0       ; Negative Pin 1
AC_MUXNEG_VREF_gc = 0x02<<0       ; Voltage Reference
AC_MUXNEG_DAC_gc = 0x03<<0        ; DAC output

; Positive Input MUX Selection select
AC_MUXPOS_PIN0_gc = 0x00<<3       ; Positive Pin 0
AC_MUXPOS_PIN1_gc = 0x01<<3       ; Positive Pin 1


;*************************************************************************
;** ADC - Analog to Digital Converter
;*************************************************************************

; ADC_CALIB masks
ADC_DUTYCYC_bm = 0x01               ; Duty Cycle bit mask
ADC_DUTYCYC_bp = 0                  ; Duty Cycle bit position

; ADC_COMMAND masks
ADC_STCONV_bm = 0x01                ; Start Conversion Operation bit mask
ADC_STCONV_bp = 0                   ; Start Conversion Operation bit position

; ADC_CTRLA masks
ADC_ENABLE_bm = 0x01                ; ADC Enable bit mask
ADC_ENABLE_bp = 0                   ; ADC Enable bit position
ADC_FREERUN_bm = 0x02               ; ADC Freerun mode bit mask
ADC_FREERUN_bp = 1                  ; ADC Freerun mode bit position
ADC_RESSEL_bm = 0x04                ; ADC Resolution bit mask
ADC_RESSEL_bp = 2                   ; ADC Resolution bit position
ADC_RUNSTBY_bm = 0x80               ; Run standby mode bit mask
ADC_RUNSTBY_bp = 7                  ; Run standby mode bit position

; ADC_CTRLB masks
ADC_SAMPLNUM_gm = 0x07              ; Accumulation Samples group mask
ADC_SAMPLNUM_gp = 0                 ; Accumulation Samples group position
ADC_SAMPLNUM0_bm = 1<<0           ; Accumulation Samples bit 0 mask
ADC_SAMPLNUM0_bp = 0                ; Accumulation Samples bit 0 position
ADC_SAMPLNUM1_bm = 1<<1           ; Accumulation Samples bit 1 mask
ADC_SAMPLNUM1_bp = 1                ; Accumulation Samples bit 1 position
ADC_SAMPLNUM2_bm = 1<<2           ; Accumulation Samples bit 2 mask
ADC_SAMPLNUM2_bp = 2                ; Accumulation Samples bit 2 position

; ADC_CTRLC masks
ADC_PRESC_gm = 0x07                 ; Clock Pre-scaler group mask
ADC_PRESC_gp = 0                    ; Clock Pre-scaler group position
ADC_PRESC0_bm = 1<<0              ; Clock Pre-scaler bit 0 mask
ADC_PRESC0_bp = 0                   ; Clock Pre-scaler bit 0 position
ADC_PRESC1_bm = 1<<1              ; Clock Pre-scaler bit 1 mask
ADC_PRESC1_bp = 1                   ; Clock Pre-scaler bit 1 position
ADC_PRESC2_bm = 1<<2              ; Clock Pre-scaler bit 2 mask
ADC_PRESC2_bp = 2                   ; Clock Pre-scaler bit 2 position
ADC_REFSEL_gm = 0x30                ; Reference Selection group mask
ADC_REFSEL_gp = 4                   ; Reference Selection group position
ADC_REFSEL0_bm = 1<<4             ; Reference Selection bit 0 mask
ADC_REFSEL0_bp = 4                  ; Reference Selection bit 0 position
ADC_REFSEL1_bm = 1<<5             ; Reference Selection bit 1 mask
ADC_REFSEL1_bp = 5                  ; Reference Selection bit 1 position
ADC_SAMPCAP_bm = 0x40               ; Sample Capacitance Selection bit mask
ADC_SAMPCAP_bp = 6                  ; Sample Capacitance Selection bit position

; ADC_CTRLD masks
ADC_ASDV_bm = 0x10                  ; Automatic Sampling Delay Variation bit mask
ADC_ASDV_bp = 4                     ; Automatic Sampling Delay Variation bit position
ADC_CHDLY_gm = 0xE0                 ; Startup Delay Selection group mask
ADC_CHDLY_gp = 5                    ; Startup Delay Selection group position
ADC_CHDLY0_bm = 1<<5              ; Startup Delay Selection bit 0 mask
ADC_CHDLY0_bp = 5                   ; Startup Delay Selection bit 0 position
ADC_CHDLY1_bm = 1<<6              ; Startup Delay Selection bit 1 mask
ADC_CHDLY1_bp = 6                   ; Startup Delay Selection bit 1 position
ADC_CHDLY2_bm = 1<<7              ; Startup Delay Selection bit 2 mask
ADC_CHDLY2_bp = 7                   ; Startup Delay Selection bit 2 position
ADC_SAMPDLY_gm = 0x0F               ; Sampling Delay Selection group mask
ADC_SAMPDLY_gp = 0                  ; Sampling Delay Selection group position
ADC_SAMPDLY0_bm = 1<<0            ; Sampling Delay Selection bit 0 mask
ADC_SAMPDLY0_bp = 0                 ; Sampling Delay Selection bit 0 position
ADC_SAMPDLY1_bm = 1<<1            ; Sampling Delay Selection bit 1 mask
ADC_SAMPDLY1_bp = 1                 ; Sampling Delay Selection bit 1 position
ADC_SAMPDLY2_bm = 1<<2            ; Sampling Delay Selection bit 2 mask
ADC_SAMPDLY2_bp = 2                 ; Sampling Delay Selection bit 2 position
ADC_SAMPDLY3_bm = 1<<3            ; Sampling Delay Selection bit 3 mask
ADC_SAMPDLY3_bp = 3                 ; Sampling Delay Selection bit 3 position

; ADC_CTRLE masks
ADC_WINCM_gm = 0x07                 ; Window Comparator Mode group mask
ADC_WINCM_gp = 0                    ; Window Comparator Mode group position
ADC_WINCM0_bm = 1<<0              ; Window Comparator Mode bit 0 mask
ADC_WINCM0_bp = 0                   ; Window Comparator Mode bit 0 position
ADC_WINCM1_bm = 1<<1              ; Window Comparator Mode bit 1 mask
ADC_WINCM1_bp = 1                   ; Window Comparator Mode bit 1 position
ADC_WINCM2_bm = 1<<2              ; Window Comparator Mode bit 2 mask
ADC_WINCM2_bp = 2                   ; Window Comparator Mode bit 2 position

; ADC_DBGCTRL masks
ADC_DBGRUN_bm = 0x01                ; Debug run bit mask
ADC_DBGRUN_bp = 0                   ; Debug run bit position

; ADC_EVCTRL masks
ADC_STARTEI_bm = 0x01               ; Start Event Input Enable bit mask
ADC_STARTEI_bp = 0                  ; Start Event Input Enable bit position

; ADC_INTCTRL masks
ADC_RESRDY_bm = 0x01                ; Result Ready Interrupt Enable bit mask
ADC_RESRDY_bp = 0                   ; Result Ready Interrupt Enable bit position
ADC_WCMP_bm = 0x02                  ; Window Comparator Interrupt Enable bit mask
ADC_WCMP_bp = 1                     ; Window Comparator Interrupt Enable bit position

; ADC_INTFLAGS masks
; Masks for ADC_RESRDY already defined
; Masks for ADC_WCMP already defined

; ADC_MUXPOS masks
ADC_MUXPOS_gm = 0x1F                ; Analog Channel Selection Bits group mask
ADC_MUXPOS_gp = 0                   ; Analog Channel Selection Bits group position
ADC_MUXPOS0_bm = 1<<0             ; Analog Channel Selection Bits bit 0 mask
ADC_MUXPOS0_bp = 0                  ; Analog Channel Selection Bits bit 0 position
ADC_MUXPOS1_bm = 1<<1             ; Analog Channel Selection Bits bit 1 mask
ADC_MUXPOS1_bp = 1                  ; Analog Channel Selection Bits bit 1 position
ADC_MUXPOS2_bm = 1<<2             ; Analog Channel Selection Bits bit 2 mask
ADC_MUXPOS2_bp = 2                  ; Analog Channel Selection Bits bit 2 position
ADC_MUXPOS3_bm = 1<<3             ; Analog Channel Selection Bits bit 3 mask
ADC_MUXPOS3_bp = 3                  ; Analog Channel Selection Bits bit 3 position
ADC_MUXPOS4_bm = 1<<4             ; Analog Channel Selection Bits bit 4 mask
ADC_MUXPOS4_bp = 4                  ; Analog Channel Selection Bits bit 4 position

; ADC_SAMPCTRL masks
ADC_SAMPLEN_gm = 0x1F               ; Sample lenght group mask
ADC_SAMPLEN_gp = 0                  ; Sample lenght group position
ADC_SAMPLEN0_bm = 1<<0            ; Sample lenght bit 0 mask
ADC_SAMPLEN0_bp = 0                 ; Sample lenght bit 0 position
ADC_SAMPLEN1_bm = 1<<1            ; Sample lenght bit 1 mask
ADC_SAMPLEN1_bp = 1                 ; Sample lenght bit 1 position
ADC_SAMPLEN2_bm = 1<<2            ; Sample lenght bit 2 mask
ADC_SAMPLEN2_bp = 2                 ; Sample lenght bit 2 position
ADC_SAMPLEN3_bm = 1<<3            ; Sample lenght bit 3 mask
ADC_SAMPLEN3_bp = 3                 ; Sample lenght bit 3 position
ADC_SAMPLEN4_bm = 1<<4            ; Sample lenght bit 4 mask
ADC_SAMPLEN4_bp = 4                 ; Sample lenght bit 4 position

; ADC_TEMP masks
ADC_TEMP_gm = 0xFF                  ; Temporary group mask
ADC_TEMP_gp = 0                     ; Temporary group position
ADC_TEMP0_bm = 1<<0               ; Temporary bit 0 mask
ADC_TEMP0_bp = 0                    ; Temporary bit 0 position
ADC_TEMP1_bm = 1<<1               ; Temporary bit 1 mask
ADC_TEMP1_bp = 1                    ; Temporary bit 1 position
ADC_TEMP2_bm = 1<<2               ; Temporary bit 2 mask
ADC_TEMP2_bp = 2                    ; Temporary bit 2 position
ADC_TEMP3_bm = 1<<3               ; Temporary bit 3 mask
ADC_TEMP3_bp = 3                    ; Temporary bit 3 position
ADC_TEMP4_bm = 1<<4               ; Temporary bit 4 mask
ADC_TEMP4_bp = 4                    ; Temporary bit 4 position
ADC_TEMP5_bm = 1<<5               ; Temporary bit 5 mask
ADC_TEMP5_bp = 5                    ; Temporary bit 5 position
ADC_TEMP6_bm = 1<<6               ; Temporary bit 6 mask
ADC_TEMP6_bp = 6                    ; Temporary bit 6 position
ADC_TEMP7_bm = 1<<7               ; Temporary bit 7 mask
ADC_TEMP7_bp = 7                    ; Temporary bit 7 position

; Duty Cycle select
ADC_DUTYCYC_DUTY50_gc = 0x00<<0   ; 50% Duty cycle
ADC_DUTYCYC_DUTY25_gc = 0x01<<0   ; 25% Duty cycle

; ADC Resolution select
ADC_RESSEL_10BIT_gc = 0x00<<2     ; 10-bit mode
ADC_RESSEL_8BIT_gc = 0x01<<2      ; 8-bit mode

; Accumulation Samples select
ADC_SAMPLNUM_ACC1_gc = 0x00<<0    ; 1 ADC sample
ADC_SAMPLNUM_ACC2_gc = 0x01<<0    ; Accumulate 2 samples
ADC_SAMPLNUM_ACC4_gc = 0x02<<0    ; Accumulate 4 samples
ADC_SAMPLNUM_ACC8_gc = 0x03<<0    ; Accumulate 8 samples
ADC_SAMPLNUM_ACC16_gc = 0x04<<0   ; Accumulate 16 samples
ADC_SAMPLNUM_ACC32_gc = 0x05<<0   ; Accumulate 32 samples
ADC_SAMPLNUM_ACC64_gc = 0x06<<0   ; Accumulate 64 samples

; Clock Pre-scaler select
ADC_PRESC_DIV2_gc = 0x00<<0       ; CLK_PER divided by 2
ADC_PRESC_DIV4_gc = 0x01<<0       ; CLK_PER divided by 4
ADC_PRESC_DIV8_gc = 0x02<<0       ; CLK_PER divided by 8
ADC_PRESC_DIV16_gc = 0x03<<0      ; CLK_PER divided by 16
ADC_PRESC_DIV32_gc = 0x04<<0      ; CLK_PER divided by 32
ADC_PRESC_DIV64_gc = 0x05<<0      ; CLK_PER divided by 64
ADC_PRESC_DIV128_gc = 0x06<<0     ; CLK_PER divided by 128
ADC_PRESC_DIV256_gc = 0x07<<0     ; CLK_PER divided by 256

; Reference Selection select
ADC_REFSEL_INTREF_gc = 0x00<<4    ; Internal reference
ADC_REFSEL_VDDREF_gc = 0x01<<4    ; VDD

; Automatic Sampling Delay Variation select
ADC_ASDV_ASVOFF_gc = 0x00<<4      ; The Automatic Sampling Delay Variation is disabled
ADC_ASDV_ASVON_gc = 0x01<<4       ; The Automatic Sampling Delay Variation is enabled

; Startup Delay Selection select
ADC_CHDLY_DLY0_gc = 0x00<<5       ; Delay 0 CLK_ADC cycles
ADC_CHDLY_DLY16_gc = 0x01<<5      ; Delay 16 CLK_ADC cycles
ADC_CHDLY_DLY32_gc = 0x02<<5      ; Delay 32 CLK_ADC cycles
ADC_CHDLY_DLY64_gc = 0x03<<5      ; Delay 64 CLK_ADC cycles
ADC_CHDLY_DLY128_gc = 0x04<<5     ; Delay 128 CLK_ADC cycles
ADC_CHDLY_DLY256_gc = 0x05<<5     ; Delay 256 CLK_ADC cycles

; Window Comparator Mode select
ADC_WINCM_NONE_gc = 0x00<<0       ; No Window Comparison
ADC_WINCM_BELOW_gc = 0x01<<0      ; Below Window
ADC_WINCM_ABOVE_gc = 0x02<<0      ; Above Window
ADC_WINCM_INSIDE_gc = 0x03<<0     ; Inside Window
ADC_WINCM_OUTSIDE_gc = 0x04<<0    ; Outside Window

; Analog Channel Selection Bits select
ADC_MUXPOS_AIN0_gc = 0x00<<0      ; ADC input pin 0
ADC_MUXPOS_AIN1_gc = 0x01<<0      ; ADC input pin 1
ADC_MUXPOS_AIN2_gc = 0x02<<0      ; ADC input pin 2
ADC_MUXPOS_AIN3_gc = 0x03<<0      ; ADC input pin 3
ADC_MUXPOS_AIN4_gc = 0x04<<0      ; ADC input pin 4
ADC_MUXPOS_AIN5_gc = 0x05<<0      ; ADC input pin 5
ADC_MUXPOS_AIN6_gc = 0x06<<0      ; ADC input pin 6
ADC_MUXPOS_AIN7_gc = 0x07<<0      ; ADC input pin 7
ADC_MUXPOS_AIN8_gc = 0x08<<0      ; ADC input pin 8
ADC_MUXPOS_AIN9_gc = 0x09<<0      ; ADC input pin 9
ADC_MUXPOS_AIN10_gc = 0x0A<<0     ; ADC input pin 10
ADC_MUXPOS_AIN11_gc = 0x0B<<0     ; ADC input pin 11
ADC_MUXPOS_DAC0_gc = 0x1C<<0      ; DAC0
ADC_MUXPOS_INTREF_gc = 0x1D<<0    ; Internal Ref
ADC_MUXPOS_TEMPSENSE_gc = 0x1E<<0 ; Temp sensor
ADC_MUXPOS_GND_gc = 0x1F<<0       ; GND


;*************************************************************************
;** BOD - Bod interface
;*************************************************************************

; BOD_CTRLA masks
BOD_ACTIVE_gm = 0x0C                ; Operation in active mode group mask
BOD_ACTIVE_gp = 2                   ; Operation in active mode group position
BOD_ACTIVE0_bm = 1<<2             ; Operation in active mode bit 0 mask
BOD_ACTIVE0_bp = 2                  ; Operation in active mode bit 0 position
BOD_ACTIVE1_bm = 1<<3             ; Operation in active mode bit 1 mask
BOD_ACTIVE1_bp = 3                  ; Operation in active mode bit 1 position
BOD_SAMPLFREQ_bm = 0x10             ; Sample frequency bit mask
BOD_SAMPLFREQ_bp = 4                ; Sample frequency bit position
BOD_SLEEP_gm = 0x03                 ; Operation in sleep mode group mask
BOD_SLEEP_gp = 0                    ; Operation in sleep mode group position
BOD_SLEEP0_bm = 1<<0              ; Operation in sleep mode bit 0 mask
BOD_SLEEP0_bp = 0                   ; Operation in sleep mode bit 0 position
BOD_SLEEP1_bm = 1<<1              ; Operation in sleep mode bit 1 mask
BOD_SLEEP1_bp = 1                   ; Operation in sleep mode bit 1 position

; BOD_CTRLB masks
BOD_LVL_gm = 0x07                   ; Bod level group mask
BOD_LVL_gp = 0                      ; Bod level group position
BOD_LVL0_bm = 1<<0                ; Bod level bit 0 mask
BOD_LVL0_bp = 0                     ; Bod level bit 0 position
BOD_LVL1_bm = 1<<1                ; Bod level bit 1 mask
BOD_LVL1_bp = 1                     ; Bod level bit 1 position
BOD_LVL2_bm = 1<<2                ; Bod level bit 2 mask
BOD_LVL2_bp = 2                     ; Bod level bit 2 position

; BOD_INTCTRL masks
BOD_VLMCFG_gm = 0x06                ; Configuration group mask
BOD_VLMCFG_gp = 1                   ; Configuration group position
BOD_VLMCFG0_bm = 1<<1             ; Configuration bit 0 mask
BOD_VLMCFG0_bp = 1                  ; Configuration bit 0 position
BOD_VLMCFG1_bm = 1<<2             ; Configuration bit 1 mask
BOD_VLMCFG1_bp = 2                  ; Configuration bit 1 position
BOD_VLMIE_bm = 0x01                 ; voltage level monitor interrrupt enable bit mask
BOD_VLMIE_bp = 0                    ; voltage level monitor interrrupt enable bit position

; BOD_INTFLAGS masks
BOD_VLMIF_bm = 0x01                 ; Voltage level monitor interrupt flag bit mask
BOD_VLMIF_bp = 0                    ; Voltage level monitor interrupt flag bit position

; BOD_STATUS masks
BOD_VLMS_bm = 0x01                  ; Voltage level monitor status bit mask
BOD_VLMS_bp = 0                     ; Voltage level monitor status bit position

; BOD_VLMCTRLA masks
BOD_VLMLVL_gm = 0x03                ; voltage level monitor level group mask
BOD_VLMLVL_gp = 0                   ; voltage level monitor level group position
BOD_VLMLVL0_bm = 1<<0             ; voltage level monitor level bit 0 mask
BOD_VLMLVL0_bp = 0                  ; voltage level monitor level bit 0 position
BOD_VLMLVL1_bm = 1<<1             ; voltage level monitor level bit 1 mask
BOD_VLMLVL1_bp = 1                  ; voltage level monitor level bit 1 position

; Operation in active mode select
BOD_ACTIVE_DIS_gc = 0x00<<2       ; Disabled
BOD_ACTIVE_ENABLED_gc = 0x01<<2   ; Enabled
BOD_ACTIVE_SAMPLED_gc = 0x02<<2   ; Sampled
BOD_ACTIVE_ENWAKE_gc = 0x03<<2    ; Enabled with wakeup halt

; Sample frequency select
BOD_SAMPLFREQ_1KHZ_gc = 0x00<<4   ; 1kHz sampling
BOD_SAMPLFREQ_125Hz_gc = 0x01<<4  ; 125Hz sampling

; Operation in sleep mode select
BOD_SLEEP_DIS_gc = 0x00<<0        ; Disabled
BOD_SLEEP_ENABLED_gc = 0x01<<0    ; Enabled
BOD_SLEEP_SAMPLED_gc = 0x02<<0    ; Sampled

; Bod level select
BOD_LVL_1V8_gc = 0x00<<0          ; 1.8 V
BOD_LVL_2V15_gc = 0x01<<0         ; 2.15 V
BOD_LVL_2V51_gc = 0x02<<0         ; 2.51 V
BOD_LVL_2V87_gc = 0x03<<0         ; 2.87 V
BOD_LVL_3V23_gc = 0x04<<0         ; 3.23 V
BOD_LVL_3V59_gc = 0x05<<0         ; 3.59 V
BOD_LVL_3V94_gc = 0x06<<0         ; 3.94 V
BOD_LVL_4V3_gc = 0x07<<0          ; 4.3 V

; Configuration select
BOD_VLMCFG_BELOW_gc = 0x00<<1     ; Interrupt when supply goes below VLM level
BOD_VLMCFG_ABOVE_gc = 0x01<<1     ; Interrupt when supply goes above VLM level
BOD_VLMCFG_CROSS_gc = 0x02<<1     ; Interrupt when supply crosses VLM level

; voltage level monitor level select
BOD_VLMLVL_5ABOVE_gc = 0x00<<0    ; VLM threshold 5% above BOD level
BOD_VLMLVL_15ABOVE_gc = 0x01<<0   ; VLM threshold 15% above BOD level
BOD_VLMLVL_25ABOVE_gc = 0x02<<0   ; VLM threshold 25% above BOD level


;*************************************************************************
;** CCL - Configurable Custom Logic
;*************************************************************************

; CCL_CTRLA masks
CCL_ENABLE_bm = 0x01                ; Enable bit mask
CCL_ENABLE_bp = 0                   ; Enable bit position
CCL_RUNSTDBY_bm = 0x40              ; Run in Standby bit mask
CCL_RUNSTDBY_bp = 6                 ; Run in Standby bit position

; CCL_LUT0CTRLA masks
CCL_CLKSRC_bm = 0x40                ; Clock Source Selection bit mask
CCL_CLKSRC_bp = 6                   ; Clock Source Selection bit position
CCL_EDGEDET_bm = 0x80               ; Edge Detection Enable bit mask
CCL_EDGEDET_bp = 7                  ; Edge Detection Enable bit position
CCL_FILTSEL_gm = 0x30               ; Filter Selection group mask
CCL_FILTSEL_gp = 4                  ; Filter Selection group position
CCL_FILTSEL0_bm = 1<<4            ; Filter Selection bit 0 mask
CCL_FILTSEL0_bp = 4                 ; Filter Selection bit 0 position
CCL_FILTSEL1_bm = 1<<5            ; Filter Selection bit 1 mask
CCL_FILTSEL1_bp = 5                 ; Filter Selection bit 1 position
CCL_LUTEN_bm = 0x01                 ; LUT Enable bit mask
CCL_LUTEN_bp = 0                    ; LUT Enable bit position
CCL_OUTEN_bm = 0x08                 ; Output Enable bit mask
CCL_OUTEN_bp = 3                    ; Output Enable bit position

; CCL_LUT0CTRLB masks
CCL_INSEL0_gm = 0x0F                ; LUT Input 0 Source Selection group mask
CCL_INSEL0_gp = 0                   ; LUT Input 0 Source Selection group position
CCL_INSEL00_bm = 1<<0             ; LUT Input 0 Source Selection bit 0 mask
CCL_INSEL00_bp = 0                  ; LUT Input 0 Source Selection bit 0 position
CCL_INSEL01_bm = 1<<1             ; LUT Input 0 Source Selection bit 1 mask
CCL_INSEL01_bp = 1                  ; LUT Input 0 Source Selection bit 1 position
CCL_INSEL02_bm = 1<<2             ; LUT Input 0 Source Selection bit 2 mask
CCL_INSEL02_bp = 2                  ; LUT Input 0 Source Selection bit 2 position
CCL_INSEL03_bm = 1<<3             ; LUT Input 0 Source Selection bit 3 mask
CCL_INSEL03_bp = 3                  ; LUT Input 0 Source Selection bit 3 position
CCL_INSEL1_gm = 0xF0                ; LUT Input 1 Source Selection group mask
CCL_INSEL1_gp = 4                   ; LUT Input 1 Source Selection group position
CCL_INSEL10_bm = 1<<4             ; LUT Input 1 Source Selection bit 0 mask
CCL_INSEL10_bp = 4                  ; LUT Input 1 Source Selection bit 0 position
CCL_INSEL11_bm = 1<<5             ; LUT Input 1 Source Selection bit 1 mask
CCL_INSEL11_bp = 5                  ; LUT Input 1 Source Selection bit 1 position
CCL_INSEL12_bm = 1<<6             ; LUT Input 1 Source Selection bit 2 mask
CCL_INSEL12_bp = 6                  ; LUT Input 1 Source Selection bit 2 position
CCL_INSEL13_bm = 1<<7             ; LUT Input 1 Source Selection bit 3 mask
CCL_INSEL13_bp = 7                  ; LUT Input 1 Source Selection bit 3 position

; CCL_LUT0CTRLC masks
CCL_INSEL2_gm = 0x0F                ; LUT Input 2 Source Selection group mask
CCL_INSEL2_gp = 0                   ; LUT Input 2 Source Selection group position
CCL_INSEL20_bm = 1<<0             ; LUT Input 2 Source Selection bit 0 mask
CCL_INSEL20_bp = 0                  ; LUT Input 2 Source Selection bit 0 position
CCL_INSEL21_bm = 1<<1             ; LUT Input 2 Source Selection bit 1 mask
CCL_INSEL21_bp = 1                  ; LUT Input 2 Source Selection bit 1 position
CCL_INSEL22_bm = 1<<2             ; LUT Input 2 Source Selection bit 2 mask
CCL_INSEL22_bp = 2                  ; LUT Input 2 Source Selection bit 2 position
CCL_INSEL23_bm = 1<<3             ; LUT Input 2 Source Selection bit 3 mask
CCL_INSEL23_bp = 3                  ; LUT Input 2 Source Selection bit 3 position

; CCL_LUT1CTRLA masks
; Masks for CCL_CLKSRC already defined
; Masks for CCL_EDGEDET already defined
; Masks for CCL_FILTSEL already defined
; Masks for CCL_LUTEN already defined
; Masks for CCL_OUTEN already defined

; CCL_LUT1CTRLB masks
; Masks for CCL_INSEL0 already defined
; Masks for CCL_INSEL1 already defined

; CCL_LUT1CTRLC masks
; Masks for CCL_INSEL2 already defined

; CCL_SEQCTRL0 masks
CCL_SEQSEL_gm = 0x07                ; Sequential Selection group mask
CCL_SEQSEL_gp = 0                   ; Sequential Selection group position
CCL_SEQSEL0_bm = 1<<0             ; Sequential Selection bit 0 mask
CCL_SEQSEL0_bp = 0                  ; Sequential Selection bit 0 position
CCL_SEQSEL1_bm = 1<<1             ; Sequential Selection bit 1 mask
CCL_SEQSEL1_bp = 1                  ; Sequential Selection bit 1 position
CCL_SEQSEL2_bm = 1<<2             ; Sequential Selection bit 2 mask
CCL_SEQSEL2_bp = 2                  ; Sequential Selection bit 2 position

; Edge Detection Enable select
CCL_EDGEDET_DIS_gc = 0x00<<7      ; Edge detector is disabled
CCL_EDGEDET_EN_gc = 0x01<<7       ; Edge detector is enabled

; Filter Selection select
CCL_FILTSEL_DISABLE_gc = 0x00<<4  ; Filter disabled
CCL_FILTSEL_SYNCH_gc = 0x01<<4    ; Synchronizer enabled
CCL_FILTSEL_FILTER_gc = 0x02<<4   ; Filter enabled

; LUT Input 0 Source Selection select
CCL_INSEL0_MASK_gc = 0x00<<0      ; Masked input
CCL_INSEL0_FEEDBACK_gc = 0x01<<0  ; Feedback input source
CCL_INSEL0_LINK_gc = 0x02<<0      ; Linked LUT input source
CCL_INSEL0_EVENT0_gc = 0x03<<0    ; Event input source 0
CCL_INSEL0_EVENT1_gc = 0x04<<0    ; Event input source 1
CCL_INSEL0_IO_gc = 0x05<<0        ; IO pin LUTn-IN0 input source
CCL_INSEL0_AC0_gc = 0x06<<0       ; AC0 OUT input source
CCL_INSEL0_TCB0_gc = 0x07<<0      ; TCB0 WO input source
CCL_INSEL0_TCA0_gc = 0x08<<0      ; TCA0 WO0 input source
CCL_INSEL0_TCD0_gc = 0x09<<0      ; TCD0 WO0 input source
CCL_INSEL0_USART0_gc = 0x0A<<0    ; USART0 XCK input source
CCL_INSEL0_SPI0_gc = 0x0B<<0      ; SPI0 SCK source

; LUT Input 1 Source Selection select
CCL_INSEL1_MASK_gc = 0x00<<4      ; Masked input
CCL_INSEL1_FEEDBACK_gc = 0x01<<4  ; Feedback input source
CCL_INSEL1_LINK_gc = 0x02<<4      ; Linked LUT input source
CCL_INSEL1_EVENT0_gc = 0x03<<4    ; Event input source 0
CCL_INSEL1_EVENT1_gc = 0x04<<4    ; Event input source 1
CCL_INSEL1_IO_gc = 0x05<<4        ; IO pin LUTn-N1 input source
CCL_INSEL1_AC0_gc = 0x06<<4       ; AC0 OUT input source
CCL_INSEL1_TCB0_gc = 0x07<<4      ; TCB0 WO input source
CCL_INSEL1_TCA0_gc = 0x08<<4      ; TCA0 WO1 input source
CCL_INSEL1_TCD0_gc = 0x09<<4      ; TCD0 WO1 input source
CCL_INSEL1_USART0_gc = 0x0A<<4    ; USART0 TXD input source
CCL_INSEL1_SPI0_gc = 0x0B<<4      ; SPI0 MOSI input source

; LUT Input 2 Source Selection select
CCL_INSEL2_MASK_gc = 0x00<<0      ; Masked input
CCL_INSEL2_FEEDBACK_gc = 0x01<<0  ; Feedback input source
CCL_INSEL2_LINK_gc = 0x02<<0      ; Linked LUT input source
CCL_INSEL2_EVENT0_gc = 0x03<<0    ; Event input source 0
CCL_INSEL2_EVENT1_gc = 0x04<<0    ; Event input source 1
CCL_INSEL2_IO_gc = 0x05<<0        ; IO pin LUTn-IN2 input source
CCL_INSEL2_AC0_gc = 0x06<<0       ; AC0 OUT input source
CCL_INSEL2_TCB0_gc = 0x07<<0      ; TCB0 WO input source
CCL_INSEL2_TCA0_gc = 0x08<<0      ; TCA0 WO2 input source
CCL_INSEL2_TCD0_gc = 0x09<<0      ; TCD0 WO0 input source
CCL_INSEL2_SPI0_gc = 0x0B<<0      ; SPI0 MISO source

; Sequential Selection select
CCL_SEQSEL_DISABLE_gc = 0x00<<0   ; Sequential logic disabled
CCL_SEQSEL_DFF_gc = 0x01<<0       ; D FlipFlop
CCL_SEQSEL_JK_gc = 0x02<<0        ; JK FlipFlop
CCL_SEQSEL_LATCH_gc = 0x03<<0     ; D Latch
CCL_SEQSEL_RS_gc = 0x04<<0        ; RS Latch


;*************************************************************************
;** CLKCTRL - Clock controller
;*************************************************************************

; CLKCTRL_MCLKCTRLA masks
CLKCTRL_CKSEL_gm = 0x03             ; clock select group mask
CLKCTRL_CKSEL_gp = 0                ; clock select group position
CLKCTRL_CKSEL0_bm = 1<<0          ; clock select bit 0 mask
CLKCTRL_CKSEL0_bp = 0               ; clock select bit 0 position
CLKCTRL_CKSEL1_bm = 1<<1          ; clock select bit 1 mask
CLKCTRL_CKSEL1_bp = 1               ; clock select bit 1 position
CLKCTRL_CLKOUT_bm = 0x80            ; System clock out bit mask
CLKCTRL_CLKOUT_bp = 7               ; System clock out bit position

; CLKCTRL_MCLKCTRLB masks
CLKCTRL_PDIV_gm = 0x1E              ; Prescaler divition group mask
CLKCTRL_PDIV_gp = 1                 ; Prescaler divition group position
CLKCTRL_PDIV0_bm = 1<<1           ; Prescaler divition bit 0 mask
CLKCTRL_PDIV0_bp = 1                ; Prescaler divition bit 0 position
CLKCTRL_PDIV1_bm = 1<<2           ; Prescaler divition bit 1 mask
CLKCTRL_PDIV1_bp = 2                ; Prescaler divition bit 1 position
CLKCTRL_PDIV2_bm = 1<<3           ; Prescaler divition bit 2 mask
CLKCTRL_PDIV2_bp = 3                ; Prescaler divition bit 2 position
CLKCTRL_PDIV3_bm = 1<<4           ; Prescaler divition bit 3 mask
CLKCTRL_PDIV3_bp = 4                ; Prescaler divition bit 3 position
CLKCTRL_PEN_bm = 0x01               ; Prescaler enable bit mask
CLKCTRL_PEN_bp = 0                  ; Prescaler enable bit position

; CLKCTRL_MCLKLOCK masks
CLKCTRL_LOCKEN_bm = 0x01            ; lock ebable bit mask
CLKCTRL_LOCKEN_bp = 0               ; lock ebable bit position

; CLKCTRL_MCLKSTATUS masks
CLKCTRL_EXTS_bm = 0x80              ; External Clock status bit mask
CLKCTRL_EXTS_bp = 7                 ; External Clock status bit position
CLKCTRL_OSC20MS_bm = 0x10           ; 20MHz oscillator status bit mask
CLKCTRL_OSC20MS_bp = 4              ; 20MHz oscillator status bit position
CLKCTRL_OSC32KS_bm = 0x20           ; 32KHz oscillator status bit mask
CLKCTRL_OSC32KS_bp = 5              ; 32KHz oscillator status bit position
CLKCTRL_SOSC_bm = 0x01              ; System Oscillator changing bit mask
CLKCTRL_SOSC_bp = 0                 ; System Oscillator changing bit position
CLKCTRL_XOSC32KS_bm = 0x40          ; 32.768 kHz Crystal Oscillator status bit mask
CLKCTRL_XOSC32KS_bp = 6             ; 32.768 kHz Crystal Oscillator status bit position

; CLKCTRL_OSC20MCALIBA masks
CLKCTRL_CALSEL20M_gm = 0xC0         ; Calibration freq select group mask
CLKCTRL_CALSEL20M_gp = 6            ; Calibration freq select group position
CLKCTRL_CALSEL20M0_bm = 1<<6      ; Calibration freq select bit 0 mask
CLKCTRL_CALSEL20M0_bp = 6           ; Calibration freq select bit 0 position
CLKCTRL_CALSEL20M1_bm = 1<<7      ; Calibration freq select bit 1 mask
CLKCTRL_CALSEL20M1_bp = 7           ; Calibration freq select bit 1 position
CLKCTRL_CAL20M_gm = 0x3F            ; Calibration group mask
CLKCTRL_CAL20M_gp = 0               ; Calibration group position
CLKCTRL_CAL20M0_bm = 1<<0         ; Calibration bit 0 mask
CLKCTRL_CAL20M0_bp = 0              ; Calibration bit 0 position
CLKCTRL_CAL20M1_bm = 1<<1         ; Calibration bit 1 mask
CLKCTRL_CAL20M1_bp = 1              ; Calibration bit 1 position
CLKCTRL_CAL20M2_bm = 1<<2         ; Calibration bit 2 mask
CLKCTRL_CAL20M2_bp = 2              ; Calibration bit 2 position
CLKCTRL_CAL20M3_bm = 1<<3         ; Calibration bit 3 mask
CLKCTRL_CAL20M3_bp = 3              ; Calibration bit 3 position
CLKCTRL_CAL20M4_bm = 1<<4         ; Calibration bit 4 mask
CLKCTRL_CAL20M4_bp = 4              ; Calibration bit 4 position
CLKCTRL_CAL20M5_bm = 1<<5         ; Calibration bit 5 mask
CLKCTRL_CAL20M5_bp = 5              ; Calibration bit 5 position

; CLKCTRL_OSC20MCALIBB masks
CLKCTRL_LOCK_bm = 0x80              ; Lock bit mask
CLKCTRL_LOCK_bp = 7                 ; Lock bit position
CLKCTRL_TEMPCAL20M_gm = 0x0F        ; Oscillator temperature coefficient group mask
CLKCTRL_TEMPCAL20M_gp = 0           ; Oscillator temperature coefficient group position
CLKCTRL_TEMPCAL20M0_bm = 1<<0     ; Oscillator temperature coefficient bit 0 mask
CLKCTRL_TEMPCAL20M0_bp = 0          ; Oscillator temperature coefficient bit 0 position
CLKCTRL_TEMPCAL20M1_bm = 1<<1     ; Oscillator temperature coefficient bit 1 mask
CLKCTRL_TEMPCAL20M1_bp = 1          ; Oscillator temperature coefficient bit 1 position
CLKCTRL_TEMPCAL20M2_bm = 1<<2     ; Oscillator temperature coefficient bit 2 mask
CLKCTRL_TEMPCAL20M2_bp = 2          ; Oscillator temperature coefficient bit 2 position
CLKCTRL_TEMPCAL20M3_bm = 1<<3     ; Oscillator temperature coefficient bit 3 mask
CLKCTRL_TEMPCAL20M3_bp = 3          ; Oscillator temperature coefficient bit 3 position

; CLKCTRL_OSC20MCTRLA masks
CLKCTRL_RUNSTDBY_bm = 0x02          ; Run standby bit mask
CLKCTRL_RUNSTDBY_bp = 1             ; Run standby bit position

; CLKCTRL_OSC32KCTRLA masks
; Masks for CLKCTRL_RUNSTDBY already defined

; CLKCTRL_XOSC32KCTRLA masks
CLKCTRL_CSUT_gm = 0x30              ; Crystal startup time group mask
CLKCTRL_CSUT_gp = 4                 ; Crystal startup time group position
CLKCTRL_CSUT0_bm = 1<<4           ; Crystal startup time bit 0 mask
CLKCTRL_CSUT0_bp = 4                ; Crystal startup time bit 0 position
CLKCTRL_CSUT1_bm = 1<<5           ; Crystal startup time bit 1 mask
CLKCTRL_CSUT1_bp = 5                ; Crystal startup time bit 1 position
CLKCTRL_ENABLE_bm = 0x01            ; Enable bit mask
CLKCTRL_ENABLE_bp = 0               ; Enable bit position
; Masks for CLKCTRL_RUNSTDBY already defined
CLKCTRL_SEL_bm = 0x04               ; Select bit mask
CLKCTRL_SEL_bp = 2                  ; Select bit position

; clock select select
CLKCTRL_CKSEL_OSC20M_gc = 0x00<<0 ; 20MHz internal oscillator
CLKCTRL_CKSEL_OSCULP32K_gc = 0x01<<0 ; 32KHz internal Ultra Low Power oscillator
CLKCTRL_CKSEL_XOSC32K_gc = 0x02<<0 ; 32.768kHz external crystal oscillator
CLKCTRL_CKSEL_EXTCLK_gc = 0x03<<0 ; External clock

; Prescaler divition select
CLKCTRL_PDIV_2X_gc = 0x00<<1      ; 2X
CLKCTRL_PDIV_4X_gc = 0x01<<1      ; 4X
CLKCTRL_PDIV_8X_gc = 0x02<<1      ; 8X
CLKCTRL_PDIV_16X_gc = 0x03<<1     ; 16X
CLKCTRL_PDIV_32X_gc = 0x04<<1     ; 32X
CLKCTRL_PDIV_64X_gc = 0x05<<1     ; 64X
CLKCTRL_PDIV_6X_gc = 0x08<<1      ; 6X
CLKCTRL_PDIV_10X_gc = 0x09<<1     ; 10X
CLKCTRL_PDIV_12X_gc = 0x0A<<1     ; 12X
CLKCTRL_PDIV_24X_gc = 0x0B<<1     ; 24X
CLKCTRL_PDIV_48X_gc = 0x0C<<1     ; 48X

; Crystal startup time select
CLKCTRL_CSUT_1K_gc = 0x00<<4      ; 1k cycles
CLKCTRL_CSUT_16K_gc = 0x01<<4     ; 16k cycles
CLKCTRL_CSUT_32K_gc = 0x02<<4     ; 32k cycles
CLKCTRL_CSUT_64K_gc = 0x03<<4     ; 64k cycles


;*************************************************************************
;** CPU - CPU
;*************************************************************************

; CPU_CCP masks
CPU_CCP_gm = 0xFF                   ; CCP signature group mask
CPU_CCP_gp = 0                      ; CCP signature group position
CPU_CCP0_bm = 1<<0                ; CCP signature bit 0 mask
CPU_CCP0_bp = 0                     ; CCP signature bit 0 position
CPU_CCP1_bm = 1<<1                ; CCP signature bit 1 mask
CPU_CCP1_bp = 1                     ; CCP signature bit 1 position
CPU_CCP2_bm = 1<<2                ; CCP signature bit 2 mask
CPU_CCP2_bp = 2                     ; CCP signature bit 2 position
CPU_CCP3_bm = 1<<3                ; CCP signature bit 3 mask
CPU_CCP3_bp = 3                     ; CCP signature bit 3 position
CPU_CCP4_bm = 1<<4                ; CCP signature bit 4 mask
CPU_CCP4_bp = 4                     ; CCP signature bit 4 position
CPU_CCP5_bm = 1<<5                ; CCP signature bit 5 mask
CPU_CCP5_bp = 5                     ; CCP signature bit 5 position
CPU_CCP6_bm = 1<<6                ; CCP signature bit 6 mask
CPU_CCP6_bp = 6                     ; CCP signature bit 6 position
CPU_CCP7_bm = 1<<7                ; CCP signature bit 7 mask
CPU_CCP7_bp = 7                     ; CCP signature bit 7 position

; CPU_SREG masks
CPU_C_bm = 0x01                     ; Carry Flag bit mask
CPU_C_bp = 0                        ; Carry Flag bit position
CPU_H_bm = 0x20                     ; Half Carry Flag bit mask
CPU_H_bp = 5                        ; Half Carry Flag bit position
CPU_I_bm = 0x80                     ; Global Interrupt Enable Flag bit mask
CPU_I_bp = 7                        ; Global Interrupt Enable Flag bit position
CPU_N_bm = 0x04                     ; Negative Flag bit mask
CPU_N_bp = 2                        ; Negative Flag bit position
CPU_S_bm = 0x10                     ; N Exclusive Or V Flag bit mask
CPU_S_bp = 4                        ; N Exclusive Or V Flag bit position
CPU_T_bm = 0x40                     ; Transfer Bit bit mask
CPU_T_bp = 6                        ; Transfer Bit bit position
CPU_V_bm = 0x08                     ; Two's Complement Overflow Flag bit mask
CPU_V_bp = 3                        ; Two's Complement Overflow Flag bit position
CPU_Z_bm = 0x02                     ; Zero Flag bit mask
CPU_Z_bp = 1                        ; Zero Flag bit position

; CCP signature select
CPU_CCP_SPM_gc = 0x9D<<0          ; SPM Instruction Protection
CPU_CCP_IOREG_gc = 0xD8<<0        ; IO Register Protection


;*************************************************************************
;** CPUINT - Interrupt Controller
;*************************************************************************

; CPUINT_CTRLA masks
CPUINT_CVT_bm = 0x20                ; Compact Vector Table bit mask
CPUINT_CVT_bp = 5                   ; Compact Vector Table bit position
CPUINT_IVSEL_bm = 0x40              ; Interrupt Vector Select bit mask
CPUINT_IVSEL_bp = 6                 ; Interrupt Vector Select bit position
CPUINT_LVL0RR_bm = 0x01             ; Round-robin Scheduling Enable bit mask
CPUINT_LVL0RR_bp = 0                ; Round-robin Scheduling Enable bit position

; CPUINT_LVL0PRI masks
CPUINT_LVL0PRI_gm = 0xFF            ; Interrupt Level Priority group mask
CPUINT_LVL0PRI_gp = 0               ; Interrupt Level Priority group position
CPUINT_LVL0PRI0_bm = 1<<0         ; Interrupt Level Priority bit 0 mask
CPUINT_LVL0PRI0_bp = 0              ; Interrupt Level Priority bit 0 position
CPUINT_LVL0PRI1_bm = 1<<1         ; Interrupt Level Priority bit 1 mask
CPUINT_LVL0PRI1_bp = 1              ; Interrupt Level Priority bit 1 position
CPUINT_LVL0PRI2_bm = 1<<2         ; Interrupt Level Priority bit 2 mask
CPUINT_LVL0PRI2_bp = 2              ; Interrupt Level Priority bit 2 position
CPUINT_LVL0PRI3_bm = 1<<3         ; Interrupt Level Priority bit 3 mask
CPUINT_LVL0PRI3_bp = 3              ; Interrupt Level Priority bit 3 position
CPUINT_LVL0PRI4_bm = 1<<4         ; Interrupt Level Priority bit 4 mask
CPUINT_LVL0PRI4_bp = 4              ; Interrupt Level Priority bit 4 position
CPUINT_LVL0PRI5_bm = 1<<5         ; Interrupt Level Priority bit 5 mask
CPUINT_LVL0PRI5_bp = 5              ; Interrupt Level Priority bit 5 position
CPUINT_LVL0PRI6_bm = 1<<6         ; Interrupt Level Priority bit 6 mask
CPUINT_LVL0PRI6_bp = 6              ; Interrupt Level Priority bit 6 position
CPUINT_LVL0PRI7_bm = 1<<7         ; Interrupt Level Priority bit 7 mask
CPUINT_LVL0PRI7_bp = 7              ; Interrupt Level Priority bit 7 position

; CPUINT_LVL1VEC masks
CPUINT_LVL1VEC_gm = 0xFF            ; Interrupt Vector with High Priority group mask
CPUINT_LVL1VEC_gp = 0               ; Interrupt Vector with High Priority group position
CPUINT_LVL1VEC0_bm = 1<<0         ; Interrupt Vector with High Priority bit 0 mask
CPUINT_LVL1VEC0_bp = 0              ; Interrupt Vector with High Priority bit 0 position
CPUINT_LVL1VEC1_bm = 1<<1         ; Interrupt Vector with High Priority bit 1 mask
CPUINT_LVL1VEC1_bp = 1              ; Interrupt Vector with High Priority bit 1 position
CPUINT_LVL1VEC2_bm = 1<<2         ; Interrupt Vector with High Priority bit 2 mask
CPUINT_LVL1VEC2_bp = 2              ; Interrupt Vector with High Priority bit 2 position
CPUINT_LVL1VEC3_bm = 1<<3         ; Interrupt Vector with High Priority bit 3 mask
CPUINT_LVL1VEC3_bp = 3              ; Interrupt Vector with High Priority bit 3 position
CPUINT_LVL1VEC4_bm = 1<<4         ; Interrupt Vector with High Priority bit 4 mask
CPUINT_LVL1VEC4_bp = 4              ; Interrupt Vector with High Priority bit 4 position
CPUINT_LVL1VEC5_bm = 1<<5         ; Interrupt Vector with High Priority bit 5 mask
CPUINT_LVL1VEC5_bp = 5              ; Interrupt Vector with High Priority bit 5 position
CPUINT_LVL1VEC6_bm = 1<<6         ; Interrupt Vector with High Priority bit 6 mask
CPUINT_LVL1VEC6_bp = 6              ; Interrupt Vector with High Priority bit 6 position
CPUINT_LVL1VEC7_bm = 1<<7         ; Interrupt Vector with High Priority bit 7 mask
CPUINT_LVL1VEC7_bp = 7              ; Interrupt Vector with High Priority bit 7 position

; CPUINT_STATUS masks
CPUINT_LVL0EX_bm = 0x01             ; Level 0 Interrupt Executing bit mask
CPUINT_LVL0EX_bp = 0                ; Level 0 Interrupt Executing bit position
CPUINT_LVL1EX_bm = 0x02             ; Level 1 Interrupt Executing bit mask
CPUINT_LVL1EX_bp = 1                ; Level 1 Interrupt Executing bit position
CPUINT_NMIEX_bm = 0x80              ; Non-maskable Interrupt Executing bit mask
CPUINT_NMIEX_bp = 7                 ; Non-maskable Interrupt Executing bit position


;*************************************************************************
;** CRCSCAN - CRCSCAN
;*************************************************************************

; CRCSCAN_CTRLA masks
CRCSCAN_ENABLE_bm = 0x01            ; Enable CRC scan bit mask
CRCSCAN_ENABLE_bp = 0               ; Enable CRC scan bit position
CRCSCAN_NMIEN_bm = 0x02             ; Enable NMI Trigger bit mask
CRCSCAN_NMIEN_bp = 1                ; Enable NMI Trigger bit position
CRCSCAN_RESET_bm = 0x80             ; Reset CRC scan bit mask
CRCSCAN_RESET_bp = 7                ; Reset CRC scan bit position

; CRCSCAN_CTRLB masks
CRCSCAN_MODE_gm = 0x30              ; CRC Flash Access Mode group mask
CRCSCAN_MODE_gp = 4                 ; CRC Flash Access Mode group position
CRCSCAN_MODE0_bm = 1<<4           ; CRC Flash Access Mode bit 0 mask
CRCSCAN_MODE0_bp = 4                ; CRC Flash Access Mode bit 0 position
CRCSCAN_MODE1_bm = 1<<5           ; CRC Flash Access Mode bit 1 mask
CRCSCAN_MODE1_bp = 5                ; CRC Flash Access Mode bit 1 position
CRCSCAN_SRC_gm = 0x03               ; CRC Source group mask
CRCSCAN_SRC_gp = 0                  ; CRC Source group position
CRCSCAN_SRC0_bm = 1<<0            ; CRC Source bit 0 mask
CRCSCAN_SRC0_bp = 0                 ; CRC Source bit 0 position
CRCSCAN_SRC1_bm = 1<<1            ; CRC Source bit 1 mask
CRCSCAN_SRC1_bp = 1                 ; CRC Source bit 1 position

; CRCSCAN_STATUS masks
CRCSCAN_BUSY_bm = 0x01              ; CRC Busy bit mask
CRCSCAN_BUSY_bp = 0                 ; CRC Busy bit position
CRCSCAN_OK_bm = 0x02                ; CRC Ok bit mask
CRCSCAN_OK_bp = 1                   ; CRC Ok bit position

; CRC Flash Access Mode select
CRCSCAN_MODE_PRIORITY_gc = 0x00<<4 ; Priority to flash
CRCSCAN_MODE_RESERVED_gc = 0x01<<4 ; Reserved
CRCSCAN_MODE_BACKGROUND_gc = 0x02<<4 ; Lowest priority to flash
CRCSCAN_MODE_CONTINUOUS_gc = 0x03<<4 ; Continuous checks in background

; CRC Source select
CRCSCAN_SRC_FLASH_gc = 0x00<<0    ; CRC on entire flash
CRCSCAN_SRC_APPLICATION_gc = 0x01<<0 ; CRC on boot and appl section of flash
CRCSCAN_SRC_BOOT_gc = 0x02<<0     ; CRC on boot section of flash


;*************************************************************************
;** DAC - Digital to Analog Converter
;*************************************************************************

; DAC_CTRLA masks
DAC_ENABLE_bm = 0x01                ; DAC Enable bit mask
DAC_ENABLE_bp = 0                   ; DAC Enable bit position
DAC_OUTEN_bm = 0x40                 ; Output Buffer Enable bit mask
DAC_OUTEN_bp = 6                    ; Output Buffer Enable bit position
DAC_RUNSTDBY_bm = 0x80              ; Run in Standby Mode bit mask
DAC_RUNSTDBY_bp = 7                 ; Run in Standby Mode bit position


;*************************************************************************
;** EVSYS - Event System
;*************************************************************************

; EVSYS_ASYNCCH0 masks
EVSYS_ASYNCCH0_gm = 0xFF            ; Asynchronous Multiplexer Channel 0 group mask
EVSYS_ASYNCCH0_gp = 0               ; Asynchronous Multiplexer Channel 0 group position
EVSYS_ASYNCCH00_bm = 1<<0         ; Asynchronous Multiplexer Channel 0 bit 0 mask
EVSYS_ASYNCCH00_bp = 0              ; Asynchronous Multiplexer Channel 0 bit 0 position
EVSYS_ASYNCCH01_bm = 1<<1         ; Asynchronous Multiplexer Channel 0 bit 1 mask
EVSYS_ASYNCCH01_bp = 1              ; Asynchronous Multiplexer Channel 0 bit 1 position
EVSYS_ASYNCCH02_bm = 1<<2         ; Asynchronous Multiplexer Channel 0 bit 2 mask
EVSYS_ASYNCCH02_bp = 2              ; Asynchronous Multiplexer Channel 0 bit 2 position
EVSYS_ASYNCCH03_bm = 1<<3         ; Asynchronous Multiplexer Channel 0 bit 3 mask
EVSYS_ASYNCCH03_bp = 3              ; Asynchronous Multiplexer Channel 0 bit 3 position
EVSYS_ASYNCCH04_bm = 1<<4         ; Asynchronous Multiplexer Channel 0 bit 4 mask
EVSYS_ASYNCCH04_bp = 4              ; Asynchronous Multiplexer Channel 0 bit 4 position
EVSYS_ASYNCCH05_bm = 1<<5         ; Asynchronous Multiplexer Channel 0 bit 5 mask
EVSYS_ASYNCCH05_bp = 5              ; Asynchronous Multiplexer Channel 0 bit 5 position
EVSYS_ASYNCCH06_bm = 1<<6         ; Asynchronous Multiplexer Channel 0 bit 6 mask
EVSYS_ASYNCCH06_bp = 6              ; Asynchronous Multiplexer Channel 0 bit 6 position
EVSYS_ASYNCCH07_bm = 1<<7         ; Asynchronous Multiplexer Channel 0 bit 7 mask
EVSYS_ASYNCCH07_bp = 7              ; Asynchronous Multiplexer Channel 0 bit 7 position

; EVSYS_ASYNCCH1 masks
EVSYS_ASYNCCH1_gm = 0xFF            ; Asynchronous Multiplexer Channel 1 group mask
EVSYS_ASYNCCH1_gp = 0               ; Asynchronous Multiplexer Channel 1 group position
EVSYS_ASYNCCH10_bm = 1<<0         ; Asynchronous Multiplexer Channel 1 bit 0 mask
EVSYS_ASYNCCH10_bp = 0              ; Asynchronous Multiplexer Channel 1 bit 0 position
EVSYS_ASYNCCH11_bm = 1<<1         ; Asynchronous Multiplexer Channel 1 bit 1 mask
EVSYS_ASYNCCH11_bp = 1              ; Asynchronous Multiplexer Channel 1 bit 1 position
EVSYS_ASYNCCH12_bm = 1<<2         ; Asynchronous Multiplexer Channel 1 bit 2 mask
EVSYS_ASYNCCH12_bp = 2              ; Asynchronous Multiplexer Channel 1 bit 2 position
EVSYS_ASYNCCH13_bm = 1<<3         ; Asynchronous Multiplexer Channel 1 bit 3 mask
EVSYS_ASYNCCH13_bp = 3              ; Asynchronous Multiplexer Channel 1 bit 3 position
EVSYS_ASYNCCH14_bm = 1<<4         ; Asynchronous Multiplexer Channel 1 bit 4 mask
EVSYS_ASYNCCH14_bp = 4              ; Asynchronous Multiplexer Channel 1 bit 4 position
EVSYS_ASYNCCH15_bm = 1<<5         ; Asynchronous Multiplexer Channel 1 bit 5 mask
EVSYS_ASYNCCH15_bp = 5              ; Asynchronous Multiplexer Channel 1 bit 5 position
EVSYS_ASYNCCH16_bm = 1<<6         ; Asynchronous Multiplexer Channel 1 bit 6 mask
EVSYS_ASYNCCH16_bp = 6              ; Asynchronous Multiplexer Channel 1 bit 6 position
EVSYS_ASYNCCH17_bm = 1<<7         ; Asynchronous Multiplexer Channel 1 bit 7 mask
EVSYS_ASYNCCH17_bp = 7              ; Asynchronous Multiplexer Channel 1 bit 7 position

; EVSYS_ASYNCCH2 masks
EVSYS_ASYNCCH2_gm = 0xFF            ; Asynchronous Multiplexer Channel 2 group mask
EVSYS_ASYNCCH2_gp = 0               ; Asynchronous Multiplexer Channel 2 group position
EVSYS_ASYNCCH20_bm = 1<<0         ; Asynchronous Multiplexer Channel 2 bit 0 mask
EVSYS_ASYNCCH20_bp = 0              ; Asynchronous Multiplexer Channel 2 bit 0 position
EVSYS_ASYNCCH21_bm = 1<<1         ; Asynchronous Multiplexer Channel 2 bit 1 mask
EVSYS_ASYNCCH21_bp = 1              ; Asynchronous Multiplexer Channel 2 bit 1 position
EVSYS_ASYNCCH22_bm = 1<<2         ; Asynchronous Multiplexer Channel 2 bit 2 mask
EVSYS_ASYNCCH22_bp = 2              ; Asynchronous Multiplexer Channel 2 bit 2 position
EVSYS_ASYNCCH23_bm = 1<<3         ; Asynchronous Multiplexer Channel 2 bit 3 mask
EVSYS_ASYNCCH23_bp = 3              ; Asynchronous Multiplexer Channel 2 bit 3 position
EVSYS_ASYNCCH24_bm = 1<<4         ; Asynchronous Multiplexer Channel 2 bit 4 mask
EVSYS_ASYNCCH24_bp = 4              ; Asynchronous Multiplexer Channel 2 bit 4 position
EVSYS_ASYNCCH25_bm = 1<<5         ; Asynchronous Multiplexer Channel 2 bit 5 mask
EVSYS_ASYNCCH25_bp = 5              ; Asynchronous Multiplexer Channel 2 bit 5 position
EVSYS_ASYNCCH26_bm = 1<<6         ; Asynchronous Multiplexer Channel 2 bit 6 mask
EVSYS_ASYNCCH26_bp = 6              ; Asynchronous Multiplexer Channel 2 bit 6 position
EVSYS_ASYNCCH27_bm = 1<<7         ; Asynchronous Multiplexer Channel 2 bit 7 mask
EVSYS_ASYNCCH27_bp = 7              ; Asynchronous Multiplexer Channel 2 bit 7 position

; EVSYS_ASYNCCH3 masks
EVSYS_ASYNCCH3_gm = 0xFF            ; Asynchronous Multiplexer Channel 3 group mask
EVSYS_ASYNCCH3_gp = 0               ; Asynchronous Multiplexer Channel 3 group position
EVSYS_ASYNCCH30_bm = 1<<0         ; Asynchronous Multiplexer Channel 3 bit 0 mask
EVSYS_ASYNCCH30_bp = 0              ; Asynchronous Multiplexer Channel 3 bit 0 position
EVSYS_ASYNCCH31_bm = 1<<1         ; Asynchronous Multiplexer Channel 3 bit 1 mask
EVSYS_ASYNCCH31_bp = 1              ; Asynchronous Multiplexer Channel 3 bit 1 position
EVSYS_ASYNCCH32_bm = 1<<2         ; Asynchronous Multiplexer Channel 3 bit 2 mask
EVSYS_ASYNCCH32_bp = 2              ; Asynchronous Multiplexer Channel 3 bit 2 position
EVSYS_ASYNCCH33_bm = 1<<3         ; Asynchronous Multiplexer Channel 3 bit 3 mask
EVSYS_ASYNCCH33_bp = 3              ; Asynchronous Multiplexer Channel 3 bit 3 position
EVSYS_ASYNCCH34_bm = 1<<4         ; Asynchronous Multiplexer Channel 3 bit 4 mask
EVSYS_ASYNCCH34_bp = 4              ; Asynchronous Multiplexer Channel 3 bit 4 position
EVSYS_ASYNCCH35_bm = 1<<5         ; Asynchronous Multiplexer Channel 3 bit 5 mask
EVSYS_ASYNCCH35_bp = 5              ; Asynchronous Multiplexer Channel 3 bit 5 position
EVSYS_ASYNCCH36_bm = 1<<6         ; Asynchronous Multiplexer Channel 3 bit 6 mask
EVSYS_ASYNCCH36_bp = 6              ; Asynchronous Multiplexer Channel 3 bit 6 position
EVSYS_ASYNCCH37_bm = 1<<7         ; Asynchronous Multiplexer Channel 3 bit 7 mask
EVSYS_ASYNCCH37_bp = 7              ; Asynchronous Multiplexer Channel 3 bit 7 position

; EVSYS_ASYNCUSER0 masks
EVSYS_ASYNCUSER0_gm = 0xFF          ; Asynchronous User Selection Ch 0 - TCB0 group mask
EVSYS_ASYNCUSER0_gp = 0             ; Asynchronous User Selection Ch 0 - TCB0 group position
EVSYS_ASYNCUSER00_bm = 1<<0       ; Asynchronous User Selection Ch 0 - TCB0 bit 0 mask
EVSYS_ASYNCUSER00_bp = 0            ; Asynchronous User Selection Ch 0 - TCB0 bit 0 position
EVSYS_ASYNCUSER01_bm = 1<<1       ; Asynchronous User Selection Ch 0 - TCB0 bit 1 mask
EVSYS_ASYNCUSER01_bp = 1            ; Asynchronous User Selection Ch 0 - TCB0 bit 1 position
EVSYS_ASYNCUSER02_bm = 1<<2       ; Asynchronous User Selection Ch 0 - TCB0 bit 2 mask
EVSYS_ASYNCUSER02_bp = 2            ; Asynchronous User Selection Ch 0 - TCB0 bit 2 position
EVSYS_ASYNCUSER03_bm = 1<<3       ; Asynchronous User Selection Ch 0 - TCB0 bit 3 mask
EVSYS_ASYNCUSER03_bp = 3            ; Asynchronous User Selection Ch 0 - TCB0 bit 3 position
EVSYS_ASYNCUSER04_bm = 1<<4       ; Asynchronous User Selection Ch 0 - TCB0 bit 4 mask
EVSYS_ASYNCUSER04_bp = 4            ; Asynchronous User Selection Ch 0 - TCB0 bit 4 position
EVSYS_ASYNCUSER05_bm = 1<<5       ; Asynchronous User Selection Ch 0 - TCB0 bit 5 mask
EVSYS_ASYNCUSER05_bp = 5            ; Asynchronous User Selection Ch 0 - TCB0 bit 5 position
EVSYS_ASYNCUSER06_bm = 1<<6       ; Asynchronous User Selection Ch 0 - TCB0 bit 6 mask
EVSYS_ASYNCUSER06_bp = 6            ; Asynchronous User Selection Ch 0 - TCB0 bit 6 position
EVSYS_ASYNCUSER07_bm = 1<<7       ; Asynchronous User Selection Ch 0 - TCB0 bit 7 mask
EVSYS_ASYNCUSER07_bp = 7            ; Asynchronous User Selection Ch 0 - TCB0 bit 7 position

; EVSYS_ASYNCUSER1 masks
EVSYS_ASYNCUSER1_gm = 0xFF          ; Asynchronous User Selection Ch 1 - ADC0 group mask
EVSYS_ASYNCUSER1_gp = 0             ; Asynchronous User Selection Ch 1 - ADC0 group position
EVSYS_ASYNCUSER10_bm = 1<<0       ; Asynchronous User Selection Ch 1 - ADC0 bit 0 mask
EVSYS_ASYNCUSER10_bp = 0            ; Asynchronous User Selection Ch 1 - ADC0 bit 0 position
EVSYS_ASYNCUSER11_bm = 1<<1       ; Asynchronous User Selection Ch 1 - ADC0 bit 1 mask
EVSYS_ASYNCUSER11_bp = 1            ; Asynchronous User Selection Ch 1 - ADC0 bit 1 position
EVSYS_ASYNCUSER12_bm = 1<<2       ; Asynchronous User Selection Ch 1 - ADC0 bit 2 mask
EVSYS_ASYNCUSER12_bp = 2            ; Asynchronous User Selection Ch 1 - ADC0 bit 2 position
EVSYS_ASYNCUSER13_bm = 1<<3       ; Asynchronous User Selection Ch 1 - ADC0 bit 3 mask
EVSYS_ASYNCUSER13_bp = 3            ; Asynchronous User Selection Ch 1 - ADC0 bit 3 position
EVSYS_ASYNCUSER14_bm = 1<<4       ; Asynchronous User Selection Ch 1 - ADC0 bit 4 mask
EVSYS_ASYNCUSER14_bp = 4            ; Asynchronous User Selection Ch 1 - ADC0 bit 4 position
EVSYS_ASYNCUSER15_bm = 1<<5       ; Asynchronous User Selection Ch 1 - ADC0 bit 5 mask
EVSYS_ASYNCUSER15_bp = 5            ; Asynchronous User Selection Ch 1 - ADC0 bit 5 position
EVSYS_ASYNCUSER16_bm = 1<<6       ; Asynchronous User Selection Ch 1 - ADC0 bit 6 mask
EVSYS_ASYNCUSER16_bp = 6            ; Asynchronous User Selection Ch 1 - ADC0 bit 6 position
EVSYS_ASYNCUSER17_bm = 1<<7       ; Asynchronous User Selection Ch 1 - ADC0 bit 7 mask
EVSYS_ASYNCUSER17_bp = 7            ; Asynchronous User Selection Ch 1 - ADC0 bit 7 position

; EVSYS_ASYNCUSER2 masks
EVSYS_ASYNCUSER2_gm = 0xFF          ; Asynchronous User Selection Ch 2 - CCL LUT0 Event 0 group mask
EVSYS_ASYNCUSER2_gp = 0             ; Asynchronous User Selection Ch 2 - CCL LUT0 Event 0 group position
EVSYS_ASYNCUSER20_bm = 1<<0       ; Asynchronous User Selection Ch 2 - CCL LUT0 Event 0 bit 0 mask
EVSYS_ASYNCUSER20_bp = 0            ; Asynchronous User Selection Ch 2 - CCL LUT0 Event 0 bit 0 position
EVSYS_ASYNCUSER21_bm = 1<<1       ; Asynchronous User Selection Ch 2 - CCL LUT0 Event 0 bit 1 mask
EVSYS_ASYNCUSER21_bp = 1            ; Asynchronous User Selection Ch 2 - CCL LUT0 Event 0 bit 1 position
EVSYS_ASYNCUSER22_bm = 1<<2       ; Asynchronous User Selection Ch 2 - CCL LUT0 Event 0 bit 2 mask
EVSYS_ASYNCUSER22_bp = 2            ; Asynchronous User Selection Ch 2 - CCL LUT0 Event 0 bit 2 position
EVSYS_ASYNCUSER23_bm = 1<<3       ; Asynchronous User Selection Ch 2 - CCL LUT0 Event 0 bit 3 mask
EVSYS_ASYNCUSER23_bp = 3            ; Asynchronous User Selection Ch 2 - CCL LUT0 Event 0 bit 3 position
EVSYS_ASYNCUSER24_bm = 1<<4       ; Asynchronous User Selection Ch 2 - CCL LUT0 Event 0 bit 4 mask
EVSYS_ASYNCUSER24_bp = 4            ; Asynchronous User Selection Ch 2 - CCL LUT0 Event 0 bit 4 position
EVSYS_ASYNCUSER25_bm = 1<<5       ; Asynchronous User Selection Ch 2 - CCL LUT0 Event 0 bit 5 mask
EVSYS_ASYNCUSER25_bp = 5            ; Asynchronous User Selection Ch 2 - CCL LUT0 Event 0 bit 5 position
EVSYS_ASYNCUSER26_bm = 1<<6       ; Asynchronous User Selection Ch 2 - CCL LUT0 Event 0 bit 6 mask
EVSYS_ASYNCUSER26_bp = 6            ; Asynchronous User Selection Ch 2 - CCL LUT0 Event 0 bit 6 position
EVSYS_ASYNCUSER27_bm = 1<<7       ; Asynchronous User Selection Ch 2 - CCL LUT0 Event 0 bit 7 mask
EVSYS_ASYNCUSER27_bp = 7            ; Asynchronous User Selection Ch 2 - CCL LUT0 Event 0 bit 7 position

; EVSYS_ASYNCUSER3 masks
EVSYS_ASYNCUSER3_gm = 0xFF          ; Asynchronous User Selection Ch 3 - CCL LUT1 Event 0 group mask
EVSYS_ASYNCUSER3_gp = 0             ; Asynchronous User Selection Ch 3 - CCL LUT1 Event 0 group position
EVSYS_ASYNCUSER30_bm = 1<<0       ; Asynchronous User Selection Ch 3 - CCL LUT1 Event 0 bit 0 mask
EVSYS_ASYNCUSER30_bp = 0            ; Asynchronous User Selection Ch 3 - CCL LUT1 Event 0 bit 0 position
EVSYS_ASYNCUSER31_bm = 1<<1       ; Asynchronous User Selection Ch 3 - CCL LUT1 Event 0 bit 1 mask
EVSYS_ASYNCUSER31_bp = 1            ; Asynchronous User Selection Ch 3 - CCL LUT1 Event 0 bit 1 position
EVSYS_ASYNCUSER32_bm = 1<<2       ; Asynchronous User Selection Ch 3 - CCL LUT1 Event 0 bit 2 mask
EVSYS_ASYNCUSER32_bp = 2            ; Asynchronous User Selection Ch 3 - CCL LUT1 Event 0 bit 2 position
EVSYS_ASYNCUSER33_bm = 1<<3       ; Asynchronous User Selection Ch 3 - CCL LUT1 Event 0 bit 3 mask
EVSYS_ASYNCUSER33_bp = 3            ; Asynchronous User Selection Ch 3 - CCL LUT1 Event 0 bit 3 position
EVSYS_ASYNCUSER34_bm = 1<<4       ; Asynchronous User Selection Ch 3 - CCL LUT1 Event 0 bit 4 mask
EVSYS_ASYNCUSER34_bp = 4            ; Asynchronous User Selection Ch 3 - CCL LUT1 Event 0 bit 4 position
EVSYS_ASYNCUSER35_bm = 1<<5       ; Asynchronous User Selection Ch 3 - CCL LUT1 Event 0 bit 5 mask
EVSYS_ASYNCUSER35_bp = 5            ; Asynchronous User Selection Ch 3 - CCL LUT1 Event 0 bit 5 position
EVSYS_ASYNCUSER36_bm = 1<<6       ; Asynchronous User Selection Ch 3 - CCL LUT1 Event 0 bit 6 mask
EVSYS_ASYNCUSER36_bp = 6            ; Asynchronous User Selection Ch 3 - CCL LUT1 Event 0 bit 6 position
EVSYS_ASYNCUSER37_bm = 1<<7       ; Asynchronous User Selection Ch 3 - CCL LUT1 Event 0 bit 7 mask
EVSYS_ASYNCUSER37_bp = 7            ; Asynchronous User Selection Ch 3 - CCL LUT1 Event 0 bit 7 position

; EVSYS_ASYNCUSER4 masks
EVSYS_ASYNCUSER4_gm = 0xFF          ; Asynchronous User Selection Ch 4 - CCL LUT0 Event 1 group mask
EVSYS_ASYNCUSER4_gp = 0             ; Asynchronous User Selection Ch 4 - CCL LUT0 Event 1 group position
EVSYS_ASYNCUSER40_bm = 1<<0       ; Asynchronous User Selection Ch 4 - CCL LUT0 Event 1 bit 0 mask
EVSYS_ASYNCUSER40_bp = 0            ; Asynchronous User Selection Ch 4 - CCL LUT0 Event 1 bit 0 position
EVSYS_ASYNCUSER41_bm = 1<<1       ; Asynchronous User Selection Ch 4 - CCL LUT0 Event 1 bit 1 mask
EVSYS_ASYNCUSER41_bp = 1            ; Asynchronous User Selection Ch 4 - CCL LUT0 Event 1 bit 1 position
EVSYS_ASYNCUSER42_bm = 1<<2       ; Asynchronous User Selection Ch 4 - CCL LUT0 Event 1 bit 2 mask
EVSYS_ASYNCUSER42_bp = 2            ; Asynchronous User Selection Ch 4 - CCL LUT0 Event 1 bit 2 position
EVSYS_ASYNCUSER43_bm = 1<<3       ; Asynchronous User Selection Ch 4 - CCL LUT0 Event 1 bit 3 mask
EVSYS_ASYNCUSER43_bp = 3            ; Asynchronous User Selection Ch 4 - CCL LUT0 Event 1 bit 3 position
EVSYS_ASYNCUSER44_bm = 1<<4       ; Asynchronous User Selection Ch 4 - CCL LUT0 Event 1 bit 4 mask
EVSYS_ASYNCUSER44_bp = 4            ; Asynchronous User Selection Ch 4 - CCL LUT0 Event 1 bit 4 position
EVSYS_ASYNCUSER45_bm = 1<<5       ; Asynchronous User Selection Ch 4 - CCL LUT0 Event 1 bit 5 mask
EVSYS_ASYNCUSER45_bp = 5            ; Asynchronous User Selection Ch 4 - CCL LUT0 Event 1 bit 5 position
EVSYS_ASYNCUSER46_bm = 1<<6       ; Asynchronous User Selection Ch 4 - CCL LUT0 Event 1 bit 6 mask
EVSYS_ASYNCUSER46_bp = 6            ; Asynchronous User Selection Ch 4 - CCL LUT0 Event 1 bit 6 position
EVSYS_ASYNCUSER47_bm = 1<<7       ; Asynchronous User Selection Ch 4 - CCL LUT0 Event 1 bit 7 mask
EVSYS_ASYNCUSER47_bp = 7            ; Asynchronous User Selection Ch 4 - CCL LUT0 Event 1 bit 7 position

; EVSYS_ASYNCUSER5 masks
EVSYS_ASYNCUSER5_gm = 0xFF          ; Asynchronous User Selection Ch 5 - CCL LUT1 Event 1 group mask
EVSYS_ASYNCUSER5_gp = 0             ; Asynchronous User Selection Ch 5 - CCL LUT1 Event 1 group position
EVSYS_ASYNCUSER50_bm = 1<<0       ; Asynchronous User Selection Ch 5 - CCL LUT1 Event 1 bit 0 mask
EVSYS_ASYNCUSER50_bp = 0            ; Asynchronous User Selection Ch 5 - CCL LUT1 Event 1 bit 0 position
EVSYS_ASYNCUSER51_bm = 1<<1       ; Asynchronous User Selection Ch 5 - CCL LUT1 Event 1 bit 1 mask
EVSYS_ASYNCUSER51_bp = 1            ; Asynchronous User Selection Ch 5 - CCL LUT1 Event 1 bit 1 position
EVSYS_ASYNCUSER52_bm = 1<<2       ; Asynchronous User Selection Ch 5 - CCL LUT1 Event 1 bit 2 mask
EVSYS_ASYNCUSER52_bp = 2            ; Asynchronous User Selection Ch 5 - CCL LUT1 Event 1 bit 2 position
EVSYS_ASYNCUSER53_bm = 1<<3       ; Asynchronous User Selection Ch 5 - CCL LUT1 Event 1 bit 3 mask
EVSYS_ASYNCUSER53_bp = 3            ; Asynchronous User Selection Ch 5 - CCL LUT1 Event 1 bit 3 position
EVSYS_ASYNCUSER54_bm = 1<<4       ; Asynchronous User Selection Ch 5 - CCL LUT1 Event 1 bit 4 mask
EVSYS_ASYNCUSER54_bp = 4            ; Asynchronous User Selection Ch 5 - CCL LUT1 Event 1 bit 4 position
EVSYS_ASYNCUSER55_bm = 1<<5       ; Asynchronous User Selection Ch 5 - CCL LUT1 Event 1 bit 5 mask
EVSYS_ASYNCUSER55_bp = 5            ; Asynchronous User Selection Ch 5 - CCL LUT1 Event 1 bit 5 position
EVSYS_ASYNCUSER56_bm = 1<<6       ; Asynchronous User Selection Ch 5 - CCL LUT1 Event 1 bit 6 mask
EVSYS_ASYNCUSER56_bp = 6            ; Asynchronous User Selection Ch 5 - CCL LUT1 Event 1 bit 6 position
EVSYS_ASYNCUSER57_bm = 1<<7       ; Asynchronous User Selection Ch 5 - CCL LUT1 Event 1 bit 7 mask
EVSYS_ASYNCUSER57_bp = 7            ; Asynchronous User Selection Ch 5 - CCL LUT1 Event 1 bit 7 position

; EVSYS_ASYNCUSER6 masks
EVSYS_ASYNCUSER6_gm = 0xFF          ; Asynchronous User Selection Ch 6 - TCD0 Event 0 group mask
EVSYS_ASYNCUSER6_gp = 0             ; Asynchronous User Selection Ch 6 - TCD0 Event 0 group position
EVSYS_ASYNCUSER60_bm = 1<<0       ; Asynchronous User Selection Ch 6 - TCD0 Event 0 bit 0 mask
EVSYS_ASYNCUSER60_bp = 0            ; Asynchronous User Selection Ch 6 - TCD0 Event 0 bit 0 position
EVSYS_ASYNCUSER61_bm = 1<<1       ; Asynchronous User Selection Ch 6 - TCD0 Event 0 bit 1 mask
EVSYS_ASYNCUSER61_bp = 1            ; Asynchronous User Selection Ch 6 - TCD0 Event 0 bit 1 position
EVSYS_ASYNCUSER62_bm = 1<<2       ; Asynchronous User Selection Ch 6 - TCD0 Event 0 bit 2 mask
EVSYS_ASYNCUSER62_bp = 2            ; Asynchronous User Selection Ch 6 - TCD0 Event 0 bit 2 position
EVSYS_ASYNCUSER63_bm = 1<<3       ; Asynchronous User Selection Ch 6 - TCD0 Event 0 bit 3 mask
EVSYS_ASYNCUSER63_bp = 3            ; Asynchronous User Selection Ch 6 - TCD0 Event 0 bit 3 position
EVSYS_ASYNCUSER64_bm = 1<<4       ; Asynchronous User Selection Ch 6 - TCD0 Event 0 bit 4 mask
EVSYS_ASYNCUSER64_bp = 4            ; Asynchronous User Selection Ch 6 - TCD0 Event 0 bit 4 position
EVSYS_ASYNCUSER65_bm = 1<<5       ; Asynchronous User Selection Ch 6 - TCD0 Event 0 bit 5 mask
EVSYS_ASYNCUSER65_bp = 5            ; Asynchronous User Selection Ch 6 - TCD0 Event 0 bit 5 position
EVSYS_ASYNCUSER66_bm = 1<<6       ; Asynchronous User Selection Ch 6 - TCD0 Event 0 bit 6 mask
EVSYS_ASYNCUSER66_bp = 6            ; Asynchronous User Selection Ch 6 - TCD0 Event 0 bit 6 position
EVSYS_ASYNCUSER67_bm = 1<<7       ; Asynchronous User Selection Ch 6 - TCD0 Event 0 bit 7 mask
EVSYS_ASYNCUSER67_bp = 7            ; Asynchronous User Selection Ch 6 - TCD0 Event 0 bit 7 position

; EVSYS_ASYNCUSER7 masks
EVSYS_ASYNCUSER7_gm = 0xFF          ; Asynchronous User Selection Ch 7 - TCD0 Event 1 group mask
EVSYS_ASYNCUSER7_gp = 0             ; Asynchronous User Selection Ch 7 - TCD0 Event 1 group position
EVSYS_ASYNCUSER70_bm = 1<<0       ; Asynchronous User Selection Ch 7 - TCD0 Event 1 bit 0 mask
EVSYS_ASYNCUSER70_bp = 0            ; Asynchronous User Selection Ch 7 - TCD0 Event 1 bit 0 position
EVSYS_ASYNCUSER71_bm = 1<<1       ; Asynchronous User Selection Ch 7 - TCD0 Event 1 bit 1 mask
EVSYS_ASYNCUSER71_bp = 1            ; Asynchronous User Selection Ch 7 - TCD0 Event 1 bit 1 position
EVSYS_ASYNCUSER72_bm = 1<<2       ; Asynchronous User Selection Ch 7 - TCD0 Event 1 bit 2 mask
EVSYS_ASYNCUSER72_bp = 2            ; Asynchronous User Selection Ch 7 - TCD0 Event 1 bit 2 position
EVSYS_ASYNCUSER73_bm = 1<<3       ; Asynchronous User Selection Ch 7 - TCD0 Event 1 bit 3 mask
EVSYS_ASYNCUSER73_bp = 3            ; Asynchronous User Selection Ch 7 - TCD0 Event 1 bit 3 position
EVSYS_ASYNCUSER74_bm = 1<<4       ; Asynchronous User Selection Ch 7 - TCD0 Event 1 bit 4 mask
EVSYS_ASYNCUSER74_bp = 4            ; Asynchronous User Selection Ch 7 - TCD0 Event 1 bit 4 position
EVSYS_ASYNCUSER75_bm = 1<<5       ; Asynchronous User Selection Ch 7 - TCD0 Event 1 bit 5 mask
EVSYS_ASYNCUSER75_bp = 5            ; Asynchronous User Selection Ch 7 - TCD0 Event 1 bit 5 position
EVSYS_ASYNCUSER76_bm = 1<<6       ; Asynchronous User Selection Ch 7 - TCD0 Event 1 bit 6 mask
EVSYS_ASYNCUSER76_bp = 6            ; Asynchronous User Selection Ch 7 - TCD0 Event 1 bit 6 position
EVSYS_ASYNCUSER77_bm = 1<<7       ; Asynchronous User Selection Ch 7 - TCD0 Event 1 bit 7 mask
EVSYS_ASYNCUSER77_bp = 7            ; Asynchronous User Selection Ch 7 - TCD0 Event 1 bit 7 position

; EVSYS_ASYNCUSER8 masks
EVSYS_ASYNCUSER8_gm = 0xFF          ; Asynchronous User Selection Ch 8 - Event Out 0 group mask
EVSYS_ASYNCUSER8_gp = 0             ; Asynchronous User Selection Ch 8 - Event Out 0 group position
EVSYS_ASYNCUSER80_bm = 1<<0       ; Asynchronous User Selection Ch 8 - Event Out 0 bit 0 mask
EVSYS_ASYNCUSER80_bp = 0            ; Asynchronous User Selection Ch 8 - Event Out 0 bit 0 position
EVSYS_ASYNCUSER81_bm = 1<<1       ; Asynchronous User Selection Ch 8 - Event Out 0 bit 1 mask
EVSYS_ASYNCUSER81_bp = 1            ; Asynchronous User Selection Ch 8 - Event Out 0 bit 1 position
EVSYS_ASYNCUSER82_bm = 1<<2       ; Asynchronous User Selection Ch 8 - Event Out 0 bit 2 mask
EVSYS_ASYNCUSER82_bp = 2            ; Asynchronous User Selection Ch 8 - Event Out 0 bit 2 position
EVSYS_ASYNCUSER83_bm = 1<<3       ; Asynchronous User Selection Ch 8 - Event Out 0 bit 3 mask
EVSYS_ASYNCUSER83_bp = 3            ; Asynchronous User Selection Ch 8 - Event Out 0 bit 3 position
EVSYS_ASYNCUSER84_bm = 1<<4       ; Asynchronous User Selection Ch 8 - Event Out 0 bit 4 mask
EVSYS_ASYNCUSER84_bp = 4            ; Asynchronous User Selection Ch 8 - Event Out 0 bit 4 position
EVSYS_ASYNCUSER85_bm = 1<<5       ; Asynchronous User Selection Ch 8 - Event Out 0 bit 5 mask
EVSYS_ASYNCUSER85_bp = 5            ; Asynchronous User Selection Ch 8 - Event Out 0 bit 5 position
EVSYS_ASYNCUSER86_bm = 1<<6       ; Asynchronous User Selection Ch 8 - Event Out 0 bit 6 mask
EVSYS_ASYNCUSER86_bp = 6            ; Asynchronous User Selection Ch 8 - Event Out 0 bit 6 position
EVSYS_ASYNCUSER87_bm = 1<<7       ; Asynchronous User Selection Ch 8 - Event Out 0 bit 7 mask
EVSYS_ASYNCUSER87_bp = 7            ; Asynchronous User Selection Ch 8 - Event Out 0 bit 7 position

; EVSYS_ASYNCUSER9 masks
EVSYS_ASYNCUSER9_gm = 0xFF          ; Asynchronous User Selection Ch 9 - Event Out 1 group mask
EVSYS_ASYNCUSER9_gp = 0             ; Asynchronous User Selection Ch 9 - Event Out 1 group position
EVSYS_ASYNCUSER90_bm = 1<<0       ; Asynchronous User Selection Ch 9 - Event Out 1 bit 0 mask
EVSYS_ASYNCUSER90_bp = 0            ; Asynchronous User Selection Ch 9 - Event Out 1 bit 0 position
EVSYS_ASYNCUSER91_bm = 1<<1       ; Asynchronous User Selection Ch 9 - Event Out 1 bit 1 mask
EVSYS_ASYNCUSER91_bp = 1            ; Asynchronous User Selection Ch 9 - Event Out 1 bit 1 position
EVSYS_ASYNCUSER92_bm = 1<<2       ; Asynchronous User Selection Ch 9 - Event Out 1 bit 2 mask
EVSYS_ASYNCUSER92_bp = 2            ; Asynchronous User Selection Ch 9 - Event Out 1 bit 2 position
EVSYS_ASYNCUSER93_bm = 1<<3       ; Asynchronous User Selection Ch 9 - Event Out 1 bit 3 mask
EVSYS_ASYNCUSER93_bp = 3            ; Asynchronous User Selection Ch 9 - Event Out 1 bit 3 position
EVSYS_ASYNCUSER94_bm = 1<<4       ; Asynchronous User Selection Ch 9 - Event Out 1 bit 4 mask
EVSYS_ASYNCUSER94_bp = 4            ; Asynchronous User Selection Ch 9 - Event Out 1 bit 4 position
EVSYS_ASYNCUSER95_bm = 1<<5       ; Asynchronous User Selection Ch 9 - Event Out 1 bit 5 mask
EVSYS_ASYNCUSER95_bp = 5            ; Asynchronous User Selection Ch 9 - Event Out 1 bit 5 position
EVSYS_ASYNCUSER96_bm = 1<<6       ; Asynchronous User Selection Ch 9 - Event Out 1 bit 6 mask
EVSYS_ASYNCUSER96_bp = 6            ; Asynchronous User Selection Ch 9 - Event Out 1 bit 6 position
EVSYS_ASYNCUSER97_bm = 1<<7       ; Asynchronous User Selection Ch 9 - Event Out 1 bit 7 mask
EVSYS_ASYNCUSER97_bp = 7            ; Asynchronous User Selection Ch 9 - Event Out 1 bit 7 position

; EVSYS_ASYNCUSER10 masks
EVSYS_ASYNCUSER10_gm = 0xFF         ; Asynchronous User Selection Ch 10 - Event Out 2 group mask
EVSYS_ASYNCUSER10_gp = 0            ; Asynchronous User Selection Ch 10 - Event Out 2 group position
EVSYS_ASYNCUSER100_bm = 1<<0      ; Asynchronous User Selection Ch 10 - Event Out 2 bit 0 mask
EVSYS_ASYNCUSER100_bp = 0           ; Asynchronous User Selection Ch 10 - Event Out 2 bit 0 position
EVSYS_ASYNCUSER101_bm = 1<<1      ; Asynchronous User Selection Ch 10 - Event Out 2 bit 1 mask
EVSYS_ASYNCUSER101_bp = 1           ; Asynchronous User Selection Ch 10 - Event Out 2 bit 1 position
EVSYS_ASYNCUSER102_bm = 1<<2      ; Asynchronous User Selection Ch 10 - Event Out 2 bit 2 mask
EVSYS_ASYNCUSER102_bp = 2           ; Asynchronous User Selection Ch 10 - Event Out 2 bit 2 position
EVSYS_ASYNCUSER103_bm = 1<<3      ; Asynchronous User Selection Ch 10 - Event Out 2 bit 3 mask
EVSYS_ASYNCUSER103_bp = 3           ; Asynchronous User Selection Ch 10 - Event Out 2 bit 3 position
EVSYS_ASYNCUSER104_bm = 1<<4      ; Asynchronous User Selection Ch 10 - Event Out 2 bit 4 mask
EVSYS_ASYNCUSER104_bp = 4           ; Asynchronous User Selection Ch 10 - Event Out 2 bit 4 position
EVSYS_ASYNCUSER105_bm = 1<<5      ; Asynchronous User Selection Ch 10 - Event Out 2 bit 5 mask
EVSYS_ASYNCUSER105_bp = 5           ; Asynchronous User Selection Ch 10 - Event Out 2 bit 5 position
EVSYS_ASYNCUSER106_bm = 1<<6      ; Asynchronous User Selection Ch 10 - Event Out 2 bit 6 mask
EVSYS_ASYNCUSER106_bp = 6           ; Asynchronous User Selection Ch 10 - Event Out 2 bit 6 position
EVSYS_ASYNCUSER107_bm = 1<<7      ; Asynchronous User Selection Ch 10 - Event Out 2 bit 7 mask
EVSYS_ASYNCUSER107_bp = 7           ; Asynchronous User Selection Ch 10 - Event Out 2 bit 7 position

; EVSYS_SYNCCH0 masks
EVSYS_SYNCCH0_gm = 0xFF             ; Asynchronous User Selection Ch 0 group mask
EVSYS_SYNCCH0_gp = 0                ; Asynchronous User Selection Ch 0 group position
EVSYS_SYNCCH00_bm = 1<<0          ; Asynchronous User Selection Ch 0 bit 0 mask
EVSYS_SYNCCH00_bp = 0               ; Asynchronous User Selection Ch 0 bit 0 position
EVSYS_SYNCCH01_bm = 1<<1          ; Asynchronous User Selection Ch 0 bit 1 mask
EVSYS_SYNCCH01_bp = 1               ; Asynchronous User Selection Ch 0 bit 1 position
EVSYS_SYNCCH02_bm = 1<<2          ; Asynchronous User Selection Ch 0 bit 2 mask
EVSYS_SYNCCH02_bp = 2               ; Asynchronous User Selection Ch 0 bit 2 position
EVSYS_SYNCCH03_bm = 1<<3          ; Asynchronous User Selection Ch 0 bit 3 mask
EVSYS_SYNCCH03_bp = 3               ; Asynchronous User Selection Ch 0 bit 3 position
EVSYS_SYNCCH04_bm = 1<<4          ; Asynchronous User Selection Ch 0 bit 4 mask
EVSYS_SYNCCH04_bp = 4               ; Asynchronous User Selection Ch 0 bit 4 position
EVSYS_SYNCCH05_bm = 1<<5          ; Asynchronous User Selection Ch 0 bit 5 mask
EVSYS_SYNCCH05_bp = 5               ; Asynchronous User Selection Ch 0 bit 5 position
EVSYS_SYNCCH06_bm = 1<<6          ; Asynchronous User Selection Ch 0 bit 6 mask
EVSYS_SYNCCH06_bp = 6               ; Asynchronous User Selection Ch 0 bit 6 position
EVSYS_SYNCCH07_bm = 1<<7          ; Asynchronous User Selection Ch 0 bit 7 mask
EVSYS_SYNCCH07_bp = 7               ; Asynchronous User Selection Ch 0 bit 7 position

; EVSYS_SYNCCH1 masks
EVSYS_SYNCCH1_gm = 0xFF             ; Synchronous Multiplexer Channel 1 group mask
EVSYS_SYNCCH1_gp = 0                ; Synchronous Multiplexer Channel 1 group position
EVSYS_SYNCCH10_bm = 1<<0          ; Synchronous Multiplexer Channel 1 bit 0 mask
EVSYS_SYNCCH10_bp = 0               ; Synchronous Multiplexer Channel 1 bit 0 position
EVSYS_SYNCCH11_bm = 1<<1          ; Synchronous Multiplexer Channel 1 bit 1 mask
EVSYS_SYNCCH11_bp = 1               ; Synchronous Multiplexer Channel 1 bit 1 position
EVSYS_SYNCCH12_bm = 1<<2          ; Synchronous Multiplexer Channel 1 bit 2 mask
EVSYS_SYNCCH12_bp = 2               ; Synchronous Multiplexer Channel 1 bit 2 position
EVSYS_SYNCCH13_bm = 1<<3          ; Synchronous Multiplexer Channel 1 bit 3 mask
EVSYS_SYNCCH13_bp = 3               ; Synchronous Multiplexer Channel 1 bit 3 position
EVSYS_SYNCCH14_bm = 1<<4          ; Synchronous Multiplexer Channel 1 bit 4 mask
EVSYS_SYNCCH14_bp = 4               ; Synchronous Multiplexer Channel 1 bit 4 position
EVSYS_SYNCCH15_bm = 1<<5          ; Synchronous Multiplexer Channel 1 bit 5 mask
EVSYS_SYNCCH15_bp = 5               ; Synchronous Multiplexer Channel 1 bit 5 position
EVSYS_SYNCCH16_bm = 1<<6          ; Synchronous Multiplexer Channel 1 bit 6 mask
EVSYS_SYNCCH16_bp = 6               ; Synchronous Multiplexer Channel 1 bit 6 position
EVSYS_SYNCCH17_bm = 1<<7          ; Synchronous Multiplexer Channel 1 bit 7 mask
EVSYS_SYNCCH17_bp = 7               ; Synchronous Multiplexer Channel 1 bit 7 position

; EVSYS_SYNCUSER0 masks
EVSYS_SYNCUSER0_gm = 0xFF           ; Synchronous User Ch 0 - TCA0 group mask
EVSYS_SYNCUSER0_gp = 0              ; Synchronous User Ch 0 - TCA0 group position
EVSYS_SYNCUSER00_bm = 1<<0        ; Synchronous User Ch 0 - TCA0 bit 0 mask
EVSYS_SYNCUSER00_bp = 0             ; Synchronous User Ch 0 - TCA0 bit 0 position
EVSYS_SYNCUSER01_bm = 1<<1        ; Synchronous User Ch 0 - TCA0 bit 1 mask
EVSYS_SYNCUSER01_bp = 1             ; Synchronous User Ch 0 - TCA0 bit 1 position
EVSYS_SYNCUSER02_bm = 1<<2        ; Synchronous User Ch 0 - TCA0 bit 2 mask
EVSYS_SYNCUSER02_bp = 2             ; Synchronous User Ch 0 - TCA0 bit 2 position
EVSYS_SYNCUSER03_bm = 1<<3        ; Synchronous User Ch 0 - TCA0 bit 3 mask
EVSYS_SYNCUSER03_bp = 3             ; Synchronous User Ch 0 - TCA0 bit 3 position
EVSYS_SYNCUSER04_bm = 1<<4        ; Synchronous User Ch 0 - TCA0 bit 4 mask
EVSYS_SYNCUSER04_bp = 4             ; Synchronous User Ch 0 - TCA0 bit 4 position
EVSYS_SYNCUSER05_bm = 1<<5        ; Synchronous User Ch 0 - TCA0 bit 5 mask
EVSYS_SYNCUSER05_bp = 5             ; Synchronous User Ch 0 - TCA0 bit 5 position
EVSYS_SYNCUSER06_bm = 1<<6        ; Synchronous User Ch 0 - TCA0 bit 6 mask
EVSYS_SYNCUSER06_bp = 6             ; Synchronous User Ch 0 - TCA0 bit 6 position
EVSYS_SYNCUSER07_bm = 1<<7        ; Synchronous User Ch 0 - TCA0 bit 7 mask
EVSYS_SYNCUSER07_bp = 7             ; Synchronous User Ch 0 - TCA0 bit 7 position

; EVSYS_SYNCUSER1 masks
EVSYS_SYNCUSER1_gm = 0xFF           ; Synchronous User Ch 1 - USART0 group mask
EVSYS_SYNCUSER1_gp = 0              ; Synchronous User Ch 1 - USART0 group position
EVSYS_SYNCUSER10_bm = 1<<0        ; Synchronous User Ch 1 - USART0 bit 0 mask
EVSYS_SYNCUSER10_bp = 0             ; Synchronous User Ch 1 - USART0 bit 0 position
EVSYS_SYNCUSER11_bm = 1<<1        ; Synchronous User Ch 1 - USART0 bit 1 mask
EVSYS_SYNCUSER11_bp = 1             ; Synchronous User Ch 1 - USART0 bit 1 position
EVSYS_SYNCUSER12_bm = 1<<2        ; Synchronous User Ch 1 - USART0 bit 2 mask
EVSYS_SYNCUSER12_bp = 2             ; Synchronous User Ch 1 - USART0 bit 2 position
EVSYS_SYNCUSER13_bm = 1<<3        ; Synchronous User Ch 1 - USART0 bit 3 mask
EVSYS_SYNCUSER13_bp = 3             ; Synchronous User Ch 1 - USART0 bit 3 position
EVSYS_SYNCUSER14_bm = 1<<4        ; Synchronous User Ch 1 - USART0 bit 4 mask
EVSYS_SYNCUSER14_bp = 4             ; Synchronous User Ch 1 - USART0 bit 4 position
EVSYS_SYNCUSER15_bm = 1<<5        ; Synchronous User Ch 1 - USART0 bit 5 mask
EVSYS_SYNCUSER15_bp = 5             ; Synchronous User Ch 1 - USART0 bit 5 position
EVSYS_SYNCUSER16_bm = 1<<6        ; Synchronous User Ch 1 - USART0 bit 6 mask
EVSYS_SYNCUSER16_bp = 6             ; Synchronous User Ch 1 - USART0 bit 6 position
EVSYS_SYNCUSER17_bm = 1<<7        ; Synchronous User Ch 1 - USART0 bit 7 mask
EVSYS_SYNCUSER17_bp = 7             ; Synchronous User Ch 1 - USART0 bit 7 position

; Asynchronous Multiplexer Channel 0 select
EVSYS_ASYNCCH0_OFF_gc = 0x00<<0   ; Off
EVSYS_ASYNCCH0_CCL_LUT0_gc = 0x01<<0 ; Configurable Custom Logic LUT0
EVSYS_ASYNCCH0_CCL_LUT1_gc = 0x02<<0 ; Configurable Custom Logic LUT1
EVSYS_ASYNCCH0_AC0_OUT_gc = 0x03<<0 ; Analog Comparator 0 out
EVSYS_ASYNCCH0_TCD0_CMPBCLR_gc = 0x04<<0 ; Timer/Counter D0 compare B clear
EVSYS_ASYNCCH0_TCD0_CMPASET_gc = 0x05<<0 ; Timer/Counter D0 compare A set
EVSYS_ASYNCCH0_TCD0_CMPBSET_gc = 0x06<<0 ; Timer/Counter D0 compare B set
EVSYS_ASYNCCH0_TCD0_PROGEV_gc = 0x07<<0 ; Timer/Counter D0 program event
EVSYS_ASYNCCH0_RTC_OVF_gc = 0x08<<0 ; Real Time Counter overflow
EVSYS_ASYNCCH0_RTC_CMP_gc = 0x09<<0 ; Real Time Counter compare
EVSYS_ASYNCCH0_PORTA_PIN0_gc = 0x0A<<0 ; Asynchronous Event from Pin PA0
EVSYS_ASYNCCH0_PORTA_PIN1_gc = 0x0B<<0 ; Asynchronous Event from Pin PA1
EVSYS_ASYNCCH0_PORTA_PIN2_gc = 0x0C<<0 ; Asynchronous Event from Pin PA2
EVSYS_ASYNCCH0_PORTA_PIN3_gc = 0x0D<<0 ; Asynchronous Event from Pin PA3
EVSYS_ASYNCCH0_PORTA_PIN4_gc = 0x0E<<0 ; Asynchronous Event from Pin PA4
EVSYS_ASYNCCH0_PORTA_PIN5_gc = 0x0F<<0 ; Asynchronous Event from Pin PA5
EVSYS_ASYNCCH0_PORTA_PIN6_gc = 0x10<<0 ; Asynchronous Event from Pin PA6
EVSYS_ASYNCCH0_PORTA_PIN7_gc = 0x11<<0 ; Asynchronous Event from Pin PA7
EVSYS_ASYNCCH0_UPDI_gc = 0x12<<0  ; Unified Program and debug interface

; Asynchronous Multiplexer Channel 1 select
EVSYS_ASYNCCH1_OFF_gc = 0x00<<0   ; Off
EVSYS_ASYNCCH1_CCL_LUT0_gc = 0x01<<0 ; Configurable custom logic LUT0
EVSYS_ASYNCCH1_CCL_LUT1_gc = 0x02<<0 ; Configurable custom logic LUT1
EVSYS_ASYNCCH1_AC0_OUT_gc = 0x03<<0 ; Analog Comparator 0 out
EVSYS_ASYNCCH1_TCD0_CMPBCLR_gc = 0x04<<0 ; Timer/Counter D0 compare B clear
EVSYS_ASYNCCH1_TCD0_CMPASET_gc = 0x05<<0 ; Timer/Counter D0 compare A set
EVSYS_ASYNCCH1_TCD0_CMPBSET_gc = 0x06<<0 ; Timer/Counter D0 compare B set
EVSYS_ASYNCCH1_TCD0_PROGEV_gc = 0x07<<0 ; Timer/Counter D0 program event
EVSYS_ASYNCCH1_RTC_OVF_gc = 0x08<<0 ; Real Time Counter overflow
EVSYS_ASYNCCH1_RTC_CMP_gc = 0x09<<0 ; Real Time Counter compare
EVSYS_ASYNCCH1_PORTB_PIN0_gc = 0x0A<<0 ; Asynchronous Event from Pin PB0
EVSYS_ASYNCCH1_PORTB_PIN1_gc = 0x0B<<0 ; Asynchronous Event from Pin PB1
EVSYS_ASYNCCH1_PORTB_PIN2_gc = 0x0C<<0 ; Asynchronous Event from Pin PB2
EVSYS_ASYNCCH1_PORTB_PIN3_gc = 0x0D<<0 ; Asynchronous Event from Pin PB3
EVSYS_ASYNCCH1_PORTB_PIN4_gc = 0x0E<<0 ; Asynchronous Event from Pin PB4
EVSYS_ASYNCCH1_PORTB_PIN5_gc = 0x0F<<0 ; Asynchronous Event from Pin PB5
EVSYS_ASYNCCH1_PORTB_PIN6_gc = 0x10<<0 ; Asynchronous Event from Pin PB6
EVSYS_ASYNCCH1_PORTB_PIN7_gc = 0x11<<0 ; Asynchronous Event from Pin PB7

; Asynchronous Multiplexer Channel 2 select
EVSYS_ASYNCCH2_OFF_gc = 0x00<<0   ; Off
EVSYS_ASYNCCH2_CCL_LUT0_gc = 0x01<<0 ; Configurable Custom Logic LUT0
EVSYS_ASYNCCH2_CCL_LUT1_gc = 0x02<<0 ; Configurable Custom Logic LUT1
EVSYS_ASYNCCH2_AC0_OUT_gc = 0x03<<0 ; Analog Comparator 0 out
EVSYS_ASYNCCH2_TCD0_CMPBCLR_gc = 0x04<<0 ; Timer/Counter D0 compare B clear
EVSYS_ASYNCCH2_TCD0_CMPASET_gc = 0x05<<0 ; Timer/Counter D0 compare A set
EVSYS_ASYNCCH2_TCD0_CMPBSET_gc = 0x06<<0 ; Timer/Counter D0 compare B set
EVSYS_ASYNCCH2_TCD0_PROGEV_gc = 0x07<<0 ; Timer/Counter D0 program event
EVSYS_ASYNCCH2_RTC_OVF_gc = 0x08<<0 ; Real Time Counter overflow
EVSYS_ASYNCCH2_RTC_CMP_gc = 0x09<<0 ; Real Time Counter compare
EVSYS_ASYNCCH2_PORTC_PIN0_gc = 0x0A<<0 ; Asynchronous Event from Pin PC0
EVSYS_ASYNCCH2_PORTC_PIN1_gc = 0x0B<<0 ; Asynchronous Event from Pin PC1
EVSYS_ASYNCCH2_PORTC_PIN2_gc = 0x0C<<0 ; Asynchronous Event from Pin PC2
EVSYS_ASYNCCH2_PORTC_PIN3_gc = 0x0D<<0 ; Asynchronous Event from Pin PC3
EVSYS_ASYNCCH2_PORTC_PIN4_gc = 0x0E<<0 ; Asynchronous Event from Pin PC4
EVSYS_ASYNCCH2_PORTC_PIN5_gc = 0x0F<<0 ; Asynchronous Event from Pin PC5

; Asynchronous Multiplexer Channel 3 select
EVSYS_ASYNCCH3_OFF_gc = 0x00<<0   ; Off
EVSYS_ASYNCCH3_CCL_LUT0_gc = 0x01<<0 ; Configurable custom logic LUT0
EVSYS_ASYNCCH3_CCL_LUT1_gc = 0x02<<0 ; Configurable custom logic LUT1
EVSYS_ASYNCCH3_AC0_OUT_gc = 0x03<<0 ; Analog Comparator 0 out
EVSYS_ASYNCCH3_TCD0_CMPBCLR_gc = 0x04<<0 ; Timer/Counter type D compare B clear
EVSYS_ASYNCCH3_TCD0_CMPASET_gc = 0x05<<0 ; Timer/Counter type D compare A set
EVSYS_ASYNCCH3_TCD0_CMPBSET_gc = 0x06<<0 ; Timer/Counter type D compare B set
EVSYS_ASYNCCH3_TCD0_PROGEV_gc = 0x07<<0 ; Timer/Counter type D program event
EVSYS_ASYNCCH3_RTC_OVF_gc = 0x08<<0 ; Real Time Counter overflow
EVSYS_ASYNCCH3_RTC_CMP_gc = 0x09<<0 ; Real Time Counter compare
EVSYS_ASYNCCH3_PIT_DIV8192_gc = 0x0A<<0 ; Periodic Interrupt CLK_RTC div 8192
EVSYS_ASYNCCH3_PIT_DIV4096_gc = 0x0B<<0 ; Periodic Interrupt CLK_RTC div 4096
EVSYS_ASYNCCH3_PIT_DIV2048_gc = 0x0C<<0 ; Periodic Interrupt CLK_RTC div 2048
EVSYS_ASYNCCH3_PIT_DIV1024_gc = 0x0D<<0 ; Periodic Interrupt CLK_RTC div 1024
EVSYS_ASYNCCH3_PIT_DIV512_gc = 0x0E<<0 ; Periodic Interrupt CLK_RTC div 512
EVSYS_ASYNCCH3_PIT_DIV256_gc = 0x0F<<0 ; Periodic Interrupt CLK_RTC div 256
EVSYS_ASYNCCH3_PIT_DIV128_gc = 0x10<<0 ; Periodic Interrupt CLK_RTC div 128
EVSYS_ASYNCCH3_PIT_DIV64_gc = 0x11<<0 ; Periodic Interrupt CLK_RTC div 64

; Asynchronous User Selection Ch 0 - TCB0 select
EVSYS_ASYNCUSER0_OFF_gc = 0x00<<0 ; Off
EVSYS_ASYNCUSER0_SYNCCH0_gc = 0x01<<0 ; Synchronous Event Channel 0
EVSYS_ASYNCUSER0_SYNCCH1_gc = 0x02<<0 ; Synchronous Event Channel 1
EVSYS_ASYNCUSER0_ASYNCCH0_gc = 0x03<<0 ; Asynchronous Event Channel 0
EVSYS_ASYNCUSER0_ASYNCCH1_gc = 0x04<<0 ; Asynchronous Event Channel 1
EVSYS_ASYNCUSER0_ASYNCCH2_gc = 0x05<<0 ; Asynchronous Event Channel 2
EVSYS_ASYNCUSER0_ASYNCCH3_gc = 0x06<<0 ; Asynchronous Event Channel 3

; Asynchronous User Selection Ch 1 - ADC0 select
EVSYS_ASYNCUSER1_OFF_gc = 0x00<<0 ; Off
EVSYS_ASYNCUSER1_SYNCCH0_gc = 0x01<<0 ; Synchronous Event Channel 0
EVSYS_ASYNCUSER1_SYNCCH1_gc = 0x02<<0 ; Synchronous Event Channel 1
EVSYS_ASYNCUSER1_ASYNCCH0_gc = 0x03<<0 ; Asynchronous Event Channel 0
EVSYS_ASYNCUSER1_ASYNCCH1_gc = 0x04<<0 ; Asynchronous Event Channel 1
EVSYS_ASYNCUSER1_ASYNCCH2_gc = 0x05<<0 ; Asynchronous Event Channel 2
EVSYS_ASYNCUSER1_ASYNCCH3_gc = 0x06<<0 ; Asynchronous Event Channel 3

; Asynchronous User Selection Ch 2 - CCL LUT0 Event 0 select
EVSYS_ASYNCUSER2_OFF_gc = 0x00<<0 ; Off
EVSYS_ASYNCUSER2_SYNCCH0_gc = 0x01<<0 ; Synchronous Event Channel 0
EVSYS_ASYNCUSER2_SYNCCH1_gc = 0x02<<0 ; Synchronous Event Channel 1
EVSYS_ASYNCUSER2_ASYNCCH0_gc = 0x03<<0 ; Asynchronous Event Channel 0
EVSYS_ASYNCUSER2_ASYNCCH1_gc = 0x04<<0 ; Asynchronous Event Channel 1
EVSYS_ASYNCUSER2_ASYNCCH2_gc = 0x05<<0 ; Asynchronous Event Channel 2
EVSYS_ASYNCUSER2_ASYNCCH3_gc = 0x06<<0 ; Asynchronous Event Channel 3

; Asynchronous User Selection Ch 3 - CCL LUT1 Event 0 select
EVSYS_ASYNCUSER3_OFF_gc = 0x00<<0 ; Off
EVSYS_ASYNCUSER3_SYNCCH0_gc = 0x01<<0 ; Synchronous Event Channel 0
EVSYS_ASYNCUSER3_SYNCCH1_gc = 0x02<<0 ; Synchronous Event Channel 1
EVSYS_ASYNCUSER3_ASYNCCH0_gc = 0x03<<0 ; Asynchronous Event Channel 0
EVSYS_ASYNCUSER3_ASYNCCH1_gc = 0x04<<0 ; Asynchronous Event Channel 1
EVSYS_ASYNCUSER3_ASYNCCH2_gc = 0x05<<0 ; Asynchronous Event Channel 2
EVSYS_ASYNCUSER3_ASYNCCH3_gc = 0x06<<0 ; Asynchronous Event Channel 3

; Asynchronous User Selection Ch 4 - CCL LUT0 Event 1 select
EVSYS_ASYNCUSER4_OFF_gc = 0x00<<0 ; Off
EVSYS_ASYNCUSER4_SYNCCH0_gc = 0x01<<0 ; Synchronous Event Channel 0
EVSYS_ASYNCUSER4_SYNCCH1_gc = 0x02<<0 ; Synchronous Event Channel 1
EVSYS_ASYNCUSER4_ASYNCCH0_gc = 0x03<<0 ; Asynchronous Event Channel 0
EVSYS_ASYNCUSER4_ASYNCCH1_gc = 0x04<<0 ; Asynchronous Event Channel 1
EVSYS_ASYNCUSER4_ASYNCCH2_gc = 0x05<<0 ; Asynchronous Event Channel 2
EVSYS_ASYNCUSER4_ASYNCCH3_gc = 0x06<<0 ; Asynchronous Event Channel 3

; Asynchronous User Selection Ch 5 - CCL LUT1 Event 1 select
EVSYS_ASYNCUSER5_OFF_gc = 0x00<<0 ; Off
EVSYS_ASYNCUSER5_SYNCCH0_gc = 0x01<<0 ; Synchronous Event Channel 0
EVSYS_ASYNCUSER5_SYNCCH1_gc = 0x02<<0 ; Synchronous Event Channel 1
EVSYS_ASYNCUSER5_ASYNCCH0_gc = 0x03<<0 ; Asynchronous Event Channel 0
EVSYS_ASYNCUSER5_ASYNCCH1_gc = 0x04<<0 ; Asynchronous Event Channel 1
EVSYS_ASYNCUSER5_ASYNCCH2_gc = 0x05<<0 ; Asynchronous Event Channel 2
EVSYS_ASYNCUSER5_ASYNCCH3_gc = 0x06<<0 ; Asynchronous Event Channel 3

; Asynchronous User Selection Ch 6 - TCD0 Event 0 select
EVSYS_ASYNCUSER6_OFF_gc = 0x00<<0 ; Off
EVSYS_ASYNCUSER6_SYNCCH0_gc = 0x01<<0 ; Synchronous Event Channel 0
EVSYS_ASYNCUSER6_SYNCCH1_gc = 0x02<<0 ; Synchronous Event Channel 1
EVSYS_ASYNCUSER6_ASYNCCH0_gc = 0x03<<0 ; Asynchronous Event Channel 0
EVSYS_ASYNCUSER6_ASYNCCH1_gc = 0x04<<0 ; Asynchronous Event Channel 1
EVSYS_ASYNCUSER6_ASYNCCH2_gc = 0x05<<0 ; Asynchronous Event Channel 2
EVSYS_ASYNCUSER6_ASYNCCH3_gc = 0x06<<0 ; Asynchronous Event Channel 3

; Asynchronous User Selection Ch 7 - TCD0 Event 1 select
EVSYS_ASYNCUSER7_OFF_gc = 0x00<<0 ; Off
EVSYS_ASYNCUSER7_SYNCCH0_gc = 0x01<<0 ; Synchronous Event Channel 0
EVSYS_ASYNCUSER7_SYNCCH1_gc = 0x02<<0 ; Synchronous Event Channel 1
EVSYS_ASYNCUSER7_ASYNCCH0_gc = 0x03<<0 ; Asynchronous Event Channel 0
EVSYS_ASYNCUSER7_ASYNCCH1_gc = 0x04<<0 ; Asynchronous Event Channel 1
EVSYS_ASYNCUSER7_ASYNCCH2_gc = 0x05<<0 ; Asynchronous Event Channel 2
EVSYS_ASYNCUSER7_ASYNCCH3_gc = 0x06<<0 ; Asynchronous Event Channel 3

; Asynchronous User Selection Ch 8 - Event Out 0 select
EVSYS_ASYNCUSER8_OFF_gc = 0x00<<0 ; Off
EVSYS_ASYNCUSER8_SYNCCH0_gc = 0x01<<0 ; Synchronous Event Channel 0
EVSYS_ASYNCUSER8_SYNCCH1_gc = 0x02<<0 ; Synchronous Event Channel 1
EVSYS_ASYNCUSER8_ASYNCCH0_gc = 0x03<<0 ; Asynchronous Event Channel 0
EVSYS_ASYNCUSER8_ASYNCCH1_gc = 0x04<<0 ; Asynchronous Event Channel 1
EVSYS_ASYNCUSER8_ASYNCCH2_gc = 0x05<<0 ; Asynchronous Event Channel 2
EVSYS_ASYNCUSER8_ASYNCCH3_gc = 0x06<<0 ; Asynchronous Event Channel 3

; Asynchronous User Selection Ch 9 - Event Out 1 select
EVSYS_ASYNCUSER9_OFF_gc = 0x00<<0 ; Off
EVSYS_ASYNCUSER9_SYNCCH0_gc = 0x01<<0 ; Synchronous Event Channel 0
EVSYS_ASYNCUSER9_SYNCCH1_gc = 0x02<<0 ; Synchronous Event Channel 1
EVSYS_ASYNCUSER9_ASYNCCH0_gc = 0x03<<0 ; Asynchronous Event Channel 0
EVSYS_ASYNCUSER9_ASYNCCH1_gc = 0x04<<0 ; Asynchronous Event Channel 1
EVSYS_ASYNCUSER9_ASYNCCH2_gc = 0x05<<0 ; Asynchronous Event Channel 2
EVSYS_ASYNCUSER9_ASYNCCH3_gc = 0x06<<0 ; Asynchronous Event Channel 3

; Asynchronous User Selection Ch 10 - Event Out 2 select
EVSYS_ASYNCUSER10_OFF_gc = 0x00<<0 ; Off
EVSYS_ASYNCUSER10_SYNCCH0_gc = 0x01<<0 ; Synchronous Event Channel 0
EVSYS_ASYNCUSER10_SYNCCH1_gc = 0x02<<0 ; Synchronous Event Channel 1
EVSYS_ASYNCUSER10_ASYNCCH0_gc = 0x03<<0 ; Asynchronous Event Channel 0
EVSYS_ASYNCUSER10_ASYNCCH1_gc = 0x04<<0 ; Asynchronous Event Channel 1
EVSYS_ASYNCUSER10_ASYNCCH2_gc = 0x05<<0 ; Asynchronous Event Channel 2
EVSYS_ASYNCUSER10_ASYNCCH3_gc = 0x06<<0 ; Asynchronous Event Channel 3

; Asynchronous User Selection Ch 0 select
EVSYS_SYNCCH0_OFF_gc = 0x00<<0    ; Off
EVSYS_SYNCCH0_TCB0_gc = 0x01<<0   ; Timer/Counter B0
EVSYS_SYNCCH0_TCA0_OVF_LUNF_gc = 0x02<<0 ; Timer/Counter A0 overflow
EVSYS_SYNCCH0_TCA0_HUNF_gc = 0x03<<0 ; Timer/Counter A0 underflow high byte (split mode)
EVSYS_SYNCCH0_TCA0_CMP0_gc = 0x04<<0 ; Timer/Counter A0 compare 0
EVSYS_SYNCCH0_TCA0_CMP1_gc = 0x05<<0 ; Timer/Counter A0 compare 1
EVSYS_SYNCCH0_TCA0_CMP2_gc = 0x06<<0 ; Timer/Counter A0 compare 2
EVSYS_SYNCCH0_PORTC_PIN0_gc = 0x07<<0 ; Synchronous Event from Pin PC0
EVSYS_SYNCCH0_PORTC_PIN1_gc = 0x08<<0 ; Synchronous Event from Pin PC1
EVSYS_SYNCCH0_PORTC_PIN2_gc = 0x09<<0 ; Synchronous Event from Pin PC2
EVSYS_SYNCCH0_PORTC_PIN3_gc = 0x0A<<0 ; Synchronous Event from Pin PC3
EVSYS_SYNCCH0_PORTC_PIN4_gc = 0x0B<<0 ; Synchronous Event from Pin PC4
EVSYS_SYNCCH0_PORTC_PIN5_gc = 0x0C<<0 ; Synchronous Event from Pin PC5
EVSYS_SYNCCH0_PORTA_PIN0_gc = 0x0D<<0 ; Synchronous Event from Pin PA0
EVSYS_SYNCCH0_PORTA_PIN1_gc = 0x0E<<0 ; Synchronous Event from Pin PA1
EVSYS_SYNCCH0_PORTA_PIN2_gc = 0x0F<<0 ; Synchronous Event from Pin PA2
EVSYS_SYNCCH0_PORTA_PIN3_gc = 0x10<<0 ; Synchronous Event from Pin PA3
EVSYS_SYNCCH0_PORTA_PIN4_gc = 0x11<<0 ; Synchronous Event from Pin PA4
EVSYS_SYNCCH0_PORTA_PIN5_gc = 0x12<<0 ; Synchronous Event from Pin PA5
EVSYS_SYNCCH0_PORTA_PIN6_gc = 0x13<<0 ; Synchronous Event from Pin PA6
EVSYS_SYNCCH0_PORTA_PIN7_gc = 0x14<<0 ; Synchronous Event from Pin PA7

; Synchronous Multiplexer Channel 1 select
EVSYS_SYNCCH1_OFF_gc = 0x00<<0    ; Off
EVSYS_SYNCCH1_TCB0_gc = 0x01<<0   ; Timer/Counter B0
EVSYS_SYNCCH1_TCA0_OVF_LUNF_gc = 0x02<<0 ; Timer/Counter A0 overflow
EVSYS_SYNCCH1_TCA0_HUNF_gc = 0x03<<0 ; Timer/Counter A0 underflow high byte (split mode)
EVSYS_SYNCCH1_TCA0_CMP0_gc = 0x04<<0 ; Timer/Counter A0 compare 0
EVSYS_SYNCCH1_TCA0_CMP1_gc = 0x05<<0 ; Timer/Counter A0 compare 1
EVSYS_SYNCCH1_TCA0_CMP2_gc = 0x06<<0 ; Timer/Counter A0 compare 2
EVSYS_SYNCCH1_PORTB_PIN0_gc = 0x08<<0 ; Synchronous Event from Pin PB0
EVSYS_SYNCCH1_PORTB_PIN1_gc = 0x09<<0 ; Synchronous Event from Pin PB1
EVSYS_SYNCCH1_PORTB_PIN2_gc = 0x0A<<0 ; Synchronous Event from Pin PB2
EVSYS_SYNCCH1_PORTB_PIN3_gc = 0x0B<<0 ; Synchronous Event from Pin PB3
EVSYS_SYNCCH1_PORTB_PIN4_gc = 0x0C<<0 ; Synchronous Event from Pin PB4
EVSYS_SYNCCH1_PORTB_PIN5_gc = 0x0D<<0 ; Synchronous Event from Pin PB5
EVSYS_SYNCCH1_PORTB_PIN6_gc = 0x0E<<0 ; Synchronous Event from Pin PB6
EVSYS_SYNCCH1_PORTB_PIN7_gc = 0x0F<<0 ; Synchronous Event from Pin PB7

; Synchronous User Ch 0 - TCA0 select
EVSYS_SYNCUSER0_OFF_gc = 0x00<<0  ; Off
EVSYS_SYNCUSER0_SYNCCH1_gc = 0x01<<0 ; Synchronous Event Channel 0
EVSYS_SYNCUSER0_SYNCCH2_gc = 0x02<<0 ; Synchronous Event Channel 1

; Synchronous User Ch 1 - USART0 select
EVSYS_SYNCUSER1_OFF_gc = 0x00<<0  ; Off
EVSYS_SYNCUSER1_SYNCCH1_gc = 0x01<<0 ; Synchronous Event Channel 0
EVSYS_SYNCUSER1_SYNCCH2_gc = 0x02<<0 ; Synchronous Event Channel 1


;*************************************************************************
;** FUSE - Fuses
;*************************************************************************

; FUSE_BODCFG masks
FUSE_ACTIVE_gm = 0x0C               ; BOD Operation in Active Mode group mask
FUSE_ACTIVE_gp = 2                  ; BOD Operation in Active Mode group position
FUSE_ACTIVE0_bm = 1<<2            ; BOD Operation in Active Mode bit 0 mask
FUSE_ACTIVE0_bp = 2                 ; BOD Operation in Active Mode bit 0 position
FUSE_ACTIVE1_bm = 1<<3            ; BOD Operation in Active Mode bit 1 mask
FUSE_ACTIVE1_bp = 3                 ; BOD Operation in Active Mode bit 1 position
FUSE_LVL_gm = 0xE0                  ; BOD Level group mask
FUSE_LVL_gp = 5                     ; BOD Level group position
FUSE_LVL0_bm = 1<<5               ; BOD Level bit 0 mask
FUSE_LVL0_bp = 5                    ; BOD Level bit 0 position
FUSE_LVL1_bm = 1<<6               ; BOD Level bit 1 mask
FUSE_LVL1_bp = 6                    ; BOD Level bit 1 position
FUSE_LVL2_bm = 1<<7               ; BOD Level bit 2 mask
FUSE_LVL2_bp = 7                    ; BOD Level bit 2 position
FUSE_SAMPLFREQ_bm = 0x10            ; BOD Sample Frequency bit mask
FUSE_SAMPLFREQ_bp = 4               ; BOD Sample Frequency bit position
FUSE_SLEEP_gm = 0x03                ; BOD Operation in Sleep Mode group mask
FUSE_SLEEP_gp = 0                   ; BOD Operation in Sleep Mode group position
FUSE_SLEEP0_bm = 1<<0             ; BOD Operation in Sleep Mode bit 0 mask
FUSE_SLEEP0_bp = 0                  ; BOD Operation in Sleep Mode bit 0 position
FUSE_SLEEP1_bm = 1<<1             ; BOD Operation in Sleep Mode bit 1 mask
FUSE_SLEEP1_bp = 1                  ; BOD Operation in Sleep Mode bit 1 position

; FUSE_OSCCFG masks
FUSE_FREQSEL_gm = 0x03              ; Frequency Select group mask
FUSE_FREQSEL_gp = 0                 ; Frequency Select group position
FUSE_FREQSEL0_bm = 1<<0           ; Frequency Select bit 0 mask
FUSE_FREQSEL0_bp = 0                ; Frequency Select bit 0 position
FUSE_FREQSEL1_bm = 1<<1           ; Frequency Select bit 1 mask
FUSE_FREQSEL1_bp = 1                ; Frequency Select bit 1 position
FUSE_OSCLOCK_bm = 0x80              ; Oscillator Lock bit mask
FUSE_OSCLOCK_bp = 7                 ; Oscillator Lock bit position

; FUSE_SYSCFG0 masks
FUSE_CRCSRC_gm = 0xC0               ; CRC Source group mask
FUSE_CRCSRC_gp = 6                  ; CRC Source group position
FUSE_CRCSRC0_bm = 1<<6            ; CRC Source bit 0 mask
FUSE_CRCSRC0_bp = 6                 ; CRC Source bit 0 position
FUSE_CRCSRC1_bm = 1<<7            ; CRC Source bit 1 mask
FUSE_CRCSRC1_bp = 7                 ; CRC Source bit 1 position
FUSE_EESAVE_bm = 0x01               ; EEPROM Save bit mask
FUSE_EESAVE_bp = 0                  ; EEPROM Save bit position
FUSE_RSTPINCFG_gm = 0x0C            ; Reset Pin Configuration group mask
FUSE_RSTPINCFG_gp = 2               ; Reset Pin Configuration group position
FUSE_RSTPINCFG0_bm = 1<<2         ; Reset Pin Configuration bit 0 mask
FUSE_RSTPINCFG0_bp = 2              ; Reset Pin Configuration bit 0 position
FUSE_RSTPINCFG1_bm = 1<<3         ; Reset Pin Configuration bit 1 mask
FUSE_RSTPINCFG1_bp = 3              ; Reset Pin Configuration bit 1 position

; FUSE_SYSCFG1 masks
FUSE_SUT_gm = 0x07                  ; Startup Time group mask
FUSE_SUT_gp = 0                     ; Startup Time group position
FUSE_SUT0_bm = 1<<0               ; Startup Time bit 0 mask
FUSE_SUT0_bp = 0                    ; Startup Time bit 0 position
FUSE_SUT1_bm = 1<<1               ; Startup Time bit 1 mask
FUSE_SUT1_bp = 1                    ; Startup Time bit 1 position
FUSE_SUT2_bm = 1<<2               ; Startup Time bit 2 mask
FUSE_SUT2_bp = 2                    ; Startup Time bit 2 position

; FUSE_TCD0CFG masks
FUSE_CMPA_bm = 0x01                 ; Compare A Default Output Value bit mask
FUSE_CMPA_bp = 0                    ; Compare A Default Output Value bit position
FUSE_CMPAEN_bm = 0x10               ; Compare A Output Enable bit mask
FUSE_CMPAEN_bp = 4                  ; Compare A Output Enable bit position
FUSE_CMPB_bm = 0x02                 ; Compare B Default Output Value bit mask
FUSE_CMPB_bp = 1                    ; Compare B Default Output Value bit position
FUSE_CMPBEN_bm = 0x20               ; Compare B Output Enable bit mask
FUSE_CMPBEN_bp = 5                  ; Compare B Output Enable bit position
FUSE_CMPC_bm = 0x04                 ; Compare C Default Output Value bit mask
FUSE_CMPC_bp = 2                    ; Compare C Default Output Value bit position
FUSE_CMPCEN_bm = 0x40               ; Compare C Output Enable bit mask
FUSE_CMPCEN_bp = 6                  ; Compare C Output Enable bit position
FUSE_CMPD_bm = 0x08                 ; Compare D Default Output Value bit mask
FUSE_CMPD_bp = 3                    ; Compare D Default Output Value bit position
FUSE_CMPDEN_bm = 0x80               ; Compare D Output Enable bit mask
FUSE_CMPDEN_bp = 7                  ; Compare D Output Enable bit position

; FUSE_WDTCFG masks
FUSE_PERIOD_gm = 0x0F               ; Watchdog Timeout Period group mask
FUSE_PERIOD_gp = 0                  ; Watchdog Timeout Period group position
FUSE_PERIOD0_bm = 1<<0            ; Watchdog Timeout Period bit 0 mask
FUSE_PERIOD0_bp = 0                 ; Watchdog Timeout Period bit 0 position
FUSE_PERIOD1_bm = 1<<1            ; Watchdog Timeout Period bit 1 mask
FUSE_PERIOD1_bp = 1                 ; Watchdog Timeout Period bit 1 position
FUSE_PERIOD2_bm = 1<<2            ; Watchdog Timeout Period bit 2 mask
FUSE_PERIOD2_bp = 2                 ; Watchdog Timeout Period bit 2 position
FUSE_PERIOD3_bm = 1<<3            ; Watchdog Timeout Period bit 3 mask
FUSE_PERIOD3_bp = 3                 ; Watchdog Timeout Period bit 3 position
FUSE_WINDOW_gm = 0xF0               ; Watchdog Window Timeout Period group mask
FUSE_WINDOW_gp = 4                  ; Watchdog Window Timeout Period group position
FUSE_WINDOW0_bm = 1<<4            ; Watchdog Window Timeout Period bit 0 mask
FUSE_WINDOW0_bp = 4                 ; Watchdog Window Timeout Period bit 0 position
FUSE_WINDOW1_bm = 1<<5            ; Watchdog Window Timeout Period bit 1 mask
FUSE_WINDOW1_bp = 5                 ; Watchdog Window Timeout Period bit 1 position
FUSE_WINDOW2_bm = 1<<6            ; Watchdog Window Timeout Period bit 2 mask
FUSE_WINDOW2_bp = 6                 ; Watchdog Window Timeout Period bit 2 position
FUSE_WINDOW3_bm = 1<<7            ; Watchdog Window Timeout Period bit 3 mask
FUSE_WINDOW3_bp = 7                 ; Watchdog Window Timeout Period bit 3 position

; BOD Operation in Active Mode select
FUSE_ACTIVE_OFF_gc = 0x00<<2      ; Disabled
FUSE_ACTIVE_ENABLED_gc = 0x01<<2  ; Enabled
FUSE_ACTIVE_SAMPLED_gc = 0x02<<2  ; Sampled
FUSE_ACTIVE_ENWAKE_gc = 0x03<<2   ; Enabled with wake-up halted until BOD is ready

; BOD Level select
FUSE_LVL_1V8_gc = 0x00<<5         ; 1.8 V
FUSE_LVL_2V15_gc = 0x01<<5        ; 2.15 V
FUSE_LVL_2V51_gc = 0x02<<5        ; 2.51 V
FUSE_LVL_2V87_gc = 0x03<<5        ; 2.87 V
FUSE_LVL_3V94_gc = 0x06<<5        ; 3.94 V
FUSE_LVL_4V3_gc = 0x07<<5         ; 4.3 V

; BOD Sample Frequency select
FUSE_SAMPLFREQ_1KHz_gc = 0x00<<4  ; 1kHz sampling frequency
FUSE_SAMPLFREQ_125Hz_gc = 0x01<<4 ; 125Hz sampling frequency

; BOD Operation in Sleep Mode select
FUSE_SLEEP_OFF_gc = 0x00<<0       ; Disabled
FUSE_SLEEP_ENABLED_gc = 0x01<<0   ; Enabled
FUSE_SLEEP_SAMPLED_gc = 0x02<<0   ; Sampled

; Frequency Select select
FUSE_FREQSEL_16MHZ_gc = 0x01<<0   ; 16 MHz
FUSE_FREQSEL_20MHZ_gc = 0x02<<0   ; 20 MHz

; CRC Source select
FUSE_CRCSRC_FLASH_gc = 0x00<<6    ; The CRC is performed on the entire Flash (boot, application code and application data section).
FUSE_CRCSRC_BOOT_gc = 0x01<<6     ; The CRC is performed on the boot section of Flash
FUSE_CRCSRC_BOOTAPP_gc = 0x02<<6  ; The CRC is performed on the boot and application code section of Flash
FUSE_CRCSRC_NOCRC_gc = 0x03<<6    ; Disable CRC.

; Reset Pin Configuration select
FUSE_RSTPINCFG_GPIO_gc = 0x00<<2  ; GPIO mode
FUSE_RSTPINCFG_UPDI_gc = 0x01<<2  ; UPDI mode
FUSE_RSTPINCFG_RST_gc = 0x02<<2   ; Reset mode

; Startup Time select
FUSE_SUT_0MS_gc = 0x00<<0         ; 0 ms
FUSE_SUT_1MS_gc = 0x01<<0         ; 1 ms
FUSE_SUT_2MS_gc = 0x02<<0         ; 2 ms
FUSE_SUT_4MS_gc = 0x03<<0         ; 4 ms
FUSE_SUT_8MS_gc = 0x04<<0         ; 8 ms
FUSE_SUT_16MS_gc = 0x05<<0        ; 16 ms
FUSE_SUT_32MS_gc = 0x06<<0        ; 32 ms
FUSE_SUT_64MS_gc = 0x07<<0        ; 64 ms

; Watchdog Timeout Period select
FUSE_PERIOD_OFF_gc = 0x00<<0      ; Watch-Dog timer Off
FUSE_PERIOD_8CLK_gc = 0x01<<0     ; 8 cycles (8ms)
FUSE_PERIOD_16CLK_gc = 0x02<<0    ; 16 cycles (16ms)
FUSE_PERIOD_32CLK_gc = 0x03<<0    ; 32 cycles (32ms)
FUSE_PERIOD_64CLK_gc = 0x04<<0    ; 64 cycles (64ms)
FUSE_PERIOD_128CLK_gc = 0x05<<0   ; 128 cycles (0.128s)
FUSE_PERIOD_256CLK_gc = 0x06<<0   ; 256 cycles (0.256s)
FUSE_PERIOD_512CLK_gc = 0x07<<0   ; 512 cycles (0.512s)
FUSE_PERIOD_1KCLK_gc = 0x08<<0    ; 1K cycles (1.0s)
FUSE_PERIOD_2KCLK_gc = 0x09<<0    ; 2K cycles (2.0s)
FUSE_PERIOD_4KCLK_gc = 0x0A<<0    ; 4K cycles (4.1s)
FUSE_PERIOD_8KCLK_gc = 0x0B<<0    ; 8K cycles (8.2s)

; Watchdog Window Timeout Period select
FUSE_WINDOW_OFF_gc = 0x00<<4      ; Window mode off
FUSE_WINDOW_8CLK_gc = 0x01<<4     ; 8 cycles (8ms)
FUSE_WINDOW_16CLK_gc = 0x02<<4    ; 16 cycles (16ms)
FUSE_WINDOW_32CLK_gc = 0x03<<4    ; 32 cycles (32ms)
FUSE_WINDOW_64CLK_gc = 0x04<<4    ; 64 cycles (64ms)
FUSE_WINDOW_128CLK_gc = 0x05<<4   ; 128 cycles (0.128s)
FUSE_WINDOW_256CLK_gc = 0x06<<4   ; 256 cycles (0.256s)
FUSE_WINDOW_512CLK_gc = 0x07<<4   ; 512 cycles (0.512s)
FUSE_WINDOW_1KCLK_gc = 0x08<<4    ; 1K cycles (1.0s)
FUSE_WINDOW_2KCLK_gc = 0x09<<4    ; 2K cycles (2.0s)
FUSE_WINDOW_4KCLK_gc = 0x0A<<4    ; 4K cycles (4.1s)
FUSE_WINDOW_8KCLK_gc = 0x0B<<4    ; 8K cycles (8.2s)


;*************************************************************************
;** GPIO - General Purpose IO
;*************************************************************************


;*************************************************************************
;** LOCKBIT - Lockbit
;*************************************************************************

; LOCKBIT_LOCKBIT masks
LOCKBIT_LB_gm = 0xFF                ; Lock Bits group mask
LOCKBIT_LB_gp = 0                   ; Lock Bits group position
LOCKBIT_LB0_bm = 1<<0             ; Lock Bits bit 0 mask
LOCKBIT_LB0_bp = 0                  ; Lock Bits bit 0 position
LOCKBIT_LB1_bm = 1<<1             ; Lock Bits bit 1 mask
LOCKBIT_LB1_bp = 1                  ; Lock Bits bit 1 position
LOCKBIT_LB2_bm = 1<<2             ; Lock Bits bit 2 mask
LOCKBIT_LB2_bp = 2                  ; Lock Bits bit 2 position
LOCKBIT_LB3_bm = 1<<3             ; Lock Bits bit 3 mask
LOCKBIT_LB3_bp = 3                  ; Lock Bits bit 3 position
LOCKBIT_LB4_bm = 1<<4             ; Lock Bits bit 4 mask
LOCKBIT_LB4_bp = 4                  ; Lock Bits bit 4 position
LOCKBIT_LB5_bm = 1<<5             ; Lock Bits bit 5 mask
LOCKBIT_LB5_bp = 5                  ; Lock Bits bit 5 position
LOCKBIT_LB6_bm = 1<<6             ; Lock Bits bit 6 mask
LOCKBIT_LB6_bp = 6                  ; Lock Bits bit 6 position
LOCKBIT_LB7_bm = 1<<7             ; Lock Bits bit 7 mask
LOCKBIT_LB7_bp = 7                  ; Lock Bits bit 7 position

; Lock Bits select
LOCKBIT_LB_RWLOCK_gc = 0x3A<<0    ; Read and write lock
LOCKBIT_LB_NOLOCK_gc = 0xC5<<0    ; No locks


;*************************************************************************
;** NVMCTRL - Non-volatile Memory Controller
;*************************************************************************

; NVMCTRL_CTRLA masks
NVMCTRL_CMD_gm = 0x07               ; Command group mask
NVMCTRL_CMD_gp = 0                  ; Command group position
NVMCTRL_CMD0_bm = 1<<0            ; Command bit 0 mask
NVMCTRL_CMD0_bp = 0                 ; Command bit 0 position
NVMCTRL_CMD1_bm = 1<<1            ; Command bit 1 mask
NVMCTRL_CMD1_bp = 1                 ; Command bit 1 position
NVMCTRL_CMD2_bm = 1<<2            ; Command bit 2 mask
NVMCTRL_CMD2_bp = 2                 ; Command bit 2 position

; NVMCTRL_CTRLB masks
NVMCTRL_APCWP_bm = 0x01             ; Application code write protect bit mask
NVMCTRL_APCWP_bp = 0                ; Application code write protect bit position
NVMCTRL_BOOTLOCK_bm = 0x02          ; Boot Lock bit mask
NVMCTRL_BOOTLOCK_bp = 1             ; Boot Lock bit position

; NVMCTRL_INTCTRL masks
NVMCTRL_EEREADY_bm = 0x01           ; EEPROM Ready bit mask
NVMCTRL_EEREADY_bp = 0              ; EEPROM Ready bit position

; NVMCTRL_INTFLAGS masks
; Masks for NVMCTRL_EEREADY already defined

; NVMCTRL_STATUS masks
NVMCTRL_EEBUSY_bm = 0x02            ; EEPROM busy bit mask
NVMCTRL_EEBUSY_bp = 1               ; EEPROM busy bit position
NVMCTRL_FBUSY_bm = 0x01             ; Flash busy bit mask
NVMCTRL_FBUSY_bp = 0                ; Flash busy bit position
NVMCTRL_WRERROR_bm = 0x04           ; Write error bit mask
NVMCTRL_WRERROR_bp = 2              ; Write error bit position

; Command select
NVMCTRL_CMD_NONE_gc = 0x00<<0     ; No Command
NVMCTRL_CMD_PAGEWRITE_gc = 0x01<<0 ; Write page
NVMCTRL_CMD_PAGEERASE_gc = 0x02<<0 ; Erase page
NVMCTRL_CMD_PAGEERASEWRITE_gc = 0x03<<0 ; Erase and write page
NVMCTRL_CMD_PAGEBUFCLR_gc = 0x04<<0 ; Page buffer clear
NVMCTRL_CMD_CHIPERASE_gc = 0x05<<0 ; Chip erase
NVMCTRL_CMD_EEERASE_gc = 0x06<<0  ; EEPROM erase
NVMCTRL_CMD_FUSEWRITE_gc = 0x07<<0 ; Write fuse (PDI only)


;*************************************************************************
;** PORT - I/O Ports
;*************************************************************************

; PORT_INTFLAGS masks
PORT_INT_gm = 0xFF                  ; Pin Interrupt group mask
PORT_INT_gp = 0                     ; Pin Interrupt group position
PORT_INT0_bm = 1<<0               ; Pin Interrupt bit 0 mask
PORT_INT0_bp = 0                    ; Pin Interrupt bit 0 position
PORT_INT1_bm = 1<<1               ; Pin Interrupt bit 1 mask
PORT_INT1_bp = 1                    ; Pin Interrupt bit 1 position
PORT_INT2_bm = 1<<2               ; Pin Interrupt bit 2 mask
PORT_INT2_bp = 2                    ; Pin Interrupt bit 2 position
PORT_INT3_bm = 1<<3               ; Pin Interrupt bit 3 mask
PORT_INT3_bp = 3                    ; Pin Interrupt bit 3 position
PORT_INT4_bm = 1<<4               ; Pin Interrupt bit 4 mask
PORT_INT4_bp = 4                    ; Pin Interrupt bit 4 position
PORT_INT5_bm = 1<<5               ; Pin Interrupt bit 5 mask
PORT_INT5_bp = 5                    ; Pin Interrupt bit 5 position
PORT_INT6_bm = 1<<6               ; Pin Interrupt bit 6 mask
PORT_INT6_bp = 6                    ; Pin Interrupt bit 6 position
PORT_INT7_bm = 1<<7               ; Pin Interrupt bit 7 mask
PORT_INT7_bp = 7                    ; Pin Interrupt bit 7 position

; PORT_PIN0CTRL masks
PORT_INVEN_bm = 0x80                ; Inverted I/O Enable bit mask
PORT_INVEN_bp = 7                   ; Inverted I/O Enable bit position
PORT_ISC_gm = 0x07                  ; Input/Sense Configuration group mask
PORT_ISC_gp = 0                     ; Input/Sense Configuration group position
PORT_ISC0_bm = 1<<0               ; Input/Sense Configuration bit 0 mask
PORT_ISC0_bp = 0                    ; Input/Sense Configuration bit 0 position
PORT_ISC1_bm = 1<<1               ; Input/Sense Configuration bit 1 mask
PORT_ISC1_bp = 1                    ; Input/Sense Configuration bit 1 position
PORT_ISC2_bm = 1<<2               ; Input/Sense Configuration bit 2 mask
PORT_ISC2_bp = 2                    ; Input/Sense Configuration bit 2 position
PORT_PULLUPEN_bm = 0x08             ; Pullup enable bit mask
PORT_PULLUPEN_bp = 3                ; Pullup enable bit position

; PORT_PIN1CTRL masks
; Masks for PORT_INVEN already defined
; Masks for PORT_ISC already defined
; Masks for PORT_PULLUPEN already defined

; PORT_PIN2CTRL masks
; Masks for PORT_INVEN already defined
; Masks for PORT_ISC already defined
; Masks for PORT_PULLUPEN already defined

; PORT_PIN3CTRL masks
; Masks for PORT_INVEN already defined
; Masks for PORT_ISC already defined
; Masks for PORT_PULLUPEN already defined

; PORT_PIN4CTRL masks
; Masks for PORT_INVEN already defined
; Masks for PORT_ISC already defined
; Masks for PORT_PULLUPEN already defined

; PORT_PIN5CTRL masks
; Masks for PORT_INVEN already defined
; Masks for PORT_ISC already defined
; Masks for PORT_PULLUPEN already defined

; PORT_PIN6CTRL masks
; Masks for PORT_INVEN already defined
; Masks for PORT_ISC already defined
; Masks for PORT_PULLUPEN already defined

; PORT_PIN7CTRL masks
; Masks for PORT_INVEN already defined
; Masks for PORT_ISC already defined
; Masks for PORT_PULLUPEN already defined

; Input/Sense Configuration select
PORT_ISC_INTDISABLE_gc = 0x00<<0  ; Iterrupt disabled but input buffer enabled
PORT_ISC_BOTHEDGES_gc = 0x01<<0   ; Sense Both Edges
PORT_ISC_RISING_gc = 0x02<<0      ; Sense Rising Edge
PORT_ISC_FALLING_gc = 0x03<<0     ; Sense Falling Edge
PORT_ISC_INPUT_DISABLE_gc = 0x04<<0 ; Digital Input Buffer disabled
PORT_ISC_LEVEL_gc = 0x05<<0       ; Sense low Level


;*************************************************************************
;** PORTMUX - Port Multiplexer
;*************************************************************************

; PORTMUX_CTRLA masks
PORTMUX_EVOUT0_bm = 0x01            ; Event Output 0 bit mask
PORTMUX_EVOUT0_bp = 0               ; Event Output 0 bit position
PORTMUX_EVOUT1_bm = 0x02            ; Event Output 1 bit mask
PORTMUX_EVOUT1_bp = 1               ; Event Output 1 bit position
PORTMUX_EVOUT2_bm = 0x04            ; Event Output 2 bit mask
PORTMUX_EVOUT2_bp = 2               ; Event Output 2 bit position
PORTMUX_EXTBRK_bm = 0x80            ; External Break bit mask
PORTMUX_EXTBRK_bp = 7               ; External Break bit position
PORTMUX_LUT0_bm = 0x10              ; Configurable Custom Logic LUT0 bit mask
PORTMUX_LUT0_bp = 4                 ; Configurable Custom Logic LUT0 bit position
PORTMUX_LUT1_bm = 0x20              ; Configurable Custom Logic LUT1 bit mask
PORTMUX_LUT1_bp = 5                 ; Configurable Custom Logic LUT1 bit position

; PORTMUX_CTRLB masks
PORTMUX_SPI0_bm = 0x04              ; Port Multiplexor SPI0 bit mask
PORTMUX_SPI0_bp = 2                 ; Port Multiplexor SPI0 bit position
PORTMUX_TWI0_bm = 0x10              ; Port Multiplexor TWI0 bit mask
PORTMUX_TWI0_bp = 4                 ; Port Multiplexor TWI0 bit position
PORTMUX_USART0_bm = 0x01            ; Port Multiplexor USART0 bit mask
PORTMUX_USART0_bp = 0               ; Port Multiplexor USART0 bit position

; PORTMUX_CTRLC masks
PORTMUX_TCA00_bm = 0x01             ; Port Multiplexor TCA0 Output 0 bit mask
PORTMUX_TCA00_bp = 0                ; Port Multiplexor TCA0 Output 0 bit position
PORTMUX_TCA01_bm = 0x02             ; Port Multiplexor TCA0 output 1 bit mask
PORTMUX_TCA01_bp = 1                ; Port Multiplexor TCA0 output 1 bit position
PORTMUX_TCA02_bm = 0x04             ; Port Multiplexor TCA0 Output 2 bit mask
PORTMUX_TCA02_bp = 2                ; Port Multiplexor TCA0 Output 2 bit position
PORTMUX_TCA03_bm = 0x08             ; Port Multiplexor TCA0 Output 3 bit mask
PORTMUX_TCA03_bp = 3                ; Port Multiplexor TCA0 Output 3 bit position
PORTMUX_TCA04_bm = 0x10             ; Port Multiplexor TCA0 Output 4 bit mask
PORTMUX_TCA04_bp = 4                ; Port Multiplexor TCA0 Output 4 bit position
PORTMUX_TCA05_bm = 0x20             ; Port Multiplexor TCA0 Output 5 bit mask
PORTMUX_TCA05_bp = 5                ; Port Multiplexor TCA0 Output 5 bit position

; PORTMUX_CTRLD masks
PORTMUX_TCB0_bm = 0x01              ; Port Multiplexor TCB bit mask
PORTMUX_TCB0_bp = 0                 ; Port Multiplexor TCB bit position

; External Break select
PORTMUX_EXTBRK_DEFAULT_gc = 0x00<<7 ; Default pin
PORTMUX_EXTBRK_ALTERNATE_gc = 0x01<<7 ; Alternate pin

; Configurable Custom Logic LUT0 select
PORTMUX_LUT0_DEFAULT_gc = 0x00<<4 ; Default pin
PORTMUX_LUT0_ALTERNATE_gc = 0x01<<4 ; Alternate pin

; Configurable Custom Logic LUT1 select
PORTMUX_LUT1_DEFAULT_gc = 0x00<<5 ; Default pin
PORTMUX_LUT1_ALTERNATE_gc = 0x01<<5 ; Alternate pin

; Port Multiplexor SPI0 select
PORTMUX_SPI0_DEFAULT_gc = 0x00<<2 ; Default pins
PORTMUX_SPI0_ALTERNATE_gc = 0x01<<2 ; Alternate pins

; Port Multiplexor TWI0 select
PORTMUX_TWI0_DEFAULT_gc = 0x00<<4 ; Default pins
PORTMUX_TWI0_ALTERNATE_gc = 0x01<<4 ; Alternate pins

; Port Multiplexor USART0 select
PORTMUX_USART0_DEFAULT_gc = 0x00<<0 ; Default pins
PORTMUX_USART0_ALTERNATE_gc = 0x01<<0 ; Alternate pins

; Port Multiplexor TCA0 Output 0 select
PORTMUX_TCA00_DEFAULT_gc = 0x00<<0 ; Default pin
PORTMUX_TCA00_ALTERNATE_gc = 0x01<<0 ; Alternate pin

; Port Multiplexor TCA0 output 1 select
PORTMUX_TCA01_DEFAULT_gc = 0x00<<1 ; Default pin
PORTMUX_TCA01_ALTERNATE_gc = 0x01<<1 ; Alternate pin

; Port Multiplexor TCA0 Output 2 select
PORTMUX_TCA02_DEFAULT_gc = 0x00<<2 ; Default pin
PORTMUX_TCA02_ALTERNATE_gc = 0x01<<2 ; Alternate pin

; Port Multiplexor TCA0 Output 3 select
PORTMUX_TCA03_DEFAULT_gc = 0x00<<3 ; Default pin
PORTMUX_TCA03_ALTERNATE_gc = 0x01<<3 ; Alternate pin

; Port Multiplexor TCA0 Output 4 select
PORTMUX_TCA04_DEFAULT_gc = 0x00<<4 ; Default pin
PORTMUX_TCA04_ALTERNATE_gc = 0x01<<4 ; Alternate pin

; Port Multiplexor TCA0 Output 5 select
PORTMUX_TCA05_DEFAULT_gc = 0x00<<5 ; Default pin
PORTMUX_TCA05_ALTERNATE_gc = 0x01<<5 ; Alternate pin

; Port Multiplexor TCB select
PORTMUX_TCB0_DEFAULT_gc = 0x00<<0 ; Default pin
PORTMUX_TCB0_ALTERNATE_gc = 0x01<<0 ; Alternate pin


;*************************************************************************
;** PTC - Peripherial Touch Controller
;*************************************************************************


;*************************************************************************
;** RSTCTRL - Reset controller
;*************************************************************************

; RSTCTRL_RSTFR masks
RSTCTRL_BORF_bm = 0x02              ; Brown out detector Reset flag bit mask
RSTCTRL_BORF_bp = 1                 ; Brown out detector Reset flag bit position
RSTCTRL_EXTRF_bm = 0x04             ; External Reset flag bit mask
RSTCTRL_EXTRF_bp = 2                ; External Reset flag bit position
RSTCTRL_PORF_bm = 0x01              ; Power on Reset flag bit mask
RSTCTRL_PORF_bp = 0                 ; Power on Reset flag bit position
RSTCTRL_SWRF_bm = 0x10              ; Software Reset flag bit mask
RSTCTRL_SWRF_bp = 4                 ; Software Reset flag bit position
RSTCTRL_UPDIRF_bm = 0x20            ; UPDI Reset flag bit mask
RSTCTRL_UPDIRF_bp = 5               ; UPDI Reset flag bit position
RSTCTRL_WDRF_bm = 0x08              ; Watch dog Reset flag bit mask
RSTCTRL_WDRF_bp = 3                 ; Watch dog Reset flag bit position

; RSTCTRL_SWRR masks
RSTCTRL_SWRE_bm = 0x01              ; Software reset enable bit mask
RSTCTRL_SWRE_bp = 0                 ; Software reset enable bit position


;*************************************************************************
;** RTC - Real-Time Counter
;*************************************************************************

; RTC_CLKSEL masks
RTC_CLKSEL_gm = 0x03                ; Clock Select group mask
RTC_CLKSEL_gp = 0                   ; Clock Select group position
RTC_CLKSEL0_bm = 1<<0             ; Clock Select bit 0 mask
RTC_CLKSEL0_bp = 0                  ; Clock Select bit 0 position
RTC_CLKSEL1_bm = 1<<1             ; Clock Select bit 1 mask
RTC_CLKSEL1_bp = 1                  ; Clock Select bit 1 position

; RTC_CTRLA masks
RTC_PRESCALER_gm = 0x78             ; Prescaling Factor group mask
RTC_PRESCALER_gp = 3                ; Prescaling Factor group position
RTC_PRESCALER0_bm = 1<<3          ; Prescaling Factor bit 0 mask
RTC_PRESCALER0_bp = 3               ; Prescaling Factor bit 0 position
RTC_PRESCALER1_bm = 1<<4          ; Prescaling Factor bit 1 mask
RTC_PRESCALER1_bp = 4               ; Prescaling Factor bit 1 position
RTC_PRESCALER2_bm = 1<<5          ; Prescaling Factor bit 2 mask
RTC_PRESCALER2_bp = 5               ; Prescaling Factor bit 2 position
RTC_PRESCALER3_bm = 1<<6          ; Prescaling Factor bit 3 mask
RTC_PRESCALER3_bp = 6               ; Prescaling Factor bit 3 position
RTC_RTCEN_bm = 0x01                 ; Enable bit mask
RTC_RTCEN_bp = 0                    ; Enable bit position
RTC_RUNSTDBY_bm = 0x80              ; Run In Standby bit mask
RTC_RUNSTDBY_bp = 7                 ; Run In Standby bit position

; RTC_DBGCTRL masks
RTC_DBGRUN_bm = 0x01                ; Run in debug bit mask
RTC_DBGRUN_bp = 0                   ; Run in debug bit position

; RTC_INTCTRL masks
RTC_CMP_bm = 0x02                   ; Compare Match Interrupt enable bit mask
RTC_CMP_bp = 1                      ; Compare Match Interrupt enable bit position
RTC_OVF_bm = 0x01                   ; Overflow Interrupt enable bit mask
RTC_OVF_bp = 0                      ; Overflow Interrupt enable bit position

; RTC_INTFLAGS masks
; Masks for RTC_CMP already defined
; Masks for RTC_OVF already defined

; RTC_PITCTRLA masks
RTC_PERIOD_gm = 0x78                ; Period group mask
RTC_PERIOD_gp = 3                   ; Period group position
RTC_PERIOD0_bm = 1<<3             ; Period bit 0 mask
RTC_PERIOD0_bp = 3                  ; Period bit 0 position
RTC_PERIOD1_bm = 1<<4             ; Period bit 1 mask
RTC_PERIOD1_bp = 4                  ; Period bit 1 position
RTC_PERIOD2_bm = 1<<5             ; Period bit 2 mask
RTC_PERIOD2_bp = 5                  ; Period bit 2 position
RTC_PERIOD3_bm = 1<<6             ; Period bit 3 mask
RTC_PERIOD3_bp = 6                  ; Period bit 3 position
RTC_PITEN_bm = 0x01                 ; Enable bit mask
RTC_PITEN_bp = 0                    ; Enable bit position

; RTC_PITDBGCTRL masks
; Masks for RTC_DBGRUN already defined

; RTC_PITINTCTRL masks
RTC_PI_bm = 0x01                    ; Periodic Interrupt bit mask
RTC_PI_bp = 0                       ; Periodic Interrupt bit position

; RTC_PITINTFLAGS masks
; Masks for RTC_PI already defined

; RTC_PITSTATUS masks
RTC_CTRLBUSY_bm = 0x01              ; CTRLA Synchronization Busy Flag bit mask
RTC_CTRLBUSY_bp = 0                 ; CTRLA Synchronization Busy Flag bit position

; RTC_STATUS masks
RTC_CMPBUSY_bm = 0x08               ; Comparator Synchronization Busy Flag bit mask
RTC_CMPBUSY_bp = 3                  ; Comparator Synchronization Busy Flag bit position
RTC_CNTBUSY_bm = 0x02               ; Count Synchronization Busy Flag bit mask
RTC_CNTBUSY_bp = 1                  ; Count Synchronization Busy Flag bit position
RTC_CTRLABUSY_bm = 0x01             ; CTRLA Synchronization Busy Flag bit mask
RTC_CTRLABUSY_bp = 0                ; CTRLA Synchronization Busy Flag bit position
RTC_PERBUSY_bm = 0x04               ; Period Synchronization Busy Flag bit mask
RTC_PERBUSY_bp = 2                  ; Period Synchronization Busy Flag bit position

; Clock Select select
RTC_CLKSEL_INT32K_gc = 0x00<<0    ; Internal 32kHz OSC
RTC_CLKSEL_INT1K_gc = 0x01<<0     ; Internal 1kHz OSC
RTC_CLKSEL_TOSC32K_gc = 0x02<<0   ; 32KHz Crystal OSC
RTC_CLKSEL_EXTCLK_gc = 0x03<<0    ; External Clock

; Prescaling Factor select
RTC_PRESCALER_DIV1_gc = 0x00<<3   ; RTC Clock / 1
RTC_PRESCALER_DIV2_gc = 0x01<<3   ; RTC Clock / 2
RTC_PRESCALER_DIV4_gc = 0x02<<3   ; RTC Clock / 4
RTC_PRESCALER_DIV8_gc = 0x03<<3   ; RTC Clock / 8
RTC_PRESCALER_DIV16_gc = 0x04<<3  ; RTC Clock / 16
RTC_PRESCALER_DIV32_gc = 0x05<<3  ; RTC Clock / 32
RTC_PRESCALER_DIV64_gc = 0x06<<3  ; RTC Clock / 64
RTC_PRESCALER_DIV128_gc = 0x07<<3 ; RTC Clock / 128
RTC_PRESCALER_DIV256_gc = 0x08<<3 ; RTC Clock / 256
RTC_PRESCALER_DIV512_gc = 0x09<<3 ; RTC Clock / 512
RTC_PRESCALER_DIV1024_gc = 0x0A<<3 ; RTC Clock / 1024
RTC_PRESCALER_DIV2048_gc = 0x0B<<3 ; RTC Clock / 2048
RTC_PRESCALER_DIV4096_gc = 0x0C<<3 ; RTC Clock / 4096
RTC_PRESCALER_DIV8192_gc = 0x0D<<3 ; RTC Clock / 8192
RTC_PRESCALER_DIV16384_gc = 0x0E<<3 ; RTC Clock / 16384
RTC_PRESCALER_DIV32768_gc = 0x0F<<3 ; RTC Clock / 32768

; Period select
RTC_PERIOD_OFF_gc = 0x00<<3       ; Off
RTC_PERIOD_CYC4_gc = 0x01<<3      ; RTC Clock Cycles 4
RTC_PERIOD_CYC8_gc = 0x02<<3      ; RTC Clock Cycles 8
RTC_PERIOD_CYC16_gc = 0x03<<3     ; RTC Clock Cycles 16
RTC_PERIOD_CYC32_gc = 0x04<<3     ; RTC Clock Cycles 32
RTC_PERIOD_CYC64_gc = 0x05<<3     ; RTC Clock Cycles 64
RTC_PERIOD_CYC128_gc = 0x06<<3    ; RTC Clock Cycles 128
RTC_PERIOD_CYC256_gc = 0x07<<3    ; RTC Clock Cycles 256
RTC_PERIOD_CYC512_gc = 0x08<<3    ; RTC Clock Cycles 512
RTC_PERIOD_CYC1024_gc = 0x09<<3   ; RTC Clock Cycles 1024
RTC_PERIOD_CYC2048_gc = 0x0A<<3   ; RTC Clock Cycles 2048
RTC_PERIOD_CYC4096_gc = 0x0B<<3   ; RTC Clock Cycles 4096
RTC_PERIOD_CYC8192_gc = 0x0C<<3   ; RTC Clock Cycles 8192
RTC_PERIOD_CYC16384_gc = 0x0D<<3  ; RTC Clock Cycles 16384
RTC_PERIOD_CYC32768_gc = 0x0E<<3  ; RTC Clock Cycles 32768


;*************************************************************************
;** SIGROW - Signature row
;*************************************************************************


;*************************************************************************
;** SLPCTRL - Sleep Controller
;*************************************************************************

; SLPCTRL_CTRLA masks
SLPCTRL_SEN_bm = 0x01               ; Sleep enable bit mask
SLPCTRL_SEN_bp = 0                  ; Sleep enable bit position
SLPCTRL_SMODE_gm = 0x06             ; Sleep mode group mask
SLPCTRL_SMODE_gp = 1                ; Sleep mode group position
SLPCTRL_SMODE0_bm = 1<<1          ; Sleep mode bit 0 mask
SLPCTRL_SMODE0_bp = 1               ; Sleep mode bit 0 position
SLPCTRL_SMODE1_bm = 1<<2          ; Sleep mode bit 1 mask
SLPCTRL_SMODE1_bp = 2               ; Sleep mode bit 1 position

; Sleep mode select
SLPCTRL_SMODE_IDLE_gc = 0x00<<1   ; Idle mode
SLPCTRL_SMODE_STDBY_gc = 0x01<<1  ; Standby Mode
SLPCTRL_SMODE_PDOWN_gc = 0x02<<1  ; Power-down Mode


;*************************************************************************
;** SPI - Serial Peripheral Interface
;*************************************************************************

; SPI_CTRLA masks
SPI_CLK2X_bm = 0x10                 ; Enable Double Speed bit mask
SPI_CLK2X_bp = 4                    ; Enable Double Speed bit position
SPI_DORD_bm = 0x40                  ; Data Order Setting bit mask
SPI_DORD_bp = 6                     ; Data Order Setting bit position
SPI_ENABLE_bm = 0x01                ; Enable Module bit mask
SPI_ENABLE_bp = 0                   ; Enable Module bit position
SPI_MASTER_bm = 0x20                ; Master Operation Enable bit mask
SPI_MASTER_bp = 5                   ; Master Operation Enable bit position
SPI_PRESC_gm = 0x06                 ; Prescaler group mask
SPI_PRESC_gp = 1                    ; Prescaler group position
SPI_PRESC0_bm = 1<<1              ; Prescaler bit 0 mask
SPI_PRESC0_bp = 1                   ; Prescaler bit 0 position
SPI_PRESC1_bm = 1<<2              ; Prescaler bit 1 mask
SPI_PRESC1_bp = 2                   ; Prescaler bit 1 position

; SPI_CTRLB masks
SPI_BUFEN_bm = 0x80                 ; Buffer Mode Enable bit mask
SPI_BUFEN_bp = 7                    ; Buffer Mode Enable bit position
SPI_BUFWR_bm = 0x40                 ; Buffer Write Mode bit mask
SPI_BUFWR_bp = 6                    ; Buffer Write Mode bit position
SPI_MODE_gm = 0x03                  ; SPI Mode group mask
SPI_MODE_gp = 0                     ; SPI Mode group position
SPI_MODE0_bm = 1<<0               ; SPI Mode bit 0 mask
SPI_MODE0_bp = 0                    ; SPI Mode bit 0 position
SPI_MODE1_bm = 1<<1               ; SPI Mode bit 1 mask
SPI_MODE1_bp = 1                    ; SPI Mode bit 1 position
SPI_SSD_bm = 0x04                   ; Slave Select Disable bit mask
SPI_SSD_bp = 2                      ; Slave Select Disable bit position

; SPI_INTCTRL masks
SPI_DREIE_bm = 0x20                 ; Data Register Empty Interrupt Enable bit mask
SPI_DREIE_bp = 5                    ; Data Register Empty Interrupt Enable bit position
SPI_IE_bm = 0x01                    ; Interrupt Enable bit mask
SPI_IE_bp = 0                       ; Interrupt Enable bit position
SPI_RXCIE_bm = 0x80                 ; Receive Complete Interrupt Enable bit mask
SPI_RXCIE_bp = 7                    ; Receive Complete Interrupt Enable bit position
SPI_SSIE_bm = 0x10                  ; Slave Select Trigger Interrupt Enable bit mask
SPI_SSIE_bp = 4                     ; Slave Select Trigger Interrupt Enable bit position
SPI_TXCIE_bm = 0x40                 ; Transfer Complete Interrupt Enable bit mask
SPI_TXCIE_bp = 6                    ; Transfer Complete Interrupt Enable bit position

; SPI_INTFLAGS masks
SPI_BUFOVF_bm = 0x01                ; Buffer Overflow bit mask
SPI_BUFOVF_bp = 0                   ; Buffer Overflow bit position
SPI_DREIF_bm = 0x20                 ; Data Register Empty Interrupt Flag bit mask
SPI_DREIF_bp = 5                    ; Data Register Empty Interrupt Flag bit position
SPI_RXCIF_bm = 0x80                 ; Receive Complete Interrupt Flag bit mask
SPI_RXCIF_bp = 7                    ; Receive Complete Interrupt Flag bit position
SPI_SSIF_bm = 0x10                  ; Slave Select Trigger Interrupt Flag bit mask
SPI_SSIF_bp = 4                     ; Slave Select Trigger Interrupt Flag bit position
SPI_TXCIF_bm = 0x40                 ; Transfer Complete Interrupt Flag bit mask
SPI_TXCIF_bp = 6                    ; Transfer Complete Interrupt Flag bit position
SPI_IF_bm = 0x80                    ; Interrupt Flag bit mask
SPI_IF_bp = 7                       ; Interrupt Flag bit position
SPI_WRCOL_bm = 0x40                 ; Write Collision bit mask
SPI_WRCOL_bp = 6                    ; Write Collision bit position

; Prescaler select
SPI_PRESC_DIV4_gc = 0x00<<1       ; System Clock / 4
SPI_PRESC_DIV16_gc = 0x01<<1      ; System Clock / 16
SPI_PRESC_DIV64_gc = 0x02<<1      ; System Clock / 64
SPI_PRESC_DIV128_gc = 0x03<<1     ; System Clock / 128

; SPI Mode select
SPI_MODE_0_gc = 0x00<<0           ; SPI Mode 0
SPI_MODE_1_gc = 0x01<<0           ; SPI Mode 1
SPI_MODE_2_gc = 0x02<<0           ; SPI Mode 2
SPI_MODE_3_gc = 0x03<<0           ; SPI Mode 3


;*************************************************************************
;** SYSCFG - System Configuration Registers
;*************************************************************************

; SYSCFG_EXTBRK masks
SYSCFG_ENEXTBRK_bm = 0x01           ; External break enable bit mask
SYSCFG_ENEXTBRK_bp = 0              ; External break enable bit position


;*************************************************************************
;** TCA - 16-bit Timer/Counter Type A
;*************************************************************************

; TCA_SINGLE_CTRLA masks
TCA_SINGLE_CLKSEL_gm = 0x0E         ; Clock Selection group mask
TCA_SINGLE_CLKSEL_gp = 1            ; Clock Selection group position
TCA_SINGLE_CLKSEL0_bm = 1<<1      ; Clock Selection bit 0 mask
TCA_SINGLE_CLKSEL0_bp = 1           ; Clock Selection bit 0 position
TCA_SINGLE_CLKSEL1_bm = 1<<2      ; Clock Selection bit 1 mask
TCA_SINGLE_CLKSEL1_bp = 2           ; Clock Selection bit 1 position
TCA_SINGLE_CLKSEL2_bm = 1<<3      ; Clock Selection bit 2 mask
TCA_SINGLE_CLKSEL2_bp = 3           ; Clock Selection bit 2 position
TCA_SINGLE_ENABLE_bm = 0x01         ; Module Enable bit mask
TCA_SINGLE_ENABLE_bp = 0            ; Module Enable bit position

; TCA_SINGLE_CTRLB masks
TCA_SINGLE_ALUPD_bm = 0x08          ; Auto Lock Update bit mask
TCA_SINGLE_ALUPD_bp = 3             ; Auto Lock Update bit position
TCA_SINGLE_CMP0EN_bm = 0x10         ; Compare 0 Enable bit mask
TCA_SINGLE_CMP0EN_bp = 4            ; Compare 0 Enable bit position
TCA_SINGLE_CMP1EN_bm = 0x20         ; Compare 1 Enable bit mask
TCA_SINGLE_CMP1EN_bp = 5            ; Compare 1 Enable bit position
TCA_SINGLE_CMP2EN_bm = 0x40         ; Compare 2 Enable bit mask
TCA_SINGLE_CMP2EN_bp = 6            ; Compare 2 Enable bit position
TCA_SINGLE_WGMODE_gm = 0x07         ; Waveform generation mode group mask
TCA_SINGLE_WGMODE_gp = 0            ; Waveform generation mode group position
TCA_SINGLE_WGMODE0_bm = 1<<0      ; Waveform generation mode bit 0 mask
TCA_SINGLE_WGMODE0_bp = 0           ; Waveform generation mode bit 0 position
TCA_SINGLE_WGMODE1_bm = 1<<1      ; Waveform generation mode bit 1 mask
TCA_SINGLE_WGMODE1_bp = 1           ; Waveform generation mode bit 1 position
TCA_SINGLE_WGMODE2_bm = 1<<2      ; Waveform generation mode bit 2 mask
TCA_SINGLE_WGMODE2_bp = 2           ; Waveform generation mode bit 2 position

; TCA_SINGLE_CTRLC masks
TCA_SINGLE_CMP0OV_bm = 0x01         ; Compare 0 Waveform Output Value bit mask
TCA_SINGLE_CMP0OV_bp = 0            ; Compare 0 Waveform Output Value bit position
TCA_SINGLE_CMP1OV_bm = 0x02         ; Compare 1 Waveform Output Value bit mask
TCA_SINGLE_CMP1OV_bp = 1            ; Compare 1 Waveform Output Value bit position
TCA_SINGLE_CMP2OV_bm = 0x04         ; Compare 2 Waveform Output Value bit mask
TCA_SINGLE_CMP2OV_bp = 2            ; Compare 2 Waveform Output Value bit position

; TCA_SINGLE_CTRLD masks
TCA_SINGLE_SPLITM_bm = 0x01         ; Split Mode Enable bit mask
TCA_SINGLE_SPLITM_bp = 0            ; Split Mode Enable bit position

; TCA_SINGLE_CTRLECLR masks
TCA_SINGLE_CMD_gm = 0x0C            ; Command group mask
TCA_SINGLE_CMD_gp = 2               ; Command group position
TCA_SINGLE_CMD0_bm = 1<<2         ; Command bit 0 mask
TCA_SINGLE_CMD0_bp = 2              ; Command bit 0 position
TCA_SINGLE_CMD1_bm = 1<<3         ; Command bit 1 mask
TCA_SINGLE_CMD1_bp = 3              ; Command bit 1 position
TCA_SINGLE_DIR_bm = 0x01            ; Direction bit mask
TCA_SINGLE_DIR_bp = 0               ; Direction bit position
TCA_SINGLE_LUPD_bm = 0x02           ; Lock Update bit mask
TCA_SINGLE_LUPD_bp = 1              ; Lock Update bit position

; TCA_SINGLE_CTRLESET masks
; Masks for TCA_SINGLE_CMD already defined
; Masks for TCA_SINGLE_DIR already defined
; Masks for TCA_SINGLE_LUPD already defined

; TCA_SINGLE_CTRLFCLR masks
TCA_SINGLE_CMP0BV_bm = 0x02         ; Compare 0 Buffer Valid bit mask
TCA_SINGLE_CMP0BV_bp = 1            ; Compare 0 Buffer Valid bit position
TCA_SINGLE_CMP1BV_bm = 0x04         ; Compare 1 Buffer Valid bit mask
TCA_SINGLE_CMP1BV_bp = 2            ; Compare 1 Buffer Valid bit position
TCA_SINGLE_CMP2BV_bm = 0x08         ; Compare 2 Buffer Valid bit mask
TCA_SINGLE_CMP2BV_bp = 3            ; Compare 2 Buffer Valid bit position
TCA_SINGLE_PERBV_bm = 0x01          ; Period Buffer Valid bit mask
TCA_SINGLE_PERBV_bp = 0             ; Period Buffer Valid bit position

; TCA_SINGLE_CTRLFSET masks
; Masks for TCA_SINGLE_CMP0BV already defined
; Masks for TCA_SINGLE_CMP1BV already defined
; Masks for TCA_SINGLE_CMP2BV already defined
; Masks for TCA_SINGLE_PERBV already defined

; TCA_SINGLE_DBGCTRL masks
TCA_SINGLE_DBGRUN_bm = 0x01         ; Debug Run bit mask
TCA_SINGLE_DBGRUN_bp = 0            ; Debug Run bit position

; TCA_SINGLE_EVCTRL masks
TCA_SINGLE_CNTEI_bm = 0x01          ; Count on Event Input bit mask
TCA_SINGLE_CNTEI_bp = 0             ; Count on Event Input bit position
TCA_SINGLE_EVACT_gm = 0x06          ; Event Action group mask
TCA_SINGLE_EVACT_gp = 1             ; Event Action group position
TCA_SINGLE_EVACT0_bm = 1<<1       ; Event Action bit 0 mask
TCA_SINGLE_EVACT0_bp = 1            ; Event Action bit 0 position
TCA_SINGLE_EVACT1_bm = 1<<2       ; Event Action bit 1 mask
TCA_SINGLE_EVACT1_bp = 2            ; Event Action bit 1 position

; TCA_SINGLE_INTCTRL masks
TCA_SINGLE_CMP0_bm = 0x10           ; Compare 0 Interrupt bit mask
TCA_SINGLE_CMP0_bp = 4              ; Compare 0 Interrupt bit position
TCA_SINGLE_CMP1_bm = 0x20           ; Compare 1 Interrupt bit mask
TCA_SINGLE_CMP1_bp = 5              ; Compare 1 Interrupt bit position
TCA_SINGLE_CMP2_bm = 0x40           ; Compare 2 Interrupt bit mask
TCA_SINGLE_CMP2_bp = 6              ; Compare 2 Interrupt bit position
TCA_SINGLE_OVF_bm = 0x01            ; Overflow Interrupt bit mask
TCA_SINGLE_OVF_bp = 0               ; Overflow Interrupt bit position

; TCA_SINGLE_INTFLAGS masks
; Masks for TCA_SINGLE_CMP0 already defined
; Masks for TCA_SINGLE_CMP1 already defined
; Masks for TCA_SINGLE_CMP2 already defined
; Masks for TCA_SINGLE_OVF already defined

; TCA_SPLIT_CTRLA masks
TCA_SPLIT_CLKSEL_gm = 0x0E          ; Clock Selection group mask
TCA_SPLIT_CLKSEL_gp = 1             ; Clock Selection group position
TCA_SPLIT_CLKSEL0_bm = 1<<1       ; Clock Selection bit 0 mask
TCA_SPLIT_CLKSEL0_bp = 1            ; Clock Selection bit 0 position
TCA_SPLIT_CLKSEL1_bm = 1<<2       ; Clock Selection bit 1 mask
TCA_SPLIT_CLKSEL1_bp = 2            ; Clock Selection bit 1 position
TCA_SPLIT_CLKSEL2_bm = 1<<3       ; Clock Selection bit 2 mask
TCA_SPLIT_CLKSEL2_bp = 3            ; Clock Selection bit 2 position
TCA_SPLIT_ENABLE_bm = 0x01          ; Module Enable bit mask
TCA_SPLIT_ENABLE_bp = 0             ; Module Enable bit position

; TCA_SPLIT_CTRLB masks
TCA_SPLIT_HCMP0EN_bm = 0x10         ; High Compare 0 Enable bit mask
TCA_SPLIT_HCMP0EN_bp = 4            ; High Compare 0 Enable bit position
TCA_SPLIT_HCMP1EN_bm = 0x20         ; High Compare 1 Enable bit mask
TCA_SPLIT_HCMP1EN_bp = 5            ; High Compare 1 Enable bit position
TCA_SPLIT_HCMP2EN_bm = 0x40         ; High Compare 2 Enable bit mask
TCA_SPLIT_HCMP2EN_bp = 6            ; High Compare 2 Enable bit position
TCA_SPLIT_LCMP0EN_bm = 0x01         ; Low Compare 0 Enable bit mask
TCA_SPLIT_LCMP0EN_bp = 0            ; Low Compare 0 Enable bit position
TCA_SPLIT_LCMP1EN_bm = 0x02         ; Low Compare 1 Enable bit mask
TCA_SPLIT_LCMP1EN_bp = 1            ; Low Compare 1 Enable bit position
TCA_SPLIT_LCMP2EN_bm = 0x04         ; Low Compare 2 Enable bit mask
TCA_SPLIT_LCMP2EN_bp = 2            ; Low Compare 2 Enable bit position

; TCA_SPLIT_CTRLC masks
TCA_SPLIT_HCMP0_bm = 0x10           ; High Compare 0 Output Value bit mask
TCA_SPLIT_HCMP0_bp = 4              ; High Compare 0 Output Value bit position
TCA_SPLIT_HCMP1_bm = 0x20           ; High Compare 1 Output Value bit mask
TCA_SPLIT_HCMP1_bp = 5              ; High Compare 1 Output Value bit position
TCA_SPLIT_HCMP2_bm = 0x40           ; High Compare 2 Output Value bit mask
TCA_SPLIT_HCMP2_bp = 6              ; High Compare 2 Output Value bit position
TCA_SPLIT_LCMP0OV_bm = 0x01         ; Low Compare 0 Output Value bit mask
TCA_SPLIT_LCMP0OV_bp = 0            ; Low Compare 0 Output Value bit position
TCA_SPLIT_LCMP1OV_bm = 0x02         ; Low Compare 1 Output Value bit mask
TCA_SPLIT_LCMP1OV_bp = 1            ; Low Compare 1 Output Value bit position
TCA_SPLIT_LCMP2OV_bm = 0x04         ; Low Compare 2 Output Value bit mask
TCA_SPLIT_LCMP2OV_bp = 2            ; Low Compare 2 Output Value bit position

; TCA_SPLIT_CTRLD masks
TCA_SPLIT_SPLITM_bm = 0x01          ; Split Mode Enable bit mask
TCA_SPLIT_SPLITM_bp = 0             ; Split Mode Enable bit position

; TCA_SPLIT_CTRLECLR masks
TCA_SPLIT_CMD_gm = 0x0C             ; Command group mask
TCA_SPLIT_CMD_gp = 2                ; Command group position
TCA_SPLIT_CMD0_bm = 1<<2          ; Command bit 0 mask
TCA_SPLIT_CMD0_bp = 2               ; Command bit 0 position
TCA_SPLIT_CMD1_bm = 1<<3          ; Command bit 1 mask
TCA_SPLIT_CMD1_bp = 3               ; Command bit 1 position

; TCA_SPLIT_CTRLESET masks
; Masks for TCA_SPLIT_CMD already defined

; TCA_SPLIT_DBGCTRL masks
TCA_SPLIT_DBGRUN_bm = 0x01          ; Debug Run bit mask
TCA_SPLIT_DBGRUN_bp = 0             ; Debug Run bit position

; TCA_SPLIT_INTCTRL masks
TCA_SPLIT_HUNF_bm = 0x02            ; High Underflow Interrupt Enable bit mask
TCA_SPLIT_HUNF_bp = 1               ; High Underflow Interrupt Enable bit position
TCA_SPLIT_LCMP0_bm = 0x10           ; Low Compare 0 Interrupt Enable bit mask
TCA_SPLIT_LCMP0_bp = 4              ; Low Compare 0 Interrupt Enable bit position
TCA_SPLIT_LCMP1_bm = 0x20           ; Low Compare 1 Interrupt Enable bit mask
TCA_SPLIT_LCMP1_bp = 5              ; Low Compare 1 Interrupt Enable bit position
TCA_SPLIT_LCMP2_bm = 0x40           ; Low Compare 2 Interrupt Enable bit mask
TCA_SPLIT_LCMP2_bp = 6              ; Low Compare 2 Interrupt Enable bit position
TCA_SPLIT_LUNF_bm = 0x01            ; Low Underflow Interrupt Enable bit mask
TCA_SPLIT_LUNF_bp = 0               ; Low Underflow Interrupt Enable bit position

; TCA_SPLIT_INTFLAGS masks
; Masks for TCA_SPLIT_HUNF already defined
; Masks for TCA_SPLIT_LCMP0 already defined
; Masks for TCA_SPLIT_LCMP1 already defined
; Masks for TCA_SPLIT_LCMP2 already defined
; Masks for TCA_SPLIT_LUNF already defined

; Clock Selection select
TCA_SINGLE_CLKSEL_DIV1_gc = 0x00<<1 ; System Clock
TCA_SINGLE_CLKSEL_DIV2_gc = 0x01<<1 ; System Clock / 2
TCA_SINGLE_CLKSEL_DIV4_gc = 0x02<<1 ; System Clock / 4
TCA_SINGLE_CLKSEL_DIV8_gc = 0x03<<1 ; System Clock / 8
TCA_SINGLE_CLKSEL_DIV16_gc = 0x04<<1 ; System Clock / 16
TCA_SINGLE_CLKSEL_DIV64_gc = 0x05<<1 ; System Clock / 64
TCA_SINGLE_CLKSEL_DIV256_gc = 0x06<<1 ; System Clock / 256
TCA_SINGLE_CLKSEL_DIV1024_gc = 0x07<<1 ; System Clock / 1024

; Waveform generation mode select
TCA_SINGLE_WGMODE_NORMAL_gc = 0x00<<0 ; Normal Mode
TCA_SINGLE_WGMODE_FRQ_gc = 0x01<<0 ; Frequency Generation Mode
TCA_SINGLE_WGMODE_SS_gc = 0x03<<0 ; Single Slope PWM
TCA_SINGLE_WGMODE_DS_T_gc = 0x05<<0 ; Dual Slope PWM, overflow on TOP
TCA_SINGLE_WGMODE_DS_TB_gc = 0x06<<0 ; Dual Slope PWM, overflow on TOP and BOTTOM
TCA_SINGLE_WGMODE_DS_B_gc = 0x07<<0 ; Dual Slope PWM, overflow on BOTTOM

; Command select
TCA_SINGLE_CMD_NONE_gc = 0x00<<2  ; No Command
TCA_SINGLE_CMD_UPDATE_gc = 0x01<<2 ; Force Update
TCA_SINGLE_CMD_RESTART_gc = 0x02<<2 ; Force Restart
TCA_SINGLE_CMD_RESET_gc = 0x03<<2 ; Force Hard Reset

; Masks for TCA_SINGLE_CMD already defined
; Direction select
TCA_SINGLE_DIR_UP_gc = 0x00<<0    ; Count up
TCA_SINGLE_DIR_DOWN_gc = 0x01<<0  ; Count down

; Event Action select
TCA_SINGLE_EVACT_POSEDGE_gc = 0x00<<1 ; Positive edge
TCA_SINGLE_EVACT_ANYEDGE_gc = 0x01<<1 ; Any edge
TCA_SINGLE_EVACT_HIGHLVL_gc = 0x02<<1 ; Count on high level
TCA_SINGLE_EVACT_UPDOWN_gc = 0x03<<1 ; Externally Controlled Up/Down Count

; Clock Selection select
TCA_SPLIT_CLKSEL_DIV1_gc = 0x00<<1 ; System Clock
TCA_SPLIT_CLKSEL_DIV2_gc = 0x01<<1 ; System Clock / 2
TCA_SPLIT_CLKSEL_DIV4_gc = 0x02<<1 ; System Clock / 4
TCA_SPLIT_CLKSEL_DIV8_gc = 0x03<<1 ; System Clock / 8
TCA_SPLIT_CLKSEL_DIV16_gc = 0x04<<1 ; System Clock / 16
TCA_SPLIT_CLKSEL_DIV64_gc = 0x05<<1 ; System Clock / 64
TCA_SPLIT_CLKSEL_DIV256_gc = 0x06<<1 ; System Clock / 256
TCA_SPLIT_CLKSEL_DIV1024_gc = 0x07<<1 ; System Clock / 1024

; Command select
TCA_SPLIT_CMD_NONE_gc = 0x00<<2   ; No Command
TCA_SPLIT_CMD_UPDATE_gc = 0x01<<2 ; Force Update
TCA_SPLIT_CMD_RESTART_gc = 0x02<<2 ; Force Restart
TCA_SPLIT_CMD_RESET_gc = 0x03<<2  ; Force Hard Reset

; Masks for TCA_SPLIT_CMD already defined

;*************************************************************************
;** TCB - 16-bit Timer Type B
;*************************************************************************

; TCB_CTRLA masks
TCB_CLKSEL_gm = 0x06                ; Clock Select group mask
TCB_CLKSEL_gp = 1                   ; Clock Select group position
TCB_CLKSEL0_bm = 1<<1             ; Clock Select bit 0 mask
TCB_CLKSEL0_bp = 1                  ; Clock Select bit 0 position
TCB_CLKSEL1_bm = 1<<2             ; Clock Select bit 1 mask
TCB_CLKSEL1_bp = 2                  ; Clock Select bit 1 position
TCB_ENABLE_bm = 0x01                ; Enable bit mask
TCB_ENABLE_bp = 0                   ; Enable bit position
TCB_RUNSTDBY_bm = 0x40              ; Run Standby bit mask
TCB_RUNSTDBY_bp = 6                 ; Run Standby bit position
TCB_SYNCUPD_bm = 0x10               ; Synchronize Update bit mask
TCB_SYNCUPD_bp = 4                  ; Synchronize Update bit position

; TCB_CTRLB masks
TCB_ASYNC_bm = 0x40                 ; Asynchronous Enable bit mask
TCB_ASYNC_bp = 6                    ; Asynchronous Enable bit position
TCB_CCEN_bm = 0x10                  ; Pin Output Enable bit mask
TCB_CCEN_bp = 4                     ; Pin Output Enable bit position
TCB_CCINIT_bm = 0x20                ; Pin Initial State bit mask
TCB_CCINIT_bp = 5                   ; Pin Initial State bit position
TCB_CNTMODE_gm = 0x07               ; Timer Mode group mask
TCB_CNTMODE_gp = 0                  ; Timer Mode group position
TCB_CNTMODE0_bm = 1<<0            ; Timer Mode bit 0 mask
TCB_CNTMODE0_bp = 0                 ; Timer Mode bit 0 position
TCB_CNTMODE1_bm = 1<<1            ; Timer Mode bit 1 mask
TCB_CNTMODE1_bp = 1                 ; Timer Mode bit 1 position
TCB_CNTMODE2_bm = 1<<2            ; Timer Mode bit 2 mask
TCB_CNTMODE2_bp = 2                 ; Timer Mode bit 2 position

; TCB_DBGCTRL masks
TCB_DBGRUN_bm = 0x01                ; Debug Run bit mask
TCB_DBGRUN_bp = 0                   ; Debug Run bit position

; TCB_EVCTRL masks
TCB_CAPTEI_bm = 0x01                ; Event Input Enable bit mask
TCB_CAPTEI_bp = 0                   ; Event Input Enable bit position
TCB_EDGE_bm = 0x10                  ; Event Edge bit mask
TCB_EDGE_bp = 4                     ; Event Edge bit position
TCB_FILTER_bm = 0x40                ; Input Capture Noise Cancellation Filter bit mask
TCB_FILTER_bp = 6                   ; Input Capture Noise Cancellation Filter bit position

; TCB_INTCTRL masks
TCB_CAPT_bm = 0x01                  ; Capture or Timeout bit mask
TCB_CAPT_bp = 0                     ; Capture or Timeout bit position

; TCB_INTFLAGS masks
; Masks for TCB_CAPT already defined

; TCB_STATUS masks
TCB_RUN_bm = 0x01                   ; Run bit mask
TCB_RUN_bp = 0                      ; Run bit position

; Clock Select select
TCB_CLKSEL_CLKDIV1_gc = 0x00<<1   ; CLK_PER (No Prescaling)
TCB_CLKSEL_CLKDIV2_gc = 0x01<<1   ; CLK_PER/2 (From Prescaler)
TCB_CLKSEL_CLKTCA_gc = 0x02<<1    ; Use Clock from TCA

; Timer Mode select
TCB_CNTMODE_INT_gc = 0x00<<0      ; Periodic Interrupt
TCB_CNTMODE_TIMEOUT_gc = 0x01<<0  ; Periodic Timeout
TCB_CNTMODE_CAPT_gc = 0x02<<0     ; Input Capture Event
TCB_CNTMODE_FRQ_gc = 0x03<<0      ; Input Capture Frequency measurement
TCB_CNTMODE_PW_gc = 0x04<<0       ; Input Capture Pulse-Width measurement
TCB_CNTMODE_FRQPW_gc = 0x05<<0    ; Input Capture Frequency and Pulse-Width measurement
TCB_CNTMODE_SINGLE_gc = 0x06<<0   ; Single Shot
TCB_CNTMODE_PWM8_gc = 0x07<<0     ; 8-bit PWM


;*************************************************************************
;** TCD - Timer Counter D
;*************************************************************************

; TCD_CTRLA masks
TCD_CLKSEL_gm = 0x60                ; clock select group mask
TCD_CLKSEL_gp = 5                   ; clock select group position
TCD_CLKSEL0_bm = 1<<5             ; clock select bit 0 mask
TCD_CLKSEL0_bp = 5                  ; clock select bit 0 position
TCD_CLKSEL1_bm = 1<<6             ; clock select bit 1 mask
TCD_CLKSEL1_bp = 6                  ; clock select bit 1 position
TCD_CNTPRES_gm = 0x18               ; counter prescaler group mask
TCD_CNTPRES_gp = 3                  ; counter prescaler group position
TCD_CNTPRES0_bm = 1<<3            ; counter prescaler bit 0 mask
TCD_CNTPRES0_bp = 3                 ; counter prescaler bit 0 position
TCD_CNTPRES1_bm = 1<<4            ; counter prescaler bit 1 mask
TCD_CNTPRES1_bp = 4                 ; counter prescaler bit 1 position
TCD_ENABLE_bm = 0x01                ; Enable bit mask
TCD_ENABLE_bp = 0                   ; Enable bit position
TCD_SYNCPRES_gm = 0x06              ; Syncronization prescaler group mask
TCD_SYNCPRES_gp = 1                 ; Syncronization prescaler group position
TCD_SYNCPRES0_bm = 1<<1           ; Syncronization prescaler bit 0 mask
TCD_SYNCPRES0_bp = 1                ; Syncronization prescaler bit 0 position
TCD_SYNCPRES1_bm = 1<<2           ; Syncronization prescaler bit 1 mask
TCD_SYNCPRES1_bp = 2                ; Syncronization prescaler bit 1 position

; TCD_CTRLB masks
TCD_WGMODE_gm = 0x03                ; Waveform generation mode group mask
TCD_WGMODE_gp = 0                   ; Waveform generation mode group position
TCD_WGMODE0_bm = 1<<0             ; Waveform generation mode bit 0 mask
TCD_WGMODE0_bp = 0                  ; Waveform generation mode bit 0 position
TCD_WGMODE1_bm = 1<<1             ; Waveform generation mode bit 1 mask
TCD_WGMODE1_bp = 1                  ; Waveform generation mode bit 1 position

; TCD_CTRLC masks
TCD_AUPDATE_bm = 0x02               ; Auto update bit mask
TCD_AUPDATE_bp = 1                  ; Auto update bit position
TCD_CMPCSEL_bm = 0x40               ; Compare C output select bit mask
TCD_CMPCSEL_bp = 6                  ; Compare C output select bit position
TCD_CMPDSEL_bm = 0x80               ; Compare D output select bit mask
TCD_CMPDSEL_bp = 7                  ; Compare D output select bit position
TCD_CMPOVR_bm = 0x01                ; Compare output value override bit mask
TCD_CMPOVR_bp = 0                   ; Compare output value override bit position
TCD_FIFTY_bm = 0x08                 ; Fifty percent waveform bit mask
TCD_FIFTY_bp = 3                    ; Fifty percent waveform bit position

; TCD_CTRLD masks
TCD_CMPAVAL_gm = 0x0F               ; Compare A value group mask
TCD_CMPAVAL_gp = 0                  ; Compare A value group position
TCD_CMPAVAL0_bm = 1<<0            ; Compare A value bit 0 mask
TCD_CMPAVAL0_bp = 0                 ; Compare A value bit 0 position
TCD_CMPAVAL1_bm = 1<<1            ; Compare A value bit 1 mask
TCD_CMPAVAL1_bp = 1                 ; Compare A value bit 1 position
TCD_CMPAVAL2_bm = 1<<2            ; Compare A value bit 2 mask
TCD_CMPAVAL2_bp = 2                 ; Compare A value bit 2 position
TCD_CMPAVAL3_bm = 1<<3            ; Compare A value bit 3 mask
TCD_CMPAVAL3_bp = 3                 ; Compare A value bit 3 position
TCD_CMPBVAL_gm = 0xF0               ; Compare B value group mask
TCD_CMPBVAL_gp = 4                  ; Compare B value group position
TCD_CMPBVAL0_bm = 1<<4            ; Compare B value bit 0 mask
TCD_CMPBVAL0_bp = 4                 ; Compare B value bit 0 position
TCD_CMPBVAL1_bm = 1<<5            ; Compare B value bit 1 mask
TCD_CMPBVAL1_bp = 5                 ; Compare B value bit 1 position
TCD_CMPBVAL2_bm = 1<<6            ; Compare B value bit 2 mask
TCD_CMPBVAL2_bp = 6                 ; Compare B value bit 2 position
TCD_CMPBVAL3_bm = 1<<7            ; Compare B value bit 3 mask
TCD_CMPBVAL3_bp = 7                 ; Compare B value bit 3 position

; TCD_CTRLE masks
TCD_CAPTUREA_bm = 0x08              ; Capture a strobe bit mask
TCD_CAPTUREA_bp = 3                 ; Capture a strobe bit position
TCD_CAPTUREB_bm = 0x10              ; Capture b strobe bit mask
TCD_CAPTUREB_bp = 4                 ; Capture b strobe bit position
TCD_DISEOC_bm = 0x80                ; Disable at end of cycle bit mask
TCD_DISEOC_bp = 7                   ; Disable at end of cycle bit position
TCD_RESTART_bm = 0x04               ; Restart strobe bit mask
TCD_RESTART_bp = 2                  ; Restart strobe bit position
TCD_SYNC_bm = 0x02                  ; synchronize strobe bit mask
TCD_SYNC_bp = 1                     ; synchronize strobe bit position
TCD_SYNCEOC_bm = 0x01               ; synchronize end of cycle strobe bit mask
TCD_SYNCEOC_bp = 0                  ; synchronize end of cycle strobe bit position

; TCD_DBGCTRL masks
TCD_DBGRUN_bm = 0x01                ; Debug run bit mask
TCD_DBGRUN_bp = 0                   ; Debug run bit position
TCD_FAULTDET_bm = 0x04              ; Fault detection bit mask
TCD_FAULTDET_bp = 2                 ; Fault detection bit position

; TCD_DITCTRL masks
TCD_DITHERSEL_gm = 0x03             ; dither select group mask
TCD_DITHERSEL_gp = 0                ; dither select group position
TCD_DITHERSEL0_bm = 1<<0          ; dither select bit 0 mask
TCD_DITHERSEL0_bp = 0               ; dither select bit 0 position
TCD_DITHERSEL1_bm = 1<<1          ; dither select bit 1 mask
TCD_DITHERSEL1_bp = 1               ; dither select bit 1 position

; TCD_DITVAL masks
TCD_DITHER_gm = 0x0F                ; Dither value group mask
TCD_DITHER_gp = 0                   ; Dither value group position
TCD_DITHER0_bm = 1<<0             ; Dither value bit 0 mask
TCD_DITHER0_bp = 0                  ; Dither value bit 0 position
TCD_DITHER1_bm = 1<<1             ; Dither value bit 1 mask
TCD_DITHER1_bp = 1                  ; Dither value bit 1 position
TCD_DITHER2_bm = 1<<2             ; Dither value bit 2 mask
TCD_DITHER2_bp = 2                  ; Dither value bit 2 position
TCD_DITHER3_bm = 1<<3             ; Dither value bit 3 mask
TCD_DITHER3_bp = 3                  ; Dither value bit 3 position

; TCD_DLYCTRL masks
TCD_DLYPRESC_gm = 0x30              ; Delay prescaler group mask
TCD_DLYPRESC_gp = 4                 ; Delay prescaler group position
TCD_DLYPRESC0_bm = 1<<4           ; Delay prescaler bit 0 mask
TCD_DLYPRESC0_bp = 4                ; Delay prescaler bit 0 position
TCD_DLYPRESC1_bm = 1<<5           ; Delay prescaler bit 1 mask
TCD_DLYPRESC1_bp = 5                ; Delay prescaler bit 1 position
TCD_DLYSEL_gm = 0x03                ; Delay select group mask
TCD_DLYSEL_gp = 0                   ; Delay select group position
TCD_DLYSEL0_bm = 1<<0             ; Delay select bit 0 mask
TCD_DLYSEL0_bp = 0                  ; Delay select bit 0 position
TCD_DLYSEL1_bm = 1<<1             ; Delay select bit 1 mask
TCD_DLYSEL1_bp = 1                  ; Delay select bit 1 position
TCD_DLYTRIG_gm = 0x0C               ; Delay trigger group mask
TCD_DLYTRIG_gp = 2                  ; Delay trigger group position
TCD_DLYTRIG0_bm = 1<<2            ; Delay trigger bit 0 mask
TCD_DLYTRIG0_bp = 2                 ; Delay trigger bit 0 position
TCD_DLYTRIG1_bm = 1<<3            ; Delay trigger bit 1 mask
TCD_DLYTRIG1_bp = 3                 ; Delay trigger bit 1 position

; TCD_DLYVAL masks
TCD_DLYVAL_gm = 0xFF                ; Delay value group mask
TCD_DLYVAL_gp = 0                   ; Delay value group position
TCD_DLYVAL0_bm = 1<<0             ; Delay value bit 0 mask
TCD_DLYVAL0_bp = 0                  ; Delay value bit 0 position
TCD_DLYVAL1_bm = 1<<1             ; Delay value bit 1 mask
TCD_DLYVAL1_bp = 1                  ; Delay value bit 1 position
TCD_DLYVAL2_bm = 1<<2             ; Delay value bit 2 mask
TCD_DLYVAL2_bp = 2                  ; Delay value bit 2 position
TCD_DLYVAL3_bm = 1<<3             ; Delay value bit 3 mask
TCD_DLYVAL3_bp = 3                  ; Delay value bit 3 position
TCD_DLYVAL4_bm = 1<<4             ; Delay value bit 4 mask
TCD_DLYVAL4_bp = 4                  ; Delay value bit 4 position
TCD_DLYVAL5_bm = 1<<5             ; Delay value bit 5 mask
TCD_DLYVAL5_bp = 5                  ; Delay value bit 5 position
TCD_DLYVAL6_bm = 1<<6             ; Delay value bit 6 mask
TCD_DLYVAL6_bp = 6                  ; Delay value bit 6 position
TCD_DLYVAL7_bm = 1<<7             ; Delay value bit 7 mask
TCD_DLYVAL7_bp = 7                  ; Delay value bit 7 position

; TCD_EVCTRLA masks
TCD_ACTION_bm = 0x04                ; event action bit mask
TCD_ACTION_bp = 2                   ; event action bit position
TCD_CFG_gm = 0xC0                   ; event config group mask
TCD_CFG_gp = 6                      ; event config group position
TCD_CFG0_bm = 1<<6                ; event config bit 0 mask
TCD_CFG0_bp = 6                     ; event config bit 0 position
TCD_CFG1_bm = 1<<7                ; event config bit 1 mask
TCD_CFG1_bp = 7                     ; event config bit 1 position
TCD_EDGE_bm = 0x10                  ; edge select bit mask
TCD_EDGE_bp = 4                     ; edge select bit position
TCD_TRIGEI_bm = 0x01                ; Trigger event enable bit mask
TCD_TRIGEI_bp = 0                   ; Trigger event enable bit position

; TCD_EVCTRLB masks
; Masks for TCD_ACTION already defined
; Masks for TCD_CFG already defined
; Masks for TCD_EDGE already defined
; Masks for TCD_TRIGEI already defined

; TCD_FAULTCTRL masks
TCD_CMPA_bm = 0x01                  ; Compare A value bit mask
TCD_CMPA_bp = 0                     ; Compare A value bit position
TCD_CMPAEN_bm = 0x10                ; Compare A enable bit mask
TCD_CMPAEN_bp = 4                   ; Compare A enable bit position
TCD_CMPB_bm = 0x02                  ; Compare B value bit mask
TCD_CMPB_bp = 1                     ; Compare B value bit position
TCD_CMPBEN_bm = 0x20                ; Compare B enable bit mask
TCD_CMPBEN_bp = 5                   ; Compare B enable bit position
TCD_CMPC_bm = 0x04                  ; Compare C value bit mask
TCD_CMPC_bp = 2                     ; Compare C value bit position
TCD_CMPCEN_bm = 0x40                ; Compare C enable bit mask
TCD_CMPCEN_bp = 6                   ; Compare C enable bit position
TCD_CMPD_bm = 0x08                  ; Compare D vaule bit mask
TCD_CMPD_bp = 3                     ; Compare D vaule bit position
TCD_CMPDEN_bm = 0x80                ; Compare D enable bit mask
TCD_CMPDEN_bp = 7                   ; Compare D enable bit position

; TCD_INPUTCTRLA masks
TCD_INPUTMODE_gm = 0x0F             ; Input mode group mask
TCD_INPUTMODE_gp = 0                ; Input mode group position
TCD_INPUTMODE0_bm = 1<<0          ; Input mode bit 0 mask
TCD_INPUTMODE0_bp = 0               ; Input mode bit 0 position
TCD_INPUTMODE1_bm = 1<<1          ; Input mode bit 1 mask
TCD_INPUTMODE1_bp = 1               ; Input mode bit 1 position
TCD_INPUTMODE2_bm = 1<<2          ; Input mode bit 2 mask
TCD_INPUTMODE2_bp = 2               ; Input mode bit 2 position
TCD_INPUTMODE3_bm = 1<<3          ; Input mode bit 3 mask
TCD_INPUTMODE3_bp = 3               ; Input mode bit 3 position

; TCD_INPUTCTRLB masks
; Masks for TCD_INPUTMODE already defined

; TCD_INTCTRL masks
TCD_OVF_bm = 0x01                   ; Overflow interrupt enable bit mask
TCD_OVF_bp = 0                      ; Overflow interrupt enable bit position
TCD_TRIGA_bm = 0x04                 ; Trigger A interrupt enable bit mask
TCD_TRIGA_bp = 2                    ; Trigger A interrupt enable bit position
TCD_TRIGB_bm = 0x08                 ; Trigger B interrupt enable bit mask
TCD_TRIGB_bp = 3                    ; Trigger B interrupt enable bit position

; TCD_INTFLAGS masks
; Masks for TCD_OVF already defined
; Masks for TCD_TRIGA already defined
; Masks for TCD_TRIGB already defined

; TCD_STATUS masks
TCD_CMDRDY_bm = 0x02                ; Command ready bit mask
TCD_CMDRDY_bp = 1                   ; Command ready bit position
TCD_ENRDY_bm = 0x01                 ; Enable ready bit mask
TCD_ENRDY_bp = 0                    ; Enable ready bit position
TCD_PWMACTA_bm = 0x40               ; PWM activity on A bit mask
TCD_PWMACTA_bp = 6                  ; PWM activity on A bit position
TCD_PWMACTB_bm = 0x80               ; PWM activity on B bit mask
TCD_PWMACTB_bp = 7                  ; PWM activity on B bit position

; clock select select
TCD_CLKSEL_20MHZ_gc = 0x00<<5     ; 20 MHz oscillator
TCD_CLKSEL_EXTCLK_gc = 0x02<<5    ; External clock
TCD_CLKSEL_SYSCLK_gc = 0x03<<5    ; System clock

; counter prescaler select
TCD_CNTPRES_DIV1_gc = 0x00<<3     ; Sync clock divided by 1
TCD_CNTPRES_DIV4_gc = 0x01<<3     ; Sync clock divided by 4
TCD_CNTPRES_DIV32_gc = 0x02<<3    ; Sync clock divided by 32

; Syncronization prescaler select
TCD_SYNCPRES_DIV1_gc = 0x00<<1    ; Selevted clock source divided by 1
TCD_SYNCPRES_DIV2_gc = 0x01<<1    ; Selevted clock source divided by 2
TCD_SYNCPRES_DIV4_gc = 0x02<<1    ; Selevted clock source divided by 4
TCD_SYNCPRES_DIV8_gc = 0x03<<1    ; Selevted clock source divided by 8

; Waveform generation mode select
TCD_WGMODE_ONERAMP_gc = 0x00<<0   ; One ramp mode
TCD_WGMODE_TWORAMP_gc = 0x01<<0   ; Two ramp mode
TCD_WGMODE_FOURRAMP_gc = 0x02<<0  ; Four ramp mode
TCD_WGMODE_DS_gc = 0x03<<0        ; Dual slope mode

; Compare C output select select
TCD_CMPCSEL_PWMA_gc = 0x00<<6     ; PWM A output
TCD_CMPCSEL_PWMB_gc = 0x01<<6     ; PWM B output

; Compare D output select select
TCD_CMPDSEL_PWMA_gc = 0x00<<7     ; PWM A output
TCD_CMPDSEL_PWMB_gc = 0x01<<7     ; PWM B output

; dither select select
TCD_DITHERSEL_ONTIMEB_gc = 0x00<<0 ; On-time ramp B
TCD_DITHERSEL_ONTIMEAB_gc = 0x01<<0 ; On-time ramp A and B
TCD_DITHERSEL_DEADTIMEB_gc = 0x02<<0 ; Dead-time rampB
TCD_DITHERSEL_DEADTIMEAB_gc = 0x03<<0 ; Dead-time ramp A and B

; Delay prescaler select
TCD_DLYPRESC_DIV1_gc = 0x00<<4    ; No prescaling
TCD_DLYPRESC_DIV2_gc = 0x01<<4    ; Prescale with 2
TCD_DLYPRESC_DIV4_gc = 0x02<<4    ; Prescale with 4
TCD_DLYPRESC_DIV8_gc = 0x03<<4    ; Prescale with 8

; Delay select select
TCD_DLYSEL_OFF_gc = 0x00<<0       ; No delay
TCD_DLYSEL_INBLANK_gc = 0x01<<0   ; Input blanking enabled
TCD_DLYSEL_EVENT_gc = 0x02<<0     ; Event delay enabled

; Delay trigger select
TCD_DLYTRIG_CMPASET_gc = 0x00<<2  ; Compare A set
TCD_DLYTRIG_CMPACLR_gc = 0x01<<2  ; Compare A clear
TCD_DLYTRIG_CMPBSET_gc = 0x02<<2  ; Compare B set
TCD_DLYTRIG_CMPBCLR_gc = 0x03<<2  ; Compare B clear

; event action select
TCD_ACTION_FAULT_gc = 0x00<<2     ; Event trigger a fault
TCD_ACTION_CAPTURE_gc = 0x01<<2   ; Event trigger a fault and capture

; event config select
TCD_CFG_FILTER_gc = 0x01<<6       ; Filter functionality on
TCD_CFG_ASYNC_gc = 0x02<<6        ; Async functionality on

; edge select select
TCD_EDGE_FALL_LOW_gc = 0x00<<4    ; The falling edge or low level of event generates retrigger or fault action
TCD_EDGE_RISE_HIGH_gc = 0x01<<4   ; The rising edge or high level of event generates retrigger or fault action


;*************************************************************************
;** TWI - Two-Wire Interface
;*************************************************************************

; TWI_CTRLA masks
TWI_FMPEN_bm = 0x02                 ; FM Plus Enable bit mask
TWI_FMPEN_bp = 1                    ; FM Plus Enable bit position
TWI_SDAHOLD_gm = 0x0C               ; SDA Hold Time group mask
TWI_SDAHOLD_gp = 2                  ; SDA Hold Time group position
TWI_SDAHOLD0_bm = 1<<2            ; SDA Hold Time bit 0 mask
TWI_SDAHOLD0_bp = 2                 ; SDA Hold Time bit 0 position
TWI_SDAHOLD1_bm = 1<<3            ; SDA Hold Time bit 1 mask
TWI_SDAHOLD1_bp = 3                 ; SDA Hold Time bit 1 position
TWI_SDASETUP_bm = 0x10              ; SDA Setup Time bit mask
TWI_SDASETUP_bp = 4                 ; SDA Setup Time bit position

; TWI_DBGCTRL masks
TWI_DBGRUN_bm = 0x01                ; Debug Run bit mask
TWI_DBGRUN_bp = 0                   ; Debug Run bit position

; TWI_MCTRLA masks
TWI_ENABLE_bm = 0x01                ; Enable TWI Master bit mask
TWI_ENABLE_bp = 0                   ; Enable TWI Master bit position
TWI_QCEN_bm = 0x10                  ; Quick Command Enable bit mask
TWI_QCEN_bp = 4                     ; Quick Command Enable bit position
TWI_RIEN_bm = 0x80                  ; Read Interrupt Enable bit mask
TWI_RIEN_bp = 7                     ; Read Interrupt Enable bit position
TWI_SMEN_bm = 0x02                  ; Smart Mode Enable bit mask
TWI_SMEN_bp = 1                     ; Smart Mode Enable bit position
TWI_TIMEOUT_gm = 0x0C               ; Inactive Bus Timeout group mask
TWI_TIMEOUT_gp = 2                  ; Inactive Bus Timeout group position
TWI_TIMEOUT0_bm = 1<<2            ; Inactive Bus Timeout bit 0 mask
TWI_TIMEOUT0_bp = 2                 ; Inactive Bus Timeout bit 0 position
TWI_TIMEOUT1_bm = 1<<3            ; Inactive Bus Timeout bit 1 mask
TWI_TIMEOUT1_bp = 3                 ; Inactive Bus Timeout bit 1 position
TWI_WIEN_bm = 0x40                  ; Write Interrupt Enable bit mask
TWI_WIEN_bp = 6                     ; Write Interrupt Enable bit position

; TWI_MCTRLB masks
TWI_ACKACT_bm = 0x04                ; Acknowledge Action bit mask
TWI_ACKACT_bp = 2                   ; Acknowledge Action bit position
TWI_FLUSH_bm = 0x08                 ; Flush bit mask
TWI_FLUSH_bp = 3                    ; Flush bit position
TWI_MCMD_gm = 0x03                  ; Command group mask
TWI_MCMD_gp = 0                     ; Command group position
TWI_MCMD0_bm = 1<<0               ; Command bit 0 mask
TWI_MCMD0_bp = 0                    ; Command bit 0 position
TWI_MCMD1_bm = 1<<1               ; Command bit 1 mask
TWI_MCMD1_bp = 1                    ; Command bit 1 position

; TWI_MSTATUS masks
TWI_ARBLOST_bm = 0x08               ; Arbitration Lost bit mask
TWI_ARBLOST_bp = 3                  ; Arbitration Lost bit position
TWI_BUSERR_bm = 0x04                ; Bus Error bit mask
TWI_BUSERR_bp = 2                   ; Bus Error bit position
TWI_BUSSTATE_gm = 0x03              ; Bus State group mask
TWI_BUSSTATE_gp = 0                 ; Bus State group position
TWI_BUSSTATE0_bm = 1<<0           ; Bus State bit 0 mask
TWI_BUSSTATE0_bp = 0                ; Bus State bit 0 position
TWI_BUSSTATE1_bm = 1<<1           ; Bus State bit 1 mask
TWI_BUSSTATE1_bp = 1                ; Bus State bit 1 position
TWI_CLKHOLD_bm = 0x20               ; Clock Hold bit mask
TWI_CLKHOLD_bp = 5                  ; Clock Hold bit position
TWI_RIF_bm = 0x80                   ; Read Interrupt Flag bit mask
TWI_RIF_bp = 7                      ; Read Interrupt Flag bit position
TWI_RXACK_bm = 0x10                 ; Received Acknowledge bit mask
TWI_RXACK_bp = 4                    ; Received Acknowledge bit position
TWI_WIF_bm = 0x40                   ; Write Interrupt Flag bit mask
TWI_WIF_bp = 6                      ; Write Interrupt Flag bit position

; TWI_SADDRMASK masks
TWI_ADDREN_bm = 0x01                ; Address Enable bit mask
TWI_ADDREN_bp = 0                   ; Address Enable bit position
TWI_ADDRMASK_gm = 0xFE              ; Address Mask group mask
TWI_ADDRMASK_gp = 1                 ; Address Mask group position
TWI_ADDRMASK0_bm = 1<<1           ; Address Mask bit 0 mask
TWI_ADDRMASK0_bp = 1                ; Address Mask bit 0 position
TWI_ADDRMASK1_bm = 1<<2           ; Address Mask bit 1 mask
TWI_ADDRMASK1_bp = 2                ; Address Mask bit 1 position
TWI_ADDRMASK2_bm = 1<<3           ; Address Mask bit 2 mask
TWI_ADDRMASK2_bp = 3                ; Address Mask bit 2 position
TWI_ADDRMASK3_bm = 1<<4           ; Address Mask bit 3 mask
TWI_ADDRMASK3_bp = 4                ; Address Mask bit 3 position
TWI_ADDRMASK4_bm = 1<<5           ; Address Mask bit 4 mask
TWI_ADDRMASK4_bp = 5                ; Address Mask bit 4 position
TWI_ADDRMASK5_bm = 1<<6           ; Address Mask bit 5 mask
TWI_ADDRMASK5_bp = 6                ; Address Mask bit 5 position
TWI_ADDRMASK6_bm = 1<<7           ; Address Mask bit 6 mask
TWI_ADDRMASK6_bp = 7                ; Address Mask bit 6 position

; TWI_SCTRLA masks
TWI_APIEN_bm = 0x40                 ; Address/Stop Interrupt Enable bit mask
TWI_APIEN_bp = 6                    ; Address/Stop Interrupt Enable bit position
TWI_DIEN_bm = 0x80                  ; Data Interrupt Enable bit mask
TWI_DIEN_bp = 7                     ; Data Interrupt Enable bit position
; Masks for TWI_ENABLE already defined
TWI_PIEN_bm = 0x20                  ; Stop Interrupt Enable bit mask
TWI_PIEN_bp = 5                     ; Stop Interrupt Enable bit position
TWI_PMEN_bm = 0x04                  ; Promiscuous Mode Enable bit mask
TWI_PMEN_bp = 2                     ; Promiscuous Mode Enable bit position
; Masks for TWI_SMEN already defined

; TWI_SCTRLB masks
; Masks for TWI_ACKACT already defined
TWI_SCMD_gm = 0x03                  ; Command group mask
TWI_SCMD_gp = 0                     ; Command group position
TWI_SCMD0_bm = 1<<0               ; Command bit 0 mask
TWI_SCMD0_bp = 0                    ; Command bit 0 position
TWI_SCMD1_bm = 1<<1               ; Command bit 1 mask
TWI_SCMD1_bp = 1                    ; Command bit 1 position

; TWI_SSTATUS masks
TWI_AP_bm = 0x01                    ; Slave Address or Stop bit mask
TWI_AP_bp = 0                       ; Slave Address or Stop bit position
TWI_APIF_bm = 0x40                  ; Address/Stop Interrupt Flag bit mask
TWI_APIF_bp = 6                     ; Address/Stop Interrupt Flag bit position
; Masks for TWI_BUSERR already defined
; Masks for TWI_CLKHOLD already defined
TWI_COLL_bm = 0x08                  ; Collision bit mask
TWI_COLL_bp = 3                     ; Collision bit position
TWI_DIF_bm = 0x80                   ; Data Interrupt Flag bit mask
TWI_DIF_bp = 7                      ; Data Interrupt Flag bit position
TWI_DIR_bm = 0x02                   ; Read/Write Direction bit mask
TWI_DIR_bp = 1                      ; Read/Write Direction bit position
; Masks for TWI_RXACK already defined

; SDA Hold Time select
TWI_SDAHOLD_OFF_gc = 0x00<<2      ; SDA hold time off
TWI_SDAHOLD_50NS_gc = 0x01<<2     ; Typical 50ns hold time
TWI_SDAHOLD_300NS_gc = 0x02<<2    ; Typical 300ns hold time
TWI_SDAHOLD_500NS_gc = 0x03<<2    ; Typical 500ns hold time

; SDA Setup Time select
TWI_SDASETUP_4CYC_gc = 0x00<<4    ; SDA setup time is 4 clock cycles
TWI_SDASETUP_8CYC_gc = 0x01<<4    ; SDA setup time is 8 clock cycles

; Inactive Bus Timeout select
TWI_TIMEOUT_DISABLED_gc = 0x00<<2 ; Bus Timeout Disabled
TWI_TIMEOUT_50US_gc = 0x01<<2     ; 50 Microseconds
TWI_TIMEOUT_100US_gc = 0x02<<2    ; 100 Microseconds
TWI_TIMEOUT_200US_gc = 0x03<<2    ; 200 Microseconds

; Acknowledge Action select
TWI_ACKACT_ACK_gc = 0x00<<2       ; Send ACK
TWI_ACKACT_NACK_gc = 0x01<<2      ; Send NACK

; Command select
TWI_MCMD_NOACT_gc = 0x00<<0       ; No Action
TWI_MCMD_REPSTART_gc = 0x01<<0    ; Issue Repeated Start Condition
TWI_MCMD_RECVTRANS_gc = 0x02<<0   ; Receive or Transmit Data, depending on DIR
TWI_MCMD_STOP_gc = 0x03<<0        ; Issue Stop Condition

; Bus State select
TWI_BUSSTATE_UNKNOWN_gc = 0x00<<0 ; Unknown Bus State
TWI_BUSSTATE_IDLE_gc = 0x01<<0    ; Bus is Idle
TWI_BUSSTATE_OWNER_gc = 0x02<<0   ; This Module Controls The Bus
TWI_BUSSTATE_BUSY_gc = 0x03<<0    ; The Bus is Busy

; Command select
TWI_SCMD_NOACT_gc = 0x00<<0       ; No Action
TWI_SCMD_COMPTRANS_gc = 0x02<<0   ; Used To Complete a Transaction
TWI_SCMD_RESPONSE_gc = 0x03<<0    ; Used in Response to Address/Data Interrupt

; Slave Address or Stop select
TWI_AP_STOP_gc = 0x00<<0          ; Stop condition generated APIF
TWI_AP_ADR_gc = 0x01<<0           ; Address detection generated APIF


;*************************************************************************
;** USART - Universal Synchronous and Asynchronous Receiver and Transmitter
;*************************************************************************

; USART_CTRLA masks
USART_ABEIE_bm = 0x04               ; Auto-baud Error Interrupt Enable bit mask
USART_ABEIE_bp = 2                  ; Auto-baud Error Interrupt Enable bit position
USART_DREIE_bm = 0x20               ; Data Register Empty Interrupt Enable bit mask
USART_DREIE_bp = 5                  ; Data Register Empty Interrupt Enable bit position
USART_LBME_bm = 0x08                ; Loop-back Mode Enable bit mask
USART_LBME_bp = 3                   ; Loop-back Mode Enable bit position
USART_RS485_gm = 0x03               ; RS485 Mode internal transmitter group mask
USART_RS485_gp = 0                  ; RS485 Mode internal transmitter group position
USART_RS4850_bm = 1<<0            ; RS485 Mode internal transmitter bit 0 mask
USART_RS4850_bp = 0                 ; RS485 Mode internal transmitter bit 0 position
USART_RS4851_bm = 1<<1            ; RS485 Mode internal transmitter bit 1 mask
USART_RS4851_bp = 1                 ; RS485 Mode internal transmitter bit 1 position
USART_RXCIE_bm = 0x80               ; Receive Complete Interrupt Enable bit mask
USART_RXCIE_bp = 7                  ; Receive Complete Interrupt Enable bit position
USART_RXSIE_bm = 0x10               ; Receiver Start Frame Interrupt Enable bit mask
USART_RXSIE_bp = 4                  ; Receiver Start Frame Interrupt Enable bit position
USART_TXCIE_bm = 0x40               ; Transmit Complete Interrupt Enable bit mask
USART_TXCIE_bp = 6                  ; Transmit Complete Interrupt Enable bit position

; USART_CTRLB masks
USART_MPCM_bm = 0x01                ; Multi-processor Communication Mode bit mask
USART_MPCM_bp = 0                   ; Multi-processor Communication Mode bit position
USART_ODME_bm = 0x08                ; Open Drain Mode Enable bit mask
USART_ODME_bp = 3                   ; Open Drain Mode Enable bit position
USART_RXEN_bm = 0x80                ; Reciever enable bit mask
USART_RXEN_bp = 7                   ; Reciever enable bit position
USART_RXMODE_gm = 0x06              ; Receiver Mode group mask
USART_RXMODE_gp = 1                 ; Receiver Mode group position
USART_RXMODE0_bm = 1<<1           ; Receiver Mode bit 0 mask
USART_RXMODE0_bp = 1                ; Receiver Mode bit 0 position
USART_RXMODE1_bm = 1<<2           ; Receiver Mode bit 1 mask
USART_RXMODE1_bp = 2                ; Receiver Mode bit 1 position
USART_SFDEN_bm = 0x10               ; Start Frame Detection Enable bit mask
USART_SFDEN_bp = 4                  ; Start Frame Detection Enable bit position
USART_TXEN_bm = 0x40                ; Transmitter Enable bit mask
USART_TXEN_bp = 6                   ; Transmitter Enable bit position

; USART_CTRLC masks
USART_CMODE_gm = 0xC0               ; Communication Mode group mask
USART_CMODE_gp = 6                  ; Communication Mode group position
USART_CMODE0_bm = 1<<6            ; Communication Mode bit 0 mask
USART_CMODE0_bp = 6                 ; Communication Mode bit 0 position
USART_CMODE1_bm = 1<<7            ; Communication Mode bit 1 mask
USART_CMODE1_bp = 7                 ; Communication Mode bit 1 position
USART_UCPHA_bm = 0x02               ; SPI Master Mode, Clock Phase bit mask
USART_UCPHA_bp = 1                  ; SPI Master Mode, Clock Phase bit position
USART_UDORD_bm = 0x04               ; SPI Master Mode, Data Order bit mask
USART_UDORD_bp = 2                  ; SPI Master Mode, Data Order bit position
USART_CHSIZE_gm = 0x07              ; Character Size group mask
USART_CHSIZE_gp = 0                 ; Character Size group position
USART_CHSIZE0_bm = 1<<0           ; Character Size bit 0 mask
USART_CHSIZE0_bp = 0                ; Character Size bit 0 position
USART_CHSIZE1_bm = 1<<1           ; Character Size bit 1 mask
USART_CHSIZE1_bp = 1                ; Character Size bit 1 position
USART_CHSIZE2_bm = 1<<2           ; Character Size bit 2 mask
USART_CHSIZE2_bp = 2                ; Character Size bit 2 position
USART_PMODE_gm = 0x30               ; Parity Mode group mask
USART_PMODE_gp = 4                  ; Parity Mode group position
USART_PMODE0_bm = 1<<4            ; Parity Mode bit 0 mask
USART_PMODE0_bp = 4                 ; Parity Mode bit 0 position
USART_PMODE1_bm = 1<<5            ; Parity Mode bit 1 mask
USART_PMODE1_bp = 5                 ; Parity Mode bit 1 position
USART_SBMODE_bm = 0x08              ; Stop Bit Mode bit mask
USART_SBMODE_bp = 3                 ; Stop Bit Mode bit position

; USART_DBGCTRL masks
USART_ABMBP_bm = 0x80               ; Autobaud majority voter bypass bit mask
USART_ABMBP_bp = 7                  ; Autobaud majority voter bypass bit position
USART_DBGRUN_bm = 0x01              ; Debug Run bit mask
USART_DBGRUN_bp = 0                 ; Debug Run bit position

; USART_EVCTRL masks
USART_IREI_bm = 0x01                ; IrDA Event Input Enable bit mask
USART_IREI_bp = 0                   ; IrDA Event Input Enable bit position

; USART_RXDATAH masks
USART_BUFOVF_bm = 0x40              ; Buffer Overflow bit mask
USART_BUFOVF_bp = 6                 ; Buffer Overflow bit position
USART_DATA8_bm = 0x01               ; Receiver Data Register bit mask
USART_DATA8_bp = 0                  ; Receiver Data Register bit position
USART_FERR_bm = 0x04                ; Frame Error bit mask
USART_FERR_bp = 2                   ; Frame Error bit position
USART_PERR_bm = 0x02                ; Parity Error bit mask
USART_PERR_bp = 1                   ; Parity Error bit position
USART_RXCIF_bm = 0x80               ; Receive Complete Interrupt Flag bit mask
USART_RXCIF_bp = 7                  ; Receive Complete Interrupt Flag bit position

; USART_RXDATAL masks
USART_DATA_gm = 0xFF                ; RX Data group mask
USART_DATA_gp = 0                   ; RX Data group position
USART_DATA0_bm = 1<<0             ; RX Data bit 0 mask
USART_DATA0_bp = 0                  ; RX Data bit 0 position
USART_DATA1_bm = 1<<1             ; RX Data bit 1 mask
USART_DATA1_bp = 1                  ; RX Data bit 1 position
USART_DATA2_bm = 1<<2             ; RX Data bit 2 mask
USART_DATA2_bp = 2                  ; RX Data bit 2 position
USART_DATA3_bm = 1<<3             ; RX Data bit 3 mask
USART_DATA3_bp = 3                  ; RX Data bit 3 position
USART_DATA4_bm = 1<<4             ; RX Data bit 4 mask
USART_DATA4_bp = 4                  ; RX Data bit 4 position
USART_DATA5_bm = 1<<5             ; RX Data bit 5 mask
USART_DATA5_bp = 5                  ; RX Data bit 5 position
USART_DATA6_bm = 1<<6             ; RX Data bit 6 mask
USART_DATA6_bp = 6                  ; RX Data bit 6 position
USART_DATA7_bm = 1<<7             ; RX Data bit 7 mask
USART_DATA7_bp = 7                  ; RX Data bit 7 position

; USART_RXPLCTRL masks
USART_RXPL_gm = 0x7F                ; Receiver Pulse Lenght group mask
USART_RXPL_gp = 0                   ; Receiver Pulse Lenght group position
USART_RXPL0_bm = 1<<0             ; Receiver Pulse Lenght bit 0 mask
USART_RXPL0_bp = 0                  ; Receiver Pulse Lenght bit 0 position
USART_RXPL1_bm = 1<<1             ; Receiver Pulse Lenght bit 1 mask
USART_RXPL1_bp = 1                  ; Receiver Pulse Lenght bit 1 position
USART_RXPL2_bm = 1<<2             ; Receiver Pulse Lenght bit 2 mask
USART_RXPL2_bp = 2                  ; Receiver Pulse Lenght bit 2 position
USART_RXPL3_bm = 1<<3             ; Receiver Pulse Lenght bit 3 mask
USART_RXPL3_bp = 3                  ; Receiver Pulse Lenght bit 3 position
USART_RXPL4_bm = 1<<4             ; Receiver Pulse Lenght bit 4 mask
USART_RXPL4_bp = 4                  ; Receiver Pulse Lenght bit 4 position
USART_RXPL5_bm = 1<<5             ; Receiver Pulse Lenght bit 5 mask
USART_RXPL5_bp = 5                  ; Receiver Pulse Lenght bit 5 position
USART_RXPL6_bm = 1<<6             ; Receiver Pulse Lenght bit 6 mask
USART_RXPL6_bp = 6                  ; Receiver Pulse Lenght bit 6 position

; USART_STATUS masks
USART_BDF_bm = 0x02                 ; Break Detected Flag bit mask
USART_BDF_bp = 1                    ; Break Detected Flag bit position
USART_DREIF_bm = 0x20               ; Data Register Empty Flag bit mask
USART_DREIF_bp = 5                  ; Data Register Empty Flag bit position
USART_ISFIF_bm = 0x08               ; Inconsistent Sync Field Interrupt Flag bit mask
USART_ISFIF_bp = 3                  ; Inconsistent Sync Field Interrupt Flag bit position
; Masks for USART_RXCIF already defined
USART_RXSIF_bm = 0x10               ; Receive Start Interrupt bit mask
USART_RXSIF_bp = 4                  ; Receive Start Interrupt bit position
USART_TXCIF_bm = 0x40               ; Transmit Interrupt Flag bit mask
USART_TXCIF_bp = 6                  ; Transmit Interrupt Flag bit position
USART_WFB_bm = 0x01                 ; Wait For Break bit mask
USART_WFB_bp = 0                    ; Wait For Break bit position

; USART_TXDATAH masks
; Masks for USART_DATA8 already defined

; USART_TXDATAL masks
; Masks for USART_DATA already defined

; USART_TXPLCTRL masks
USART_TXPL_gm = 0xFF                ; Transmit pulse length group mask
USART_TXPL_gp = 0                   ; Transmit pulse length group position
USART_TXPL0_bm = 1<<0             ; Transmit pulse length bit 0 mask
USART_TXPL0_bp = 0                  ; Transmit pulse length bit 0 position
USART_TXPL1_bm = 1<<1             ; Transmit pulse length bit 1 mask
USART_TXPL1_bp = 1                  ; Transmit pulse length bit 1 position
USART_TXPL2_bm = 1<<2             ; Transmit pulse length bit 2 mask
USART_TXPL2_bp = 2                  ; Transmit pulse length bit 2 position
USART_TXPL3_bm = 1<<3             ; Transmit pulse length bit 3 mask
USART_TXPL3_bp = 3                  ; Transmit pulse length bit 3 position
USART_TXPL4_bm = 1<<4             ; Transmit pulse length bit 4 mask
USART_TXPL4_bp = 4                  ; Transmit pulse length bit 4 position
USART_TXPL5_bm = 1<<5             ; Transmit pulse length bit 5 mask
USART_TXPL5_bp = 5                  ; Transmit pulse length bit 5 position
USART_TXPL6_bm = 1<<6             ; Transmit pulse length bit 6 mask
USART_TXPL6_bp = 6                  ; Transmit pulse length bit 6 position
USART_TXPL7_bm = 1<<7             ; Transmit pulse length bit 7 mask
USART_TXPL7_bp = 7                  ; Transmit pulse length bit 7 position

; RS485 Mode internal transmitter select
USART_RS485_OFF_gc = 0x00<<0      ; RS485 Mode disabled
USART_RS485_EXT_gc = 0x01<<0      ; RS485 Mode External drive
USART_RS485_INT_gc = 0x02<<0      ; RS485 Mode Internal drive

; Receiver Mode select
USART_RXMODE_NORMAL_gc = 0x00<<1  ; Normal mode
USART_RXMODE_CLK2X_gc = 0x01<<1   ; CLK2x mode
USART_RXMODE_GENAUTO_gc = 0x02<<1 ; Generic autobaud mode
USART_RXMODE_LINAUTO_gc = 0x03<<1 ; LIN constrained autobaud mode

; Communication Mode select
USART_mspi_CMODE_ASYNCHRONOUS_gc = 0x00<<6 ; Asynchronous Mode
USART_mspi_CMODE_SYNCHRONOUS_gc = 0x01<<6 ; Synchronous Mode
USART_mspi_CMODE_IRCOM_gc = 0x02<<6 ; Infrared Communication
USART_mspi_CMODE_MSPI_gc = 0x03<<6 ; Master SPI Mode

; Character Size select
USART_normal_CHSIZE_5BIT_gc = 0x00<<0 ; Character size: 5 bit
USART_normal_CHSIZE_6BIT_gc = 0x01<<0 ; Character size: 6 bit
USART_normal_CHSIZE_7BIT_gc = 0x02<<0 ; Character size: 7 bit
USART_normal_CHSIZE_8BIT_gc = 0x03<<0 ; Character size: 8 bit
USART_normal_CHSIZE_9BITL_gc = 0x06<<0 ; Character size: 9 bit read low byte first
USART_normal_CHSIZE_9BITH_gc = 0x07<<0 ; Character size: 9 bit read high byte first

; Parity Mode select
USART_normal_PMODE_DISABLED_gc = 0x00<<4 ; No Parity
USART_normal_PMODE_EVEN_gc = 0x02<<4 ; Even Parity
USART_normal_PMODE_ODD_gc = 0x03<<4 ; Odd Parity

; Stop Bit Mode select
USART_normal_SBMODE_1BIT_gc = 0x00<<3 ; 1 stop bit
USART_normal_SBMODE_2BIT_gc = 0x01<<3 ; 2 stop bits


;*************************************************************************
;** USERROW - User Row
;*************************************************************************


;*************************************************************************
;** VPORT - Virtual Ports
;*************************************************************************

; VPORT_INTFLAGS masks
VPORT_INT_gm = 0xFF                 ; Pin Interrupt group mask
VPORT_INT_gp = 0                    ; Pin Interrupt group position
VPORT_INT0_bm = 1<<0              ; Pin Interrupt bit 0 mask
VPORT_INT0_bp = 0                   ; Pin Interrupt bit 0 position
VPORT_INT1_bm = 1<<1              ; Pin Interrupt bit 1 mask
VPORT_INT1_bp = 1                   ; Pin Interrupt bit 1 position
VPORT_INT2_bm = 1<<2              ; Pin Interrupt bit 2 mask
VPORT_INT2_bp = 2                   ; Pin Interrupt bit 2 position
VPORT_INT3_bm = 1<<3              ; Pin Interrupt bit 3 mask
VPORT_INT3_bp = 3                   ; Pin Interrupt bit 3 position
VPORT_INT4_bm = 1<<4              ; Pin Interrupt bit 4 mask
VPORT_INT4_bp = 4                   ; Pin Interrupt bit 4 position
VPORT_INT5_bm = 1<<5              ; Pin Interrupt bit 5 mask
VPORT_INT5_bp = 5                   ; Pin Interrupt bit 5 position
VPORT_INT6_bm = 1<<6              ; Pin Interrupt bit 6 mask
VPORT_INT6_bp = 6                   ; Pin Interrupt bit 6 position
VPORT_INT7_bm = 1<<7              ; Pin Interrupt bit 7 mask
VPORT_INT7_bp = 7                   ; Pin Interrupt bit 7 position


;*************************************************************************
;** VREF - Voltage reference
;*************************************************************************

; VREF_CTRLA masks
VREF_ADCREFSEL_gm = 0x70            ; ADC referance select group mask
VREF_ADCREFSEL_gp = 4               ; ADC referance select group position
VREF_ADCREFSEL0_bm = 1<<4         ; ADC referance select bit 0 mask
VREF_ADCREFSEL0_bp = 4              ; ADC referance select bit 0 position
VREF_ADCREFSEL1_bm = 1<<5         ; ADC referance select bit 1 mask
VREF_ADCREFSEL1_bp = 5              ; ADC referance select bit 1 position
VREF_ADCREFSEL2_bm = 1<<6         ; ADC referance select bit 2 mask
VREF_ADCREFSEL2_bp = 6              ; ADC referance select bit 2 position
VREF_DACREFSEL_gm = 0x07            ; DAC/AC referance select group mask
VREF_DACREFSEL_gp = 0               ; DAC/AC referance select group position
VREF_DACREFSEL0_bm = 1<<0         ; DAC/AC referance select bit 0 mask
VREF_DACREFSEL0_bp = 0              ; DAC/AC referance select bit 0 position
VREF_DACREFSEL1_bm = 1<<1         ; DAC/AC referance select bit 1 mask
VREF_DACREFSEL1_bp = 1              ; DAC/AC referance select bit 1 position
VREF_DACREFSEL2_bm = 1<<2         ; DAC/AC referance select bit 2 mask
VREF_DACREFSEL2_bp = 2              ; DAC/AC referance select bit 2 position

; VREF_CTRLB masks
VREF_ADCREFEN_bm = 0x02             ; ADC referance enable bit mask
VREF_ADCREFEN_bp = 1                ; ADC referance enable bit position
VREF_DACREFEN_bm = 0x01             ; DAC/AC referance enable bit mask
VREF_DACREFEN_bp = 0                ; DAC/AC referance enable bit position
VREF_NVMREFEN_bm = 0x04             ; NVM referance enable bit mask
VREF_NVMREFEN_bp = 2                ; NVM referance enable bit position

; ADC referance select select
VREF_ADCREFSEL_0V55_gc = 0x00<<4  ; Voltage referance at 0.55V
VREF_ADCREFSEL_1V1_gc = 0x01<<4   ; Voltage referance at 1.1V
VREF_ADCREFSEL_2V5_gc = 0x02<<4   ; Voltage referance at 2.5V
VREF_ADCREFSEL_4V34_gc = 0x03<<4  ; Voltage referance at 4.34V
VREF_ADCREFSEL_1V5_gc = 0x04<<4   ; Voltage referance at 1.5V

; DAC/AC referance select select
VREF_DACREFSEL_0V55_gc = 0x00<<0  ; Voltage referance at 0.55V
VREF_DACREFSEL_1V1_gc = 0x01<<0   ; Voltage referance at 1.1V
VREF_DACREFSEL_2V5_gc = 0x02<<0   ; Voltage referance at 2.5V
VREF_DACREFSEL_4V34_gc = 0x03<<0  ; Voltage referance at 4.34V
VREF_DACREFSEL_1V5_gc = 0x04<<0   ; Voltage referance at 1.5V


;*************************************************************************
;** WDT - Watch-Dog Timer
;*************************************************************************

; WDT_CTRLA masks
WDT_PERIOD_gm = 0x0F                ; Period group mask
WDT_PERIOD_gp = 0                   ; Period group position
WDT_PERIOD0_bm = 1<<0             ; Period bit 0 mask
WDT_PERIOD0_bp = 0                  ; Period bit 0 position
WDT_PERIOD1_bm = 1<<1             ; Period bit 1 mask
WDT_PERIOD1_bp = 1                  ; Period bit 1 position
WDT_PERIOD2_bm = 1<<2             ; Period bit 2 mask
WDT_PERIOD2_bp = 2                  ; Period bit 2 position
WDT_PERIOD3_bm = 1<<3             ; Period bit 3 mask
WDT_PERIOD3_bp = 3                  ; Period bit 3 position
WDT_WINDOW_gm = 0xF0                ; Window group mask
WDT_WINDOW_gp = 4                   ; Window group position
WDT_WINDOW0_bm = 1<<4             ; Window bit 0 mask
WDT_WINDOW0_bp = 4                  ; Window bit 0 position
WDT_WINDOW1_bm = 1<<5             ; Window bit 1 mask
WDT_WINDOW1_bp = 5                  ; Window bit 1 position
WDT_WINDOW2_bm = 1<<6             ; Window bit 2 mask
WDT_WINDOW2_bp = 6                  ; Window bit 2 position
WDT_WINDOW3_bm = 1<<7             ; Window bit 3 mask
WDT_WINDOW3_bp = 7                  ; Window bit 3 position

; WDT_STATUS masks
WDT_LOCK_bm = 0x80                  ; Lock enable bit mask
WDT_LOCK_bp = 7                     ; Lock enable bit position
WDT_SYNCBUSY_bm = 0x01              ; Syncronization busy bit mask
WDT_SYNCBUSY_bp = 0                 ; Syncronization busy bit position

; Period select
WDT_PERIOD_OFF_gc = 0x00<<0       ; Watch-Dog timer Off
WDT_PERIOD_8CLK_gc = 0x01<<0      ; 8 cycles (8ms)
WDT_PERIOD_16CLK_gc = 0x02<<0     ; 16 cycles (16ms)
WDT_PERIOD_32CLK_gc = 0x03<<0     ; 32 cycles (32ms)
WDT_PERIOD_64CLK_gc = 0x04<<0     ; 64 cycles (64ms)
WDT_PERIOD_128CLK_gc = 0x05<<0    ; 128 cycles (0.128s)
WDT_PERIOD_256CLK_gc = 0x06<<0    ; 256 cycles (0.256s)
WDT_PERIOD_512CLK_gc = 0x07<<0    ; 512 cycles (0.512s)
WDT_PERIOD_1KCLK_gc = 0x08<<0     ; 1K cycles (1.0s)
WDT_PERIOD_2KCLK_gc = 0x09<<0     ; 2K cycles (2.0s)
WDT_PERIOD_4KCLK_gc = 0x0A<<0     ; 4K cycles (4.1s)
WDT_PERIOD_8KCLK_gc = 0x0B<<0     ; 8K cycles (8.2s)

; Window select
WDT_WINDOW_OFF_gc = 0x00<<4       ; Window mode off
WDT_WINDOW_8CLK_gc = 0x01<<4      ; 8 cycles (8ms)
WDT_WINDOW_16CLK_gc = 0x02<<4     ; 16 cycles (16ms)
WDT_WINDOW_32CLK_gc = 0x03<<4     ; 32 cycles (32ms)
WDT_WINDOW_64CLK_gc = 0x04<<4     ; 64 cycles (64ms)
WDT_WINDOW_128CLK_gc = 0x05<<4    ; 128 cycles (0.128s)
WDT_WINDOW_256CLK_gc = 0x06<<4    ; 256 cycles (0.256s)
WDT_WINDOW_512CLK_gc = 0x07<<4    ; 512 cycles (0.512s)
WDT_WINDOW_1KCLK_gc = 0x08<<4     ; 1K cycles (1.0s)
WDT_WINDOW_2KCLK_gc = 0x09<<4     ; 2K cycles (2.0s)
WDT_WINDOW_4KCLK_gc = 0x0A<<4     ; 4K cycles (4.1s)
WDT_WINDOW_8KCLK_gc = 0x0B<<4     ; 8K cycles (8.2s)




; ***** CPU REGISTER DEFINITIONS *****************************************
XH	.DE r27
XL	.DE r26
YH	.DE r29
YL	.DE r28
ZH	.DE r31
ZL	.DE r30


; ***** DATA MEMORY DECLARATIONS *****************************************


DATAMEM_START   =   0x0000
DATAMEM_SIZE    =   0xA000
DATAMEM_END     =   0x0000+0xA000-1

EEPROM_START    =   0x1400
EEPROM_SIZE     =   0x0080
EEPROM_END      =   0x1400+0x0080-1

FUSES_START     =   0x1280
FUSES_SIZE      =   0x000A
FUSES_END       =   0x1280+0x000A-1

INTERNAL_SRAM_START     =   0x3E00
INTERNAL_SRAM_SIZE      =   0x0200
INTERNAL_SRAM_END       =   0x3E00+0x0200-1

IO_START        =   0x0000
IO_SIZE         =   0x1100
IO_END          =   0x0000+0x1100-1

LOCKBITS_START  =   0x128A
LOCKBITS_SIZE   =   0x0001
LOCKBITS_END    =   0x128A+0x0001-1

MAPPED_PROGMEM_START    =   0x8000
MAPPED_PROGMEM_SIZE     =   0x2000
MAPPED_PROGMEM_END      =   0x8000+0x2000-1

PROD_SIGNATURES_START   =   0x1103
PROD_SIGNATURES_SIZE    =   0x003D
PROD_SIGNATURES_END     =   0x1103+0x003D-1

SIGNATURES_START    =   0x1100
SIGNATURES_SIZE     =   0x0003
SIGNATURES_END      =   0x1100+0x0003-1

USER_SIGNATURES_START   =   0x1300
USER_SIGNATURES_SIZE    =   0x0020
USER_SIGNATURES_END     =   0x1300+0x0020-1

PROGMEM_START       =   0x0000
PROGMEM_SIZE        =   0x2000
PROGMEM_END         =   0x0000+0x2000-1

PROGMEM_START       =   0x0000
PROGMEM_SIZE        =   0x2000
PROGMEM_END         =   0x0000+0x2000-1


; Legacy definitions
FLASHSTART    = PROGMEM_START/2 ; Note: Word address
FLASHEND      = PROGMEM_END/2 ; Note: Word address
IOEND         = IO_END
SRAM_START    = INTERNAL_SRAM_START
SRAM_SIZE     = INTERNAL_SRAM_SIZE
RAMEND        = INTERNAL_SRAM_END
E2END         = EEPROM_END
EEPROMEND     = EEPROM_END


; Definitions used by the assembler

; ***** INTERRUPT VECTORS, ABSOLUTE ADDRESSES ****************************

; CRCSCAN interrupt vectors
CRCSCAN_NMI_vect = 1                ; 

; BOD interrupt vectors
BOD_VLM_vect = 2                    ; 

; PORTA interrupt vectors
PORTA_PORT_vect = 3                 ; 

; PORTB interrupt vectors
PORTB_PORT_vect = 4                 ; 

; PORTC interrupt vectors
PORTC_PORT_vect = 5                 ; 

; RTC interrupt vectors
RTC_CNT_vect = 6                    ; 
RTC_PIT_vect = 7                    ; 

; TCA0 interrupt vectors
TCA0_OVF_vect = 8                   ; 
TCA0_LUNF_vect = 8                  ; 
TCA0_HUNF_vect = 9                  ; 
TCA0_LCMP0_vect = 10                ; 
TCA0_CMP0_vect = 10                 ; 
TCA0_CMP1_vect = 11                 ; 
TCA0_LCMP1_vect = 11                ; 
TCA0_CMP2_vect = 12                 ; 
TCA0_LCMP2_vect = 12                ; 

; TCB0 interrupt vectors
TCB0_INT_vect = 13                  ; 

; TCD0 interrupt vectors
TCD0_OVF_vect = 14                  ; 
TCD0_TRIG_vect = 15                 ; 

; AC0 interrupt vectors
AC0_AC_vect = 16                    ; 

; ADC0 interrupt vectors
ADC0_RESRDY_vect = 17               ; 
ADC0_WCOMP_vect = 18                ; 

; TWI0 interrupt vectors
TWI0_TWIS_vect = 19                 ; 
TWI0_TWIM_vect = 20                 ; 

; SPI0 interrupt vectors
SPI0_INT_vect = 21                  ; 

; USART0 interrupt vectors
USART0_RXC_vect = 22                ; 
USART0_DRE_vect = 23                ; 
USART0_TXC_vect = 24                ; 

; NVMCTRL interrupt vectors
NVMCTRL_EE_vect = 25                ; 



; ***** INTERRUPT VECTORS, MODULE BASES **********************************

CRCSCAN_vbase = 1
BOD_vbase = 2
PORTA_vbase = 3
PORTB_vbase = 4
PORTC_vbase = 5
RTC_vbase = 6
TCA0_vbase = 8
TCB0_vbase = 13
TCD0_vbase = 14
AC0_vbase = 16
ADC0_vbase = 17
TWI0_vbase = 19
SPI0_vbase = 21
USART0_vbase = 22
NVMCTRL_vbase = 25


; ***** INTERRUPT VECTORS, VECTOR OFFSETS ********************************

; CRCSCAN interrupt vector offsets

CRCSCAN_NMI_voffset = 0

; BOD interrupt vector offsets

BOD_VLM_voffset = 0

; PORTA interrupt vector offsets

PORTA_PORT_voffset = 0

; PORTB interrupt vector offsets

PORTB_PORT_voffset = 0

; PORTC interrupt vector offsets

PORTC_PORT_voffset = 0

; RTC interrupt vector offsets

RTC_CNT_voffset = 0
RTC_PIT_voffset = 0

; TCA0 interrupt vector offsets

TCA0_OVF_voffset = 0
TCA0_LUNF_voffset = 0
TCA0_HUNF_voffset = 0
TCA0_LCMP0_voffset = 0
TCA0_CMP0_voffset = 0
TCA0_CMP1_voffset = 0
TCA0_LCMP1_voffset = 0
TCA0_CMP2_voffset = 0
TCA0_LCMP2_voffset = 0

; TCB0 interrupt vector offsets

TCB0_INT_voffset = 0

; TCD0 interrupt vector offsets

TCD0_OVF_voffset = 0
TCD0_TRIG_voffset = 0

; AC0 interrupt vector offsets

AC0_AC_voffset = 0

; ADC0 interrupt vector offsets

ADC0_RESRDY_voffset = 0
ADC0_WCOMP_voffset = 0

; TWI0 interrupt vector offsets

TWI0_TWIS_voffset = 0
TWI0_TWIM_voffset = 0

; SPI0 interrupt vector offsets

SPI0_INT_voffset = 0

; USART0 interrupt vector offsets

USART0_RXC_voffset = 0
USART0_DRE_voffset = 0
USART0_TXC_voffset = 0

; NVMCTRL interrupt vector offsets

NVMCTRL_EE_voffset = 0



INT_VECTORS_SIZE = 26 ; size in words



; ***** END OF FILE ******************************************************



