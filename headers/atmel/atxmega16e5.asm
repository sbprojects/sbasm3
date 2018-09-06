;*************************************************************************
;* A P P L I C A T I O N   N O T E   F O R   T H E   A V R   F A M I L Y
;*
;* Number            : AVR000
;* File Name         : ATxmega16E5def.inc
;* Title             : Register/Bit Definitions for the ATxmega16E5
;* Created           : 2012-11-02 13:32
;* Version           : 1.00
;* Support e-mail    : avr@atmel.com
;* Target MCU        : ATxmega16E5
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
; device	ATxmega16E5

SIGNATURE_000	= 0x1E
SIGNATURE_001	= 0x94
SIGNATURE_002	= 0x45

                .CR     avr
                .FA     xmega
				.MS		$2800

; ***** ABSOLUTE I/O REGISTER LOCATIONS **********************************

;*************************************************************************
;** GPIO - General Purpose IO
;*************************************************************************

GPIO_GPIOR0 = 0		// General Purpose IO Register 0
GPIO_GPIOR1 = 1		// General Purpose IO Register 1
GPIO_GPIOR2 = 2		// General Purpose IO Register 2
GPIO_GPIOR3 = 3		// General Purpose IO Register 3

;*************************************************************************
;** VPORT0 - Virtual Ports
;*************************************************************************

VPORT0_DIR = 16		// I/O Port Data Direction
VPORT0_OUT = 17		// I/O Port Output
VPORT0_IN = 18		// I/O Port Input
VPORT0_INTFLAGS = 19		// Interrupt Flag Register

;*************************************************************************
;** VPORT1 - Virtual Ports
;*************************************************************************

VPORT1_DIR = 20		// I/O Port Data Direction
VPORT1_OUT = 21		// I/O Port Output
VPORT1_IN = 22		// I/O Port Input
VPORT1_INTFLAGS = 23		// Interrupt Flag Register

;*************************************************************************
;** VPORT2 - Virtual Ports
;*************************************************************************

VPORT2_DIR = 24		// I/O Port Data Direction
VPORT2_OUT = 25		// I/O Port Output
VPORT2_IN = 26		// I/O Port Input
VPORT2_INTFLAGS = 27		// Interrupt Flag Register

;*************************************************************************
;** VPORT3 - Virtual Ports
;*************************************************************************

VPORT3_DIR = 28		// I/O Port Data Direction
VPORT3_OUT = 29		// I/O Port Output
VPORT3_IN = 30		// I/O Port Input
VPORT3_INTFLAGS = 31		// Interrupt Flag Register

;*************************************************************************
;** OCD - On-Chip Debug System
;*************************************************************************

OCD_OCDR0 = 46		// OCD Register 0
OCD_OCDR1 = 47		// OCD Register 1

;*************************************************************************
;** CPU - CPU
;*************************************************************************

CPU_CCP = 52		// Configuration Change Protection
CPU_RAMPD = 56		// Ramp D
CPU_RAMPX = 57		// Ramp X
CPU_RAMPY = 58		// Ramp Y
CPU_RAMPZ = 59		// Ramp Z
CPU_EIND = 60		// Extended Indirect Jump
CPU_SPL = 61		// Stack Pointer Low
CPU_SPH = 62		// Stack Pointer High
CPU_SREG = 63		// Status Register

;*************************************************************************
;** CLK - Clock System
;*************************************************************************

CLK_CTRL = 64		// Control Register
CLK_PSCTRL = 65		// Prescaler Control Register
CLK_LOCK = 66		// Lock register
CLK_RTCCTRL = 67		// RTC Control Register

;*************************************************************************
;** PR - Clock System
;*************************************************************************

PR_PRGEN = 112		// General Power Reduction
PR_PRPA = 113		// Power Reduction Port A
PR_PRPC = 115		// Power Reduction Port C
PR_PRPD = 116		// Power Reduction Port D

;*************************************************************************
;** SLEEP - Sleep Controller
;*************************************************************************

SLEEP_CTRL = 72		// Control Register

;*************************************************************************
;** OSC - Oscillator
;*************************************************************************

OSC_CTRL = 80		// Control Register
OSC_STATUS = 81		// Status Register
OSC_XOSCCTRL = 82		// External Oscillator Control Register
OSC_XOSCFAIL = 83		// Oscillator Failure Detection Register
OSC_RC32KCAL = 84		// 32.768 kHz Internal Oscillator Calibration Register
OSC_PLLCTRL = 85		// PLL Control Register
OSC_DFLLCTRL = 86		// DFLL Control Register
OSC_RC8MCAL = 87		// Internal 8 MHz RC Oscillator Calibration Register

;*************************************************************************
;** DFLLRC32M - DFLL
;*************************************************************************

DFLLRC32M_CTRL = 96		// Control Register
DFLLRC32M_CALA = 98		// Calibration Register A
DFLLRC32M_CALB = 99		// Calibration Register B
DFLLRC32M_COMP0 = 100		// Oscillator Compare Register 0
DFLLRC32M_COMP1 = 101		// Oscillator Compare Register 1
DFLLRC32M_COMP2 = 102		// Oscillator Compare Register 2

;*************************************************************************
;** RST - Reset
;*************************************************************************

RST_STATUS = 120		// Status Register
RST_CTRL = 121		// Control Register

;*************************************************************************
;** WDT - Watch-Dog Timer
;*************************************************************************

WDT_CTRL = 128		// Control
WDT_WINCTRL = 129		// Windowed Mode Control
WDT_STATUS = 130		// Status

;*************************************************************************
;** MCU - MCU Control
;*************************************************************************

MCU_DEVID0 = 144		// Device ID byte 0
MCU_DEVID1 = 145		// Device ID byte 1
MCU_DEVID2 = 146		// Device ID byte 2
MCU_REVID = 147		// Revision ID
MCU_ANAINIT = 151		// Analog Startup Delay
MCU_EVSYSLOCK = 152		// Event System Lock
MCU_WEXLOCK = 153		// WEX Lock
MCU_FAULTLOCK = 154		// FAULT Lock

;*************************************************************************
;** PMIC - Programmable Multi-level Interrupt Controller
;*************************************************************************

PMIC_STATUS = 160		// Status Register
PMIC_INTPRI = 161		// Interrupt Priority
PMIC_CTRL = 162		// Control Register

;*************************************************************************
;** PORTCFG - Port Configuration
;*************************************************************************

PORTCFG_MPCMASK = 176		// Multi-pin Configuration Mask
PORTCFG_CLKOUT = 180		// Clock Out Register
PORTCFG_ACEVOUT = 182		// Analog Comparator and Event Out Register
PORTCFG_SRLCTRL  = 183		// Slew Rate Limit Control Register

;*************************************************************************
;** CRC - Cyclic Redundancy Checker
;*************************************************************************

CRC_CTRL = 208		// Control Register
CRC_STATUS = 209		// Status Register
CRC_DATAIN = 211		// Data Input
CRC_CHECKSUM0 = 212		// Checksum byte 0
CRC_CHECKSUM1 = 213		// Checksum byte 1
CRC_CHECKSUM2 = 214		// Checksum byte 2
CRC_CHECKSUM3 = 215		// Checksum byte 3

;*************************************************************************
;** EDMA - Enhanced DMA Controller
;*************************************************************************

EDMA_CTRL = 256		// Control
EDMA_INTFLAGS = 259		// Transfer Interrupt Status
EDMA_STATUS = 260		// Status
EDMA_TEMP = 262		// Temporary Register For 16-bit Access
EDMA_CH0_CTRLA = 272		// Channel Control A
EDMA_CH0_CTRLB = 273		// Channel Control
EDMA_CH0_ADDRCTRL = 274		// Memory Address Control for Peripheral Ch., or Source Address Control for Standard Ch.
EDMA_CH0_DESTADDRCTRL = 275		// Destination Address Control for Standard Channels Only.
EDMA_CH0_TRIGSRC = 276		// Channel Trigger Source
EDMA_CH0_TRFCNTL = 278		// Channel Block Transfer Count for Peripheral Ch., or Channel Block Transfer Count Low for Standard Ch.
EDMA_CH0_TRFCNTH = 279		// Channel Block Transfer Count High for Standard Channels Only
EDMA_CH0_ADDRL = 280		// Channel Memory Address Low for Peripheral Ch., or Channel Source Address Low for Standard Ch.
EDMA_CH0_ADDRH = 281		// Channel Memory Address High for Peripheral Ch., or Channel Source Address High for Standard Ch.
EDMA_CH0_DESTADDRL = 284		// Channel Destination Address High for Standard Channels Only.
EDMA_CH0_DESTADDRH = 285		// Channel Destination Address High for Standard Channels Only.
EDMA_CH1_CTRLA = 288		// Channel Control A
EDMA_CH1_CTRLB = 289		// Channel Control
EDMA_CH1_ADDRCTRL = 290		// Memory Address Control for Peripheral Ch., or Source Address Control for Standard Ch.
EDMA_CH1_DESTADDRCTRL = 291		// Destination Address Control for Standard Channels Only.
EDMA_CH1_TRIGSRC = 292		// Channel Trigger Source
EDMA_CH1_TRFCNTL = 294		// Channel Block Transfer Count for Peripheral Ch., or Channel Block Transfer Count Low for Standard Ch.
EDMA_CH1_TRFCNTH = 295		// Channel Block Transfer Count High for Standard Channels Only
EDMA_CH1_ADDRL = 296		// Channel Memory Address Low for Peripheral Ch., or Channel Source Address Low for Standard Ch.
EDMA_CH1_ADDRH = 297		// Channel Memory Address High for Peripheral Ch., or Channel Source Address High for Standard Ch.
EDMA_CH1_DESTADDRL = 300		// Channel Destination Address High for Standard Channels Only.
EDMA_CH1_DESTADDRH = 301		// Channel Destination Address High for Standard Channels Only.
EDMA_CH2_CTRLA = 304		// Channel Control A
EDMA_CH2_CTRLB = 305		// Channel Control
EDMA_CH2_ADDRCTRL = 306		// Memory Address Control for Peripheral Ch., or Source Address Control for Standard Ch.
EDMA_CH2_DESTADDRCTRL = 307		// Destination Address Control for Standard Channels Only.
EDMA_CH2_TRIGSRC = 308		// Channel Trigger Source
EDMA_CH2_TRFCNTL = 310		// Channel Block Transfer Count for Peripheral Ch., or Channel Block Transfer Count Low for Standard Ch.
EDMA_CH2_TRFCNTH = 311		// Channel Block Transfer Count High for Standard Channels Only
EDMA_CH2_ADDRL = 312		// Channel Memory Address Low for Peripheral Ch., or Channel Source Address Low for Standard Ch.
EDMA_CH2_ADDRH = 313		// Channel Memory Address High for Peripheral Ch., or Channel Source Address High for Standard Ch.
EDMA_CH2_DESTADDRL = 316		// Channel Destination Address High for Standard Channels Only.
EDMA_CH2_DESTADDRH = 317		// Channel Destination Address High for Standard Channels Only.
EDMA_CH3_CTRLA = 320		// Channel Control A
EDMA_CH3_CTRLB = 321		// Channel Control
EDMA_CH3_ADDRCTRL = 322		// Memory Address Control for Peripheral Ch., or Source Address Control for Standard Ch.
EDMA_CH3_DESTADDRCTRL = 323		// Destination Address Control for Standard Channels Only.
EDMA_CH3_TRIGSRC = 324		// Channel Trigger Source
EDMA_CH3_TRFCNTL = 326		// Channel Block Transfer Count for Peripheral Ch., or Channel Block Transfer Count Low for Standard Ch.
EDMA_CH3_TRFCNTH = 327		// Channel Block Transfer Count High for Standard Channels Only
EDMA_CH3_ADDRL = 328		// Channel Memory Address Low for Peripheral Ch., or Channel Source Address Low for Standard Ch.
EDMA_CH3_ADDRH = 329		// Channel Memory Address High for Peripheral Ch., or Channel Source Address High for Standard Ch.
EDMA_CH3_DESTADDRL = 332		// Channel Destination Address High for Standard Channels Only.
EDMA_CH3_DESTADDRH = 333		// Channel Destination Address High for Standard Channels Only.

;*************************************************************************
;** EVSYS - Event System
;*************************************************************************

EVSYS_CH0MUX = 384		// Event Channel 0 Multiplexer
EVSYS_CH1MUX = 385		// Event Channel 1 Multiplexer
EVSYS_CH2MUX = 386		// Event Channel 2 Multiplexer
EVSYS_CH3MUX = 387		// Event Channel 3 Multiplexer
EVSYS_CH4MUX = 388		// Event Channel 4 Multiplexer
EVSYS_CH5MUX = 389		// Event Channel 5 Multiplexer
EVSYS_CH6MUX = 390		// Event Channel 6 Multiplexer
EVSYS_CH7MUX = 391		// Event Channel 7 Multiplexer
EVSYS_CH0CTRL = 392		// Channel 0 Control Register
EVSYS_CH1CTRL = 393		// Channel 1 Control Register
EVSYS_CH2CTRL = 394		// Channel 2 Control Register
EVSYS_CH3CTRL = 395		// Channel 3 Control Register
EVSYS_CH4CTRL = 396		// Channel 4 Control Register
EVSYS_CH5CTRL = 397		// Channel 5 Control Register
EVSYS_CH6CTRL = 398		// Channel 6 Control Register
EVSYS_CH7CTRL = 399		// Channel 7 Control Register
EVSYS_STROBE = 400		// Event Strobe
EVSYS_DATA = 401		// Event Data
EVSYS_DFCTRL = 402		// Digital Filter Control Register

;*************************************************************************
;** NVM - Non Volatile Memory Controller
;*************************************************************************

NVM_ADDR0 = 448		// Address Register 0
NVM_ADDR1 = 449		// Address Register 1
NVM_ADDR2 = 450		// Address Register 2
NVM_DATA0 = 452		// Data Register 0
NVM_DATA1 = 453		// Data Register 1
NVM_DATA2 = 454		// Data Register 2
NVM_CMD = 458		// Command
NVM_CTRLA = 459		// Control Register A
NVM_CTRLB = 460		// Control Register B
NVM_INTCTRL = 461		// Interrupt Control
NVM_STATUS = 463		// Status
NVM_LOCKBITS = 464		// Lock Bits

;*************************************************************************
;** ADCA - Analog/Digital Converter
;*************************************************************************

ADCA_CTRLA = 512		// Control Register A
ADCA_CTRLB = 513		// Control Register B
ADCA_REFCTRL = 514		// Reference Control
ADCA_EVCTRL = 515		// Event Control
ADCA_PRESCALER = 516		// Clock Prescaler
ADCA_INTFLAGS = 518		// Interrupt Flags
ADCA_TEMP = 519		// Temporary Register
ADCA_SAMPCTRL = 520		// ADC Sampling Time Control Register
ADCA_CAL = 524		// Calibration Value
ADCA_CH0RES = 528		// Channel 0 Result
ADCA_CMP = 536		// Compare Value
ADCA_CH0_CTRL = 544		// Control Register
ADCA_CH0_MUXCTRL = 545		// MUX Control
ADCA_CH0_INTCTRL = 546		// Channel Interrupt Control Register
ADCA_CH0_INTFLAGS = 547		// Interrupt Flags
ADCA_CH0_RES = 548		// Channel Result
ADCA_CH0_SCAN = 550		// Input Channel Scan
ADCA_CH0_CORRCTRL = 551		// Correction Control Register
ADCA_CH0_OFFSETCORR0 = 552		// Offset Correction Register 0
ADCA_CH0_OFFSETCORR1 = 553		// Offset Correction Register 1
ADCA_CH0_GAINCORR0 = 554		// Gain Correction Register 0
ADCA_CH0_GAINCORR1 = 555		// Gain Correction Register 1
ADCA_CH0_AVGCTRL = 556		// Average Control Register

;*************************************************************************
;** DACA - Digital/Analog Converter
;*************************************************************************

DACA_CTRLA = 768		// Control Register A
DACA_CTRLB = 769		// Control Register B
DACA_CTRLC = 770		// Control Register C
DACA_EVCTRL = 771		// Event Input Control
DACA_TIMCTRL = 772		// Timing Control
DACA_STATUS = 773		// Status
DACA_CH0GAINCAL = 776		// Gain Calibration
DACA_CH0OFFSETCAL = 777		// Offset Calibration
DACA_CH1GAINCAL = 778		// Gain Calibration
DACA_CH1OFFSETCAL = 779		// Offset Calibration
DACA_CH0DATA = 792		// Channel 0 Data
DACA_CH1DATA = 794		// Channel 1 Data

;*************************************************************************
;** ACA - Analog Comparator
;*************************************************************************

ACA_AC0CTRL = 896		// Analog Comparator 0 Control
ACA_AC1CTRL = 897		// Analog Comparator 1 Control
ACA_AC0MUXCTRL = 898		// Analog Comparator 0 MUX Control
ACA_AC1MUXCTRL = 899		// Analog Comparator 1 MUX Control
ACA_CTRLA = 900		// Control Register A
ACA_CTRLB = 901		// Control Register B
ACA_WINCTRL = 902		// Window Mode Control
ACA_STATUS = 903		// Status
ACA_CURRCTRL = 904		// Current Source Control Register
ACA_CURRCALIB = 905		// Current Source Calibration Register

;*************************************************************************
;** RTC - Real-Time Clounter
;*************************************************************************

RTC_CTRL = 1024		// Control Register
RTC_STATUS = 1025		// Status Register
RTC_INTCTRL = 1026		// Interrupt Control Register
RTC_INTFLAGS = 1027		// Interrupt Flags
RTC_TEMP = 1028		// Temporary register
RTC_CALIB = 1030		// Calibration Register
RTC_CNT = 1032		// Count Register
RTC_PER = 1034		// Period Register
RTC_COMP = 1036		// Compare Register

;*************************************************************************
;** XCL - XMEGA Custom Logic
;*************************************************************************

XCL_CTRLA = 1120		// Control Register A
XCL_CTRLB = 1121		// Control Register B
XCL_CTRLC = 1122		// Control Register C
XCL_CTRLD = 1123		// Control Register D
XCL_CTRLE = 1124		// Control Register E
XCL_CTRLF = 1125		// Control Register F
XCL_CTRLG = 1126		// Control Register G
XCL_INTCTRL = 1127		// Interrupt Control Register
XCL_INTFLAGS = 1128		// Interrupt Flag Register
XCL_PLC = 1129		// Peripheral Lenght Control Register
XCL_CNTL = 1130		// Counter Register Low
XCL_CNTH = 1131		// Counter Register High
XCL_CMPL = 1132		// Compare Register Low
XCL_CMPH = 1133		// Compare Register High
XCL_PERCAPTL = 1134		// Period or Capture Register Low
XCL_PERCAPTH = 1135		// Period or Capture Register High

;*************************************************************************
;** TWIC - Two-Wire Interface
;*************************************************************************

TWIC_CTRL = 1152		// TWI Common Control Register
TWIC_MASTER_CTRLA = 1153		// Control Register A
TWIC_MASTER_CTRLB = 1154		// Control Register B
TWIC_MASTER_CTRLC = 1155		// Control Register C
TWIC_MASTER_STATUS = 1156		// Status Register
TWIC_MASTER_BAUD = 1157		// Baurd Rate Control Register
TWIC_MASTER_ADDR = 1158		// Address Register
TWIC_MASTER_DATA = 1159		// Data Register
TWIC_SLAVE_CTRLA = 1160		// Control Register A
TWIC_SLAVE_CTRLB = 1161		// Control Register B
TWIC_SLAVE_STATUS = 1162		// Status Register
TWIC_SLAVE_ADDR = 1163		// Address Register
TWIC_SLAVE_DATA = 1164		// Data Register
TWIC_SLAVE_ADDRMASK = 1165		// Address Mask Register

;*************************************************************************
;** PORTA - Port Configuration
;*************************************************************************

PORTA_DIR = 1536		// I/O Port Data Direction
PORTA_DIRSET = 1537		// I/O Port Data Direction Set
PORTA_DIRCLR = 1538		// I/O Port Data Direction Clear
PORTA_DIRTGL = 1539		// I/O Port Data Direction Toggle
PORTA_OUT = 1540		// I/O Port Output
PORTA_OUTSET = 1541		// I/O Port Output Set
PORTA_OUTCLR = 1542		// I/O Port Output Clear
PORTA_OUTTGL = 1543		// I/O Port Output Toggle
PORTA_IN = 1544		// I/O port Input
PORTA_INTCTRL = 1545		// Interrupt Control Register
PORTA_INTMASK = 1546		// Port Interrupt Mask
PORTA_INTFLAGS = 1548		// Interrupt Flag Register
PORTA_REMAP = 1550		// Pin Remap Register
PORTA_PIN0CTRL = 1552		// Pin 0 Control Register
PORTA_PIN1CTRL = 1553		// Pin 1 Control Register
PORTA_PIN2CTRL = 1554		// Pin 2 Control Register
PORTA_PIN3CTRL = 1555		// Pin 3 Control Register
PORTA_PIN4CTRL = 1556		// Pin 4 Control Register
PORTA_PIN5CTRL = 1557		// Pin 5 Control Register
PORTA_PIN6CTRL = 1558		// Pin 6 Control Register
PORTA_PIN7CTRL = 1559		// Pin 7 Control Register

;*************************************************************************
;** PORTC - Port Configuration
;*************************************************************************

PORTC_DIR = 1600		// I/O Port Data Direction
PORTC_DIRSET = 1601		// I/O Port Data Direction Set
PORTC_DIRCLR = 1602		// I/O Port Data Direction Clear
PORTC_DIRTGL = 1603		// I/O Port Data Direction Toggle
PORTC_OUT = 1604		// I/O Port Output
PORTC_OUTSET = 1605		// I/O Port Output Set
PORTC_OUTCLR = 1606		// I/O Port Output Clear
PORTC_OUTTGL = 1607		// I/O Port Output Toggle
PORTC_IN = 1608		// I/O port Input
PORTC_INTCTRL = 1609		// Interrupt Control Register
PORTC_INTMASK = 1610		// Port Interrupt Mask
PORTC_INTFLAGS = 1612		// Interrupt Flag Register
PORTC_REMAP = 1614		// Pin Remap Register
PORTC_PIN0CTRL = 1616		// Pin 0 Control Register
PORTC_PIN1CTRL = 1617		// Pin 1 Control Register
PORTC_PIN2CTRL = 1618		// Pin 2 Control Register
PORTC_PIN3CTRL = 1619		// Pin 3 Control Register
PORTC_PIN4CTRL = 1620		// Pin 4 Control Register
PORTC_PIN5CTRL = 1621		// Pin 5 Control Register
PORTC_PIN6CTRL = 1622		// Pin 6 Control Register
PORTC_PIN7CTRL = 1623		// Pin 7 Control Register

;*************************************************************************
;** PORTD - Port Configuration
;*************************************************************************

PORTD_DIR = 1632		// I/O Port Data Direction
PORTD_DIRSET = 1633		// I/O Port Data Direction Set
PORTD_DIRCLR = 1634		// I/O Port Data Direction Clear
PORTD_DIRTGL = 1635		// I/O Port Data Direction Toggle
PORTD_OUT = 1636		// I/O Port Output
PORTD_OUTSET = 1637		// I/O Port Output Set
PORTD_OUTCLR = 1638		// I/O Port Output Clear
PORTD_OUTTGL = 1639		// I/O Port Output Toggle
PORTD_IN = 1640		// I/O port Input
PORTD_INTCTRL = 1641		// Interrupt Control Register
PORTD_INTMASK = 1642		// Port Interrupt Mask
PORTD_INTFLAGS = 1644		// Interrupt Flag Register
PORTD_REMAP = 1646		// Pin Remap Register
PORTD_PIN0CTRL = 1648		// Pin 0 Control Register
PORTD_PIN1CTRL = 1649		// Pin 1 Control Register
PORTD_PIN2CTRL = 1650		// Pin 2 Control Register
PORTD_PIN3CTRL = 1651		// Pin 3 Control Register
PORTD_PIN4CTRL = 1652		// Pin 4 Control Register
PORTD_PIN5CTRL = 1653		// Pin 5 Control Register
PORTD_PIN6CTRL = 1654		// Pin 6 Control Register
PORTD_PIN7CTRL = 1655		// Pin 7 Control Register

;*************************************************************************
;** PORTR - Port Configuration
;*************************************************************************

PORTR_DIR = 2016		// I/O Port Data Direction
PORTR_DIRSET = 2017		// I/O Port Data Direction Set
PORTR_DIRCLR = 2018		// I/O Port Data Direction Clear
PORTR_DIRTGL = 2019		// I/O Port Data Direction Toggle
PORTR_OUT = 2020		// I/O Port Output
PORTR_OUTSET = 2021		// I/O Port Output Set
PORTR_OUTCLR = 2022		// I/O Port Output Clear
PORTR_OUTTGL = 2023		// I/O Port Output Toggle
PORTR_IN = 2024		// I/O port Input
PORTR_INTCTRL = 2025		// Interrupt Control Register
PORTR_INTMASK = 2026		// Port Interrupt Mask
PORTR_INTFLAGS = 2028		// Interrupt Flag Register
PORTR_REMAP = 2030		// Pin Remap Register
PORTR_PIN0CTRL = 2032		// Pin 0 Control Register
PORTR_PIN1CTRL = 2033		// Pin 1 Control Register
PORTR_PIN2CTRL = 2034		// Pin 2 Control Register
PORTR_PIN3CTRL = 2035		// Pin 3 Control Register
PORTR_PIN4CTRL = 2036		// Pin 4 Control Register
PORTR_PIN5CTRL = 2037		// Pin 5 Control Register
PORTR_PIN6CTRL = 2038		// Pin 6 Control Register
PORTR_PIN7CTRL = 2039		// Pin 7 Control Register

;*************************************************************************
;** TCC4 - 16-bit Timer/Counter With PWM
;*************************************************************************

TCC4_CTRLA = 2048		// Control  Register A
TCC4_CTRLB = 2049		// Control Register B
TCC4_CTRLC = 2050		// Control register C
TCC4_CTRLD = 2051		// Control Register D
TCC4_CTRLE = 2052		// Control Register E
TCC4_CTRLF = 2053		// Control Register F
TCC4_INTCTRLA = 2054		// Interrupt Control Register A
TCC4_INTCTRLB = 2055		// Interrupt Control Register B
TCC4_CTRLGCLR = 2056		// Control Register G Clear
TCC4_CTRLGSET = 2057		// Control Register G Set
TCC4_CTRLHCLR = 2058		// Control Register H Clear
TCC4_CTRLHSET = 2059		// Control Register H Set
TCC4_INTFLAGS = 2060		// Interrupt Flag Register
TCC4_TEMP = 2063		// Temporary Register For 16-bit Access
TCC4_CNT = 2080		// Count
TCC4_PER = 2086		// Period
TCC4_CCA = 2088		// Compare or Capture A
TCC4_CCB = 2090		// Compare or Capture B
TCC4_CCC = 2092		// Compare or Capture C
TCC4_CCD = 2094		// Compare or Capture D
TCC4_PERBUF = 2102		// Period Buffer
TCC4_CCABUF = 2104		// Compare Or Capture A Buffer
TCC4_CCBBUF = 2106		// Compare Or Capture B Buffer
TCC4_CCCBUF = 2108		// Compare Or Capture C Buffer
TCC4_CCDBUF = 2110		// Compare Or Capture D Buffer

;*************************************************************************
;** TCC5 - 16-bit Timer/Counter With PWM
;*************************************************************************

TCC5_CTRLA = 2112		// Control  Register A
TCC5_CTRLB = 2113		// Control Register B
TCC5_CTRLC = 2114		// Control register C
TCC5_CTRLD = 2115		// Control Register D
TCC5_CTRLE = 2116		// Control Register E
TCC5_CTRLF = 2117		// Control Register F
TCC5_INTCTRLA = 2118		// Interrupt Control Register A
TCC5_INTCTRLB = 2119		// Interrupt Control Register B
TCC5_CTRLGCLR = 2120		// Control Register G Clear
TCC5_CTRLGSET = 2121		// Control Register G Set
TCC5_CTRLHCLR = 2122		// Control Register H Clear
TCC5_CTRLHSET = 2123		// Control Register H Set
TCC5_INTFLAGS = 2124		// Interrupt Flag Register
TCC5_TEMP = 2127		// Temporary Register For 16-bit Access
TCC5_CNT = 2144		// Count
TCC5_PER = 2150		// Period
TCC5_CCA = 2152		// Compare or Capture A
TCC5_CCB = 2154		// Compare or Capture B
TCC5_PERBUF = 2166		// Period Buffer
TCC5_CCABUF = 2168		// Compare Or Capture A Buffer
TCC5_CCBBUF = 2170		// Compare Or Capture B Buffer

;*************************************************************************
;** TCD5 - 16-bit Timer/Counter With PWM
;*************************************************************************

TCD5_CTRLA = 2368		// Control  Register A
TCD5_CTRLB = 2369		// Control Register B
TCD5_CTRLC = 2370		// Control register C
TCD5_CTRLD = 2371		// Control Register D
TCD5_CTRLE = 2372		// Control Register E
TCD5_CTRLF = 2373		// Control Register F
TCD5_INTCTRLA = 2374		// Interrupt Control Register A
TCD5_INTCTRLB = 2375		// Interrupt Control Register B
TCD5_CTRLGCLR = 2376		// Control Register G Clear
TCD5_CTRLGSET = 2377		// Control Register G Set
TCD5_CTRLHCLR = 2378		// Control Register H Clear
TCD5_CTRLHSET = 2379		// Control Register H Set
TCD5_INTFLAGS = 2380		// Interrupt Flag Register
TCD5_TEMP = 2383		// Temporary Register For 16-bit Access
TCD5_CNT = 2400		// Count
TCD5_PER = 2406		// Period
TCD5_CCA = 2408		// Compare or Capture A
TCD5_CCB = 2410		// Compare or Capture B
TCD5_PERBUF = 2422		// Period Buffer
TCD5_CCABUF = 2424		// Compare Or Capture A Buffer
TCD5_CCBBUF = 2426		// Compare Or Capture B Buffer

;*************************************************************************
;** FAULTC4 - Fault Extension
;*************************************************************************

FAULTC4_CTRLA = 2176		// Control A Register
FAULTC4_CTRLB = 2177		// Control B Register
FAULTC4_CTRLC = 2178		// Control C Register
FAULTC4_CTRLD = 2179		// Control D Register
FAULTC4_CTRLE = 2180		// Control E Register
FAULTC4_STATUS = 2181		// Status Register
FAULTC4_CTRLGCLR = 2182		// Control Register G Clear
FAULTC4_CTRLGSET = 2183		// Control Register G set

;*************************************************************************
;** FAULTC5 - Fault Extension
;*************************************************************************

FAULTC5_CTRLA = 2192		// Control A Register
FAULTC5_CTRLB = 2193		// Control B Register
FAULTC5_CTRLC = 2194		// Control C Register
FAULTC5_CTRLD = 2195		// Control D Register
FAULTC5_CTRLE = 2196		// Control E Register
FAULTC5_STATUS = 2197		// Status Register
FAULTC5_CTRLGCLR = 2198		// Control Register G Clear
FAULTC5_CTRLGSET = 2199		// Control Register G set

;*************************************************************************
;** WEXC - Waveform Extension
;*************************************************************************

WEXC_CTRL = 2208		// Control Register
WEXC_DTBOTH = 2209		// Dead-time Concurrent Write to Both Sides Register
WEXC_DTLS = 2210		// Dead-time Low Side Register
WEXC_DTHS = 2211		// Dead-time High Side Register
WEXC_STATUSCLR = 2212		// Status Clear Register
WEXC_STATUSSET = 2213		// Status Set Register
WEXC_SWAP = 2214		// Swap Register
WEXC_PGO = 2215		// Pattern Generation Override Register
WEXC_PGV = 2216		// Pattern Generation Value Register
WEXC_SWAPBUF = 2218		// Dead Time Low Side Buffer
WEXC_PGOBUF = 2219		// Pattern Generation Overwrite Buffer Register
WEXC_PGVBUF = 2220		// Pattern Generation Value Buffer Register
WEXC_OUTOVDIS = 2223		// Output Override Disable Register

;*************************************************************************
;** HIRESC - High-Resolution Extension
;*************************************************************************

HIRESC_CTRLA = 2224		// Control Register A

;*************************************************************************
;** USARTC0 - Universal Asynchronous Receiver-Transmitter
;*************************************************************************

USARTC0_DATA = 2240		// Data Register
USARTC0_STATUS = 2241		// Status Register
USARTC0_CTRLA = 2242		// Control Register A
USARTC0_CTRLB = 2243		// Control Register B
USARTC0_CTRLC = 2244		// Control Register C
USARTC0_CTRLD = 2245		// Control Register D
USARTC0_BAUDCTRLA = 2246		// Baud Rate Control Register A
USARTC0_BAUDCTRLB = 2247		// Baud Rate Control Register B

;*************************************************************************
;** USARTD0 - Universal Asynchronous Receiver-Transmitter
;*************************************************************************

USARTD0_DATA = 2496		// Data Register
USARTD0_STATUS = 2497		// Status Register
USARTD0_CTRLA = 2498		// Control Register A
USARTD0_CTRLB = 2499		// Control Register B
USARTD0_CTRLC = 2500		// Control Register C
USARTD0_CTRLD = 2501		// Control Register D
USARTD0_BAUDCTRLA = 2502		// Baud Rate Control Register A
USARTD0_BAUDCTRLB = 2503		// Baud Rate Control Register B

;*************************************************************************
;** SPIC - Serial Peripheral Interface
;*************************************************************************

SPIC_CTRL = 2272		// Control Register
SPIC_INTCTRL = 2273		// Interrupt Control Register
SPIC_STATUS = 2274		// Status Register
SPIC_DATA = 2275		// Data Register
SPIC_CTRLB = 2276		// Control Register B

;*************************************************************************
;** IRCOM - IR Communication Module
;*************************************************************************

IRCOM_CTRL = 2296		// Control Register
IRCOM_TXPLCTRL = 2297		// IrDA Transmitter Pulse Length Control Register
IRCOM_RXPLCTRL = 2298		// IrDA Receiver Pulse Length Control Register


; ***** ALL MODULE BASE ADRESSES *****************************************

GPIO_base = 0x0000		// General Purpose IO
VPORT0_base = 0x0010		// Virtual Ports
VPORT1_base = 0x0014		// Virtual Ports
VPORT2_base = 0x0018		// Virtual Ports
VPORT3_base = 0x001C		// Virtual Ports
OCD_base = 0x002E		// On-Chip Debug System
CPU_base = 0x0030		// CPU
CLK_base = 0x0040		// Clock System
PR_base = 0x0070		// Clock System
SLEEP_base = 0x0048		// Sleep Controller
OSC_base = 0x0050		// Oscillator
DFLLRC32M_base = 0x0060		// DFLL
RST_base = 0x0078		// Reset
WDT_base = 0x0080		// Watch-Dog Timer
MCU_base = 0x0090		// MCU Control
PMIC_base = 0x00A0		// Programmable Multi-level Interrupt Controller
PORTCFG_base = 0x00B0		// Port Configuration
CRC_base = 0x00D0		// Cyclic Redundancy Checker
EDMA_base = 0x0100		// Enhanced DMA Controller
EVSYS_base = 0x0180		// Event System
NVM_base = 0x01C0		// Non Volatile Memory Controller
ADCA_base = 0x0200		// Analog/Digital Converter
DACA_base = 0x0300		// Digital/Analog Converter
ACA_base = 0x0380		// Analog Comparator
RTC_base = 0x0400		// Real-Time Clounter
XCL_base = 0x0460		// XMEGA Custom Logic
TWIC_base = 0x0480		// Two-Wire Interface
PORTA_base = 0x0600		// Port Configuration
PORTC_base = 0x0640		// Port Configuration
PORTD_base = 0x0660		// Port Configuration
PORTR_base = 0x07E0		// Port Configuration
TCC4_base = 0x0800		// 16-bit Timer/Counter With PWM
TCC5_base = 0x0840		// 16-bit Timer/Counter With PWM
TCD5_base = 0x0940		// 16-bit Timer/Counter With PWM
FAULTC4_base = 0x0880		// Fault Extension
FAULTC5_base = 0x0890		// Fault Extension
WEXC_base = 0x08A0		// Waveform Extension
HIRESC_base = 0x08B0		// High-Resolution Extension
USARTC0_base = 0x08C0		// Universal Asynchronous Receiver-Transmitter
USARTD0_base = 0x09C0		// Universal Asynchronous Receiver-Transmitter
SPIC_base = 0x08E0		// Serial Peripheral Interface
IRCOM_base = 0x08F8		// IR Communication Module


; ***** IO REGISTER OFFSETS **********************************************


;*************************************************************************
;** GPIO - General Purpose IO
;*************************************************************************
GPIO_GPIOR0_offset = 0x00		// General Purpose IO Register 0
GPIO_GPIOR1_offset = 0x01		// General Purpose IO Register 1
GPIO_GPIOR2_offset = 0x02		// General Purpose IO Register 2
GPIO_GPIOR3_offset = 0x03		// General Purpose IO Register 3

;*************************************************************************
;** VPORT - Virtual Ports
;*************************************************************************
VPORT_DIR_offset = 0x00		// I/O Port Data Direction
VPORT_OUT_offset = 0x01		// I/O Port Output
VPORT_IN_offset = 0x02		// I/O Port Input
VPORT_INTFLAGS_offset = 0x03		// Interrupt Flag Register

;*************************************************************************
;** XOCD - On-Chip Debug System
;*************************************************************************
OCD_OCDR0_offset = 0x00		// OCD Register 0
OCD_OCDR1_offset = 0x01		// OCD Register 1

;*************************************************************************
;** CPU - CPU
;*************************************************************************
CPU_CCP_offset = 0x04		// Configuration Change Protection
CPU_RAMPD_offset = 0x08		// Ramp D
CPU_RAMPX_offset = 0x09		// Ramp X
CPU_RAMPY_offset = 0x0A		// Ramp Y
CPU_RAMPZ_offset = 0x0B		// Ramp Z
CPU_EIND_offset = 0x0C		// Extended Indirect Jump
CPU_SPL_offset = 0x0D		// Stack Pointer Low
CPU_SPH_offset = 0x0E		// Stack Pointer High
CPU_SREG_offset = 0x0F		// Status Register

;*************************************************************************
;** CLK - Clock System
;*************************************************************************
CLK_CTRL_offset = 0x00		// Control Register
CLK_PSCTRL_offset = 0x01		// Prescaler Control Register
CLK_LOCK_offset = 0x02		// Lock register
CLK_RTCCTRL_offset = 0x03		// RTC Control Register
PR_PRGEN_offset = 0x00		// General Power Reduction
PR_PRPA_offset = 0x01		// Power Reduction Port A
PR_PRPC_offset = 0x03		// Power Reduction Port C
PR_PRPD_offset = 0x04		// Power Reduction Port D

;*************************************************************************
;** SLEEP - Sleep Controller
;*************************************************************************
SLEEP_CTRL_offset = 0x00		// Control Register

;*************************************************************************
;** OSC - Oscillator
;*************************************************************************
OSC_CTRL_offset = 0x00		// Control Register
OSC_STATUS_offset = 0x01		// Status Register
OSC_XOSCCTRL_offset = 0x02		// External Oscillator Control Register
OSC_XOSCFAIL_offset = 0x03		// Oscillator Failure Detection Register
OSC_RC32KCAL_offset = 0x04		// 32.768 kHz Internal Oscillator Calibration Register
OSC_PLLCTRL_offset = 0x05		// PLL Control Register
OSC_DFLLCTRL_offset = 0x06		// DFLL Control Register
OSC_RC8MCAL_offset = 0x07		// Internal 8 MHz RC Oscillator Calibration Register

;*************************************************************************
;** DFLL - DFLL
;*************************************************************************
DFLL_CTRL_offset = 0x00		// Control Register
DFLL_CALA_offset = 0x02		// Calibration Register A
DFLL_CALB_offset = 0x03		// Calibration Register B
DFLL_COMP0_offset = 0x04		// Oscillator Compare Register 0
DFLL_COMP1_offset = 0x05		// Oscillator Compare Register 1
DFLL_COMP2_offset = 0x06		// Oscillator Compare Register 2

;*************************************************************************
;** RST - Reset
;*************************************************************************
RST_STATUS_offset = 0x00		// Status Register
RST_CTRL_offset = 0x01		// Control Register

;*************************************************************************
;** WDT - Watch-Dog Timer
;*************************************************************************
WDT_CTRL_offset = 0x00		// Control
WDT_WINCTRL_offset = 0x01		// Windowed Mode Control
WDT_STATUS_offset = 0x02		// Status

;*************************************************************************
;** MCU - MCU Control
;*************************************************************************
MCU_DEVID0_offset = 0x00		// Device ID byte 0
MCU_DEVID1_offset = 0x01		// Device ID byte 1
MCU_DEVID2_offset = 0x02		// Device ID byte 2
MCU_REVID_offset = 0x03		// Revision ID
MCU_ANAINIT_offset = 0x07		// Analog Startup Delay
MCU_EVSYSLOCK_offset = 0x08		// Event System Lock
MCU_WEXLOCK_offset = 0x09		// WEX Lock
MCU_FAULTLOCK_offset = 0x0A		// FAULT Lock

;*************************************************************************
;** PMIC - Programmable Multi-level Interrupt Controller
;*************************************************************************
PMIC_STATUS_offset = 0x00		// Status Register
PMIC_INTPRI_offset = 0x01		// Interrupt Priority
PMIC_CTRL_offset = 0x02		// Control Register

;*************************************************************************
;** PORTCFG - Port Configuration
;*************************************************************************
PORTCFG_MPCMASK_offset = 0x00		// Multi-pin Configuration Mask
PORTCFG_CLKOUT_offset = 0x04		// Clock Out Register
PORTCFG_ACEVOUT_offset = 0x06		// Analog Comparator and Event Out Register
PORTCFG_SRLCTRL_offset = 0x07		// Slew Rate Limit Control Register

;*************************************************************************
;** CRC - Cyclic Redundancy Checker
;*************************************************************************
CRC_CTRL_offset = 0x00		// Control Register
CRC_STATUS_offset = 0x01		// Status Register
CRC_DATAIN_offset = 0x03		// Data Input
CRC_CHECKSUM0_offset = 0x04		// Checksum byte 0
CRC_CHECKSUM1_offset = 0x05		// Checksum byte 1
CRC_CHECKSUM2_offset = 0x06		// Checksum byte 2
CRC_CHECKSUM3_offset = 0x07		// Checksum byte 3

;*************************************************************************
;** EDMA - Enhanced DMA Controller
;*************************************************************************
EDMA_CTRL_offset = 0x00		// Control
EDMA_INTFLAGS_offset = 0x03		// Transfer Interrupt Status
EDMA_STATUS_offset = 0x04		// Status
EDMA_TEMP_offset = 0x06		// Temporary Register For 16-bit Access
EDMA_CH0_offset = 0x10		// EDMA Channel 0
EDMA_CH1_offset = 0x20		// EDMA Channel 1
EDMA_CH2_offset = 0x30		// EDMA Channel 2
EDMA_CH3_offset = 0x40		// EDMA Channel 3
EDMA_CH_CTRLA_offset = 0x00		// Channel Control A
EDMA_CH_CTRLB_offset = 0x01		// Channel Control
EDMA_CH_ADDRCTRL_offset = 0x02		// Memory Address Control for Peripheral Ch., or Source Address Control for Standard Ch.
EDMA_CH_DESTADDRCTRL_offset = 0x03		// Destination Address Control for Standard Channels Only.
EDMA_CH_TRIGSRC_offset = 0x04		// Channel Trigger Source
EDMA_CH_TRFCNTL_offset = 0x06		// Channel Block Transfer Count for Peripheral Ch., or Channel Block Transfer Count Low for Standard Ch.
EDMA_CH_TRFCNTH_offset = 0x07		// Channel Block Transfer Count High for Standard Channels Only
EDMA_CH_ADDRL_offset = 0x08		// Channel Memory Address Low for Peripheral Ch., or Channel Source Address Low for Standard Ch.
EDMA_CH_ADDRH_offset = 0x09		// Channel Memory Address High for Peripheral Ch., or Channel Source Address High for Standard Ch.
EDMA_CH_DESTADDRL_offset = 0x0C		// Channel Destination Address High for Standard Channels Only.
EDMA_CH_DESTADDRH_offset = 0x0D		// Channel Destination Address High for Standard Channels Only.

;*************************************************************************
;** EVSYS - Event System
;*************************************************************************
EVSYS_CH0MUX_offset = 0x00		// Event Channel 0 Multiplexer
EVSYS_CH1MUX_offset = 0x01		// Event Channel 1 Multiplexer
EVSYS_CH2MUX_offset = 0x02		// Event Channel 2 Multiplexer
EVSYS_CH3MUX_offset = 0x03		// Event Channel 3 Multiplexer
EVSYS_CH4MUX_offset = 0x04		// Event Channel 4 Multiplexer
EVSYS_CH5MUX_offset = 0x05		// Event Channel 5 Multiplexer
EVSYS_CH6MUX_offset = 0x06		// Event Channel 6 Multiplexer
EVSYS_CH7MUX_offset = 0x07		// Event Channel 7 Multiplexer
EVSYS_CH0CTRL_offset = 0x08		// Channel 0 Control Register
EVSYS_CH1CTRL_offset = 0x09		// Channel 1 Control Register
EVSYS_CH2CTRL_offset = 0x0A		// Channel 2 Control Register
EVSYS_CH3CTRL_offset = 0x0B		// Channel 3 Control Register
EVSYS_CH4CTRL_offset = 0x0C		// Channel 4 Control Register
EVSYS_CH5CTRL_offset = 0x0D		// Channel 5 Control Register
EVSYS_CH6CTRL_offset = 0x0E		// Channel 6 Control Register
EVSYS_CH7CTRL_offset = 0x0F		// Channel 7 Control Register
EVSYS_STROBE_offset = 0x10		// Event Strobe
EVSYS_DATA_offset = 0x11		// Event Data
EVSYS_DFCTRL_offset = 0x12		// Digital Filter Control Register

;*************************************************************************
;** NVM - Non Volatile Memory Controller
;*************************************************************************
NVM_ADDR0_offset = 0x00		// Address Register 0
NVM_ADDR1_offset = 0x01		// Address Register 1
NVM_ADDR2_offset = 0x02		// Address Register 2
NVM_DATA0_offset = 0x04		// Data Register 0
NVM_DATA1_offset = 0x05		// Data Register 1
NVM_DATA2_offset = 0x06		// Data Register 2
NVM_CMD_offset = 0x0A		// Command
NVM_CTRLA_offset = 0x0B		// Control Register A
NVM_CTRLB_offset = 0x0C		// Control Register B
NVM_INTCTRL_offset = 0x0D		// Interrupt Control
NVM_STATUS_offset = 0x0F		// Status
NVM_LOCKBITS_offset = 0x10		// Lock Bits

;*************************************************************************
;** ADC - Analog/Digital Converter
;*************************************************************************
ADC_CH_CTRL_offset = 0x00		// Control Register
ADC_CH_MUXCTRL_offset = 0x01		// MUX Control
ADC_CH_INTCTRL_offset = 0x02		// Channel Interrupt Control Register
ADC_CH_INTFLAGS_offset = 0x03		// Interrupt Flags
ADC_CH_RES_offset = 0x04		// Channel Result
ADC_CH_SCAN_offset = 0x06		// Input Channel Scan
ADC_CH_CORRCTRL_offset = 0x07		// Correction Control Register
ADC_CH_OFFSETCORR0_offset = 0x08		// Offset Correction Register 0
ADC_CH_OFFSETCORR1_offset = 0x09		// Offset Correction Register 1
ADC_CH_GAINCORR0_offset = 0x0A		// Gain Correction Register 0
ADC_CH_GAINCORR1_offset = 0x0B		// Gain Correction Register 1
ADC_CH_AVGCTRL_offset = 0x0C		// Average Control Register
ADC_CTRLA_offset = 0x00		// Control Register A
ADC_CTRLB_offset = 0x01		// Control Register B
ADC_REFCTRL_offset = 0x02		// Reference Control
ADC_EVCTRL_offset = 0x03		// Event Control
ADC_PRESCALER_offset = 0x04		// Clock Prescaler
ADC_INTFLAGS_offset = 0x06		// Interrupt Flags
ADC_TEMP_offset = 0x07		// Temporary Register
ADC_SAMPCTRL_offset = 0x08		// ADC Sampling Time Control Register
ADC_CAL_offset = 0x0C		// Calibration Value
ADC_CH0RES_offset = 0x10		// Channel 0 Result
ADC_CMP_offset = 0x18		// Compare Value
ADC_CH0_offset = 0x20		// ADC Channel 0

;*************************************************************************
;** DAC - Digital/Analog Converter
;*************************************************************************
DAC_CTRLA_offset = 0x00		// Control Register A
DAC_CTRLB_offset = 0x01		// Control Register B
DAC_CTRLC_offset = 0x02		// Control Register C
DAC_EVCTRL_offset = 0x03		// Event Input Control
DAC_TIMCTRL_offset = 0x04		// Timing Control
DAC_STATUS_offset = 0x05		// Status
DAC_CH0GAINCAL_offset = 0x08		// Gain Calibration
DAC_CH0OFFSETCAL_offset = 0x09		// Offset Calibration
DAC_CH1GAINCAL_offset = 0x0A		// Gain Calibration
DAC_CH1OFFSETCAL_offset = 0x0B		// Offset Calibration
DAC_CH0DATA_offset = 0x18		// Channel 0 Data
DAC_CH1DATA_offset = 0x1A		// Channel 1 Data

;*************************************************************************
;** AC - Analog Comparator
;*************************************************************************
AC_AC0CTRL_offset = 0x00		// Analog Comparator 0 Control
AC_AC1CTRL_offset = 0x01		// Analog Comparator 1 Control
AC_AC0MUXCTRL_offset = 0x02		// Analog Comparator 0 MUX Control
AC_AC1MUXCTRL_offset = 0x03		// Analog Comparator 1 MUX Control
AC_CTRLA_offset = 0x04		// Control Register A
AC_CTRLB_offset = 0x05		// Control Register B
AC_WINCTRL_offset = 0x06		// Window Mode Control
AC_STATUS_offset = 0x07		// Status
AC_CURRCTRL_offset = 0x08		// Current Source Control Register
AC_CURRCALIB_offset = 0x09		// Current Source Calibration Register

;*************************************************************************
;** RTC - Real-Time Clounter
;*************************************************************************
RTC_CTRL_offset = 0x00		// Control Register
RTC_STATUS_offset = 0x01		// Status Register
RTC_INTCTRL_offset = 0x02		// Interrupt Control Register
RTC_INTFLAGS_offset = 0x03		// Interrupt Flags
RTC_TEMP_offset = 0x04		// Temporary register
RTC_CALIB_offset = 0x06		// Calibration Register
RTC_CNT_offset = 0x08		// Count Register
RTC_PER_offset = 0x0A		// Period Register
RTC_COMP_offset = 0x0C		// Compare Register

;*************************************************************************
;** XCL - XMEGA Custom Logic
;*************************************************************************
XCL_CTRLA_offset = 0x00		// Control Register A
XCL_CTRLB_offset = 0x01		// Control Register B
XCL_CTRLC_offset = 0x02		// Control Register C
XCL_CTRLD_offset = 0x03		// Control Register D
XCL_CTRLE_offset = 0x04		// Control Register E
XCL_CTRLF_offset = 0x05		// Control Register F
XCL_CTRLG_offset = 0x06		// Control Register G
XCL_INTCTRL_offset = 0x07		// Interrupt Control Register
XCL_INTFLAGS_offset = 0x08		// Interrupt Flag Register
XCL_PLC_offset = 0x09		// Peripheral Lenght Control Register
XCL_CNTL_offset = 0x0A		// Counter Register Low
XCL_CNTH_offset = 0x0B		// Counter Register High
XCL_CMPL_offset = 0x0C		// Compare Register Low
XCL_CMPH_offset = 0x0D		// Compare Register High
XCL_PERCAPTL_offset = 0x0E		// Period or Capture Register Low
XCL_PERCAPTH_offset = 0x0F		// Period or Capture Register High

;*************************************************************************
;** TWI - Two-Wire Interface
;*************************************************************************
TWI_CTRL_offset = 0x00		// TWI Common Control Register
TWI_MASTER_offset = 0x01		// TWI master module
TWI_SLAVE_offset = 0x08		// TWI slave module
TWI_MASTER_CTRLA_offset = 0x00		// Control Register A
TWI_MASTER_CTRLB_offset = 0x01		// Control Register B
TWI_MASTER_CTRLC_offset = 0x02		// Control Register C
TWI_MASTER_STATUS_offset = 0x03		// Status Register
TWI_MASTER_BAUD_offset = 0x04		// Baurd Rate Control Register
TWI_MASTER_ADDR_offset = 0x05		// Address Register
TWI_MASTER_DATA_offset = 0x06		// Data Register
TWI_SLAVE_CTRLA_offset = 0x00		// Control Register A
TWI_SLAVE_CTRLB_offset = 0x01		// Control Register B
TWI_SLAVE_STATUS_offset = 0x02		// Status Register
TWI_SLAVE_ADDR_offset = 0x03		// Address Register
TWI_SLAVE_DATA_offset = 0x04		// Data Register
TWI_SLAVE_ADDRMASK_offset = 0x05		// Address Mask Register

;*************************************************************************
;** PORT - Port Configuration
;*************************************************************************
PORT_DIR_offset = 0x00		// I/O Port Data Direction
PORT_DIRSET_offset = 0x01		// I/O Port Data Direction Set
PORT_DIRCLR_offset = 0x02		// I/O Port Data Direction Clear
PORT_DIRTGL_offset = 0x03		// I/O Port Data Direction Toggle
PORT_OUT_offset = 0x04		// I/O Port Output
PORT_OUTSET_offset = 0x05		// I/O Port Output Set
PORT_OUTCLR_offset = 0x06		// I/O Port Output Clear
PORT_OUTTGL_offset = 0x07		// I/O Port Output Toggle
PORT_IN_offset = 0x08		// I/O port Input
PORT_INTCTRL_offset = 0x09		// Interrupt Control Register
PORT_INTMASK_offset = 0x0A		// Port Interrupt Mask
PORT_INTFLAGS_offset = 0x0C		// Interrupt Flag Register
PORT_REMAP_offset = 0x0E		// Pin Remap Register
PORT_PIN0CTRL_offset = 0x10		// Pin 0 Control Register
PORT_PIN1CTRL_offset = 0x11		// Pin 1 Control Register
PORT_PIN2CTRL_offset = 0x12		// Pin 2 Control Register
PORT_PIN3CTRL_offset = 0x13		// Pin 3 Control Register
PORT_PIN4CTRL_offset = 0x14		// Pin 4 Control Register
PORT_PIN5CTRL_offset = 0x15		// Pin 5 Control Register
PORT_PIN6CTRL_offset = 0x16		// Pin 6 Control Register
PORT_PIN7CTRL_offset = 0x17		// Pin 7 Control Register

;*************************************************************************
;** TC - 16-bit Timer/Counter With PWM
;*************************************************************************
TC4_CTRLA_offset = 0x00		// Control  Register A
TC4_CTRLB_offset = 0x01		// Control Register B
TC4_CTRLC_offset = 0x02		// Control register C
TC4_CTRLD_offset = 0x03		// Control Register D
TC4_CTRLE_offset = 0x04		// Control Register E
TC4_CTRLF_offset = 0x05		// Control Register F
TC4_INTCTRLA_offset = 0x06		// Interrupt Control Register A
TC4_INTCTRLB_offset = 0x07		// Interrupt Control Register B
TC4_CTRLGCLR_offset = 0x08		// Control Register G Clear
TC4_CTRLGSET_offset = 0x09		// Control Register G Set
TC4_CTRLHCLR_offset = 0x0A		// Control Register H Clear
TC4_CTRLHSET_offset = 0x0B		// Control Register H Set
TC4_INTFLAGS_offset = 0x0C		// Interrupt Flag Register
TC4_TEMP_offset = 0x0F		// Temporary Register For 16-bit Access
TC4_CNT_offset = 0x20		// Count
TC4_PER_offset = 0x26		// Period
TC4_CCA_offset = 0x28		// Compare or Capture A
TC4_CCB_offset = 0x2A		// Compare or Capture B
TC4_CCC_offset = 0x2C		// Compare or Capture C
TC4_CCD_offset = 0x2E		// Compare or Capture D
TC4_PERBUF_offset = 0x36		// Period Buffer
TC4_CCABUF_offset = 0x38		// Compare Or Capture A Buffer
TC4_CCBBUF_offset = 0x3A		// Compare Or Capture B Buffer
TC4_CCCBUF_offset = 0x3C		// Compare Or Capture C Buffer
TC4_CCDBUF_offset = 0x3E		// Compare Or Capture D Buffer
TC5_CTRLA_offset = 0x00		// Control  Register A
TC5_CTRLB_offset = 0x01		// Control Register B
TC5_CTRLC_offset = 0x02		// Control register C
TC5_CTRLD_offset = 0x03		// Control Register D
TC5_CTRLE_offset = 0x04		// Control Register E
TC5_CTRLF_offset = 0x05		// Control Register F
TC5_INTCTRLA_offset = 0x06		// Interrupt Control Register A
TC5_INTCTRLB_offset = 0x07		// Interrupt Control Register B
TC5_CTRLGCLR_offset = 0x08		// Control Register G Clear
TC5_CTRLGSET_offset = 0x09		// Control Register G Set
TC5_CTRLHCLR_offset = 0x0A		// Control Register H Clear
TC5_CTRLHSET_offset = 0x0B		// Control Register H Set
TC5_INTFLAGS_offset = 0x0C		// Interrupt Flag Register
TC5_TEMP_offset = 0x0F		// Temporary Register For 16-bit Access
TC5_CNT_offset = 0x20		// Count
TC5_PER_offset = 0x26		// Period
TC5_CCA_offset = 0x28		// Compare or Capture A
TC5_CCB_offset = 0x2A		// Compare or Capture B
TC5_PERBUF_offset = 0x36		// Period Buffer
TC5_CCABUF_offset = 0x38		// Compare Or Capture A Buffer
TC5_CCBBUF_offset = 0x3A		// Compare Or Capture B Buffer

;*************************************************************************
;** FAULT - Fault Extension
;*************************************************************************
FAULT_CTRLA_offset = 0x00		// Control A Register
FAULT_CTRLB_offset = 0x01		// Control B Register
FAULT_CTRLC_offset = 0x02		// Control C Register
FAULT_CTRLD_offset = 0x03		// Control D Register
FAULT_CTRLE_offset = 0x04		// Control E Register
FAULT_STATUS_offset = 0x05		// Status Register
FAULT_CTRLGCLR_offset = 0x06		// Control Register G Clear
FAULT_CTRLGSET_offset = 0x07		// Control Register G set

;*************************************************************************
;** WEX - Waveform Extension
;*************************************************************************
WEX_CTRL_offset = 0x00		// Control Register
WEX_DTBOTH_offset = 0x01		// Dead-time Concurrent Write to Both Sides Register
WEX_DTLS_offset = 0x02		// Dead-time Low Side Register
WEX_DTHS_offset = 0x03		// Dead-time High Side Register
WEX_STATUSCLR_offset = 0x04		// Status Clear Register
WEX_STATUSSET_offset = 0x05		// Status Set Register
WEX_SWAP_offset = 0x06		// Swap Register
WEX_PGO_offset = 0x07		// Pattern Generation Override Register
WEX_PGV_offset = 0x08		// Pattern Generation Value Register
WEX_SWAPBUF_offset = 0x0A		// Dead Time Low Side Buffer
WEX_PGOBUF_offset = 0x0B		// Pattern Generation Overwrite Buffer Register
WEX_PGVBUF_offset = 0x0C		// Pattern Generation Value Buffer Register
WEX_OUTOVDIS_offset = 0x0F		// Output Override Disable Register

;*************************************************************************
;** HIRES - High-Resolution Extension
;*************************************************************************
HIRES_CTRLA_offset = 0x00		// Control Register A

;*************************************************************************
;** USART - Universal Asynchronous Receiver-Transmitter
;*************************************************************************
USART_DATA_offset = 0x00		// Data Register
USART_STATUS_offset = 0x01		// Status Register
USART_CTRLA_offset = 0x02		// Control Register A
USART_CTRLB_offset = 0x03		// Control Register B
USART_CTRLC_offset = 0x04		// Control Register C
USART_CTRLD_offset = 0x05		// Control Register D
USART_BAUDCTRLA_offset = 0x06		// Baud Rate Control Register A
USART_BAUDCTRLB_offset = 0x07		// Baud Rate Control Register B

;*************************************************************************
;** SPI - Serial Peripheral Interface
;*************************************************************************
SPI_CTRL_offset = 0x00		// Control Register
SPI_INTCTRL_offset = 0x01		// Interrupt Control Register
SPI_STATUS_offset = 0x02		// Status Register
SPI_DATA_offset = 0x03		// Data Register
SPI_CTRLB_offset = 0x04		// Control Register B

;*************************************************************************
;** IRCOM - IR Communication Module
;*************************************************************************
IRCOM_CTRL_offset = 0x00		// Control Register
IRCOM_TXPLCTRL_offset = 0x01		// IrDA Transmitter Pulse Length Control Register
IRCOM_RXPLCTRL_offset = 0x02		// IrDA Receiver Pulse Length Control Register

;*************************************************************************
;** FUSE - Fuses and Lockbits
;*************************************************************************
NVM_LOCKBITS_LOCKBITS_offset = 0x00		// Lock Bits
NVM_FUSES_FUSEBYTE1_offset = 0x01		// Watchdog Configuration
NVM_FUSES_FUSEBYTE2_offset = 0x02		// Reset Configuration
NVM_FUSES_FUSEBYTE4_offset = 0x04		// Start-up Configuration
NVM_FUSES_FUSEBYTE5_offset = 0x05		// EESAVE and BOD Level
NVM_FUSES_FUSEBYTE6_offset = 0x06		// Fault State

;*************************************************************************
;** SIGROW - Signature Row
;*************************************************************************
NVM_PROD_SIGNATURES_RCOSC8M_offset = 0x00		// RCOSC 8MHz Calibration Value
NVM_PROD_SIGNATURES_RCOSC32K_offset = 0x02		// RCOSC 32.768 kHz Calibration Value
NVM_PROD_SIGNATURES_RCOSC32M_offset = 0x03		// RCOSC 32 MHz Calibration Value B
NVM_PROD_SIGNATURES_RCOSC32MA_offset = 0x04		// RCOSC 32 MHz Calibration Value A
NVM_PROD_SIGNATURES_LOTNUM0_offset = 0x08		// Lot Number Byte 0, ASCII
NVM_PROD_SIGNATURES_LOTNUM1_offset = 0x09		// Lot Number Byte 1, ASCII
NVM_PROD_SIGNATURES_LOTNUM2_offset = 0x0A		// Lot Number Byte 2, ASCII
NVM_PROD_SIGNATURES_LOTNUM3_offset = 0x0B		// Lot Number Byte 3, ASCII
NVM_PROD_SIGNATURES_LOTNUM4_offset = 0x0C		// Lot Number Byte 4, ASCII
NVM_PROD_SIGNATURES_LOTNUM5_offset = 0x0D		// Lot Number Byte 5, ASCII
NVM_PROD_SIGNATURES_WAFNUM_offset = 0x10		// Wafer Number
NVM_PROD_SIGNATURES_COORDX0_offset = 0x12		// Wafer Coordinate X Byte 0
NVM_PROD_SIGNATURES_COORDX1_offset = 0x13		// Wafer Coordinate X Byte 1
NVM_PROD_SIGNATURES_COORDY0_offset = 0x14		// Wafer Coordinate Y Byte 0
NVM_PROD_SIGNATURES_COORDY1_offset = 0x15		// Wafer Coordinate Y Byte 1
NVM_PROD_SIGNATURES_ADCACAL0_offset = 0x20		// ADCA Calibration Byte 0
NVM_PROD_SIGNATURES_ADCACAL1_offset = 0x21		// ADCA Calibration Byte 1
NVM_PROD_SIGNATURES_ACACURRCAL_offset = 0x28		// ACA Current Calibration Byte
NVM_PROD_SIGNATURES_TEMPSENSE0_offset = 0x2E		// Temperature Sensor Calibration Byte 0
NVM_PROD_SIGNATURES_TEMPSENSE1_offset = 0x2F		// Temperature Sensor Calibration Byte 1
NVM_PROD_SIGNATURES_DACA0OFFCAL_offset = 0x30		// DACA0 Calibration Byte 0
NVM_PROD_SIGNATURES_DACA0GAINCAL_offset = 0x31		// DACA0 Calibration Byte 1
NVM_PROD_SIGNATURES_DACA1OFFCAL_offset = 0x34		// DACA1 Calibration Byte 0
NVM_PROD_SIGNATURES_DACA1GAINCAL_offset = 0x35		// DACA1 Calibration Byte 1


; ***** LOCKBIT REGISTER LOCATIONS ***************************************


;*************************************************************************
;** LOCKBIT - Lockbits
;*************************************************************************

LOCKBIT_LOCKBITS = 0		// Lock Bits


; ***** FUSE REGISTER LOCATIONS ******************************************


;*************************************************************************
;** FUSE - NVM_FUSES
;*************************************************************************

FUSE_FUSEBYTE1 = 1		// Watchdog Configuration
FUSE_FUSEBYTE2 = 2		// Reset Configuration
FUSE_FUSEBYTE4 = 4		// Start-up Configuration
FUSE_FUSEBYTE5 = 5		// EESAVE and BOD Level
FUSE_FUSEBYTE6 = 6		// Fault State


; ***** BIT AND VALUE DEFINITIONS ****************************************


;*************************************************************************
;** GPIO - General Purpose IO
;*************************************************************************


;*************************************************************************
;** VPORT - Virtual Ports
;*************************************************************************

; VPORT_INTFLAGS masks
VPORT_INT7IF_bm = 0x80 ; Interrupt Pin 7 Flag bit mask
VPORT_INT7IF_bp = 7 ; Interrupt Pin 7 Flag bit position
VPORT_INT6IF_bm = 0x40 ; Interrupt Pin 6 Flag bit mask
VPORT_INT6IF_bp = 6 ; Interrupt Pin 6 Flag bit position
VPORT_INT5IF_bm = 0x20 ; Interrupt Pin 5 Flag bit mask
VPORT_INT5IF_bp = 5 ; Interrupt Pin 5 Flag bit position
VPORT_INT4IF_bm = 0x10 ; Interrupt Pin 4 Flag bit mask
VPORT_INT4IF_bp = 4 ; Interrupt Pin 4 Flag bit position
VPORT_INT3IF_bm = 0x08 ; Interrupt Pin 3 Flag bit mask
VPORT_INT3IF_bp = 3 ; Interrupt Pin 3 Flag bit position
VPORT_INT2IF_bm = 0x04 ; Interrupt Pin 2 Flag bit mask
VPORT_INT2IF_bp = 2 ; Interrupt Pin 2 Flag bit position
VPORT_INT1IF_bm = 0x02 ; Interrupt Pin 1 Flag bit mask
VPORT_INT1IF_bp = 1 ; Interrupt Pin 1 Flag bit position
VPORT_INT0IF_bm = 0x01 ; Interrupt Pin 0 Flag bit mask
VPORT_INT0IF_bp = 0 ; Interrupt Pin 0 Flag bit position


;*************************************************************************
;** XOCD - On-Chip Debug System
;*************************************************************************

; OCD_OCDR1 masks
OCD_OCDRD_bm = 0x01 ; OCDR Dirty bit mask
OCD_OCDRD_bp = 0 ; OCDR Dirty bit position


;*************************************************************************
;** CPU - CPU
;*************************************************************************

; CPU_CCP masks
CPU_CCP_gm = 0xFF ; CCP signature group mask
CPU_CCP_gp = 0 ; CCP signature group position
CPU_CCP0_bm = 1<<0 ; CCP signature bit 0 mask
CPU_CCP0_bp = 0 ; CCP signature bit 0 position
CPU_CCP1_bm = 1<<1 ; CCP signature bit 1 mask
CPU_CCP1_bp = 1 ; CCP signature bit 1 position
CPU_CCP2_bm = 1<<2 ; CCP signature bit 2 mask
CPU_CCP2_bp = 2 ; CCP signature bit 2 position
CPU_CCP3_bm = 1<<3 ; CCP signature bit 3 mask
CPU_CCP3_bp = 3 ; CCP signature bit 3 position
CPU_CCP4_bm = 1<<4 ; CCP signature bit 4 mask
CPU_CCP4_bp = 4 ; CCP signature bit 4 position
CPU_CCP5_bm = 1<<5 ; CCP signature bit 5 mask
CPU_CCP5_bp = 5 ; CCP signature bit 5 position
CPU_CCP6_bm = 1<<6 ; CCP signature bit 6 mask
CPU_CCP6_bp = 6 ; CCP signature bit 6 position
CPU_CCP7_bm = 1<<7 ; CCP signature bit 7 mask
CPU_CCP7_bp = 7 ; CCP signature bit 7 position

; CPU_SREG masks
CPU_I_bm = 0x80 ; Global Interrupt Enable Flag bit mask
CPU_I_bp = 7 ; Global Interrupt Enable Flag bit position
CPU_T_bm = 0x40 ; Transfer Bit bit mask
CPU_T_bp = 6 ; Transfer Bit bit position
CPU_H_bm = 0x20 ; Half Carry Flag bit mask
CPU_H_bp = 5 ; Half Carry Flag bit position
CPU_S_bm = 0x10 ; N Exclusive Or V Flag bit mask
CPU_S_bp = 4 ; N Exclusive Or V Flag bit position
CPU_V_bm = 0x08 ; Two's Complement Overflow Flag bit mask
CPU_V_bp = 3 ; Two's Complement Overflow Flag bit position
CPU_N_bm = 0x04 ; Negative Flag bit mask
CPU_N_bp = 2 ; Negative Flag bit position
CPU_Z_bm = 0x02 ; Zero Flag bit mask
CPU_Z_bp = 1 ; Zero Flag bit position
CPU_C_bm = 0x01 ; Carry Flag bit mask
CPU_C_bp = 0 ; Carry Flag bit position

; CCP signatures
CCP_SPM_gc = 0x9D<<0 ; SPM Instruction Protection
CCP_IOREG_gc = 0xD8<<0 ; IO Register Protection


;*************************************************************************
;** CLK - Clock System
;*************************************************************************

; CLK_CTRL masks
CLK_SCLKSEL_gm = 0x07 ; System Clock Selection group mask
CLK_SCLKSEL_gp = 0 ; System Clock Selection group position
CLK_SCLKSEL0_bm = 1<<0 ; System Clock Selection bit 0 mask
CLK_SCLKSEL0_bp = 0 ; System Clock Selection bit 0 position
CLK_SCLKSEL1_bm = 1<<1 ; System Clock Selection bit 1 mask
CLK_SCLKSEL1_bp = 1 ; System Clock Selection bit 1 position
CLK_SCLKSEL2_bm = 1<<2 ; System Clock Selection bit 2 mask
CLK_SCLKSEL2_bp = 2 ; System Clock Selection bit 2 position

; CLK_PSCTRL masks
CLK_PSADIV_gm = 0x7C ; Prescaler A Division Factor group mask
CLK_PSADIV_gp = 2 ; Prescaler A Division Factor group position
CLK_PSADIV0_bm = 1<<2 ; Prescaler A Division Factor bit 0 mask
CLK_PSADIV0_bp = 2 ; Prescaler A Division Factor bit 0 position
CLK_PSADIV1_bm = 1<<3 ; Prescaler A Division Factor bit 1 mask
CLK_PSADIV1_bp = 3 ; Prescaler A Division Factor bit 1 position
CLK_PSADIV2_bm = 1<<4 ; Prescaler A Division Factor bit 2 mask
CLK_PSADIV2_bp = 4 ; Prescaler A Division Factor bit 2 position
CLK_PSADIV3_bm = 1<<5 ; Prescaler A Division Factor bit 3 mask
CLK_PSADIV3_bp = 5 ; Prescaler A Division Factor bit 3 position
CLK_PSADIV4_bm = 1<<6 ; Prescaler A Division Factor bit 4 mask
CLK_PSADIV4_bp = 6 ; Prescaler A Division Factor bit 4 position
CLK_PSBCDIV_gm = 0x03 ; Prescaler B and C Division factor group mask
CLK_PSBCDIV_gp = 0 ; Prescaler B and C Division factor group position
CLK_PSBCDIV0_bm = 1<<0 ; Prescaler B and C Division factor bit 0 mask
CLK_PSBCDIV0_bp = 0 ; Prescaler B and C Division factor bit 0 position
CLK_PSBCDIV1_bm = 1<<1 ; Prescaler B and C Division factor bit 1 mask
CLK_PSBCDIV1_bp = 1 ; Prescaler B and C Division factor bit 1 position

; CLK_LOCK masks
CLK_LOCK_bm = 0x01 ; Clock System Lock bit mask
CLK_LOCK_bp = 0 ; Clock System Lock bit position

; CLK_RTCCTRL masks
CLK_RTCSRC_gm = 0x0E ; Clock Source group mask
CLK_RTCSRC_gp = 1 ; Clock Source group position
CLK_RTCSRC0_bm = 1<<1 ; Clock Source bit 0 mask
CLK_RTCSRC0_bp = 1 ; Clock Source bit 0 position
CLK_RTCSRC1_bm = 1<<2 ; Clock Source bit 1 mask
CLK_RTCSRC1_bp = 2 ; Clock Source bit 1 position
CLK_RTCSRC2_bm = 1<<3 ; Clock Source bit 2 mask
CLK_RTCSRC2_bp = 3 ; Clock Source bit 2 position
CLK_RTCEN_bm = 0x01 ; Clock Source Enable bit mask
CLK_RTCEN_bp = 0 ; Clock Source Enable bit position

; PR_PRGEN masks
PR_XCL_bm = 0x80 ; XMEGA Custom Logic bit mask
PR_XCL_bp = 7 ; XMEGA Custom Logic bit position
PR_RTC_bm = 0x04 ; Real-time Counter bit mask
PR_RTC_bp = 2 ; Real-time Counter bit position
PR_EVSYS_bm = 0x02 ; Event System bit mask
PR_EVSYS_bp = 1 ; Event System bit position
PR_EDMA_bm = 0x01 ; Enhanced DMA-Controller bit mask
PR_EDMA_bp = 0 ; Enhanced DMA-Controller bit position

; PR_PRPA masks
PR_DAC_bm = 0x04 ; Port A DAC bit mask
PR_DAC_bp = 2 ; Port A DAC bit position
PR_ADC_bm = 0x02 ; Port A ADC bit mask
PR_ADC_bp = 1 ; Port A ADC bit position
PR_AC_bm = 0x01 ; Port A Analog Comparator bit mask
PR_AC_bp = 0 ; Port A Analog Comparator bit position

; PR_PRPC masks
PR_TWI_bm = 0x40 ; Port C Two-wire Interface bit mask
PR_TWI_bp = 6 ; Port C Two-wire Interface bit position
PR_USART0_bm = 0x10 ; Port C USART0 bit mask
PR_USART0_bp = 4 ; Port C USART0 bit position
PR_SPI_bm = 0x08 ; Port C SPI bit mask
PR_SPI_bp = 3 ; Port C SPI bit position
PR_HIRES_bm = 0x04 ; Port C WEX bit mask
PR_HIRES_bp = 2 ; Port C WEX bit position
PR_TC5_bm = 0x02 ; Port C Timer/Counter5 bit mask
PR_TC5_bp = 1 ; Port C Timer/Counter5 bit position
PR_TC4_bm = 0x01 ; Port C Timer/Counter4 bit mask
PR_TC4_bp = 0 ; Port C Timer/Counter4 bit position

; PR_PRPD masks
; Masks for PR_USART0 already defined
; Masks for PR_TC5 already defined

; System Clock Selection
CLK_SCLKSEL_RC2M_gc = 0x00<<0 ; Internal 2 MHz RC Oscillator
CLK_SCLKSEL_RC32M_gc = 0x01<<0 ; Internal 32 MHz RC Oscillator
CLK_SCLKSEL_RC32K_gc = 0x02<<0 ; Internal 32.768 kHz RC Oscillator
CLK_SCLKSEL_XOSC_gc = 0x03<<0 ; External Crystal Oscillator or Clock
CLK_SCLKSEL_PLL_gc = 0x04<<0 ; Phase Locked Loop
CLK_SCLKSEL_RC8M_gc = 0x05<<0 ; Internal 8 MHz RC Oscillator

; Prescaler A Division Factor
CLK_PSADIV_1_gc = 0x00<<2 ; Divide by 1
CLK_PSADIV_2_gc = 0x01<<2 ; Divide by 2
CLK_PSADIV_4_gc = 0x03<<2 ; Divide by 4
CLK_PSADIV_8_gc = 0x05<<2 ; Divide by 8
CLK_PSADIV_16_gc = 0x07<<2 ; Divide by 16
CLK_PSADIV_32_gc = 0x09<<2 ; Divide by 32
CLK_PSADIV_64_gc = 0x0B<<2 ; Divide by 64
CLK_PSADIV_128_gc = 0x0D<<2 ; Divide by 128
CLK_PSADIV_256_gc = 0x0F<<2 ; Divide by 256
CLK_PSADIV_512_gc = 0x11<<2 ; Divide by 512
CLK_PSADIV_6_gc = 0x13<<2 ; Divide by 6
CLK_PSADIV_10_gc = 0x15<<2 ; Divide by 10
CLK_PSADIV_12_gc = 0x17<<2 ; Divide by 12
CLK_PSADIV_24_gc = 0x19<<2 ; Divide by 24
CLK_PSADIV_48_gc = 0x1B<<2 ; Divide by 48

; Prescaler B and C Division Factor
CLK_PSBCDIV_1_1_gc = 0x00<<0 ; Divide B by 1 and C by 1
CLK_PSBCDIV_1_2_gc = 0x01<<0 ; Divide B by 1 and C by 2
CLK_PSBCDIV_4_1_gc = 0x02<<0 ; Divide B by 4 and C by 1
CLK_PSBCDIV_2_2_gc = 0x03<<0 ; Divide B by 2 and C by 2

; RTC Clock Source
CLK_RTCSRC_ULP_gc = 0x00<<1 ; 1.024 kHz from internal 32kHz ULP
CLK_RTCSRC_TOSC_gc = 0x01<<1 ; 1.024 kHz from 32.768 kHz crystal oscillator on TOSC
CLK_RTCSRC_RCOSC_gc = 0x02<<1 ; 1.024 kHz from internal 32.768 kHz RC oscillator
CLK_RTCSRC_TOSC32_gc = 0x05<<1 ; 32.768 kHz from 32.768 kHz crystal oscillator on TOSC
CLK_RTCSRC_RCOSC32_gc = 0x06<<1 ; 32.768 kHz from internal 32.768 kHz RC oscillator
CLK_RTCSRC_EXTCLK_gc = 0x07<<1 ; External Clock from TOSC1


;*************************************************************************
;** SLEEP - Sleep Controller
;*************************************************************************

; SLEEP_CTRL masks
SLEEP_SMODE_gm = 0x0E ; Sleep Mode group mask
SLEEP_SMODE_gp = 1 ; Sleep Mode group position
SLEEP_SMODE0_bm = 1<<1 ; Sleep Mode bit 0 mask
SLEEP_SMODE0_bp = 1 ; Sleep Mode bit 0 position
SLEEP_SMODE1_bm = 1<<2 ; Sleep Mode bit 1 mask
SLEEP_SMODE1_bp = 2 ; Sleep Mode bit 1 position
SLEEP_SMODE2_bm = 1<<3 ; Sleep Mode bit 2 mask
SLEEP_SMODE2_bp = 3 ; Sleep Mode bit 2 position
SLEEP_SEN_bm = 0x01 ; Sleep Enable bit mask
SLEEP_SEN_bp = 0 ; Sleep Enable bit position

; Sleep Mode
SLEEP_SMODE_IDLE_gc = 0x00<<1 ; Idle mode
SLEEP_SMODE_PDOWN_gc = 0x02<<1 ; Power-down Mode
SLEEP_SMODE_PSAVE_gc = 0x03<<1 ; Power-save Mode
SLEEP_SMODE_STDBY_gc = 0x06<<1 ; Standby Mode
SLEEP_SMODE_ESTDBY_gc = 0x07<<1 ; Extended Standby Mode


;*************************************************************************
;** OSC - Oscillator
;*************************************************************************

; OSC_CTRL masks
OSC_RC8MLPM_bm = 0x40 ; Internal 8 MHz RC Low Power Mode Enable bit mask
OSC_RC8MLPM_bp = 6 ; Internal 8 MHz RC Low Power Mode Enable bit position
OSC_RC8MEN_bm = 0x20 ; Internal 8 MHz RC Oscillator Enable bit mask
OSC_RC8MEN_bp = 5 ; Internal 8 MHz RC Oscillator Enable bit position
OSC_PLLEN_bm = 0x10 ; PLL Enable bit mask
OSC_PLLEN_bp = 4 ; PLL Enable bit position
OSC_XOSCEN_bm = 0x08 ; External Oscillator Enable bit mask
OSC_XOSCEN_bp = 3 ; External Oscillator Enable bit position
OSC_RC32KEN_bm = 0x04 ; Internal 32.768 kHz RC Oscillator Enable bit mask
OSC_RC32KEN_bp = 2 ; Internal 32.768 kHz RC Oscillator Enable bit position
OSC_RC32MEN_bm = 0x02 ; Internal 32 MHz RC Oscillator Enable bit mask
OSC_RC32MEN_bp = 1 ; Internal 32 MHz RC Oscillator Enable bit position
OSC_RC2MEN_bm = 0x01 ; Internal 2 MHz RC Oscillator Enable bit mask
OSC_RC2MEN_bp = 0 ; Internal 2 MHz RC Oscillator Enable bit position

; OSC_STATUS masks
OSC_RC8MRDY_bm = 0x20 ; Internal 8 MHz RC Oscillator Ready bit mask
OSC_RC8MRDY_bp = 5 ; Internal 8 MHz RC Oscillator Ready bit position
OSC_PLLRDY_bm = 0x10 ; PLL Ready bit mask
OSC_PLLRDY_bp = 4 ; PLL Ready bit position
OSC_XOSCRDY_bm = 0x08 ; External Oscillator Ready bit mask
OSC_XOSCRDY_bp = 3 ; External Oscillator Ready bit position
OSC_RC32KRDY_bm = 0x04 ; Internal 32.768 kHz RC Oscillator Ready bit mask
OSC_RC32KRDY_bp = 2 ; Internal 32.768 kHz RC Oscillator Ready bit position
OSC_RC32MRDY_bm = 0x02 ; Internal 32 MHz RC Oscillator Ready bit mask
OSC_RC32MRDY_bp = 1 ; Internal 32 MHz RC Oscillator Ready bit position
OSC_RC2MRDY_bm = 0x01 ; Internal 2 MHz RC Oscillator Ready bit mask
OSC_RC2MRDY_bp = 0 ; Internal 2 MHz RC Oscillator Ready bit position

; OSC_XOSCCTRL masks
OSC_FRQRANGE_gm = 0xC0 ; Frequency Range group mask
OSC_FRQRANGE_gp = 6 ; Frequency Range group position
OSC_FRQRANGE0_bm = 1<<6 ; Frequency Range bit 0 mask
OSC_FRQRANGE0_bp = 6 ; Frequency Range bit 0 position
OSC_FRQRANGE1_bm = 1<<7 ; Frequency Range bit 1 mask
OSC_FRQRANGE1_bp = 7 ; Frequency Range bit 1 position
OSC_X32KLPM_bm = 0x20 ; 32.768 kHz XTAL OSC Low-power Mode bit mask
OSC_X32KLPM_bp = 5 ; 32.768 kHz XTAL OSC Low-power Mode bit position
OSC_XOSCPWR_bm = 0x10 ; 16 MHz Crystal Oscillator High Power mode bit mask
OSC_XOSCPWR_bp = 4 ; 16 MHz Crystal Oscillator High Power mode bit position
OSC_XOSCSEL_gm = 0x1F ; External Oscillator Selection and Startup Time group mask
OSC_XOSCSEL_gp = 0 ; External Oscillator Selection and Startup Time group position
OSC_XOSCSEL0_bm = 1<<0 ; External Oscillator Selection and Startup Time bit 0 mask
OSC_XOSCSEL0_bp = 0 ; External Oscillator Selection and Startup Time bit 0 position
OSC_XOSCSEL1_bm = 1<<1 ; External Oscillator Selection and Startup Time bit 1 mask
OSC_XOSCSEL1_bp = 1 ; External Oscillator Selection and Startup Time bit 1 position
OSC_XOSCSEL2_bm = 1<<2 ; External Oscillator Selection and Startup Time bit 2 mask
OSC_XOSCSEL2_bp = 2 ; External Oscillator Selection and Startup Time bit 2 position
OSC_XOSCSEL3_bm = 1<<3 ; External Oscillator Selection and Startup Time bit 3 mask
OSC_XOSCSEL3_bp = 3 ; External Oscillator Selection and Startup Time bit 3 position
OSC_XOSCSEL4_bm = 1<<4 ; External Oscillator Selection and Startup Time bit 4 mask
OSC_XOSCSEL4_bp = 4 ; External Oscillator Selection and Startup Time bit 4 position

; OSC_XOSCFAIL masks
OSC_PLLFDIF_bm = 0x08 ; PLL Failure Detection Interrupt Flag bit mask
OSC_PLLFDIF_bp = 3 ; PLL Failure Detection Interrupt Flag bit position
OSC_PLLFDEN_bm = 0x04 ; PLL Failure Detection Enable bit mask
OSC_PLLFDEN_bp = 2 ; PLL Failure Detection Enable bit position
OSC_XOSCFDIF_bm = 0x02 ; XOSC Failure Detection Interrupt Flag bit mask
OSC_XOSCFDIF_bp = 1 ; XOSC Failure Detection Interrupt Flag bit position
OSC_XOSCFDEN_bm = 0x01 ; XOSC Failure Detection Enable bit mask
OSC_XOSCFDEN_bp = 0 ; XOSC Failure Detection Enable bit position

; OSC_PLLCTRL masks
OSC_PLLSRC_gm = 0xC0 ; Clock Source group mask
OSC_PLLSRC_gp = 6 ; Clock Source group position
OSC_PLLSRC0_bm = 1<<6 ; Clock Source bit 0 mask
OSC_PLLSRC0_bp = 6 ; Clock Source bit 0 position
OSC_PLLSRC1_bm = 1<<7 ; Clock Source bit 1 mask
OSC_PLLSRC1_bp = 7 ; Clock Source bit 1 position
OSC_PLLDIV_bm = 0x20 ; Divide by 2 bit mask
OSC_PLLDIV_bp = 5 ; Divide by 2 bit position
OSC_PLLFAC_gm = 0x1F ; Multiplication Factor group mask
OSC_PLLFAC_gp = 0 ; Multiplication Factor group position
OSC_PLLFAC0_bm = 1<<0 ; Multiplication Factor bit 0 mask
OSC_PLLFAC0_bp = 0 ; Multiplication Factor bit 0 position
OSC_PLLFAC1_bm = 1<<1 ; Multiplication Factor bit 1 mask
OSC_PLLFAC1_bp = 1 ; Multiplication Factor bit 1 position
OSC_PLLFAC2_bm = 1<<2 ; Multiplication Factor bit 2 mask
OSC_PLLFAC2_bp = 2 ; Multiplication Factor bit 2 position
OSC_PLLFAC3_bm = 1<<3 ; Multiplication Factor bit 3 mask
OSC_PLLFAC3_bp = 3 ; Multiplication Factor bit 3 position
OSC_PLLFAC4_bm = 1<<4 ; Multiplication Factor bit 4 mask
OSC_PLLFAC4_bp = 4 ; Multiplication Factor bit 4 position

; OSC_DFLLCTRL masks
OSC_RC32MCREF_gm = 0x06 ; 32 MHz DFLL Calibration Reference group mask
OSC_RC32MCREF_gp = 1 ; 32 MHz DFLL Calibration Reference group position
OSC_RC32MCREF0_bm = 1<<1 ; 32 MHz DFLL Calibration Reference bit 0 mask
OSC_RC32MCREF0_bp = 1 ; 32 MHz DFLL Calibration Reference bit 0 position
OSC_RC32MCREF1_bm = 1<<2 ; 32 MHz DFLL Calibration Reference bit 1 mask
OSC_RC32MCREF1_bp = 2 ; 32 MHz DFLL Calibration Reference bit 1 position

; OSC_RC8MCAL masks
OSC_RC8MCAL_gm = 0xFF ; Calibration Bits group mask
OSC_RC8MCAL_gp = 0 ; Calibration Bits group position
OSC_RC8MCAL0_bm = 1<<0 ; Calibration Bits bit 0 mask
OSC_RC8MCAL0_bp = 0 ; Calibration Bits bit 0 position
OSC_RC8MCAL1_bm = 1<<1 ; Calibration Bits bit 1 mask
OSC_RC8MCAL1_bp = 1 ; Calibration Bits bit 1 position
OSC_RC8MCAL2_bm = 1<<2 ; Calibration Bits bit 2 mask
OSC_RC8MCAL2_bp = 2 ; Calibration Bits bit 2 position
OSC_RC8MCAL3_bm = 1<<3 ; Calibration Bits bit 3 mask
OSC_RC8MCAL3_bp = 3 ; Calibration Bits bit 3 position
OSC_RC8MCAL4_bm = 1<<4 ; Calibration Bits bit 4 mask
OSC_RC8MCAL4_bp = 4 ; Calibration Bits bit 4 position
OSC_RC8MCAL5_bm = 1<<5 ; Calibration Bits bit 5 mask
OSC_RC8MCAL5_bp = 5 ; Calibration Bits bit 5 position
OSC_RC8MCAL6_bm = 1<<6 ; Calibration Bits bit 6 mask
OSC_RC8MCAL6_bp = 6 ; Calibration Bits bit 6 position
OSC_RC8MCAL7_bm = 1<<7 ; Calibration Bits bit 7 mask
OSC_RC8MCAL7_bp = 7 ; Calibration Bits bit 7 position

; Oscillator Frequency Range
OSC_FRQRANGE_04TO2_gc = 0x00<<6 ; 0.4 - 2 MHz
OSC_FRQRANGE_2TO9_gc = 0x01<<6 ; 2 - 9 MHz
OSC_FRQRANGE_9TO12_gc = 0x02<<6 ; 9 - 12 MHz
OSC_FRQRANGE_12TO16_gc = 0x03<<6 ; 12 - 16 MHz

; External Oscillator Selection and Startup Time
OSC_XOSCSEL_EXTCLK_gc = 0x00<<0 ; External Clock on port R1 - 6 CLK
OSC_XOSCSEL_32KHz_gc = 0x02<<0 ; 32.768 kHz TOSC - 32K CLK
OSC_XOSCSEL_XTAL_256CLK_gc = 0x03<<0 ; 0.4-16 MHz XTAL - 256 CLK
OSC_XOSCSEL_XTAL_1KCLK_gc = 0x07<<0 ; 0.4-16 MHz XTAL - 1K CLK
OSC_XOSCSEL_XTAL_16KCLK_gc = 0x0B<<0 ; 0.4-16 MHz XTAL - 16K CLK
OSC_XOSCSEL_EXTCLK_C4_gc = 0x14<<0 ; External Clock on port C4 - 6 CLK

; PLL Clock Source
OSC_PLLSRC_RC2M_gc = 0x00<<6 ; Internal 2 MHz RC Oscillator
OSC_PLLSRC_RC8M_gc = 0x01<<6 ; Internal 8 MHz RC Oscillator
OSC_PLLSRC_RC32M_gc = 0x02<<6 ; Internal 32 MHz RC Oscillator
OSC_PLLSRC_XOSC_gc = 0x03<<6 ; External Oscillator

; 32 MHz DFLL Calibration Reference
OSC_RC32MCREF_RC32K_gc = 0x00<<1 ; Internal 32.768 kHz RC Oscillator
OSC_RC32MCREF_XOSC32K_gc = 0x01<<1 ; External 32.768 kHz Crystal Oscillator


;*************************************************************************
;** DFLL - DFLL
;*************************************************************************

; DFLL_CTRL masks
DFLL_ENABLE_bm = 0x01 ; DFLL Enable bit mask
DFLL_ENABLE_bp = 0 ; DFLL Enable bit position

; DFLL_CALA masks
DFLL_CALL_gm = 0x7F ; DFLL Calibration Value A group mask
DFLL_CALL_gp = 0 ; DFLL Calibration Value A group position
DFLL_CALL0_bm = 1<<0 ; DFLL Calibration Value A bit 0 mask
DFLL_CALL0_bp = 0 ; DFLL Calibration Value A bit 0 position
DFLL_CALL1_bm = 1<<1 ; DFLL Calibration Value A bit 1 mask
DFLL_CALL1_bp = 1 ; DFLL Calibration Value A bit 1 position
DFLL_CALL2_bm = 1<<2 ; DFLL Calibration Value A bit 2 mask
DFLL_CALL2_bp = 2 ; DFLL Calibration Value A bit 2 position
DFLL_CALL3_bm = 1<<3 ; DFLL Calibration Value A bit 3 mask
DFLL_CALL3_bp = 3 ; DFLL Calibration Value A bit 3 position
DFLL_CALL4_bm = 1<<4 ; DFLL Calibration Value A bit 4 mask
DFLL_CALL4_bp = 4 ; DFLL Calibration Value A bit 4 position
DFLL_CALL5_bm = 1<<5 ; DFLL Calibration Value A bit 5 mask
DFLL_CALL5_bp = 5 ; DFLL Calibration Value A bit 5 position
DFLL_CALL6_bm = 1<<6 ; DFLL Calibration Value A bit 6 mask
DFLL_CALL6_bp = 6 ; DFLL Calibration Value A bit 6 position

; DFLL_CALB masks
DFLL_CALH_gm = 0x3F ; DFLL Calibration Value B group mask
DFLL_CALH_gp = 0 ; DFLL Calibration Value B group position
DFLL_CALH0_bm = 1<<0 ; DFLL Calibration Value B bit 0 mask
DFLL_CALH0_bp = 0 ; DFLL Calibration Value B bit 0 position
DFLL_CALH1_bm = 1<<1 ; DFLL Calibration Value B bit 1 mask
DFLL_CALH1_bp = 1 ; DFLL Calibration Value B bit 1 position
DFLL_CALH2_bm = 1<<2 ; DFLL Calibration Value B bit 2 mask
DFLL_CALH2_bp = 2 ; DFLL Calibration Value B bit 2 position
DFLL_CALH3_bm = 1<<3 ; DFLL Calibration Value B bit 3 mask
DFLL_CALH3_bp = 3 ; DFLL Calibration Value B bit 3 position
DFLL_CALH4_bm = 1<<4 ; DFLL Calibration Value B bit 4 mask
DFLL_CALH4_bp = 4 ; DFLL Calibration Value B bit 4 position
DFLL_CALH5_bm = 1<<5 ; DFLL Calibration Value B bit 5 mask
DFLL_CALH5_bp = 5 ; DFLL Calibration Value B bit 5 position


;*************************************************************************
;** RST - Reset
;*************************************************************************

; RST_STATUS masks
RST_SDRF_bm = 0x40 ; Spike Detection Reset Flag bit mask
RST_SDRF_bp = 6 ; Spike Detection Reset Flag bit position
RST_SRF_bm = 0x20 ; Software Reset Flag bit mask
RST_SRF_bp = 5 ; Software Reset Flag bit position
RST_PDIRF_bm = 0x10 ; Programming and Debug Interface Interface Reset Flag bit mask
RST_PDIRF_bp = 4 ; Programming and Debug Interface Interface Reset Flag bit position
RST_WDRF_bm = 0x08 ; Watchdog Reset Flag bit mask
RST_WDRF_bp = 3 ; Watchdog Reset Flag bit position
RST_BORF_bm = 0x04 ; Brown-out Reset Flag bit mask
RST_BORF_bp = 2 ; Brown-out Reset Flag bit position
RST_EXTRF_bm = 0x02 ; External Reset Flag bit mask
RST_EXTRF_bp = 1 ; External Reset Flag bit position
RST_PORF_bm = 0x01 ; Power-on Reset Flag bit mask
RST_PORF_bp = 0 ; Power-on Reset Flag bit position

; RST_CTRL masks
RST_SWRST_bm = 0x01 ; Software Reset bit mask
RST_SWRST_bp = 0 ; Software Reset bit position


;*************************************************************************
;** WDT - Watch-Dog Timer
;*************************************************************************

; WDT_CTRL masks
WDT_PER_gm = 0x3C ; Period group mask
WDT_PER_gp = 2 ; Period group position
WDT_PER0_bm = 1<<2 ; Period bit 0 mask
WDT_PER0_bp = 2 ; Period bit 0 position
WDT_PER1_bm = 1<<3 ; Period bit 1 mask
WDT_PER1_bp = 3 ; Period bit 1 position
WDT_PER2_bm = 1<<4 ; Period bit 2 mask
WDT_PER2_bp = 4 ; Period bit 2 position
WDT_PER3_bm = 1<<5 ; Period bit 3 mask
WDT_PER3_bp = 5 ; Period bit 3 position
WDT_ENABLE_bm = 0x02 ; Enable bit mask
WDT_ENABLE_bp = 1 ; Enable bit position
WDT_CEN_bm = 0x01 ; Change Enable bit mask
WDT_CEN_bp = 0 ; Change Enable bit position

; WDT_WINCTRL masks
WDT_WPER_gm = 0x3C ; Windowed Mode Period group mask
WDT_WPER_gp = 2 ; Windowed Mode Period group position
WDT_WPER0_bm = 1<<2 ; Windowed Mode Period bit 0 mask
WDT_WPER0_bp = 2 ; Windowed Mode Period bit 0 position
WDT_WPER1_bm = 1<<3 ; Windowed Mode Period bit 1 mask
WDT_WPER1_bp = 3 ; Windowed Mode Period bit 1 position
WDT_WPER2_bm = 1<<4 ; Windowed Mode Period bit 2 mask
WDT_WPER2_bp = 4 ; Windowed Mode Period bit 2 position
WDT_WPER3_bm = 1<<5 ; Windowed Mode Period bit 3 mask
WDT_WPER3_bp = 5 ; Windowed Mode Period bit 3 position
WDT_WEN_bm = 0x02 ; Windowed Mode Enable bit mask
WDT_WEN_bp = 1 ; Windowed Mode Enable bit position
WDT_WCEN_bm = 0x01 ; Windowed Mode Change Enable bit mask
WDT_WCEN_bp = 0 ; Windowed Mode Change Enable bit position

; WDT_STATUS masks
WDT_SYNCBUSY_bm = 0x01 ; Syncronization busy bit mask
WDT_SYNCBUSY_bp = 0 ; Syncronization busy bit position

; Period setting
WDT_PER_8CLK_gc = 0x00<<2 ; 8 cycles (8ms @ 3.3V)
WDT_PER_16CLK_gc = 0x01<<2 ; 16 cycles (16ms @ 3.3V)
WDT_PER_32CLK_gc = 0x02<<2 ; 32 cycles (32ms @ 3.3V)
WDT_PER_64CLK_gc = 0x03<<2 ; 64 cycles (64ms @ 3.3V)
WDT_PER_125CLK_gc = 0x04<<2 ; 125 cycles (0.125s @ 3.3V)
WDT_PER_250CLK_gc = 0x05<<2 ; 250 cycles (0.25s @ 3.3V)
WDT_PER_500CLK_gc = 0x06<<2 ; 500 cycles (0.5s @ 3.3V)
WDT_PER_1KCLK_gc = 0x07<<2 ; 1K cycles (1s @ 3.3V)
WDT_PER_2KCLK_gc = 0x08<<2 ; 2K cycles (2s @ 3.3V)
WDT_PER_4KCLK_gc = 0x09<<2 ; 4K cycles (4s @ 3.3V)
WDT_PER_8KCLK_gc = 0x0A<<2 ; 8K cycles (8s @ 3.3V)

; Closed window period
WDT_WPER_8CLK_gc = 0x00<<2 ; 8 cycles (8ms @ 3.3V)
WDT_WPER_16CLK_gc = 0x01<<2 ; 16 cycles (16ms @ 3.3V)
WDT_WPER_32CLK_gc = 0x02<<2 ; 32 cycles (32ms @ 3.3V)
WDT_WPER_64CLK_gc = 0x03<<2 ; 64 cycles (64ms @ 3.3V)
WDT_WPER_125CLK_gc = 0x04<<2 ; 125 cycles (0.125s @ 3.3V)
WDT_WPER_250CLK_gc = 0x05<<2 ; 250 cycles (0.25s @ 3.3V)
WDT_WPER_500CLK_gc = 0x06<<2 ; 500 cycles (0.5s @ 3.3V)
WDT_WPER_1KCLK_gc = 0x07<<2 ; 1K cycles (1s @ 3.3V)
WDT_WPER_2KCLK_gc = 0x08<<2 ; 2K cycles (2s @ 3.3V)
WDT_WPER_4KCLK_gc = 0x09<<2 ; 4K cycles (4s @ 3.3V)
WDT_WPER_8KCLK_gc = 0x0A<<2 ; 8K cycles (8s @ 3.3V)


;*************************************************************************
;** MCU - MCU Control
;*************************************************************************

; MCU_ANAINIT masks
MCU_STARTUPDLYA_gm = 0x03 ; Analog startup delay Port A group mask
MCU_STARTUPDLYA_gp = 0 ; Analog startup delay Port A group position
MCU_STARTUPDLYA0_bm = 1<<0 ; Analog startup delay Port A bit 0 mask
MCU_STARTUPDLYA0_bp = 0 ; Analog startup delay Port A bit 0 position
MCU_STARTUPDLYA1_bm = 1<<1 ; Analog startup delay Port A bit 1 mask
MCU_STARTUPDLYA1_bp = 1 ; Analog startup delay Port A bit 1 position

; MCU_EVSYSLOCK masks
MCU_EVSYS1LOCK_bm = 0x10 ; Event Channel 4-7 Lock bit mask
MCU_EVSYS1LOCK_bp = 4 ; Event Channel 4-7 Lock bit position
MCU_EVSYS0LOCK_bm = 0x01 ; Event Channel 0-3 Lock bit mask
MCU_EVSYS0LOCK_bp = 0 ; Event Channel 0-3 Lock bit position

; MCU_WEXLOCK masks
MCU_WEXCLOCK_bm = 0x01 ; WeX on T/C C4 Lock bit mask
MCU_WEXCLOCK_bp = 0 ; WeX on T/C C4 Lock bit position

; MCU_FAULTLOCK masks
MCU_FAULTC5LOCK_bm = 0x02 ; Fault on T/C C5 Lock bit mask
MCU_FAULTC5LOCK_bp = 1 ; Fault on T/C C5 Lock bit position
MCU_FAULTC4LOCK_bm = 0x01 ; Fault on T/C C4 Lock bit mask
MCU_FAULTC4LOCK_bp = 0 ; Fault on T/C C4 Lock bit position


;*************************************************************************
;** PMIC - Programmable Multi-level Interrupt Controller
;*************************************************************************

; PMIC_STATUS masks
PMIC_NMIEX_bm = 0x80 ; Non-maskable Interrupt Executing bit mask
PMIC_NMIEX_bp = 7 ; Non-maskable Interrupt Executing bit position
PMIC_HILVLEX_bm = 0x04 ; High Level Interrupt Executing bit mask
PMIC_HILVLEX_bp = 2 ; High Level Interrupt Executing bit position
PMIC_MEDLVLEX_bm = 0x02 ; Medium Level Interrupt Executing bit mask
PMIC_MEDLVLEX_bp = 1 ; Medium Level Interrupt Executing bit position
PMIC_LOLVLEX_bm = 0x01 ; Low Level Interrupt Executing bit mask
PMIC_LOLVLEX_bp = 0 ; Low Level Interrupt Executing bit position

; PMIC_CTRL masks
PMIC_RREN_bm = 0x80 ; Round-Robin Priority Enable bit mask
PMIC_RREN_bp = 7 ; Round-Robin Priority Enable bit position
PMIC_IVSEL_bm = 0x40 ; Interrupt Vector Select bit mask
PMIC_IVSEL_bp = 6 ; Interrupt Vector Select bit position
PMIC_HILVLEN_bm = 0x04 ; High Level Enable bit mask
PMIC_HILVLEN_bp = 2 ; High Level Enable bit position
PMIC_MEDLVLEN_bm = 0x02 ; Medium Level Enable bit mask
PMIC_MEDLVLEN_bp = 1 ; Medium Level Enable bit position
PMIC_LOLVLEN_bm = 0x01 ; Low Level Enable bit mask
PMIC_LOLVLEN_bp = 0 ; Low Level Enable bit position


;*************************************************************************
;** PORTCFG - Port Configuration
;*************************************************************************

; PORTCFG_CLKOUT masks
PORTCFG_CLKEVPIN_bm = 0x80 ; Clock and Event Output Pin Select bit mask
PORTCFG_CLKEVPIN_bp = 7 ; Clock and Event Output Pin Select bit position
PORTCFG_RTCOUT_gm = 0x60 ; RTC Clock Output Enable group mask
PORTCFG_RTCOUT_gp = 5 ; RTC Clock Output Enable group position
PORTCFG_RTCOUT0_bm = 1<<5 ; RTC Clock Output Enable bit 0 mask
PORTCFG_RTCOUT0_bp = 5 ; RTC Clock Output Enable bit 0 position
PORTCFG_RTCOUT1_bm = 1<<6 ; RTC Clock Output Enable bit 1 mask
PORTCFG_RTCOUT1_bp = 6 ; RTC Clock Output Enable bit 1 position
PORTCFG_CLKOUTSEL_gm = 0x0C ; Clock Output Select group mask
PORTCFG_CLKOUTSEL_gp = 2 ; Clock Output Select group position
PORTCFG_CLKOUTSEL0_bm = 1<<2 ; Clock Output Select bit 0 mask
PORTCFG_CLKOUTSEL0_bp = 2 ; Clock Output Select bit 0 position
PORTCFG_CLKOUTSEL1_bm = 1<<3 ; Clock Output Select bit 1 mask
PORTCFG_CLKOUTSEL1_bp = 3 ; Clock Output Select bit 1 position
PORTCFG_CLKOUT_gm = 0x03 ; Clock Output Port group mask
PORTCFG_CLKOUT_gp = 0 ; Clock Output Port group position
PORTCFG_CLKOUT0_bm = 1<<0 ; Clock Output Port bit 0 mask
PORTCFG_CLKOUT0_bp = 0 ; Clock Output Port bit 0 position
PORTCFG_CLKOUT1_bm = 1<<1 ; Clock Output Port bit 1 mask
PORTCFG_CLKOUT1_bp = 1 ; Clock Output Port bit 1 position

; PORTCFG_ACEVOUT masks
PORTCFG_ACOUT_gm = 0xC0 ; Analog Comparator Output Port group mask
PORTCFG_ACOUT_gp = 6 ; Analog Comparator Output Port group position
PORTCFG_ACOUT0_bm = 1<<6 ; Analog Comparator Output Port bit 0 mask
PORTCFG_ACOUT0_bp = 6 ; Analog Comparator Output Port bit 0 position
PORTCFG_ACOUT1_bm = 1<<7 ; Analog Comparator Output Port bit 1 mask
PORTCFG_ACOUT1_bp = 7 ; Analog Comparator Output Port bit 1 position
PORTCFG_EVOUT_gm = 0x30 ; Event Channel Output Port group mask
PORTCFG_EVOUT_gp = 4 ; Event Channel Output Port group position
PORTCFG_EVOUT0_bm = 1<<4 ; Event Channel Output Port bit 0 mask
PORTCFG_EVOUT0_bp = 4 ; Event Channel Output Port bit 0 position
PORTCFG_EVOUT1_bm = 1<<5 ; Event Channel Output Port bit 1 mask
PORTCFG_EVOUT1_bp = 5 ; Event Channel Output Port bit 1 position
PORTCFG_EVASYEN_bm = 0x08 ; Asynchronous Event Enabled bit mask
PORTCFG_EVASYEN_bp = 3 ; Asynchronous Event Enabled bit position
PORTCFG_EVOUTSEL_gm = 0x07 ; Event Channel Output Selection group mask
PORTCFG_EVOUTSEL_gp = 0 ; Event Channel Output Selection group position
PORTCFG_EVOUTSEL0_bm = 1<<0 ; Event Channel Output Selection bit 0 mask
PORTCFG_EVOUTSEL0_bp = 0 ; Event Channel Output Selection bit 0 position
PORTCFG_EVOUTSEL1_bm = 1<<1 ; Event Channel Output Selection bit 1 mask
PORTCFG_EVOUTSEL1_bp = 1 ; Event Channel Output Selection bit 1 position
PORTCFG_EVOUTSEL2_bm = 1<<2 ; Event Channel Output Selection bit 2 mask
PORTCFG_EVOUTSEL2_bp = 2 ; Event Channel Output Selection bit 2 position

; PORTCFG_SRLCTRL  masks
PORTCFG_SRLENRA_bm = 0x01 ; Slew Rate Limit Enable on PORTA bit mask
PORTCFG_SRLENRA_bp = 0 ; Slew Rate Limit Enable on PORTA bit position
PORTCFG_SRLENRC_bm = 0x04 ; Slew Rate Limit Enable on PORTC bit mask
PORTCFG_SRLENRC_bp = 2 ; Slew Rate Limit Enable on PORTC bit position
PORTCFG_SRLENRD_bm = 0x08 ; Slew Rate Limit Enable on PORTD bit mask
PORTCFG_SRLENRD_bp = 3 ; Slew Rate Limit Enable on PORTD bit position
PORTCFG_SRLENRR_bm = 0x80 ; Slew Rate Limit Enable on PORTR bit mask
PORTCFG_SRLENRR_bp = 7 ; Slew Rate Limit Enable on PORTR bit position

; Clock and Event Output Port
PORTCFG_CLKEVPIN_PIN7_gc = 0x00<<7 ; Clock and Event Ouput on PIN 7
PORTCFG_CLKEVPIN_PIN4_gc = 0x01<<7 ; Clock and Event Ouput on PIN 4

; RTC Clock Output Port
PORTCFG_RTCCLKOUT_OFF_gc = 0x00<<5 ; System Clock Output Disabled
PORTCFG_RTCCLKOUT_PC6_gc = 0x01<<5 ; System Clock Output on Port C pin 6
PORTCFG_RTCCLKOUT_PD6_gc = 0x02<<5 ; System Clock Output on Port D pin 6
PORTCFG_RTCCLKOUT_PR0_gc = 0x03<<5 ; System Clock Output on Port R pin 0

; Peripheral Clock Output Select
PORTCFG_CLKOUTSEL_CLK1X_gc = 0x00<<2 ; 1x Peripheral Clock Output to pin
PORTCFG_CLKOUTSEL_CLK2X_gc = 0x01<<2 ; 2x Peripheral Clock Output to pin
PORTCFG_CLKOUTSEL_CLK4X_gc = 0x02<<2 ; 4x Peripheral Clock Output to pin

; System Clock Output Port
PORTCFG_CLKOUT_OFF_gc = 0x00<<0 ; System Clock Output Disabled
PORTCFG_CLKOUT_PC7_gc = 0x01<<0 ; System Clock Output on Port C pin 7
PORTCFG_CLKOUT_PD7_gc = 0x02<<0 ; System Clock Output on Port D pin 7
PORTCFG_CLKOUT_PR0_gc = 0x03<<0 ; System Clock Output on Port R pin 0

; Analog Comparator Output Port
PORTCFG_ACOUT_PA_gc = 0x00<<6 ; Analog Comparator Outputs on Port A, Pin 6-7
PORTCFG_ACOUT_PC_gc = 0x01<<6 ; Analog Comparator Outputs on Port C, Pin 6-7
PORTCFG_ACOUT_PD_gc = 0x02<<6 ; Analog Comparator Outputs on Port D, Pin 6-7
PORTCFG_ACOUT_PR_gc = 0x03<<6 ; Analog Comparator Outputs on Port R, Pin 0-1

; Event Output Port
PORTCFG_EVOUT_OFF_gc = 0x00<<4 ; Event Output Disabled
PORTCFG_EVOUT_PC7_gc = 0x01<<4 ; Event Channel n Output on Port C pin 7
PORTCFG_EVOUT_PD7_gc = 0x02<<4 ; Event Channel n Output on Port D pin 7
PORTCFG_EVOUT_PR0_gc = 0x03<<4 ; Event Channel n Output on Port R pin 0

; Event Output Select
PORTCFG_EVOUTSEL_0_gc = 0x00<<0 ; Event Channel 0 output to pin
PORTCFG_EVOUTSEL_1_gc = 0x01<<0 ; Event Channel 1 output to pin
PORTCFG_EVOUTSEL_2_gc = 0x02<<0 ; Event Channel 2 output to pin
PORTCFG_EVOUTSEL_3_gc = 0x03<<0 ; Event Channel 3 output to pin
PORTCFG_EVOUTSEL_4_gc = 0x04<<0 ; Event Channel 4 output to pin
PORTCFG_EVOUTSEL_5_gc = 0x05<<0 ; Event Channel 5 output to pin
PORTCFG_EVOUTSEL_6_gc = 0x06<<0 ; Event Channel 6 output to pin
PORTCFG_EVOUTSEL_7_gc = 0x07<<0 ; Event Channel 7 output to pin


;*************************************************************************
;** CRC - Cyclic Redundancy Checker
;*************************************************************************

; CRC_CTRL masks
CRC_RESET_gm = 0xC0 ; Reset group mask
CRC_RESET_gp = 6 ; Reset group position
CRC_RESET0_bm = 1<<6 ; Reset bit 0 mask
CRC_RESET0_bp = 6 ; Reset bit 0 position
CRC_RESET1_bm = 1<<7 ; Reset bit 1 mask
CRC_RESET1_bp = 7 ; Reset bit 1 position
CRC_CRC32_bm = 0x20 ; CRC Mode bit mask
CRC_CRC32_bp = 5 ; CRC Mode bit position
CRC_SOURCE_gm = 0x0F ; Input Source group mask
CRC_SOURCE_gp = 0 ; Input Source group position
CRC_SOURCE0_bm = 1<<0 ; Input Source bit 0 mask
CRC_SOURCE0_bp = 0 ; Input Source bit 0 position
CRC_SOURCE1_bm = 1<<1 ; Input Source bit 1 mask
CRC_SOURCE1_bp = 1 ; Input Source bit 1 position
CRC_SOURCE2_bm = 1<<2 ; Input Source bit 2 mask
CRC_SOURCE2_bp = 2 ; Input Source bit 2 position
CRC_SOURCE3_bm = 1<<3 ; Input Source bit 3 mask
CRC_SOURCE3_bp = 3 ; Input Source bit 3 position

; CRC_STATUS masks
CRC_ZERO_bm = 0x02 ; Zero detection bit mask
CRC_ZERO_bp = 1 ; Zero detection bit position
CRC_BUSY_bm = 0x01 ; Busy bit mask
CRC_BUSY_bp = 0 ; Busy bit position

; Reset
CRC_RESET_NO_gc = 0x00<<6 ; No Reset
CRC_RESET_RESET0_gc = 0x02<<6 ; Reset CRC with CHECKSUM to all zeros
CRC_RESET_RESET1_gc = 0x03<<6 ; Reset CRC with CHECKSUM to all ones

; Input Source
CRC_SOURCE_DISABLE_gc = 0x00<<0 ; Disabled
CRC_SOURCE_IO_gc = 0x01<<0 ; I/O Interface
CRC_SOURCE_FLASH_gc = 0x02<<0 ; Flash
CRC_SOURCE_DMAC0_gc = 0x04<<0 ; DMAC Channel 0
CRC_SOURCE_DMAC1_gc = 0x05<<0 ; DMAC Channel 1
CRC_SOURCE_DMAC2_gc = 0x06<<0 ; DMAC Channel 2
CRC_SOURCE_DMAC3_gc = 0x07<<0 ; DMAC Channel 3


;*************************************************************************
;** EDMA - Enhanced DMA Controller
;*************************************************************************

; EDMA_CTRL masks
EDMA_ENABLE_bm = 0x80 ; Enable bit mask
EDMA_ENABLE_bp = 7 ; Enable bit position
EDMA_RESET_bm = 0x40 ; Software Reset bit mask
EDMA_RESET_bp = 6 ; Software Reset bit position
EDMA_CHMODE_gm = 0x30 ; Channel Mode group mask
EDMA_CHMODE_gp = 4 ; Channel Mode group position
EDMA_CHMODE0_bm = 1<<4 ; Channel Mode bit 0 mask
EDMA_CHMODE0_bp = 4 ; Channel Mode bit 0 position
EDMA_CHMODE1_bm = 1<<5 ; Channel Mode bit 1 mask
EDMA_CHMODE1_bp = 5 ; Channel Mode bit 1 position
EDMA_DBUFMODE_gm = 0x0C ; Double Buffer Mode group mask
EDMA_DBUFMODE_gp = 2 ; Double Buffer Mode group position
EDMA_DBUFMODE0_bm = 1<<2 ; Double Buffer Mode bit 0 mask
EDMA_DBUFMODE0_bp = 2 ; Double Buffer Mode bit 0 position
EDMA_DBUFMODE1_bm = 1<<3 ; Double Buffer Mode bit 1 mask
EDMA_DBUFMODE1_bp = 3 ; Double Buffer Mode bit 1 position
EDMA_PRIMODE_gm = 0x03 ; Priority Mode group mask
EDMA_PRIMODE_gp = 0 ; Priority Mode group position
EDMA_PRIMODE0_bm = 1<<0 ; Priority Mode bit 0 mask
EDMA_PRIMODE0_bp = 0 ; Priority Mode bit 0 position
EDMA_PRIMODE1_bm = 1<<1 ; Priority Mode bit 1 mask
EDMA_PRIMODE1_bp = 1 ; Priority Mode bit 1 position

; EDMA_INTFLAGS masks
EDMA_CH3ERRIF_bm = 0x80 ; Channel 3 Transaction Error Interrupt Flag bit mask
EDMA_CH3ERRIF_bp = 7 ; Channel 3 Transaction Error Interrupt Flag bit position
EDMA_CH2ERRIF_bm = 0x40 ; Channel 2 Transaction Error Interrupt Flag bit mask
EDMA_CH2ERRIF_bp = 6 ; Channel 2 Transaction Error Interrupt Flag bit position
EDMA_CH1ERRIF_bm = 0x20 ; Channel 1 Transaction Error Interrupt Flag bit mask
EDMA_CH1ERRIF_bp = 5 ; Channel 1 Transaction Error Interrupt Flag bit position
EDMA_CH0ERRIF_bm = 0x10 ; Channel 0 Transaction Error Interrupt Flag bit mask
EDMA_CH0ERRIF_bp = 4 ; Channel 0 Transaction Error Interrupt Flag bit position
EDMA_CH3TRNFIF_bm = 0x08 ; Channel 3 Transaction Complete Interrupt Flag bit mask
EDMA_CH3TRNFIF_bp = 3 ; Channel 3 Transaction Complete Interrupt Flag bit position
EDMA_CH2TRNFIF_bm = 0x04 ; Channel 2 Transaction Complete Interrupt Flag bit mask
EDMA_CH2TRNFIF_bp = 2 ; Channel 2 Transaction Complete Interrupt Flag bit position
EDMA_CH1TRNFIF_bm = 0x02 ; Channel 1 Transaction Complete Interrupt Flag bit mask
EDMA_CH1TRNFIF_bp = 1 ; Channel 1 Transaction Complete Interrupt Flag bit position
EDMA_CH0TRNFIF_bm = 0x01 ; Channel 0 Transaction Complete Interrupt Flag bit mask
EDMA_CH0TRNFIF_bp = 0 ; Channel 0 Transaction Complete Interrupt Flag bit position

; EDMA_STATUS masks
EDMA_CH3BUSY_bm = 0x80 ; Channel 3 Busy Flag bit mask
EDMA_CH3BUSY_bp = 7 ; Channel 3 Busy Flag bit position
EDMA_CH2BUSY_bm = 0x40 ; Channel 2 Busy Flag bit mask
EDMA_CH2BUSY_bp = 6 ; Channel 2 Busy Flag bit position
EDMA_CH1BUSY_bm = 0x20 ; Channel 1 Busy Flag bit mask
EDMA_CH1BUSY_bp = 5 ; Channel 1 Busy Flag bit position
EDMA_CH0BUSY_bm = 0x10 ; Channel 0 Busy Flag bit mask
EDMA_CH0BUSY_bp = 4 ; Channel 0 Busy Flag bit position
EDMA_CH3PEND_bm = 0x08 ; Channel 3 Pending Flag bit mask
EDMA_CH3PEND_bp = 3 ; Channel 3 Pending Flag bit position
EDMA_CH2PEND_bm = 0x04 ; Channel 2 Pending Flag bit mask
EDMA_CH2PEND_bp = 2 ; Channel 2 Pending Flag bit position
EDMA_CH1PEND_bm = 0x02 ; Channel 1 Pending Flag bit mask
EDMA_CH1PEND_bp = 1 ; Channel 1 Pending Flag bit position
EDMA_CH0PEND_bm = 0x01 ; Channel 0 Pending Flag bit mask
EDMA_CH0PEND_bp = 0 ; Channel 0 Pending Flag bit position

; EDMA_CH_CTRLA masks
EDMA_CH_ENABLE_bm = 0x80 ; Channel Enable bit mask
EDMA_CH_ENABLE_bp = 7 ; Channel Enable bit position
EDMA_CH_RESET_bm = 0x40 ; Channel Software Reset bit mask
EDMA_CH_RESET_bp = 6 ; Channel Software Reset bit position
EDMA_CH_REPEAT_bm = 0x20 ; Channel Repeat Mode bit mask
EDMA_CH_REPEAT_bp = 5 ; Channel Repeat Mode bit position
EDMA_CH_TRFREQ_bm = 0x10 ; Channel Transfer Request bit mask
EDMA_CH_TRFREQ_bp = 4 ; Channel Transfer Request bit position
EDMA_CH_SINGLE_bm = 0x04 ; Channel Single Shot Data Transfer bit mask
EDMA_CH_SINGLE_bp = 2 ; Channel Single Shot Data Transfer bit position
EDMA_CH_BURSTLEN_bm = 0x01 ; Channel 2-bytes Burst Length bit mask
EDMA_CH_BURSTLEN_bp = 0 ; Channel 2-bytes Burst Length bit position

; EDMA_CH_CTRLB masks
EDMA_CH_CHBUSY_bm = 0x80 ; Channel Block Transfer Busy bit mask
EDMA_CH_CHBUSY_bp = 7 ; Channel Block Transfer Busy bit position
EDMA_CH_CHPEND_bm = 0x40 ; Channel Block Transfer Pending bit mask
EDMA_CH_CHPEND_bp = 6 ; Channel Block Transfer Pending bit position
EDMA_CH_ERRIF_bm = 0x20 ; Channel Transaction Error Interrupt Flag bit mask
EDMA_CH_ERRIF_bp = 5 ; Channel Transaction Error Interrupt Flag bit position
EDMA_CH_TRNIF_bm = 0x10 ; Channel Transaction Complete Interrup Flag bit mask
EDMA_CH_TRNIF_bp = 4 ; Channel Transaction Complete Interrup Flag bit position
EDMA_CH_ERRINTLVL_gm = 0x0C ; Channel Transaction Error Interrupt Level group mask
EDMA_CH_ERRINTLVL_gp = 2 ; Channel Transaction Error Interrupt Level group position
EDMA_CH_ERRINTLVL0_bm = 1<<2 ; Channel Transaction Error Interrupt Level bit 0 mask
EDMA_CH_ERRINTLVL0_bp = 2 ; Channel Transaction Error Interrupt Level bit 0 position
EDMA_CH_ERRINTLVL1_bm = 1<<3 ; Channel Transaction Error Interrupt Level bit 1 mask
EDMA_CH_ERRINTLVL1_bp = 3 ; Channel Transaction Error Interrupt Level bit 1 position
EDMA_CH_TRNINTLVL_gm = 0x03 ; Channel Transaction Complete Interrupt Level group mask
EDMA_CH_TRNINTLVL_gp = 0 ; Channel Transaction Complete Interrupt Level group position
EDMA_CH_TRNINTLVL0_bm = 1<<0 ; Channel Transaction Complete Interrupt Level bit 0 mask
EDMA_CH_TRNINTLVL0_bp = 0 ; Channel Transaction Complete Interrupt Level bit 0 position
EDMA_CH_TRNINTLVL1_bm = 1<<1 ; Channel Transaction Complete Interrupt Level bit 1 mask
EDMA_CH_TRNINTLVL1_bp = 1 ; Channel Transaction Complete Interrupt Level bit 1 position

; EDMA_CH_ADDRCTRL masks
EDMA_CH_RELOAD_gm = 0x30 ; Memory Address Reload for Peripheral Ch., or Source Address Reload for Standard Ch. group mask
EDMA_CH_RELOAD_gp = 4 ; Memory Address Reload for Peripheral Ch., or Source Address Reload for Standard Ch. group position
EDMA_CH_RELOAD0_bm = 1<<4 ; Memory Address Reload for Peripheral Ch., or Source Address Reload for Standard Ch. bit 0 mask
EDMA_CH_RELOAD0_bp = 4 ; Memory Address Reload for Peripheral Ch., or Source Address Reload for Standard Ch. bit 0 position
EDMA_CH_RELOAD1_bm = 1<<5 ; Memory Address Reload for Peripheral Ch., or Source Address Reload for Standard Ch. bit 1 mask
EDMA_CH_RELOAD1_bp = 5 ; Memory Address Reload for Peripheral Ch., or Source Address Reload for Standard Ch. bit 1 position
EDMA_CH_DIR_gm = 0x07 ; Memory Address Mode for Peripheral Ch., or Source Address Mode for Standard Ch. group mask
EDMA_CH_DIR_gp = 0 ; Memory Address Mode for Peripheral Ch., or Source Address Mode for Standard Ch. group position
EDMA_CH_DIR0_bm = 1<<0 ; Memory Address Mode for Peripheral Ch., or Source Address Mode for Standard Ch. bit 0 mask
EDMA_CH_DIR0_bp = 0 ; Memory Address Mode for Peripheral Ch., or Source Address Mode for Standard Ch. bit 0 position
EDMA_CH_DIR1_bm = 1<<1 ; Memory Address Mode for Peripheral Ch., or Source Address Mode for Standard Ch. bit 1 mask
EDMA_CH_DIR1_bp = 1 ; Memory Address Mode for Peripheral Ch., or Source Address Mode for Standard Ch. bit 1 position
EDMA_CH_DIR2_bm = 1<<2 ; Memory Address Mode for Peripheral Ch., or Source Address Mode for Standard Ch. bit 2 mask
EDMA_CH_DIR2_bp = 2 ; Memory Address Mode for Peripheral Ch., or Source Address Mode for Standard Ch. bit 2 position

; EDMA_CH_DESTADDRCTRL masks
EDMA_CH_DESTRELOAD_gm = 0x30 ; Destination Address Reload for Standard Channels Only. group mask
EDMA_CH_DESTRELOAD_gp = 4 ; Destination Address Reload for Standard Channels Only. group position
EDMA_CH_DESTRELOAD0_bm = 1<<4 ; Destination Address Reload for Standard Channels Only. bit 0 mask
EDMA_CH_DESTRELOAD0_bp = 4 ; Destination Address Reload for Standard Channels Only. bit 0 position
EDMA_CH_DESTRELOAD1_bm = 1<<5 ; Destination Address Reload for Standard Channels Only. bit 1 mask
EDMA_CH_DESTRELOAD1_bp = 5 ; Destination Address Reload for Standard Channels Only. bit 1 position
EDMA_CH_DESTDIR_gm = 0x07 ; Destination Address Mode for Standard Channels Only. group mask
EDMA_CH_DESTDIR_gp = 0 ; Destination Address Mode for Standard Channels Only. group position
EDMA_CH_DESTDIR0_bm = 1<<0 ; Destination Address Mode for Standard Channels Only. bit 0 mask
EDMA_CH_DESTDIR0_bp = 0 ; Destination Address Mode for Standard Channels Only. bit 0 position
EDMA_CH_DESTDIR1_bm = 1<<1 ; Destination Address Mode for Standard Channels Only. bit 1 mask
EDMA_CH_DESTDIR1_bp = 1 ; Destination Address Mode for Standard Channels Only. bit 1 position
EDMA_CH_DESTDIR2_bm = 1<<2 ; Destination Address Mode for Standard Channels Only. bit 2 mask
EDMA_CH_DESTDIR2_bp = 2 ; Destination Address Mode for Standard Channels Only. bit 2 position

; EDMA_CH_TRIGSRC masks
EDMA_CH_TRIGSRC_gm = 0xFF ; Channel Trigger Source group mask
EDMA_CH_TRIGSRC_gp = 0 ; Channel Trigger Source group position
EDMA_CH_TRIGSRC0_bm = 1<<0 ; Channel Trigger Source bit 0 mask
EDMA_CH_TRIGSRC0_bp = 0 ; Channel Trigger Source bit 0 position
EDMA_CH_TRIGSRC1_bm = 1<<1 ; Channel Trigger Source bit 1 mask
EDMA_CH_TRIGSRC1_bp = 1 ; Channel Trigger Source bit 1 position
EDMA_CH_TRIGSRC2_bm = 1<<2 ; Channel Trigger Source bit 2 mask
EDMA_CH_TRIGSRC2_bp = 2 ; Channel Trigger Source bit 2 position
EDMA_CH_TRIGSRC3_bm = 1<<3 ; Channel Trigger Source bit 3 mask
EDMA_CH_TRIGSRC3_bp = 3 ; Channel Trigger Source bit 3 position
EDMA_CH_TRIGSRC4_bm = 1<<4 ; Channel Trigger Source bit 4 mask
EDMA_CH_TRIGSRC4_bp = 4 ; Channel Trigger Source bit 4 position
EDMA_CH_TRIGSRC5_bm = 1<<5 ; Channel Trigger Source bit 5 mask
EDMA_CH_TRIGSRC5_bp = 5 ; Channel Trigger Source bit 5 position
EDMA_CH_TRIGSRC6_bm = 1<<6 ; Channel Trigger Source bit 6 mask
EDMA_CH_TRIGSRC6_bp = 6 ; Channel Trigger Source bit 6 position
EDMA_CH_TRIGSRC7_bm = 1<<7 ; Channel Trigger Source bit 7 mask
EDMA_CH_TRIGSRC7_bp = 7 ; Channel Trigger Source bit 7 position

; Channel mode
EDMA_CHMODE_PER0123_gc = 0x00<<4 ; Channels 0, 1, 2 and 3 in peripheal conf.
EDMA_CHMODE_STD0_gc = 0x01<<4 ; Channel 0 in standard conf.; channels 2 and 3 in peripheral conf.
EDMA_CHMODE_STD2_gc = 0x02<<4 ; Channel 2 in standard conf.; channels 0 and 1 in peripheral conf.
EDMA_CHMODE_STD02_gc = 0x03<<4 ; Channels 0 and 2 in standard conf.

; Double buffer mode
EDMA_DBUFMODE_DISABLE_gc = 0x00<<2 ; No double buffer enabled
EDMA_DBUFMODE_BUF01_gc = 0x01<<2 ; Double buffer enabled on peripheral channels 0/1 (if exist)
EDMA_DBUFMODE_BUF23_gc = 0x02<<2 ; Double buffer enabled on peripheral channels 2/3 (if exist)
EDMA_DBUFMODE_BUF0123_gc = 0x03<<2 ; Double buffer enabled on peripheral channels 0/1 and 2/3 or standard channels 0/2

; Priority mode
EDMA_PRIMODE_RR0123_gc = 0x00<<0 ; Round robin on all channels
EDMA_PRIMODE_RR123_gc = 0x01<<0 ; Ch0 > round robin (Ch 1 ch2 Ch3)
EDMA_PRIMODE_RR23_gc = 0x02<<0 ; Ch0 > Ch 1 > round robin (Ch2 Ch3)
EDMA_PRIMODE_CH0123_gc = 0x03<<0 ; Ch0 > Ch1 > Ch2 > Ch3

; Memory Address Reload for Peripheral Ch., or Source Address Reload for Standard Ch.
EDMA_CH_RELOAD_NONE_gc = 0x00<<4 ; No reload
EDMA_CH_RELOAD_BLOCK_gc = 0x01<<4 ; Reload at end of each block transfer
EDMA_CH_RELOAD_BURST_gc = 0x02<<4 ; Reload at end of each burst transfer
EDMA_CH_RELOAD_TRANSACTION_gc = 0x03<<4 ; Reload at end of each transaction

; Memory Address Mode for Peripheral Ch., or Source Address Mode for Standard Ch.
EDMA_CH_DIR_FIXED_gc = 0x00<<0 ; Fixed
EDMA_CH_DIR_INC_gc = 0x01<<0 ; Increment
EDMA_CH_DIR_MP1_gc = 0x04<<0 ; If Peripheral Ch. (Per ==> Mem), 1-byte 'mask-match' (data: ADDRL, mask: ADDRH), else reserved conf.
EDMA_CH_DIR_MP2_gc = 0x05<<0 ; If Peripheral Ch. (Per ==> Mem), 1-byte 'OR-match' (data-1: ADDRL OR data-2: ADDRH), else reserved conf.
EDMA_CH_DIR_MP3_gc = 0x06<<0 ; If Peripheral Ch. (Per ==> Mem), 2-byte 'match' (data-1: ADDRL followed by data-2: ADDRH), else reserved conf.

; Destination addressing mode
EDMA_CH_DESTDIR_FIXED_gc = 0x00<<0 ; Fixed
EDMA_CH_DESTDIR_INC_gc = 0x01<<0 ; Increment
EDMA_CH_DESTDIR_MP1_gc = 0x04<<0 ; 1-byte 'mask-match' (data: ADDRL, mask: ADDRH)
EDMA_CH_DESTDIR_MP2_gc = 0x05<<0 ; 1-byte 'OR-match' (data-1: ADDRL OR data-2: ADDRH)
EDMA_CH_DESTDIR_MP3_gc = 0x06<<0 ; 2-byte 'match' (data1: ADDRL followed by data2: ADDRH)

; Transfer trigger source
EDMA_CH_TRIGSRC_OFF_gc = 0x00<<0 ; Software triggers only
EDMA_CH_TRIGSRC_EVSYS_CH0_gc = 0x01<<0 ; Event CH0 as trigger (Standard Channels Only)
EDMA_CH_TRIGSRC_EVSYS_CH1_gc = 0x02<<0 ; Event CH1 as trigger (Standard Channels Only)
EDMA_CH_TRIGSRC_EVSYS_CH2_gc = 0x03<<0 ; Event CH2 as trigger (Standard Channels Only)
EDMA_CH_TRIGSRC_ADCA_CH0_gc = 0x10<<0 ; ADCA CH0 as trigger
EDMA_CH_TRIGSRC_DACA_CH0_gc = 0x15<<0 ; DACA CH0 as trigger
EDMA_CH_TRIGSRC_DACA_CH1_gc = 0x16<<0 ; DACA CH1 as trigger
EDMA_CH_TRIGSRC_TCC4_OVF_gc = 0x40<<0 ; TCC4 overflow/underflow as trigger (Standard Channels Only)
EDMA_CH_TRIGSRC_TCC4_ERR_gc = 0x41<<0 ; TCC4 error as trigger (Standard Channels Only)
EDMA_CH_TRIGSRC_TCC4_CCA_gc = 0x42<<0 ; TCC4 compare or capture channel A as trigger (Standard Channels Only)
EDMA_CH_TRIGSRC_TCC4_CCB_gc = 0x43<<0 ; TCC4 compare or capture channel B as trigger (Standard Channels Only)
EDMA_CH_TRIGSRC_TCC4_CCC_gc = 0x44<<0 ; TCC4 compare or capture channel C as trigger (Standard Channels Only)
EDMA_CH_TRIGSRC_TCC4_CCD_gc = 0x45<<0 ; TCC4 compare or capture channel D as trigger (Standard Channels Only)
EDMA_CH_TRIGSRC_TCC5_OVF_gc = 0x46<<0 ; TCC5 overflow/underflow as trigger (Standard Channels Only)
EDMA_CH_TRIGSRC_TCC5_ERR_gc = 0x47<<0 ; TCC5 error as trigger (Standard Channels Only)
EDMA_CH_TRIGSRC_TCC5_CCA_gc = 0x48<<0 ; TCC5 compare or capture channel A as trigger (Standard Channels Only)
EDMA_CH_TRIGSRC_TCC5_CCB_gc = 0x49<<0 ; TCC5 compare or capture channel B as trigger (Standard Channels Only)
EDMA_CH_TRIGSRC_SPIC_RXC_gc = 0x4A<<0 ; SPI C transfer complete (SPI Standard Mode) or SPI C receive complete as trigger (SPI Buffer Modes)
EDMA_CH_TRIGSRC_SPIC_DRE_gc = 0x4B<<0 ; SPI C transfer complete (SPI Standard Mode) or SPI C data register empty as trigger (SPI Buffer modes)
EDMA_CH_TRIGSRC_USARTC0_RXC_gc = 0x4C<<0 ; USART C0 receive complete as trigger
EDMA_CH_TRIGSRC_USARTC0_DRE_gc = 0x4D<<0 ; USART C0 data register empty as trigger
EDMA_CH_TRIGSRC_TCD5_OVF_gc = 0x66<<0 ; TCD5 overflow/underflow as trigger (Standard Channels Only)
EDMA_CH_TRIGSRC_TCD5_ERR_gc = 0x67<<0 ; TCD5 error as trigger (Standard Channels Only)
EDMA_CH_TRIGSRC_TCD5_CCA_gc = 0x68<<0 ; TCD5 compare or capture channel A as trigger (Standard Channels Only)
EDMA_CH_TRIGSRC_TCD5_CCB_gc = 0x69<<0 ; TCD5 compare or capture channel B as trigger (Standard Channels Only)
EDMA_CH_TRIGSRC_USARTD0_RXC_gc = 0x6C<<0 ; USART D0 receive complete as trigger
EDMA_CH_TRIGSRC_USARTD0_DRE_gc = 0x6D<<0 ; USART D0 data register empty as trigger

; Interrupt level
EDMA_CH_INTLVL_OFF_gc = 0x00<<0 ; Interrupt disabled
EDMA_CH_INTLVL_LO_gc = 0x01<<0 ; Low level
EDMA_CH_INTLVL_MED_gc = 0x02<<0 ; Medium level
EDMA_CH_INTLVL_HI_gc = 0x03<<0 ; High level


;*************************************************************************
;** EVSYS - Event System
;*************************************************************************

; EVSYS_CH0MUX masks
EVSYS_CHMUX_gm = 0xFF ; Event Channel 0 Multiplexer group mask
EVSYS_CHMUX_gp = 0 ; Event Channel 0 Multiplexer group position
EVSYS_CHMUX0_bm = 1<<0 ; Event Channel 0 Multiplexer bit 0 mask
EVSYS_CHMUX0_bp = 0 ; Event Channel 0 Multiplexer bit 0 position
EVSYS_CHMUX1_bm = 1<<1 ; Event Channel 0 Multiplexer bit 1 mask
EVSYS_CHMUX1_bp = 1 ; Event Channel 0 Multiplexer bit 1 position
EVSYS_CHMUX2_bm = 1<<2 ; Event Channel 0 Multiplexer bit 2 mask
EVSYS_CHMUX2_bp = 2 ; Event Channel 0 Multiplexer bit 2 position
EVSYS_CHMUX3_bm = 1<<3 ; Event Channel 0 Multiplexer bit 3 mask
EVSYS_CHMUX3_bp = 3 ; Event Channel 0 Multiplexer bit 3 position
EVSYS_CHMUX4_bm = 1<<4 ; Event Channel 0 Multiplexer bit 4 mask
EVSYS_CHMUX4_bp = 4 ; Event Channel 0 Multiplexer bit 4 position
EVSYS_CHMUX5_bm = 1<<5 ; Event Channel 0 Multiplexer bit 5 mask
EVSYS_CHMUX5_bp = 5 ; Event Channel 0 Multiplexer bit 5 position
EVSYS_CHMUX6_bm = 1<<6 ; Event Channel 0 Multiplexer bit 6 mask
EVSYS_CHMUX6_bp = 6 ; Event Channel 0 Multiplexer bit 6 position
EVSYS_CHMUX7_bm = 1<<7 ; Event Channel 0 Multiplexer bit 7 mask
EVSYS_CHMUX7_bp = 7 ; Event Channel 0 Multiplexer bit 7 position

; EVSYS_CH1MUX masks
; Masks for EVSYS_CHMUX already defined

; EVSYS_CH2MUX masks
; Masks for EVSYS_CHMUX already defined

; EVSYS_CH3MUX masks
; Masks for EVSYS_CHMUX already defined

; EVSYS_CH4MUX masks
; Masks for EVSYS_CHMUX already defined

; EVSYS_CH5MUX masks
; Masks for EVSYS_CHMUX already defined

; EVSYS_CH6MUX masks
; Masks for EVSYS_CHMUX already defined

; EVSYS_CH7MUX masks
; Masks for EVSYS_CHMUX already defined

; EVSYS_CH0CTRL masks
EVSYS_ROTARY_bm = 0x80 ; Rotary Decoder Enable bit mask
EVSYS_ROTARY_bp = 7 ; Rotary Decoder Enable bit position
EVSYS_QDIRM_gm = 0x60 ; Quadrature Decoder Index Recognition Mode group mask
EVSYS_QDIRM_gp = 5 ; Quadrature Decoder Index Recognition Mode group position
EVSYS_QDIRM0_bm = 1<<5 ; Quadrature Decoder Index Recognition Mode bit 0 mask
EVSYS_QDIRM0_bp = 5 ; Quadrature Decoder Index Recognition Mode bit 0 position
EVSYS_QDIRM1_bm = 1<<6 ; Quadrature Decoder Index Recognition Mode bit 1 mask
EVSYS_QDIRM1_bp = 6 ; Quadrature Decoder Index Recognition Mode bit 1 position
EVSYS_QDIEN_bm = 0x10 ; Quadrature Decoder Index Enable bit mask
EVSYS_QDIEN_bp = 4 ; Quadrature Decoder Index Enable bit position
EVSYS_QDEN_bm = 0x08 ; Quadrature Decoder Enable bit mask
EVSYS_QDEN_bp = 3 ; Quadrature Decoder Enable bit position
EVSYS_DIGFILT_gm = 0x07 ; Digital Filter group mask
EVSYS_DIGFILT_gp = 0 ; Digital Filter group position
EVSYS_DIGFILT0_bm = 1<<0 ; Digital Filter bit 0 mask
EVSYS_DIGFILT0_bp = 0 ; Digital Filter bit 0 position
EVSYS_DIGFILT1_bm = 1<<1 ; Digital Filter bit 1 mask
EVSYS_DIGFILT1_bp = 1 ; Digital Filter bit 1 position
EVSYS_DIGFILT2_bm = 1<<2 ; Digital Filter bit 2 mask
EVSYS_DIGFILT2_bp = 2 ; Digital Filter bit 2 position

; EVSYS_CH1CTRL masks
; Masks for EVSYS_DIGFILT already defined

; EVSYS_CH2CTRL masks
; Masks for EVSYS_DIGFILT already defined

; EVSYS_CH3CTRL masks
; Masks for EVSYS_DIGFILT already defined

; EVSYS_CH4CTRL masks
; Masks for EVSYS_DIGFILT already defined

; EVSYS_CH5CTRL masks
; Masks for EVSYS_DIGFILT already defined

; EVSYS_CH6CTRL masks
; Masks for EVSYS_DIGFILT already defined

; EVSYS_CH7CTRL masks
; Masks for EVSYS_DIGFILT already defined

; EVSYS_DFCTRL masks
EVSYS_PRESCFILT_gm = 0xF0 ; Prescaler Filter group mask
EVSYS_PRESCFILT_gp = 4 ; Prescaler Filter group position
EVSYS_PRESCFILT0_bm = 1<<4 ; Prescaler Filter bit 0 mask
EVSYS_PRESCFILT0_bp = 4 ; Prescaler Filter bit 0 position
EVSYS_PRESCFILT1_bm = 1<<5 ; Prescaler Filter bit 1 mask
EVSYS_PRESCFILT1_bp = 5 ; Prescaler Filter bit 1 position
EVSYS_PRESCFILT2_bm = 1<<6 ; Prescaler Filter bit 2 mask
EVSYS_PRESCFILT2_bp = 6 ; Prescaler Filter bit 2 position
EVSYS_PRESCFILT3_bm = 1<<7 ; Prescaler Filter bit 3 mask
EVSYS_PRESCFILT3_bp = 7 ; Prescaler Filter bit 3 position
EVSYS_FILTSEL_bm = 0x08 ; Prescaler Filter Select bit mask
EVSYS_FILTSEL_bp = 3 ; Prescaler Filter Select bit position
EVSYS_PRESC_gm = 0x07 ; Prescaler group mask
EVSYS_PRESC_gp = 0 ; Prescaler group position
EVSYS_PRESC0_bm = 1<<0 ; Prescaler bit 0 mask
EVSYS_PRESC0_bp = 0 ; Prescaler bit 0 position
EVSYS_PRESC1_bm = 1<<1 ; Prescaler bit 1 mask
EVSYS_PRESC1_bp = 1 ; Prescaler bit 1 position
EVSYS_PRESC2_bm = 1<<2 ; Prescaler bit 2 mask
EVSYS_PRESC2_bp = 2 ; Prescaler bit 2 position

; Event Channel multiplexer input selection
EVSYS_CHMUX_OFF_gc = 0x00<<0 ; Off
EVSYS_CHMUX_RTC_OVF_gc = 0x08<<0 ; RTC Overflow
EVSYS_CHMUX_RTC_CMP_gc = 0x09<<0 ; RTC Compare Match
EVSYS_CHMUX_ACA_CH0_gc = 0x10<<0 ; Analog Comparator A Channel 0
EVSYS_CHMUX_ACA_CH1_gc = 0x11<<0 ; Analog Comparator A Channel 1
EVSYS_CHMUX_ACA_WIN_gc = 0x12<<0 ; Analog Comparator A Window
EVSYS_CHMUX_ADCA_CH0_gc = 0x20<<0 ; ADC A Channel 0
EVSYS_CHMUX_PORTA_PIN0_gc = 0x50<<0 ; Port A, Pin0
EVSYS_CHMUX_PORTA_PIN1_gc = 0x51<<0 ; Port A, Pin1
EVSYS_CHMUX_PORTA_PIN2_gc = 0x52<<0 ; Port A, Pin2
EVSYS_CHMUX_PORTA_PIN3_gc = 0x53<<0 ; Port A, Pin3
EVSYS_CHMUX_PORTA_PIN4_gc = 0x54<<0 ; Port A, Pin4
EVSYS_CHMUX_PORTA_PIN5_gc = 0x55<<0 ; Port A, Pin5
EVSYS_CHMUX_PORTA_PIN6_gc = 0x56<<0 ; Port A, Pin6
EVSYS_CHMUX_PORTA_PIN7_gc = 0x57<<0 ; Port A, Pin7
EVSYS_CHMUX_PORTC_PIN0_gc = 0x60<<0 ; Port C, Pin0
EVSYS_CHMUX_PORTC_PIN1_gc = 0x61<<0 ; Port C, Pin1
EVSYS_CHMUX_PORTC_PIN2_gc = 0x62<<0 ; Port C, Pin2
EVSYS_CHMUX_PORTC_PIN3_gc = 0x63<<0 ; Port C, Pin3
EVSYS_CHMUX_PORTC_PIN4_gc = 0x64<<0 ; Port C, Pin4
EVSYS_CHMUX_PORTC_PIN5_gc = 0x65<<0 ; Port C, Pin5
EVSYS_CHMUX_PORTC_PIN6_gc = 0x66<<0 ; Port C, Pin6
EVSYS_CHMUX_PORTC_PIN7_gc = 0x67<<0 ; Port C, Pin7
EVSYS_CHMUX_PORTD_PIN0_gc = 0x68<<0 ; Port D, Pin0
EVSYS_CHMUX_PORTD_PIN1_gc = 0x69<<0 ; Port D, Pin1
EVSYS_CHMUX_PORTD_PIN2_gc = 0x6A<<0 ; Port D, Pin2
EVSYS_CHMUX_PORTD_PIN3_gc = 0x6B<<0 ; Port D, Pin3
EVSYS_CHMUX_PORTD_PIN4_gc = 0x6C<<0 ; Port D, Pin4
EVSYS_CHMUX_PORTD_PIN5_gc = 0x6D<<0 ; Port D, Pin5
EVSYS_CHMUX_PORTD_PIN6_gc = 0x6E<<0 ; Port D, Pin6
EVSYS_CHMUX_PORTD_PIN7_gc = 0x6F<<0 ; Port D, Pin7
EVSYS_CHMUX_PRESCALER_1_gc = 0x80<<0 ; Prescaler, divide by 1
EVSYS_CHMUX_PRESCALER_2_gc = 0x81<<0 ; Prescaler, divide by 2
EVSYS_CHMUX_PRESCALER_4_gc = 0x82<<0 ; Prescaler, divide by 4
EVSYS_CHMUX_PRESCALER_8_gc = 0x83<<0 ; Prescaler, divide by 8
EVSYS_CHMUX_PRESCALER_16_gc = 0x84<<0 ; Prescaler, divide by 16
EVSYS_CHMUX_PRESCALER_32_gc = 0x85<<0 ; Prescaler, divide by 32
EVSYS_CHMUX_PRESCALER_64_gc = 0x86<<0 ; Prescaler, divide by 64
EVSYS_CHMUX_PRESCALER_128_gc = 0x87<<0 ; Prescaler, divide by 128
EVSYS_CHMUX_PRESCALER_256_gc = 0x88<<0 ; Prescaler, divide by 256
EVSYS_CHMUX_PRESCALER_512_gc = 0x89<<0 ; Prescaler, divide by 512
EVSYS_CHMUX_PRESCALER_1024_gc = 0x8A<<0 ; Prescaler, divide by 1024
EVSYS_CHMUX_PRESCALER_2048_gc = 0x8B<<0 ; Prescaler, divide by 2048
EVSYS_CHMUX_PRESCALER_4096_gc = 0x8C<<0 ; Prescaler, divide by 4096
EVSYS_CHMUX_PRESCALER_8192_gc = 0x8D<<0 ; Prescaler, divide by 8192
EVSYS_CHMUX_PRESCALER_16384_gc = 0x8E<<0 ; Prescaler, divide by 16384
EVSYS_CHMUX_PRESCALER_32768_gc = 0x8F<<0 ; Prescaler, divide by 32768
EVSYS_CHMUX_XCL_UNF0_gc = 0xB0<<0 ; XCL BTC0 underflow
EVSYS_CHMUX_XCL_UNF1_gc = 0xB1<<0 ; XCL BTC1 underflow
EVSYS_CHMUX_XCL_CC0_gc = 0xB2<<0 ; XCL BTC0 capture or compare
EVSYS_CHMUX_XCL_CC1_gc = 0xB3<<0 ; XCL BTC0 capture or compare
EVSYS_CHMUX_XCL_PEC0_gc = 0xB4<<0 ; XCL PEC0 restart
EVSYS_CHMUX_XCL_PEC1_gc = 0xB5<<0 ; XCL PEC1 restart
EVSYS_CHMUX_XCL_LUT0_gc = 0xB6<<0 ; XCL LUT0 output
EVSYS_CHMUX_XCL_LUT1_gc = 0xB7<<0 ; XCL LUT1 output
EVSYS_CHMUX_TCC4_OVF_gc = 0xC0<<0 ; Timer/Counter C4 Overflow
EVSYS_CHMUX_TCC4_ERR_gc = 0xC1<<0 ; Timer/Counter C4 Error
EVSYS_CHMUX_TCC4_CCA_gc = 0xC4<<0 ; Timer/Counter C4 Compare or Capture A
EVSYS_CHMUX_TCC4_CCB_gc = 0xC5<<0 ; Timer/Counter C4 Compare or Capture B
EVSYS_CHMUX_TCC4_CCC_gc = 0xC6<<0 ; Timer/Counter C4 Compare or Capture C
EVSYS_CHMUX_TCC4_CCD_gc = 0xC7<<0 ; Timer/Counter C4 Compare or Capture D
EVSYS_CHMUX_TCC5_OVF_gc = 0xC8<<0 ; Timer/Counter C5 Overflow
EVSYS_CHMUX_TCC5_ERR_gc = 0xC9<<0 ; Timer/Counter C5 Error
EVSYS_CHMUX_TCC5_CCA_gc = 0xCC<<0 ; Timer/Counter C5 Compare or Capture A
EVSYS_CHMUX_TCC5_CCB_gc = 0xCD<<0 ; Timer/Counter C5 Compare or Capture B
EVSYS_CHMUX_TCD5_OVF_gc = 0xD8<<0 ; Timer/Counter D5 Overflow
EVSYS_CHMUX_TCD5_ERR_gc = 0xD9<<0 ; Timer/Counter D5 Error
EVSYS_CHMUX_TCD5_CCA_gc = 0xDC<<0 ; Timer/Counter D5 Compare or Capture A
EVSYS_CHMUX_TCD5_CCB_gc = 0xDD<<0 ; Timer/Counter D5 Compare or Capture B

; Digital filter coefficient
EVSYS_DIGFILT_1SAMPLE_gc = 0x00<<0 ; 1 SAMPLE
EVSYS_DIGFILT_2SAMPLES_gc = 0x01<<0 ; 2 SAMPLES
EVSYS_DIGFILT_3SAMPLES_gc = 0x02<<0 ; 3 SAMPLES
EVSYS_DIGFILT_4SAMPLES_gc = 0x03<<0 ; 4 SAMPLES
EVSYS_DIGFILT_5SAMPLES_gc = 0x04<<0 ; 5 SAMPLES
EVSYS_DIGFILT_6SAMPLES_gc = 0x05<<0 ; 6 SAMPLES
EVSYS_DIGFILT_7SAMPLES_gc = 0x06<<0 ; 7 SAMPLES
EVSYS_DIGFILT_8SAMPLES_gc = 0x07<<0 ; 8 SAMPLES

; Prescaler Filter
EVSYS_PRESCFILT_CH04_gc = 0x01<<4 ; Enable prescaler filter for either channel 0 or 4
EVSYS_PRESCFILT_CH15_gc = 0x08<<4 ; Enable prescaler filter for either channel 1 or 5
EVSYS_PRESCFILT_CH26_gc = 0x40<<4 ; Enable prescaler filter for either channel 2 or 6
EVSYS_PRESCFILT_CH37_gc = 0x3E8<<4 ; Enable prescaler filter for either channel 3 or 7

; Prescaler
EVSYS_PRESCALER_CLKPER_8_gc = 0x00<<0 ; CLKPER, divide by 8
EVSYS_PRESCALER_CLKPER_64_gc = 0x01<<0 ; CLKPER, divide by 64
EVSYS_PRESCALER_CLKPER_512_gc = 0x02<<0 ; CLKPER, divide by 512
EVSYS_PRESCALER_CLKPER_4096_gc = 0x03<<0 ; CLKPER, divide by 4096
EVSYS_PRESCALER_CLKPER_32768_gc = 0x04<<0 ; CLKPER, divide by 32768


;*************************************************************************
;** NVM - Non Volatile Memory Controller
;*************************************************************************

; NVM_CMD masks
NVM_CMD_gm = 0x7F ; Command group mask
NVM_CMD_gp = 0 ; Command group position
NVM_CMD0_bm = 1<<0 ; Command bit 0 mask
NVM_CMD0_bp = 0 ; Command bit 0 position
NVM_CMD1_bm = 1<<1 ; Command bit 1 mask
NVM_CMD1_bp = 1 ; Command bit 1 position
NVM_CMD2_bm = 1<<2 ; Command bit 2 mask
NVM_CMD2_bp = 2 ; Command bit 2 position
NVM_CMD3_bm = 1<<3 ; Command bit 3 mask
NVM_CMD3_bp = 3 ; Command bit 3 position
NVM_CMD4_bm = 1<<4 ; Command bit 4 mask
NVM_CMD4_bp = 4 ; Command bit 4 position
NVM_CMD5_bm = 1<<5 ; Command bit 5 mask
NVM_CMD5_bp = 5 ; Command bit 5 position
NVM_CMD6_bm = 1<<6 ; Command bit 6 mask
NVM_CMD6_bp = 6 ; Command bit 6 position

; NVM_CTRLA masks
NVM_CMDEX_bm = 0x01 ; Command Execute bit mask
NVM_CMDEX_bp = 0 ; Command Execute bit position

; NVM_CTRLB masks
NVM_EPRM_bm = 0x02 ; EEPROM Power Reduction Enable bit mask
NVM_EPRM_bp = 1 ; EEPROM Power Reduction Enable bit position
NVM_SPMLOCK_bm = 0x01 ; SPM Lock bit mask
NVM_SPMLOCK_bp = 0 ; SPM Lock bit position

; NVM_INTCTRL masks
NVM_SPMLVL_gm = 0x0C ; SPM Interrupt Level group mask
NVM_SPMLVL_gp = 2 ; SPM Interrupt Level group position
NVM_SPMLVL0_bm = 1<<2 ; SPM Interrupt Level bit 0 mask
NVM_SPMLVL0_bp = 2 ; SPM Interrupt Level bit 0 position
NVM_SPMLVL1_bm = 1<<3 ; SPM Interrupt Level bit 1 mask
NVM_SPMLVL1_bp = 3 ; SPM Interrupt Level bit 1 position
NVM_EELVL_gm = 0x03 ; EEPROM Interrupt Level group mask
NVM_EELVL_gp = 0 ; EEPROM Interrupt Level group position
NVM_EELVL0_bm = 1<<0 ; EEPROM Interrupt Level bit 0 mask
NVM_EELVL0_bp = 0 ; EEPROM Interrupt Level bit 0 position
NVM_EELVL1_bm = 1<<1 ; EEPROM Interrupt Level bit 1 mask
NVM_EELVL1_bp = 1 ; EEPROM Interrupt Level bit 1 position

; NVM_STATUS masks
NVM_NVMBUSY_bm = 0x80 ; Non-volatile Memory Busy bit mask
NVM_NVMBUSY_bp = 7 ; Non-volatile Memory Busy bit position
NVM_FBUSY_bm = 0x40 ; Flash Memory Busy bit mask
NVM_FBUSY_bp = 6 ; Flash Memory Busy bit position
NVM_EELOAD_bm = 0x02 ; EEPROM Page Buffer Active Loading bit mask
NVM_EELOAD_bp = 1 ; EEPROM Page Buffer Active Loading bit position
NVM_FLOAD_bm = 0x01 ; Flash Page Buffer Active Loading bit mask
NVM_FLOAD_bp = 0 ; Flash Page Buffer Active Loading bit position

; NVM_LOCKBITS masks
NVM_BLBB_gm = 0xC0 ; Boot Lock Bits - Boot Section group mask
NVM_BLBB_gp = 6 ; Boot Lock Bits - Boot Section group position
NVM_BLBB0_bm = 1<<6 ; Boot Lock Bits - Boot Section bit 0 mask
NVM_BLBB0_bp = 6 ; Boot Lock Bits - Boot Section bit 0 position
NVM_BLBB1_bm = 1<<7 ; Boot Lock Bits - Boot Section bit 1 mask
NVM_BLBB1_bp = 7 ; Boot Lock Bits - Boot Section bit 1 position
NVM_BLBA_gm = 0x30 ; Boot Lock Bits - Application Section group mask
NVM_BLBA_gp = 4 ; Boot Lock Bits - Application Section group position
NVM_BLBA0_bm = 1<<4 ; Boot Lock Bits - Application Section bit 0 mask
NVM_BLBA0_bp = 4 ; Boot Lock Bits - Application Section bit 0 position
NVM_BLBA1_bm = 1<<5 ; Boot Lock Bits - Application Section bit 1 mask
NVM_BLBA1_bp = 5 ; Boot Lock Bits - Application Section bit 1 position
NVM_BLBAT_gm = 0x0C ; Boot Lock Bits - Application Table group mask
NVM_BLBAT_gp = 2 ; Boot Lock Bits - Application Table group position
NVM_BLBAT0_bm = 1<<2 ; Boot Lock Bits - Application Table bit 0 mask
NVM_BLBAT0_bp = 2 ; Boot Lock Bits - Application Table bit 0 position
NVM_BLBAT1_bm = 1<<3 ; Boot Lock Bits - Application Table bit 1 mask
NVM_BLBAT1_bp = 3 ; Boot Lock Bits - Application Table bit 1 position
NVM_LB_gm = 0x03 ; Lock Bits group mask
NVM_LB_gp = 0 ; Lock Bits group position
NVM_LB0_bm = 1<<0 ; Lock Bits bit 0 mask
NVM_LB0_bp = 0 ; Lock Bits bit 0 position
NVM_LB1_bm = 1<<1 ; Lock Bits bit 1 mask
NVM_LB1_bp = 1 ; Lock Bits bit 1 position

; NVM Command
NVM_CMD_NO_OPERATION_gc = 0x00<<0 ; Noop/Ordinary LPM
NVM_CMD_READ_USER_SIG_ROW_gc = 0x01<<0 ; Read user signature row
NVM_CMD_READ_CALIB_ROW_gc = 0x02<<0 ; Read calibration row
NVM_CMD_READ_FUSES_gc = 0x07<<0 ; Read fuse byte
NVM_CMD_WRITE_LOCK_BITS_gc = 0x08<<0 ; Write lock bits
NVM_CMD_ERASE_USER_SIG_ROW_gc = 0x18<<0 ; Erase user signature row
NVM_CMD_WRITE_USER_SIG_ROW_gc = 0x1A<<0 ; Write user signature row
NVM_CMD_ERASE_APP_gc = 0x20<<0 ; Erase Application Section
NVM_CMD_ERASE_APP_PAGE_gc = 0x22<<0 ; Erase Application Section page
NVM_CMD_LOAD_FLASH_BUFFER_gc = 0x23<<0 ; Load Flash page buffer
NVM_CMD_WRITE_APP_PAGE_gc = 0x24<<0 ; Write Application Section page
NVM_CMD_ERASE_WRITE_APP_PAGE_gc = 0x25<<0 ; Erase-and-write Application Section page
NVM_CMD_ERASE_FLASH_BUFFER_gc = 0x26<<0 ; Erase/flush Flash page buffer
NVM_CMD_ERASE_BOOT_PAGE_gc = 0x2A<<0 ; Erase Boot Section page
NVM_CMD_ERASE_FLASH_PAGE_gc = 0x2B<<0 ; Erase Flash Page
NVM_CMD_WRITE_BOOT_PAGE_gc = 0x2C<<0 ; Write Boot Section page
NVM_CMD_ERASE_WRITE_BOOT_PAGE_gc = 0x2D<<0 ; Erase-and-write Boot Section page
NVM_CMD_WRITE_FLASH_PAGE_gc = 0x2E<<0 ; Write Flash Page
NVM_CMD_ERASE_WRITE_FLASH_PAGE_gc = 0x2F<<0 ; Erase-and-write Flash Page
NVM_CMD_ERASE_EEPROM_gc = 0x30<<0 ; Erase EEPROM
NVM_CMD_ERASE_EEPROM_PAGE_gc = 0x32<<0 ; Erase EEPROM page
NVM_CMD_WRITE_EEPROM_PAGE_gc = 0x34<<0 ; Write EEPROM page
NVM_CMD_ERASE_WRITE_EEPROM_PAGE_gc = 0x35<<0 ; Erase-and-write EEPROM page
NVM_CMD_ERASE_EEPROM_BUFFER_gc = 0x36<<0 ; Erase/flush EEPROM page buffer
NVM_CMD_APP_CRC_gc = 0x38<<0 ; Application section CRC
NVM_CMD_BOOT_CRC_gc = 0x39<<0 ;  Boot Section CRC
NVM_CMD_FLASH_RANGE_CRC_gc = 0x3A<<0 ; Flash Range CRC
NVM_CMD_CHIP_ERASE_gc = 0x40<<0 ; Erase Chip
NVM_CMD_READ_NVM_gc = 0x43<<0 ; Read NVM
NVM_CMD_WRITE_FUSE_gc = 0x4C<<0 ; Write Fuse byte
NVM_CMD_ERASE_BOOT_gc = 0x68<<0 ; Erase Boot Section
NVM_CMD_FLASH_CRC_gc = 0x78<<0 ; Flash CRC

; SPM ready interrupt level
NVM_SPMLVL_OFF_gc = 0x00<<2 ; Interrupt disabled
NVM_SPMLVL_LO_gc = 0x01<<2 ; Low level
NVM_SPMLVL_MED_gc = 0x02<<2 ; Medium level
NVM_SPMLVL_HI_gc = 0x03<<2 ; High level

; EEPROM ready interrupt level
NVM_EELVL_OFF_gc = 0x00<<0 ; Interrupt disabled
NVM_EELVL_LO_gc = 0x01<<0 ; Low level
NVM_EELVL_MED_gc = 0x02<<0 ; Medium level
NVM_EELVL_HI_gc = 0x03<<0 ; High level

; Boot lock bits - boot setcion
NVM_BLBB_RWLOCK_gc = 0x00<<6 ; Read and write not allowed
NVM_BLBB_RLOCK_gc = 0x01<<6 ; Read not allowed
NVM_BLBB_WLOCK_gc = 0x02<<6 ; Write not allowed
NVM_BLBB_NOLOCK_gc = 0x03<<6 ; No locks

; Boot lock bits - application section
NVM_BLBA_RWLOCK_gc = 0x00<<4 ; Read and write not allowed
NVM_BLBA_RLOCK_gc = 0x01<<4 ; Read not allowed
NVM_BLBA_WLOCK_gc = 0x02<<4 ; Write not allowed
NVM_BLBA_NOLOCK_gc = 0x03<<4 ; No locks

; Boot lock bits - application table section
NVM_BLBAT_RWLOCK_gc = 0x00<<2 ; Read and write not allowed
NVM_BLBAT_RLOCK_gc = 0x01<<2 ; Read not allowed
NVM_BLBAT_WLOCK_gc = 0x02<<2 ; Write not allowed
NVM_BLBAT_NOLOCK_gc = 0x03<<2 ; No locks

; Lock bits
NVM_LB_RWLOCK_gc = 0x00<<0 ; Read and write not allowed
NVM_LB_WLOCK_gc = 0x02<<0 ; Write not allowed
NVM_LB_NOLOCK_gc = 0x03<<0 ; No locks


;*************************************************************************
;** ADC - Analog/Digital Converter
;*************************************************************************

; ADC_CH_CTRL masks
ADC_CH_START_bm = 0x80 ; Channel Start Conversion bit mask
ADC_CH_START_bp = 7 ; Channel Start Conversion bit position
ADC_CH_GAIN_gm = 0x1C ; Gain Factor group mask
ADC_CH_GAIN_gp = 2 ; Gain Factor group position
ADC_CH_GAIN0_bm = 1<<2 ; Gain Factor bit 0 mask
ADC_CH_GAIN0_bp = 2 ; Gain Factor bit 0 position
ADC_CH_GAIN1_bm = 1<<3 ; Gain Factor bit 1 mask
ADC_CH_GAIN1_bp = 3 ; Gain Factor bit 1 position
ADC_CH_GAIN2_bm = 1<<4 ; Gain Factor bit 2 mask
ADC_CH_GAIN2_bp = 4 ; Gain Factor bit 2 position
ADC_CH_INPUTMODE_gm = 0x03 ; Input Mode Select group mask
ADC_CH_INPUTMODE_gp = 0 ; Input Mode Select group position
ADC_CH_INPUTMODE0_bm = 1<<0 ; Input Mode Select bit 0 mask
ADC_CH_INPUTMODE0_bp = 0 ; Input Mode Select bit 0 position
ADC_CH_INPUTMODE1_bm = 1<<1 ; Input Mode Select bit 1 mask
ADC_CH_INPUTMODE1_bp = 1 ; Input Mode Select bit 1 position

; ADC_CH_MUXCTRL masks
ADC_CH_MUXPOS_gm = 0x78 ; MUX selection on Positive ADC Input group mask
ADC_CH_MUXPOS_gp = 3 ; MUX selection on Positive ADC Input group position
ADC_CH_MUXPOS0_bm = 1<<3 ; MUX selection on Positive ADC Input bit 0 mask
ADC_CH_MUXPOS0_bp = 3 ; MUX selection on Positive ADC Input bit 0 position
ADC_CH_MUXPOS1_bm = 1<<4 ; MUX selection on Positive ADC Input bit 1 mask
ADC_CH_MUXPOS1_bp = 4 ; MUX selection on Positive ADC Input bit 1 position
ADC_CH_MUXPOS2_bm = 1<<5 ; MUX selection on Positive ADC Input bit 2 mask
ADC_CH_MUXPOS2_bp = 5 ; MUX selection on Positive ADC Input bit 2 position
ADC_CH_MUXPOS3_bm = 1<<6 ; MUX selection on Positive ADC Input bit 3 mask
ADC_CH_MUXPOS3_bp = 6 ; MUX selection on Positive ADC Input bit 3 position
ADC_CH_MUXINT_gm = 0x78 ; MUX selection on Internal ADC Input group mask
ADC_CH_MUXINT_gp = 3 ; MUX selection on Internal ADC Input group position
ADC_CH_MUXINT0_bm = 1<<3 ; MUX selection on Internal ADC Input bit 0 mask
ADC_CH_MUXINT0_bp = 3 ; MUX selection on Internal ADC Input bit 0 position
ADC_CH_MUXINT1_bm = 1<<4 ; MUX selection on Internal ADC Input bit 1 mask
ADC_CH_MUXINT1_bp = 4 ; MUX selection on Internal ADC Input bit 1 position
ADC_CH_MUXINT2_bm = 1<<5 ; MUX selection on Internal ADC Input bit 2 mask
ADC_CH_MUXINT2_bp = 5 ; MUX selection on Internal ADC Input bit 2 position
ADC_CH_MUXINT3_bm = 1<<6 ; MUX selection on Internal ADC Input bit 3 mask
ADC_CH_MUXINT3_bp = 6 ; MUX selection on Internal ADC Input bit 3 position
ADC_CH_MUXNEG_gm = 0x03 ; MUX selection on Negative ADC Input group mask
ADC_CH_MUXNEG_gp = 0 ; MUX selection on Negative ADC Input group position
ADC_CH_MUXNEG0_bm = 1<<0 ; MUX selection on Negative ADC Input bit 0 mask
ADC_CH_MUXNEG0_bp = 0 ; MUX selection on Negative ADC Input bit 0 position
ADC_CH_MUXNEG1_bm = 1<<1 ; MUX selection on Negative ADC Input bit 1 mask
ADC_CH_MUXNEG1_bp = 1 ; MUX selection on Negative ADC Input bit 1 position
ADC_CH_MUXNEGL_gm = 0x03 ; MUX selection on Negative ADC Input Gain on 4 LSB pins group mask
ADC_CH_MUXNEGL_gp = 0 ; MUX selection on Negative ADC Input Gain on 4 LSB pins group position
ADC_CH_MUXNEGL0_bm = 1<<0 ; MUX selection on Negative ADC Input Gain on 4 LSB pins bit 0 mask
ADC_CH_MUXNEGL0_bp = 0 ; MUX selection on Negative ADC Input Gain on 4 LSB pins bit 0 position
ADC_CH_MUXNEGL1_bm = 1<<1 ; MUX selection on Negative ADC Input Gain on 4 LSB pins bit 1 mask
ADC_CH_MUXNEGL1_bp = 1 ; MUX selection on Negative ADC Input Gain on 4 LSB pins bit 1 position
ADC_CH_MUXNEGH_gm = 0x03 ; MUX selection on Negative ADC Input Gain on 4 MSB pins group mask
ADC_CH_MUXNEGH_gp = 0 ; MUX selection on Negative ADC Input Gain on 4 MSB pins group position
ADC_CH_MUXNEGH0_bm = 1<<0 ; MUX selection on Negative ADC Input Gain on 4 MSB pins bit 0 mask
ADC_CH_MUXNEGH0_bp = 0 ; MUX selection on Negative ADC Input Gain on 4 MSB pins bit 0 position
ADC_CH_MUXNEGH1_bm = 1<<1 ; MUX selection on Negative ADC Input Gain on 4 MSB pins bit 1 mask
ADC_CH_MUXNEGH1_bp = 1 ; MUX selection on Negative ADC Input Gain on 4 MSB pins bit 1 position

; ADC_CH_INTCTRL masks
ADC_CH_INTMODE_gm = 0x0C ; Interrupt Mode group mask
ADC_CH_INTMODE_gp = 2 ; Interrupt Mode group position
ADC_CH_INTMODE0_bm = 1<<2 ; Interrupt Mode bit 0 mask
ADC_CH_INTMODE0_bp = 2 ; Interrupt Mode bit 0 position
ADC_CH_INTMODE1_bm = 1<<3 ; Interrupt Mode bit 1 mask
ADC_CH_INTMODE1_bp = 3 ; Interrupt Mode bit 1 position
ADC_CH_INTLVL_gm = 0x03 ; Interrupt Level group mask
ADC_CH_INTLVL_gp = 0 ; Interrupt Level group position
ADC_CH_INTLVL0_bm = 1<<0 ; Interrupt Level bit 0 mask
ADC_CH_INTLVL0_bp = 0 ; Interrupt Level bit 0 position
ADC_CH_INTLVL1_bm = 1<<1 ; Interrupt Level bit 1 mask
ADC_CH_INTLVL1_bp = 1 ; Interrupt Level bit 1 position

; ADC_CH_INTFLAGS masks
ADC_CH_IF_bm = 0x01 ; Channel Interrupt Flag bit mask
ADC_CH_IF_bp = 0 ; Channel Interrupt Flag bit position

; ADC_CH_SCAN masks
ADC_CH_INPUTOFFSET_gm = 0xF0 ; Positive MUX Setting Offset group mask
ADC_CH_INPUTOFFSET_gp = 4 ; Positive MUX Setting Offset group position
ADC_CH_INPUTOFFSET0_bm = 1<<4 ; Positive MUX Setting Offset bit 0 mask
ADC_CH_INPUTOFFSET0_bp = 4 ; Positive MUX Setting Offset bit 0 position
ADC_CH_INPUTOFFSET1_bm = 1<<5 ; Positive MUX Setting Offset bit 1 mask
ADC_CH_INPUTOFFSET1_bp = 5 ; Positive MUX Setting Offset bit 1 position
ADC_CH_INPUTOFFSET2_bm = 1<<6 ; Positive MUX Setting Offset bit 2 mask
ADC_CH_INPUTOFFSET2_bp = 6 ; Positive MUX Setting Offset bit 2 position
ADC_CH_INPUTOFFSET3_bm = 1<<7 ; Positive MUX Setting Offset bit 3 mask
ADC_CH_INPUTOFFSET3_bp = 7 ; Positive MUX Setting Offset bit 3 position
ADC_CH_INPUTSCAN_gm = 0x0F ; Number of Channels Included in Scan group mask
ADC_CH_INPUTSCAN_gp = 0 ; Number of Channels Included in Scan group position
ADC_CH_INPUTSCAN0_bm = 1<<0 ; Number of Channels Included in Scan bit 0 mask
ADC_CH_INPUTSCAN0_bp = 0 ; Number of Channels Included in Scan bit 0 position
ADC_CH_INPUTSCAN1_bm = 1<<1 ; Number of Channels Included in Scan bit 1 mask
ADC_CH_INPUTSCAN1_bp = 1 ; Number of Channels Included in Scan bit 1 position
ADC_CH_INPUTSCAN2_bm = 1<<2 ; Number of Channels Included in Scan bit 2 mask
ADC_CH_INPUTSCAN2_bp = 2 ; Number of Channels Included in Scan bit 2 position
ADC_CH_INPUTSCAN3_bm = 1<<3 ; Number of Channels Included in Scan bit 3 mask
ADC_CH_INPUTSCAN3_bp = 3 ; Number of Channels Included in Scan bit 3 position

; ADC_CH_CORRCTRL masks
ADC_CH_CORREN_bm = 0x01 ; Correction Enable bit mask
ADC_CH_CORREN_bp = 0 ; Correction Enable bit position

; ADC_CH_OFFSETCORR1 masks
ADC_CH_OFFSETCORR_gm = 0x0F ; Offset Correction Byte 1 group mask
ADC_CH_OFFSETCORR_gp = 0 ; Offset Correction Byte 1 group position
ADC_CH_OFFSETCORR0_bm = 1<<0 ; Offset Correction Byte 1 bit 0 mask
ADC_CH_OFFSETCORR0_bp = 0 ; Offset Correction Byte 1 bit 0 position
ADC_CH_OFFSETCORR1_bm = 1<<1 ; Offset Correction Byte 1 bit 1 mask
ADC_CH_OFFSETCORR1_bp = 1 ; Offset Correction Byte 1 bit 1 position
ADC_CH_OFFSETCORR2_bm = 1<<2 ; Offset Correction Byte 1 bit 2 mask
ADC_CH_OFFSETCORR2_bp = 2 ; Offset Correction Byte 1 bit 2 position
ADC_CH_OFFSETCORR3_bm = 1<<3 ; Offset Correction Byte 1 bit 3 mask
ADC_CH_OFFSETCORR3_bp = 3 ; Offset Correction Byte 1 bit 3 position

; ADC_CH_GAINCORR1 masks
ADC_CH_GAINCORR_gm = 0x0F ; Gain Correction Byte 1 group mask
ADC_CH_GAINCORR_gp = 0 ; Gain Correction Byte 1 group position
ADC_CH_GAINCORR0_bm = 1<<0 ; Gain Correction Byte 1 bit 0 mask
ADC_CH_GAINCORR0_bp = 0 ; Gain Correction Byte 1 bit 0 position
ADC_CH_GAINCORR1_bm = 1<<1 ; Gain Correction Byte 1 bit 1 mask
ADC_CH_GAINCORR1_bp = 1 ; Gain Correction Byte 1 bit 1 position
ADC_CH_GAINCORR2_bm = 1<<2 ; Gain Correction Byte 1 bit 2 mask
ADC_CH_GAINCORR2_bp = 2 ; Gain Correction Byte 1 bit 2 position
ADC_CH_GAINCORR3_bm = 1<<3 ; Gain Correction Byte 1 bit 3 mask
ADC_CH_GAINCORR3_bp = 3 ; Gain Correction Byte 1 bit 3 position

; ADC_CH_AVGCTRL masks
ADC_CH_RIGHTSHIFT_gm = 0x70 ; Right Shift group mask
ADC_CH_RIGHTSHIFT_gp = 4 ; Right Shift group position
ADC_CH_RIGHTSHIFT0_bm = 1<<4 ; Right Shift bit 0 mask
ADC_CH_RIGHTSHIFT0_bp = 4 ; Right Shift bit 0 position
ADC_CH_RIGHTSHIFT1_bm = 1<<5 ; Right Shift bit 1 mask
ADC_CH_RIGHTSHIFT1_bp = 5 ; Right Shift bit 1 position
ADC_CH_RIGHTSHIFT2_bm = 1<<6 ; Right Shift bit 2 mask
ADC_CH_RIGHTSHIFT2_bp = 6 ; Right Shift bit 2 position
ADC_CH_SAMPNUM_gm = 0x0F ; Averaged Number of Samples group mask
ADC_CH_SAMPNUM_gp = 0 ; Averaged Number of Samples group position
ADC_CH_SAMPNUM0_bm = 1<<0 ; Averaged Number of Samples bit 0 mask
ADC_CH_SAMPNUM0_bp = 0 ; Averaged Number of Samples bit 0 position
ADC_CH_SAMPNUM1_bm = 1<<1 ; Averaged Number of Samples bit 1 mask
ADC_CH_SAMPNUM1_bp = 1 ; Averaged Number of Samples bit 1 position
ADC_CH_SAMPNUM2_bm = 1<<2 ; Averaged Number of Samples bit 2 mask
ADC_CH_SAMPNUM2_bp = 2 ; Averaged Number of Samples bit 2 position
ADC_CH_SAMPNUM3_bm = 1<<3 ; Averaged Number of Samples bit 3 mask
ADC_CH_SAMPNUM3_bp = 3 ; Averaged Number of Samples bit 3 position

; ADC_CTRLA masks
ADC_START_bm = 0x04 ; Start Conversion bit mask
ADC_START_bp = 2 ; Start Conversion bit position
ADC_FLUSH_bm = 0x02 ; ADC Flush bit mask
ADC_FLUSH_bp = 1 ; ADC Flush bit position
ADC_ENABLE_bm = 0x01 ; Enable ADC bit mask
ADC_ENABLE_bp = 0 ; Enable ADC bit position

; ADC_CTRLB masks
ADC_CURRLIMIT_gm = 0x60 ; Current Limitation group mask
ADC_CURRLIMIT_gp = 5 ; Current Limitation group position
ADC_CURRLIMIT0_bm = 1<<5 ; Current Limitation bit 0 mask
ADC_CURRLIMIT0_bp = 5 ; Current Limitation bit 0 position
ADC_CURRLIMIT1_bm = 1<<6 ; Current Limitation bit 1 mask
ADC_CURRLIMIT1_bp = 6 ; Current Limitation bit 1 position
ADC_CONMODE_bm = 0x10 ; Conversion Mode bit mask
ADC_CONMODE_bp = 4 ; Conversion Mode bit position
ADC_FREERUN_bm = 0x08 ; Free Running Mode Enable bit mask
ADC_FREERUN_bp = 3 ; Free Running Mode Enable bit position
ADC_RESOLUTION_gm = 0x06 ; Result Resolution group mask
ADC_RESOLUTION_gp = 1 ; Result Resolution group position
ADC_RESOLUTION0_bm = 1<<1 ; Result Resolution bit 0 mask
ADC_RESOLUTION0_bp = 1 ; Result Resolution bit 0 position
ADC_RESOLUTION1_bm = 1<<2 ; Result Resolution bit 1 mask
ADC_RESOLUTION1_bp = 2 ; Result Resolution bit 1 position

; ADC_REFCTRL masks
ADC_REFSEL_gm = 0x70 ; Reference Selection group mask
ADC_REFSEL_gp = 4 ; Reference Selection group position
ADC_REFSEL0_bm = 1<<4 ; Reference Selection bit 0 mask
ADC_REFSEL0_bp = 4 ; Reference Selection bit 0 position
ADC_REFSEL1_bm = 1<<5 ; Reference Selection bit 1 mask
ADC_REFSEL1_bp = 5 ; Reference Selection bit 1 position
ADC_REFSEL2_bm = 1<<6 ; Reference Selection bit 2 mask
ADC_REFSEL2_bp = 6 ; Reference Selection bit 2 position
ADC_BANDGAP_bm = 0x02 ; Bandgap enable bit mask
ADC_BANDGAP_bp = 1 ; Bandgap enable bit position
ADC_TEMPREF_bm = 0x01 ; Temperature Reference Enable bit mask
ADC_TEMPREF_bp = 0 ; Temperature Reference Enable bit position

; ADC_EVCTRL masks
ADC_EVSEL_gm = 0x38 ; Event Input Select group mask
ADC_EVSEL_gp = 3 ; Event Input Select group position
ADC_EVSEL0_bm = 1<<3 ; Event Input Select bit 0 mask
ADC_EVSEL0_bp = 3 ; Event Input Select bit 0 position
ADC_EVSEL1_bm = 1<<4 ; Event Input Select bit 1 mask
ADC_EVSEL1_bp = 4 ; Event Input Select bit 1 position
ADC_EVSEL2_bm = 1<<5 ; Event Input Select bit 2 mask
ADC_EVSEL2_bp = 5 ; Event Input Select bit 2 position
ADC_EVACT_gm = 0x07 ; Event Action Select group mask
ADC_EVACT_gp = 0 ; Event Action Select group position
ADC_EVACT0_bm = 1<<0 ; Event Action Select bit 0 mask
ADC_EVACT0_bp = 0 ; Event Action Select bit 0 position
ADC_EVACT1_bm = 1<<1 ; Event Action Select bit 1 mask
ADC_EVACT1_bp = 1 ; Event Action Select bit 1 position
ADC_EVACT2_bm = 1<<2 ; Event Action Select bit 2 mask
ADC_EVACT2_bp = 2 ; Event Action Select bit 2 position

; ADC_PRESCALER masks
ADC_PRESCALER_gm = 0x07 ; Clock Prescaler Selection group mask
ADC_PRESCALER_gp = 0 ; Clock Prescaler Selection group position
ADC_PRESCALER0_bm = 1<<0 ; Clock Prescaler Selection bit 0 mask
ADC_PRESCALER0_bp = 0 ; Clock Prescaler Selection bit 0 position
ADC_PRESCALER1_bm = 1<<1 ; Clock Prescaler Selection bit 1 mask
ADC_PRESCALER1_bp = 1 ; Clock Prescaler Selection bit 1 position
ADC_PRESCALER2_bm = 1<<2 ; Clock Prescaler Selection bit 2 mask
ADC_PRESCALER2_bp = 2 ; Clock Prescaler Selection bit 2 position

; ADC_INTFLAGS masks
ADC_CH0IF_bm = 0x01 ; Channel 0 Interrupt Flag bit mask
ADC_CH0IF_bp = 0 ; Channel 0 Interrupt Flag bit position

; ADC_SAMPCTRL masks
ADC_SAMPVAL_gm = 0x3F ; Sampling time control register group mask
ADC_SAMPVAL_gp = 0 ; Sampling time control register group position
ADC_SAMPVAL0_bm = 1<<0 ; Sampling time control register bit 0 mask
ADC_SAMPVAL0_bp = 0 ; Sampling time control register bit 0 position
ADC_SAMPVAL1_bm = 1<<1 ; Sampling time control register bit 1 mask
ADC_SAMPVAL1_bp = 1 ; Sampling time control register bit 1 position
ADC_SAMPVAL2_bm = 1<<2 ; Sampling time control register bit 2 mask
ADC_SAMPVAL2_bp = 2 ; Sampling time control register bit 2 position
ADC_SAMPVAL3_bm = 1<<3 ; Sampling time control register bit 3 mask
ADC_SAMPVAL3_bp = 3 ; Sampling time control register bit 3 position
ADC_SAMPVAL4_bm = 1<<4 ; Sampling time control register bit 4 mask
ADC_SAMPVAL4_bp = 4 ; Sampling time control register bit 4 position
ADC_SAMPVAL5_bm = 1<<5 ; Sampling time control register bit 5 mask
ADC_SAMPVAL5_bp = 5 ; Sampling time control register bit 5 position

; Current Limitation
ADC_CURRLIMIT_NO_gc = 0x00<<5 ; No current limit,     300ksps max sampling rate
ADC_CURRLIMIT_LOW_gc = 0x01<<5 ; Low current limit,    225ksps max sampling rate
ADC_CURRLIMIT_MED_gc = 0x02<<5 ; Medium current limit, 150ksps max sampling rate
ADC_CURRLIMIT_HIGH_gc = 0x03<<5 ; High current limit,   75ksps max sampling rate

; Conversion result resolution
ADC_RESOLUTION_12BIT_gc = 0x00<<1 ; 12-bit right-adjusted result
ADC_RESOLUTION_MT12BIT_gc = 0x01<<1 ; More than 12-bit (oversapling) right-adjusted result
ADC_RESOLUTION_8BIT_gc = 0x02<<1 ; 8-bit right-adjusted result
ADC_RESOLUTION_LEFT12BIT_gc = 0x03<<1 ; 12-bit left-adjusted result

; Voltage reference selection
ADC_REFSEL_INT1V_gc = 0x00<<4 ; Internal 1V
ADC_REFSEL_INTVCC_gc = 0x01<<4 ; Internal VCC / 1.6
ADC_REFSEL_AREFA_gc = 0x02<<4 ; External reference on PORT A
ADC_REFSEL_AREFD_gc = 0x03<<4 ; External reference on PORT D
ADC_REFSEL_INTVCC2_gc = 0x04<<4 ; Internal VCC / 2

; Event channel input selection
ADC_EVSEL_0_gc = 0x00<<3 ; Event Channel 0
ADC_EVSEL_1_gc = 0x01<<3 ; Event Channel 1
ADC_EVSEL_2_gc = 0x02<<3 ; Event Channel 2
ADC_EVSEL_3_gc = 0x03<<3 ; Event Channel 3
ADC_EVSEL_4_gc = 0x04<<3 ; Event Channel 4
ADC_EVSEL_5_gc = 0x05<<3 ; Event Channel 5
ADC_EVSEL_6_gc = 0x06<<3 ; Event Channel 6
ADC_EVSEL_7_gc = 0x07<<3 ; Event Channel 7

; Event action selection
ADC_EVACT_NONE_gc = 0x00<<0 ; No event action
ADC_EVACT_CH0_gc = 0x01<<0 ; First event triggers channel conversion
ADC_EVACT_SYNCHSWEEP_gc = 0x06<<0 ; First event triggers synchronized sweep

; Clock prescaler
ADC_PRESCALER_DIV4_gc = 0x00<<0 ; Divide clock by 4
ADC_PRESCALER_DIV8_gc = 0x01<<0 ; Divide clock by 8
ADC_PRESCALER_DIV16_gc = 0x02<<0 ; Divide clock by 16
ADC_PRESCALER_DIV32_gc = 0x03<<0 ; Divide clock by 32
ADC_PRESCALER_DIV64_gc = 0x04<<0 ; Divide clock by 64
ADC_PRESCALER_DIV128_gc = 0x05<<0 ; Divide clock by 128
ADC_PRESCALER_DIV256_gc = 0x06<<0 ; Divide clock by 256
ADC_PRESCALER_DIV512_gc = 0x07<<0 ; Divide clock by 512

; Gain factor
ADC_CH_GAIN_1X_gc = 0x00<<2 ; 1x gain
ADC_CH_GAIN_2X_gc = 0x01<<2 ; 2x gain
ADC_CH_GAIN_4X_gc = 0x02<<2 ; 4x gain
ADC_CH_GAIN_8X_gc = 0x03<<2 ; 8x gain
ADC_CH_GAIN_16X_gc = 0x04<<2 ; 16x gain
ADC_CH_GAIN_32X_gc = 0x05<<2 ; 32x gain
ADC_CH_GAIN_64X_gc = 0x06<<2 ; 64x gain
ADC_CH_GAIN_DIV2_gc = 0x07<<2 ; x/2 gain

; Input mode
ADC_CH_INPUTMODE_INTERNAL_gc = 0x00<<0 ; Internal inputs, no gain
ADC_CH_INPUTMODE_SINGLEENDED_gc = 0x01<<0 ; Single-ended input, no gain
ADC_CH_INPUTMODE_DIFFWGAINL_gc = 0x02<<0 ; Differential input, gain with 4 LSB pins selection
ADC_CH_INPUTMODE_DIFFWGAINH_gc = 0x03<<0 ; Differential input, gain with 4 MSB pins selection

; Positive input multiplexer selection
ADC_CH_MUXPOS_PIN0_gc = 0x00<<3 ; Input pin 0
ADC_CH_MUXPOS_PIN1_gc = 0x01<<3 ; Input pin 1
ADC_CH_MUXPOS_PIN2_gc = 0x02<<3 ; Input pin 2
ADC_CH_MUXPOS_PIN3_gc = 0x03<<3 ; Input pin 3
ADC_CH_MUXPOS_PIN4_gc = 0x04<<3 ; Input pin 4
ADC_CH_MUXPOS_PIN5_gc = 0x05<<3 ; Input pin 5
ADC_CH_MUXPOS_PIN6_gc = 0x06<<3 ; Input pin 6
ADC_CH_MUXPOS_PIN7_gc = 0x07<<3 ; Input pin 7
ADC_CH_MUXPOS_PIN8_gc = 0x08<<3 ; Input pin 8
ADC_CH_MUXPOS_PIN9_gc = 0x09<<3 ; Input pin 9
ADC_CH_MUXPOS_PIN10_gc = 0x0A<<3 ; Input pin 10
ADC_CH_MUXPOS_PIN11_gc = 0x0B<<3 ; Input pin 11
ADC_CH_MUXPOS_PIN12_gc = 0x0C<<3 ; Input pin 12
ADC_CH_MUXPOS_PIN13_gc = 0x0D<<3 ; Input pin 13
ADC_CH_MUXPOS_PIN14_gc = 0x0E<<3 ; Input pin 14
ADC_CH_MUXPOS_PIN15_gc = 0x0F<<3 ; Input pin 15

; Internal input multiplexer selections
ADC_CH_MUXINT_TEMP_gc = 0x00<<3 ; Temperature Reference
ADC_CH_MUXINT_BANDGAP_gc = 0x01<<3 ; Bandgap Reference
ADC_CH_MUXINT_SCALEDVCC_gc = 0x02<<3 ; 1/10 Scaled VCC
ADC_CH_MUXINT_DAC_gc = 0x03<<3 ; DAC Output

; Negative input multiplexer selection when gain on 4 LSB pins
ADC_CH_MUXNEGL_PIN0_gc = 0x00<<0 ; Input pin 0
ADC_CH_MUXNEGL_PIN1_gc = 0x01<<0 ; Input pin 1
ADC_CH_MUXNEGL_PIN2_gc = 0x02<<0 ; Input pin 2
ADC_CH_MUXNEGL_PIN3_gc = 0x03<<0 ; Input pin 3
ADC_CH_MUXNEGL_GND_gc = 0x05<<0 ; PAD ground
ADC_CH_MUXNEGL_INTGND_gc = 0x07<<0 ; Internal ground

; Negative input multiplexer selection when gain on 4 MSB pins
ADC_CH_MUXNEGH_PIN4_gc = 0x00<<0 ; Input pin 4
ADC_CH_MUXNEGH_PIN5_gc = 0x01<<0 ; Input pin 5
ADC_CH_MUXNEGH_PIN6_gc = 0x02<<0 ; Input pin 6
ADC_CH_MUXNEGH_PIN7_gc = 0x03<<0 ; Input pin 7
ADC_CH_MUXNEGH_INTGND_gc = 0x04<<0 ; Internal ground
ADC_CH_MUXNEGH_GND_gc = 0x05<<0 ; PAD ground

; Negative input multiplexer selection
ADC_CH_MUXNEG_PIN0_gc = 0x00<<0 ; Input pin 0

; Interupt mode
ADC_CH_INTMODE_COMPLETE_gc = 0x00<<2 ; Interrupt on conversion complete
ADC_CH_INTMODE_BELOW_gc = 0x01<<2 ; Interrupt on result below compare value
ADC_CH_INTMODE_ABOVE_gc = 0x03<<2 ; Interrupt on result above compare value

; Interrupt level
ADC_CH_INTLVL_OFF_gc = 0x00<<0 ; Interrupt disabled
ADC_CH_INTLVL_LO_gc = 0x01<<0 ; Low level
ADC_CH_INTLVL_MED_gc = 0x02<<0 ; Medium level
ADC_CH_INTLVL_HI_gc = 0x03<<0 ; High level

; Averaged Number of Samples
ADC_SAMPNUM_1X_gc = 0x00<<0 ; 1 Sample
ADC_SAMPNUM_2X_gc = 0x01<<0 ; 2 Samples
ADC_SAMPNUM_4X_gc = 0x02<<0 ; 4 Samples
ADC_SAMPNUM_8X_gc = 0x03<<0 ; 8 Samples
ADC_SAMPNUM_16X_gc = 0x04<<0 ; 16 Samples
ADC_SAMPNUM_32X_gc = 0x05<<0 ; 32 Samples
ADC_SAMPNUM_64X_gc = 0x06<<0 ; 64 Samples
ADC_SAMPNUM_128X_gc = 0x07<<0 ; 128 Samples
ADC_SAMPNUM_256X_gc = 0x08<<0 ; 256 Samples
ADC_SAMPNUM_512X_gc = 0x09<<0 ; 512 Samples
ADC_SAMPNUM_1024X_gc = 0x0A<<0 ; 1024 Samples


;*************************************************************************
;** DAC - Digital/Analog Converter
;*************************************************************************

; DAC_CTRLA masks
DAC_IDOEN_bm = 0x10 ; Internal Output Enable bit mask
DAC_IDOEN_bp = 4 ; Internal Output Enable bit position
DAC_CH1EN_bm = 0x08 ; Channel 1 Output Enable bit mask
DAC_CH1EN_bp = 3 ; Channel 1 Output Enable bit position
DAC_CH0EN_bm = 0x04 ; Channel 0 Output Enable bit mask
DAC_CH0EN_bp = 2 ; Channel 0 Output Enable bit position
DAC_LPMODE_bm = 0x02 ; Low Power Mode bit mask
DAC_LPMODE_bp = 1 ; Low Power Mode bit position
DAC_ENABLE_bm = 0x01 ; Enable bit mask
DAC_ENABLE_bp = 0 ; Enable bit position

; DAC_CTRLB masks
DAC_CHSEL_gm = 0x60 ; Channel Select group mask
DAC_CHSEL_gp = 5 ; Channel Select group position
DAC_CHSEL0_bm = 1<<5 ; Channel Select bit 0 mask
DAC_CHSEL0_bp = 5 ; Channel Select bit 0 position
DAC_CHSEL1_bm = 1<<6 ; Channel Select bit 1 mask
DAC_CHSEL1_bp = 6 ; Channel Select bit 1 position
DAC_CH1TRIG_bm = 0x02 ; Channel 1 Event Trig Enable bit mask
DAC_CH1TRIG_bp = 1 ; Channel 1 Event Trig Enable bit position
DAC_CH0TRIG_bm = 0x01 ; Channel 0 Event Trig Enable bit mask
DAC_CH0TRIG_bp = 0 ; Channel 0 Event Trig Enable bit position

; DAC_CTRLC masks
DAC_REFSEL_gm = 0x18 ; Reference Select group mask
DAC_REFSEL_gp = 3 ; Reference Select group position
DAC_REFSEL0_bm = 1<<3 ; Reference Select bit 0 mask
DAC_REFSEL0_bp = 3 ; Reference Select bit 0 position
DAC_REFSEL1_bm = 1<<4 ; Reference Select bit 1 mask
DAC_REFSEL1_bp = 4 ; Reference Select bit 1 position
DAC_LEFTADJ_bm = 0x01 ; Left-adjust Result bit mask
DAC_LEFTADJ_bp = 0 ; Left-adjust Result bit position

; DAC_EVCTRL masks
DAC_EVSPLIT_bm = 0x08 ; Separate Event Channel Input for Channel 1 bit mask
DAC_EVSPLIT_bp = 3 ; Separate Event Channel Input for Channel 1 bit position
DAC_EVSEL_gm = 0x07 ; Event Input Selection group mask
DAC_EVSEL_gp = 0 ; Event Input Selection group position
DAC_EVSEL0_bm = 1<<0 ; Event Input Selection bit 0 mask
DAC_EVSEL0_bp = 0 ; Event Input Selection bit 0 position
DAC_EVSEL1_bm = 1<<1 ; Event Input Selection bit 1 mask
DAC_EVSEL1_bp = 1 ; Event Input Selection bit 1 position
DAC_EVSEL2_bm = 1<<2 ; Event Input Selection bit 2 mask
DAC_EVSEL2_bp = 2 ; Event Input Selection bit 2 position

; DAC_TIMCTRL masks
DAC_CONINTVAL_gm = 0x70 ; Conversion Intercal group mask
DAC_CONINTVAL_gp = 4 ; Conversion Intercal group position
DAC_CONINTVAL0_bm = 1<<4 ; Conversion Intercal bit 0 mask
DAC_CONINTVAL0_bp = 4 ; Conversion Intercal bit 0 position
DAC_CONINTVAL1_bm = 1<<5 ; Conversion Intercal bit 1 mask
DAC_CONINTVAL1_bp = 5 ; Conversion Intercal bit 1 position
DAC_CONINTVAL2_bm = 1<<6 ; Conversion Intercal bit 2 mask
DAC_CONINTVAL2_bp = 6 ; Conversion Intercal bit 2 position
DAC_REFRESH_gm = 0x0F ; Refresh Timing Control group mask
DAC_REFRESH_gp = 0 ; Refresh Timing Control group position
DAC_REFRESH0_bm = 1<<0 ; Refresh Timing Control bit 0 mask
DAC_REFRESH0_bp = 0 ; Refresh Timing Control bit 0 position
DAC_REFRESH1_bm = 1<<1 ; Refresh Timing Control bit 1 mask
DAC_REFRESH1_bp = 1 ; Refresh Timing Control bit 1 position
DAC_REFRESH2_bm = 1<<2 ; Refresh Timing Control bit 2 mask
DAC_REFRESH2_bp = 2 ; Refresh Timing Control bit 2 position
DAC_REFRESH3_bm = 1<<3 ; Refresh Timing Control bit 3 mask
DAC_REFRESH3_bp = 3 ; Refresh Timing Control bit 3 position

; DAC_STATUS masks
DAC_CH1DRE_bm = 0x02 ; Channel 1 Data Register Empty bit mask
DAC_CH1DRE_bp = 1 ; Channel 1 Data Register Empty bit position
DAC_CH0DRE_bm = 0x01 ; Channel 0 Data Register Empty bit mask
DAC_CH0DRE_bp = 0 ; Channel 0 Data Register Empty bit position

; DAC_CH0GAINCAL masks
DAC_CH0GAINCAL_gm = 0x7F ; Gain Calibration group mask
DAC_CH0GAINCAL_gp = 0 ; Gain Calibration group position
DAC_CH0GAINCAL0_bm = 1<<0 ; Gain Calibration bit 0 mask
DAC_CH0GAINCAL0_bp = 0 ; Gain Calibration bit 0 position
DAC_CH0GAINCAL1_bm = 1<<1 ; Gain Calibration bit 1 mask
DAC_CH0GAINCAL1_bp = 1 ; Gain Calibration bit 1 position
DAC_CH0GAINCAL2_bm = 1<<2 ; Gain Calibration bit 2 mask
DAC_CH0GAINCAL2_bp = 2 ; Gain Calibration bit 2 position
DAC_CH0GAINCAL3_bm = 1<<3 ; Gain Calibration bit 3 mask
DAC_CH0GAINCAL3_bp = 3 ; Gain Calibration bit 3 position
DAC_CH0GAINCAL4_bm = 1<<4 ; Gain Calibration bit 4 mask
DAC_CH0GAINCAL4_bp = 4 ; Gain Calibration bit 4 position
DAC_CH0GAINCAL5_bm = 1<<5 ; Gain Calibration bit 5 mask
DAC_CH0GAINCAL5_bp = 5 ; Gain Calibration bit 5 position
DAC_CH0GAINCAL6_bm = 1<<6 ; Gain Calibration bit 6 mask
DAC_CH0GAINCAL6_bp = 6 ; Gain Calibration bit 6 position

; DAC_CH0OFFSETCAL masks
DAC_CH0OFFSETCAL_gm = 0x7F ; Offset Calibration group mask
DAC_CH0OFFSETCAL_gp = 0 ; Offset Calibration group position
DAC_CH0OFFSETCAL0_bm = 1<<0 ; Offset Calibration bit 0 mask
DAC_CH0OFFSETCAL0_bp = 0 ; Offset Calibration bit 0 position
DAC_CH0OFFSETCAL1_bm = 1<<1 ; Offset Calibration bit 1 mask
DAC_CH0OFFSETCAL1_bp = 1 ; Offset Calibration bit 1 position
DAC_CH0OFFSETCAL2_bm = 1<<2 ; Offset Calibration bit 2 mask
DAC_CH0OFFSETCAL2_bp = 2 ; Offset Calibration bit 2 position
DAC_CH0OFFSETCAL3_bm = 1<<3 ; Offset Calibration bit 3 mask
DAC_CH0OFFSETCAL3_bp = 3 ; Offset Calibration bit 3 position
DAC_CH0OFFSETCAL4_bm = 1<<4 ; Offset Calibration bit 4 mask
DAC_CH0OFFSETCAL4_bp = 4 ; Offset Calibration bit 4 position
DAC_CH0OFFSETCAL5_bm = 1<<5 ; Offset Calibration bit 5 mask
DAC_CH0OFFSETCAL5_bp = 5 ; Offset Calibration bit 5 position
DAC_CH0OFFSETCAL6_bm = 1<<6 ; Offset Calibration bit 6 mask
DAC_CH0OFFSETCAL6_bp = 6 ; Offset Calibration bit 6 position

; DAC_CH1GAINCAL masks
DAC_CH1GAINCAL_gm = 0x7F ; Gain Calibration group mask
DAC_CH1GAINCAL_gp = 0 ; Gain Calibration group position
DAC_CH1GAINCAL0_bm = 1<<0 ; Gain Calibration bit 0 mask
DAC_CH1GAINCAL0_bp = 0 ; Gain Calibration bit 0 position
DAC_CH1GAINCAL1_bm = 1<<1 ; Gain Calibration bit 1 mask
DAC_CH1GAINCAL1_bp = 1 ; Gain Calibration bit 1 position
DAC_CH1GAINCAL2_bm = 1<<2 ; Gain Calibration bit 2 mask
DAC_CH1GAINCAL2_bp = 2 ; Gain Calibration bit 2 position
DAC_CH1GAINCAL3_bm = 1<<3 ; Gain Calibration bit 3 mask
DAC_CH1GAINCAL3_bp = 3 ; Gain Calibration bit 3 position
DAC_CH1GAINCAL4_bm = 1<<4 ; Gain Calibration bit 4 mask
DAC_CH1GAINCAL4_bp = 4 ; Gain Calibration bit 4 position
DAC_CH1GAINCAL5_bm = 1<<5 ; Gain Calibration bit 5 mask
DAC_CH1GAINCAL5_bp = 5 ; Gain Calibration bit 5 position
DAC_CH1GAINCAL6_bm = 1<<6 ; Gain Calibration bit 6 mask
DAC_CH1GAINCAL6_bp = 6 ; Gain Calibration bit 6 position

; DAC_CH1OFFSETCAL masks
DAC_CH1OFFSETCAL_gm = 0x7F ; Offset Calibration group mask
DAC_CH1OFFSETCAL_gp = 0 ; Offset Calibration group position
DAC_CH1OFFSETCAL0_bm = 1<<0 ; Offset Calibration bit 0 mask
DAC_CH1OFFSETCAL0_bp = 0 ; Offset Calibration bit 0 position
DAC_CH1OFFSETCAL1_bm = 1<<1 ; Offset Calibration bit 1 mask
DAC_CH1OFFSETCAL1_bp = 1 ; Offset Calibration bit 1 position
DAC_CH1OFFSETCAL2_bm = 1<<2 ; Offset Calibration bit 2 mask
DAC_CH1OFFSETCAL2_bp = 2 ; Offset Calibration bit 2 position
DAC_CH1OFFSETCAL3_bm = 1<<3 ; Offset Calibration bit 3 mask
DAC_CH1OFFSETCAL3_bp = 3 ; Offset Calibration bit 3 position
DAC_CH1OFFSETCAL4_bm = 1<<4 ; Offset Calibration bit 4 mask
DAC_CH1OFFSETCAL4_bp = 4 ; Offset Calibration bit 4 position
DAC_CH1OFFSETCAL5_bm = 1<<5 ; Offset Calibration bit 5 mask
DAC_CH1OFFSETCAL5_bp = 5 ; Offset Calibration bit 5 position
DAC_CH1OFFSETCAL6_bm = 1<<6 ; Offset Calibration bit 6 mask
DAC_CH1OFFSETCAL6_bp = 6 ; Offset Calibration bit 6 position

; Output channel selection
DAC_CHSEL_SINGLE_gc = 0x00<<5 ; Single channel operation (Channel 0 only)
DAC_CHSEL_SINGLE1_gc = 0x01<<5 ; Single channel operation (Channel 1 only)
DAC_CHSEL_DUAL_gc = 0x02<<5 ; Dual channel operation (Channel 0 and channel 1)

; Reference voltage selection
DAC_REFSEL_INT1V_gc = 0x00<<3 ; Internal 1V
DAC_REFSEL_AVCC_gc = 0x01<<3 ; Analog supply voltage
DAC_REFSEL_AREFA_gc = 0x02<<3 ; External reference on AREF on PORTA
DAC_REFSEL_AREFB_gc = 0x03<<3 ; External reference on AREF on PORTB

; Event channel selection
DAC_EVSEL_0_gc = 0x00<<0 ; Event Channel 0
DAC_EVSEL_1_gc = 0x01<<0 ; Event Channel 1
DAC_EVSEL_2_gc = 0x02<<0 ; Event Channel 2
DAC_EVSEL_3_gc = 0x03<<0 ; Event Channel 3
DAC_EVSEL_4_gc = 0x04<<0 ; Event Channel 4
DAC_EVSEL_5_gc = 0x05<<0 ; Event Channel 5
DAC_EVSEL_6_gc = 0x06<<0 ; Event Channel 6
DAC_EVSEL_7_gc = 0x07<<0 ; Event Channel 7

; Conversion interval
DAC_CONINTVAL_1CLK_gc = 0x00<<4 ; 1 CLK / 2 CLK in S/H mode
DAC_CONINTVAL_2CLK_gc = 0x01<<4 ; 2 CLK / 3 CLK in S/H mode
DAC_CONINTVAL_4CLK_gc = 0x02<<4 ; 4 CLK / 6 CLK in S/H mode
DAC_CONINTVAL_8CLK_gc = 0x03<<4 ; 8 CLK / 12 CLK in S/H mode
DAC_CONINTVAL_16CLK_gc = 0x04<<4 ; 16 CLK / 24 CLK in S/H mode
DAC_CONINTVAL_32CLK_gc = 0x05<<4 ; 32 CLK / 48 CLK in S/H mode
DAC_CONINTVAL_64CLK_gc = 0x06<<4 ; 64 CLK / 96 CLK in S/H mode
DAC_CONINTVAL_128CLK_gc = 0x07<<4 ; 128 CLK / 192 CLK in S/H mode

; Refresh rate
DAC_REFRESH_16CLK_gc = 0x00<<0 ; 16 CLK
DAC_REFRESH_32CLK_gc = 0x01<<0 ; 32 CLK
DAC_REFRESH_64CLK_gc = 0x02<<0 ; 64 CLK
DAC_REFRESH_128CLK_gc = 0x03<<0 ; 128 CLK
DAC_REFRESH_256CLK_gc = 0x04<<0 ; 256 CLK
DAC_REFRESH_512CLK_gc = 0x05<<0 ; 512 CLK
DAC_REFRESH_1024CLK_gc = 0x06<<0 ; 1024 CLK
DAC_REFRESH_2048CLK_gc = 0x07<<0 ; 2048 CLK
DAC_REFRESH_4096CLK_gc = 0x08<<0 ; 4096 CLK
DAC_REFRESH_8192CLK_gc = 0x09<<0 ; 8192 CLK
DAC_REFRESH_16384CLK_gc = 0x0A<<0 ; 16384 CLK
DAC_REFRESH_32768CLK_gc = 0x0B<<0 ; 32768 CLK
DAC_REFRESH_65536CLK_gc = 0x0C<<0 ; 65536 CLK
DAC_REFRESH_OFF_gc = 0x0F<<0 ; Auto refresh OFF


;*************************************************************************
;** AC - Analog Comparator
;*************************************************************************

; AC_AC0CTRL masks
AC_INTMODE_gm = 0xC0 ; Interrupt Mode group mask
AC_INTMODE_gp = 6 ; Interrupt Mode group position
AC_INTMODE0_bm = 1<<6 ; Interrupt Mode bit 0 mask
AC_INTMODE0_bp = 6 ; Interrupt Mode bit 0 position
AC_INTMODE1_bm = 1<<7 ; Interrupt Mode bit 1 mask
AC_INTMODE1_bp = 7 ; Interrupt Mode bit 1 position
AC_INTLVL_gm = 0x30 ; Interrupt Level group mask
AC_INTLVL_gp = 4 ; Interrupt Level group position
AC_INTLVL0_bm = 1<<4 ; Interrupt Level bit 0 mask
AC_INTLVL0_bp = 4 ; Interrupt Level bit 0 position
AC_INTLVL1_bm = 1<<5 ; Interrupt Level bit 1 mask
AC_INTLVL1_bp = 5 ; Interrupt Level bit 1 position
AC_HYSMODE_gm = 0x06 ; Hysteresis Mode group mask
AC_HYSMODE_gp = 1 ; Hysteresis Mode group position
AC_HYSMODE0_bm = 1<<1 ; Hysteresis Mode bit 0 mask
AC_HYSMODE0_bp = 1 ; Hysteresis Mode bit 0 position
AC_HYSMODE1_bm = 1<<2 ; Hysteresis Mode bit 1 mask
AC_HYSMODE1_bp = 2 ; Hysteresis Mode bit 1 position
AC_ENABLE_bm = 0x01 ; Enable bit mask
AC_ENABLE_bp = 0 ; Enable bit position

; AC_AC1CTRL masks
; Masks for AC_INTMODE already defined
; Masks for AC_INTLVL already defined
; Masks for AC_HYSMODE already defined
; Masks for AC_ENABLE already defined

; AC_AC0MUXCTRL masks
AC_MUXPOS_gm = 0x38 ; MUX Positive Input group mask
AC_MUXPOS_gp = 3 ; MUX Positive Input group position
AC_MUXPOS0_bm = 1<<3 ; MUX Positive Input bit 0 mask
AC_MUXPOS0_bp = 3 ; MUX Positive Input bit 0 position
AC_MUXPOS1_bm = 1<<4 ; MUX Positive Input bit 1 mask
AC_MUXPOS1_bp = 4 ; MUX Positive Input bit 1 position
AC_MUXPOS2_bm = 1<<5 ; MUX Positive Input bit 2 mask
AC_MUXPOS2_bp = 5 ; MUX Positive Input bit 2 position
AC_MUXNEG_gm = 0x07 ; MUX Negative Input group mask
AC_MUXNEG_gp = 0 ; MUX Negative Input group position
AC_MUXNEG0_bm = 1<<0 ; MUX Negative Input bit 0 mask
AC_MUXNEG0_bp = 0 ; MUX Negative Input bit 0 position
AC_MUXNEG1_bm = 1<<1 ; MUX Negative Input bit 1 mask
AC_MUXNEG1_bp = 1 ; MUX Negative Input bit 1 position
AC_MUXNEG2_bm = 1<<2 ; MUX Negative Input bit 2 mask
AC_MUXNEG2_bp = 2 ; MUX Negative Input bit 2 position

; AC_AC1MUXCTRL masks
; Masks for AC_MUXPOS already defined
; Masks for AC_MUXNEG already defined

; AC_CTRLA masks
AC_AC1OUT_bm = 0x02 ; Analog Comparator 1 Output Enable bit mask
AC_AC1OUT_bp = 1 ; Analog Comparator 1 Output Enable bit position
AC_AC0OUT_bm = 0x01 ; Analog Comparator 0 Output Enable bit mask
AC_AC0OUT_bp = 0 ; Analog Comparator 0 Output Enable bit position

; AC_CTRLB masks
AC_SCALEFAC_gm = 0x3F ; VCC Voltage Scaler Factor group mask
AC_SCALEFAC_gp = 0 ; VCC Voltage Scaler Factor group position
AC_SCALEFAC0_bm = 1<<0 ; VCC Voltage Scaler Factor bit 0 mask
AC_SCALEFAC0_bp = 0 ; VCC Voltage Scaler Factor bit 0 position
AC_SCALEFAC1_bm = 1<<1 ; VCC Voltage Scaler Factor bit 1 mask
AC_SCALEFAC1_bp = 1 ; VCC Voltage Scaler Factor bit 1 position
AC_SCALEFAC2_bm = 1<<2 ; VCC Voltage Scaler Factor bit 2 mask
AC_SCALEFAC2_bp = 2 ; VCC Voltage Scaler Factor bit 2 position
AC_SCALEFAC3_bm = 1<<3 ; VCC Voltage Scaler Factor bit 3 mask
AC_SCALEFAC3_bp = 3 ; VCC Voltage Scaler Factor bit 3 position
AC_SCALEFAC4_bm = 1<<4 ; VCC Voltage Scaler Factor bit 4 mask
AC_SCALEFAC4_bp = 4 ; VCC Voltage Scaler Factor bit 4 position
AC_SCALEFAC5_bm = 1<<5 ; VCC Voltage Scaler Factor bit 5 mask
AC_SCALEFAC5_bp = 5 ; VCC Voltage Scaler Factor bit 5 position

; AC_WINCTRL masks
AC_WEN_bm = 0x10 ; Window Mode Enable bit mask
AC_WEN_bp = 4 ; Window Mode Enable bit position
AC_WINTMODE_gm = 0x0C ; Window Interrupt Mode group mask
AC_WINTMODE_gp = 2 ; Window Interrupt Mode group position
AC_WINTMODE0_bm = 1<<2 ; Window Interrupt Mode bit 0 mask
AC_WINTMODE0_bp = 2 ; Window Interrupt Mode bit 0 position
AC_WINTMODE1_bm = 1<<3 ; Window Interrupt Mode bit 1 mask
AC_WINTMODE1_bp = 3 ; Window Interrupt Mode bit 1 position
AC_WINTLVL_gm = 0x03 ; Window Interrupt Level group mask
AC_WINTLVL_gp = 0 ; Window Interrupt Level group position
AC_WINTLVL0_bm = 1<<0 ; Window Interrupt Level bit 0 mask
AC_WINTLVL0_bp = 0 ; Window Interrupt Level bit 0 position
AC_WINTLVL1_bm = 1<<1 ; Window Interrupt Level bit 1 mask
AC_WINTLVL1_bp = 1 ; Window Interrupt Level bit 1 position

; AC_STATUS masks
AC_WSTATE_gm = 0xC0 ; Window Mode State group mask
AC_WSTATE_gp = 6 ; Window Mode State group position
AC_WSTATE0_bm = 1<<6 ; Window Mode State bit 0 mask
AC_WSTATE0_bp = 6 ; Window Mode State bit 0 position
AC_WSTATE1_bm = 1<<7 ; Window Mode State bit 1 mask
AC_WSTATE1_bp = 7 ; Window Mode State bit 1 position
AC_AC1STATE_bm = 0x20 ; Analog Comparator 1 State bit mask
AC_AC1STATE_bp = 5 ; Analog Comparator 1 State bit position
AC_AC0STATE_bm = 0x10 ; Analog Comparator 0 State bit mask
AC_AC0STATE_bp = 4 ; Analog Comparator 0 State bit position
AC_WIF_bm = 0x04 ; Window Mode Interrupt Flag bit mask
AC_WIF_bp = 2 ; Window Mode Interrupt Flag bit position
AC_AC1IF_bm = 0x02 ; Analog Comparator 1 Interrupt Flag bit mask
AC_AC1IF_bp = 1 ; Analog Comparator 1 Interrupt Flag bit position
AC_AC0IF_bm = 0x01 ; Analog Comparator 0 Interrupt Flag bit mask
AC_AC0IF_bp = 0 ; Analog Comparator 0 Interrupt Flag bit position

; AC_CURRCTRL masks
AC_CURREN_bm = 0x80 ; Current Source Enable bit mask
AC_CURREN_bp = 7 ; Current Source Enable bit position
AC_AC1CURR_bm = 0x02 ; Analog Comparator 1 current source output bit mask
AC_AC1CURR_bp = 1 ; Analog Comparator 1 current source output bit position
AC_AC0CURR_bm = 0x01 ; Analog Comparator 0 current source output bit mask
AC_AC0CURR_bp = 0 ; Analog Comparator 0 current source output bit position

; AC_CURRCALIB masks
AC_CALIB_gm = 0x0F ; Current Source Calibration group mask
AC_CALIB_gp = 0 ; Current Source Calibration group position
AC_CALIB0_bm = 1<<0 ; Current Source Calibration bit 0 mask
AC_CALIB0_bp = 0 ; Current Source Calibration bit 0 position
AC_CALIB1_bm = 1<<1 ; Current Source Calibration bit 1 mask
AC_CALIB1_bp = 1 ; Current Source Calibration bit 1 position
AC_CALIB2_bm = 1<<2 ; Current Source Calibration bit 2 mask
AC_CALIB2_bp = 2 ; Current Source Calibration bit 2 position
AC_CALIB3_bm = 1<<3 ; Current Source Calibration bit 3 mask
AC_CALIB3_bp = 3 ; Current Source Calibration bit 3 position

; Interrupt mode
AC_INTMODE_BOTHEDGES_gc = 0x00<<6 ; Interrupt on both edges
AC_INTMODE_FALLING_gc = 0x02<<6 ; Interrupt on falling edge
AC_INTMODE_RISING_gc = 0x03<<6 ; Interrupt on rising edge

; Interrupt level
AC_INTLVL_OFF_gc = 0x00<<4 ; Interrupt disabled
AC_INTLVL_LO_gc = 0x01<<4 ; Low level
AC_INTLVL_MED_gc = 0x02<<4 ; Medium level
AC_INTLVL_HI_gc = 0x03<<4 ; High level

; Hysteresis mode selection
AC_HYSMODE_NO_gc = 0x00<<1 ; No hysteresis
AC_HYSMODE_SMALL_gc = 0x01<<1 ; Small hysteresis
AC_HYSMODE_LARGE_gc = 0x02<<1 ; Large hysteresis

; Positive input multiplexer selection
AC_MUXPOS_PIN0_gc = 0x00<<3 ; Pin 0
AC_MUXPOS_PIN1_gc = 0x01<<3 ; Pin 1
AC_MUXPOS_PIN2_gc = 0x02<<3 ; Pin 2
AC_MUXPOS_PIN3_gc = 0x03<<3 ; Pin 3
AC_MUXPOS_PIN4_gc = 0x04<<3 ; Pin 4
AC_MUXPOS_PIN5_gc = 0x05<<3 ; Pin 5
AC_MUXPOS_PIN6_gc = 0x06<<3 ; Pin 6
AC_MUXPOS_DAC_gc = 0x07<<3 ; DAC output

; Negative input multiplexer selection
AC_MUXNEG_PIN0_gc = 0x00<<0 ; Pin 0
AC_MUXNEG_PIN1_gc = 0x01<<0 ; Pin 1
AC_MUXNEG_PIN3_gc = 0x02<<0 ; Pin 3
AC_MUXNEG_PIN5_gc = 0x03<<0 ; Pin 5
AC_MUXNEG_PIN7_gc = 0x04<<0 ; Pin 7
AC_MUXNEG_DAC_gc = 0x05<<0 ; DAC output
AC_MUXNEG_BANDGAP_gc = 0x06<<0 ; Bandgap Reference
AC_MUXNEG_SCALER_gc = 0x07<<0 ; Internal voltage scaler

; Windows interrupt mode
AC_WINTMODE_ABOVE_gc = 0x00<<2 ; Interrupt on above window
AC_WINTMODE_INSIDE_gc = 0x01<<2 ; Interrupt on inside window
AC_WINTMODE_BELOW_gc = 0x02<<2 ; Interrupt on below window
AC_WINTMODE_OUTSIDE_gc = 0x03<<2 ; Interrupt on outside window

; Window interrupt level
AC_WINTLVL_OFF_gc = 0x00<<0 ; Interrupt disabled
AC_WINTLVL_LO_gc = 0x01<<0 ; Low priority
AC_WINTLVL_MED_gc = 0x02<<0 ; Medium priority
AC_WINTLVL_HI_gc = 0x03<<0 ; High priority

; Window mode state
AC_WSTATE_ABOVE_gc = 0x00<<6 ; Signal above window
AC_WSTATE_INSIDE_gc = 0x01<<6 ; Signal inside window
AC_WSTATE_BELOW_gc = 0x02<<6 ; Signal below window


;*************************************************************************
;** RTC - Real-Time Clounter
;*************************************************************************

; RTC_CTRL masks
RTC_CORREN_bm = 0x08 ; Correction Enable bit mask
RTC_CORREN_bp = 3 ; Correction Enable bit position
RTC_PRESCALER_gm = 0x07 ; Prescaling Factor group mask
RTC_PRESCALER_gp = 0 ; Prescaling Factor group position
RTC_PRESCALER0_bm = 1<<0 ; Prescaling Factor bit 0 mask
RTC_PRESCALER0_bp = 0 ; Prescaling Factor bit 0 position
RTC_PRESCALER1_bm = 1<<1 ; Prescaling Factor bit 1 mask
RTC_PRESCALER1_bp = 1 ; Prescaling Factor bit 1 position
RTC_PRESCALER2_bm = 1<<2 ; Prescaling Factor bit 2 mask
RTC_PRESCALER2_bp = 2 ; Prescaling Factor bit 2 position

; RTC_STATUS masks
RTC_SYNCBUSY_bm = 0x01 ; Synchronization Busy Flag bit mask
RTC_SYNCBUSY_bp = 0 ; Synchronization Busy Flag bit position

; RTC_INTCTRL masks
RTC_COMPINTLVL_gm = 0x0C ; Compare Match Interrupt Level group mask
RTC_COMPINTLVL_gp = 2 ; Compare Match Interrupt Level group position
RTC_COMPINTLVL0_bm = 1<<2 ; Compare Match Interrupt Level bit 0 mask
RTC_COMPINTLVL0_bp = 2 ; Compare Match Interrupt Level bit 0 position
RTC_COMPINTLVL1_bm = 1<<3 ; Compare Match Interrupt Level bit 1 mask
RTC_COMPINTLVL1_bp = 3 ; Compare Match Interrupt Level bit 1 position
RTC_OVFINTLVL_gm = 0x03 ; Overflow Interrupt Level group mask
RTC_OVFINTLVL_gp = 0 ; Overflow Interrupt Level group position
RTC_OVFINTLVL0_bm = 1<<0 ; Overflow Interrupt Level bit 0 mask
RTC_OVFINTLVL0_bp = 0 ; Overflow Interrupt Level bit 0 position
RTC_OVFINTLVL1_bm = 1<<1 ; Overflow Interrupt Level bit 1 mask
RTC_OVFINTLVL1_bp = 1 ; Overflow Interrupt Level bit 1 position

; RTC_INTFLAGS masks
RTC_COMPIF_bm = 0x02 ; Compare Match Interrupt Flag bit mask
RTC_COMPIF_bp = 1 ; Compare Match Interrupt Flag bit position
RTC_OVFIF_bm = 0x01 ; Overflow Interrupt Flag bit mask
RTC_OVFIF_bp = 0 ; Overflow Interrupt Flag bit position

; RTC_CALIB masks
RTC_SIGN_bm = 0x80 ; Correction Sign bit mask
RTC_SIGN_bp = 7 ; Correction Sign bit position
RTC_ERROR_gm = 0x7F ; Error Value group mask
RTC_ERROR_gp = 0 ; Error Value group position
RTC_ERROR0_bm = 1<<0 ; Error Value bit 0 mask
RTC_ERROR0_bp = 0 ; Error Value bit 0 position
RTC_ERROR1_bm = 1<<1 ; Error Value bit 1 mask
RTC_ERROR1_bp = 1 ; Error Value bit 1 position
RTC_ERROR2_bm = 1<<2 ; Error Value bit 2 mask
RTC_ERROR2_bp = 2 ; Error Value bit 2 position
RTC_ERROR3_bm = 1<<3 ; Error Value bit 3 mask
RTC_ERROR3_bp = 3 ; Error Value bit 3 position
RTC_ERROR4_bm = 1<<4 ; Error Value bit 4 mask
RTC_ERROR4_bp = 4 ; Error Value bit 4 position
RTC_ERROR5_bm = 1<<5 ; Error Value bit 5 mask
RTC_ERROR5_bp = 5 ; Error Value bit 5 position
RTC_ERROR6_bm = 1<<6 ; Error Value bit 6 mask
RTC_ERROR6_bp = 6 ; Error Value bit 6 position

; Prescaler Factor
RTC_PRESCALER_OFF_gc = 0x00<<0 ; RTC Off
RTC_PRESCALER_DIV1_gc = 0x01<<0 ; RTC Clock
RTC_PRESCALER_DIV2_gc = 0x02<<0 ; RTC Clock / 2
RTC_PRESCALER_DIV8_gc = 0x03<<0 ; RTC Clock / 8
RTC_PRESCALER_DIV16_gc = 0x04<<0 ; RTC Clock / 16
RTC_PRESCALER_DIV64_gc = 0x05<<0 ; RTC Clock / 64
RTC_PRESCALER_DIV256_gc = 0x06<<0 ; RTC Clock / 256
RTC_PRESCALER_DIV1024_gc = 0x07<<0 ; RTC Clock / 1024

; Compare Interrupt level
RTC_COMPINTLVL_OFF_gc = 0x00<<2 ; Interrupt Disabled
RTC_COMPINTLVL_LO_gc = 0x01<<2 ; Low Level
RTC_COMPINTLVL_MED_gc = 0x02<<2 ; Medium Level
RTC_COMPINTLVL_HI_gc = 0x03<<2 ; High Level

; Overflow Interrupt level
RTC_OVFINTLVL_OFF_gc = 0x00<<0 ; Interrupt Disabled
RTC_OVFINTLVL_LO_gc = 0x01<<0 ; Low Level
RTC_OVFINTLVL_MED_gc = 0x02<<0 ; Medium Level
RTC_OVFINTLVL_HI_gc = 0x03<<0 ; High Level


;*************************************************************************
;** XCL - XMEGA Custom Logic
;*************************************************************************

; XCL_CTRLA masks
XCL_LUT0OUTEN_gm = 0xC0 ; LUT0 Output Enable group mask
XCL_LUT0OUTEN_gp = 6 ; LUT0 Output Enable group position
XCL_LUT0OUTEN0_bm = 1<<6 ; LUT0 Output Enable bit 0 mask
XCL_LUT0OUTEN0_bp = 6 ; LUT0 Output Enable bit 0 position
XCL_LUT0OUTEN1_bm = 1<<7 ; LUT0 Output Enable bit 1 mask
XCL_LUT0OUTEN1_bp = 7 ; LUT0 Output Enable bit 1 position
XCL_PORTSEL_gm = 0x30 ; Port Selection group mask
XCL_PORTSEL_gp = 4 ; Port Selection group position
XCL_PORTSEL0_bm = 1<<4 ; Port Selection bit 0 mask
XCL_PORTSEL0_bp = 4 ; Port Selection bit 0 position
XCL_PORTSEL1_bm = 1<<5 ; Port Selection bit 1 mask
XCL_PORTSEL1_bp = 5 ; Port Selection bit 1 position
XCL_LUTCONF_gm = 0x07 ; LUT Configuration group mask
XCL_LUTCONF_gp = 0 ; LUT Configuration group position
XCL_LUTCONF0_bm = 1<<0 ; LUT Configuration bit 0 mask
XCL_LUTCONF0_bp = 0 ; LUT Configuration bit 0 position
XCL_LUTCONF1_bm = 1<<1 ; LUT Configuration bit 1 mask
XCL_LUTCONF1_bp = 1 ; LUT Configuration bit 1 position
XCL_LUTCONF2_bm = 1<<2 ; LUT Configuration bit 2 mask
XCL_LUTCONF2_bp = 2 ; LUT Configuration bit 2 position

; XCL_CTRLB masks
XCL_IN3SEL_gm = 0xC0 ; Input Selection 3 group mask
XCL_IN3SEL_gp = 6 ; Input Selection 3 group position
XCL_IN3SEL0_bm = 1<<6 ; Input Selection 3 bit 0 mask
XCL_IN3SEL0_bp = 6 ; Input Selection 3 bit 0 position
XCL_IN3SEL1_bm = 1<<7 ; Input Selection 3 bit 1 mask
XCL_IN3SEL1_bp = 7 ; Input Selection 3 bit 1 position
XCL_IN2SEL_gm = 0x30 ; Input Selection 2 group mask
XCL_IN2SEL_gp = 4 ; Input Selection 2 group position
XCL_IN2SEL0_bm = 1<<4 ; Input Selection 2 bit 0 mask
XCL_IN2SEL0_bp = 4 ; Input Selection 2 bit 0 position
XCL_IN2SEL1_bm = 1<<5 ; Input Selection 2 bit 1 mask
XCL_IN2SEL1_bp = 5 ; Input Selection 2 bit 1 position
XCL_IN1SEL_gm = 0x0C ; Input Selection 1 group mask
XCL_IN1SEL_gp = 2 ; Input Selection 1 group position
XCL_IN1SEL0_bm = 1<<2 ; Input Selection 1 bit 0 mask
XCL_IN1SEL0_bp = 2 ; Input Selection 1 bit 0 position
XCL_IN1SEL1_bm = 1<<3 ; Input Selection 1 bit 1 mask
XCL_IN1SEL1_bp = 3 ; Input Selection 1 bit 1 position
XCL_IN0SEL_gm = 0x03 ; Input Selection 0 group mask
XCL_IN0SEL_gp = 0 ; Input Selection 0 group position
XCL_IN0SEL0_bm = 1<<0 ; Input Selection 0 bit 0 mask
XCL_IN0SEL0_bp = 0 ; Input Selection 0 bit 0 position
XCL_IN0SEL1_bm = 1<<1 ; Input Selection 0 bit 1 mask
XCL_IN0SEL1_bp = 1 ; Input Selection 0 bit 1 position

; XCL_CTRLC masks
XCL_DLYSEL_gm = 0x30 ; Delay Selection group mask
XCL_DLYSEL_gp = 4 ; Delay Selection group position
XCL_DLYSEL0_bm = 1<<4 ; Delay Selection bit 0 mask
XCL_DLYSEL0_bp = 4 ; Delay Selection bit 0 position
XCL_DLYSEL1_bm = 1<<5 ; Delay Selection bit 1 mask
XCL_DLYSEL1_bp = 5 ; Delay Selection bit 1 position
XCL_DLY1CONF_gm = 0x0C ; Delay Configuration on LUT1 group mask
XCL_DLY1CONF_gp = 2 ; Delay Configuration on LUT1 group position
XCL_DLY1CONF0_bm = 1<<2 ; Delay Configuration on LUT1 bit 0 mask
XCL_DLY1CONF0_bp = 2 ; Delay Configuration on LUT1 bit 0 position
XCL_DLY1CONF1_bm = 1<<3 ; Delay Configuration on LUT1 bit 1 mask
XCL_DLY1CONF1_bp = 3 ; Delay Configuration on LUT1 bit 1 position
XCL_DLY0CONF_gm = 0x03 ; Delay Configuration on LUT0 group mask
XCL_DLY0CONF_gp = 0 ; Delay Configuration on LUT0 group position
XCL_DLY0CONF0_bm = 1<<0 ; Delay Configuration on LUT0 bit 0 mask
XCL_DLY0CONF0_bp = 0 ; Delay Configuration on LUT0 bit 0 position
XCL_DLY0CONF1_bm = 1<<1 ; Delay Configuration on LUT0 bit 1 mask
XCL_DLY0CONF1_bp = 1 ; Delay Configuration on LUT0 bit 1 position

; XCL_CTRLD masks
XCL_TRUTH1_gm = 0xF0 ; Truth Table of LUT1 group mask
XCL_TRUTH1_gp = 4 ; Truth Table of LUT1 group position
XCL_TRUTH10_bm = 1<<4 ; Truth Table of LUT1 bit 0 mask
XCL_TRUTH10_bp = 4 ; Truth Table of LUT1 bit 0 position
XCL_TRUTH11_bm = 1<<5 ; Truth Table of LUT1 bit 1 mask
XCL_TRUTH11_bp = 5 ; Truth Table of LUT1 bit 1 position
XCL_TRUTH12_bm = 1<<6 ; Truth Table of LUT1 bit 2 mask
XCL_TRUTH12_bp = 6 ; Truth Table of LUT1 bit 2 position
XCL_TRUTH13_bm = 1<<7 ; Truth Table of LUT1 bit 3 mask
XCL_TRUTH13_bp = 7 ; Truth Table of LUT1 bit 3 position
XCL_TRUTH0_gm = 0x0F ; Truth Table of LUT0 group mask
XCL_TRUTH0_gp = 0 ; Truth Table of LUT0 group position
XCL_TRUTH00_bm = 1<<0 ; Truth Table of LUT0 bit 0 mask
XCL_TRUTH00_bp = 0 ; Truth Table of LUT0 bit 0 position
XCL_TRUTH01_bm = 1<<1 ; Truth Table of LUT0 bit 1 mask
XCL_TRUTH01_bp = 1 ; Truth Table of LUT0 bit 1 position
XCL_TRUTH02_bm = 1<<2 ; Truth Table of LUT0 bit 2 mask
XCL_TRUTH02_bp = 2 ; Truth Table of LUT0 bit 2 position
XCL_TRUTH03_bm = 1<<3 ; Truth Table of LUT0 bit 3 mask
XCL_TRUTH03_bp = 3 ; Truth Table of LUT0 bit 3 position

; XCL_CTRLE masks
XCL_CMDSEL_bm = 0x80 ; Timer/Counter Command Selection bit mask
XCL_CMDSEL_bp = 7 ; Timer/Counter Command Selection bit position
XCL_TCSEL_gm = 0x70 ; Timer/Counter Selection group mask
XCL_TCSEL_gp = 4 ; Timer/Counter Selection group position
XCL_TCSEL0_bm = 1<<4 ; Timer/Counter Selection bit 0 mask
XCL_TCSEL0_bp = 4 ; Timer/Counter Selection bit 0 position
XCL_TCSEL1_bm = 1<<5 ; Timer/Counter Selection bit 1 mask
XCL_TCSEL1_bp = 5 ; Timer/Counter Selection bit 1 position
XCL_TCSEL2_bm = 1<<6 ; Timer/Counter Selection bit 2 mask
XCL_TCSEL2_bp = 6 ; Timer/Counter Selection bit 2 position
XCL_CLKSEL_gm = 0x0F ; Clock Selection group mask
XCL_CLKSEL_gp = 0 ; Clock Selection group position
XCL_CLKSEL0_bm = 1<<0 ; Clock Selection bit 0 mask
XCL_CLKSEL0_bp = 0 ; Clock Selection bit 0 position
XCL_CLKSEL1_bm = 1<<1 ; Clock Selection bit 1 mask
XCL_CLKSEL1_bp = 1 ; Clock Selection bit 1 position
XCL_CLKSEL2_bm = 1<<2 ; Clock Selection bit 2 mask
XCL_CLKSEL2_bp = 2 ; Clock Selection bit 2 position
XCL_CLKSEL3_bm = 1<<3 ; Clock Selection bit 3 mask
XCL_CLKSEL3_bp = 3 ; Clock Selection bit 3 position

; XCL_CTRLF masks
XCL_CMDEN_gm = 0xC0 ; Command Enable group mask
XCL_CMDEN_gp = 6 ; Command Enable group position
XCL_CMDEN0_bm = 1<<6 ; Command Enable bit 0 mask
XCL_CMDEN0_bp = 6 ; Command Enable bit 0 position
XCL_CMDEN1_bm = 1<<7 ; Command Enable bit 1 mask
XCL_CMDEN1_bp = 7 ; Command Enable bit 1 position
XCL_CMP1_bm = 0x20 ; Compare Channel 1 Output Value bit mask
XCL_CMP1_bp = 5 ; Compare Channel 1 Output Value bit position
XCL_CMP0_bm = 0x10 ; Compare Channel 0 Output Value bit mask
XCL_CMP0_bp = 4 ; Compare Channel 0 Output Value bit position
XCL_CCEN1_bm = 0x08 ; Compare or Capture Channel 1 Enable bit mask
XCL_CCEN1_bp = 3 ; Compare or Capture Channel 1 Enable bit position
XCL_CCEN0_bm = 0x04 ; Compare or Capture Channel 0 Enable bit mask
XCL_CCEN0_bp = 2 ; Compare or Capture Channel 0 Enable bit position
XCL_MODE_gm = 0x03 ; Timer/Counter Mode group mask
XCL_MODE_gp = 0 ; Timer/Counter Mode group position
XCL_MODE0_bm = 1<<0 ; Timer/Counter Mode bit 0 mask
XCL_MODE0_bp = 0 ; Timer/Counter Mode bit 0 position
XCL_MODE1_bm = 1<<1 ; Timer/Counter Mode bit 1 mask
XCL_MODE1_bp = 1 ; Timer/Counter Mode bit 1 position

; XCL_CTRLG masks
XCL_EVACTEN_bm = 0x80 ; Event Action Enable bit mask
XCL_EVACTEN_bp = 7 ; Event Action Enable bit position
XCL_EVACT1_gm = 0x60 ; Event Action Selection on Timer/Counter 1 group mask
XCL_EVACT1_gp = 5 ; Event Action Selection on Timer/Counter 1 group position
XCL_EVACT10_bm = 1<<5 ; Event Action Selection on Timer/Counter 1 bit 0 mask
XCL_EVACT10_bp = 5 ; Event Action Selection on Timer/Counter 1 bit 0 position
XCL_EVACT11_bm = 1<<6 ; Event Action Selection on Timer/Counter 1 bit 1 mask
XCL_EVACT11_bp = 6 ; Event Action Selection on Timer/Counter 1 bit 1 position
XCL_EVACT0_gm = 0x18 ; Event Action Selection on Timer/Counter 0 group mask
XCL_EVACT0_gp = 3 ; Event Action Selection on Timer/Counter 0 group position
XCL_EVACT00_bm = 1<<3 ; Event Action Selection on Timer/Counter 0 bit 0 mask
XCL_EVACT00_bp = 3 ; Event Action Selection on Timer/Counter 0 bit 0 position
XCL_EVACT01_bm = 1<<4 ; Event Action Selection on Timer/Counter 0 bit 1 mask
XCL_EVACT01_bp = 4 ; Event Action Selection on Timer/Counter 0 bit 1 position
XCL_EVSRC_gm = 0x07 ; Event Source Selection group mask
XCL_EVSRC_gp = 0 ; Event Source Selection group position
XCL_EVSRC0_bm = 1<<0 ; Event Source Selection bit 0 mask
XCL_EVSRC0_bp = 0 ; Event Source Selection bit 0 position
XCL_EVSRC1_bm = 1<<1 ; Event Source Selection bit 1 mask
XCL_EVSRC1_bp = 1 ; Event Source Selection bit 1 position
XCL_EVSRC2_bm = 1<<2 ; Event Source Selection bit 2 mask
XCL_EVSRC2_bp = 2 ; Event Source Selection bit 2 position

; XCL_INTCTRL masks
XCL_UNF1IE_bm = 0x80 ; Underflow 1 Interrupt Enable bit mask
XCL_UNF1IE_bp = 7 ; Underflow 1 Interrupt Enable bit position
XCL_PEC1IE_bm = 0x80 ; Peripheral Counter 1 Interrupt Enable bit mask
XCL_PEC1IE_bp = 7 ; Peripheral Counter 1 Interrupt Enable bit position
XCL_PEC21IE_bm = 0x80 ; Peripheral High Counter 2 Interrupt Enable bit mask
XCL_PEC21IE_bp = 7 ; Peripheral High Counter 2 Interrupt Enable bit position
XCL_UNF0IE_bm = 0x40 ; Underflow 0 Interrupt Enable bit mask
XCL_UNF0IE_bp = 6 ; Underflow 0 Interrupt Enable bit position
XCL_PEC0IE_bm = 0x40 ; Peripheral Counter 0 Interrupt Enable bit mask
XCL_PEC0IE_bp = 6 ; Peripheral Counter 0 Interrupt Enable bit position
XCL_CC1IE_bm = 0x20 ; Compare Or Capture 1 Interrupt Enable bit mask
XCL_CC1IE_bp = 5 ; Compare Or Capture 1 Interrupt Enable bit position
XCL_PEC20IE_bm = 0x20 ; Peripheral Low Counter 2 Interrupt Enable bit mask
XCL_PEC20IE_bp = 5 ; Peripheral Low Counter 2 Interrupt Enable bit position
XCL_CC0IE_bm = 0x10 ; Compare Or Capture 0 Interrupt Enable bit mask
XCL_CC0IE_bp = 4 ; Compare Or Capture 0 Interrupt Enable bit position
XCL_UNFINTLVL_gm = 0x0C ; Timer Underflow Interrupt Level group mask
XCL_UNFINTLVL_gp = 2 ; Timer Underflow Interrupt Level group position
XCL_UNFINTLVL0_bm = 1<<2 ; Timer Underflow Interrupt Level bit 0 mask
XCL_UNFINTLVL0_bp = 2 ; Timer Underflow Interrupt Level bit 0 position
XCL_UNFINTLVL1_bm = 1<<3 ; Timer Underflow Interrupt Level bit 1 mask
XCL_UNFINTLVL1_bp = 3 ; Timer Underflow Interrupt Level bit 1 position
XCL_CCINTLVL_gm = 0x03 ; Timer Compare or Capture Interrupt Level group mask
XCL_CCINTLVL_gp = 0 ; Timer Compare or Capture Interrupt Level group position
XCL_CCINTLVL0_bm = 1<<0 ; Timer Compare or Capture Interrupt Level bit 0 mask
XCL_CCINTLVL0_bp = 0 ; Timer Compare or Capture Interrupt Level bit 0 position
XCL_CCINTLVL1_bm = 1<<1 ; Timer Compare or Capture Interrupt Level bit 1 mask
XCL_CCINTLVL1_bp = 1 ; Timer Compare or Capture Interrupt Level bit 1 position

; XCL_INTFLAGS masks
XCL_UNF1IF_bm = 0x80 ; Timer/Counter 1 Underflow Interrupt Flag bit mask
XCL_UNF1IF_bp = 7 ; Timer/Counter 1 Underflow Interrupt Flag bit position
XCL_PEC1IF_bm = 0x80 ; Peripheral Counter 1 Interrupt Flag bit mask
XCL_PEC1IF_bp = 7 ; Peripheral Counter 1 Interrupt Flag bit position
XCL_PEC21IF_bm = 0x80 ; Peripheral High Counter 2 Interrupt Flag bit mask
XCL_PEC21IF_bp = 7 ; Peripheral High Counter 2 Interrupt Flag bit position
XCL_UNF0IF_bm = 0x40 ; Timer/Counter 0 Underflow Interrupt Flag bit mask
XCL_UNF0IF_bp = 6 ; Timer/Counter 0 Underflow Interrupt Flag bit position
XCL_PEC0IF_bm = 0x40 ; Peripheral Counter 0 Interrupt Flag bit mask
XCL_PEC0IF_bp = 6 ; Peripheral Counter 0 Interrupt Flag bit position
XCL_CC1IF_bm = 0x20 ; Compare or Capture Channel 1 Interrupt Flag bit mask
XCL_CC1IF_bp = 5 ; Compare or Capture Channel 1 Interrupt Flag bit position
XCL_PEC20IF_bm = 0x20 ; Peripheral Low Counter 2 Interrupt Flag bit mask
XCL_PEC20IF_bp = 5 ; Peripheral Low Counter 2 Interrupt Flag bit position
XCL_CC0IF_bm = 0x10 ; Compare or Capture Channel 0 Interrupt Flag bit mask
XCL_CC0IF_bp = 4 ; Compare or Capture Channel 0 Interrupt Flag bit position

; XCL_PLC masks
XCL_PLC_gm = 0xFF ; Peripheral Lenght Control Bits group mask
XCL_PLC_gp = 0 ; Peripheral Lenght Control Bits group position
XCL_PLC0_bm = 1<<0 ; Peripheral Lenght Control Bits bit 0 mask
XCL_PLC0_bp = 0 ; Peripheral Lenght Control Bits bit 0 position
XCL_PLC1_bm = 1<<1 ; Peripheral Lenght Control Bits bit 1 mask
XCL_PLC1_bp = 1 ; Peripheral Lenght Control Bits bit 1 position
XCL_PLC2_bm = 1<<2 ; Peripheral Lenght Control Bits bit 2 mask
XCL_PLC2_bp = 2 ; Peripheral Lenght Control Bits bit 2 position
XCL_PLC3_bm = 1<<3 ; Peripheral Lenght Control Bits bit 3 mask
XCL_PLC3_bp = 3 ; Peripheral Lenght Control Bits bit 3 position
XCL_PLC4_bm = 1<<4 ; Peripheral Lenght Control Bits bit 4 mask
XCL_PLC4_bp = 4 ; Peripheral Lenght Control Bits bit 4 position
XCL_PLC5_bm = 1<<5 ; Peripheral Lenght Control Bits bit 5 mask
XCL_PLC5_bp = 5 ; Peripheral Lenght Control Bits bit 5 position
XCL_PLC6_bm = 1<<6 ; Peripheral Lenght Control Bits bit 6 mask
XCL_PLC6_bp = 6 ; Peripheral Lenght Control Bits bit 6 position
XCL_PLC7_bm = 1<<7 ; Peripheral Lenght Control Bits bit 7 mask
XCL_PLC7_bp = 7 ; Peripheral Lenght Control Bits bit 7 position

; XCL_CNTL masks
XCL_BCNTO_gm = 0xFF ; BTC0 Counter Byte group mask
XCL_BCNTO_gp = 0 ; BTC0 Counter Byte group position
XCL_BCNTO0_bm = 1<<0 ; BTC0 Counter Byte bit 0 mask
XCL_BCNTO0_bp = 0 ; BTC0 Counter Byte bit 0 position
XCL_BCNTO1_bm = 1<<1 ; BTC0 Counter Byte bit 1 mask
XCL_BCNTO1_bp = 1 ; BTC0 Counter Byte bit 1 position
XCL_BCNTO2_bm = 1<<2 ; BTC0 Counter Byte bit 2 mask
XCL_BCNTO2_bp = 2 ; BTC0 Counter Byte bit 2 position
XCL_BCNTO3_bm = 1<<3 ; BTC0 Counter Byte bit 3 mask
XCL_BCNTO3_bp = 3 ; BTC0 Counter Byte bit 3 position
XCL_BCNTO4_bm = 1<<4 ; BTC0 Counter Byte bit 4 mask
XCL_BCNTO4_bp = 4 ; BTC0 Counter Byte bit 4 position
XCL_BCNTO5_bm = 1<<5 ; BTC0 Counter Byte bit 5 mask
XCL_BCNTO5_bp = 5 ; BTC0 Counter Byte bit 5 position
XCL_BCNTO6_bm = 1<<6 ; BTC0 Counter Byte bit 6 mask
XCL_BCNTO6_bp = 6 ; BTC0 Counter Byte bit 6 position
XCL_BCNTO7_bm = 1<<7 ; BTC0 Counter Byte bit 7 mask
XCL_BCNTO7_bp = 7 ; BTC0 Counter Byte bit 7 position
XCL_CNTL_gm = 0xFF ; TC16 Counter Low Byte group mask
XCL_CNTL_gp = 0 ; TC16 Counter Low Byte group position
XCL_CNTL0_bm = 1<<0 ; TC16 Counter Low Byte bit 0 mask
XCL_CNTL0_bp = 0 ; TC16 Counter Low Byte bit 0 position
XCL_CNTL1_bm = 1<<1 ; TC16 Counter Low Byte bit 1 mask
XCL_CNTL1_bp = 1 ; TC16 Counter Low Byte bit 1 position
XCL_CNTL2_bm = 1<<2 ; TC16 Counter Low Byte bit 2 mask
XCL_CNTL2_bp = 2 ; TC16 Counter Low Byte bit 2 position
XCL_CNTL3_bm = 1<<3 ; TC16 Counter Low Byte bit 3 mask
XCL_CNTL3_bp = 3 ; TC16 Counter Low Byte bit 3 position
XCL_CNTL4_bm = 1<<4 ; TC16 Counter Low Byte bit 4 mask
XCL_CNTL4_bp = 4 ; TC16 Counter Low Byte bit 4 position
XCL_CNTL5_bm = 1<<5 ; TC16 Counter Low Byte bit 5 mask
XCL_CNTL5_bp = 5 ; TC16 Counter Low Byte bit 5 position
XCL_CNTL6_bm = 1<<6 ; TC16 Counter Low Byte bit 6 mask
XCL_CNTL6_bp = 6 ; TC16 Counter Low Byte bit 6 position
XCL_CNTL7_bm = 1<<7 ; TC16 Counter Low Byte bit 7 mask
XCL_CNTL7_bp = 7 ; TC16 Counter Low Byte bit 7 position
XCL_PCNTO_gm = 0xFF ; Peripheral Counter 0 Byte group mask
XCL_PCNTO_gp = 0 ; Peripheral Counter 0 Byte group position
XCL_PCNTO0_bm = 1<<0 ; Peripheral Counter 0 Byte bit 0 mask
XCL_PCNTO0_bp = 0 ; Peripheral Counter 0 Byte bit 0 position
XCL_PCNTO1_bm = 1<<1 ; Peripheral Counter 0 Byte bit 1 mask
XCL_PCNTO1_bp = 1 ; Peripheral Counter 0 Byte bit 1 position
XCL_PCNTO2_bm = 1<<2 ; Peripheral Counter 0 Byte bit 2 mask
XCL_PCNTO2_bp = 2 ; Peripheral Counter 0 Byte bit 2 position
XCL_PCNTO3_bm = 1<<3 ; Peripheral Counter 0 Byte bit 3 mask
XCL_PCNTO3_bp = 3 ; Peripheral Counter 0 Byte bit 3 position
XCL_PCNTO4_bm = 1<<4 ; Peripheral Counter 0 Byte bit 4 mask
XCL_PCNTO4_bp = 4 ; Peripheral Counter 0 Byte bit 4 position
XCL_PCNTO5_bm = 1<<5 ; Peripheral Counter 0 Byte bit 5 mask
XCL_PCNTO5_bp = 5 ; Peripheral Counter 0 Byte bit 5 position
XCL_PCNTO6_bm = 1<<6 ; Peripheral Counter 0 Byte bit 6 mask
XCL_PCNTO6_bp = 6 ; Peripheral Counter 0 Byte bit 6 position
XCL_PCNTO7_bm = 1<<7 ; Peripheral Counter 0 Byte bit 7 mask
XCL_PCNTO7_bp = 7 ; Peripheral Counter 0 Byte bit 7 position

; XCL_CNTH masks
XCL_BCNT1_gm = 0xFF ; BTC1 Counter Byte group mask
XCL_BCNT1_gp = 0 ; BTC1 Counter Byte group position
XCL_BCNT10_bm = 1<<0 ; BTC1 Counter Byte bit 0 mask
XCL_BCNT10_bp = 0 ; BTC1 Counter Byte bit 0 position
XCL_BCNT11_bm = 1<<1 ; BTC1 Counter Byte bit 1 mask
XCL_BCNT11_bp = 1 ; BTC1 Counter Byte bit 1 position
XCL_BCNT12_bm = 1<<2 ; BTC1 Counter Byte bit 2 mask
XCL_BCNT12_bp = 2 ; BTC1 Counter Byte bit 2 position
XCL_BCNT13_bm = 1<<3 ; BTC1 Counter Byte bit 3 mask
XCL_BCNT13_bp = 3 ; BTC1 Counter Byte bit 3 position
XCL_BCNT14_bm = 1<<4 ; BTC1 Counter Byte bit 4 mask
XCL_BCNT14_bp = 4 ; BTC1 Counter Byte bit 4 position
XCL_BCNT15_bm = 1<<5 ; BTC1 Counter Byte bit 5 mask
XCL_BCNT15_bp = 5 ; BTC1 Counter Byte bit 5 position
XCL_BCNT16_bm = 1<<6 ; BTC1 Counter Byte bit 6 mask
XCL_BCNT16_bp = 6 ; BTC1 Counter Byte bit 6 position
XCL_BCNT17_bm = 1<<7 ; BTC1 Counter Byte bit 7 mask
XCL_BCNT17_bp = 7 ; BTC1 Counter Byte bit 7 position
XCL_CNTH_gm = 0xFF ; TC16 Counter High Byte group mask
XCL_CNTH_gp = 0 ; TC16 Counter High Byte group position
XCL_CNTH0_bm = 1<<0 ; TC16 Counter High Byte bit 0 mask
XCL_CNTH0_bp = 0 ; TC16 Counter High Byte bit 0 position
XCL_CNTH1_bm = 1<<1 ; TC16 Counter High Byte bit 1 mask
XCL_CNTH1_bp = 1 ; TC16 Counter High Byte bit 1 position
XCL_CNTH2_bm = 1<<2 ; TC16 Counter High Byte bit 2 mask
XCL_CNTH2_bp = 2 ; TC16 Counter High Byte bit 2 position
XCL_CNTH3_bm = 1<<3 ; TC16 Counter High Byte bit 3 mask
XCL_CNTH3_bp = 3 ; TC16 Counter High Byte bit 3 position
XCL_CNTH4_bm = 1<<4 ; TC16 Counter High Byte bit 4 mask
XCL_CNTH4_bp = 4 ; TC16 Counter High Byte bit 4 position
XCL_CNTH5_bm = 1<<5 ; TC16 Counter High Byte bit 5 mask
XCL_CNTH5_bp = 5 ; TC16 Counter High Byte bit 5 position
XCL_CNTH6_bm = 1<<6 ; TC16 Counter High Byte bit 6 mask
XCL_CNTH6_bp = 6 ; TC16 Counter High Byte bit 6 position
XCL_CNTH7_bm = 1<<7 ; TC16 Counter High Byte bit 7 mask
XCL_CNTH7_bp = 7 ; TC16 Counter High Byte bit 7 position
XCL_PCNT1_gm = 0xFF ; Peripheral Counter 1 Byte group mask
XCL_PCNT1_gp = 0 ; Peripheral Counter 1 Byte group position
XCL_PCNT10_bm = 1<<0 ; Peripheral Counter 1 Byte bit 0 mask
XCL_PCNT10_bp = 0 ; Peripheral Counter 1 Byte bit 0 position
XCL_PCNT11_bm = 1<<1 ; Peripheral Counter 1 Byte bit 1 mask
XCL_PCNT11_bp = 1 ; Peripheral Counter 1 Byte bit 1 position
XCL_PCNT12_bm = 1<<2 ; Peripheral Counter 1 Byte bit 2 mask
XCL_PCNT12_bp = 2 ; Peripheral Counter 1 Byte bit 2 position
XCL_PCNT13_bm = 1<<3 ; Peripheral Counter 1 Byte bit 3 mask
XCL_PCNT13_bp = 3 ; Peripheral Counter 1 Byte bit 3 position
XCL_PCNT14_bm = 1<<4 ; Peripheral Counter 1 Byte bit 4 mask
XCL_PCNT14_bp = 4 ; Peripheral Counter 1 Byte bit 4 position
XCL_PCNT15_bm = 1<<5 ; Peripheral Counter 1 Byte bit 5 mask
XCL_PCNT15_bp = 5 ; Peripheral Counter 1 Byte bit 5 position
XCL_PCNT16_bm = 1<<6 ; Peripheral Counter 1 Byte bit 6 mask
XCL_PCNT16_bp = 6 ; Peripheral Counter 1 Byte bit 6 position
XCL_PCNT17_bm = 1<<7 ; Peripheral Counter 1 Byte bit 7 mask
XCL_PCNT17_bp = 7 ; Peripheral Counter 1 Byte bit 7 position
XCL_PCNT21_gm = 0xF0 ; Peripheral High Counter 2 Bits group mask
XCL_PCNT21_gp = 4 ; Peripheral High Counter 2 Bits group position
XCL_PCNT210_bm = 1<<4 ; Peripheral High Counter 2 Bits bit 0 mask
XCL_PCNT210_bp = 4 ; Peripheral High Counter 2 Bits bit 0 position
XCL_PCNT211_bm = 1<<5 ; Peripheral High Counter 2 Bits bit 1 mask
XCL_PCNT211_bp = 5 ; Peripheral High Counter 2 Bits bit 1 position
XCL_PCNT212_bm = 1<<6 ; Peripheral High Counter 2 Bits bit 2 mask
XCL_PCNT212_bp = 6 ; Peripheral High Counter 2 Bits bit 2 position
XCL_PCNT213_bm = 1<<7 ; Peripheral High Counter 2 Bits bit 3 mask
XCL_PCNT213_bp = 7 ; Peripheral High Counter 2 Bits bit 3 position
XCL_PCNT20_gm = 0x0F ; Peripheral Low Counter 2 Bits group mask
XCL_PCNT20_gp = 0 ; Peripheral Low Counter 2 Bits group position
XCL_PCNT200_bm = 1<<0 ; Peripheral Low Counter 2 Bits bit 0 mask
XCL_PCNT200_bp = 0 ; Peripheral Low Counter 2 Bits bit 0 position
XCL_PCNT201_bm = 1<<1 ; Peripheral Low Counter 2 Bits bit 1 mask
XCL_PCNT201_bp = 1 ; Peripheral Low Counter 2 Bits bit 1 position
XCL_PCNT202_bm = 1<<2 ; Peripheral Low Counter 2 Bits bit 2 mask
XCL_PCNT202_bp = 2 ; Peripheral Low Counter 2 Bits bit 2 position
XCL_PCNT203_bm = 1<<3 ; Peripheral Low Counter 2 Bits bit 3 mask
XCL_PCNT203_bp = 3 ; Peripheral Low Counter 2 Bits bit 3 position

; XCL_CMPL masks
XCL_CMPL_gm = 0xFF ; TC16 Compare Low Byte group mask
XCL_CMPL_gp = 0 ; TC16 Compare Low Byte group position
XCL_CMPL0_bm = 1<<0 ; TC16 Compare Low Byte bit 0 mask
XCL_CMPL0_bp = 0 ; TC16 Compare Low Byte bit 0 position
XCL_CMPL1_bm = 1<<1 ; TC16 Compare Low Byte bit 1 mask
XCL_CMPL1_bp = 1 ; TC16 Compare Low Byte bit 1 position
XCL_CMPL2_bm = 1<<2 ; TC16 Compare Low Byte bit 2 mask
XCL_CMPL2_bp = 2 ; TC16 Compare Low Byte bit 2 position
XCL_CMPL3_bm = 1<<3 ; TC16 Compare Low Byte bit 3 mask
XCL_CMPL3_bp = 3 ; TC16 Compare Low Byte bit 3 position
XCL_CMPL4_bm = 1<<4 ; TC16 Compare Low Byte bit 4 mask
XCL_CMPL4_bp = 4 ; TC16 Compare Low Byte bit 4 position
XCL_CMPL5_bm = 1<<5 ; TC16 Compare Low Byte bit 5 mask
XCL_CMPL5_bp = 5 ; TC16 Compare Low Byte bit 5 position
XCL_CMPL6_bm = 1<<6 ; TC16 Compare Low Byte bit 6 mask
XCL_CMPL6_bp = 6 ; TC16 Compare Low Byte bit 6 position
XCL_CMPL7_bm = 1<<7 ; TC16 Compare Low Byte bit 7 mask
XCL_CMPL7_bp = 7 ; TC16 Compare Low Byte bit 7 position
XCL_BCMP0_gm = 0xFF ; BTC0 Compare Byte group mask
XCL_BCMP0_gp = 0 ; BTC0 Compare Byte group position
XCL_BCMP00_bm = 1<<0 ; BTC0 Compare Byte bit 0 mask
XCL_BCMP00_bp = 0 ; BTC0 Compare Byte bit 0 position
XCL_BCMP01_bm = 1<<1 ; BTC0 Compare Byte bit 1 mask
XCL_BCMP01_bp = 1 ; BTC0 Compare Byte bit 1 position
XCL_BCMP02_bm = 1<<2 ; BTC0 Compare Byte bit 2 mask
XCL_BCMP02_bp = 2 ; BTC0 Compare Byte bit 2 position
XCL_BCMP03_bm = 1<<3 ; BTC0 Compare Byte bit 3 mask
XCL_BCMP03_bp = 3 ; BTC0 Compare Byte bit 3 position
XCL_BCMP04_bm = 1<<4 ; BTC0 Compare Byte bit 4 mask
XCL_BCMP04_bp = 4 ; BTC0 Compare Byte bit 4 position
XCL_BCMP05_bm = 1<<5 ; BTC0 Compare Byte bit 5 mask
XCL_BCMP05_bp = 5 ; BTC0 Compare Byte bit 5 position
XCL_BCMP06_bm = 1<<6 ; BTC0 Compare Byte bit 6 mask
XCL_BCMP06_bp = 6 ; BTC0 Compare Byte bit 6 position
XCL_BCMP07_bm = 1<<7 ; BTC0 Compare Byte bit 7 mask
XCL_BCMP07_bp = 7 ; BTC0 Compare Byte bit 7 position

; XCL_CMPH masks
XCL_CMPH_gm = 0xFF ; TC16 Compare High Byte group mask
XCL_CMPH_gp = 0 ; TC16 Compare High Byte group position
XCL_CMPH0_bm = 1<<0 ; TC16 Compare High Byte bit 0 mask
XCL_CMPH0_bp = 0 ; TC16 Compare High Byte bit 0 position
XCL_CMPH1_bm = 1<<1 ; TC16 Compare High Byte bit 1 mask
XCL_CMPH1_bp = 1 ; TC16 Compare High Byte bit 1 position
XCL_CMPH2_bm = 1<<2 ; TC16 Compare High Byte bit 2 mask
XCL_CMPH2_bp = 2 ; TC16 Compare High Byte bit 2 position
XCL_CMPH3_bm = 1<<3 ; TC16 Compare High Byte bit 3 mask
XCL_CMPH3_bp = 3 ; TC16 Compare High Byte bit 3 position
XCL_CMPH4_bm = 1<<4 ; TC16 Compare High Byte bit 4 mask
XCL_CMPH4_bp = 4 ; TC16 Compare High Byte bit 4 position
XCL_CMPH5_bm = 1<<5 ; TC16 Compare High Byte bit 5 mask
XCL_CMPH5_bp = 5 ; TC16 Compare High Byte bit 5 position
XCL_CMPH6_bm = 1<<6 ; TC16 Compare High Byte bit 6 mask
XCL_CMPH6_bp = 6 ; TC16 Compare High Byte bit 6 position
XCL_CMPH7_bm = 1<<7 ; TC16 Compare High Byte bit 7 mask
XCL_CMPH7_bp = 7 ; TC16 Compare High Byte bit 7 position
XCL_BCMP1_gm = 0xFF ; BTC1 Compare Byte group mask
XCL_BCMP1_gp = 0 ; BTC1 Compare Byte group position
XCL_BCMP10_bm = 1<<0 ; BTC1 Compare Byte bit 0 mask
XCL_BCMP10_bp = 0 ; BTC1 Compare Byte bit 0 position
XCL_BCMP11_bm = 1<<1 ; BTC1 Compare Byte bit 1 mask
XCL_BCMP11_bp = 1 ; BTC1 Compare Byte bit 1 position
XCL_BCMP12_bm = 1<<2 ; BTC1 Compare Byte bit 2 mask
XCL_BCMP12_bp = 2 ; BTC1 Compare Byte bit 2 position
XCL_BCMP13_bm = 1<<3 ; BTC1 Compare Byte bit 3 mask
XCL_BCMP13_bp = 3 ; BTC1 Compare Byte bit 3 position
XCL_BCMP14_bm = 1<<4 ; BTC1 Compare Byte bit 4 mask
XCL_BCMP14_bp = 4 ; BTC1 Compare Byte bit 4 position
XCL_BCMP15_bm = 1<<5 ; BTC1 Compare Byte bit 5 mask
XCL_BCMP15_bp = 5 ; BTC1 Compare Byte bit 5 position
XCL_BCMP16_bm = 1<<6 ; BTC1 Compare Byte bit 6 mask
XCL_BCMP16_bp = 6 ; BTC1 Compare Byte bit 6 position
XCL_BCMP17_bm = 1<<7 ; BTC1 Compare Byte bit 7 mask
XCL_BCMP17_bp = 7 ; BTC1 Compare Byte bit 7 position

; XCL_PERCAPTL masks
XCL_PERL_gm = 0xFF ; TC16 Low Byte Period group mask
XCL_PERL_gp = 0 ; TC16 Low Byte Period group position
XCL_PERL0_bm = 1<<0 ; TC16 Low Byte Period bit 0 mask
XCL_PERL0_bp = 0 ; TC16 Low Byte Period bit 0 position
XCL_PERL1_bm = 1<<1 ; TC16 Low Byte Period bit 1 mask
XCL_PERL1_bp = 1 ; TC16 Low Byte Period bit 1 position
XCL_PERL2_bm = 1<<2 ; TC16 Low Byte Period bit 2 mask
XCL_PERL2_bp = 2 ; TC16 Low Byte Period bit 2 position
XCL_PERL3_bm = 1<<3 ; TC16 Low Byte Period bit 3 mask
XCL_PERL3_bp = 3 ; TC16 Low Byte Period bit 3 position
XCL_PERL4_bm = 1<<4 ; TC16 Low Byte Period bit 4 mask
XCL_PERL4_bp = 4 ; TC16 Low Byte Period bit 4 position
XCL_PERL5_bm = 1<<5 ; TC16 Low Byte Period bit 5 mask
XCL_PERL5_bp = 5 ; TC16 Low Byte Period bit 5 position
XCL_PERL6_bm = 1<<6 ; TC16 Low Byte Period bit 6 mask
XCL_PERL6_bp = 6 ; TC16 Low Byte Period bit 6 position
XCL_PERL7_bm = 1<<7 ; TC16 Low Byte Period bit 7 mask
XCL_PERL7_bp = 7 ; TC16 Low Byte Period bit 7 position
XCL_CAPTL_gm = 0xFF ; TC16 Capture Value Low Byte group mask
XCL_CAPTL_gp = 0 ; TC16 Capture Value Low Byte group position
XCL_CAPTL0_bm = 1<<0 ; TC16 Capture Value Low Byte bit 0 mask
XCL_CAPTL0_bp = 0 ; TC16 Capture Value Low Byte bit 0 position
XCL_CAPTL1_bm = 1<<1 ; TC16 Capture Value Low Byte bit 1 mask
XCL_CAPTL1_bp = 1 ; TC16 Capture Value Low Byte bit 1 position
XCL_CAPTL2_bm = 1<<2 ; TC16 Capture Value Low Byte bit 2 mask
XCL_CAPTL2_bp = 2 ; TC16 Capture Value Low Byte bit 2 position
XCL_CAPTL3_bm = 1<<3 ; TC16 Capture Value Low Byte bit 3 mask
XCL_CAPTL3_bp = 3 ; TC16 Capture Value Low Byte bit 3 position
XCL_CAPTL4_bm = 1<<4 ; TC16 Capture Value Low Byte bit 4 mask
XCL_CAPTL4_bp = 4 ; TC16 Capture Value Low Byte bit 4 position
XCL_CAPTL5_bm = 1<<5 ; TC16 Capture Value Low Byte bit 5 mask
XCL_CAPTL5_bp = 5 ; TC16 Capture Value Low Byte bit 5 position
XCL_CAPTL6_bm = 1<<6 ; TC16 Capture Value Low Byte bit 6 mask
XCL_CAPTL6_bp = 6 ; TC16 Capture Value Low Byte bit 6 position
XCL_CAPTL7_bm = 1<<7 ; TC16 Capture Value Low Byte bit 7 mask
XCL_CAPTL7_bp = 7 ; TC16 Capture Value Low Byte bit 7 position
XCL_BPER0_gm = 0xFF ; BTC0 Period group mask
XCL_BPER0_gp = 0 ; BTC0 Period group position
XCL_BPER00_bm = 1<<0 ; BTC0 Period bit 0 mask
XCL_BPER00_bp = 0 ; BTC0 Period bit 0 position
XCL_BPER01_bm = 1<<1 ; BTC0 Period bit 1 mask
XCL_BPER01_bp = 1 ; BTC0 Period bit 1 position
XCL_BPER02_bm = 1<<2 ; BTC0 Period bit 2 mask
XCL_BPER02_bp = 2 ; BTC0 Period bit 2 position
XCL_BPER03_bm = 1<<3 ; BTC0 Period bit 3 mask
XCL_BPER03_bp = 3 ; BTC0 Period bit 3 position
XCL_BPER04_bm = 1<<4 ; BTC0 Period bit 4 mask
XCL_BPER04_bp = 4 ; BTC0 Period bit 4 position
XCL_BPER05_bm = 1<<5 ; BTC0 Period bit 5 mask
XCL_BPER05_bp = 5 ; BTC0 Period bit 5 position
XCL_BPER06_bm = 1<<6 ; BTC0 Period bit 6 mask
XCL_BPER06_bp = 6 ; BTC0 Period bit 6 position
XCL_BPER07_bm = 1<<7 ; BTC0 Period bit 7 mask
XCL_BPER07_bp = 7 ; BTC0 Period bit 7 position
XCL_BCAPT0_gm = 0xFF ; BTC0 Capture Value Byte group mask
XCL_BCAPT0_gp = 0 ; BTC0 Capture Value Byte group position
XCL_BCAPT00_bm = 1<<0 ; BTC0 Capture Value Byte bit 0 mask
XCL_BCAPT00_bp = 0 ; BTC0 Capture Value Byte bit 0 position
XCL_BCAPT01_bm = 1<<1 ; BTC0 Capture Value Byte bit 1 mask
XCL_BCAPT01_bp = 1 ; BTC0 Capture Value Byte bit 1 position
XCL_BCAPT02_bm = 1<<2 ; BTC0 Capture Value Byte bit 2 mask
XCL_BCAPT02_bp = 2 ; BTC0 Capture Value Byte bit 2 position
XCL_BCAPT03_bm = 1<<3 ; BTC0 Capture Value Byte bit 3 mask
XCL_BCAPT03_bp = 3 ; BTC0 Capture Value Byte bit 3 position
XCL_BCAPT04_bm = 1<<4 ; BTC0 Capture Value Byte bit 4 mask
XCL_BCAPT04_bp = 4 ; BTC0 Capture Value Byte bit 4 position
XCL_BCAPT05_bm = 1<<5 ; BTC0 Capture Value Byte bit 5 mask
XCL_BCAPT05_bp = 5 ; BTC0 Capture Value Byte bit 5 position
XCL_BCAPT06_bm = 1<<6 ; BTC0 Capture Value Byte bit 6 mask
XCL_BCAPT06_bp = 6 ; BTC0 Capture Value Byte bit 6 position
XCL_BCAPT07_bm = 1<<7 ; BTC0 Capture Value Byte bit 7 mask
XCL_BCAPT07_bp = 7 ; BTC0 Capture Value Byte bit 7 position

; XCL_PERCAPTH masks
XCL_PERH_gm = 0xFF ; TC16 High Byte Period group mask
XCL_PERH_gp = 0 ; TC16 High Byte Period group position
XCL_PERH0_bm = 1<<0 ; TC16 High Byte Period bit 0 mask
XCL_PERH0_bp = 0 ; TC16 High Byte Period bit 0 position
XCL_PERH1_bm = 1<<1 ; TC16 High Byte Period bit 1 mask
XCL_PERH1_bp = 1 ; TC16 High Byte Period bit 1 position
XCL_PERH2_bm = 1<<2 ; TC16 High Byte Period bit 2 mask
XCL_PERH2_bp = 2 ; TC16 High Byte Period bit 2 position
XCL_PERH3_bm = 1<<3 ; TC16 High Byte Period bit 3 mask
XCL_PERH3_bp = 3 ; TC16 High Byte Period bit 3 position
XCL_PERH4_bm = 1<<4 ; TC16 High Byte Period bit 4 mask
XCL_PERH4_bp = 4 ; TC16 High Byte Period bit 4 position
XCL_PERH5_bm = 1<<5 ; TC16 High Byte Period bit 5 mask
XCL_PERH5_bp = 5 ; TC16 High Byte Period bit 5 position
XCL_PERH6_bm = 1<<6 ; TC16 High Byte Period bit 6 mask
XCL_PERH6_bp = 6 ; TC16 High Byte Period bit 6 position
XCL_PERH7_bm = 1<<7 ; TC16 High Byte Period bit 7 mask
XCL_PERH7_bp = 7 ; TC16 High Byte Period bit 7 position
XCL_CAPTH_gm = 0xFF ; TC16 Capture Value High Byte group mask
XCL_CAPTH_gp = 0 ; TC16 Capture Value High Byte group position
XCL_CAPTH0_bm = 1<<0 ; TC16 Capture Value High Byte bit 0 mask
XCL_CAPTH0_bp = 0 ; TC16 Capture Value High Byte bit 0 position
XCL_CAPTH1_bm = 1<<1 ; TC16 Capture Value High Byte bit 1 mask
XCL_CAPTH1_bp = 1 ; TC16 Capture Value High Byte bit 1 position
XCL_CAPTH2_bm = 1<<2 ; TC16 Capture Value High Byte bit 2 mask
XCL_CAPTH2_bp = 2 ; TC16 Capture Value High Byte bit 2 position
XCL_CAPTH3_bm = 1<<3 ; TC16 Capture Value High Byte bit 3 mask
XCL_CAPTH3_bp = 3 ; TC16 Capture Value High Byte bit 3 position
XCL_CAPTH4_bm = 1<<4 ; TC16 Capture Value High Byte bit 4 mask
XCL_CAPTH4_bp = 4 ; TC16 Capture Value High Byte bit 4 position
XCL_CAPTH5_bm = 1<<5 ; TC16 Capture Value High Byte bit 5 mask
XCL_CAPTH5_bp = 5 ; TC16 Capture Value High Byte bit 5 position
XCL_CAPTH6_bm = 1<<6 ; TC16 Capture Value High Byte bit 6 mask
XCL_CAPTH6_bp = 6 ; TC16 Capture Value High Byte bit 6 position
XCL_CAPTH7_bm = 1<<7 ; TC16 Capture Value High Byte bit 7 mask
XCL_CAPTH7_bp = 7 ; TC16 Capture Value High Byte bit 7 position
XCL_BPER1_gm = 0xFF ; BTC1 Period group mask
XCL_BPER1_gp = 0 ; BTC1 Period group position
XCL_BPER10_bm = 1<<0 ; BTC1 Period bit 0 mask
XCL_BPER10_bp = 0 ; BTC1 Period bit 0 position
XCL_BPER11_bm = 1<<1 ; BTC1 Period bit 1 mask
XCL_BPER11_bp = 1 ; BTC1 Period bit 1 position
XCL_BPER12_bm = 1<<2 ; BTC1 Period bit 2 mask
XCL_BPER12_bp = 2 ; BTC1 Period bit 2 position
XCL_BPER13_bm = 1<<3 ; BTC1 Period bit 3 mask
XCL_BPER13_bp = 3 ; BTC1 Period bit 3 position
XCL_BPER14_bm = 1<<4 ; BTC1 Period bit 4 mask
XCL_BPER14_bp = 4 ; BTC1 Period bit 4 position
XCL_BPER15_bm = 1<<5 ; BTC1 Period bit 5 mask
XCL_BPER15_bp = 5 ; BTC1 Period bit 5 position
XCL_BPER16_bm = 1<<6 ; BTC1 Period bit 6 mask
XCL_BPER16_bp = 6 ; BTC1 Period bit 6 position
XCL_BPER17_bm = 1<<7 ; BTC1 Period bit 7 mask
XCL_BPER17_bp = 7 ; BTC1 Period bit 7 position
XCL_BCAPT1_gm = 0xFF ; BTC1 Capture Value Byte group mask
XCL_BCAPT1_gp = 0 ; BTC1 Capture Value Byte group position
XCL_BCAPT10_bm = 1<<0 ; BTC1 Capture Value Byte bit 0 mask
XCL_BCAPT10_bp = 0 ; BTC1 Capture Value Byte bit 0 position
XCL_BCAPT11_bm = 1<<1 ; BTC1 Capture Value Byte bit 1 mask
XCL_BCAPT11_bp = 1 ; BTC1 Capture Value Byte bit 1 position
XCL_BCAPT12_bm = 1<<2 ; BTC1 Capture Value Byte bit 2 mask
XCL_BCAPT12_bp = 2 ; BTC1 Capture Value Byte bit 2 position
XCL_BCAPT13_bm = 1<<3 ; BTC1 Capture Value Byte bit 3 mask
XCL_BCAPT13_bp = 3 ; BTC1 Capture Value Byte bit 3 position
XCL_BCAPT14_bm = 1<<4 ; BTC1 Capture Value Byte bit 4 mask
XCL_BCAPT14_bp = 4 ; BTC1 Capture Value Byte bit 4 position
XCL_BCAPT15_bm = 1<<5 ; BTC1 Capture Value Byte bit 5 mask
XCL_BCAPT15_bp = 5 ; BTC1 Capture Value Byte bit 5 position
XCL_BCAPT16_bm = 1<<6 ; BTC1 Capture Value Byte bit 6 mask
XCL_BCAPT16_bp = 6 ; BTC1 Capture Value Byte bit 6 position
XCL_BCAPT17_bm = 1<<7 ; BTC1 Capture Value Byte bit 7 mask
XCL_BCAPT17_bp = 7 ; BTC1 Capture Value Byte bit 7 position

; LUT0 Output Enable
XCL_LUTOUTEN_DISABLE_gc = 0x00<<6 ; LUT0 output disabled
XCL_LUTOUTEN_PIN0_gc = 0x01<<6 ; LUT0 Output to pin 0
XCL_LUTOUTEN_PIN4_gc = 0x02<<6 ; LUT0 Output to pin 4

; Port Selection
XCL_PORTSEL_PC_gc = 0x00<<4 ; Port C for LUT or USARTC0 for PEC
XCL_PORTSEL_PD_gc = 0x01<<4 ; Port D for LUT or USARTD0 for PEC

; LUT Configuration
XCL_LUTCONF_2LUT2IN_gc = 0x00<<0 ; 2-Input two LUT
XCL_LUTCONF_2LUT1IN_gc = 0x01<<0 ; Two LUT with duplicated input
XCL_LUTCONF_2LUT3IN_gc = 0x02<<0 ; Two LUT with one common input
XCL_LUTCONF_1LUT3IN_gc = 0x03<<0 ; 3-Input LUT
XCL_LUTCONF_MUX_gc = 0x04<<0 ; One LUT Mux
XCL_LUTCONF_DLATCH_gc = 0x05<<0 ; One D-Latch LUT
XCL_LUTCONF_RSLATCH_gc = 0x06<<0 ; One RS-Latch LUT
XCL_LUTCONF_DFF_gc = 0x07<<0 ; One DFF LUT

; Input Selection
XCL_INSEL_EVSYS_gc = 0x00<<0 ; Event system selected as source
XCL_INSEL_XCL_gc = 0x01<<0 ; XCL selected as source
XCL_INSEL_PINL_gc = 0x02<<0 ; LSB port pin selected as source
XCL_INSEL_PINH_gc = 0x03<<0 ; MSB port pin selected as source

; Delay Configuration on LUT
XCL_DLYCONF_DISABLE_gc = 0x00<<0 ; Delay element disabled
XCL_DLYCONF_IN_gc = 0x01<<0 ; Delay enabled on LUT input
XCL_DLYCONF_OUT_gc = 0x02<<0 ; Delay enabled on LUT output

; Delay Selection
XCL_DLYSEL_DLY11_gc = 0x00<<4 ; One cycle delay for each LUT1 and LUT0
XCL_DLYSEL_DLY12_gc = 0x01<<4 ; One cycle delay for LUT1 and two cycles for LUT0
XCL_DLYSEL_DLY21_gc = 0x02<<4 ; Two cycles delay for LUT1 and one cycle for LUT0
XCL_DLYSEL_DLY22_gc = 0x03<<4 ; Two cycle delays for each LUT1 and LUT0

; Clock Selection
XCL_CLKSEL_OFF_gc = 0x00<<0 ; OFF
XCL_CLKSEL_DIV1_gc = 0x01<<0 ; Prescaler clk
XCL_CLKSEL_DIV2_gc = 0x02<<0 ; Prescaler clk/2
XCL_CLKSEL_DIV4_gc = 0x03<<0 ; Prescaler clk/4
XCL_CLKSEL_DIV8_gc = 0x04<<0 ; Prescaler clk/8
XCL_CLKSEL_DIV64_gc = 0x05<<0 ; Prescaler clk/64
XCL_CLKSEL_DIV256_gc = 0x06<<0 ; Prescaler clk/256
XCL_CLKSEL_DIV1024_gc = 0x07<<0 ; Prescaler clk/1024
XCL_CLKSEL_EVCH0_gc = 0x08<<0 ; Event channel 0
XCL_CLKSEL_EVCH1_gc = 0x09<<0 ; Event channel 1
XCL_CLKSEL_EVCH2_gc = 0x0A<<0 ; Event channel 2
XCL_CLKSEL_EVCH3_gc = 0x0B<<0 ; Event channel 3
XCL_CLKSEL_EVCH4_gc = 0x0C<<0 ; Event channel 4
XCL_CLKSEL_EVCH5_gc = 0x0D<<0 ; Event channel 5
XCL_CLKSEL_EVCH6_gc = 0x0E<<0 ; Event channel 6
XCL_CLKSEL_EVCH7_gc = 0x0F<<0 ; Event channel 7

; Timer/Counter Command Selection
XCL_CMDSEL_NONE_gc = 0x00<<7 ; None
XCL_CMDSEL_RESTART_gc = 0x01<<7 ; Force restart

; Timer/Counter Selection
XCL_TCSEL_TC16_gc = 0x00<<4 ; 16-bit timer/counter
XCL_TCSEL_BTC0_gc = 0x01<<4 ; One 8-bit timer/counter
XCL_TCSEL_BTC01_gc = 0x02<<4 ; Two 8-bit timer/counters
XCL_TCSEL_BTC0PEC1_gc = 0x03<<4 ; One 8-bit timer/counter and one 8-bit peripheral counter
XCL_TCSEL_PEC0BTC1_gc = 0x04<<4 ; One 8-bit timer/counter and one 8-bit peripheral counter
XCL_TCSEL_PEC01_gc = 0x05<<4 ; Two 8-bit peripheral counters
XCL_TCSEL_BTC0PEC2_gc = 0x06<<4 ; One 8-bit timer/counter and two 4-bit peripheral counters

; Timer/Counter Mode
XCL_TCMODE_NORMAL_gc = 0x00<<0 ; Normal mode with compare/period
XCL_TCMODE_CAPT_gc = 0x01<<0 ; Capture mode
XCL_TCMODE_PWM_gc = 0x02<<0 ; Single Slope PWM

; Compare Output Value Timer
XCL_CMPEN_CLEAR_gc = 0x00<<4 ; Clear WG Output
XCL_CMPEN_SET_gc = 0x01<<4 ; Set WG Output

; Command Enable
XCL_CMDEN_DISABLE_gc = 0x00<<6 ; Command Ignored
XCL_CMDEN_CMD0_gc = 0x01<<6 ; Command valid for timer/counter 0
XCL_CMDEN_CMD1_gc = 0x02<<6 ; Command valid for timer/counter 1
XCL_CMDEN_CMD01_gc = 0x03<<6 ; Command valid for both timer/counter 0 and 1

; Timer/Counter Event Source Selection
XCL_EVSRC_EVCH0_gc = 0x00<<0 ; Event channel 0
XCL_EVSRC_EVCH1_gc = 0x01<<0 ; Event channel 1
XCL_EVSRC_EVCH2_gc = 0x02<<0 ; Event channel 2
XCL_EVSRC_EVCH3_gc = 0x03<<0 ; Event channel 3
XCL_EVSRC_EVCH4_gc = 0x04<<0 ; Event channel 4
XCL_EVSRC_EVCH5_gc = 0x05<<0 ; Event channel 5
XCL_EVSRC_EVCH6_gc = 0x06<<0 ; Event channel 6
XCL_EVSRC_EVCH7_gc = 0x07<<0 ; Event channel 7

; Timer/Counter Event Action Selection
XCL_EVACT_INPUT_gc = 0x00<<3 ; Input Capture
XCL_EVACT_FREQ_gc = 0x01<<3 ; Frequency Capture
XCL_EVACT_PW_gc = 0x02<<3 ; Pulse Width Capture
XCL_EVACT_RESTART_gc = 0x03<<3 ; Restart timer/counter

; Underflow Interrupt level
XCL_UNF_INTLVL_OFF_gc = 0x00<<2 ; Interrupt Disabled
XCL_UNF_INTLVL_LO_gc = 0x01<<2 ; Low Level
XCL_UNF_INTLVL_MED_gc = 0x02<<2 ; Medium Level
XCL_UNF_INTLVL_HI_gc = 0x03<<2 ; High Level

; Compare/Capture Interrupt level
XCL_CC_INTLVL_OFF_gc = 0x00<<0 ; Interrupt Disabled
XCL_CC_INTLVL_LO_gc = 0x01<<0 ; Low Level
XCL_CC_INTLVL_MED_gc = 0x02<<0 ; Medium Level
XCL_CC_INTLVL_HI_gc = 0x03<<0 ; High Level


;*************************************************************************
;** TWI - Two-Wire Interface
;*************************************************************************

; TWI_CTRL masks
TWI_BRIDGEEN_bm = 0x80 ; Bridge Enable bit mask
TWI_BRIDGEEN_bp = 7 ; Bridge Enable bit position
TWI_SFMPEN_bm = 0x40 ; Slave Fast Mode Plus Enable bit mask
TWI_SFMPEN_bp = 6 ; Slave Fast Mode Plus Enable bit position
TWI_SSDAHOLD_gm = 0x30 ; Slave SDA Hold Time Enable group mask
TWI_SSDAHOLD_gp = 4 ; Slave SDA Hold Time Enable group position
TWI_SSDAHOLD0_bm = 1<<4 ; Slave SDA Hold Time Enable bit 0 mask
TWI_SSDAHOLD0_bp = 4 ; Slave SDA Hold Time Enable bit 0 position
TWI_SSDAHOLD1_bm = 1<<5 ; Slave SDA Hold Time Enable bit 1 mask
TWI_SSDAHOLD1_bp = 5 ; Slave SDA Hold Time Enable bit 1 position
TWI_FMPEN_bm = 0x08 ; FMPLUS Enable bit mask
TWI_FMPEN_bp = 3 ; FMPLUS Enable bit position
TWI_SDAHOLD_gm = 0x06 ; SDA Hold Time Enable group mask
TWI_SDAHOLD_gp = 1 ; SDA Hold Time Enable group position
TWI_SDAHOLD0_bm = 1<<1 ; SDA Hold Time Enable bit 0 mask
TWI_SDAHOLD0_bp = 1 ; SDA Hold Time Enable bit 0 position
TWI_SDAHOLD1_bm = 1<<2 ; SDA Hold Time Enable bit 1 mask
TWI_SDAHOLD1_bp = 2 ; SDA Hold Time Enable bit 1 position
TWI_EDIEN_bm = 0x01 ; External Driver Interface Enable bit mask
TWI_EDIEN_bp = 0 ; External Driver Interface Enable bit position

; TWI_MASTER_CTRLA masks
TWI_MASTER_INTLVL_gm = 0xC0 ; Interrupt Level group mask
TWI_MASTER_INTLVL_gp = 6 ; Interrupt Level group position
TWI_MASTER_INTLVL0_bm = 1<<6 ; Interrupt Level bit 0 mask
TWI_MASTER_INTLVL0_bp = 6 ; Interrupt Level bit 0 position
TWI_MASTER_INTLVL1_bm = 1<<7 ; Interrupt Level bit 1 mask
TWI_MASTER_INTLVL1_bp = 7 ; Interrupt Level bit 1 position
TWI_MASTER_RIEN_bm = 0x20 ; Read Interrupt Enable bit mask
TWI_MASTER_RIEN_bp = 5 ; Read Interrupt Enable bit position
TWI_MASTER_WIEN_bm = 0x10 ; Write Interrupt Enable bit mask
TWI_MASTER_WIEN_bp = 4 ; Write Interrupt Enable bit position
TWI_MASTER_ENABLE_bm = 0x08 ; Enable TWI Master bit mask
TWI_MASTER_ENABLE_bp = 3 ; Enable TWI Master bit position

; TWI_MASTER_CTRLB masks
TWI_MASTER_TIMEOUT_gm = 0x0C ; Inactive Bus Timeout group mask
TWI_MASTER_TIMEOUT_gp = 2 ; Inactive Bus Timeout group position
TWI_MASTER_TIMEOUT0_bm = 1<<2 ; Inactive Bus Timeout bit 0 mask
TWI_MASTER_TIMEOUT0_bp = 2 ; Inactive Bus Timeout bit 0 position
TWI_MASTER_TIMEOUT1_bm = 1<<3 ; Inactive Bus Timeout bit 1 mask
TWI_MASTER_TIMEOUT1_bp = 3 ; Inactive Bus Timeout bit 1 position
TWI_MASTER_QCEN_bm = 0x02 ; Quick Command Enable bit mask
TWI_MASTER_QCEN_bp = 1 ; Quick Command Enable bit position
TWI_MASTER_SMEN_bm = 0x01 ; Smart Mode Enable bit mask
TWI_MASTER_SMEN_bp = 0 ; Smart Mode Enable bit position

; TWI_MASTER_CTRLC masks
TWI_MASTER_ACKACT_bm = 0x04 ; Acknowledge Action bit mask
TWI_MASTER_ACKACT_bp = 2 ; Acknowledge Action bit position
TWI_MASTER_CMD_gm = 0x03 ; Command group mask
TWI_MASTER_CMD_gp = 0 ; Command group position
TWI_MASTER_CMD0_bm = 1<<0 ; Command bit 0 mask
TWI_MASTER_CMD0_bp = 0 ; Command bit 0 position
TWI_MASTER_CMD1_bm = 1<<1 ; Command bit 1 mask
TWI_MASTER_CMD1_bp = 1 ; Command bit 1 position

; TWI_MASTER_STATUS masks
TWI_MASTER_RIF_bm = 0x80 ; Read Interrupt Flag bit mask
TWI_MASTER_RIF_bp = 7 ; Read Interrupt Flag bit position
TWI_MASTER_WIF_bm = 0x40 ; Write Interrupt Flag bit mask
TWI_MASTER_WIF_bp = 6 ; Write Interrupt Flag bit position
TWI_MASTER_CLKHOLD_bm = 0x20 ; Clock Hold bit mask
TWI_MASTER_CLKHOLD_bp = 5 ; Clock Hold bit position
TWI_MASTER_RXACK_bm = 0x10 ; Received Acknowledge bit mask
TWI_MASTER_RXACK_bp = 4 ; Received Acknowledge bit position
TWI_MASTER_ARBLOST_bm = 0x08 ; Arbitration Lost bit mask
TWI_MASTER_ARBLOST_bp = 3 ; Arbitration Lost bit position
TWI_MASTER_BUSERR_bm = 0x04 ; Bus Error bit mask
TWI_MASTER_BUSERR_bp = 2 ; Bus Error bit position
TWI_MASTER_BUSSTATE_gm = 0x03 ; Bus State group mask
TWI_MASTER_BUSSTATE_gp = 0 ; Bus State group position
TWI_MASTER_BUSSTATE0_bm = 1<<0 ; Bus State bit 0 mask
TWI_MASTER_BUSSTATE0_bp = 0 ; Bus State bit 0 position
TWI_MASTER_BUSSTATE1_bm = 1<<1 ; Bus State bit 1 mask
TWI_MASTER_BUSSTATE1_bp = 1 ; Bus State bit 1 position

; TWI_SLAVE_CTRLA masks
TWI_SLAVE_INTLVL_gm = 0xC0 ; Interrupt Level group mask
TWI_SLAVE_INTLVL_gp = 6 ; Interrupt Level group position
TWI_SLAVE_INTLVL0_bm = 1<<6 ; Interrupt Level bit 0 mask
TWI_SLAVE_INTLVL0_bp = 6 ; Interrupt Level bit 0 position
TWI_SLAVE_INTLVL1_bm = 1<<7 ; Interrupt Level bit 1 mask
TWI_SLAVE_INTLVL1_bp = 7 ; Interrupt Level bit 1 position
TWI_SLAVE_DIEN_bm = 0x20 ; Data Interrupt Enable bit mask
TWI_SLAVE_DIEN_bp = 5 ; Data Interrupt Enable bit position
TWI_SLAVE_APIEN_bm = 0x10 ; Address/Stop Interrupt Enable bit mask
TWI_SLAVE_APIEN_bp = 4 ; Address/Stop Interrupt Enable bit position
TWI_SLAVE_ENABLE_bm = 0x08 ; Enable TWI Slave bit mask
TWI_SLAVE_ENABLE_bp = 3 ; Enable TWI Slave bit position
TWI_SLAVE_PIEN_bm = 0x04 ; Stop Interrupt Enable bit mask
TWI_SLAVE_PIEN_bp = 2 ; Stop Interrupt Enable bit position
TWI_SLAVE_PMEN_bm = 0x02 ; Promiscuous Mode Enable bit mask
TWI_SLAVE_PMEN_bp = 1 ; Promiscuous Mode Enable bit position
TWI_SLAVE_SMEN_bm = 0x01 ; Smart Mode Enable bit mask
TWI_SLAVE_SMEN_bp = 0 ; Smart Mode Enable bit position

; TWI_SLAVE_CTRLB masks
TWI_SLAVE_ACKACT_bm = 0x04 ; Acknowledge Action bit mask
TWI_SLAVE_ACKACT_bp = 2 ; Acknowledge Action bit position
TWI_SLAVE_CMD_gm = 0x03 ; Command group mask
TWI_SLAVE_CMD_gp = 0 ; Command group position
TWI_SLAVE_CMD0_bm = 1<<0 ; Command bit 0 mask
TWI_SLAVE_CMD0_bp = 0 ; Command bit 0 position
TWI_SLAVE_CMD1_bm = 1<<1 ; Command bit 1 mask
TWI_SLAVE_CMD1_bp = 1 ; Command bit 1 position

; TWI_SLAVE_STATUS masks
TWI_SLAVE_DIF_bm = 0x80 ; Data Interrupt Flag bit mask
TWI_SLAVE_DIF_bp = 7 ; Data Interrupt Flag bit position
TWI_SLAVE_APIF_bm = 0x40 ; Address/Stop Interrupt Flag bit mask
TWI_SLAVE_APIF_bp = 6 ; Address/Stop Interrupt Flag bit position
TWI_SLAVE_CLKHOLD_bm = 0x20 ; Clock Hold bit mask
TWI_SLAVE_CLKHOLD_bp = 5 ; Clock Hold bit position
TWI_SLAVE_RXACK_bm = 0x10 ; Received Acknowledge bit mask
TWI_SLAVE_RXACK_bp = 4 ; Received Acknowledge bit position
TWI_SLAVE_COLL_bm = 0x08 ; Collision bit mask
TWI_SLAVE_COLL_bp = 3 ; Collision bit position
TWI_SLAVE_BUSERR_bm = 0x04 ; Bus Error bit mask
TWI_SLAVE_BUSERR_bp = 2 ; Bus Error bit position
TWI_SLAVE_DIR_bm = 0x02 ; Read/Write Direction bit mask
TWI_SLAVE_DIR_bp = 1 ; Read/Write Direction bit position
TWI_SLAVE_AP_bm = 0x01 ; Slave Address or Stop bit mask
TWI_SLAVE_AP_bp = 0 ; Slave Address or Stop bit position

; TWI_SLAVE_ADDRMASK masks
TWI_SLAVE_ADDRMASK_gm = 0xFE ; Address Mask group mask
TWI_SLAVE_ADDRMASK_gp = 1 ; Address Mask group position
TWI_SLAVE_ADDRMASK0_bm = 1<<1 ; Address Mask bit 0 mask
TWI_SLAVE_ADDRMASK0_bp = 1 ; Address Mask bit 0 position
TWI_SLAVE_ADDRMASK1_bm = 1<<2 ; Address Mask bit 1 mask
TWI_SLAVE_ADDRMASK1_bp = 2 ; Address Mask bit 1 position
TWI_SLAVE_ADDRMASK2_bm = 1<<3 ; Address Mask bit 2 mask
TWI_SLAVE_ADDRMASK2_bp = 3 ; Address Mask bit 2 position
TWI_SLAVE_ADDRMASK3_bm = 1<<4 ; Address Mask bit 3 mask
TWI_SLAVE_ADDRMASK3_bp = 4 ; Address Mask bit 3 position
TWI_SLAVE_ADDRMASK4_bm = 1<<5 ; Address Mask bit 4 mask
TWI_SLAVE_ADDRMASK4_bp = 5 ; Address Mask bit 4 position
TWI_SLAVE_ADDRMASK5_bm = 1<<6 ; Address Mask bit 5 mask
TWI_SLAVE_ADDRMASK5_bp = 6 ; Address Mask bit 5 position
TWI_SLAVE_ADDRMASK6_bm = 1<<7 ; Address Mask bit 6 mask
TWI_SLAVE_ADDRMASK6_bp = 7 ; Address Mask bit 6 position
TWI_SLAVE_ADDREN_bm = 0x01 ; Address Enable bit mask
TWI_SLAVE_ADDREN_bp = 0 ; Address Enable bit position

; SDA Hold Time
TWI_SDAHOLD_OFF_gc = 0x00<<1 ; SDA Hold Time off
TWI_SDAHOLD_50NS_gc = 0x01<<1 ; SDA Hold Time 50 ns
TWI_SDAHOLD_300NS_gc = 0x02<<1 ; SDA Hold Time 300 ns
TWI_SDAHOLD_400NS_gc = 0x03<<1 ; SDA Hold Time 400 ns

; Master Interrupt Level
TWI_MASTER_INTLVL_OFF_gc = 0x00<<6 ; Interrupt Disabled
TWI_MASTER_INTLVL_LO_gc = 0x01<<6 ; Low Level
TWI_MASTER_INTLVL_MED_gc = 0x02<<6 ; Medium Level
TWI_MASTER_INTLVL_HI_gc = 0x03<<6 ; High Level

; Inactive Timeout
TWI_MASTER_TIMEOUT_DISABLED_gc = 0x00<<2 ; Bus Timeout Disabled
TWI_MASTER_TIMEOUT_50US_gc = 0x01<<2 ; 50 Microseconds
TWI_MASTER_TIMEOUT_100US_gc = 0x02<<2 ; 100 Microseconds
TWI_MASTER_TIMEOUT_200US_gc = 0x03<<2 ; 200 Microseconds

; Master Command
TWI_MASTER_CMD_NOACT_gc = 0x00<<0 ; No Action
TWI_MASTER_CMD_REPSTART_gc = 0x01<<0 ; Issue Repeated Start Condition
TWI_MASTER_CMD_RECVTRANS_gc = 0x02<<0 ; Receive or Transmit Data
TWI_MASTER_CMD_STOP_gc = 0x03<<0 ; Issue Stop Condition

; Master Bus State
TWI_MASTER_BUSSTATE_UNKNOWN_gc = 0x00<<0 ; Unknown Bus State
TWI_MASTER_BUSSTATE_IDLE_gc = 0x01<<0 ; Bus is Idle
TWI_MASTER_BUSSTATE_OWNER_gc = 0x02<<0 ; This Module Controls The Bus
TWI_MASTER_BUSSTATE_BUSY_gc = 0x03<<0 ; The Bus is Busy

; Slave Interrupt Level
TWI_SLAVE_INTLVL_OFF_gc = 0x00<<6 ; Interrupt Disabled
TWI_SLAVE_INTLVL_LO_gc = 0x01<<6 ; Low Level
TWI_SLAVE_INTLVL_MED_gc = 0x02<<6 ; Medium Level
TWI_SLAVE_INTLVL_HI_gc = 0x03<<6 ; High Level

; Slave Command
TWI_SLAVE_CMD_NOACT_gc = 0x00<<0 ; No Action
TWI_SLAVE_CMD_COMPTRANS_gc = 0x02<<0 ; Used To Complete a Transaction
TWI_SLAVE_CMD_RESPONSE_gc = 0x03<<0 ; Used in Response to Address/Data Interrupt


;*************************************************************************
;** PORT - Port Configuration
;*************************************************************************

; PORT_INTCTRL masks
PORT_INTLVL_gm = 0x03 ; Port Interrupt Level group mask
PORT_INTLVL_gp = 0 ; Port Interrupt Level group position
PORT_INTLVL0_bm = 1<<0 ; Port Interrupt Level bit 0 mask
PORT_INTLVL0_bp = 0 ; Port Interrupt Level bit 0 position
PORT_INTLVL1_bm = 1<<1 ; Port Interrupt Level bit 1 mask
PORT_INTLVL1_bp = 1 ; Port Interrupt Level bit 1 position

; PORT_INTFLAGS masks
PORT_INT7IF_bm = 0x80 ; Pin 7 Interrupt Flag bit mask
PORT_INT7IF_bp = 7 ; Pin 7 Interrupt Flag bit position
PORT_INT6IF_bm = 0x40 ; Pin 6 Interrupt Flag bit mask
PORT_INT6IF_bp = 6 ; Pin 6 Interrupt Flag bit position
PORT_INT5IF_bm = 0x20 ; Pin 5 Interrupt Flag bit mask
PORT_INT5IF_bp = 5 ; Pin 5 Interrupt Flag bit position
PORT_INT4IF_bm = 0x10 ; Pin 4 Interrupt Flag bit mask
PORT_INT4IF_bp = 4 ; Pin 4 Interrupt Flag bit position
PORT_INT3IF_bm = 0x08 ; Pin 3 Interrupt Flag bit mask
PORT_INT3IF_bp = 3 ; Pin 3 Interrupt Flag bit position
PORT_INT2IF_bm = 0x04 ; Pin 2 Interrupt Flag bit mask
PORT_INT2IF_bp = 2 ; Pin 2 Interrupt Flag bit position
PORT_INT1IF_bm = 0x02 ; Pin 1 Interrupt Flag bit mask
PORT_INT1IF_bp = 1 ; Pin 1 Interrupt Flag bit position
PORT_INT0IF_bm = 0x01 ; Pin 0 Interrupt Flag bit mask
PORT_INT0IF_bp = 0 ; Pin 0 Interrupt Flag bit position

; PORT_REMAP masks
PORT_USART0_bm = 0x10 ; Usart0 bit mask
PORT_USART0_bp = 4 ; Usart0 bit position
PORT_TC4D_bm = 0x08 ; Timer/Counter 4 Output Compare D bit mask
PORT_TC4D_bp = 3 ; Timer/Counter 4 Output Compare D bit position
PORT_TC4C_bm = 0x04 ; Timer/Counter 4 Output Compare C bit mask
PORT_TC4C_bp = 2 ; Timer/Counter 4 Output Compare C bit position
PORT_TC4B_bm = 0x02 ; Timer/Counter 4 Output Compare B bit mask
PORT_TC4B_bp = 1 ; Timer/Counter 4 Output Compare B bit position
PORT_TC4A_bm = 0x01 ; Timer/Counter 4 Output Compare A bit mask
PORT_TC4A_bp = 0 ; Timer/Counter 4 Output Compare A bit position

; PORT_PIN0CTRL masks
PORT_INVEN_bm = 0x40 ; Inverted I/O Enable bit mask
PORT_INVEN_bp = 6 ; Inverted I/O Enable bit position
PORT_OPC_gm = 0x38 ; Output/Pull Configuration group mask
PORT_OPC_gp = 3 ; Output/Pull Configuration group position
PORT_OPC0_bm = 1<<3 ; Output/Pull Configuration bit 0 mask
PORT_OPC0_bp = 3 ; Output/Pull Configuration bit 0 position
PORT_OPC1_bm = 1<<4 ; Output/Pull Configuration bit 1 mask
PORT_OPC1_bp = 4 ; Output/Pull Configuration bit 1 position
PORT_OPC2_bm = 1<<5 ; Output/Pull Configuration bit 2 mask
PORT_OPC2_bp = 5 ; Output/Pull Configuration bit 2 position
PORT_ISC_gm = 0x07 ; Input/Sense Configuration group mask
PORT_ISC_gp = 0 ; Input/Sense Configuration group position
PORT_ISC0_bm = 1<<0 ; Input/Sense Configuration bit 0 mask
PORT_ISC0_bp = 0 ; Input/Sense Configuration bit 0 position
PORT_ISC1_bm = 1<<1 ; Input/Sense Configuration bit 1 mask
PORT_ISC1_bp = 1 ; Input/Sense Configuration bit 1 position
PORT_ISC2_bm = 1<<2 ; Input/Sense Configuration bit 2 mask
PORT_ISC2_bp = 2 ; Input/Sense Configuration bit 2 position

; PORT_PIN1CTRL masks
; Masks for PORT_INVEN already defined
; Masks for PORT_OPC already defined
; Masks for PORT_ISC already defined

; PORT_PIN2CTRL masks
; Masks for PORT_INVEN already defined
; Masks for PORT_OPC already defined
; Masks for PORT_ISC already defined

; PORT_PIN3CTRL masks
; Masks for PORT_INVEN already defined
; Masks for PORT_OPC already defined
; Masks for PORT_ISC already defined

; PORT_PIN4CTRL masks
; Masks for PORT_INVEN already defined
; Masks for PORT_OPC already defined
; Masks for PORT_ISC already defined

; PORT_PIN5CTRL masks
; Masks for PORT_INVEN already defined
; Masks for PORT_OPC already defined
; Masks for PORT_ISC already defined

; PORT_PIN6CTRL masks
; Masks for PORT_INVEN already defined
; Masks for PORT_OPC already defined
; Masks for PORT_ISC already defined

; PORT_PIN7CTRL masks
; Masks for PORT_INVEN already defined
; Masks for PORT_OPC already defined
; Masks for PORT_ISC already defined

; Port Interrupt Level
PORT_INTLVL_OFF_gc = 0x00<<0 ; Interrupt Disabled
PORT_INTLVL_LO_gc = 0x01<<0 ; Low Level
PORT_INTLVL_MED_gc = 0x02<<0 ; Medium Level
PORT_INTLVL_HI_gc = 0x03<<0 ; High Level

; Output/Pull Configuration
PORT_OPC_TOTEM_gc = 0x00<<3 ; Totempole
PORT_OPC_BUSKEEPER_gc = 0x01<<3 ; Totempole w/ Bus keeper on Input and Output
PORT_OPC_PULLDOWN_gc = 0x02<<3 ; Totempole w/ Pull-down on Input
PORT_OPC_PULLUP_gc = 0x03<<3 ; Totempole w/ Pull-up on Input
PORT_OPC_WIREDOR_gc = 0x04<<3 ; Wired OR
PORT_OPC_WIREDAND_gc = 0x05<<3 ; Wired AND
PORT_OPC_WIREDORPULL_gc = 0x06<<3 ; Wired OR w/ Pull-down
PORT_OPC_WIREDANDPULL_gc = 0x07<<3 ; Wired AND w/ Pull-up

; Input/Sense Configuration
PORT_ISC_BOTHEDGES_gc = 0x00<<0 ; Sense Both Edges
PORT_ISC_RISING_gc = 0x01<<0 ; Sense Rising Edge
PORT_ISC_FALLING_gc = 0x02<<0 ; Sense Falling Edge
PORT_ISC_LEVEL_gc = 0x03<<0 ; Sense Level (Transparent For Events)
PORT_ISC_FORCE_ENABLE_gc = 0x06<<0 ; Digital Input Buffer Forced Enable
PORT_ISC_INPUT_DISABLE_gc = 0x07<<0 ; Disable Digital Input Buffer


;*************************************************************************
;** TC - 16-bit Timer/Counter With PWM
;*************************************************************************

; TC4_CTRLA masks
TC4_SYNCHEN_bm = 0x40 ; Synchronization Enabled bit mask
TC4_SYNCHEN_bp = 6 ; Synchronization Enabled bit position
TC4_EVSTART_bm = 0x20 ; Start on Next Event bit mask
TC4_EVSTART_bp = 5 ; Start on Next Event bit position
TC4_UPSTOP_bm = 0x10 ; Stop on Next Update bit mask
TC4_UPSTOP_bp = 4 ; Stop on Next Update bit position
TC4_CLKSEL_gm = 0x0F ; Clock Select group mask
TC4_CLKSEL_gp = 0 ; Clock Select group position
TC4_CLKSEL0_bm = 1<<0 ; Clock Select bit 0 mask
TC4_CLKSEL0_bp = 0 ; Clock Select bit 0 position
TC4_CLKSEL1_bm = 1<<1 ; Clock Select bit 1 mask
TC4_CLKSEL1_bp = 1 ; Clock Select bit 1 position
TC4_CLKSEL2_bm = 1<<2 ; Clock Select bit 2 mask
TC4_CLKSEL2_bp = 2 ; Clock Select bit 2 position
TC4_CLKSEL3_bm = 1<<3 ; Clock Select bit 3 mask
TC4_CLKSEL3_bp = 3 ; Clock Select bit 3 position

; TC4_CTRLB masks
TC4_BYTEM_gm = 0xC0 ; Byte Mode group mask
TC4_BYTEM_gp = 6 ; Byte Mode group position
TC4_BYTEM0_bm = 1<<6 ; Byte Mode bit 0 mask
TC4_BYTEM0_bp = 6 ; Byte Mode bit 0 position
TC4_BYTEM1_bm = 1<<7 ; Byte Mode bit 1 mask
TC4_BYTEM1_bp = 7 ; Byte Mode bit 1 position
TC4_CIRCEN_gm = 0x30 ; Circular Buffer Enable group mask
TC4_CIRCEN_gp = 4 ; Circular Buffer Enable group position
TC4_CIRCEN0_bm = 1<<4 ; Circular Buffer Enable bit 0 mask
TC4_CIRCEN0_bp = 4 ; Circular Buffer Enable bit 0 position
TC4_CIRCEN1_bm = 1<<5 ; Circular Buffer Enable bit 1 mask
TC4_CIRCEN1_bp = 5 ; Circular Buffer Enable bit 1 position
TC4_WGMODE_gm = 0x07 ; Waveform Generation Mode group mask
TC4_WGMODE_gp = 0 ; Waveform Generation Mode group position
TC4_WGMODE0_bm = 1<<0 ; Waveform Generation Mode bit 0 mask
TC4_WGMODE0_bp = 0 ; Waveform Generation Mode bit 0 position
TC4_WGMODE1_bm = 1<<1 ; Waveform Generation Mode bit 1 mask
TC4_WGMODE1_bp = 1 ; Waveform Generation Mode bit 1 position
TC4_WGMODE2_bm = 1<<2 ; Waveform Generation Mode bit 2 mask
TC4_WGMODE2_bp = 2 ; Waveform Generation Mode bit 2 position

; TC4_CTRLC masks
TC4_POLD_bm = 0x80 ; Channel D Output Polarity bit mask
TC4_POLD_bp = 7 ; Channel D Output Polarity bit position
TC4_POLC_bm = 0x40 ; Channel C Output Polarity bit mask
TC4_POLC_bp = 6 ; Channel C Output Polarity bit position
TC4_POLB_bm = 0x20 ; Channel B Output Polarity bit mask
TC4_POLB_bp = 5 ; Channel B Output Polarity bit position
TC4_POLA_bm = 0x10 ; Channel A Output Polarity bit mask
TC4_POLA_bp = 4 ; Channel A Output Polarity bit position
TC4_CMPD_bm = 0x08 ; Channel D Compare Output Value bit mask
TC4_CMPD_bp = 3 ; Channel D Compare Output Value bit position
TC4_CMPC_bm = 0x04 ; Channel C Compare Output Value bit mask
TC4_CMPC_bp = 2 ; Channel C Compare Output Value bit position
TC4_CMPB_bm = 0x02 ; Channel B Compare Output Value bit mask
TC4_CMPB_bp = 1 ; Channel B Compare Output Value bit position
TC4_CMPA_bm = 0x01 ; Channel A Compare Output Value bit mask
TC4_CMPA_bp = 0 ; Channel A Compare Output Value bit position
TC4_HCMPD_bm = 0x80 ; High Channel D Compare Output Value bit mask
TC4_HCMPD_bp = 7 ; High Channel D Compare Output Value bit position
TC4_HCMPC_bm = 0x40 ; High Channel C Compare Output Value bit mask
TC4_HCMPC_bp = 6 ; High Channel C Compare Output Value bit position
TC4_HCMPB_bm = 0x20 ; High Channel B Compare Output Value bit mask
TC4_HCMPB_bp = 5 ; High Channel B Compare Output Value bit position
TC4_HCMPA_bm = 0x10 ; High Channel A Compare Output Value bit mask
TC4_HCMPA_bp = 4 ; High Channel A Compare Output Value bit position
TC4_LCMPD_bm = 0x08 ; Low Channel D Compare Output Value bit mask
TC4_LCMPD_bp = 3 ; Low Channel D Compare Output Value bit position
TC4_LCMPC_bm = 0x04 ; Low Channel C Compare Output Value bit mask
TC4_LCMPC_bp = 2 ; Low Channel C Compare Output Value bit position
TC4_LCMPB_bm = 0x02 ; Low Channel B Compare Output Value bit mask
TC4_LCMPB_bp = 1 ; Low Channel B Compare Output Value bit position
TC4_LCMPA_bm = 0x01 ; Low Channel A Compare Output Value bit mask
TC4_LCMPA_bp = 0 ; Low Channel A Compare Output Value bit position

; TC4_CTRLD masks
TC4_EVACT_gm = 0xE0 ; Event Action group mask
TC4_EVACT_gp = 5 ; Event Action group position
TC4_EVACT0_bm = 1<<5 ; Event Action bit 0 mask
TC4_EVACT0_bp = 5 ; Event Action bit 0 position
TC4_EVACT1_bm = 1<<6 ; Event Action bit 1 mask
TC4_EVACT1_bp = 6 ; Event Action bit 1 position
TC4_EVACT2_bm = 1<<7 ; Event Action bit 2 mask
TC4_EVACT2_bp = 7 ; Event Action bit 2 position
TC4_EVDLY_bm = 0x10 ; Event Delay bit mask
TC4_EVDLY_bp = 4 ; Event Delay bit position
TC4_EVSEL_gm = 0x0F ; Event Source Select group mask
TC4_EVSEL_gp = 0 ; Event Source Select group position
TC4_EVSEL0_bm = 1<<0 ; Event Source Select bit 0 mask
TC4_EVSEL0_bp = 0 ; Event Source Select bit 0 position
TC4_EVSEL1_bm = 1<<1 ; Event Source Select bit 1 mask
TC4_EVSEL1_bp = 1 ; Event Source Select bit 1 position
TC4_EVSEL2_bm = 1<<2 ; Event Source Select bit 2 mask
TC4_EVSEL2_bp = 2 ; Event Source Select bit 2 position
TC4_EVSEL3_bm = 1<<3 ; Event Source Select bit 3 mask
TC4_EVSEL3_bp = 3 ; Event Source Select bit 3 position

; TC4_CTRLE masks
TC4_CCDMODE_gm = 0xC0 ; Channel D Compare or Capture Mode group mask
TC4_CCDMODE_gp = 6 ; Channel D Compare or Capture Mode group position
TC4_CCDMODE0_bm = 1<<6 ; Channel D Compare or Capture Mode bit 0 mask
TC4_CCDMODE0_bp = 6 ; Channel D Compare or Capture Mode bit 0 position
TC4_CCDMODE1_bm = 1<<7 ; Channel D Compare or Capture Mode bit 1 mask
TC4_CCDMODE1_bp = 7 ; Channel D Compare or Capture Mode bit 1 position
TC4_CCCMODE_gm = 0x30 ; Channel C Compare or Capture Mode group mask
TC4_CCCMODE_gp = 4 ; Channel C Compare or Capture Mode group position
TC4_CCCMODE0_bm = 1<<4 ; Channel C Compare or Capture Mode bit 0 mask
TC4_CCCMODE0_bp = 4 ; Channel C Compare or Capture Mode bit 0 position
TC4_CCCMODE1_bm = 1<<5 ; Channel C Compare or Capture Mode bit 1 mask
TC4_CCCMODE1_bp = 5 ; Channel C Compare or Capture Mode bit 1 position
TC4_CCBMODE_gm = 0x0C ; Channel B Compare or Capture Mode group mask
TC4_CCBMODE_gp = 2 ; Channel B Compare or Capture Mode group position
TC4_CCBMODE0_bm = 1<<2 ; Channel B Compare or Capture Mode bit 0 mask
TC4_CCBMODE0_bp = 2 ; Channel B Compare or Capture Mode bit 0 position
TC4_CCBMODE1_bm = 1<<3 ; Channel B Compare or Capture Mode bit 1 mask
TC4_CCBMODE1_bp = 3 ; Channel B Compare or Capture Mode bit 1 position
TC4_CCAMODE_gm = 0x03 ; Channel A Compare or Capture Mode group mask
TC4_CCAMODE_gp = 0 ; Channel A Compare or Capture Mode group position
TC4_CCAMODE0_bm = 1<<0 ; Channel A Compare or Capture Mode bit 0 mask
TC4_CCAMODE0_bp = 0 ; Channel A Compare or Capture Mode bit 0 position
TC4_CCAMODE1_bm = 1<<1 ; Channel A Compare or Capture Mode bit 1 mask
TC4_CCAMODE1_bp = 1 ; Channel A Compare or Capture Mode bit 1 position
TC4_LCCDMODE_gm = 0xC0 ; Channel Low D Compare or Capture Mode group mask
TC4_LCCDMODE_gp = 6 ; Channel Low D Compare or Capture Mode group position
TC4_LCCDMODE0_bm = 1<<6 ; Channel Low D Compare or Capture Mode bit 0 mask
TC4_LCCDMODE0_bp = 6 ; Channel Low D Compare or Capture Mode bit 0 position
TC4_LCCDMODE1_bm = 1<<7 ; Channel Low D Compare or Capture Mode bit 1 mask
TC4_LCCDMODE1_bp = 7 ; Channel Low D Compare or Capture Mode bit 1 position
TC4_LCCCMODE_gm = 0x30 ; Channel Low C Compare or Capture Mode group mask
TC4_LCCCMODE_gp = 4 ; Channel Low C Compare or Capture Mode group position
TC4_LCCCMODE0_bm = 1<<4 ; Channel Low C Compare or Capture Mode bit 0 mask
TC4_LCCCMODE0_bp = 4 ; Channel Low C Compare or Capture Mode bit 0 position
TC4_LCCCMODE1_bm = 1<<5 ; Channel Low C Compare or Capture Mode bit 1 mask
TC4_LCCCMODE1_bp = 5 ; Channel Low C Compare or Capture Mode bit 1 position
TC4_LCCBMODE_gm = 0x0C ; Channel Low B Compare or Capture Mode group mask
TC4_LCCBMODE_gp = 2 ; Channel Low B Compare or Capture Mode group position
TC4_LCCBMODE0_bm = 1<<2 ; Channel Low B Compare or Capture Mode bit 0 mask
TC4_LCCBMODE0_bp = 2 ; Channel Low B Compare or Capture Mode bit 0 position
TC4_LCCBMODE1_bm = 1<<3 ; Channel Low B Compare or Capture Mode bit 1 mask
TC4_LCCBMODE1_bp = 3 ; Channel Low B Compare or Capture Mode bit 1 position
TC4_LCCAMODE_gm = 0x03 ; Channel Low A Compare or Capture Mode group mask
TC4_LCCAMODE_gp = 0 ; Channel Low A Compare or Capture Mode group position
TC4_LCCAMODE0_bm = 1<<0 ; Channel Low A Compare or Capture Mode bit 0 mask
TC4_LCCAMODE0_bp = 0 ; Channel Low A Compare or Capture Mode bit 0 position
TC4_LCCAMODE1_bm = 1<<1 ; Channel Low A Compare or Capture Mode bit 1 mask
TC4_LCCAMODE1_bp = 1 ; Channel Low A Compare or Capture Mode bit 1 position

; TC4_CTRLF masks
TC4_HCCDMODE_gm = 0xC0 ; Channel High D Compare or Capture Mode group mask
TC4_HCCDMODE_gp = 6 ; Channel High D Compare or Capture Mode group position
TC4_HCCDMODE0_bm = 1<<6 ; Channel High D Compare or Capture Mode bit 0 mask
TC4_HCCDMODE0_bp = 6 ; Channel High D Compare or Capture Mode bit 0 position
TC4_HCCDMODE1_bm = 1<<7 ; Channel High D Compare or Capture Mode bit 1 mask
TC4_HCCDMODE1_bp = 7 ; Channel High D Compare or Capture Mode bit 1 position
TC4_HCCCMODE_gm = 0x30 ; Channel High C Compare or Capture Mode group mask
TC4_HCCCMODE_gp = 4 ; Channel High C Compare or Capture Mode group position
TC4_HCCCMODE0_bm = 1<<4 ; Channel High C Compare or Capture Mode bit 0 mask
TC4_HCCCMODE0_bp = 4 ; Channel High C Compare or Capture Mode bit 0 position
TC4_HCCCMODE1_bm = 1<<5 ; Channel High C Compare or Capture Mode bit 1 mask
TC4_HCCCMODE1_bp = 5 ; Channel High C Compare or Capture Mode bit 1 position
TC4_HCCBMODE_gm = 0x0C ; Channel High B Compare or Capture Mode group mask
TC4_HCCBMODE_gp = 2 ; Channel High B Compare or Capture Mode group position
TC4_HCCBMODE0_bm = 1<<2 ; Channel High B Compare or Capture Mode bit 0 mask
TC4_HCCBMODE0_bp = 2 ; Channel High B Compare or Capture Mode bit 0 position
TC4_HCCBMODE1_bm = 1<<3 ; Channel High B Compare or Capture Mode bit 1 mask
TC4_HCCBMODE1_bp = 3 ; Channel High B Compare or Capture Mode bit 1 position
TC4_HCCAMODE_gm = 0x03 ; Channel High A Compare or Capture Mode group mask
TC4_HCCAMODE_gp = 0 ; Channel High A Compare or Capture Mode group position
TC4_HCCAMODE0_bm = 1<<0 ; Channel High A Compare or Capture Mode bit 0 mask
TC4_HCCAMODE0_bp = 0 ; Channel High A Compare or Capture Mode bit 0 position
TC4_HCCAMODE1_bm = 1<<1 ; Channel High A Compare or Capture Mode bit 1 mask
TC4_HCCAMODE1_bp = 1 ; Channel High A Compare or Capture Mode bit 1 position

; TC4_INTCTRLA masks
TC4_TRGINTLVL_gm = 0x30 ; Timer Trigger Restart Interrupt Level group mask
TC4_TRGINTLVL_gp = 4 ; Timer Trigger Restart Interrupt Level group position
TC4_TRGINTLVL0_bm = 1<<4 ; Timer Trigger Restart Interrupt Level bit 0 mask
TC4_TRGINTLVL0_bp = 4 ; Timer Trigger Restart Interrupt Level bit 0 position
TC4_TRGINTLVL1_bm = 1<<5 ; Timer Trigger Restart Interrupt Level bit 1 mask
TC4_TRGINTLVL1_bp = 5 ; Timer Trigger Restart Interrupt Level bit 1 position
TC4_ERRINTLVL_gm = 0x0C ; Timer Error Interrupt Level group mask
TC4_ERRINTLVL_gp = 2 ; Timer Error Interrupt Level group position
TC4_ERRINTLVL0_bm = 1<<2 ; Timer Error Interrupt Level bit 0 mask
TC4_ERRINTLVL0_bp = 2 ; Timer Error Interrupt Level bit 0 position
TC4_ERRINTLVL1_bm = 1<<3 ; Timer Error Interrupt Level bit 1 mask
TC4_ERRINTLVL1_bp = 3 ; Timer Error Interrupt Level bit 1 position
TC4_OVFINTLVL_gm = 0x03 ; Timer Overflow/Underflow Interrupt Level group mask
TC4_OVFINTLVL_gp = 0 ; Timer Overflow/Underflow Interrupt Level group position
TC4_OVFINTLVL0_bm = 1<<0 ; Timer Overflow/Underflow Interrupt Level bit 0 mask
TC4_OVFINTLVL0_bp = 0 ; Timer Overflow/Underflow Interrupt Level bit 0 position
TC4_OVFINTLVL1_bm = 1<<1 ; Timer Overflow/Underflow Interrupt Level bit 1 mask
TC4_OVFINTLVL1_bp = 1 ; Timer Overflow/Underflow Interrupt Level bit 1 position

; TC4_INTCTRLB masks
TC4_CCDINTLVL_gm = 0xC0 ; Channel D Compare or Capture Interrupt Level group mask
TC4_CCDINTLVL_gp = 6 ; Channel D Compare or Capture Interrupt Level group position
TC4_CCDINTLVL0_bm = 1<<6 ; Channel D Compare or Capture Interrupt Level bit 0 mask
TC4_CCDINTLVL0_bp = 6 ; Channel D Compare or Capture Interrupt Level bit 0 position
TC4_CCDINTLVL1_bm = 1<<7 ; Channel D Compare or Capture Interrupt Level bit 1 mask
TC4_CCDINTLVL1_bp = 7 ; Channel D Compare or Capture Interrupt Level bit 1 position
TC4_CCCINTLVL_gm = 0x30 ; Channel C Compare or Capture Interrupt Level group mask
TC4_CCCINTLVL_gp = 4 ; Channel C Compare or Capture Interrupt Level group position
TC4_CCCINTLVL0_bm = 1<<4 ; Channel C Compare or Capture Interrupt Level bit 0 mask
TC4_CCCINTLVL0_bp = 4 ; Channel C Compare or Capture Interrupt Level bit 0 position
TC4_CCCINTLVL1_bm = 1<<5 ; Channel C Compare or Capture Interrupt Level bit 1 mask
TC4_CCCINTLVL1_bp = 5 ; Channel C Compare or Capture Interrupt Level bit 1 position
TC4_CCBINTLVL_gm = 0x0C ; Channel B Compare or Capture Interrupt Level group mask
TC4_CCBINTLVL_gp = 2 ; Channel B Compare or Capture Interrupt Level group position
TC4_CCBINTLVL0_bm = 1<<2 ; Channel B Compare or Capture Interrupt Level bit 0 mask
TC4_CCBINTLVL0_bp = 2 ; Channel B Compare or Capture Interrupt Level bit 0 position
TC4_CCBINTLVL1_bm = 1<<3 ; Channel B Compare or Capture Interrupt Level bit 1 mask
TC4_CCBINTLVL1_bp = 3 ; Channel B Compare or Capture Interrupt Level bit 1 position
TC4_CCAINTLVL_gm = 0x03 ; Channel A Compare or Capture Interrupt Level group mask
TC4_CCAINTLVL_gp = 0 ; Channel A Compare or Capture Interrupt Level group position
TC4_CCAINTLVL0_bm = 1<<0 ; Channel A Compare or Capture Interrupt Level bit 0 mask
TC4_CCAINTLVL0_bp = 0 ; Channel A Compare or Capture Interrupt Level bit 0 position
TC4_CCAINTLVL1_bm = 1<<1 ; Channel A Compare or Capture Interrupt Level bit 1 mask
TC4_CCAINTLVL1_bp = 1 ; Channel A Compare or Capture Interrupt Level bit 1 position
TC4_LCCDINTLVL_gm = 0xC0 ; Channel Low D Compare or Capture Interrupt Level group mask
TC4_LCCDINTLVL_gp = 6 ; Channel Low D Compare or Capture Interrupt Level group position
TC4_LCCDINTLVL0_bm = 1<<6 ; Channel Low D Compare or Capture Interrupt Level bit 0 mask
TC4_LCCDINTLVL0_bp = 6 ; Channel Low D Compare or Capture Interrupt Level bit 0 position
TC4_LCCDINTLVL1_bm = 1<<7 ; Channel Low D Compare or Capture Interrupt Level bit 1 mask
TC4_LCCDINTLVL1_bp = 7 ; Channel Low D Compare or Capture Interrupt Level bit 1 position
TC4_LCCCINTLVL_gm = 0x30 ; Channel Low C Compare or Capture Interrupt Level group mask
TC4_LCCCINTLVL_gp = 4 ; Channel Low C Compare or Capture Interrupt Level group position
TC4_LCCCINTLVL0_bm = 1<<4 ; Channel Low C Compare or Capture Interrupt Level bit 0 mask
TC4_LCCCINTLVL0_bp = 4 ; Channel Low C Compare or Capture Interrupt Level bit 0 position
TC4_LCCCINTLVL1_bm = 1<<5 ; Channel Low C Compare or Capture Interrupt Level bit 1 mask
TC4_LCCCINTLVL1_bp = 5 ; Channel Low C Compare or Capture Interrupt Level bit 1 position
TC4_LCCBINTLVL_gm = 0x0C ; Channel Low B Compare or Capture Interrupt Level group mask
TC4_LCCBINTLVL_gp = 2 ; Channel Low B Compare or Capture Interrupt Level group position
TC4_LCCBINTLVL0_bm = 1<<2 ; Channel Low B Compare or Capture Interrupt Level bit 0 mask
TC4_LCCBINTLVL0_bp = 2 ; Channel Low B Compare or Capture Interrupt Level bit 0 position
TC4_LCCBINTLVL1_bm = 1<<3 ; Channel Low B Compare or Capture Interrupt Level bit 1 mask
TC4_LCCBINTLVL1_bp = 3 ; Channel Low B Compare or Capture Interrupt Level bit 1 position
TC4_LCCAINTLVL_gm = 0x03 ; Channel Low A Compare or Capture Interrupt Level group mask
TC4_LCCAINTLVL_gp = 0 ; Channel Low A Compare or Capture Interrupt Level group position
TC4_LCCAINTLVL0_bm = 1<<0 ; Channel Low A Compare or Capture Interrupt Level bit 0 mask
TC4_LCCAINTLVL0_bp = 0 ; Channel Low A Compare or Capture Interrupt Level bit 0 position
TC4_LCCAINTLVL1_bm = 1<<1 ; Channel Low A Compare or Capture Interrupt Level bit 1 mask
TC4_LCCAINTLVL1_bp = 1 ; Channel Low A Compare or Capture Interrupt Level bit 1 position

; TC4_CTRLGCLR masks
TC4_STOP_bm = 0x10 ; Timer/Counter Stop bit mask
TC4_STOP_bp = 4 ; Timer/Counter Stop bit position
TC4_CMD_gm = 0x0C ; Command group mask
TC4_CMD_gp = 2 ; Command group position
TC4_CMD0_bm = 1<<2 ; Command bit 0 mask
TC4_CMD0_bp = 2 ; Command bit 0 position
TC4_CMD1_bm = 1<<3 ; Command bit 1 mask
TC4_CMD1_bp = 3 ; Command bit 1 position
TC4_LUPD_bm = 0x02 ; Lock Update bit mask
TC4_LUPD_bp = 1 ; Lock Update bit position
TC4_DIR_bm = 0x01 ; Counter Direction bit mask
TC4_DIR_bp = 0 ; Counter Direction bit position

; TC4_CTRLGSET masks
; Masks for TC4_STOP already defined
; Masks for TC4_CMD already defined
; Masks for TC4_LUPD already defined
; Masks for TC4_DIR already defined

; TC4_CTRLHCLR masks
TC4_CCDBV_bm = 0x10 ; Channel D Compare or Capture Buffer Valid bit mask
TC4_CCDBV_bp = 4 ; Channel D Compare or Capture Buffer Valid bit position
TC4_CCCBV_bm = 0x08 ; Channel C Compare or Capture Buffer Valid bit mask
TC4_CCCBV_bp = 3 ; Channel C Compare or Capture Buffer Valid bit position
TC4_CCBBV_bm = 0x04 ; Channel B Compare or Capture Buffer Valid bit mask
TC4_CCBBV_bp = 2 ; Channel B Compare or Capture Buffer Valid bit position
TC4_CCABV_bm = 0x02 ; Channel A Compare or Capture Buffer Valid bit mask
TC4_CCABV_bp = 1 ; Channel A Compare or Capture Buffer Valid bit position
TC4_PERBV_bm = 0x01 ; Period Buffer Valid bit mask
TC4_PERBV_bp = 0 ; Period Buffer Valid bit position
TC4_LCCDBV_bm = 0x10 ; Channel Low D Compare or Capture Buffer Valid bit mask
TC4_LCCDBV_bp = 4 ; Channel Low D Compare or Capture Buffer Valid bit position
TC4_LCCCBV_bm = 0x08 ; Channel Low C Compare or Capture Buffer Valid bit mask
TC4_LCCCBV_bp = 3 ; Channel Low C Compare or Capture Buffer Valid bit position
TC4_LCCBBV_bm = 0x04 ; Channel Low B Compare or Capture Buffer Valid bit mask
TC4_LCCBBV_bp = 2 ; Channel Low B Compare or Capture Buffer Valid bit position
TC4_LCCABV_bm = 0x02 ; Channel Low A Compare or Capture Buffer Valid bit mask
TC4_LCCABV_bp = 1 ; Channel Low A Compare or Capture Buffer Valid bit position
TC4_LPERBV_bm = 0x01 ; Period Low Buffer Valid bit mask
TC4_LPERBV_bp = 0 ; Period Low Buffer Valid bit position

; TC4_CTRLHSET masks
; Masks for TC4_CCDBV already defined
; Masks for TC4_CCCBV already defined
; Masks for TC4_CCBBV already defined
; Masks for TC4_CCABV already defined
; Masks for TC4_PERBV already defined
; Masks for TC4_LCCDBV already defined
; Masks for TC4_LCCCBV already defined
; Masks for TC4_LCCBBV already defined
; Masks for TC4_LCCABV already defined
; Masks for TC4_LPERBV already defined

; TC4_INTFLAGS masks
TC4_CCDIF_bm = 0x80 ; Channel D Compare or Capture Interrupt Flag bit mask
TC4_CCDIF_bp = 7 ; Channel D Compare or Capture Interrupt Flag bit position
TC4_CCCIF_bm = 0x40 ; Channel C Compare or Capture Interrupt Flag bit mask
TC4_CCCIF_bp = 6 ; Channel C Compare or Capture Interrupt Flag bit position
TC4_CCBIF_bm = 0x20 ; Channel B Compare or Capture Interrupt Flag bit mask
TC4_CCBIF_bp = 5 ; Channel B Compare or Capture Interrupt Flag bit position
TC4_CCAIF_bm = 0x10 ; Channel A Compare or Capture Interrupt Flag bit mask
TC4_CCAIF_bp = 4 ; Channel A Compare or Capture Interrupt Flag bit position
TC4_TRGIF_bm = 0x04 ; Trigger Restart Interrupt Flag bit mask
TC4_TRGIF_bp = 2 ; Trigger Restart Interrupt Flag bit position
TC4_ERRIF_bm = 0x02 ; Error Interrupt Flag bit mask
TC4_ERRIF_bp = 1 ; Error Interrupt Flag bit position
TC4_OVFIF_bm = 0x01 ; Overflow/Underflow Interrupt Flag bit mask
TC4_OVFIF_bp = 0 ; Overflow/Underflow Interrupt Flag bit position
TC4_LCCDIF_bm = 0x80 ; Channel Low D Compare or Capture Interrupt Flag bit mask
TC4_LCCDIF_bp = 7 ; Channel Low D Compare or Capture Interrupt Flag bit position
TC4_LCCCIF_bm = 0x40 ; Channel Low C Compare or Capture Interrupt Flag bit mask
TC4_LCCCIF_bp = 6 ; Channel Low C Compare or Capture Interrupt Flag bit position
TC4_LCCBIF_bm = 0x20 ; Channel Low B Compare or Capture Interrupt Flag bit mask
TC4_LCCBIF_bp = 5 ; Channel Low B Compare or Capture Interrupt Flag bit position
TC4_LCCAIF_bm = 0x10 ; Channel Low A Compare or Capture Interrupt Flag bit mask
TC4_LCCAIF_bp = 4 ; Channel Low A Compare or Capture Interrupt Flag bit position

; TC5_CTRLA masks
TC5_SYNCHEN_bm = 0x40 ; Synchronization Enabled bit mask
TC5_SYNCHEN_bp = 6 ; Synchronization Enabled bit position
TC5_EVSTART_bm = 0x20 ; Start on Next Event bit mask
TC5_EVSTART_bp = 5 ; Start on Next Event bit position
TC5_UPSTOP_bm = 0x10 ; Stop on Next Update bit mask
TC5_UPSTOP_bp = 4 ; Stop on Next Update bit position
TC5_CLKSEL_gm = 0x0F ; Clock Select group mask
TC5_CLKSEL_gp = 0 ; Clock Select group position
TC5_CLKSEL0_bm = 1<<0 ; Clock Select bit 0 mask
TC5_CLKSEL0_bp = 0 ; Clock Select bit 0 position
TC5_CLKSEL1_bm = 1<<1 ; Clock Select bit 1 mask
TC5_CLKSEL1_bp = 1 ; Clock Select bit 1 position
TC5_CLKSEL2_bm = 1<<2 ; Clock Select bit 2 mask
TC5_CLKSEL2_bp = 2 ; Clock Select bit 2 position
TC5_CLKSEL3_bm = 1<<3 ; Clock Select bit 3 mask
TC5_CLKSEL3_bp = 3 ; Clock Select bit 3 position

; TC5_CTRLB masks
TC5_BYTEM_gm = 0xC0 ; Byte Mode group mask
TC5_BYTEM_gp = 6 ; Byte Mode group position
TC5_BYTEM0_bm = 1<<6 ; Byte Mode bit 0 mask
TC5_BYTEM0_bp = 6 ; Byte Mode bit 0 position
TC5_BYTEM1_bm = 1<<7 ; Byte Mode bit 1 mask
TC5_BYTEM1_bp = 7 ; Byte Mode bit 1 position
TC5_CIRCEN_gm = 0x30 ; Circular Buffer Enable group mask
TC5_CIRCEN_gp = 4 ; Circular Buffer Enable group position
TC5_CIRCEN0_bm = 1<<4 ; Circular Buffer Enable bit 0 mask
TC5_CIRCEN0_bp = 4 ; Circular Buffer Enable bit 0 position
TC5_CIRCEN1_bm = 1<<5 ; Circular Buffer Enable bit 1 mask
TC5_CIRCEN1_bp = 5 ; Circular Buffer Enable bit 1 position
TC5_WGMODE_gm = 0x07 ; Waveform Generation Mode group mask
TC5_WGMODE_gp = 0 ; Waveform Generation Mode group position
TC5_WGMODE0_bm = 1<<0 ; Waveform Generation Mode bit 0 mask
TC5_WGMODE0_bp = 0 ; Waveform Generation Mode bit 0 position
TC5_WGMODE1_bm = 1<<1 ; Waveform Generation Mode bit 1 mask
TC5_WGMODE1_bp = 1 ; Waveform Generation Mode bit 1 position
TC5_WGMODE2_bm = 1<<2 ; Waveform Generation Mode bit 2 mask
TC5_WGMODE2_bp = 2 ; Waveform Generation Mode bit 2 position

; TC5_CTRLC masks
TC5_POLB_bm = 0x20 ; Channel B Output Polarity bit mask
TC5_POLB_bp = 5 ; Channel B Output Polarity bit position
TC5_POLA_bm = 0x10 ; Channel A Output Polarity bit mask
TC5_POLA_bp = 4 ; Channel A Output Polarity bit position
TC5_CMPB_bm = 0x02 ; Channel B Compare Output Value bit mask
TC5_CMPB_bp = 1 ; Channel B Compare Output Value bit position
TC5_CMPA_bm = 0x01 ; Channel A Compare Output Value bit mask
TC5_CMPA_bp = 0 ; Channel A Compare Output Value bit position
TC5_HCMPB_bm = 0x20 ; High Channel B Compare Output Value bit mask
TC5_HCMPB_bp = 5 ; High Channel B Compare Output Value bit position
TC5_HCMPA_bm = 0x10 ; High Channel A Compare Output Value bit mask
TC5_HCMPA_bp = 4 ; High Channel A Compare Output Value bit position
TC5_LCMPB_bm = 0x02 ; Low Channel B Compare Output Value bit mask
TC5_LCMPB_bp = 1 ; Low Channel B Compare Output Value bit position
TC5_LCMPA_bm = 0x01 ; Low Channel A Compare Output Value bit mask
TC5_LCMPA_bp = 0 ; Low Channel A Compare Output Value bit position

; TC5_CTRLD masks
TC5_EVACT_gm = 0xE0 ; Event Action group mask
TC5_EVACT_gp = 5 ; Event Action group position
TC5_EVACT0_bm = 1<<5 ; Event Action bit 0 mask
TC5_EVACT0_bp = 5 ; Event Action bit 0 position
TC5_EVACT1_bm = 1<<6 ; Event Action bit 1 mask
TC5_EVACT1_bp = 6 ; Event Action bit 1 position
TC5_EVACT2_bm = 1<<7 ; Event Action bit 2 mask
TC5_EVACT2_bp = 7 ; Event Action bit 2 position
TC5_EVDLY_bm = 0x10 ; Event Delay bit mask
TC5_EVDLY_bp = 4 ; Event Delay bit position
TC5_EVSEL_gm = 0x0F ; Event Source Select group mask
TC5_EVSEL_gp = 0 ; Event Source Select group position
TC5_EVSEL0_bm = 1<<0 ; Event Source Select bit 0 mask
TC5_EVSEL0_bp = 0 ; Event Source Select bit 0 position
TC5_EVSEL1_bm = 1<<1 ; Event Source Select bit 1 mask
TC5_EVSEL1_bp = 1 ; Event Source Select bit 1 position
TC5_EVSEL2_bm = 1<<2 ; Event Source Select bit 2 mask
TC5_EVSEL2_bp = 2 ; Event Source Select bit 2 position
TC5_EVSEL3_bm = 1<<3 ; Event Source Select bit 3 mask
TC5_EVSEL3_bp = 3 ; Event Source Select bit 3 position

; TC5_CTRLE masks
TC5_CCBMODE_gm = 0x0C ; Channel B Compare or Capture Mode group mask
TC5_CCBMODE_gp = 2 ; Channel B Compare or Capture Mode group position
TC5_CCBMODE0_bm = 1<<2 ; Channel B Compare or Capture Mode bit 0 mask
TC5_CCBMODE0_bp = 2 ; Channel B Compare or Capture Mode bit 0 position
TC5_CCBMODE1_bm = 1<<3 ; Channel B Compare or Capture Mode bit 1 mask
TC5_CCBMODE1_bp = 3 ; Channel B Compare or Capture Mode bit 1 position
TC5_CCAMODE_gm = 0x03 ; Channel A Compare or Capture Mode group mask
TC5_CCAMODE_gp = 0 ; Channel A Compare or Capture Mode group position
TC5_CCAMODE0_bm = 1<<0 ; Channel A Compare or Capture Mode bit 0 mask
TC5_CCAMODE0_bp = 0 ; Channel A Compare or Capture Mode bit 0 position
TC5_CCAMODE1_bm = 1<<1 ; Channel A Compare or Capture Mode bit 1 mask
TC5_CCAMODE1_bp = 1 ; Channel A Compare or Capture Mode bit 1 position
TC5_LCCBMODE_gm = 0x0C ; Channel Low B Compare or Capture Mode group mask
TC5_LCCBMODE_gp = 2 ; Channel Low B Compare or Capture Mode group position
TC5_LCCBMODE0_bm = 1<<2 ; Channel Low B Compare or Capture Mode bit 0 mask
TC5_LCCBMODE0_bp = 2 ; Channel Low B Compare or Capture Mode bit 0 position
TC5_LCCBMODE1_bm = 1<<3 ; Channel Low B Compare or Capture Mode bit 1 mask
TC5_LCCBMODE1_bp = 3 ; Channel Low B Compare or Capture Mode bit 1 position
TC5_LCCAMODE_gm = 0x03 ; Channel Low A Compare or Capture Mode group mask
TC5_LCCAMODE_gp = 0 ; Channel Low A Compare or Capture Mode group position
TC5_LCCAMODE0_bm = 1<<0 ; Channel Low A Compare or Capture Mode bit 0 mask
TC5_LCCAMODE0_bp = 0 ; Channel Low A Compare or Capture Mode bit 0 position
TC5_LCCAMODE1_bm = 1<<1 ; Channel Low A Compare or Capture Mode bit 1 mask
TC5_LCCAMODE1_bp = 1 ; Channel Low A Compare or Capture Mode bit 1 position

; TC5_CTRLF masks
TC5_HCCBMODE_gm = 0x0C ; Channel High B Compare or Capture Mode group mask
TC5_HCCBMODE_gp = 2 ; Channel High B Compare or Capture Mode group position
TC5_HCCBMODE0_bm = 1<<2 ; Channel High B Compare or Capture Mode bit 0 mask
TC5_HCCBMODE0_bp = 2 ; Channel High B Compare or Capture Mode bit 0 position
TC5_HCCBMODE1_bm = 1<<3 ; Channel High B Compare or Capture Mode bit 1 mask
TC5_HCCBMODE1_bp = 3 ; Channel High B Compare or Capture Mode bit 1 position
TC5_HCCAMODE_gm = 0x03 ; Channel High A Compare or Capture Mode group mask
TC5_HCCAMODE_gp = 0 ; Channel High A Compare or Capture Mode group position
TC5_HCCAMODE0_bm = 1<<0 ; Channel High A Compare or Capture Mode bit 0 mask
TC5_HCCAMODE0_bp = 0 ; Channel High A Compare or Capture Mode bit 0 position
TC5_HCCAMODE1_bm = 1<<1 ; Channel High A Compare or Capture Mode bit 1 mask
TC5_HCCAMODE1_bp = 1 ; Channel High A Compare or Capture Mode bit 1 position

; TC5_INTCTRLA masks
TC5_TRGINTLVL_gm = 0x30 ; Timer Trigger Restart Interrupt Level group mask
TC5_TRGINTLVL_gp = 4 ; Timer Trigger Restart Interrupt Level group position
TC5_TRGINTLVL0_bm = 1<<4 ; Timer Trigger Restart Interrupt Level bit 0 mask
TC5_TRGINTLVL0_bp = 4 ; Timer Trigger Restart Interrupt Level bit 0 position
TC5_TRGINTLVL1_bm = 1<<5 ; Timer Trigger Restart Interrupt Level bit 1 mask
TC5_TRGINTLVL1_bp = 5 ; Timer Trigger Restart Interrupt Level bit 1 position
TC5_ERRINTLVL_gm = 0x0C ; Timer Error Interrupt Level group mask
TC5_ERRINTLVL_gp = 2 ; Timer Error Interrupt Level group position
TC5_ERRINTLVL0_bm = 1<<2 ; Timer Error Interrupt Level bit 0 mask
TC5_ERRINTLVL0_bp = 2 ; Timer Error Interrupt Level bit 0 position
TC5_ERRINTLVL1_bm = 1<<3 ; Timer Error Interrupt Level bit 1 mask
TC5_ERRINTLVL1_bp = 3 ; Timer Error Interrupt Level bit 1 position
TC5_OVFINTLVL_gm = 0x03 ; Timer Overflow/Underflow Interrupt Level group mask
TC5_OVFINTLVL_gp = 0 ; Timer Overflow/Underflow Interrupt Level group position
TC5_OVFINTLVL0_bm = 1<<0 ; Timer Overflow/Underflow Interrupt Level bit 0 mask
TC5_OVFINTLVL0_bp = 0 ; Timer Overflow/Underflow Interrupt Level bit 0 position
TC5_OVFINTLVL1_bm = 1<<1 ; Timer Overflow/Underflow Interrupt Level bit 1 mask
TC5_OVFINTLVL1_bp = 1 ; Timer Overflow/Underflow Interrupt Level bit 1 position

; TC5_INTCTRLB masks
TC5_CCBINTLVL_gm = 0x0C ; Channel B Compare or Capture Interrupt Level group mask
TC5_CCBINTLVL_gp = 2 ; Channel B Compare or Capture Interrupt Level group position
TC5_CCBINTLVL0_bm = 1<<2 ; Channel B Compare or Capture Interrupt Level bit 0 mask
TC5_CCBINTLVL0_bp = 2 ; Channel B Compare or Capture Interrupt Level bit 0 position
TC5_CCBINTLVL1_bm = 1<<3 ; Channel B Compare or Capture Interrupt Level bit 1 mask
TC5_CCBINTLVL1_bp = 3 ; Channel B Compare or Capture Interrupt Level bit 1 position
TC5_CCAINTLVL_gm = 0x03 ; Channel A Compare or Capture Interrupt Level group mask
TC5_CCAINTLVL_gp = 0 ; Channel A Compare or Capture Interrupt Level group position
TC5_CCAINTLVL0_bm = 1<<0 ; Channel A Compare or Capture Interrupt Level bit 0 mask
TC5_CCAINTLVL0_bp = 0 ; Channel A Compare or Capture Interrupt Level bit 0 position
TC5_CCAINTLVL1_bm = 1<<1 ; Channel A Compare or Capture Interrupt Level bit 1 mask
TC5_CCAINTLVL1_bp = 1 ; Channel A Compare or Capture Interrupt Level bit 1 position
TC5_LCCBINTLVL_gm = 0x0C ; Channel Low B Compare or Capture Interrupt Level group mask
TC5_LCCBINTLVL_gp = 2 ; Channel Low B Compare or Capture Interrupt Level group position
TC5_LCCBINTLVL0_bm = 1<<2 ; Channel Low B Compare or Capture Interrupt Level bit 0 mask
TC5_LCCBINTLVL0_bp = 2 ; Channel Low B Compare or Capture Interrupt Level bit 0 position
TC5_LCCBINTLVL1_bm = 1<<3 ; Channel Low B Compare or Capture Interrupt Level bit 1 mask
TC5_LCCBINTLVL1_bp = 3 ; Channel Low B Compare or Capture Interrupt Level bit 1 position
TC5_LCCAINTLVL_gm = 0x03 ; Channel Low A Compare or Capture Interrupt Level group mask
TC5_LCCAINTLVL_gp = 0 ; Channel Low A Compare or Capture Interrupt Level group position
TC5_LCCAINTLVL0_bm = 1<<0 ; Channel Low A Compare or Capture Interrupt Level bit 0 mask
TC5_LCCAINTLVL0_bp = 0 ; Channel Low A Compare or Capture Interrupt Level bit 0 position
TC5_LCCAINTLVL1_bm = 1<<1 ; Channel Low A Compare or Capture Interrupt Level bit 1 mask
TC5_LCCAINTLVL1_bp = 1 ; Channel Low A Compare or Capture Interrupt Level bit 1 position

; TC5_CTRLGCLR masks
TC5_STOP_bm = 0x10 ; Timer/Counter Stop bit mask
TC5_STOP_bp = 4 ; Timer/Counter Stop bit position
TC5_CMD_gm = 0x0C ; Command group mask
TC5_CMD_gp = 2 ; Command group position
TC5_CMD0_bm = 1<<2 ; Command bit 0 mask
TC5_CMD0_bp = 2 ; Command bit 0 position
TC5_CMD1_bm = 1<<3 ; Command bit 1 mask
TC5_CMD1_bp = 3 ; Command bit 1 position
TC5_LUPD_bm = 0x02 ; Lock Update bit mask
TC5_LUPD_bp = 1 ; Lock Update bit position
TC5_DIR_bm = 0x01 ; Counter Direction bit mask
TC5_DIR_bp = 0 ; Counter Direction bit position

; TC5_CTRLGSET masks
; Masks for TC5_STOP already defined
; Masks for TC5_CMD already defined
; Masks for TC5_LUPD already defined
; Masks for TC5_DIR already defined

; TC5_CTRLHCLR masks
TC5_CCBBV_bm = 0x04 ; Channel B Compare or Capture Buffer Valid bit mask
TC5_CCBBV_bp = 2 ; Channel B Compare or Capture Buffer Valid bit position
TC5_CCABV_bm = 0x02 ; Channel A Compare or Capture Buffer Valid bit mask
TC5_CCABV_bp = 1 ; Channel A Compare or Capture Buffer Valid bit position
TC5_PERBV_bm = 0x01 ; Period Buffer Valid bit mask
TC5_PERBV_bp = 0 ; Period Buffer Valid bit position
TC5_LCCBBV_bm = 0x04 ; Channel Low B Compare or Capture Buffer Valid bit mask
TC5_LCCBBV_bp = 2 ; Channel Low B Compare or Capture Buffer Valid bit position
TC5_LCCABV_bm = 0x02 ; Channel Low A Compare or Capture Buffer Valid bit mask
TC5_LCCABV_bp = 1 ; Channel Low A Compare or Capture Buffer Valid bit position
TC5_LPERBV_bm = 0x01 ; Period Low Buffer Valid bit mask
TC5_LPERBV_bp = 0 ; Period Low Buffer Valid bit position

; TC5_CTRLHSET masks
; Masks for TC5_CCBBV already defined
; Masks for TC5_CCABV already defined
; Masks for TC5_PERBV already defined
; Masks for TC5_LCCBBV already defined
; Masks for TC5_LCCABV already defined
; Masks for TC5_LPERBV already defined

; TC5_INTFLAGS masks
TC5_CCBIF_bm = 0x20 ; Channel B Compare or Capture Interrupt Flag bit mask
TC5_CCBIF_bp = 5 ; Channel B Compare or Capture Interrupt Flag bit position
TC5_CCAIF_bm = 0x10 ; Channel A Compare or Capture Interrupt Flag bit mask
TC5_CCAIF_bp = 4 ; Channel A Compare or Capture Interrupt Flag bit position
TC5_TRGIF_bm = 0x04 ; Trigger Restart Interrupt Flag bit mask
TC5_TRGIF_bp = 2 ; Trigger Restart Interrupt Flag bit position
TC5_ERRIF_bm = 0x02 ; Error Interrupt Flag bit mask
TC5_ERRIF_bp = 1 ; Error Interrupt Flag bit position
TC5_OVFIF_bm = 0x01 ; Overflow/Underflow Interrupt Flag bit mask
TC5_OVFIF_bp = 0 ; Overflow/Underflow Interrupt Flag bit position
TC5_LCCBIF_bm = 0x20 ; Channel Low B Compare or Capture Interrupt Flag bit mask
TC5_LCCBIF_bp = 5 ; Channel Low B Compare or Capture Interrupt Flag bit position
TC5_LCCAIF_bm = 0x10 ; Channel Low A Compare or Capture Interrupt Flag bit mask
TC5_LCCAIF_bp = 4 ; Channel Low A Compare or Capture Interrupt Flag bit position

; Clock Selection
TC45_CLKSEL_OFF_gc = 0x00<<0 ; Timer Off
TC45_CLKSEL_DIV1_gc = 0x01<<0 ; System Clock
TC45_CLKSEL_DIV2_gc = 0x02<<0 ; System Clock / 2
TC45_CLKSEL_DIV4_gc = 0x03<<0 ; System Clock / 4
TC45_CLKSEL_DIV8_gc = 0x04<<0 ; System Clock / 8
TC45_CLKSEL_DIV64_gc = 0x05<<0 ; System Clock / 64
TC45_CLKSEL_DIV256_gc = 0x06<<0 ; System Clock / 256
TC45_CLKSEL_DIV1024_gc = 0x07<<0 ; System Clock / 1024
TC45_CLKSEL_EVCH0_gc = 0x08<<0 ; Event Channel 0
TC45_CLKSEL_EVCH1_gc = 0x09<<0 ; Event Channel 1
TC45_CLKSEL_EVCH2_gc = 0x0A<<0 ; Event Channel 2
TC45_CLKSEL_EVCH3_gc = 0x0B<<0 ; Event Channel 3
TC45_CLKSEL_EVCH4_gc = 0x0C<<0 ; Event Channel 4
TC45_CLKSEL_EVCH5_gc = 0x0D<<0 ; Event Channel 5
TC45_CLKSEL_EVCH6_gc = 0x0E<<0 ; Event Channel 6
TC45_CLKSEL_EVCH7_gc = 0x0F<<0 ; Event Channel 7

; Byte Mode
TC45_BYTEM_NORMAL_gc = 0x00<<6 ; 16-bit mode
TC45_BYTEM_BYTEMODE_gc = 0x01<<6 ; Timer/Counter Operating in Byte Mode Only

; Circular Enable Mode
TC45_CIRCEN_DISABLE_gc = 0x00<<4 ; Circular Buffer Disabled
TC45_CIRCEN_PER_gc = 0x01<<4 ; Circular Buffer Enabled on PER/PERBUF
TC45_CIRCEN_CCA_gc = 0x02<<4 ; Circular Buffer Enabled on CCA/CCABUF
TC45_CIRCEN_BOTH_gc = 0x03<<4 ; Circular Buffer Enabled on All Buffered Registers

; Waveform Generation Mode
TC45_WGMODE_NORMAL_gc = 0x00<<0 ; Normal Mode
TC45_WGMODE_FRQ_gc = 0x01<<0 ; Frequency Generation Mode
TC45_WGMODE_SINGLESLOPE_gc = 0x03<<0 ; Single Slope
TC45_WGMODE_DSTOP_gc = 0x05<<0 ; Dual Slope, Update on TOP
TC45_WGMODE_DSBOTH_gc = 0x06<<0 ; Dual Slope, Both
TC45_WGMODE_DSBOTTOM_gc = 0x07<<0 ; Dual Slope, Update on BOTTOM

; Event Action
TC45_EVACT_OFF_gc = 0x00<<5 ; No Event Action
TC45_EVACT_FMODE1_gc = 0x01<<5 ; Fault Mode 1 capture
TC45_EVACT_FMODE2_gc = 0x02<<5 ; Fault Mode 2 capture
TC45_EVACT_UPDOWN_gc = 0x03<<5 ; Up/down count
TC45_EVACT_QDEC_gc = 0x04<<5 ; Quadrature decode
TC45_EVACT_RESTART_gc = 0x05<<5 ; Restart
TC45_EVACT_PWF_gc = 0x06<<5 ; Pulse-width Capture

; Event Selection
TC45_EVSEL_OFF_gc = 0x00<<0 ; No Event Source
TC45_EVSEL_CH0_gc = 0x08<<0 ; Event Channel 0
TC45_EVSEL_CH1_gc = 0x09<<0 ; Event Channel 1
TC45_EVSEL_CH2_gc = 0x0A<<0 ; Event Channel 2
TC45_EVSEL_CH3_gc = 0x0B<<0 ; Event Channel 3
TC45_EVSEL_CH4_gc = 0x0C<<0 ; Event Channel 4
TC45_EVSEL_CH5_gc = 0x0D<<0 ; Event Channel 5
TC45_EVSEL_CH6_gc = 0x0E<<0 ; Event Channel 6
TC45_EVSEL_CH7_gc = 0x0F<<0 ; Event Channel 7

; Compare or Capture Channel A Mode
TC45_CCAMODE_DISABLE_gc = 0x00<<0 ; Channel Disabled
TC45_CCAMODE_COMP_gc = 0x01<<0 ; Ouput Compare enabled
TC45_CCAMODE_CAPT_gc = 0x02<<0 ; Input Capture enabled
TC45_CCAMODE_BOTHCC_gc = 0x03<<0 ; Both Compare and Capture enabled

; Compare or Capture Channel B Mode
TC45_CCBMODE_DISABLE_gc = 0x00<<2 ; Channel Disabled
TC45_CCBMODE_COMP_gc = 0x01<<2 ; Ouput Compare enabled
TC45_CCBMODE_CAPT_gc = 0x02<<2 ; Input Capture enabled
TC45_CCBMODE_BOTHCC_gc = 0x03<<2 ; Both Compare and Capture enabled

; Compare or Capture Channel C Mode
TC45_CCCMODE_DISABLE_gc = 0x00<<4 ; Channel Disabled
TC45_CCCMODE_COMP_gc = 0x01<<4 ; Ouput Compare enabled
TC45_CCCMODE_CAPT_gc = 0x02<<4 ; Input Capture enabled
TC45_CCCMODE_BOTHCC_gc = 0x03<<4 ; Both Compare and Capture enabled

; Compare or Capture Channel D Mode
TC45_CCDMODE_DISABLE_gc = 0x00<<6 ; Channel Disabled
TC45_CCDMODE_COMP_gc = 0x01<<6 ; Ouput Compare enabled
TC45_CCDMODE_CAPT_gc = 0x02<<6 ; Input Capture enabled
TC45_CCDMODE_BOTHCC_gc = 0x03<<6 ; Both Compare and Capture enabled

; Compare or Capture Low Channel A Mode
TC45_LCCAMODE_DISABLE_gc = 0x00<<0 ; Channel Disabled
TC45_LCCAMODE_COMP_gc = 0x01<<0 ; Ouput Compare enabled
TC45_LCCAMODE_CAPT_gc = 0x02<<0 ; Input Capture enabled
TC45_LCCAMODE_BOTHCC_gc = 0x03<<0 ; Both Compare and Capture enabled

; Compare or Capture Low Channel B Mode
TC45_LCCBMODE_DISABLE_gc = 0x00<<2 ; Channel Disabled
TC45_LCCBMODE_COMP_gc = 0x01<<2 ; Ouput Compare enabled
TC45_LCCBMODE_CAPT_gc = 0x02<<2 ; Input Capture enabled
TC45_LCCBMODE_BOTHCC_gc = 0x03<<2 ; Both Compare and Capture enabled

; Compare or Capture Low Channel C Mode
TC45_LCCCMODE_DISABLE_gc = 0x00<<4 ; Channel Disabled
TC45_LCCCMODE_COMP_gc = 0x01<<4 ; Ouput Compare enabled
TC45_LCCCMODE_CAPT_gc = 0x02<<4 ; Input Capture enabled
TC45_LCCCMODE_BOTHCC_gc = 0x03<<4 ; Both Compare and Capture enabled

; Compare or Capture Low Channel D Mode
TC45_LCCDMODE_DISABLE_gc = 0x00<<6 ; Channel Disabled
TC45_LCCDMODE_COMP_gc = 0x01<<6 ; Ouput Compare enabled
TC45_LCCDMODE_CAPT_gc = 0x02<<6 ; Input Capture enabled
TC45_LCCDMODE_BOTHCC_gc = 0x03<<6 ; Both Compare and Capture enabled

; Compare or Capture High Channel A Mode
TC45_HCCAMODE_DISABLE_gc = 0x00<<0 ; Channel Disabled
TC45_HCCAMODE_COMP_gc = 0x01<<0 ; Ouput Compare enabled
TC45_HCCAMODE_CAPT_gc = 0x02<<0 ; Input Capture enabled
TC45_HCCAMODE_BOTHCC_gc = 0x03<<0 ; Both Compare and Capture enabled

; Compare or Capture High Channel B Mode
TC45_HCCBMODE_DISABLE_gc = 0x00<<2 ; Channel Disabled
TC45_HCCBMODE_COMP_gc = 0x01<<2 ; Ouput Compare enabled
TC45_HCCBMODE_CAPT_gc = 0x02<<2 ; Input Capture enabled
TC45_HCCBMODE_BOTHCC_gc = 0x03<<2 ; Both Compare and Capture enabled

; Compare or Capture High Channel C Mode
TC45_HCCCMODE_DISABLE_gc = 0x00<<4 ; Channel Disabled
TC45_HCCCMODE_COMP_gc = 0x01<<4 ; Ouput Compare enabled
TC45_HCCCMODE_CAPT_gc = 0x02<<4 ; Input Capture enabled
TC45_HCCCMODE_BOTHCC_gc = 0x03<<4 ; Both Compare and Capture enabled

; Compare or Capture High Channel D Mode
TC45_HCCDMODE_DISABLE_gc = 0x00<<6 ; Channel Disabled
TC45_HCCDMODE_COMP_gc = 0x01<<6 ; Ouput Compare enabled
TC45_HCCDMODE_CAPT_gc = 0x02<<6 ; Input Capture enabled
TC45_HCCDMODE_BOTHCC_gc = 0x03<<6 ; Both Compare and Capture enabled

; Timer Trigger Restart Interrupt Level
TC45_TRGINTLVL_OFF_gc = 0x00<<4 ; Interrupt Disabled
TC45_TRGINTLVL_LO_gc = 0x01<<4 ; Low Level
TC45_TRGINTLVL_MED_gc = 0x02<<4 ; Medium Level
TC45_TRGINTLVL_HI_gc = 0x03<<4 ; High Level

; Error Interrupt Level
TC45_ERRINTLVL_OFF_gc = 0x00<<2 ; Interrupt Disabled
TC45_ERRINTLVL_LO_gc = 0x01<<2 ; Low Level
TC45_ERRINTLVL_MED_gc = 0x02<<2 ; Medium Level
TC45_ERRINTLVL_HI_gc = 0x03<<2 ; High Level

; Overflow Interrupt Level
TC45_OVFINTLVL_OFF_gc = 0x00<<0 ; Interrupt Disabled
TC45_OVFINTLVL_LO_gc = 0x01<<0 ; Low Level
TC45_OVFINTLVL_MED_gc = 0x02<<0 ; Medium Level
TC45_OVFINTLVL_HI_gc = 0x03<<0 ; High Level

; Compare or Capture Channel A Interrupt Level
TC45_CCAINTLVL_OFF_gc = 0x00<<0 ; Interrupt Disabled
TC45_CCAINTLVL_LO_gc = 0x01<<0 ; Low Level
TC45_CCAINTLVL_MED_gc = 0x02<<0 ; Medium Level
TC45_CCAINTLVL_HI_gc = 0x03<<0 ; High Level

; Compare or Capture Channel B Interrupt Level
TC45_CCBINTLVL_OFF_gc = 0x00<<2 ; Interrupt Disabled
TC45_CCBINTLVL_LO_gc = 0x01<<2 ; Low Level
TC45_CCBINTLVL_MED_gc = 0x02<<2 ; Medium Level
TC45_CCBINTLVL_HI_gc = 0x03<<2 ; High Level

; Compare or Capture Channel C Interrupt Level
TC45_CCCINTLVL_OFF_gc = 0x00<<4 ; Interrupt Disabled
TC45_CCCINTLVL_LO_gc = 0x01<<4 ; Low Level
TC45_CCCINTLVL_MED_gc = 0x02<<4 ; Medium Level
TC45_CCCINTLVL_HI_gc = 0x03<<4 ; High Level

; Compare or Capture Channel D Interrupt Level
TC45_CCDINTLVL_OFF_gc = 0x00<<6 ; Interrupt Disabled
TC45_CCDINTLVL_LO_gc = 0x01<<6 ; Low Level
TC45_CCDINTLVL_MED_gc = 0x02<<6 ; Medium Level
TC45_CCDINTLVL_HI_gc = 0x03<<6 ; High Level

; Compare or Capture Low Channel A Interrupt Level
TC45_LCCAINTLVL_OFF_gc = 0x00<<0 ; Interrupt Disabled
TC45_LCCAINTLVL_LO_gc = 0x01<<0 ; Low Level
TC45_LCCAINTLVL_MED_gc = 0x02<<0 ; Medium Level
TC45_LCCAINTLVL_HI_gc = 0x03<<0 ; High Level

; Compare or Capture Low Channel B Interrupt Level
TC45_LCCBINTLVL_OFF_gc = 0x00<<2 ; Interrupt Disabled
TC45_LCCBINTLVL_LO_gc = 0x01<<2 ; Low Level
TC45_LCCBINTLVL_MED_gc = 0x02<<2 ; Medium Level
TC45_LCCBINTLVL_HI_gc = 0x03<<2 ; High Level

; Compare or Capture Low Channel C Interrupt Level
TC45_LCCCINTLVL_OFF_gc = 0x00<<4 ; Interrupt Disabled
TC45_LCCCINTLVL_LO_gc = 0x01<<4 ; Low Level
TC45_LCCCINTLVL_MED_gc = 0x02<<4 ; Medium Level
TC45_LCCCINTLVL_HI_gc = 0x03<<4 ; High Level

; Compare or Capture Low Channel D Interrupt Level
TC45_LCCDINTLVL_OFF_gc = 0x00<<6 ; Interrupt Disabled
TC45_LCCDINTLVL_LO_gc = 0x01<<6 ; Low Level
TC45_LCCDINTLVL_MED_gc = 0x02<<6 ; Medium Level
TC45_LCCDINTLVL_HI_gc = 0x03<<6 ; High Level

; Timer/Counter Command
TC45_CMD_NONE_gc = 0x00<<2 ; No Command
TC45_CMD_UPDATE_gc = 0x01<<2 ; Force Update
TC45_CMD_RESTART_gc = 0x02<<2 ; Force Restart
TC45_CMD_RESET_gc = 0x03<<2 ; Force Hard Reset


;*************************************************************************
;** FAULT - Fault Extension
;*************************************************************************

; FAULT_CTRLA masks
FAULT_RAMP_gm = 0xC0 ; Ramp Mode Selection group mask
FAULT_RAMP_gp = 6 ; Ramp Mode Selection group position
FAULT_RAMP0_bm = 1<<6 ; Ramp Mode Selection bit 0 mask
FAULT_RAMP0_bp = 6 ; Ramp Mode Selection bit 0 position
FAULT_RAMP1_bm = 1<<7 ; Ramp Mode Selection bit 1 mask
FAULT_RAMP1_bp = 7 ; Ramp Mode Selection bit 1 position
FAULT_FDDBD_bm = 0x20 ; Fault on Debug Break Detection bit mask
FAULT_FDDBD_bp = 5 ; Fault on Debug Break Detection bit position
FAULT_PORTCTRL_bm = 0x10 ; Port Control Mode bit mask
FAULT_PORTCTRL_bp = 4 ; Port Control Mode bit position
FAULT_FUSE_bm = 0x08 ; Fuse State  bit mask
FAULT_FUSE_bp = 3 ; Fuse State  bit position
FAULT_FILTERE_bm = 0x04 ; Fault E Digital Filter Selection bit mask
FAULT_FILTERE_bp = 2 ; Fault E Digital Filter Selection bit position
FAULT_SRCE_gm = 0x03 ; Fault E Input selection group mask
FAULT_SRCE_gp = 0 ; Fault E Input selection group position
FAULT_SRCE0_bm = 1<<0 ; Fault E Input selection bit 0 mask
FAULT_SRCE0_bp = 0 ; Fault E Input selection bit 0 position
FAULT_SRCE1_bm = 1<<1 ; Fault E Input selection bit 1 mask
FAULT_SRCE1_bp = 1 ; Fault E Input selection bit 1 position

; FAULT_CTRLB masks
FAULT_SOFTA_bm = 0x80 ; Fault A Software Mode bit mask
FAULT_SOFTA_bp = 7 ; Fault A Software Mode bit position
FAULT_HALTA_gm = 0x60 ; Fault A Halt Action group mask
FAULT_HALTA_gp = 5 ; Fault A Halt Action group position
FAULT_HALTA0_bm = 1<<5 ; Fault A Halt Action bit 0 mask
FAULT_HALTA0_bp = 5 ; Fault A Halt Action bit 0 position
FAULT_HALTA1_bm = 1<<6 ; Fault A Halt Action bit 1 mask
FAULT_HALTA1_bp = 6 ; Fault A Halt Action bit 1 position
FAULT_RESTARTA_bm = 0x10 ; Fault A Restart Action bit mask
FAULT_RESTARTA_bp = 4 ; Fault A Restart Action bit position
FAULT_KEEPA_bm = 0x08 ; Fault A Keep Action bit mask
FAULT_KEEPA_bp = 3 ; Fault A Keep Action bit position
FAULT_SRCA_gm = 0x03 ; Fault A Source Selection group mask
FAULT_SRCA_gp = 0 ; Fault A Source Selection group position
FAULT_SRCA0_bm = 1<<0 ; Fault A Source Selection bit 0 mask
FAULT_SRCA0_bp = 0 ; Fault A Source Selection bit 0 position
FAULT_SRCA1_bm = 1<<1 ; Fault A Source Selection bit 1 mask
FAULT_SRCA1_bp = 1 ; Fault A Source Selection bit 1 position

; FAULT_CTRLC masks
FAULT_CAPTA_bm = 0x20 ; Fault A Capture bit mask
FAULT_CAPTA_bp = 5 ; Fault A Capture bit position
FAULT_FILTERA_bm = 0x04 ; Fault A Digital Filter Selection bit mask
FAULT_FILTERA_bp = 2 ; Fault A Digital Filter Selection bit position
FAULT_BLANKA_bm = 0x02 ; Fault A Blanking bit mask
FAULT_BLANKA_bp = 1 ; Fault A Blanking bit position
FAULT_QUALA_bm = 0x01 ; Fault A Qualification bit mask
FAULT_QUALA_bp = 0 ; Fault A Qualification bit position

; FAULT_CTRLD masks
FAULT_SOFTB_bm = 0x80 ; Fault B Software Mode bit mask
FAULT_SOFTB_bp = 7 ; Fault B Software Mode bit position
FAULT_HALTB_gm = 0x60 ; Fault B Halt Action group mask
FAULT_HALTB_gp = 5 ; Fault B Halt Action group position
FAULT_HALTB0_bm = 1<<5 ; Fault B Halt Action bit 0 mask
FAULT_HALTB0_bp = 5 ; Fault B Halt Action bit 0 position
FAULT_HALTB1_bm = 1<<6 ; Fault B Halt Action bit 1 mask
FAULT_HALTB1_bp = 6 ; Fault B Halt Action bit 1 position
FAULT_RESTARTB_bm = 0x10 ; Fault B Restart Action bit mask
FAULT_RESTARTB_bp = 4 ; Fault B Restart Action bit position
FAULT_KEEPB_bm = 0x08 ; Fault B Keep Action bit mask
FAULT_KEEPB_bp = 3 ; Fault B Keep Action bit position
FAULT_SRCB_gm = 0x03 ; Fault B Source Selection group mask
FAULT_SRCB_gp = 0 ; Fault B Source Selection group position
FAULT_SRCB0_bm = 1<<0 ; Fault B Source Selection bit 0 mask
FAULT_SRCB0_bp = 0 ; Fault B Source Selection bit 0 position
FAULT_SRCB1_bm = 1<<1 ; Fault B Source Selection bit 1 mask
FAULT_SRCB1_bp = 1 ; Fault B Source Selection bit 1 position

; FAULT_CTRLE masks
FAULT_CAPTB_bm = 0x20 ; Fault B Capture bit mask
FAULT_CAPTB_bp = 5 ; Fault B Capture bit position
FAULT_FILTERB_bm = 0x04 ; Fault B Digital Filter Selection bit mask
FAULT_FILTERB_bp = 2 ; Fault B Digital Filter Selection bit position
FAULT_BLANKB_bm = 0x02 ; Fault B Blanking bit mask
FAULT_BLANKB_bp = 1 ; Fault B Blanking bit position
FAULT_QUALB_bm = 0x01 ; Fault B Qualification bit mask
FAULT_QUALB_bp = 0 ; Fault B Qualification bit position

; FAULT_STATUS masks
FAULT_STATEB_bm = 0x80 ; Fault B State bit mask
FAULT_STATEB_bp = 7 ; Fault B State bit position
FAULT_STATEA_bm = 0x40 ; Fault A State bit mask
FAULT_STATEA_bp = 6 ; Fault A State bit position
FAULT_STATEE_bm = 0x20 ; Fault E State bit mask
FAULT_STATEE_bp = 5 ; Fault E State bit position
FAULT_IDX_bm = 0x08 ; Channel Index Flag bit mask
FAULT_IDX_bp = 3 ; Channel Index Flag bit position
FAULT_FAULTBIN_bm = 0x04 ; Fault B Flag bit mask
FAULT_FAULTBIN_bp = 2 ; Fault B Flag bit position
FAULT_FAULTAIN_bm = 0x02 ; Fault A Flag bit mask
FAULT_FAULTAIN_bp = 1 ; Fault A Flag bit position
FAULT_FAULTEIN_bm = 0x01 ; Fault E Flag bit mask
FAULT_FAULTEIN_bp = 0 ; Fault E Flag bit position

; FAULT_CTRLGCLR masks
FAULT_HALTBCLR_bm = 0x80 ; State B Clear bit mask
FAULT_HALTBCLR_bp = 7 ; State B Clear bit position
FAULT_HALTACLR_bm = 0x40 ; State A Clear bit mask
FAULT_HALTACLR_bp = 6 ; State A Clear bit position
FAULT_STATEECLR_bm = 0x20 ; State E Clear bit mask
FAULT_STATEECLR_bp = 5 ; State E Clear bit position
FAULT_FAULTB_bm = 0x04 ; Fault B Flag bit mask
FAULT_FAULTB_bp = 2 ; Fault B Flag bit position
FAULT_FAULTA_bm = 0x02 ; Fault A Flag bit mask
FAULT_FAULTA_bp = 1 ; Fault A Flag bit position
FAULT_FAULTE_bm = 0x01 ; Fault E Flag bit mask
FAULT_FAULTE_bp = 0 ; Fault E Flag bit position

; FAULT_CTRLGSET masks
FAULT_FAULTBSW_bm = 0x80 ; Software Fault B bit mask
FAULT_FAULTBSW_bp = 7 ; Software Fault B bit position
FAULT_FAULTASW_bm = 0x40 ; Software Fault A bit mask
FAULT_FAULTASW_bp = 6 ; Software Fault A bit position
FAULT_FAULTESW_bm = 0x20 ; Software Fault E bit mask
FAULT_FAULTESW_bp = 5 ; Software Fault E bit position
FAULT_IDXCMD_gm = 0x18 ; Channel index Command group mask
FAULT_IDXCMD_gp = 3 ; Channel index Command group position
FAULT_IDXCMD0_bm = 1<<3 ; Channel index Command bit 0 mask
FAULT_IDXCMD0_bp = 3 ; Channel index Command bit 0 position
FAULT_IDXCMD1_bm = 1<<4 ; Channel index Command bit 1 mask
FAULT_IDXCMD1_bp = 4 ; Channel index Command bit 1 position

; Ramp Mode Selection
FAULT_RAMP_RAMP1_gc = 0x00<<6 ; Normal Mode
FAULT_RAMP_RAMP2_gc = 0x02<<6 ; RAMP2 Mode

; Fault E Input Source Selection
FAULT_SRCE_DISABLE_gc = 0x00<<0 ; Fault Protection Disabled
FAULT_SRCE_CHN_gc = 0x01<<0 ; Event Channel n
FAULT_SRCE_CHN1_gc = 0x02<<0 ; Event Channel n+1
FAULT_SRCE_CHN2_gc = 0x03<<0 ; Event Channel n+2

; Fault A Halt Action Selection
FAULT_HALTA_DISABLE_gc = 0x00<<5 ; Halt Action Disabled
FAULT_HALTA_HW_gc = 0x01<<5 ; Hardware Halt Action
FAULT_HALTA_SW_gc = 0x02<<5 ; Software Halt Action

; Fault A Source Selection
FAULT_SRCA_DISABLE_gc = 0x00<<0 ; Fault A Disabled
FAULT_SRCA_CHN_gc = 0x01<<0 ; Event Channel n
FAULT_SRCA_CHN1_gc = 0x02<<0 ; Event Channel n+1
FAULT_SRCA_LINK_gc = 0x03<<0 ; Fault A linked to Fault B State from previous cycle

; Fault B Halt Action Selection
FAULT_HALTB_DISABLE_gc = 0x00<<5 ; Halt Action Disabled
FAULT_HALTB_HW_gc = 0x01<<5 ; Hardware Halt Action
FAULT_HALTB_SW_gc = 0x02<<5 ; Software Halt Action

; Fault B Source Selection
FAULT_SRCB_DISABLE_gc = 0x00<<0 ; Fault B disabled
FAULT_SRCB_CHN_gc = 0x01<<0 ; Event Channel n
FAULT_SRCB_CHN1_gc = 0x02<<0 ; Event Channel n+1
FAULT_SRCB_LINK_gc = 0x03<<0 ; Fault B linked to Fault A State from previous cycle

; Channel index Command
FAULT_IDXCMD_DISABLE_gc = 0x00<<3 ; Command Disabled
FAULT_IDXCMD_SET_gc = 0x01<<3 ; Force Cycle B in Next Cycle
FAULT_IDXCMD_CLEAR_gc = 0x02<<3 ; Force Cycle A in Next Cycle
FAULT_IDXCMD_HOLD_gc = 0x03<<3 ; Hold Current Cycle Index in Next Cycle


;*************************************************************************
;** WEX - Waveform Extension
;*************************************************************************

; WEX_CTRL masks
WEX_UPSEL_bm = 0x80 ; Update Source Selection bit mask
WEX_UPSEL_bp = 7 ; Update Source Selection bit position
WEX_OTMX_gm = 0x70 ; Output Matrix group mask
WEX_OTMX_gp = 4 ; Output Matrix group position
WEX_OTMX0_bm = 1<<4 ; Output Matrix bit 0 mask
WEX_OTMX0_bp = 4 ; Output Matrix bit 0 position
WEX_OTMX1_bm = 1<<5 ; Output Matrix bit 1 mask
WEX_OTMX1_bp = 5 ; Output Matrix bit 1 position
WEX_OTMX2_bm = 1<<6 ; Output Matrix bit 2 mask
WEX_OTMX2_bp = 6 ; Output Matrix bit 2 position
WEX_DTI3EN_bm = 0x08 ; Dead-Time Insertion Generator 3 Enable bit mask
WEX_DTI3EN_bp = 3 ; Dead-Time Insertion Generator 3 Enable bit position
WEX_DTI2EN_bm = 0x04 ; Dead-Time Insertion Generator 2 Enable bit mask
WEX_DTI2EN_bp = 2 ; Dead-Time Insertion Generator 2 Enable bit position
WEX_DTI1EN_bm = 0x02 ; Dead-Time Insertion Generator 1 Enable bit mask
WEX_DTI1EN_bp = 1 ; Dead-Time Insertion Generator 1 Enable bit position
WEX_DTI0EN_bm = 0x01 ; Dead-Time Insertion Generator 0 Enable bit mask
WEX_DTI0EN_bp = 0 ; Dead-Time Insertion Generator 0 Enable bit position

; WEX_STATUSCLR masks
WEX_SWAPBUF_bm = 0x04 ; Swap Buffer Valid  bit mask
WEX_SWAPBUF_bp = 2 ; Swap Buffer Valid  bit position
WEX_PGVBUFV_bm = 0x02 ; Pattern Generator Value Buffer Valid  bit mask
WEX_PGVBUFV_bp = 1 ; Pattern Generator Value Buffer Valid  bit position
WEX_PGOBUFV_bm = 0x01 ; Pattern Generator Overwrite Buffer Valid bit mask
WEX_PGOBUFV_bp = 0 ; Pattern Generator Overwrite Buffer Valid bit position

; WEX_STATUSSET masks
; Masks for WEX_SWAPBUF already defined
; Masks for WEX_PGVBUFV already defined
; Masks for WEX_PGOBUFV already defined

; WEX_SWAP masks
WEX_SWAP3_bm = 0x08 ; Swap DTI output pair 3 bit mask
WEX_SWAP3_bp = 3 ; Swap DTI output pair 3 bit position
WEX_SWAP2_bm = 0x04 ; Swap DTI output pair 2 bit mask
WEX_SWAP2_bp = 2 ; Swap DTI output pair 2 bit position
WEX_SWAP1_bm = 0x02 ; Swap DTI output pair 1 bit mask
WEX_SWAP1_bp = 1 ; Swap DTI output pair 1 bit position
WEX_SWAP0_bm = 0x01 ; Swap DTI output pair 0 bit mask
WEX_SWAP0_bp = 0 ; Swap DTI output pair 0 bit position

; WEX_SWAPBUF masks
WEX_SWAP3BUF_bm = 0x08 ; Swap DTI output pair 3  bit mask
WEX_SWAP3BUF_bp = 3 ; Swap DTI output pair 3  bit position
WEX_SWAP2BUF_bm = 0x04 ; Swap DTI output pair 2 bit mask
WEX_SWAP2BUF_bp = 2 ; Swap DTI output pair 2 bit position
WEX_SWAP1BUF_bm = 0x02 ; Swap DTI output pair 1  bit mask
WEX_SWAP1BUF_bp = 1 ; Swap DTI output pair 1  bit position
WEX_SWAP0BUF_bm = 0x01 ; Swap DTI output pair 0 bit mask
WEX_SWAP0BUF_bp = 0 ; Swap DTI output pair 0 bit position

; Output Matrix Mode
WEX_OTMX_DEFAULT_gc = 0x00<<4 ; Default Ouput Matrix Mode
WEX_OTMX_FIRST_gc = 0x01<<4 ; First Output matrix Mode
WEX_OTMX_SECOND_gc = 0x02<<4 ; Second Output matrix Mode
WEX_OTMX_THIRD_gc = 0x03<<4 ; Third Output matrix Mode
WEX_OTMX_FOURTH_gc = 0x04<<4 ; Fourth Output matrix Mode


;*************************************************************************
;** HIRES - High-Resolution Extension
;*************************************************************************

; HIRES_CTRLA masks
HIRES_HRPLUS_gm = 0x0C ; High Resolution Plus group mask
HIRES_HRPLUS_gp = 2 ; High Resolution Plus group position
HIRES_HRPLUS0_bm = 1<<2 ; High Resolution Plus bit 0 mask
HIRES_HRPLUS0_bp = 2 ; High Resolution Plus bit 0 position
HIRES_HRPLUS1_bm = 1<<3 ; High Resolution Plus bit 1 mask
HIRES_HRPLUS1_bp = 3 ; High Resolution Plus bit 1 position
HIRES_HREN_gm = 0x03 ; High Resolution Mode group mask
HIRES_HREN_gp = 0 ; High Resolution Mode group position
HIRES_HREN0_bm = 1<<0 ; High Resolution Mode bit 0 mask
HIRES_HREN0_bp = 0 ; High Resolution Mode bit 0 position
HIRES_HREN1_bm = 1<<1 ; High Resolution Mode bit 1 mask
HIRES_HREN1_bp = 1 ; High Resolution Mode bit 1 position

; High Resolution Plus Mode
HIRES_HRPLUS_NONE_gc = 0x00<<2 ; No Hi-Res Plus
HIRES_HRPLUS_HRP4_gc = 0x01<<2 ; Hi-Res Plus enabled on Timer 4
HIRES_HRPLUS_HRP5_gc = 0x03<<2 ; Hi-Res Plus enabled on Timer 5
HIRES_HRPLUS_BOTH_gc = 0x03<<2 ; Hi-Res Plus enabled on Timer 4 and 5

; High Resolution Mode
HIRES_HREN_NONE_gc = 0x00<<0 ; No Hi-Res
HIRES_HREN_HRP4_gc = 0x01<<0 ; Hi-Res enabled on Timer 4
HIRES_HREN_HRP5_gc = 0x03<<0 ; Hi-Res enabled on Timer 5
HIRES_HREN_BOTH_gc = 0x03<<0 ; Hi-Res enabled on Timer 4 and 5


;*************************************************************************
;** USART - Universal Asynchronous Receiver-Transmitter
;*************************************************************************

; USART_STATUS masks
USART_RXCIF_bm = 0x80 ; Receive Interrupt Flag bit mask
USART_RXCIF_bp = 7 ; Receive Interrupt Flag bit position
USART_TXCIF_bm = 0x40 ; Transmit Interrupt Flag bit mask
USART_TXCIF_bp = 6 ; Transmit Interrupt Flag bit position
USART_DREIF_bm = 0x20 ; Data Register Empty Flag bit mask
USART_DREIF_bp = 5 ; Data Register Empty Flag bit position
USART_FERR_bm = 0x10 ; Frame Error bit mask
USART_FERR_bp = 4 ; Frame Error bit position
USART_BUFOVF_bm = 0x08 ; Buffer Overflow bit mask
USART_BUFOVF_bp = 3 ; Buffer Overflow bit position
USART_PERR_bm = 0x04 ; Parity Error bit mask
USART_PERR_bp = 2 ; Parity Error bit position
USART_RXSIF_bm = 0x02 ; Receive Start Bit Interrupt Flag bit mask
USART_RXSIF_bp = 1 ; Receive Start Bit Interrupt Flag bit position
USART_RXB8_bm = 0x01 ; Receive Bit 8 bit mask
USART_RXB8_bp = 0 ; Receive Bit 8 bit position
USART_DRIF_bm = 0x01 ; Data Reception Flag bit mask
USART_DRIF_bp = 0 ; Data Reception Flag bit position

; USART_CTRLA masks
USART_RXSIE_bm = 0x80 ; Receive Start Interrupt Enable bit mask
USART_RXSIE_bp = 7 ; Receive Start Interrupt Enable bit position
USART_DRIE_bm = 0x40 ; Data Reception Interrupt Enable bit mask
USART_DRIE_bp = 6 ; Data Reception Interrupt Enable bit position
USART_RXCINTLVL_gm = 0x30 ; Receive Interrupt Level group mask
USART_RXCINTLVL_gp = 4 ; Receive Interrupt Level group position
USART_RXCINTLVL0_bm = 1<<4 ; Receive Interrupt Level bit 0 mask
USART_RXCINTLVL0_bp = 4 ; Receive Interrupt Level bit 0 position
USART_RXCINTLVL1_bm = 1<<5 ; Receive Interrupt Level bit 1 mask
USART_RXCINTLVL1_bp = 5 ; Receive Interrupt Level bit 1 position
USART_TXCINTLVL_gm = 0x0C ; Transmit Interrupt Level group mask
USART_TXCINTLVL_gp = 2 ; Transmit Interrupt Level group position
USART_TXCINTLVL0_bm = 1<<2 ; Transmit Interrupt Level bit 0 mask
USART_TXCINTLVL0_bp = 2 ; Transmit Interrupt Level bit 0 position
USART_TXCINTLVL1_bm = 1<<3 ; Transmit Interrupt Level bit 1 mask
USART_TXCINTLVL1_bp = 3 ; Transmit Interrupt Level bit 1 position
USART_DREINTLVL_gm = 0x03 ; Data Register Empty Interrupt Level group mask
USART_DREINTLVL_gp = 0 ; Data Register Empty Interrupt Level group position
USART_DREINTLVL0_bm = 1<<0 ; Data Register Empty Interrupt Level bit 0 mask
USART_DREINTLVL0_bp = 0 ; Data Register Empty Interrupt Level bit 0 position
USART_DREINTLVL1_bm = 1<<1 ; Data Register Empty Interrupt Level bit 1 mask
USART_DREINTLVL1_bp = 1 ; Data Register Empty Interrupt Level bit 1 position

; USART_CTRLB masks
USART_ONEWIRE_bm = 0x80 ; One Wire Mode bit mask
USART_ONEWIRE_bp = 7 ; One Wire Mode bit position
USART_SFDEN_bm = 0x40 ; Start Frame Detection Enable bit mask
USART_SFDEN_bp = 6 ; Start Frame Detection Enable bit position
USART_RXEN_bm = 0x10 ; Receiver Enable bit mask
USART_RXEN_bp = 4 ; Receiver Enable bit position
USART_TXEN_bm = 0x08 ; Transmitter Enable bit mask
USART_TXEN_bp = 3 ; Transmitter Enable bit position
USART_CLK2X_bm = 0x04 ; Double transmission speed bit mask
USART_CLK2X_bp = 2 ; Double transmission speed bit position
USART_MPCM_bm = 0x02 ; Multi-processor Communication Mode bit mask
USART_MPCM_bp = 1 ; Multi-processor Communication Mode bit position
USART_TXB8_bm = 0x01 ; Transmit bit 8 bit mask
USART_TXB8_bp = 0 ; Transmit bit 8 bit position

; USART_CTRLC masks
USART_CMODE_gm = 0xC0 ; Communication Mode group mask
USART_CMODE_gp = 6 ; Communication Mode group position
USART_CMODE0_bm = 1<<6 ; Communication Mode bit 0 mask
USART_CMODE0_bp = 6 ; Communication Mode bit 0 position
USART_CMODE1_bm = 1<<7 ; Communication Mode bit 1 mask
USART_CMODE1_bp = 7 ; Communication Mode bit 1 position
USART_PMODE_gm = 0x30 ; Parity Mode group mask
USART_PMODE_gp = 4 ; Parity Mode group position
USART_PMODE0_bm = 1<<4 ; Parity Mode bit 0 mask
USART_PMODE0_bp = 4 ; Parity Mode bit 0 position
USART_PMODE1_bm = 1<<5 ; Parity Mode bit 1 mask
USART_PMODE1_bp = 5 ; Parity Mode bit 1 position
USART_SBMODE_bm = 0x08 ; Stop Bit Mode bit mask
USART_SBMODE_bp = 3 ; Stop Bit Mode bit position
USART_CHSIZE_gm = 0x07 ; Character Size group mask
USART_CHSIZE_gp = 0 ; Character Size group position
USART_CHSIZE0_bm = 1<<0 ; Character Size bit 0 mask
USART_CHSIZE0_bp = 0 ; Character Size bit 0 position
USART_CHSIZE1_bm = 1<<1 ; Character Size bit 1 mask
USART_CHSIZE1_bp = 1 ; Character Size bit 1 position
USART_CHSIZE2_bm = 1<<2 ; Character Size bit 2 mask
USART_CHSIZE2_bp = 2 ; Character Size bit 2 position

; USART_CTRLD masks
USART_DECTYPE_gm = 0x30 ; Receive Interrupt Level group mask
USART_DECTYPE_gp = 4 ; Receive Interrupt Level group position
USART_DECTYPE0_bm = 1<<4 ; Receive Interrupt Level bit 0 mask
USART_DECTYPE0_bp = 4 ; Receive Interrupt Level bit 0 position
USART_DECTYPE1_bm = 1<<5 ; Receive Interrupt Level bit 1 mask
USART_DECTYPE1_bp = 5 ; Receive Interrupt Level bit 1 position
USART_LUTACT_gm = 0x0C ; Transmit Interrupt Level group mask
USART_LUTACT_gp = 2 ; Transmit Interrupt Level group position
USART_LUTACT0_bm = 1<<2 ; Transmit Interrupt Level bit 0 mask
USART_LUTACT0_bp = 2 ; Transmit Interrupt Level bit 0 position
USART_LUTACT1_bm = 1<<3 ; Transmit Interrupt Level bit 1 mask
USART_LUTACT1_bp = 3 ; Transmit Interrupt Level bit 1 position
USART_PECACT_gm = 0x03 ; Data Register Empty Interrupt Level group mask
USART_PECACT_gp = 0 ; Data Register Empty Interrupt Level group position
USART_PECACT0_bm = 1<<0 ; Data Register Empty Interrupt Level bit 0 mask
USART_PECACT0_bp = 0 ; Data Register Empty Interrupt Level bit 0 position
USART_PECACT1_bm = 1<<1 ; Data Register Empty Interrupt Level bit 1 mask
USART_PECACT1_bp = 1 ; Data Register Empty Interrupt Level bit 1 position

; USART_BAUDCTRLA masks
USART_BSEL_gm = 0xFF ; Baud Rate Selection Bits [7:0] group mask
USART_BSEL_gp = 0 ; Baud Rate Selection Bits [7:0] group position
USART_BSEL0_bm = 1<<0 ; Baud Rate Selection Bits [7:0] bit 0 mask
USART_BSEL0_bp = 0 ; Baud Rate Selection Bits [7:0] bit 0 position
USART_BSEL1_bm = 1<<1 ; Baud Rate Selection Bits [7:0] bit 1 mask
USART_BSEL1_bp = 1 ; Baud Rate Selection Bits [7:0] bit 1 position
USART_BSEL2_bm = 1<<2 ; Baud Rate Selection Bits [7:0] bit 2 mask
USART_BSEL2_bp = 2 ; Baud Rate Selection Bits [7:0] bit 2 position
USART_BSEL3_bm = 1<<3 ; Baud Rate Selection Bits [7:0] bit 3 mask
USART_BSEL3_bp = 3 ; Baud Rate Selection Bits [7:0] bit 3 position
USART_BSEL4_bm = 1<<4 ; Baud Rate Selection Bits [7:0] bit 4 mask
USART_BSEL4_bp = 4 ; Baud Rate Selection Bits [7:0] bit 4 position
USART_BSEL5_bm = 1<<5 ; Baud Rate Selection Bits [7:0] bit 5 mask
USART_BSEL5_bp = 5 ; Baud Rate Selection Bits [7:0] bit 5 position
USART_BSEL6_bm = 1<<6 ; Baud Rate Selection Bits [7:0] bit 6 mask
USART_BSEL6_bp = 6 ; Baud Rate Selection Bits [7:0] bit 6 position
USART_BSEL7_bm = 1<<7 ; Baud Rate Selection Bits [7:0] bit 7 mask
USART_BSEL7_bp = 7 ; Baud Rate Selection Bits [7:0] bit 7 position

; USART_BAUDCTRLB masks
USART_BSCALE_gm = 0xF0 ; Baud Rate Scale group mask
USART_BSCALE_gp = 4 ; Baud Rate Scale group position
USART_BSCALE0_bm = 1<<4 ; Baud Rate Scale bit 0 mask
USART_BSCALE0_bp = 4 ; Baud Rate Scale bit 0 position
USART_BSCALE1_bm = 1<<5 ; Baud Rate Scale bit 1 mask
USART_BSCALE1_bp = 5 ; Baud Rate Scale bit 1 position
USART_BSCALE2_bm = 1<<6 ; Baud Rate Scale bit 2 mask
USART_BSCALE2_bp = 6 ; Baud Rate Scale bit 2 position
USART_BSCALE3_bm = 1<<7 ; Baud Rate Scale bit 3 mask
USART_BSCALE3_bp = 7 ; Baud Rate Scale bit 3 position
; Masks for USART_BSEL already defined

; Receive Complete Interrupt level
USART_RXCINTLVL_OFF_gc = 0x00<<4 ; Interrupt Disabled
USART_RXCINTLVL_LO_gc = 0x01<<4 ; Low Level
USART_RXCINTLVL_MED_gc = 0x02<<4 ; Medium Level
USART_RXCINTLVL_HI_gc = 0x03<<4 ; High Level

; Transmit Complete Interrupt level
USART_TXCINTLVL_OFF_gc = 0x00<<2 ; Interrupt Disabled
USART_TXCINTLVL_LO_gc = 0x01<<2 ; Low Level
USART_TXCINTLVL_MED_gc = 0x02<<2 ; Medium Level
USART_TXCINTLVL_HI_gc = 0x03<<2 ; High Level

; Data Register Empty Interrupt level
USART_DREINTLVL_OFF_gc = 0x00<<0 ; Interrupt Disabled
USART_DREINTLVL_LO_gc = 0x01<<0 ; Low Level
USART_DREINTLVL_MED_gc = 0x02<<0 ; Medium Level
USART_DREINTLVL_HI_gc = 0x03<<0 ; High Level

; Character Size
USART_CHSIZE_5BIT_gc = 0x00<<0 ; Character size: 5 bit
USART_CHSIZE_6BIT_gc = 0x01<<0 ; Character size: 6 bit
USART_CHSIZE_7BIT_gc = 0x02<<0 ; Character size: 7 bit
USART_CHSIZE_8BIT_gc = 0x03<<0 ; Character size: 8 bit
USART_CHSIZE_9BIT_gc = 0x07<<0 ; Character size: 9 bit

; Communication Mode
USART_CMODE_ASYNCHRONOUS_gc = 0x00<<6 ; Asynchronous Mode
USART_CMODE_SYNCHRONOUS_gc = 0x01<<6 ; Synchronous Mode
USART_CMODE_IRDA_gc = 0x02<<6 ; IrDA Mode
USART_CMODE_MSPI_gc = 0x03<<6 ; Master SPI Mode

; Parity Mode
USART_PMODE_DISABLED_gc = 0x00<<4 ; No Parity
USART_PMODE_EVEN_gc = 0x02<<4 ; Even Parity
USART_PMODE_ODD_gc = 0x03<<4 ; Odd Parity

; Encoding and Decoding Type
USART_DECTYPE_DATA_gc = 0x00<<4 ; DATA Field Encoding
USART_DECTYPE_SDATA_gc = 0x02<<4 ; Start and Data Fields Encoding
USART_DECTYPE_NOTSDATA_gc = 0x03<<4 ; Start and Data Fields Encoding, with invertion in START field

; XCL LUT Action
USART_LUTACT_OFF_gc = 0x00<<2 ; Standard Frame Configuration
USART_LUTACT_RX_gc = 0x01<<2 ; Receiver Decoding Enabled
USART_LUTACT_TX_gc = 0x02<<2 ; Transmitter Encoding Enabled
USART_LUTACT_BOTH_gc = 0x03<<2 ; Both Encoding and Decoding Enabled

; XCL Peripheral Counter Action
USART_PECACT_OFF_gc = 0x00<<0 ; Standard Mode
USART_PECACT_PEC0_gc = 0x01<<0 ; Variable Data Lenght in Reception
USART_PECACT_PEC1_gc = 0x02<<0 ; Variable Data Lenght in Transmission
USART_PECACT_PERC01_gc = 0x03<<0 ; Variable Data Lenght in both Reception and Transmission


;*************************************************************************
;** SPI - Serial Peripheral Interface
;*************************************************************************

; SPI_CTRL masks
SPI_CLK2X_bm = 0x80 ; Enable Double Speed bit mask
SPI_CLK2X_bp = 7 ; Enable Double Speed bit position
SPI_ENABLE_bm = 0x40 ; Enable SPI Module bit mask
SPI_ENABLE_bp = 6 ; Enable SPI Module bit position
SPI_DORD_bm = 0x20 ; Data Order Setting bit mask
SPI_DORD_bp = 5 ; Data Order Setting bit position
SPI_MASTER_bm = 0x10 ; Master Operation Enable bit mask
SPI_MASTER_bp = 4 ; Master Operation Enable bit position
SPI_MODE_gm = 0x0C ; SPI Mode group mask
SPI_MODE_gp = 2 ; SPI Mode group position
SPI_MODE0_bm = 1<<2 ; SPI Mode bit 0 mask
SPI_MODE0_bp = 2 ; SPI Mode bit 0 position
SPI_MODE1_bm = 1<<3 ; SPI Mode bit 1 mask
SPI_MODE1_bp = 3 ; SPI Mode bit 1 position
SPI_PRESCALER_gm = 0x03 ; Prescaler group mask
SPI_PRESCALER_gp = 0 ; Prescaler group position
SPI_PRESCALER0_bm = 1<<0 ; Prescaler bit 0 mask
SPI_PRESCALER0_bp = 0 ; Prescaler bit 0 position
SPI_PRESCALER1_bm = 1<<1 ; Prescaler bit 1 mask
SPI_PRESCALER1_bp = 1 ; Prescaler bit 1 position

; SPI_INTCTRL masks
SPI_RXCIE_bm = 0x80 ; Receive Complete Interrupt Enable (In Buffer Modes Only). bit mask
SPI_RXCIE_bp = 7 ; Receive Complete Interrupt Enable (In Buffer Modes Only). bit position
SPI_TXCIE_bm = 0x40 ; Transmit Complete Interrupt Enable (In Buffer Modes Only). bit mask
SPI_TXCIE_bp = 6 ; Transmit Complete Interrupt Enable (In Buffer Modes Only). bit position
SPI_DREIE_bm = 0x20 ; Data Register Empty Interrupt Enable (In Buffer Modes Only). bit mask
SPI_DREIE_bp = 5 ; Data Register Empty Interrupt Enable (In Buffer Modes Only). bit position
SPI_SSIE_bm = 0x10 ; Slave Select Trigger Interrupt Enable (In Buffer Modes Only). bit mask
SPI_SSIE_bp = 4 ; Slave Select Trigger Interrupt Enable (In Buffer Modes Only). bit position
SPI_INTLVL_gm = 0x03 ; Interrupt level group mask
SPI_INTLVL_gp = 0 ; Interrupt level group position
SPI_INTLVL0_bm = 1<<0 ; Interrupt level bit 0 mask
SPI_INTLVL0_bp = 0 ; Interrupt level bit 0 position
SPI_INTLVL1_bm = 1<<1 ; Interrupt level bit 1 mask
SPI_INTLVL1_bp = 1 ; Interrupt level bit 1 position

; SPI_STATUS masks
SPI_IF_bm = 0x80 ; Interrupt Flag (In Standard Mode Only). bit mask
SPI_IF_bp = 7 ; Interrupt Flag (In Standard Mode Only). bit position
SPI_RXCIF_bm = 0x80 ; Receive Complete Interrupt Flag (In Buffer Modes Only). bit mask
SPI_RXCIF_bp = 7 ; Receive Complete Interrupt Flag (In Buffer Modes Only). bit position
SPI_WRCOL_bm = 0x40 ; Write Collision Flag (In Standard Mode Only). bit mask
SPI_WRCOL_bp = 6 ; Write Collision Flag (In Standard Mode Only). bit position
SPI_TXCIF_bm = 0x40 ; Transmit Complete Interrupt Flag (In Buffer Modes Only). bit mask
SPI_TXCIF_bp = 6 ; Transmit Complete Interrupt Flag (In Buffer Modes Only). bit position
SPI_DREIF_bm = 0x20 ; Data Register Empty Interrupt Flag (In Buffer Modes Only). bit mask
SPI_DREIF_bp = 5 ; Data Register Empty Interrupt Flag (In Buffer Modes Only). bit position
SPI_SSIF_bm = 0x10 ; Slave Select Trigger Interrupt Flag (In Buffer Modes Only). bit mask
SPI_SSIF_bp = 4 ; Slave Select Trigger Interrupt Flag (In Buffer Modes Only). bit position
SPI_BUFOVF_bm = 0x01 ; Buffer Overflow (In Buffer Modes Only). bit mask
SPI_BUFOVF_bp = 0 ; Buffer Overflow (In Buffer Modes Only). bit position

; SPI_CTRLB masks
SPI_BUFMODE_gm = 0xC0 ; Buffer Modes group mask
SPI_BUFMODE_gp = 6 ; Buffer Modes group position
SPI_BUFMODE0_bm = 1<<6 ; Buffer Modes bit 0 mask
SPI_BUFMODE0_bp = 6 ; Buffer Modes bit 0 position
SPI_BUFMODE1_bm = 1<<7 ; Buffer Modes bit 1 mask
SPI_BUFMODE1_bp = 7 ; Buffer Modes bit 1 position
SPI_SSD_bm = 0x04 ; Slave Select Disable bit mask
SPI_SSD_bp = 2 ; Slave Select Disable bit position

; SPI Mode
SPI_MODE_0_gc = 0x00<<2 ; SPI Mode 0, base clock at "0", sampling on leading edge (rising) & set-up on trailling edge (falling).
SPI_MODE_1_gc = 0x01<<2 ; SPI Mode 1, base clock at "0", set-up on leading edge (rising) & sampling on trailling edge (falling).
SPI_MODE_2_gc = 0x02<<2 ; SPI Mode 2, base clock at "1", sampling on leading edge (falling) & set-up on trailling edge (rising).
SPI_MODE_3_gc = 0x03<<2 ; SPI Mode 3, base clock at "1", set-up on leading edge (falling) & sampling on trailling edge (rising).

; Prescaler setting
SPI_PRESCALER_DIV4_gc = 0x00<<0 ; If CLK2X=1 CLKper/2, else (CLK2X=0) CLKper/4.
SPI_PRESCALER_DIV16_gc = 0x01<<0 ; If CLK2X=1 CLKper/8, else (CLK2X=0) CLKper/16.
SPI_PRESCALER_DIV64_gc = 0x02<<0 ; If CLK2X=1 CLKper/32, else (CLK2X=0) CLKper/64.
SPI_PRESCALER_DIV128_gc = 0x03<<0 ; If CLK2X=1 CLKper/64, else (CLK2X=0) CLKper/128.

; Interrupt level
SPI_INTLVL_OFF_gc = 0x00<<0 ; Interrupt Disabled
SPI_INTLVL_LO_gc = 0x01<<0 ; Low Level
SPI_INTLVL_MED_gc = 0x02<<0 ; Medium Level
SPI_INTLVL_HI_gc = 0x03<<0 ; High Level

; Buffer Modes
SPI_BUFMODE_OFF_gc = 0x00<<6 ; SPI Unbuffered Mode
SPI_BUFMODE_BUFMODE1_gc = 0x02<<6 ; Buffer Mode 1 (with dummy byte)
SPI_BUFMODE_BUFMODE2_gc = 0x03<<6 ; Buffer Mode 2 (no dummy byte)


;*************************************************************************
;** IRCOM - IR Communication Module
;*************************************************************************

; IRCOM_CTRL masks
IRCOM_EVSEL_gm = 0x0F ; Event Channel Select group mask
IRCOM_EVSEL_gp = 0 ; Event Channel Select group position
IRCOM_EVSEL0_bm = 1<<0 ; Event Channel Select bit 0 mask
IRCOM_EVSEL0_bp = 0 ; Event Channel Select bit 0 position
IRCOM_EVSEL1_bm = 1<<1 ; Event Channel Select bit 1 mask
IRCOM_EVSEL1_bp = 1 ; Event Channel Select bit 1 position
IRCOM_EVSEL2_bm = 1<<2 ; Event Channel Select bit 2 mask
IRCOM_EVSEL2_bp = 2 ; Event Channel Select bit 2 position
IRCOM_EVSEL3_bm = 1<<3 ; Event Channel Select bit 3 mask
IRCOM_EVSEL3_bp = 3 ; Event Channel Select bit 3 position

; Event channel selection
IRDA_EVSEL_OFF_gc = 0x00<<0 ; No Event Source
IRDA_EVSEL_0_gc = 0x08<<0 ; Event Channel 0
IRDA_EVSEL_1_gc = 0x09<<0 ; Event Channel 1
IRDA_EVSEL_2_gc = 0x0A<<0 ; Event Channel 2
IRDA_EVSEL_3_gc = 0x0B<<0 ; Event Channel 3
IRDA_EVSEL_4_gc = 0x0C<<0 ; Event Channel 4
IRDA_EVSEL_5_gc = 0x0D<<0 ; Event Channel 5
IRDA_EVSEL_6_gc = 0x0E<<0 ; Event Channel 6
IRDA_EVSEL_7_gc = 0x0F<<0 ; Event Channel 7


;*************************************************************************
;** FUSE - Fuses and Lockbits
;*************************************************************************

; NVM_LOCKBITS_LOCKBITS masks
NVM_LOCKBITS_BLBB_gm = 0xC0 ; Boot Lock Bits - Boot Section group mask
NVM_LOCKBITS_BLBB_gp = 6 ; Boot Lock Bits - Boot Section group position
NVM_LOCKBITS_BLBB0_bm = 1<<6 ; Boot Lock Bits - Boot Section bit 0 mask
NVM_LOCKBITS_BLBB0_bp = 6 ; Boot Lock Bits - Boot Section bit 0 position
NVM_LOCKBITS_BLBB1_bm = 1<<7 ; Boot Lock Bits - Boot Section bit 1 mask
NVM_LOCKBITS_BLBB1_bp = 7 ; Boot Lock Bits - Boot Section bit 1 position
NVM_LOCKBITS_BLBA_gm = 0x30 ; Boot Lock Bits - Application Section group mask
NVM_LOCKBITS_BLBA_gp = 4 ; Boot Lock Bits - Application Section group position
NVM_LOCKBITS_BLBA0_bm = 1<<4 ; Boot Lock Bits - Application Section bit 0 mask
NVM_LOCKBITS_BLBA0_bp = 4 ; Boot Lock Bits - Application Section bit 0 position
NVM_LOCKBITS_BLBA1_bm = 1<<5 ; Boot Lock Bits - Application Section bit 1 mask
NVM_LOCKBITS_BLBA1_bp = 5 ; Boot Lock Bits - Application Section bit 1 position
NVM_LOCKBITS_BLBAT_gm = 0x0C ; Boot Lock Bits - Application Table group mask
NVM_LOCKBITS_BLBAT_gp = 2 ; Boot Lock Bits - Application Table group position
NVM_LOCKBITS_BLBAT0_bm = 1<<2 ; Boot Lock Bits - Application Table bit 0 mask
NVM_LOCKBITS_BLBAT0_bp = 2 ; Boot Lock Bits - Application Table bit 0 position
NVM_LOCKBITS_BLBAT1_bm = 1<<3 ; Boot Lock Bits - Application Table bit 1 mask
NVM_LOCKBITS_BLBAT1_bp = 3 ; Boot Lock Bits - Application Table bit 1 position
NVM_LOCKBITS_LB_gm = 0x03 ; Lock Bits group mask
NVM_LOCKBITS_LB_gp = 0 ; Lock Bits group position
NVM_LOCKBITS_LB0_bm = 1<<0 ; Lock Bits bit 0 mask
NVM_LOCKBITS_LB0_bp = 0 ; Lock Bits bit 0 position
NVM_LOCKBITS_LB1_bm = 1<<1 ; Lock Bits bit 1 mask
NVM_LOCKBITS_LB1_bp = 1 ; Lock Bits bit 1 position

; NVM_FUSES_FUSEBYTE1 masks
NVM_FUSES_WDWP_gm = 0xF0 ; Watchdog Window Timeout Period group mask
NVM_FUSES_WDWP_gp = 4 ; Watchdog Window Timeout Period group position
NVM_FUSES_WDWP0_bm = 1<<4 ; Watchdog Window Timeout Period bit 0 mask
NVM_FUSES_WDWP0_bp = 4 ; Watchdog Window Timeout Period bit 0 position
NVM_FUSES_WDWP1_bm = 1<<5 ; Watchdog Window Timeout Period bit 1 mask
NVM_FUSES_WDWP1_bp = 5 ; Watchdog Window Timeout Period bit 1 position
NVM_FUSES_WDWP2_bm = 1<<6 ; Watchdog Window Timeout Period bit 2 mask
NVM_FUSES_WDWP2_bp = 6 ; Watchdog Window Timeout Period bit 2 position
NVM_FUSES_WDWP3_bm = 1<<7 ; Watchdog Window Timeout Period bit 3 mask
NVM_FUSES_WDWP3_bp = 7 ; Watchdog Window Timeout Period bit 3 position
NVM_FUSES_WDP_gm = 0x0F ; Watchdog Timeout Period group mask
NVM_FUSES_WDP_gp = 0 ; Watchdog Timeout Period group position
NVM_FUSES_WDP0_bm = 1<<0 ; Watchdog Timeout Period bit 0 mask
NVM_FUSES_WDP0_bp = 0 ; Watchdog Timeout Period bit 0 position
NVM_FUSES_WDP1_bm = 1<<1 ; Watchdog Timeout Period bit 1 mask
NVM_FUSES_WDP1_bp = 1 ; Watchdog Timeout Period bit 1 position
NVM_FUSES_WDP2_bm = 1<<2 ; Watchdog Timeout Period bit 2 mask
NVM_FUSES_WDP2_bp = 2 ; Watchdog Timeout Period bit 2 position
NVM_FUSES_WDP3_bm = 1<<3 ; Watchdog Timeout Period bit 3 mask
NVM_FUSES_WDP3_bp = 3 ; Watchdog Timeout Period bit 3 position

; NVM_FUSES_FUSEBYTE2 masks
NVM_FUSES_BOOTRST_bm = 0x40 ; Boot Loader Section Reset Vector bit mask
NVM_FUSES_BOOTRST_bp = 6 ; Boot Loader Section Reset Vector bit position
NVM_FUSES_BODPD_gm = 0x03 ; BOD Operation in Power-Down Mode group mask
NVM_FUSES_BODPD_gp = 0 ; BOD Operation in Power-Down Mode group position
NVM_FUSES_BODPD0_bm = 1<<0 ; BOD Operation in Power-Down Mode bit 0 mask
NVM_FUSES_BODPD0_bp = 0 ; BOD Operation in Power-Down Mode bit 0 position
NVM_FUSES_BODPD1_bm = 1<<1 ; BOD Operation in Power-Down Mode bit 1 mask
NVM_FUSES_BODPD1_bp = 1 ; BOD Operation in Power-Down Mode bit 1 position

; NVM_FUSES_FUSEBYTE4 masks
NVM_FUSES_RSTDISBL_bm = 0x10 ; External Reset Disable bit mask
NVM_FUSES_RSTDISBL_bp = 4 ; External Reset Disable bit position
NVM_FUSES_SUT_gm = 0x0C ; Start-up Time group mask
NVM_FUSES_SUT_gp = 2 ; Start-up Time group position
NVM_FUSES_SUT0_bm = 1<<2 ; Start-up Time bit 0 mask
NVM_FUSES_SUT0_bp = 2 ; Start-up Time bit 0 position
NVM_FUSES_SUT1_bm = 1<<3 ; Start-up Time bit 1 mask
NVM_FUSES_SUT1_bp = 3 ; Start-up Time bit 1 position
NVM_FUSES_WDLOCK_bm = 0x02 ; Watchdog Timer Lock bit mask
NVM_FUSES_WDLOCK_bp = 1 ; Watchdog Timer Lock bit position

; NVM_FUSES_FUSEBYTE5 masks
NVM_FUSES_BODACT_gm = 0x30 ; BOD Operation in Active Mode group mask
NVM_FUSES_BODACT_gp = 4 ; BOD Operation in Active Mode group position
NVM_FUSES_BODACT0_bm = 1<<4 ; BOD Operation in Active Mode bit 0 mask
NVM_FUSES_BODACT0_bp = 4 ; BOD Operation in Active Mode bit 0 position
NVM_FUSES_BODACT1_bm = 1<<5 ; BOD Operation in Active Mode bit 1 mask
NVM_FUSES_BODACT1_bp = 5 ; BOD Operation in Active Mode bit 1 position
NVM_FUSES_EESAVE_bm = 0x08 ; Preserve EEPROM Through Chip Erase bit mask
NVM_FUSES_EESAVE_bp = 3 ; Preserve EEPROM Through Chip Erase bit position
NVM_FUSES_BODLVL_gm = 0x07 ; Brown Out Detection Voltage Level group mask
NVM_FUSES_BODLVL_gp = 0 ; Brown Out Detection Voltage Level group position
NVM_FUSES_BODLVL0_bm = 1<<0 ; Brown Out Detection Voltage Level bit 0 mask
NVM_FUSES_BODLVL0_bp = 0 ; Brown Out Detection Voltage Level bit 0 position
NVM_FUSES_BODLVL1_bm = 1<<1 ; Brown Out Detection Voltage Level bit 1 mask
NVM_FUSES_BODLVL1_bp = 1 ; Brown Out Detection Voltage Level bit 1 position
NVM_FUSES_BODLVL2_bm = 1<<2 ; Brown Out Detection Voltage Level bit 2 mask
NVM_FUSES_BODLVL2_bp = 2 ; Brown Out Detection Voltage Level bit 2 position

; NVM_FUSES_FUSEBYTE6 masks
NVM_FUSES_FDACT5_bm = 0x80 ; Fault Dectection Action on TC5 bit mask
NVM_FUSES_FDACT5_bp = 7 ; Fault Dectection Action on TC5 bit position
NVM_FUSES_FDACT4_bm = 0x40 ; Fault Dectection Action on TC4 bit mask
NVM_FUSES_FDACT4_bp = 6 ; Fault Dectection Action on TC4 bit position
NVM_FUSES_VALUE_gm = 0x3F ; Port Pin Value group mask
NVM_FUSES_VALUE_gp = 0 ; Port Pin Value group position
NVM_FUSES_VALUE0_bm = 1<<0 ; Port Pin Value bit 0 mask
NVM_FUSES_VALUE0_bp = 0 ; Port Pin Value bit 0 position
NVM_FUSES_VALUE1_bm = 1<<1 ; Port Pin Value bit 1 mask
NVM_FUSES_VALUE1_bp = 1 ; Port Pin Value bit 1 position
NVM_FUSES_VALUE2_bm = 1<<2 ; Port Pin Value bit 2 mask
NVM_FUSES_VALUE2_bp = 2 ; Port Pin Value bit 2 position
NVM_FUSES_VALUE3_bm = 1<<3 ; Port Pin Value bit 3 mask
NVM_FUSES_VALUE3_bp = 3 ; Port Pin Value bit 3 position
NVM_FUSES_VALUE4_bm = 1<<4 ; Port Pin Value bit 4 mask
NVM_FUSES_VALUE4_bp = 4 ; Port Pin Value bit 4 position
NVM_FUSES_VALUE5_bm = 1<<5 ; Port Pin Value bit 5 mask
NVM_FUSES_VALUE5_bp = 5 ; Port Pin Value bit 5 position

; Boot lock bits - boot setcion
FUSE_BLBB_RWLOCK_gc = 0x00<<6 ; Read and write not allowed
FUSE_BLBB_RLOCK_gc = 0x01<<6 ; Read not allowed
FUSE_BLBB_WLOCK_gc = 0x02<<6 ; Write not allowed
FUSE_BLBB_NOLOCK_gc = 0x03<<6 ; No locks

; Boot lock bits - application section
FUSE_BLBA_RWLOCK_gc = 0x00<<4 ; Read and write not allowed
FUSE_BLBA_RLOCK_gc = 0x01<<4 ; Read not allowed
FUSE_BLBA_WLOCK_gc = 0x02<<4 ; Write not allowed
FUSE_BLBA_NOLOCK_gc = 0x03<<4 ; No locks

; Boot lock bits - application table section
FUSE_BLBAT_RWLOCK_gc = 0x00<<2 ; Read and write not allowed
FUSE_BLBAT_RLOCK_gc = 0x01<<2 ; Read not allowed
FUSE_BLBAT_WLOCK_gc = 0x02<<2 ; Write not allowed
FUSE_BLBAT_NOLOCK_gc = 0x03<<2 ; No locks

; Lock bits
FUSE_LB_RWLOCK_gc = 0x00<<0 ; Read and write not allowed
FUSE_LB_WLOCK_gc = 0x02<<0 ; Write not allowed
FUSE_LB_NOLOCK_gc = 0x03<<0 ; No locks

; Boot Loader Section Reset Vector
BOOTRST_BOOTLDR_gc = 0x00<<6 ; Boot Loader Reset
BOOTRST_APPLICATION_gc = 0x01<<6 ; Application Reset

; BOD operation
BOD_SAMPLED_gc = 0x01<<4 ; BOD enabled in sampled mode
BOD_CONTINUOUS_gc = 0x02<<4 ; BOD enabled continuously
BOD_DISABLED_gc = 0x03<<4 ; BOD Disabled

; Watchdog (Window) Timeout Period
WD_8CLK_gc = 0x00<<0 ; 8 cycles (8ms @ 3.3V)
WD_16CLK_gc = 0x01<<0 ; 16 cycles (16ms @ 3.3V)
WD_32CLK_gc = 0x02<<0 ; 32 cycles (32ms @ 3.3V)
WD_64CLK_gc = 0x03<<0 ; 64 cycles (64ms @ 3.3V)
WD_128CLK_gc = 0x04<<0 ; 128 cycles (0.125s @ 3.3V)
WD_256CLK_gc = 0x05<<0 ; 256 cycles (0.25s @ 3.3V)
WD_512CLK_gc = 0x06<<0 ; 512 cycles (0.5s @ 3.3V)
WD_1KCLK_gc = 0x07<<0 ; 1K cycles (1s @ 3.3V)
WD_2KCLK_gc = 0x08<<0 ; 2K cycles (2s @ 3.3V)
WD_4KCLK_gc = 0x09<<0 ; 4K cycles (4s @ 3.3V)
WD_8KCLK_gc = 0x0A<<0 ; 8K cycles (8s @ 3.3V)

; Start-up Time
SUT_0MS_gc = 0x03<<2 ; 0 ms
SUT_4MS_gc = 0x01<<2 ; 4 ms
SUT_64MS_gc = 0x00<<2 ; 64 ms

; Brown Out Detection Voltage Level
BODLVL_1V6_gc = 0x07<<0 ; 1.6 V
BODLVL_1V8_gc = 0x06<<0 ; 1.8 V
BODLVL_2V0_gc = 0x05<<0 ; 2.0 V
BODLVL_2V2_gc = 0x04<<0 ; 2.2 V
BODLVL_2V4_gc = 0x03<<0 ; 2.4 V
BODLVL_2V6_gc = 0x02<<0 ; 2.6 V
BODLVL_2V8_gc = 0x01<<0 ; 2.8 V
BODLVL_3V0_gc = 0x00<<0 ; 3.0 V


;*************************************************************************
;** SIGROW - Signature Row
;*************************************************************************




; ***** CPU REGISTER DEFINITIONS *****************************************
XH	.DE r27
XL	.DE r26
YH	.DE r29
YL	.DE r28
ZH	.DE r31
ZL	.DE r30


; ***** DATA MEMORY DECLARATIONS *****************************************


PROGMEM_START   =   0x0000
PROGMEM_SIZE    =   0x5000
PROGMEM_END     =   0x0000+0x5000-1

APP_SECTION_START   =   0x0000
APP_SECTION_SIZE    =   0x4000
APP_SECTION_END     =   0x0000+0x4000-1

APPTABLE_SECTION_START  =   0x3000
APPTABLE_SECTION_SIZE   =   0x1000
APPTABLE_SECTION_END    =   0x3000+0x1000-1

BOOT_SECTION_START      =   0x4000
BOOT_SECTION_SIZE       =   0x1000
BOOT_SECTION_END        =   0x4000+0x1000-1

DATAMEM_START   =   0x0000
DATAMEM_SIZE    =   0x2800
DATAMEM_END     =   0x0000+0x2800-1

IO_START    =   0x0000
IO_SIZE     =   0x1000
IO_END      =   0x0000+0x1000-1

MAPPED_EEPROM_START     =   0x1000
MAPPED_EEPROM_SIZE      =   0x0200
MAPPED_EEPROM_END       =   0x1000+0x0200-1

INTERNAL_SRAM_START     =   0x2000
INTERNAL_SRAM_SIZE      =   0x0800
INTERNAL_SRAM_END       =   0x2000+0x0800-1

EEPROM_START    =   0x0000
EEPROM_SIZE     =   0x0200
EEPROM_END      =   0x0000+0x0200-1

SIGNATURES_START    =   0x0000
SIGNATURES_SIZE     =   0x0003
SIGNATURES_END      =   0x0000+0x0003-1

FUSES_START     =   0x0000
FUSES_SIZE      =   0x0006
FUSES_END       =   0x0000+0x0006-1

LOCKBITS_START  =   0x0000
LOCKBITS_SIZE   =   0x0001
LOCKBITS_END    =   0x0000+0x0001-1

USER_SIGNATURES_START   =   0x0000
USER_SIGNATURES_SIZE    =   0x0080
USER_SIGNATURES_END     =   0x0000+0x0080-1

PROD_SIGNATURES_START   =   0x0000
PROD_SIGNATURES_SIZE    =   0x0034
PROD_SIGNATURES_END     =   0x0000+0x0034-1


; Legacy definitions
FLASHSTART	= PROGMEM_START/2 ; Note: Word address
FLASHEND	= PROGMEM_END/2 ; Note: Word address
IOEND		= IO_END
SRAM_START	= INTERNAL_SRAM_START
SRAM_SIZE	= INTERNAL_SRAM_SIZE
RAMEND		= INTERNAL_SRAM_END
E2END		= EEPROM_END
EEPROMEND	= EEPROM_END


; Definitions used by the assembler

; ***** INTERRUPT VECTORS, ABSOLUTE ADDRESSES ****************************

; OSC interrupt vectors
OSC_OSCF_vect = 2 ; Oscillator Failure Interrupt (NMI)

; PORTR interrupt vectors
PORTR_INT_vect = 4 ; External Interrupt

; EDMA interrupt vectors
EDMA_CH0_vect = 6 ; EDMA Channel 0 Interrupt
EDMA_CH1_vect = 8 ; EDMA Channel 1 Interrupt
EDMA_CH2_vect = 10 ; EDMA Channel 2 Interrupt
EDMA_CH3_vect = 12 ; EDMA Channel 3 Interrupt

; RTC interrupt vectors
RTC_OVF_vect = 14 ; Overflow Interrupt
RTC_COMP_vect = 16 ; Compare Interrupt

; PORTC interrupt vectors
PORTC_INT_vect = 18 ; External Interrupt

; TWIC interrupt vectors
TWIC_TWIS_vect = 20 ; TWI Slave Interrupt
TWIC_TWIM_vect = 22 ; TWI Master Interrupt

; TCC4 interrupt vectors
TCC4_OVF_vect = 24 ; Overflow Interrupt
TCC4_ERR_vect = 26 ; Error Interrupt
TCC4_CCA_vect = 28 ; Channel A Compare or Capture Interrupt
TCC4_CCB_vect = 30 ; Channel B Compare or Capture Interrupt
TCC4_CCC_vect = 32 ; Channel C Compare or Capture Interrupt
TCC4_CCD_vect = 34 ; Channel D Compare or Capture Interrupt

; TCC5 interrupt vectors
TCC5_OVF_vect = 36 ; Overflow Interrupt
TCC5_ERR_vect = 38 ; Error Interrupt
TCC5_CCA_vect = 40 ; Channel A Compare or Capture Interrupt
TCC5_CCB_vect = 42 ; Channel B Compare or Capture Interrupt

; SPIC interrupt vectors
SPIC_INT_vect = 44 ; SPI Interrupt

; USARTC0 interrupt vectors
USARTC0_RXC_vect = 46 ; Reception Complete Interrupt
USARTC0_DRE_vect = 48 ; Data Register Empty Interrupt
USARTC0_TXC_vect = 50 ; Transmission Complete Interrupt

; NVM interrupt vectors
NVM_EE_vect = 52 ; EE Interrupt
NVM_SPM_vect = 54 ; SPM Interrupt

; XCL interrupt vectors
XCL_UNF_vect = 56 ; Timer/Counter Underflow Interrupt
XCL_CC_vect = 58 ; Timer/Counter Compare or Capture Interrupt

; PORTA interrupt vectors
PORTA_INT_vect = 60 ; External Interrupt

; ACA interrupt vectors
ACA_AC0_vect = 62 ; AC0 Interrupt
ACA_AC1_vect = 64 ; AC1 Interrupt
ACA_ACW_vect = 66 ; ACW Window Mode Interrupt

; ADCA interrupt vectors
ADCA_CH0_vect = 68 ; ADC Channel Interrupt

; PORTD interrupt vectors
PORTD_INT_vect = 70 ; External Interrupt

; TCD5 interrupt vectors
TCD5_OVF_vect = 72 ; Overflow Interrupt
TCD5_ERR_vect = 74 ; Error Interrupt
TCD5_CCA_vect = 76 ; Channel A Compare or Capture Interrupt
TCD5_CCB_vect = 78 ; Channel B Compare or Capture Interrupt

; USARTD0 interrupt vectors
USARTD0_RXC_vect = 80 ; Reception Complete Interrupt
USARTD0_DRE_vect = 82 ; Data Register Empty Interrupt
USARTD0_TXC_vect = 84 ; Transmission Complete Interrupt



; ***** INTERRUPT VECTORS, MODULE BASES **********************************

OSC_vbase = 2
PORTR_vbase = 4
EDMA_vbase = 6
RTC_vbase = 14
PORTC_vbase = 18
TWIC_vbase = 20
TCC4_vbase = 24
TCC5_vbase = 36
SPIC_vbase = 44
USARTC0_vbase = 46
NVM_vbase = 52
XCL_vbase = 56
PORTA_vbase = 60
ACA_vbase = 62
ADCA_vbase = 68
PORTD_vbase = 70
TCD5_vbase = 72
USARTD0_vbase = 80


; ***** INTERRUPT VECTORS, VECTOR OFFSETS ********************************

; OSC interrupt vector offsets

OSC_OSCF_voffset = 0

; PORTR interrupt vector offsets

PORTR_INT_voffset = 0

; EDMA interrupt vector offsets

EDMA_CH0_voffset = 0
EDMA_CH1_voffset = 2
EDMA_CH2_voffset = 4
EDMA_CH3_voffset = 6

; RTC interrupt vector offsets

RTC_OVF_voffset = 0
RTC_COMP_voffset = 2

; PORTC interrupt vector offsets

PORTC_INT_voffset = 0

; TWIC interrupt vector offsets

TWIC_TWIS_voffset = 0
TWIC_TWIM_voffset = 2

; TCC4 interrupt vector offsets

TCC4_OVF_voffset = 0
TCC4_ERR_voffset = 2
TCC4_CCA_voffset = 4
TCC4_CCB_voffset = 6
TCC4_CCC_voffset = 8
TCC4_CCD_voffset = 10

; TCC5 interrupt vector offsets

TCC5_OVF_voffset = 0
TCC5_ERR_voffset = 2
TCC5_CCA_voffset = 4
TCC5_CCB_voffset = 6

; SPIC interrupt vector offsets

SPIC_INT_voffset = 0

; USARTC0 interrupt vector offsets

USARTC0_RXC_voffset = 0
USARTC0_DRE_voffset = 2
USARTC0_TXC_voffset = 4

; NVM interrupt vector offsets

NVM_EE_voffset = 0
NVM_SPM_voffset = 2

; XCL interrupt vector offsets

XCL_UNF_voffset = 0
XCL_CC_voffset = 2

; PORTA interrupt vector offsets

PORTA_INT_voffset = 0

; ACA interrupt vector offsets

ACA_AC0_voffset = 0
ACA_AC1_voffset = 2
ACA_ACW_voffset = 4

; ADCA interrupt vector offsets

ADCA_CH0_voffset = 0

; PORTD interrupt vector offsets

PORTD_INT_voffset = 0

; TCD5 interrupt vector offsets

TCD5_OVF_voffset = 0
TCD5_ERR_voffset = 2
TCD5_CCA_voffset = 4
TCD5_CCB_voffset = 6

; USARTD0 interrupt vector offsets

USARTD0_RXC_voffset = 0
USARTD0_DRE_voffset = 2
USARTD0_TXC_voffset = 4



INT_VECTORS_SIZE = 86 ; size in words



; ***** END OF FILE ******************************************************



