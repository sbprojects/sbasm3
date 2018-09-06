;*************************************************************************
;* A P P L I C A T I O N   N O T E   F O R   T H E   A V R   F A M I L Y
;*
;* Number            : AVR000
;* File Name         : ATxmega128B3def.inc
;* Title             : Register/Bit Definitions for the ATxmega128B3
;* Date              : Jan 01 2008
;* Version           : 1.00
;* Support E-mail    : avr@atmel.com
;* Target MCU        : ATxmega128B3
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
; device ATxmega128B3

SIGNATURE_000 = 0x1E
SIGNATURE_001 = 0x97
SIGNATURE_002 = 0x4B

                .CR     avr
                .FA     xmega
				.MS		$11000

; ***** ABSOLUTE I/O REGISTER LOCATIONS **********************************


;***************************************************************************
;** GPIO - General Purpose IO Registers
;***************************************************************************

GPIO_GPIOR0 = 0		// General Purpose IO Register 0
GPIO_GPIOR1 = 1		// General Purpose IO Register 1
GPIO_GPIOR2 = 2		// General Purpose IO Register 2
GPIO_GPIOR3 = 3		// General Purpose IO Register 3

;***************************************************************************
;** VPORT0 - Virtual Port 0
;***************************************************************************

VPORT0_DIR = 16		// I/O Port Data Direction
VPORT0_OUT = 17		// I/O Port Output
VPORT0_IN = 18		// I/O Port Input
VPORT0_INTFLAGS = 19		// Interrupt Flag Register

;***************************************************************************
;** VPORT1 - Virtual Port 1
;***************************************************************************

VPORT1_DIR = 20		// I/O Port Data Direction
VPORT1_OUT = 21		// I/O Port Output
VPORT1_IN = 22		// I/O Port Input
VPORT1_INTFLAGS = 23		// Interrupt Flag Register

;***************************************************************************
;** VPORT2 - Virtual Port 2
;***************************************************************************

VPORT2_DIR = 24		// I/O Port Data Direction
VPORT2_OUT = 25		// I/O Port Output
VPORT2_IN = 26		// I/O Port Input
VPORT2_INTFLAGS = 27		// Interrupt Flag Register

;***************************************************************************
;** VPORT3 - Virtual Port 3
;***************************************************************************

VPORT3_DIR = 28		// I/O Port Data Direction
VPORT3_OUT = 29		// I/O Port Output
VPORT3_IN = 30		// I/O Port Input
VPORT3_INTFLAGS = 31		// Interrupt Flag Register

;***************************************************************************
;** OCD - On-Chip Debug System
;***************************************************************************

OCD_OCDR0 = 46		// OCD Register 0
OCD_OCDR1 = 47		// OCD Register 1

;***************************************************************************
;** CPU - CPU Registers
;***************************************************************************

CPU_CCP = 52		// Configuration Change Protection
CPU_RAMPD = 56		// Ramp D
CPU_RAMPX = 57		// Ramp X
CPU_RAMPY = 58		// Ramp Y
CPU_RAMPZ = 59		// Ramp Z
CPU_EIND = 60		// Extended Indirect Jump
CPU_SPL = 61		// Stack Pointer Low
CPU_SPH = 62		// Stack Pointer High
CPU_SREG = 63		// Status Register

;***************************************************************************
;** CLK - Clock System
;***************************************************************************

CLK_CTRL = 64		// Control Register
CLK_PSCTRL = 65		// Prescaler Control Register
CLK_LOCK = 66		// Lock register
CLK_RTCCTRL = 67		// RTC Control Register
CLK_USBCTRL = 68		// USB Control Register

;***************************************************************************
;** SLEEP - Sleep Controller
;***************************************************************************

SLEEP_CTRL = 72		// Control Register

;***************************************************************************
;** OSC - Oscillator Control
;***************************************************************************

OSC_CTRL = 80		// Control Register
OSC_STATUS = 81		// Status Register
OSC_XOSCCTRL = 82		// External Oscillator Control Register
OSC_XOSCFAIL = 83		// Oscillator Failure Detection Register
OSC_RC32KCAL = 84		// 32.768 kHz Internal Oscillator Calibration Register
OSC_PLLCTRL = 85		// PLL Control Register
OSC_DFLLCTRL = 86		// DFLL Control Register

;***************************************************************************
;** DFLLRC32M - DFLL for 32MHz RC Oscillator
;***************************************************************************

DFLLRC32M_CTRL = 96		// Control Register
DFLLRC32M_CALA = 98		// Calibration Register A
DFLLRC32M_CALB = 99		// Calibration Register B
DFLLRC32M_COMP0 = 100		// Oscillator Compare Register 0
DFLLRC32M_COMP1 = 101		// Oscillator Compare Register 1
DFLLRC32M_COMP2 = 102		// Oscillator Compare Register 2

;***************************************************************************
;** DFLLRC2M - DFLL for 2MHz RC Oscillator
;***************************************************************************

DFLLRC2M_CTRL = 104		// Control Register
DFLLRC2M_CALA = 106		// Calibration Register A
DFLLRC2M_CALB = 107		// Calibration Register B
DFLLRC2M_COMP0 = 108		// Oscillator Compare Register 0
DFLLRC2M_COMP1 = 109		// Oscillator Compare Register 1
DFLLRC2M_COMP2 = 110		// Oscillator Compare Register 2

;***************************************************************************
;** PR - Power Reduction
;***************************************************************************

PR_PRGEN = 112		// General Power Reduction
PR_PRPA = 113		// Power Reduction Port A
PR_PRPB = 114		// Power Reduction Port B
PR_PRPC = 115		// Power Reduction Port C
PR_PRPE = 117		// Power Reduction Port E

;***************************************************************************
;** RST - Reset Controller
;***************************************************************************

RST_STATUS = 120		// Status Register
RST_CTRL = 121		// Control Register

;***************************************************************************
;** WDT - Watch-Dog Timer
;***************************************************************************

WDT_CTRL = 128		// Control
WDT_WINCTRL = 129		// Windowed Mode Control
WDT_STATUS = 130		// Status

;***************************************************************************
;** MCU - MCU Control
;***************************************************************************

MCU_DEVID0 = 144		// Device ID byte 0
MCU_DEVID1 = 145		// Device ID byte 1
MCU_DEVID2 = 146		// Device ID byte 2
MCU_REVID = 147		// Revision ID
MCU_JTAGUID = 148		// JTAG User ID
MCU_MCUCR = 150		// MCU Control
MCU_ANAINIT = 151		// Analog Startup Delay
MCU_EVSYSLOCK = 152		// Event System Lock
MCU_AWEXLOCK = 153		// AWEX Lock

;***************************************************************************
;** PMIC - Programmable Interrupt Controller
;***************************************************************************

PMIC_STATUS = 160		// Status Register
PMIC_INTPRI = 161		// Interrupt Priority
PMIC_CTRL = 162		// Control Register

;***************************************************************************
;** PORTCFG - Port Configuration
;***************************************************************************

PORTCFG_MPCMASK = 176		// Multi-pin Configuration Mask
PORTCFG_VPCTRLA = 178		// Virtual Port Control Register A
PORTCFG_VPCTRLB = 179		// Virtual Port Control Register B
PORTCFG_CLKEVOUT = 180		// Clock and Event Out Register
PORTCFG_EVOUTSEL = 182		// Event Output Select

;***************************************************************************
;** AES - AES Crypto Module
;***************************************************************************

AES_CTRL = 192		// AES Control Register
AES_STATUS = 193		// AES Status Register
AES_STATE = 194		// AES State Register
AES_KEY = 195		// AES Key Register
AES_INTCTRL = 196		// AES Interrupt Control Register

;***************************************************************************
;** CRC - CRC Module
;***************************************************************************

CRC_CTRL = 208		// Control Register
CRC_STATUS = 209		// Status Register
CRC_DATAIN = 211		// Data Input
CRC_CHECKSUM0 = 212		// Checksum byte 0
CRC_CHECKSUM1 = 213		// Checksum byte 1
CRC_CHECKSUM2 = 214		// Checksum byte 2
CRC_CHECKSUM3 = 215		// Checksum byte 3

;***************************************************************************
;** DMA - DMA Controller
;***************************************************************************

DMA_CTRL = 256		// Control
DMA_INTFLAGS = 259		// Transfer Interrupt Status
DMA_STATUS = 260		// Status
DMA_TEMP = 262		// Temporary Register For 16-bit Access
DMA_CH0_CTRLA = 272		// Channel Control
DMA_CH0_CTRLB = 273		// Channel Control
DMA_CH0_ADDRCTRL = 274		// Address Control
DMA_CH0_TRIGSRC = 275		// Channel Trigger Source
DMA_CH0_TRFCNT = 276		// Channel Block Transfer Count
DMA_CH0_REPCNT = 278		// Channel Repeat Count
DMA_CH0_SRCADDR0 = 280		// Channel Source Address 0
DMA_CH0_SRCADDR1 = 281		// Channel Source Address 1
DMA_CH0_DESTADDR0 = 284		// Channel Destination Address 0
DMA_CH0_DESTADDR1 = 285		// Channel Destination Address 1
DMA_CH1_CTRLA = 288		// Channel Control
DMA_CH1_CTRLB = 289		// Channel Control
DMA_CH1_ADDRCTRL = 290		// Address Control
DMA_CH1_TRIGSRC = 291		// Channel Trigger Source
DMA_CH1_TRFCNT = 292		// Channel Block Transfer Count
DMA_CH1_REPCNT = 294		// Channel Repeat Count
DMA_CH1_SRCADDR0 = 296		// Channel Source Address 0
DMA_CH1_SRCADDR1 = 297		// Channel Source Address 1
DMA_CH1_DESTADDR0 = 300		// Channel Destination Address 0
DMA_CH1_DESTADDR1 = 301		// Channel Destination Address 1

;***************************************************************************
;** EVSYS - Event System
;***************************************************************************

EVSYS_CH0MUX = 384		// Event Channel 0 Multiplexer
EVSYS_CH1MUX = 385		// Event Channel 1 Multiplexer
EVSYS_CH2MUX = 386		// Event Channel 2 Multiplexer
EVSYS_CH3MUX = 387		// Event Channel 3 Multiplexer
EVSYS_CH0CTRL = 392		// Channel 0 Control Register
EVSYS_CH1CTRL = 393		// Channel 1 Control Register
EVSYS_CH2CTRL = 394		// Channel 2 Control Register
EVSYS_CH3CTRL = 395		// Channel 3 Control Register
EVSYS_STROBE = 400		// Event Strobe
EVSYS_DATA = 401		// Event Data

;***************************************************************************
;** NVM - Non Volatile Memory
;***************************************************************************

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

;***************************************************************************
;** ADCB - Analog to Digital Converter B
;***************************************************************************

ADCB_CTRLA = 576		// Control Register A
ADCB_CTRLB = 577		// Control Register B
ADCB_REFCTRL = 578		// Reference Control
ADCB_EVCTRL = 579		// Event Control
ADCB_PRESCALER = 580		// Clock Prescaler
ADCB_INTFLAGS = 582		// Interrupt Flags
ADCB_TEMP = 583		// Temporary Register
ADCB_SAMPCTRL = 584		// ADC Sampling Time Control Register
ADCB_CAL = 588		// Calibration Value
ADCB_CH0RES = 592		// Channel 0 Result
ADCB_CMP = 600		// Compare Value
ADCB_CH0_CTRL = 608		// Control Register
ADCB_CH0_MUXCTRL = 609		// MUX Control
ADCB_CH0_INTCTRL = 610		// Channel Interrupt Control Register
ADCB_CH0_INTFLAGS = 611		// Interrupt Flags
ADCB_CH0_RES = 612		// Channel Result
ADCB_CH0_SCAN = 614		// Input Channel Scan

;***************************************************************************
;** ACB - Analog Comparator B
;***************************************************************************

ACB_AC0CTRL = 912		// Analog Comparator 0 Control
ACB_AC1CTRL = 913		// Analog Comparator 1 Control
ACB_AC0MUXCTRL = 914		// Analog Comparator 0 MUX Control
ACB_AC1MUXCTRL = 915		// Analog Comparator 1 MUX Control
ACB_CTRLA = 916		// Control Register A
ACB_CTRLB = 917		// Control Register B
ACB_WINCTRL = 918		// Window Mode Control
ACB_STATUS = 919		// Status
ACB_CURRCTRL = 920		// Current Source Control Register
ACB_CURRCALIB = 921		// Current Source Calibration Register

;***************************************************************************
;** RTC - Real-Time Counter
;***************************************************************************

RTC_CTRL = 1024		// Control Register
RTC_STATUS = 1025		// Status Register
RTC_INTCTRL = 1026		// Interrupt Control Register
RTC_INTFLAGS = 1027		// Interrupt Flags
RTC_TEMP = 1028		// Temporary register
RTC_CNT = 1032		// Count Register
RTC_PER = 1034		// Period Register
RTC_COMP = 1036		// Compare Register

;***************************************************************************
;** TWIC - Two-Wire Interface C
;***************************************************************************

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

;***************************************************************************
;** USB - Universal Serial Bus Module
;***************************************************************************

USB_CTRLA = 1216		// Control Register A
USB_CTRLB = 1217		// Control Register B
USB_STATUS = 1218		// Status Register
USB_ADDR = 1219		// Address Register
USB_FIFOWP = 1220		// FIFO Write Pointer Register
USB_FIFORP = 1221		// FIFO Read Pointer Register
USB_EPPTR = 1222		// Endpoint Configuration Table Pointer
USB_INTCTRLA = 1224		// Interrupt Control Register A
USB_INTCTRLB = 1225		// Interrupt Control Register B
USB_INTFLAGSACLR = 1226		// Clear Interrupt Flag Register A
USB_INTFLAGSASET = 1227		// Set Interrupt Flag Register A
USB_INTFLAGSBCLR = 1228		// Clear Interrupt Flag Register B
USB_INTFLAGSBSET = 1229		// Set Interrupt Flag Register B
USB_CAL0 = 1274		// Calibration Byte 0
USB_CAL1 = 1275		// Calibration Byte 1

;***************************************************************************
;** PORTB - I/O Port B
;***************************************************************************

PORTB_DIR = 1568		// I/O Port Data Direction
PORTB_DIRSET = 1569		// I/O Port Data Direction Set
PORTB_DIRCLR = 1570		// I/O Port Data Direction Clear
PORTB_DIRTGL = 1571		// I/O Port Data Direction Toggle
PORTB_OUT = 1572		// I/O Port Output
PORTB_OUTSET = 1573		// I/O Port Output Set
PORTB_OUTCLR = 1574		// I/O Port Output Clear
PORTB_OUTTGL = 1575		// I/O Port Output Toggle
PORTB_IN = 1576		// I/O port Input
PORTB_INTCTRL = 1577		// Interrupt Control Register
PORTB_INT0MASK = 1578		// Port Interrupt 0 Mask
PORTB_INT1MASK = 1579		// Port Interrupt 1 Mask
PORTB_INTFLAGS = 1580		// Interrupt Flag Register
PORTB_REMAP = 1582		// I/O Port Pin Remap Register
PORTB_PIN0CTRL = 1584		// Pin 0 Control Register
PORTB_PIN1CTRL = 1585		// Pin 1 Control Register
PORTB_PIN2CTRL = 1586		// Pin 2 Control Register
PORTB_PIN3CTRL = 1587		// Pin 3 Control Register
PORTB_PIN4CTRL = 1588		// Pin 4 Control Register
PORTB_PIN5CTRL = 1589		// Pin 5 Control Register
PORTB_PIN6CTRL = 1590		// Pin 6 Control Register
PORTB_PIN7CTRL = 1591		// Pin 7 Control Register

;***************************************************************************
;** PORTC - I/O Port C
;***************************************************************************

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
PORTC_INT0MASK = 1610		// Port Interrupt 0 Mask
PORTC_INT1MASK = 1611		// Port Interrupt 1 Mask
PORTC_INTFLAGS = 1612		// Interrupt Flag Register
PORTC_REMAP = 1614		// I/O Port Pin Remap Register
PORTC_PIN0CTRL = 1616		// Pin 0 Control Register
PORTC_PIN1CTRL = 1617		// Pin 1 Control Register
PORTC_PIN2CTRL = 1618		// Pin 2 Control Register
PORTC_PIN3CTRL = 1619		// Pin 3 Control Register
PORTC_PIN4CTRL = 1620		// Pin 4 Control Register
PORTC_PIN5CTRL = 1621		// Pin 5 Control Register
PORTC_PIN6CTRL = 1622		// Pin 6 Control Register
PORTC_PIN7CTRL = 1623		// Pin 7 Control Register

;***************************************************************************
;** PORTD - I/O Port D
;***************************************************************************

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
PORTD_INT0MASK = 1642		// Port Interrupt 0 Mask
PORTD_INT1MASK = 1643		// Port Interrupt 1 Mask
PORTD_INTFLAGS = 1644		// Interrupt Flag Register
PORTD_REMAP = 1646		// I/O Port Pin Remap Register
PORTD_PIN0CTRL = 1648		// Pin 0 Control Register
PORTD_PIN1CTRL = 1649		// Pin 1 Control Register
PORTD_PIN2CTRL = 1650		// Pin 2 Control Register
PORTD_PIN3CTRL = 1651		// Pin 3 Control Register
PORTD_PIN4CTRL = 1652		// Pin 4 Control Register
PORTD_PIN5CTRL = 1653		// Pin 5 Control Register
PORTD_PIN6CTRL = 1654		// Pin 6 Control Register
PORTD_PIN7CTRL = 1655		// Pin 7 Control Register

;***************************************************************************
;** PORTG - I/O Port G
;***************************************************************************

PORTG_DIR = 1728		// I/O Port Data Direction
PORTG_DIRSET = 1729		// I/O Port Data Direction Set
PORTG_DIRCLR = 1730		// I/O Port Data Direction Clear
PORTG_DIRTGL = 1731		// I/O Port Data Direction Toggle
PORTG_OUT = 1732		// I/O Port Output
PORTG_OUTSET = 1733		// I/O Port Output Set
PORTG_OUTCLR = 1734		// I/O Port Output Clear
PORTG_OUTTGL = 1735		// I/O Port Output Toggle
PORTG_IN = 1736		// I/O port Input
PORTG_INTCTRL = 1737		// Interrupt Control Register
PORTG_INT0MASK = 1738		// Port Interrupt 0 Mask
PORTG_INT1MASK = 1739		// Port Interrupt 1 Mask
PORTG_INTFLAGS = 1740		// Interrupt Flag Register
PORTG_REMAP = 1742		// I/O Port Pin Remap Register
PORTG_PIN0CTRL = 1744		// Pin 0 Control Register
PORTG_PIN1CTRL = 1745		// Pin 1 Control Register
PORTG_PIN2CTRL = 1746		// Pin 2 Control Register
PORTG_PIN3CTRL = 1747		// Pin 3 Control Register
PORTG_PIN4CTRL = 1748		// Pin 4 Control Register
PORTG_PIN5CTRL = 1749		// Pin 5 Control Register
PORTG_PIN6CTRL = 1750		// Pin 6 Control Register
PORTG_PIN7CTRL = 1751		// Pin 7 Control Register

;***************************************************************************
;** PORTM - I/O Port M
;***************************************************************************

PORTM_DIR = 1888		// I/O Port Data Direction
PORTM_DIRSET = 1889		// I/O Port Data Direction Set
PORTM_DIRCLR = 1890		// I/O Port Data Direction Clear
PORTM_DIRTGL = 1891		// I/O Port Data Direction Toggle
PORTM_OUT = 1892		// I/O Port Output
PORTM_OUTSET = 1893		// I/O Port Output Set
PORTM_OUTCLR = 1894		// I/O Port Output Clear
PORTM_OUTTGL = 1895		// I/O Port Output Toggle
PORTM_IN = 1896		// I/O port Input
PORTM_INTCTRL = 1897		// Interrupt Control Register
PORTM_INT0MASK = 1898		// Port Interrupt 0 Mask
PORTM_INT1MASK = 1899		// Port Interrupt 1 Mask
PORTM_INTFLAGS = 1900		// Interrupt Flag Register
PORTM_REMAP = 1902		// I/O Port Pin Remap Register
PORTM_PIN0CTRL = 1904		// Pin 0 Control Register
PORTM_PIN1CTRL = 1905		// Pin 1 Control Register
PORTM_PIN2CTRL = 1906		// Pin 2 Control Register
PORTM_PIN3CTRL = 1907		// Pin 3 Control Register
PORTM_PIN4CTRL = 1908		// Pin 4 Control Register
PORTM_PIN5CTRL = 1909		// Pin 5 Control Register
PORTM_PIN6CTRL = 1910		// Pin 6 Control Register
PORTM_PIN7CTRL = 1911		// Pin 7 Control Register

;***************************************************************************
;** PORTR - I/O Port R
;***************************************************************************

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
PORTR_INT0MASK = 2026		// Port Interrupt 0 Mask
PORTR_INT1MASK = 2027		// Port Interrupt 1 Mask
PORTR_INTFLAGS = 2028		// Interrupt Flag Register
PORTR_REMAP = 2030		// I/O Port Pin Remap Register
PORTR_PIN0CTRL = 2032		// Pin 0 Control Register
PORTR_PIN1CTRL = 2033		// Pin 1 Control Register
PORTR_PIN2CTRL = 2034		// Pin 2 Control Register
PORTR_PIN3CTRL = 2035		// Pin 3 Control Register
PORTR_PIN4CTRL = 2036		// Pin 4 Control Register
PORTR_PIN5CTRL = 2037		// Pin 5 Control Register
PORTR_PIN6CTRL = 2038		// Pin 6 Control Register
PORTR_PIN7CTRL = 2039		// Pin 7 Control Register

;***************************************************************************
;** TCC0 - Timer/Counter C0
;***************************************************************************

TCC0_CTRLA = 2048		// Control  Register A
TCC0_CTRLB = 2049		// Control Register B
TCC0_CTRLC = 2050		// Control register C
TCC0_CTRLD = 2051		// Control Register D
TCC0_CTRLE = 2052		// Control Register E
TCC0_INTCTRLA = 2054		// Interrupt Control Register A
TCC0_INTCTRLB = 2055		// Interrupt Control Register B
TCC0_CTRLFCLR = 2056		// Control Register F Clear
TCC0_CTRLFSET = 2057		// Control Register F Set
TCC0_CTRLGCLR = 2058		// Control Register G Clear
TCC0_CTRLGSET = 2059		// Control Register G Set
TCC0_INTFLAGS = 2060		// Interrupt Flag Register
TCC0_TEMP = 2063		// Temporary Register For 16-bit Access
TCC0_CNT = 2080		// Count
TCC0_PER = 2086		// Period
TCC0_CCA = 2088		// Compare or Capture A
TCC0_CCB = 2090		// Compare or Capture B
TCC0_CCC = 2092		// Compare or Capture C
TCC0_CCD = 2094		// Compare or Capture D
TCC0_PERBUF = 2102		// Period Buffer
TCC0_CCABUF = 2104		// Compare Or Capture A Buffer
TCC0_CCBBUF = 2106		// Compare Or Capture B Buffer
TCC0_CCCBUF = 2108		// Compare Or Capture C Buffer
TCC0_CCDBUF = 2110		// Compare Or Capture D Buffer

;***************************************************************************
;** TCC1 - Timer/Counter C1
;***************************************************************************

TCC1_CTRLA = 2112		// Control  Register A
TCC1_CTRLB = 2113		// Control Register B
TCC1_CTRLC = 2114		// Control register C
TCC1_CTRLD = 2115		// Control Register D
TCC1_CTRLE = 2116		// Control Register E
TCC1_INTCTRLA = 2118		// Interrupt Control Register A
TCC1_INTCTRLB = 2119		// Interrupt Control Register B
TCC1_CTRLFCLR = 2120		// Control Register F Clear
TCC1_CTRLFSET = 2121		// Control Register F Set
TCC1_CTRLGCLR = 2122		// Control Register G Clear
TCC1_CTRLGSET = 2123		// Control Register G Set
TCC1_INTFLAGS = 2124		// Interrupt Flag Register
TCC1_TEMP = 2127		// Temporary Register For 16-bit Access
TCC1_CNT = 2144		// Count
TCC1_PER = 2150		// Period
TCC1_CCA = 2152		// Compare or Capture A
TCC1_CCB = 2154		// Compare or Capture B
TCC1_PERBUF = 2166		// Period Buffer
TCC1_CCABUF = 2168		// Compare Or Capture A Buffer
TCC1_CCBBUF = 2170		// Compare Or Capture B Buffer

;***************************************************************************
;** AWEXC - Advanced Waveform Extension C
;***************************************************************************

AWEXC_CTRL = 2176		// Control Register
AWEXC_FDEMASK = 2178		// Fault Detection Event Mask
AWEXC_FDCTRL = 2179		// Fault Detection Control Register
AWEXC_STATUS = 2180		// Status Register
AWEXC_STATUSSET = 2181		// Status Set Register
AWEXC_DTBOTH = 2182		// Dead Time Both Sides
AWEXC_DTBOTHBUF = 2183		// Dead Time Both Sides Buffer
AWEXC_DTLS = 2184		// Dead Time Low Side
AWEXC_DTHS = 2185		// Dead Time High Side
AWEXC_DTLSBUF = 2186		// Dead Time Low Side Buffer
AWEXC_DTHSBUF = 2187		// Dead Time High Side Buffer
AWEXC_OUTOVEN = 2188		// Output Override Enable

;***************************************************************************
;** HIRESC - High-Resolution Extension C
;***************************************************************************

HIRESC_CTRLA = 2192		// Control Register

;***************************************************************************
;** USARTC0 - Universal Asynchronous Receiver-Transmitter C0
;***************************************************************************

USARTC0_DATA = 2208		// Data Register
USARTC0_STATUS = 2209		// Status Register
USARTC0_CTRLA = 2211		// Control Register A
USARTC0_CTRLB = 2212		// Control Register B
USARTC0_CTRLC = 2213		// Control Register C
USARTC0_BAUDCTRLA = 2214		// Baud Rate Control Register A
USARTC0_BAUDCTRLB = 2215		// Baud Rate Control Register B

;***************************************************************************
;** SPIC - Serial Peripheral Interface C
;***************************************************************************

SPIC_CTRL = 2240		// Control Register
SPIC_INTCTRL = 2241		// Interrupt Control Register
SPIC_STATUS = 2242		// Status Register
SPIC_DATA = 2243		// Data Register

;***************************************************************************
;** IRCOM - IR Communication Module
;***************************************************************************

IRCOM_CTRL = 2296		// Control Register
IRCOM_TXPLCTRL = 2297		// IrDA Transmitter Pulse Length Control Register
IRCOM_RXPLCTRL = 2298		// IrDA Receiver Pulse Length Control Register

;***************************************************************************
;** LCD - LCD Controller
;***************************************************************************

LCD_CTRLA = 3328		// Control Register A
LCD_CTRLB = 3329		// Control Register B
LCD_CTRLC = 3330		// Control Register C
LCD_INTCTRL = 3331		// Interrupt Enable Register
LCD_INTFLAG = 3332		// Interrupt Flag Register
LCD_CTRLD = 3333		// Control Register D
LCD_CTRLE = 3334		// Control Register E
LCD_CTRLF = 3335		// Control Register F
LCD_CTRLG = 3336		// Control Register G
LCD_CTRLH = 3337		// Control Register H
LCD_DATA0 = 3344		// LCD Data Register 0
LCD_DATA1 = 3345		// LCD Data Register 1
LCD_DATA2 = 3346		// LCD Data Register 2
LCD_DATA3 = 3347		// LCD Data Register 3
LCD_DATA4 = 3348		// LCD Data Register 4
LCD_DATA5 = 3349		// LCD Data Register 5
LCD_DATA6 = 3350		// LCD Data Register 6
LCD_DATA7 = 3351		// LCD Data Register 7
LCD_DATA8 = 3352		// LCD Data Register 8
LCD_DATA9 = 3353		// LCD Data Register 9
LCD_DATA10 = 3354		// LCD Data Register 10
LCD_DATA11 = 3355		// LCD Data Register 11
LCD_DATA12 = 3356		// LCD Data Register 12
LCD_DATA13 = 3357		// LCD Data Register 13
LCD_DATA14 = 3358		// LCD Data Register 14
LCD_DATA15 = 3359		// LCD Data Register 15
LCD_DATA16 = 3360		// LCD Data Register 16
LCD_DATA17 = 3361		// LCD Data Register 17
LCD_DATA18 = 3362		// LCD Data Register 18
LCD_DATA19 = 3363		// LCD Data Register 19


; ***** ALL MODULE BASE ADRESSES *****************************************

GPIO_base = 0x0000		// General Purpose IO Registers
VPORT0_base = 0x0010		// Virtual Port 0
VPORT1_base = 0x0014		// Virtual Port 1
VPORT2_base = 0x0018		// Virtual Port 2
VPORT3_base = 0x001C		// Virtual Port 3
OCD_base = 0x002E		// On-Chip Debug System
CPU_base = 0x0030		// CPU Registers
CLK_base = 0x0040		// Clock System
SLEEP_base = 0x0048		// Sleep Controller
OSC_base = 0x0050		// Oscillator Control
DFLLRC32M_base = 0x0060		// DFLL for 32MHz RC Oscillator
DFLLRC2M_base = 0x0068		// DFLL for 2MHz RC Oscillator
PR_base = 0x0070		// Power Reduction
RST_base = 0x0078		// Reset Controller
WDT_base = 0x0080		// Watch-Dog Timer
MCU_base = 0x0090		// MCU Control
PMIC_base = 0x00A0		// Programmable Interrupt Controller
PORTCFG_base = 0x00B0		// Port Configuration
AES_base = 0x0C0		// AES Crypto Module
CRC_base = 0x0D0		// CRC Module
DMA_base = 0x0100		// DMA Controller
EVSYS_base = 0x0180		// Event System
NVM_base = 0x01C0		// Non Volatile Memory Controller
ADCB_base = 0x0240		// Analog to Digital Converter B
ACB_base = 0x0390		// Analog Comparator B
RTC_base = 0x0400		// Real-Time Counter
TWIC_base = 0x480		// Two-Wire Interface C
USB_base = 0x4C0		// Universal Serial Bus Module
PORTB_base = 0x0620		// I/O Port B
PORTC_base = 0x0640		// I/O Port C
PORTD_base = 0x0660		// I/O Port D
PORTG_base = 0x06C0		// I/O Port G
PORTM_base = 0x0760		// I/O Port M
PORTR_base = 0x07E0		// I/O Port R
TCC0_base = 0x800		// Timer/Counter C0
TCC1_base = 0x840		// Timer/Counter C1
AWEXC_base = 0x880		// Advanced Waveform Extension C
HIRESC_base = 0x890		// High-Resolution Extension C
USARTC0_base = 0x8A0		// Universal Asynchronous Receiver-Transmitter C0
SPIC_base = 0x8C0		// Serial Peripheral Interface C
IRCOM_base = 0x8F8		// IR Communication Module
LCD_base = 0x0D00		// LCD Controller


; ***** IO REGISTER OFFSETS **********************************************


;***************************************************************************
;** GPIO - General Purpose IO
;***************************************************************************/
GPIO_GPIOR0_offset = 0x00		// General Purpose IO Register 0
GPIO_GPIOR1_offset = 0x01		// General Purpose IO Register 1
GPIO_GPIOR2_offset = 0x02		// General Purpose IO Register 2
GPIO_GPIOR3_offset = 0x03		// General Purpose IO Register 3

;***************************************************************************
;** VPORT - Virtual Ports
;***************************************************************************/
VPORT_DIR_offset = 0x00		// I/O Port Data Direction
VPORT_OUT_offset = 0x01		// I/O Port Output
VPORT_IN_offset = 0x02		// I/O Port Input
VPORT_INTFLAGS_offset = 0x03		// Interrupt Flag Register

;***************************************************************************
;** XOCD - On-Chip Debug System
;***************************************************************************/
OCD_OCDR0_offset = 0x00		// OCD Register 0
OCD_OCDR1_offset = 0x01		// OCD Register 1

;***************************************************************************
;** CPU - CPU
;***************************************************************************/
CPU_CCP_offset = 0x04		// Configuration Change Protection
CPU_RAMPD_offset = 0x08		// Ramp D
CPU_RAMPX_offset = 0x09		// Ramp X
CPU_RAMPY_offset = 0x0A		// Ramp Y
CPU_RAMPZ_offset = 0x0B		// Ramp Z
CPU_EIND_offset = 0x0C		// Extended Indirect Jump
CPU_SPL_offset = 0x0D		// Stack Pointer Low
CPU_SPH_offset = 0x0E		// Stack Pointer High
CPU_SREG_offset = 0x0F		// Status Register

;***************************************************************************
;** CLK - Clock System
;***************************************************************************/
CLK_CTRL_offset = 0x00		// Control Register
CLK_PSCTRL_offset = 0x01		// Prescaler Control Register
CLK_LOCK_offset = 0x02		// Lock register
CLK_RTCCTRL_offset = 0x03		// RTC Control Register
CLK_USBCTRL_offset = 0x04		// USB Control Register

;***************************************************************************
;** PR - Power Reduction
;***************************************************************************/
PR_PRGEN_offset = 0x00		// General Power Reduction
PR_PRPA_offset = 0x01		// Power Reduction Port A
PR_PRPB_offset = 0x02		// Power Reduction Port B
PR_PRPC_offset = 0x03		// Power Reduction Port C
PR_PRPE_offset = 0x05		// Power Reduction Port E

;***************************************************************************
;** SLEEP - Sleep Controller
;***************************************************************************/
SLEEP_CTRL_offset = 0x00		// Control Register

;***************************************************************************
;** OSC - Oscillator
;***************************************************************************/
OSC_CTRL_offset = 0x00		// Control Register
OSC_STATUS_offset = 0x01		// Status Register
OSC_XOSCCTRL_offset = 0x02		// External Oscillator Control Register
OSC_XOSCFAIL_offset = 0x03		// Oscillator Failure Detection Register
OSC_RC32KCAL_offset = 0x04		// 32.768 kHz Internal Oscillator Calibration Register
OSC_PLLCTRL_offset = 0x05		// PLL Control Register
OSC_DFLLCTRL_offset = 0x06		// DFLL Control Register

;***************************************************************************
;** DFLL - DFLL
;***************************************************************************/
DFLL_CTRL_offset = 0x00		// Control Register
DFLL_CALA_offset = 0x02		// Calibration Register A
DFLL_CALB_offset = 0x03		// Calibration Register B
DFLL_COMP0_offset = 0x04		// Oscillator Compare Register 0
DFLL_COMP1_offset = 0x05		// Oscillator Compare Register 1
DFLL_COMP2_offset = 0x06		// Oscillator Compare Register 2

;***************************************************************************
;** RST - Reset
;***************************************************************************/
RST_STATUS_offset = 0x00		// Status Register
RST_CTRL_offset = 0x01		// Control Register

;***************************************************************************
;** WDT - Watch-Dog Timer
;***************************************************************************/
WDT_CTRL_offset = 0x00		// Control
WDT_WINCTRL_offset = 0x01		// Windowed Mode Control
WDT_STATUS_offset = 0x02		// Status

;***************************************************************************
;** MCU - MCU Control
;***************************************************************************/
MCU_DEVID0_offset = 0x00		// Device ID byte 0
MCU_DEVID1_offset = 0x01		// Device ID byte 1
MCU_DEVID2_offset = 0x02		// Device ID byte 2
MCU_REVID_offset = 0x03		// Revision ID
MCU_JTAGUID_offset = 0x04		// JTAG User ID
MCU_MCUCR_offset = 0x06		// MCU Control
MCU_ANAINIT_offset = 0x07		// Analog Startup Delay
MCU_EVSYSLOCK_offset = 0x08		// Event System Lock
MCU_AWEXLOCK_offset = 0x09		// AWEX Lock

;***************************************************************************
;** PMIC - Programmable Multi-level Interrupt Controller
;***************************************************************************/
PMIC_STATUS_offset = 0x00		// Status Register
PMIC_INTPRI_offset = 0x01		// Interrupt Priority
PMIC_CTRL_offset = 0x02		// Control Register

;***************************************************************************
;** PORTCFG - Port Configuration
;***************************************************************************/
PORTCFG_MPCMASK_offset = 0x00		// Multi-pin Configuration Mask
PORTCFG_VPCTRLA_offset = 0x02		// Virtual Port Control Register A
PORTCFG_VPCTRLB_offset = 0x03		// Virtual Port Control Register B
PORTCFG_CLKEVOUT_offset = 0x04		// Clock and Event Out Register
PORTCFG_EVOUTSEL_offset = 0x06		// Event Output Select

;***************************************************************************
;** AES - AES Module
;***************************************************************************/
AES_CTRL_offset = 0x00		// AES Control Register
AES_STATUS_offset = 0x01		// AES Status Register
AES_STATE_offset = 0x02		// AES State Register
AES_KEY_offset = 0x03		// AES Key Register
AES_INTCTRL_offset = 0x04		// AES Interrupt Control Register

;***************************************************************************
;** CRC - Cyclic Redundancy Checker
;***************************************************************************/
CRC_CTRL_offset = 0x00		// Control Register
CRC_STATUS_offset = 0x01		// Status Register
CRC_DATAIN_offset = 0x03		// Data Input
CRC_CHECKSUM0_offset = 0x04		// Checksum byte 0
CRC_CHECKSUM1_offset = 0x05		// Checksum byte 1
CRC_CHECKSUM2_offset = 0x06		// Checksum byte 2
CRC_CHECKSUM3_offset = 0x07		// Checksum byte 3

;***************************************************************************
;** DMA - DMA Controller
;***************************************************************************/
DMA_CH_CTRLA_offset = 0x00		// Channel Control
DMA_CH_CTRLB_offset = 0x01		// Channel Control
DMA_CH_ADDRCTRL_offset = 0x02		// Address Control
DMA_CH_TRIGSRC_offset = 0x03		// Channel Trigger Source
DMA_CH_TRIGSRC_AES_gc = 0x04<<0 ; AES
DMA_CH_TRFCNT_offset = 0x04		// Channel Block Transfer Count
DMA_CH_REPCNT_offset = 0x06		// Channel Repeat Count
DMA_CH_SRCADDR0_offset = 0x08		// Channel Source Address 0
DMA_CH_SRCADDR1_offset = 0x09		// Channel Source Address 1
DMA_CH_DESTADDR0_offset = 0x0C		// Channel Destination Address 0
DMA_CH_DESTADDR1_offset = 0x0D		// Channel Destination Address 1
DMA_CTRL_offset = 0x00		// Control
DMA_INTFLAGS_offset = 0x03		// Transfer Interrupt Status
DMA_STATUS_offset = 0x04		// Status
DMA_TEMP_offset = 0x06		// Temporary Register For 16-bit Access
DMA_CH0_offset = 0x10		// DMA Channel 0
DMA_CH1_offset = 0x20		// DMA Channel 1

;***************************************************************************
;** EVSYS - Event System
;***************************************************************************/
EVSYS_CH0MUX_offset = 0x00		// Event Channel 0 Multiplexer
EVSYS_CH1MUX_offset = 0x01		// Event Channel 1 Multiplexer
EVSYS_CH2MUX_offset = 0x02		// Event Channel 2 Multiplexer
EVSYS_CH3MUX_offset = 0x03		// Event Channel 3 Multiplexer
EVSYS_CH0CTRL_offset = 0x08		// Channel 0 Control Register
EVSYS_CH1CTRL_offset = 0x09		// Channel 1 Control Register
EVSYS_CH2CTRL_offset = 0x0A		// Channel 2 Control Register
EVSYS_CH3CTRL_offset = 0x0B		// Channel 3 Control Register
EVSYS_STROBE_offset = 0x10		// Event Strobe
EVSYS_DATA_offset = 0x11		// Event Data

;***************************************************************************
;** NVM - Non Volatile Memory Controller
;***************************************************************************/
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

;***************************************************************************
;** ADC - Analog/Digital Converter
;***************************************************************************/
ADC_CH_CTRL_offset = 0x00		// Control Register
ADC_CH_MUXCTRL_offset = 0x01		// MUX Control
ADC_CH_INTCTRL_offset = 0x02		// Channel Interrupt Control Register
ADC_CH_INTFLAGS_offset = 0x03		// Interrupt Flags
ADC_CH_RES_offset = 0x04		// Channel Result
ADC_CH_SCAN_offset = 0x06		// Input Channel Scan
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

;***************************************************************************
;** AC - Analog Comparator
;***************************************************************************/
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

;***************************************************************************
;** RTC - Real-Time Clounter
;***************************************************************************/
RTC_CTRL_offset = 0x00		// Control Register
RTC_STATUS_offset = 0x01		// Status Register
RTC_INTCTRL_offset = 0x02		// Interrupt Control Register
RTC_INTFLAGS_offset = 0x03		// Interrupt Flags
RTC_TEMP_offset = 0x04		// Temporary register
RTC_CNT_offset = 0x08		// Count Register
RTC_PER_offset = 0x0A		// Period Register
RTC_COMP_offset = 0x0C		// Compare Register

;***************************************************************************
;** TWI - Two-Wire Interface
;***************************************************************************/
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
TWI_CTRL_offset = 0x00		// TWI Common Control Register
TWI_MASTER_offset = 0x0001		// TWI master module
TWI_SLAVE_offset = 0x0008		// TWI slave module

;***************************************************************************
;** USB - USB
;***************************************************************************/
USB_EP_STATUS_offset = 0x00		// Endpoint Status
USB_EP_CTRL_offset = 0x01		// Endpoint Control
USB_EP_CNT_offset = 0x02		// USB Endpoint Counter
USB_EP_DATAPTR_offset = 0x04		// Data Pointer
USB_EP_AUXDATA_offset = 0x06		// Auxiliary Data
USB_CTRLA_offset = 0x00		// Control Register A
USB_CTRLB_offset = 0x01		// Control Register B
USB_STATUS_offset = 0x02		// Status Register
USB_ADDR_offset = 0x03		// Address Register
USB_FIFOWP_offset = 0x04		// FIFO Write Pointer Register
USB_FIFORP_offset = 0x05		// FIFO Read Pointer Register
USB_EPPTR_offset = 0x06		// Endpoint Configuration Table Pointer
USB_INTCTRLA_offset = 0x08		// Interrupt Control Register A
USB_INTCTRLB_offset = 0x09		// Interrupt Control Register B
USB_INTFLAGSACLR_offset = 0x0A		// Clear Interrupt Flag Register A
USB_INTFLAGSASET_offset = 0x0B		// Set Interrupt Flag Register A
USB_INTFLAGSBCLR_offset = 0x0C		// Clear Interrupt Flag Register B
USB_INTFLAGSBSET_offset = 0x0D		// Set Interrupt Flag Register B
USB_CAL0_offset = 0x3A		// Calibration Byte 0
USB_CAL1_offset = 0x3B		// Calibration Byte 1
USB_EP_TABLE_EP0OUT_offset = 0x00		// Endpoint 0
USB_EP_TABLE_EP0IN_offset = 0x08		// Endpoint 0
USB_EP_TABLE_EP1OUT_offset = 0x10		// Endpoint 1
USB_EP_TABLE_EP1IN_offset = 0x18		// Endpoint 1
USB_EP_TABLE_EP2OUT_offset = 0x20		// Endpoint 2
USB_EP_TABLE_EP2IN_offset = 0x28		// Endpoint 2
USB_EP_TABLE_EP3OUT_offset = 0x30		// Endpoint 3
USB_EP_TABLE_EP3IN_offset = 0x38		// Endpoint 3
USB_EP_TABLE_EP4OUT_offset = 0x40		// Endpoint 4
USB_EP_TABLE_EP4IN_offset = 0x48		// Endpoint 4
USB_EP_TABLE_EP5OUT_offset = 0x50		// Endpoint 5
USB_EP_TABLE_EP5IN_offset = 0x58		// Endpoint 5
USB_EP_TABLE_EP6OUT_offset = 0x60		// Endpoint 6
USB_EP_TABLE_EP6IN_offset = 0x68		// Endpoint 6
USB_EP_TABLE_EP7OUT_offset = 0x70		// Endpoint 7
USB_EP_TABLE_EP7IN_offset = 0x78		// Endpoint 7
USB_EP_TABLE_EP8OUT_offset = 0x80		// Endpoint 8
USB_EP_TABLE_EP8IN_offset = 0x88		// Endpoint 8
USB_EP_TABLE_EP9OUT_offset = 0x90		// Endpoint 9
USB_EP_TABLE_EP9IN_offset = 0x98		// Endpoint 9
USB_EP_TABLE_EP10OUT_offset = 0xA0		// Endpoint 10
USB_EP_TABLE_EP10IN_offset = 0xA8		// Endpoint 10
USB_EP_TABLE_EP11OUT_offset = 0xB0		// Endpoint 11
USB_EP_TABLE_EP11IN_offset = 0xB8		// Endpoint 11
USB_EP_TABLE_EP12OUT_offset = 0xC0		// Endpoint 12
USB_EP_TABLE_EP12IN_offset = 0xC8		// Endpoint 12
USB_EP_TABLE_EP13OUT_offset = 0xD0		// Endpoint 13
USB_EP_TABLE_EP13IN_offset = 0xD8		// Endpoint 13
USB_EP_TABLE_EP14OUT_offset = 0xE0		// Endpoint 14
USB_EP_TABLE_EP14IN_offset = 0xE8		// Endpoint 14
USB_EP_TABLE_EP15OUT_offset = 0xF0		// Endpoint 15
USB_EP_TABLE_EP15IN_offset = 0xF8		// Endpoint 15
USB_EP_TABLE_FRAMENUML_offset = 0x110		// Frame Number Low Byte
USB_EP_TABLE_FRAMENUMH_offset = 0x111		// Frame Number High Byte

;***************************************************************************
;** PORT - I/O Port Configuration
;***************************************************************************/
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
PORT_INT0MASK_offset = 0x0A		// Port Interrupt 0 Mask
PORT_INT1MASK_offset = 0x0B		// Port Interrupt 1 Mask
PORT_INTFLAGS_offset = 0x0C		// Interrupt Flag Register
PORT_REMAP_offset = 0x0E		// I/O Port Pin Remap Register
PORT_PIN0CTRL_offset = 0x10		// Pin 0 Control Register
PORT_PIN1CTRL_offset = 0x11		// Pin 1 Control Register
PORT_PIN2CTRL_offset = 0x12		// Pin 2 Control Register
PORT_PIN3CTRL_offset = 0x13		// Pin 3 Control Register
PORT_PIN4CTRL_offset = 0x14		// Pin 4 Control Register
PORT_PIN5CTRL_offset = 0x15		// Pin 5 Control Register
PORT_PIN6CTRL_offset = 0x16		// Pin 6 Control Register
PORT_PIN7CTRL_offset = 0x17		// Pin 7 Control Register

;***************************************************************************
;** TC - 16-bit Timer/Counter With PWM
;***************************************************************************/
TC0_CTRLA_offset = 0x00		// Control  Register A
TC0_CTRLB_offset = 0x01		// Control Register B
TC0_CTRLC_offset = 0x02		// Control register C
TC0_CTRLD_offset = 0x03		// Control Register D
TC0_CTRLE_offset = 0x04		// Control Register E
TC0_INTCTRLA_offset = 0x06		// Interrupt Control Register A
TC0_INTCTRLB_offset = 0x07		// Interrupt Control Register B
TC0_CTRLFCLR_offset = 0x08		// Control Register F Clear
TC0_CTRLFSET_offset = 0x09		// Control Register F Set
TC0_CTRLGCLR_offset = 0x0A		// Control Register G Clear
TC0_CTRLGSET_offset = 0x0B		// Control Register G Set
TC0_INTFLAGS_offset = 0x0C		// Interrupt Flag Register
TC0_TEMP_offset = 0x0F		// Temporary Register For 16-bit Access
TC0_CNT_offset = 0x20		// Count
TC0_PER_offset = 0x26		// Period
TC0_CCA_offset = 0x28		// Compare or Capture A
TC0_CCB_offset = 0x2A		// Compare or Capture B
TC0_CCC_offset = 0x2C		// Compare or Capture C
TC0_CCD_offset = 0x2E		// Compare or Capture D
TC0_PERBUF_offset = 0x36		// Period Buffer
TC0_CCABUF_offset = 0x38		// Compare Or Capture A Buffer
TC0_CCBBUF_offset = 0x3A		// Compare Or Capture B Buffer
TC0_CCCBUF_offset = 0x3C		// Compare Or Capture C Buffer
TC0_CCDBUF_offset = 0x3E		// Compare Or Capture D Buffer
TC1_CTRLA_offset = 0x00		// Control  Register A
TC1_CTRLB_offset = 0x01		// Control Register B
TC1_CTRLC_offset = 0x02		// Control register C
TC1_CTRLD_offset = 0x03		// Control Register D
TC1_CTRLE_offset = 0x04		// Control Register E
TC1_INTCTRLA_offset = 0x06		// Interrupt Control Register A
TC1_INTCTRLB_offset = 0x07		// Interrupt Control Register B
TC1_CTRLFCLR_offset = 0x08		// Control Register F Clear
TC1_CTRLFSET_offset = 0x09		// Control Register F Set
TC1_CTRLGCLR_offset = 0x0A		// Control Register G Clear
TC1_CTRLGSET_offset = 0x0B		// Control Register G Set
TC1_INTFLAGS_offset = 0x0C		// Interrupt Flag Register
TC1_TEMP_offset = 0x0F		// Temporary Register For 16-bit Access
TC1_CNT_offset = 0x20		// Count
TC1_PER_offset = 0x26		// Period
TC1_CCA_offset = 0x28		// Compare or Capture A
TC1_CCB_offset = 0x2A		// Compare or Capture B
TC1_PERBUF_offset = 0x36		// Period Buffer
TC1_CCABUF_offset = 0x38		// Compare Or Capture A Buffer
TC1_CCBBUF_offset = 0x3A		// Compare Or Capture B Buffer

;***************************************************************************
;** AWEX - Timer/Counter Advanced Waveform Extension
;***************************************************************************/
AWEX_CTRL_offset = 0x00		// Control Register
AWEX_FDEMASK_offset = 0x02		// Fault Detection Event Mask
AWEX_FDCTRL_offset = 0x03		// Fault Detection Control Register
AWEX_STATUS_offset = 0x04		// Status Register
AWEX_STATUSSET_offset = 0x05		// Status Set Register
AWEX_DTBOTH_offset = 0x06		// Dead Time Both Sides
AWEX_DTBOTHBUF_offset = 0x07		// Dead Time Both Sides Buffer
AWEX_DTLS_offset = 0x08		// Dead Time Low Side
AWEX_DTHS_offset = 0x09		// Dead Time High Side
AWEX_DTLSBUF_offset = 0x0A		// Dead Time Low Side Buffer
AWEX_DTHSBUF_offset = 0x0B		// Dead Time High Side Buffer
AWEX_OUTOVEN_offset = 0x0C		// Output Override Enable

;***************************************************************************
;** HIRES - Timer/Counter High-Resolution Extension
;***************************************************************************/
HIRES_CTRLA_offset = 0x00		// Control Register

;***************************************************************************
;** USART - Universal Asynchronous Receiver-Transmitter
;***************************************************************************/
USART_DATA_offset = 0x00		// Data Register
USART_STATUS_offset = 0x01		// Status Register
USART_CTRLA_offset = 0x03		// Control Register A
USART_CTRLB_offset = 0x04		// Control Register B
USART_CTRLC_offset = 0x05		// Control Register C
USART_BAUDCTRLA_offset = 0x06		// Baud Rate Control Register A
USART_BAUDCTRLB_offset = 0x07		// Baud Rate Control Register B

;***************************************************************************
;** SPI - Serial Peripheral Interface
;***************************************************************************/
SPI_CTRL_offset = 0x00		// Control Register
SPI_INTCTRL_offset = 0x01		// Interrupt Control Register
SPI_STATUS_offset = 0x02		// Status Register
SPI_DATA_offset = 0x03		// Data Register

;***************************************************************************
;** IRCOM - IR Communication Module
;***************************************************************************/
IRCOM_CTRL_offset = 0x00		// Control Register
IRCOM_TXPLCTRL_offset = 0x01		// IrDA Transmitter Pulse Length Control Register
IRCOM_RXPLCTRL_offset = 0x02		// IrDA Receiver Pulse Length Control Register

;***************************************************************************
;** LCD - LCD Controller
;***************************************************************************/
LCD_CTRLA_offset = 0x00		// Control Register A
LCD_CTRLB_offset = 0x01		// Control Register B
LCD_CTRLC_offset = 0x02		// Control Register C
LCD_INTCTRL_offset = 0x03		// Interrupt Enable Register
LCD_INTFLAG_offset = 0x04		// Interrupt Flag Register
LCD_CTRLD_offset = 0x05		// Control Register D
LCD_CTRLE_offset = 0x06		// Control Register E
LCD_CTRLF_offset = 0x07		// Control Register F
LCD_CTRLG_offset = 0x08		// Control Register G
LCD_CTRLH_offset = 0x09		// Control Register H
LCD_DATA0_offset = 0x10		// LCD Data Register 0
LCD_DATA1_offset = 0x11		// LCD Data Register 1
LCD_DATA2_offset = 0x12		// LCD Data Register 2
LCD_DATA3_offset = 0x13		// LCD Data Register 3
LCD_DATA4_offset = 0x14		// LCD Data Register 4
LCD_DATA5_offset = 0x15		// LCD Data Register 5
LCD_DATA6_offset = 0x16		// LCD Data Register 6
LCD_DATA7_offset = 0x17		// LCD Data Register 7
LCD_DATA8_offset = 0x18		// LCD Data Register 8
LCD_DATA9_offset = 0x19		// LCD Data Register 9
LCD_DATA10_offset = 0x1A		// LCD Data Register 10
LCD_DATA11_offset = 0x1B		// LCD Data Register 11
LCD_DATA12_offset = 0x1C		// LCD Data Register 12
LCD_DATA13_offset = 0x1D		// LCD Data Register 13
LCD_DATA14_offset = 0x1E		// LCD Data Register 14
LCD_DATA15_offset = 0x1F		// LCD Data Register 15
LCD_DATA16_offset = 0x20		// LCD Data Register 16
LCD_DATA17_offset = 0x21		// LCD Data Register 17
LCD_DATA18_offset = 0x22		// LCD Data Register 18
LCD_DATA19_offset = 0x23		// LCD Data Register 19

;***************************************************************************
;** FUSE - Fuses and Lockbits
;***************************************************************************/
NVM_LOCKBITS_LOCKBITS_offset = 0x00		// Lock Bits
NVM_FUSES_FUSEBYTE0_offset = 0x00		// JTAG User ID
NVM_FUSES_FUSEBYTE1_offset = 0x01		// Watchdog Configuration
NVM_FUSES_FUSEBYTE2_offset = 0x02		// Reset Configuration
NVM_FUSES_FUSEBYTE4_offset = 0x04		// Start-up Configuration
NVM_FUSES_FUSEBYTE5_offset = 0x05		// EESAVE and BOD Level

;***************************************************************************
;** SIGROW - Signature Row
;***************************************************************************/
NVM_PROD_SIGNATURES_RCOSC2M_offset = 0x00		// RCOSC 2 MHz Calibration Value B
NVM_PROD_SIGNATURES_RCOSC2MA_offset = 0x01		// RCOSC 2 MHz Calibration Value A
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
NVM_PROD_SIGNATURES_USBCAL0_offset = 0x1A		// USB Calibration Byte 0
NVM_PROD_SIGNATURES_USBCAL1_offset = 0x1B		// USB Calibration Byte 1
NVM_PROD_SIGNATURES_USBRCOSC_offset = 0x1C		// USB RCOSC Calibration Value B
NVM_PROD_SIGNATURES_USBRCOSCA_offset = 0x1D		// USB RCOSC Calibration Value A
NVM_PROD_SIGNATURES_ADCACAL0_offset = 0x20		// ADCA Calibration Byte 0
NVM_PROD_SIGNATURES_ADCACAL1_offset = 0x21		// ADCA Calibration Byte 1
NVM_PROD_SIGNATURES_ADCBCAL0_offset = 0x24		// ADCB Calibration Byte 0
NVM_PROD_SIGNATURES_ADCBCAL1_offset = 0x25		// ADCB Calibration Byte 1
NVM_PROD_SIGNATURES_TEMPSENSE0_offset = 0x2E		// Temperature Sensor Calibration Byte 0
NVM_PROD_SIGNATURES_TEMPSENSE1_offset = 0x2F		// Temperature Sensor Calibration Byte 1


; ***** LOCKBIT REGISTER LOCATIONS ***************************************


;***************************************************************************
;** LOCKBIT - Lockbits
;***************************************************************************

LOCKBIT_LOCKBITS = 0		// Lock Bits


; ***** FUSE REGISTER LOCATIONS ******************************************


;***************************************************************************
;** FUSE - Fuses
;***************************************************************************

FUSE_FUSEBYTE0 = 0		// JTAG User ID
FUSE_FUSEBYTE1 = 1		// Watchdog Configuration
FUSE_FUSEBYTE2 = 2		// Reset Configuration
FUSE_FUSEBYTE4 = 4		// Start-up Configuration
FUSE_FUSEBYTE5 = 5		// EESAVE and BOD Level


; ***** BIT AND VALUE DEFINITIONS ****************************************


;***************************************************************************
;** GPIO - General Purpose IO
;***************************************************************************/


;***************************************************************************
;** VPORT - Virtual Ports
;***************************************************************************/

; VPORT_INTFLAGS masks
VPORT_INT1IF_bm = 0x02 ; Port Interrupt 1 Flag bit mask
VPORT_INT1IF_bp = 1 ; Port Interrupt 1 Flag bit position
VPORT_INT0IF_bm = 0x01 ; Port Interrupt 0 Flag bit mask
VPORT_INT0IF_bp = 0 ; Port Interrupt 0 Flag bit position


;***************************************************************************
;** XOCD - On-Chip Debug System
;***************************************************************************/

; OCD_OCDR1 masks
OCD_OCDRD_bm = 0x01 ; OCDR Dirty bit mask
OCD_OCDRD_bp = 0 ; OCDR Dirty bit position


;***************************************************************************
;** CPU - CPU
;***************************************************************************/

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


;***************************************************************************
;** CLK - Clock System
;***************************************************************************/

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

; CLK_USBCTRL masks
CLK_USBPSDIV_gm = 0x38 ; Prescaler Division Factor group mask
CLK_USBPSDIV_gp = 3 ; Prescaler Division Factor group position
CLK_USBPSDIV0_bm = 1<<3 ; Prescaler Division Factor bit 0 mask
CLK_USBPSDIV0_bp = 3 ; Prescaler Division Factor bit 0 position
CLK_USBPSDIV1_bm = 1<<4 ; Prescaler Division Factor bit 1 mask
CLK_USBPSDIV1_bp = 4 ; Prescaler Division Factor bit 1 position
CLK_USBPSDIV2_bm = 1<<5 ; Prescaler Division Factor bit 2 mask
CLK_USBPSDIV2_bp = 5 ; Prescaler Division Factor bit 2 position
CLK_USBSRC_gm = 0x06 ; Clock Source group mask
CLK_USBSRC_gp = 1 ; Clock Source group position
CLK_USBSRC0_bm = 1<<1 ; Clock Source bit 0 mask
CLK_USBSRC0_bp = 1 ; Clock Source bit 0 position
CLK_USBSRC1_bm = 1<<2 ; Clock Source bit 1 mask
CLK_USBSRC1_bp = 2 ; Clock Source bit 1 position
CLK_USBSEN_bm = 0x01 ; Clock Source Enable bit mask
CLK_USBSEN_bp = 0 ; Clock Source Enable bit position

; System Clock Selection
CLK_SCLKSEL_RC2M_gc = 0x00<<0 ; Internal 2 MHz RC Oscillator
CLK_SCLKSEL_RC32M_gc = 0x01<<0 ; Internal 32 MHz RC Oscillator
CLK_SCLKSEL_RC32K_gc = 0x02<<0 ; Internal 32.768 kHz RC Oscillator
CLK_SCLKSEL_XOSC_gc = 0x03<<0 ; External Crystal Oscillator or Clock
CLK_SCLKSEL_PLL_gc = 0x04<<0 ; Phase Locked Loop

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

; USB Prescaler Division Factor
CLK_USBPSDIV_1_gc = 0x00<<3 ; Divide by 1
CLK_USBPSDIV_2_gc = 0x01<<3 ; Divide by 2
CLK_USBPSDIV_4_gc = 0x02<<3 ; Divide by 4
CLK_USBPSDIV_8_gc = 0x03<<3 ; Divide by 8
CLK_USBPSDIV_16_gc = 0x04<<3 ; Divide by 16
CLK_USBPSDIV_32_gc = 0x05<<3 ; Divide by 32

; USB Clock Source
CLK_USBSRC_PLL_gc = 0x00<<1 ; PLL
CLK_USBSRC_RC32M_gc = 0x01<<1 ; Internal 32 MHz RC Oscillator


;***************************************************************************
;** PR - Power Reduction
;***************************************************************************/

; PR_PRGEN masks
PR_LCD_bm = 0x80 ; LCD Module bit mask
PR_LCD_bp = 7 ; LCD Module bit position
PR_USB_bm = 0x40 ; USB bit mask
PR_USB_bp = 6 ; USB bit position
PR_AES_bm = 0x10 ; AES bit mask
PR_AES_bp = 4 ; AES bit position
PR_RTC_bm = 0x04 ; Real-time Counter bit mask
PR_RTC_bp = 2 ; Real-time Counter bit position
PR_EVSYS_bm = 0x02 ; Event System bit mask
PR_EVSYS_bp = 1 ; Event System bit position
PR_DMA_bm = 0x01 ; DMA-Controller bit mask
PR_DMA_bp = 0 ; DMA-Controller bit position

; PR_PRPA masks
PR_ADC_bm = 0x02 ; Port A ADC bit mask
PR_ADC_bp = 1 ; Port A ADC bit position
PR_AC_bm = 0x01 ; Port A Analog Comparator bit mask
PR_AC_bp = 0 ; Port A Analog Comparator bit position

; PR_PRPB masks
; Masks for ADC aready defined
; Masks for AC aready defined

; PR_PRPC masks
PR_TWI_bm = 0x40 ; Port C Two-wire Interface bit mask
PR_TWI_bp = 6 ; Port C Two-wire Interface bit position
PR_USART0_bm = 0x10 ; Port C USART0 bit mask
PR_USART0_bp = 4 ; Port C USART0 bit position
PR_SPI_bm = 0x08 ; Port C SPI bit mask
PR_SPI_bp = 3 ; Port C SPI bit position
PR_HIRES_bm = 0x04 ; Port C AWEX bit mask
PR_HIRES_bp = 2 ; Port C AWEX bit position
PR_TC1_bm = 0x02 ; Port C Timer/Counter1 bit mask
PR_TC1_bp = 1 ; Port C Timer/Counter1 bit position
PR_TC0_bm = 0x01 ; Port C Timer/Counter0 bit mask
PR_TC0_bp = 0 ; Port C Timer/Counter0 bit position

; PR_PRPE masks
; Masks for USART0 aready defined
; Masks for TC0 aready defined


;***************************************************************************
;** SLEEP - Sleep Controller
;***************************************************************************/

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


;***************************************************************************
;** OSC - Oscillator
;***************************************************************************/

; OSC_CTRL masks
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
OSC_RC2MCREF_bm = 0x01 ; 2 MHz DFLL Calibration Reference bit mask
OSC_RC2MCREF_bp = 0 ; 2 MHz DFLL Calibration Reference bit position

; Oscillator Frequency Range
OSC_FRQRANGE_04TO2_gc = 0x00<<6 ; 0.4 - 2 MHz
OSC_FRQRANGE_2TO9_gc = 0x01<<6 ; 2 - 9 MHz
OSC_FRQRANGE_9TO12_gc = 0x02<<6 ; 9 - 12 MHz
OSC_FRQRANGE_12TO16_gc = 0x03<<6 ; 12 - 16 MHz

; External Oscillator Selection and Startup Time
OSC_XOSCSEL_EXTCLK_gc = 0x00<<0 ; External Clock on port R1 - 6 CLK
OSC_XOSCSEL_EXTCLK_C0_gc = 0x01<<0 ; External Clock on port C0 - 6 CLK
OSC_XOSCSEL_EXTCLK_C1_gc = 0x05<<0 ; External Clock on port C1 - 6 CLK
OSC_XOSCSEL_EXTCLK_C2_gc = 0x09<<0 ; External Clock on port C2 - 6 CLK
OSC_XOSCSEL_EXTCLK_C3_gc = 0x0D<<0 ; External Clock on port C3 - 6 CLK
OSC_XOSCSEL_EXTCLK_C4_gc = 0x11<<0 ; External Clock on port C4 - 6 CLK
OSC_XOSCSEL_EXTCLK_C5_gc = 0x15<<0 ; External Clock on port C5 - 6 CLK
OSC_XOSCSEL_EXTCLK_C6_gc = 0x19<<0 ; External Clock on port C6 - 6 CLK
OSC_XOSCSEL_EXTCLK_C7_gc = 0x1D<<0 ; External Clock on port C7 - 6 CLK
OSC_XOSCSEL_32KHz_gc = 0x02<<0 ; 32kHz TOSC - 32K CLK
OSC_XOSCSEL_XTAL_256CLK_gc = 0x03<<0 ; 0.4-16MHz XTAL - 256 CLK
OSC_XOSCSEL_XTAL_1KCLK_gc = 0x07<<0 ; 0.4-16MHz XTAL - 1K CLK
OSC_XOSCSEL_XTAL_16KCLK_gc = 0x0B<<0 ; 0.4-16MHz XTAL - 16K CLK

; PLL Clock Source
OSC_PLLSRC_RC2M_gc = 0x00<<6 ; Internal 2 MHz RC Oscillator
OSC_PLLSRC_RC32M_gc = 0x02<<6 ; Internal 32 MHz RC Oscillator
OSC_PLLSRC_XOSC_gc = 0x03<<6 ; External Oscillator

; 2 MHz DFLL Calibration Reference
OSC_RC2MCREF_RC32K_gc = 0x00<<0 ; Internal 32.768 kHz RC Oscillator
OSC_RC2MCREF_XOSC32K_gc = 0x01<<0 ; External 32.768 kHz Crystal Oscillator

; 32 MHz DFLL Calibration Reference
OSC_RC32MCREF_RC32K_gc = 0x00<<1 ; Internal 32.768 kHz RC Oscillator
OSC_RC32MCREF_XOSC32K_gc = 0x01<<1 ; External 32.768 kHz Crystal Oscillator
OSC_RC32MCREF_USBSOF_gc = 0x02<<1 ; USB Start of Frame


;***************************************************************************
;** DFLL - DFLL
;***************************************************************************/

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


;***************************************************************************
;** RST - Reset
;***************************************************************************/

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


;***************************************************************************
;** WDT - Watch-Dog Timer
;***************************************************************************/

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


;***************************************************************************
;** MCU - MCU Control
;***************************************************************************/

; MCU_MCUCR masks
MCU_JTAGD_bm = 0x01 ; JTAG Disable bit mask
MCU_JTAGD_bp = 0 ; JTAG Disable bit position

; MCU_ANAINIT masks
MCU_STARTUPDLYB_gm = 0x0C ; Analog startup delay Port B group mask
MCU_STARTUPDLYB_gp = 2 ; Analog startup delay Port B group position
MCU_STARTUPDLYB0_bm = 1<<2 ; Analog startup delay Port B bit 0 mask
MCU_STARTUPDLYB0_bp = 2 ; Analog startup delay Port B bit 0 position
MCU_STARTUPDLYB1_bm = 1<<3 ; Analog startup delay Port B bit 1 mask
MCU_STARTUPDLYB1_bp = 3 ; Analog startup delay Port B bit 1 position
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

; MCU_AWEXLOCK masks
MCU_AWEXCLOCK_bm = 0x01 ; AWeX on T/C C0 Lock bit mask
MCU_AWEXCLOCK_bp = 0 ; AWeX on T/C C0 Lock bit position


;***************************************************************************
;** PMIC - Programmable Multi-level Interrupt Controller
;***************************************************************************/

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


;***************************************************************************
;** PORTCFG - Port Configuration
;***************************************************************************/

; PORTCFG_VPCTRLA masks
PORTCFG_VP1MAP_gm = 0xF0 ; Virtual Port 1 Mapping group mask
PORTCFG_VP1MAP_gp = 4 ; Virtual Port 1 Mapping group position
PORTCFG_VP1MAP0_bm = 1<<4 ; Virtual Port 1 Mapping bit 0 mask
PORTCFG_VP1MAP0_bp = 4 ; Virtual Port 1 Mapping bit 0 position
PORTCFG_VP1MAP1_bm = 1<<5 ; Virtual Port 1 Mapping bit 1 mask
PORTCFG_VP1MAP1_bp = 5 ; Virtual Port 1 Mapping bit 1 position
PORTCFG_VP1MAP2_bm = 1<<6 ; Virtual Port 1 Mapping bit 2 mask
PORTCFG_VP1MAP2_bp = 6 ; Virtual Port 1 Mapping bit 2 position
PORTCFG_VP1MAP3_bm = 1<<7 ; Virtual Port 1 Mapping bit 3 mask
PORTCFG_VP1MAP3_bp = 7 ; Virtual Port 1 Mapping bit 3 position
PORTCFG_VP0MAP_gm = 0x0F ; Virtual Port 0 Mapping group mask
PORTCFG_VP0MAP_gp = 0 ; Virtual Port 0 Mapping group position
PORTCFG_VP0MAP0_bm = 1<<0 ; Virtual Port 0 Mapping bit 0 mask
PORTCFG_VP0MAP0_bp = 0 ; Virtual Port 0 Mapping bit 0 position
PORTCFG_VP0MAP1_bm = 1<<1 ; Virtual Port 0 Mapping bit 1 mask
PORTCFG_VP0MAP1_bp = 1 ; Virtual Port 0 Mapping bit 1 position
PORTCFG_VP0MAP2_bm = 1<<2 ; Virtual Port 0 Mapping bit 2 mask
PORTCFG_VP0MAP2_bp = 2 ; Virtual Port 0 Mapping bit 2 position
PORTCFG_VP0MAP3_bm = 1<<3 ; Virtual Port 0 Mapping bit 3 mask
PORTCFG_VP0MAP3_bp = 3 ; Virtual Port 0 Mapping bit 3 position

; PORTCFG_VPCTRLB masks
PORTCFG_VP3MAP_gm = 0xF0 ; Virtual Port 3 Mapping group mask
PORTCFG_VP3MAP_gp = 4 ; Virtual Port 3 Mapping group position
PORTCFG_VP3MAP0_bm = 1<<4 ; Virtual Port 3 Mapping bit 0 mask
PORTCFG_VP3MAP0_bp = 4 ; Virtual Port 3 Mapping bit 0 position
PORTCFG_VP3MAP1_bm = 1<<5 ; Virtual Port 3 Mapping bit 1 mask
PORTCFG_VP3MAP1_bp = 5 ; Virtual Port 3 Mapping bit 1 position
PORTCFG_VP3MAP2_bm = 1<<6 ; Virtual Port 3 Mapping bit 2 mask
PORTCFG_VP3MAP2_bp = 6 ; Virtual Port 3 Mapping bit 2 position
PORTCFG_VP3MAP3_bm = 1<<7 ; Virtual Port 3 Mapping bit 3 mask
PORTCFG_VP3MAP3_bp = 7 ; Virtual Port 3 Mapping bit 3 position
PORTCFG_VP2MAP_gm = 0x0F ; Virtual Port 2 Mapping group mask
PORTCFG_VP2MAP_gp = 0 ; Virtual Port 2 Mapping group position
PORTCFG_VP2MAP0_bm = 1<<0 ; Virtual Port 2 Mapping bit 0 mask
PORTCFG_VP2MAP0_bp = 0 ; Virtual Port 2 Mapping bit 0 position
PORTCFG_VP2MAP1_bm = 1<<1 ; Virtual Port 2 Mapping bit 1 mask
PORTCFG_VP2MAP1_bp = 1 ; Virtual Port 2 Mapping bit 1 position
PORTCFG_VP2MAP2_bm = 1<<2 ; Virtual Port 2 Mapping bit 2 mask
PORTCFG_VP2MAP2_bp = 2 ; Virtual Port 2 Mapping bit 2 position
PORTCFG_VP2MAP3_bm = 1<<3 ; Virtual Port 2 Mapping bit 3 mask
PORTCFG_VP2MAP3_bp = 3 ; Virtual Port 2 Mapping bit 3 position

; PORTCFG_CLKEVOUT masks
PORTCFG_CLKOUT_gm = 0x03 ; Peripheral Clock Output Port group mask
PORTCFG_CLKOUT_gp = 0 ; Peripheral Clock Output Port group position
PORTCFG_CLKOUT0_bm = 1<<0 ; Peripheral Clock Output Port bit 0 mask
PORTCFG_CLKOUT0_bp = 0 ; Peripheral Clock Output Port bit 0 position
PORTCFG_CLKOUT1_bm = 1<<1 ; Peripheral Clock Output Port bit 1 mask
PORTCFG_CLKOUT1_bp = 1 ; Peripheral Clock Output Port bit 1 position
PORTCFG_CLKOUTSEL_gm = 0x0C ; Peripheral Clock Output Select group mask
PORTCFG_CLKOUTSEL_gp = 2 ; Peripheral Clock Output Select group position
PORTCFG_CLKOUTSEL0_bm = 1<<2 ; Peripheral Clock Output Select bit 0 mask
PORTCFG_CLKOUTSEL0_bp = 2 ; Peripheral Clock Output Select bit 0 position
PORTCFG_CLKOUTSEL1_bm = 1<<3 ; Peripheral Clock Output Select bit 1 mask
PORTCFG_CLKOUTSEL1_bp = 3 ; Peripheral Clock Output Select bit 1 position
PORTCFG_EVOUT_gm = 0x30 ; Event Output Port group mask
PORTCFG_EVOUT_gp = 4 ; Event Output Port group position
PORTCFG_EVOUT0_bm = 1<<4 ; Event Output Port bit 0 mask
PORTCFG_EVOUT0_bp = 4 ; Event Output Port bit 0 position
PORTCFG_EVOUT1_bm = 1<<5 ; Event Output Port bit 1 mask
PORTCFG_EVOUT1_bp = 5 ; Event Output Port bit 1 position
PORTCFG_RTCOUT_bm = 0x40 ; RTC Clock Output bit mask
PORTCFG_RTCOUT_bp = 6 ; RTC Clock Output bit position
PORTCFG_CLKEVPIN_bm = 0x80 ; Peripheral Clock and Event Output pin Select bit mask
PORTCFG_CLKEVPIN_bp = 7 ; Peripheral Clock and Event Output pin Select bit position

; PORTCFG_EVOUTSEL masks
PORTCFG_EVOUTSEL_bm = 0x04 ; Event Output Select bit mask
PORTCFG_EVOUTSEL_bp = 2 ; Event Output Select bit position

; Virtual Port Mapping
PORTCFG_VP02MAP_PORTA_gc = 0x00<<0 ; Mapped To PORTA
PORTCFG_VP02MAP_PORTB_gc = 0x01<<0 ; Mapped To PORTB
PORTCFG_VP02MAP_PORTC_gc = 0x02<<0 ; Mapped To PORTC
PORTCFG_VP02MAP_PORTD_gc = 0x03<<0 ; Mapped To PORTD
PORTCFG_VP02MAP_PORTE_gc = 0x04<<0 ; Mapped To PORTE
PORTCFG_VP02MAP_PORTG_gc = 0x06<<0 ; Mapped To PORTG
PORTCFG_VP02MAP_PORTM_gc = 0x0B<<0 ; Mapped To PORTM
PORTCFG_VP02MAP_PORTR_gc = 0x0F<<0 ; Mapped To PORTR

; Virtual Port Mapping
PORTCFG_VP13MAP_PORTA_gc = 0x00<<4 ; Mapped To PORTA
PORTCFG_VP13MAP_PORTB_gc = 0x01<<4 ; Mapped To PORTB
PORTCFG_VP13MAP_PORTC_gc = 0x02<<4 ; Mapped To PORTC
PORTCFG_VP13MAP_PORTD_gc = 0x03<<4 ; Mapped To PORTD
PORTCFG_VP13MAP_PORTE_gc = 0x04<<4 ; Mapped To PORTE
PORTCFG_VP13MAP_PORTG_gc = 0x06<<4 ; Mapped To PORTG
PORTCFG_VP13MAP_PORTM_gc = 0x0B<<4 ; Mapped To PORTM
PORTCFG_VP13MAP_PORTR_gc = 0x0F<<4 ; Mapped To PORTR

; System Clock Output Port
PORTCFG_CLKOUT_OFF_gc = 0x00<<0 ; System Clock Output Disabled
PORTCFG_CLKOUT_PC_gc = 0x01<<0 ; System Clock Output on Port C
PORTCFG_CLKOUT_PE_gc = 0x03<<0 ; System Clock Output on Port E

; Peripheral Clock Output Select
PORTCFG_CLKOUTSEL_CLK1X_gc = 0x00<<2 ; 1x Peripheral Clock Output to pin
PORTCFG_CLKOUTSEL_CLK2X_gc = 0x01<<2 ; 2x Peripheral Clock Output to pin
PORTCFG_CLKOUTSEL_CLK4X_gc = 0x02<<2 ; 4x Peripheral Clock Output to pin

; Event Output Port
PORTCFG_EVOUT_OFF_gc = 0x00<<4 ; Event Output Disabled
PORTCFG_EVOUT_PC_gc = 0x01<<4 ; Event Channel 0 Output on Port C
PORTCFG_EVOUT_PE_gc = 0x03<<4 ; Event Channel 0 Output on Port E

; Clock and Event Output Port
PORTCFG_CLKEVPIN_PIN7_gc = 0x00<<7 ; Clock and Event Ouput on PIN 7
PORTCFG_CLKEVPIN_PIN4_gc = 0x01<<7 ; Clock and Event Ouput on PIN 4

; Event Output Select
PORTCFG_EVOUTSEL_0_gc = 0x00<<2 ; Event Channel 0 output to pin
PORTCFG_EVOUTSEL_1_gc = 0x01<<2 ; Event Channel 1 output to pin
PORTCFG_EVOUTSEL_2_gc = 0x02<<2 ; Event Channel 2 output to pin
PORTCFG_EVOUTSEL_3_gc = 0x03<<2 ; Event Channel 3 output to pin


;***************************************************************************
;** AES - AES Module
;***************************************************************************/

; AES_CTRL masks
AES_START_bm = 0x80 ; Start/Run bit mask
AES_START_bp = 7 ; Start/Run bit position
AES_AUTO_bm = 0x40 ; Auto Start Trigger bit mask
AES_AUTO_bp = 6 ; Auto Start Trigger bit position
AES_RESET_bm = 0x20 ; AES Software Reset bit mask
AES_RESET_bp = 5 ; AES Software Reset bit position
AES_DECRYPT_bm = 0x10 ; Decryption / Direction bit mask
AES_DECRYPT_bp = 4 ; Decryption / Direction bit position
AES_XOR_bm = 0x04 ; State XOR Load Enable bit mask
AES_XOR_bp = 2 ; State XOR Load Enable bit position

; AES_STATUS masks
AES_ERROR_bm = 0x80 ; AES Error bit mask
AES_ERROR_bp = 7 ; AES Error bit position
AES_SRIF_bm = 0x01 ; State Ready Interrupt Flag bit mask
AES_SRIF_bp = 0 ; State Ready Interrupt Flag bit position

; AES_INTCTRL masks
AES_INTLVL_gm = 0x03 ; Interrupt level group mask
AES_INTLVL_gp = 0 ; Interrupt level group position
AES_INTLVL0_bm = 1<<0 ; Interrupt level bit 0 mask
AES_INTLVL0_bp = 0 ; Interrupt level bit 0 position
AES_INTLVL1_bm = 1<<1 ; Interrupt level bit 1 mask
AES_INTLVL1_bp = 1 ; Interrupt level bit 1 position

; Interrupt level
AES_INTLVL_OFF_gc = 0x00<<0 ; Interrupt Disabled
AES_INTLVL_LO_gc = 0x01<<0 ; Low Level
AES_INTLVL_MED_gc = 0x02<<0 ; Medium Level
AES_INTLVL_HI_gc = 0x03<<0 ; High Level


;***************************************************************************
;** CRC - Cyclic Redundancy Checker
;***************************************************************************/

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


;***************************************************************************
;** DMA - DMA Controller
;***************************************************************************/

; DMA_CH_CTRLA masks
DMA_CH_CHEN_bm = 0x80 ; Channel Enable bit mask
DMA_CH_CHEN_bp = 7 ; Channel Enable bit position
DMA_CH_CHRST_bm = 0x40 ; Channel Software Reset bit mask
DMA_CH_CHRST_bp = 6 ; Channel Software Reset bit position
DMA_CH_REPEAT_bm = 0x20 ; Channel Repeat Mode bit mask
DMA_CH_REPEAT_bp = 5 ; Channel Repeat Mode bit position
DMA_CH_TRFREQ_bm = 0x10 ; Channel Transfer Request bit mask
DMA_CH_TRFREQ_bp = 4 ; Channel Transfer Request bit position
DMA_CH_SINGLE_bm = 0x04 ; Channel Single Shot Data Transfer bit mask
DMA_CH_SINGLE_bp = 2 ; Channel Single Shot Data Transfer bit position
DMA_CH_BURSTLEN_gm = 0x03 ; Channel Transfer Mode group mask
DMA_CH_BURSTLEN_gp = 0 ; Channel Transfer Mode group position
DMA_CH_BURSTLEN0_bm = 1<<0 ; Channel Transfer Mode bit 0 mask
DMA_CH_BURSTLEN0_bp = 0 ; Channel Transfer Mode bit 0 position
DMA_CH_BURSTLEN1_bm = 1<<1 ; Channel Transfer Mode bit 1 mask
DMA_CH_BURSTLEN1_bp = 1 ; Channel Transfer Mode bit 1 position

; DMA_CH_CTRLB masks
DMA_CH_CHBUSY_bm = 0x80 ; Block Transfer Busy bit mask
DMA_CH_CHBUSY_bp = 7 ; Block Transfer Busy bit position
DMA_CH_CHPEND_bm = 0x40 ; Block Transfer Pending bit mask
DMA_CH_CHPEND_bp = 6 ; Block Transfer Pending bit position
DMA_CH_ERRIF_bm = 0x20 ; Block Transfer Error Interrupt Flag bit mask
DMA_CH_ERRIF_bp = 5 ; Block Transfer Error Interrupt Flag bit position
DMA_CH_TRNIF_bm = 0x10 ; Transaction Complete Interrup Flag bit mask
DMA_CH_TRNIF_bp = 4 ; Transaction Complete Interrup Flag bit position
DMA_CH_ERRINTLVL_gm = 0x0C ; Transfer Error Interrupt Level group mask
DMA_CH_ERRINTLVL_gp = 2 ; Transfer Error Interrupt Level group position
DMA_CH_ERRINTLVL0_bm = 1<<2 ; Transfer Error Interrupt Level bit 0 mask
DMA_CH_ERRINTLVL0_bp = 2 ; Transfer Error Interrupt Level bit 0 position
DMA_CH_ERRINTLVL1_bm = 1<<3 ; Transfer Error Interrupt Level bit 1 mask
DMA_CH_ERRINTLVL1_bp = 3 ; Transfer Error Interrupt Level bit 1 position
DMA_CH_TRNINTLVL_gm = 0x03 ; Transaction Complete Interrupt Level group mask
DMA_CH_TRNINTLVL_gp = 0 ; Transaction Complete Interrupt Level group position
DMA_CH_TRNINTLVL0_bm = 1<<0 ; Transaction Complete Interrupt Level bit 0 mask
DMA_CH_TRNINTLVL0_bp = 0 ; Transaction Complete Interrupt Level bit 0 position
DMA_CH_TRNINTLVL1_bm = 1<<1 ; Transaction Complete Interrupt Level bit 1 mask
DMA_CH_TRNINTLVL1_bp = 1 ; Transaction Complete Interrupt Level bit 1 position

; DMA_CH_ADDRCTRL masks
DMA_CH_SRCRELOAD_gm = 0xC0 ; Channel Source Address Reload group mask
DMA_CH_SRCRELOAD_gp = 6 ; Channel Source Address Reload group position
DMA_CH_SRCRELOAD0_bm = 1<<6 ; Channel Source Address Reload bit 0 mask
DMA_CH_SRCRELOAD0_bp = 6 ; Channel Source Address Reload bit 0 position
DMA_CH_SRCRELOAD1_bm = 1<<7 ; Channel Source Address Reload bit 1 mask
DMA_CH_SRCRELOAD1_bp = 7 ; Channel Source Address Reload bit 1 position
DMA_CH_SRCDIR_gm = 0x30 ; Channel Source Address Mode group mask
DMA_CH_SRCDIR_gp = 4 ; Channel Source Address Mode group position
DMA_CH_SRCDIR0_bm = 1<<4 ; Channel Source Address Mode bit 0 mask
DMA_CH_SRCDIR0_bp = 4 ; Channel Source Address Mode bit 0 position
DMA_CH_SRCDIR1_bm = 1<<5 ; Channel Source Address Mode bit 1 mask
DMA_CH_SRCDIR1_bp = 5 ; Channel Source Address Mode bit 1 position
DMA_CH_DESTRELOAD_gm = 0x0C ; Channel Destination Address Reload group mask
DMA_CH_DESTRELOAD_gp = 2 ; Channel Destination Address Reload group position
DMA_CH_DESTRELOAD0_bm = 1<<2 ; Channel Destination Address Reload bit 0 mask
DMA_CH_DESTRELOAD0_bp = 2 ; Channel Destination Address Reload bit 0 position
DMA_CH_DESTRELOAD1_bm = 1<<3 ; Channel Destination Address Reload bit 1 mask
DMA_CH_DESTRELOAD1_bp = 3 ; Channel Destination Address Reload bit 1 position
DMA_CH_DESTDIR_gm = 0x03 ; Channel Destination Address Mode group mask
DMA_CH_DESTDIR_gp = 0 ; Channel Destination Address Mode group position
DMA_CH_DESTDIR0_bm = 1<<0 ; Channel Destination Address Mode bit 0 mask
DMA_CH_DESTDIR0_bp = 0 ; Channel Destination Address Mode bit 0 position
DMA_CH_DESTDIR1_bm = 1<<1 ; Channel Destination Address Mode bit 1 mask
DMA_CH_DESTDIR1_bp = 1 ; Channel Destination Address Mode bit 1 position

; DMA_CH_TRIGSRC masks
DMA_CH_TRIGSRC_gm = 0xFF ; Channel Trigger Source group mask
DMA_CH_TRIGSRC_gp = 0 ; Channel Trigger Source group position
DMA_CH_TRIGSRC0_bm = 1<<0 ; Channel Trigger Source bit 0 mask
DMA_CH_TRIGSRC0_bp = 0 ; Channel Trigger Source bit 0 position
DMA_CH_TRIGSRC1_bm = 1<<1 ; Channel Trigger Source bit 1 mask
DMA_CH_TRIGSRC1_bp = 1 ; Channel Trigger Source bit 1 position
DMA_CH_TRIGSRC2_bm = 1<<2 ; Channel Trigger Source bit 2 mask
DMA_CH_TRIGSRC2_bp = 2 ; Channel Trigger Source bit 2 position
DMA_CH_TRIGSRC3_bm = 1<<3 ; Channel Trigger Source bit 3 mask
DMA_CH_TRIGSRC3_bp = 3 ; Channel Trigger Source bit 3 position
DMA_CH_TRIGSRC4_bm = 1<<4 ; Channel Trigger Source bit 4 mask
DMA_CH_TRIGSRC4_bp = 4 ; Channel Trigger Source bit 4 position
DMA_CH_TRIGSRC5_bm = 1<<5 ; Channel Trigger Source bit 5 mask
DMA_CH_TRIGSRC5_bp = 5 ; Channel Trigger Source bit 5 position
DMA_CH_TRIGSRC6_bm = 1<<6 ; Channel Trigger Source bit 6 mask
DMA_CH_TRIGSRC6_bp = 6 ; Channel Trigger Source bit 6 position
DMA_CH_TRIGSRC7_bm = 1<<7 ; Channel Trigger Source bit 7 mask
DMA_CH_TRIGSRC7_bp = 7 ; Channel Trigger Source bit 7 position

; DMA_CTRL masks
DMA_ENABLE_bm = 0x80 ; Enable bit mask
DMA_ENABLE_bp = 7 ; Enable bit position
DMA_RESET_bm = 0x40 ; Software Reset bit mask
DMA_RESET_bp = 6 ; Software Reset bit position
DMA_DBUFMODE_bm = 0x04 ; Double Buffering Mode bit mask
DMA_DBUFMODE_bp = 2 ; Double Buffering Mode bit position
DMA_PRIMODE_bm = 0x01 ; Channel Priority Mode bit mask
DMA_PRIMODE_bp = 0 ; Channel Priority Mode bit position

; DMA_INTFLAGS masks
DMA_CH1ERRIF_bm = 0x20 ; Channel 1 Block Transfer Error Interrupt Flag bit mask
DMA_CH1ERRIF_bp = 5 ; Channel 1 Block Transfer Error Interrupt Flag bit position
DMA_CH0ERRIF_bm = 0x10 ; Channel 0 Block Transfer Error Interrupt Flag bit mask
DMA_CH0ERRIF_bp = 4 ; Channel 0 Block Transfer Error Interrupt Flag bit position
DMA_CH1TRNIF_bm = 0x02 ; Channel 1 Transaction Complete Interrupt Flag bit mask
DMA_CH1TRNIF_bp = 1 ; Channel 1 Transaction Complete Interrupt Flag bit position
DMA_CH0TRNIF_bm = 0x01 ; Channel 0 Transaction Complete Interrupt Flag bit mask
DMA_CH0TRNIF_bp = 0 ; Channel 0 Transaction Complete Interrupt Flag bit position

; DMA_STATUS masks
DMA_CH1BUSY_bm = 0x20 ; Channel 1 Block Transfer Busy bit mask
DMA_CH1BUSY_bp = 5 ; Channel 1 Block Transfer Busy bit position
DMA_CH0BUSY_bm = 0x10 ; Channel 0 Block Transfer Busy bit mask
DMA_CH0BUSY_bp = 4 ; Channel 0 Block Transfer Busy bit position
DMA_CH1PEND_bm = 0x02 ; Channel 1 Block Transfer Pending bit mask
DMA_CH1PEND_bp = 1 ; Channel 1 Block Transfer Pending bit position
DMA_CH0PEND_bm = 0x01 ; Channel 0 Block Transfer Pending bit mask
DMA_CH0PEND_bp = 0 ; Channel 0 Block Transfer Pending bit position

; Burst mode
DMA_CH_BURSTLEN_1BYTE_gc = 0x00<<0 ; 1-byte burst mode
DMA_CH_BURSTLEN_2BYTE_gc = 0x01<<0 ; 2-byte burst mode
DMA_CH_BURSTLEN_4BYTE_gc = 0x02<<0 ; 4-byte burst mode
DMA_CH_BURSTLEN_8BYTE_gc = 0x03<<0 ; 8-byte burst mode

; Source address reload mode
DMA_CH_SRCRELOAD_NONE_gc = 0x00<<6 ; No reload
DMA_CH_SRCRELOAD_BLOCK_gc = 0x01<<6 ; Reload at end of block
DMA_CH_SRCRELOAD_BURST_gc = 0x02<<6 ; Reload at end of burst
DMA_CH_SRCRELOAD_TRANSACTION_gc = 0x03<<6 ; Reload at end of transaction

; Source addressing mode
DMA_CH_SRCDIR_FIXED_gc = 0x00<<4 ; Fixed
DMA_CH_SRCDIR_INC_gc = 0x01<<4 ; Increment
DMA_CH_SRCDIR_DEC_gc = 0x02<<4 ; Decrement

; Destination adress reload mode
DMA_CH_DESTRELOAD_NONE_gc = 0x00<<2 ; No reload
DMA_CH_DESTRELOAD_BLOCK_gc = 0x01<<2 ; Reload at end of block
DMA_CH_DESTRELOAD_BURST_gc = 0x02<<2 ; Reload at end of burst
DMA_CH_DESTRELOAD_TRANSACTION_gc = 0x03<<2 ; Reload at end of transaction

; Destination adressing mode
DMA_CH_DESTDIR_FIXED_gc = 0x00<<0 ; Fixed
DMA_CH_DESTDIR_INC_gc = 0x01<<0 ; Increment
DMA_CH_DESTDIR_DEC_gc = 0x02<<0 ; Decrement

; Transfer trigger source
DMA_CH_TRIGSRC_OFF_gc = 0x00<<0 ; Off software triggers only
DMA_CH_TRIGSRC_EVSYS_CH0_gc = 0x01<<0 ; Event System Channel 0
DMA_CH_TRIGSRC_EVSYS_CH1_gc = 0x02<<0 ; Event System Channel 1
DMA_CH_TRIGSRC_EVSYS_CH2_gc = 0x03<<0 ; Event System Channel 2
DMA_CH_TRIGSRC_ADCA_CH0_gc = 0x10<<0 ; ADCA Channel 0
DMA_CH_TRIGSRC_ADCB_CH0_gc = 0x20<<0 ; ADCB Channel 0
DMA_CH_TRIGSRC_TCC0_OVF_gc = 0x40<<0 ; Timer/Counter C0 Overflow
DMA_CH_TRIGSRC_TCC0_ERR_gc = 0x41<<0 ; Timer/Counter C0 Error
DMA_CH_TRIGSRC_TCC0_CCA_gc = 0x42<<0 ; Timer/Counter C0 Compare or Capture A
DMA_CH_TRIGSRC_TCC0_CCB_gc = 0x43<<0 ; Timer/Counter C0 Compare or Capture B
DMA_CH_TRIGSRC_TCC0_CCC_gc = 0x44<<0 ; Timer/Counter C0 Compare or Capture C
DMA_CH_TRIGSRC_TCC0_CCD_gc = 0x45<<0 ; Timer/Counter C0 Compare or Capture D
DMA_CH_TRIGSRC_TCC1_OVF_gc = 0x46<<0 ; Timer/Counter C1 Overflow
DMA_CH_TRIGSRC_TCC1_ERR_gc = 0x47<<0 ; Timer/Counter C1 Error
DMA_CH_TRIGSRC_TCC1_CCA_gc = 0x48<<0 ; Timer/Counter C1 Compare or Capture A
DMA_CH_TRIGSRC_TCC1_CCB_gc = 0x49<<0 ; Timer/Counter C1 Compare or Capture B
DMA_CH_TRIGSRC_SPIC_gc = 0x4A<<0 ; SPI C Transfer Complete
DMA_CH_TRIGSRC_USARTC0_RXC_gc = 0x4B<<0 ; USART C0 Receive Complete
DMA_CH_TRIGSRC_USARTC0_DRE_gc = 0x4C<<0 ; USART C0 Data Register Empty
DMA_CH_TRIGSRC_TCE0_OVF_gc = 0x80<<0 ; Timer/Counter E0 Overflow
DMA_CH_TRIGSRC_TCE0_ERR_gc = 0x81<<0 ; Timer/Counter E0 Error
DMA_CH_TRIGSRC_TCE0_CCA_gc = 0x82<<0 ; Timer/Counter E0 Compare or Capture A
DMA_CH_TRIGSRC_TCE0_CCB_gc = 0x83<<0 ; Timer/Counter E0 Compare or Capture B
DMA_CH_TRIGSRC_TCE0_CCC_gc = 0x84<<0 ; Timer/Counter E0 Compare or Capture C
DMA_CH_TRIGSRC_TCE0_CCD_gc = 0x85<<0 ; Timer/Counter E0 Compare or Capture D
DMA_CH_TRIGSRC_USARTE0_RXC_gc = 0x8B<<0 ; USART E0 Receive Complete
DMA_CH_TRIGSRC_USARTE0_DRE_gc = 0x8C<<0 ; USART E0 Data Register Empty

; Double buffering mode
DMA_DBUFMODE_DISABLED_gc = 0x00<<2 ; Double buffering disabled
DMA_DBUFMODE_CH01_gc = 0x01<<2 ; Double buffering enabled on channel 0/1

; Priority mode
DMA_PRIMODE_RR01_gc = 0x00<<0 ; Round Robin
DMA_PRIMODE_CH0RR1_gc = 0x01<<0 ; Channel 0 > channel 1

; Interrupt level
DMA_CH_ERRINTLVL_OFF_gc = 0x00<<2 ; Interrupt disabled
DMA_CH_ERRINTLVL_LO_gc = 0x01<<2 ; Low level
DMA_CH_ERRINTLVL_MED_gc = 0x02<<2 ; Medium level
DMA_CH_ERRINTLVL_HI_gc = 0x03<<2 ; High level

; Interrupt level
DMA_CH_TRNINTLVL_OFF_gc = 0x00<<0 ; Interrupt disabled
DMA_CH_TRNINTLVL_LO_gc = 0x01<<0 ; Low level
DMA_CH_TRNINTLVL_MED_gc = 0x02<<0 ; Medium level
DMA_CH_TRNINTLVL_HI_gc = 0x03<<0 ; High level


;***************************************************************************
;** EVSYS - Event System
;***************************************************************************/

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
; Masks for CHMUX aready defined

; EVSYS_CH2MUX masks
; Masks for CHMUX aready defined

; EVSYS_CH3MUX masks
; Masks for CHMUX aready defined

; EVSYS_CH0CTRL masks
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
; Masks for DIGFILT aready defined

; EVSYS_CH2CTRL masks
; Masks for DIGFILT aready defined

; EVSYS_CH3CTRL masks
; Masks for DIGFILT aready defined

; Quadrature Decoder Index Recognition Mode
EVSYS_QDIRM_00_gc = 0x00<<5 ; QDPH0 = 0, QDPH90 = 0
EVSYS_QDIRM_01_gc = 0x01<<5 ; QDPH0 = 0, QDPH90 = 1
EVSYS_QDIRM_10_gc = 0x02<<5 ; QDPH0 = 1, QDPH90 = 0
EVSYS_QDIRM_11_gc = 0x03<<5 ; QDPH0 = 1, QDPH90 = 1

; Digital filter coefficient
EVSYS_DIGFILT_1SAMPLE_gc = 0x00<<0 ; 1 SAMPLE
EVSYS_DIGFILT_2SAMPLES_gc = 0x01<<0 ; 2 SAMPLES
EVSYS_DIGFILT_3SAMPLES_gc = 0x02<<0 ; 3 SAMPLES
EVSYS_DIGFILT_4SAMPLES_gc = 0x03<<0 ; 4 SAMPLES
EVSYS_DIGFILT_5SAMPLES_gc = 0x04<<0 ; 5 SAMPLES
EVSYS_DIGFILT_6SAMPLES_gc = 0x05<<0 ; 6 SAMPLES
EVSYS_DIGFILT_7SAMPLES_gc = 0x06<<0 ; 7 SAMPLES
EVSYS_DIGFILT_8SAMPLES_gc = 0x07<<0 ; 8 SAMPLES

; Event Channel multiplexer input selection
EVSYS_CHMUX_OFF_gc = 0x00<<0 ; Off
EVSYS_CHMUX_RTC_OVF_gc = 0x08<<0 ; RTC Overflow
EVSYS_CHMUX_RTC_CMP_gc = 0x09<<0 ; RTC Compare Match
EVSYS_CHMUX_USB_gc = 0x0A<<0 ; USB Setup, SOF, CRC error and UNF/OVF
EVSYS_CHMUX_ACA_CH0_gc = 0x10<<0 ; Analog Comparator A Channel 0
EVSYS_CHMUX_ACA_CH1_gc = 0x11<<0 ; Analog Comparator A Channel 1
EVSYS_CHMUX_ACA_WIN_gc = 0x12<<0 ; Analog Comparator A Window
EVSYS_CHMUX_ACB_CH0_gc = 0x13<<0 ; Analog Comparator B Channel 0
EVSYS_CHMUX_ACB_CH1_gc = 0x14<<0 ; Analog Comparator B Channel 1
EVSYS_CHMUX_ACB_WIN_gc = 0x15<<0 ; Analog Comparator B Window
EVSYS_CHMUX_ADCA_CH0_gc = 0x20<<0 ; ADC A Channel
EVSYS_CHMUX_ADCB_CH0_gc = 0x24<<0 ; ADC B Channel
EVSYS_CHMUX_PORTA_PIN0_gc = 0x50<<0 ; Port A, Pin0
EVSYS_CHMUX_PORTA_PIN1_gc = 0x51<<0 ; Port A, Pin1
EVSYS_CHMUX_PORTA_PIN2_gc = 0x52<<0 ; Port A, Pin2
EVSYS_CHMUX_PORTA_PIN3_gc = 0x53<<0 ; Port A, Pin3
EVSYS_CHMUX_PORTA_PIN4_gc = 0x54<<0 ; Port A, Pin4
EVSYS_CHMUX_PORTA_PIN5_gc = 0x55<<0 ; Port A, Pin5
EVSYS_CHMUX_PORTA_PIN6_gc = 0x56<<0 ; Port A, Pin6
EVSYS_CHMUX_PORTA_PIN7_gc = 0x57<<0 ; Port A, Pin7
EVSYS_CHMUX_PORTB_PIN0_gc = 0x58<<0 ; Port B, Pin0
EVSYS_CHMUX_PORTB_PIN1_gc = 0x59<<0 ; Port B, Pin1
EVSYS_CHMUX_PORTB_PIN2_gc = 0x5A<<0 ; Port B, Pin2
EVSYS_CHMUX_PORTB_PIN3_gc = 0x5B<<0 ; Port B, Pin3
EVSYS_CHMUX_PORTB_PIN4_gc = 0x5C<<0 ; Port B, Pin4
EVSYS_CHMUX_PORTB_PIN5_gc = 0x5D<<0 ; Port B, Pin5
EVSYS_CHMUX_PORTB_PIN6_gc = 0x5E<<0 ; Port B, Pin6
EVSYS_CHMUX_PORTB_PIN7_gc = 0x5F<<0 ; Port B, Pin7
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
EVSYS_CHMUX_PORTE_PIN0_gc = 0x70<<0 ; Port E, Pin0
EVSYS_CHMUX_PORTE_PIN1_gc = 0x71<<0 ; Port E, Pin1
EVSYS_CHMUX_PORTE_PIN2_gc = 0x72<<0 ; Port E, Pin2
EVSYS_CHMUX_PORTE_PIN3_gc = 0x73<<0 ; Port E, Pin3
EVSYS_CHMUX_PORTE_PIN4_gc = 0x74<<0 ; Port E, Pin4
EVSYS_CHMUX_PORTE_PIN5_gc = 0x75<<0 ; Port E, Pin5
EVSYS_CHMUX_PORTE_PIN6_gc = 0x76<<0 ; Port E, Pin6
EVSYS_CHMUX_PORTE_PIN7_gc = 0x77<<0 ; Port E, Pin7
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
EVSYS_CHMUX_TCC0_OVF_gc = 0xC0<<0 ; Timer/Counter C0 Overflow
EVSYS_CHMUX_TCC0_ERR_gc = 0xC1<<0 ; Timer/Counter C0 Error
EVSYS_CHMUX_TCC0_CCA_gc = 0xC4<<0 ; Timer/Counter C0 Compare or Capture A
EVSYS_CHMUX_TCC0_CCB_gc = 0xC5<<0 ; Timer/Counter C0 Compare or Capture B
EVSYS_CHMUX_TCC0_CCC_gc = 0xC6<<0 ; Timer/Counter C0 Compare or Capture C
EVSYS_CHMUX_TCC0_CCD_gc = 0xC7<<0 ; Timer/Counter C0 Compare or Capture D
EVSYS_CHMUX_TCC1_OVF_gc = 0xC8<<0 ; Timer/Counter C1 Overflow
EVSYS_CHMUX_TCC1_ERR_gc = 0xC9<<0 ; Timer/Counter C1 Error
EVSYS_CHMUX_TCC1_CCA_gc = 0xCC<<0 ; Timer/Counter C1 Compare or Capture A
EVSYS_CHMUX_TCC1_CCB_gc = 0xCD<<0 ; Timer/Counter C1 Compare or Capture B
EVSYS_CHMUX_TCE0_OVF_gc = 0xE0<<0 ; Timer/Counter E0 Overflow
EVSYS_CHMUX_TCE0_ERR_gc = 0xE1<<0 ; Timer/Counter E0 Error
EVSYS_CHMUX_TCE0_CCA_gc = 0xE4<<0 ; Timer/Counter E0 Compare or Capture A
EVSYS_CHMUX_TCE0_CCB_gc = 0xE5<<0 ; Timer/Counter E0 Compare or Capture B
EVSYS_CHMUX_TCE0_CCC_gc = 0xE6<<0 ; Timer/Counter E0 Compare or Capture C
EVSYS_CHMUX_TCE0_CCD_gc = 0xE7<<0 ; Timer/Counter E0 Compare or Capture D


;***************************************************************************
;** NVM - Non Volatile Memory Controller
;***************************************************************************/

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
NVM_EEMAPEN_bm = 0x08 ; EEPROM Mapping Enable bit mask
NVM_EEMAPEN_bp = 3 ; EEPROM Mapping Enable bit position
NVM_FPRM_bm = 0x04 ; Flash Power Reduction Enable bit mask
NVM_FPRM_bp = 2 ; Flash Power Reduction Enable bit position
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
NVM_CMD_READ_EEPROM_gc = 0x06<<0 ; Read EEPROM
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
NVM_CMD_LOAD_EEPROM_BUFFER_gc = 0x33<<0 ; Load EEPROM page buffer
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


;***************************************************************************
;** ADC - Analog/Digital Converter
;***************************************************************************/

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
ADC_CH_MUXPOS_gm = 0x78 ; MUX selection on Positive ADC input group mask
ADC_CH_MUXPOS_gp = 3 ; MUX selection on Positive ADC input group position
ADC_CH_MUXPOS0_bm = 1<<3 ; MUX selection on Positive ADC input bit 0 mask
ADC_CH_MUXPOS0_bp = 3 ; MUX selection on Positive ADC input bit 0 position
ADC_CH_MUXPOS1_bm = 1<<4 ; MUX selection on Positive ADC input bit 1 mask
ADC_CH_MUXPOS1_bp = 4 ; MUX selection on Positive ADC input bit 1 position
ADC_CH_MUXPOS2_bm = 1<<5 ; MUX selection on Positive ADC input bit 2 mask
ADC_CH_MUXPOS2_bp = 5 ; MUX selection on Positive ADC input bit 2 position
ADC_CH_MUXPOS3_bm = 1<<6 ; MUX selection on Positive ADC input bit 3 mask
ADC_CH_MUXPOS3_bp = 6 ; MUX selection on Positive ADC input bit 3 position
ADC_CH_MUXINT_gm = 0x78 ; MUX selection on Internal ADC input group mask
ADC_CH_MUXINT_gp = 3 ; MUX selection on Internal ADC input group position
ADC_CH_MUXINT0_bm = 1<<3 ; MUX selection on Internal ADC input bit 0 mask
ADC_CH_MUXINT0_bp = 3 ; MUX selection on Internal ADC input bit 0 position
ADC_CH_MUXINT1_bm = 1<<4 ; MUX selection on Internal ADC input bit 1 mask
ADC_CH_MUXINT1_bp = 4 ; MUX selection on Internal ADC input bit 1 position
ADC_CH_MUXINT2_bm = 1<<5 ; MUX selection on Internal ADC input bit 2 mask
ADC_CH_MUXINT2_bp = 5 ; MUX selection on Internal ADC input bit 2 position
ADC_CH_MUXINT3_bm = 1<<6 ; MUX selection on Internal ADC input bit 3 mask
ADC_CH_MUXINT3_bp = 6 ; MUX selection on Internal ADC input bit 3 position
ADC_CH_MUXNEG_gm = 0x03 ; MUX selection on Negative ADC input group mask
ADC_CH_MUXNEG_gp = 0 ; MUX selection on Negative ADC input group position
ADC_CH_MUXNEG0_bm = 1<<0 ; MUX selection on Negative ADC input bit 0 mask
ADC_CH_MUXNEG0_bp = 0 ; MUX selection on Negative ADC input bit 0 position
ADC_CH_MUXNEG1_bm = 1<<1 ; MUX selection on Negative ADC input bit 1 mask
ADC_CH_MUXNEG1_bp = 1 ; MUX selection on Negative ADC input bit 1 position

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
ADC_CH_CHIF_bm = 0x01 ; Channel Interrupt Flag bit mask
ADC_CH_CHIF_bp = 0 ; Channel Interrupt Flag bit position

; ADC_CH_SCAN masks
ADC_CH_OFFSET_gm = 0xF0 ; Positive MUX setting offset group mask
ADC_CH_OFFSET_gp = 4 ; Positive MUX setting offset group position
ADC_CH_OFFSET0_bm = 1<<4 ; Positive MUX setting offset bit 0 mask
ADC_CH_OFFSET0_bp = 4 ; Positive MUX setting offset bit 0 position
ADC_CH_OFFSET1_bm = 1<<5 ; Positive MUX setting offset bit 1 mask
ADC_CH_OFFSET1_bp = 5 ; Positive MUX setting offset bit 1 position
ADC_CH_OFFSET2_bm = 1<<6 ; Positive MUX setting offset bit 2 mask
ADC_CH_OFFSET2_bp = 6 ; Positive MUX setting offset bit 2 position
ADC_CH_OFFSET3_bm = 1<<7 ; Positive MUX setting offset bit 3 mask
ADC_CH_OFFSET3_bp = 7 ; Positive MUX setting offset bit 3 position
ADC_CH_COUNT_gm = 0x0F ; Number of Channels included in scan group mask
ADC_CH_COUNT_gp = 0 ; Number of Channels included in scan group position
ADC_CH_COUNT0_bm = 1<<0 ; Number of Channels included in scan bit 0 mask
ADC_CH_COUNT0_bp = 0 ; Number of Channels included in scan bit 0 position
ADC_CH_COUNT1_bm = 1<<1 ; Number of Channels included in scan bit 1 mask
ADC_CH_COUNT1_bp = 1 ; Number of Channels included in scan bit 1 position
ADC_CH_COUNT2_bm = 1<<2 ; Number of Channels included in scan bit 2 mask
ADC_CH_COUNT2_bp = 2 ; Number of Channels included in scan bit 2 position
ADC_CH_COUNT3_bm = 1<<3 ; Number of Channels included in scan bit 3 mask
ADC_CH_COUNT3_bp = 3 ; Number of Channels included in scan bit 3 position

;Legacy
ADC_CH_SCANNUM_gm = 0x0F ; Number of Channels included in scan group mask
ADC_CH_SCANNUM_gp = 0 ; Number of Channels included in scan group position
ADC_CH_SCANNUM0_bm = 1<<0 ; Number of Channels included in scan bit 0 mask
ADC_CH_SCANNUM0_bp = 0 ; Number of Channels included in scan bit 0 position
ADC_CH_SCANNUM1_bm = 1<<1 ; Number of Channels included in scan bit 1 mask
ADC_CH_SCANNUM1_bp = 1 ; Number of Channels included in scan bit 1 position
ADC_CH_SCANNUM2_bm = 1<<2 ; Number of Channels included in scan bit 2 mask
ADC_CH_SCANNUM2_bp = 2 ; Number of Channels included in scan bit 2 position
ADC_CH_SCANNUM3_bm = 1<<3 ; Number of Channels included in scan bit 3 mask
ADC_CH_SCANNUM3_bp = 3 ; Number of Channels included in scan bit 3 position

; ADC_CTRLA masks
ADC_CH0START_bm = 0x04 ; Channel 0 Start Conversion bit mask
ADC_CH0START_bp = 2 ; Channel 0 Start Conversion bit position
ADC_FLUSH_bm = 0x02 ; ADC Flush bit mask
ADC_FLUSH_bp = 1 ; ADC Flush bit position
ADC_ENABLE_bm = 0x01 ; Enable ADC bit mask
ADC_ENABLE_bp = 0 ; Enable ADC bit position

; ADC_CTRLB masks
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
ADC_EVSEL_gm = 0x18 ; Event Input Select group mask
ADC_EVSEL_gp = 3 ; Event Input Select group position
ADC_EVSEL0_bm = 1<<3 ; Event Input Select bit 0 mask
ADC_EVSEL0_bp = 3 ; Event Input Select bit 0 position
ADC_EVSEL1_bm = 1<<4 ; Event Input Select bit 1 mask
ADC_EVSEL1_bp = 4 ; Event Input Select bit 1 position
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
ADC_SAMPVAL_gm = 0x03F ; Sampling time control register group mask
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
ADC_CH_MUXINT_SCALEDVCC_gc = 0x02<<3 ; 1/10 scaled VCC

; Negative input multiplexer selection
ADC_CH_MUXNEG_PIN0_gc = 0x00<<0 ; Input pin 0
ADC_CH_MUXNEG_PIN1_gc = 0x01<<0 ; Input pin 1
ADC_CH_MUXNEG_PIN2_gc = 0x02<<0 ; Input pin 2
ADC_CH_MUXNEG_PIN3_gc = 0x03<<0 ; Input pin 3
ADC_CH_MUXNEG_PIN4_gc = 0x00<<0 ; Input pin 4
ADC_CH_MUXNEG_PIN5_gc = 0x01<<0 ; Input pin 5
ADC_CH_MUXNEG_PIN6_gc = 0x02<<0 ; Input pin 6
ADC_CH_MUXNEG_PIN7_gc = 0x03<<0 ; Input pin 7

; Input mode
ADC_CH_INPUTMODE_INTERNAL_gc = 0x00<<0 ; Internal inputs, no gain
ADC_CH_INPUTMODE_SINGLEENDED_gc = 0x01<<0 ; Single-ended input, no gain
ADC_CH_INPUTMODE_DIFF_gc = 0x02<<0 ; Differential input, no gain
ADC_CH_INPUTMODE_DIFFWGAIN_gc = 0x03<<0 ; Differential input, with gain

; Gain factor
ADC_CH_GAIN_1X_gc = 0x00<<2 ; 1x gain
ADC_CH_GAIN_2X_gc = 0x01<<2 ; 2x gain
ADC_CH_GAIN_4X_gc = 0x02<<2 ; 4x gain
ADC_CH_GAIN_8X_gc = 0x03<<2 ; 8x gain
ADC_CH_GAIN_16X_gc = 0x04<<2 ; 16x gain
ADC_CH_GAIN_32X_gc = 0x05<<2 ; 32x gain
ADC_CH_GAIN_64X_gc = 0x06<<2 ; 64x gain
ADC_CH_GAIN_DIV2_gc = 0x07<<2 ; x/2 gain

; Conversion result resolution
ADC_RESOLUTION_12BIT_gc = 0x00<<1 ; 12-bit right-adjusted result
ADC_RESOLUTION_8BIT_gc = 0x02<<1 ; 8-bit right-adjusted result
ADC_RESOLUTION_LEFT12BIT_gc = 0x03<<1 ; 12-bit left-adjusted result

; Voltage reference selection
ADC_REFSEL_INT1V_gc = 0x00<<4 ; Internal 1V
ADC_REFSEL_VCC_gc = 0x01<<4 ; Internal VCC / 1.6
ADC_REFSEL_AREFA_gc = 0x02<<4 ; External reference on PORT A
ADC_REFSEL_AREFB_gc = 0x03<<4 ; External reference on PORT B
ADC_REFSEL_VCCDIV2_gc = 0x04<<4 ; Internal VCC / 2

; Event channel input selection
ADC_EVSEL_0_gc = 0x00<<3 ; Event Channel 0
ADC_EVSEL_1_gc = 0x01<<3 ; Event Channel 1
ADC_EVSEL_2_gc = 0x02<<3 ; Event Channel 2
ADC_EVSEL_3_gc = 0x03<<3 ; Event Channel 3

; Event action selection
ADC_EVACT_NONE_gc = 0x00<<0 ; No event action
ADC_EVACT_CH0_gc = 0x01<<0 ; First event triggers channel 0

; Interupt mode
ADC_CH_INTMODE_COMPLETE_gc = 0x00<<2 ; Interrupt on conversion complete
ADC_CH_INTMODE_BELOW_gc = 0x01<<2 ; Interrupt on result below compare value
ADC_CH_INTMODE_ABOVE_gc = 0x03<<2 ; Interrupt on result above compare value

; Interrupt level
ADC_CH_INTLVL_OFF_gc = 0x00<<0 ; Interrupt disabled
ADC_CH_INTLVL_LO_gc = 0x01<<0 ; Low level
ADC_CH_INTLVL_MED_gc = 0x02<<0 ; Medium level
ADC_CH_INTLVL_HI_gc = 0x03<<0 ; High level

; Clock prescaler
ADC_PRESCALER_DIV4_gc = 0x00<<0 ; Divide clock by 4
ADC_PRESCALER_DIV8_gc = 0x01<<0 ; Divide clock by 8
ADC_PRESCALER_DIV16_gc = 0x02<<0 ; Divide clock by 16
ADC_PRESCALER_DIV32_gc = 0x03<<0 ; Divide clock by 32
ADC_PRESCALER_DIV64_gc = 0x04<<0 ; Divide clock by 64
ADC_PRESCALER_DIV128_gc = 0x05<<0 ; Divide clock by 128
ADC_PRESCALER_DIV256_gc = 0x06<<0 ; Divide clock by 256
ADC_PRESCALER_DIV512_gc = 0x07<<0 ; Divide clock by 512


;***************************************************************************
;** AC - Analog Comparator
;***************************************************************************/

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
; Masks for INTMODE aready defined
; Masks for INTLVL aready defined
; Masks for HYSMODE aready defined
; Masks for ENABLE aready defined

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
; Masks for MUXPOS aready defined
; Masks for MUXNEG aready defined

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
AC_CURRMODE_bm = 0x40 ; Current Mode bit mask
AC_CURRMODE_bp = 6 ; Current Mode bit position
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

; Negative input multiplexer selection
AC_MUXNEG_PIN0_gc = 0x00<<0 ; Pin 0
AC_MUXNEG_PIN1_gc = 0x01<<0 ; Pin 1
AC_MUXNEG_PIN3_gc = 0x02<<0 ; Pin 3
AC_MUXNEG_PIN5_gc = 0x03<<0 ; Pin 5
AC_MUXNEG_PIN7_gc = 0x04<<0 ; Pin 7
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


;***************************************************************************
;** RTC - Real-Time Clounter
;***************************************************************************/

; RTC_CTRL masks
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


;***************************************************************************
;** TWI - Two-Wire Interface
;***************************************************************************/

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

; TWI_CTRL masks
TWI_SDAHOLD_gm = 0x06 ; SDA Hold Time Enable group mask
TWI_SDAHOLD_gp = 1 ; SDA Hold Time Enable group position
TWI_SDAHOLD0_bm = 1<<1 ; SDA Hold Time Enable bit 0 mask
TWI_SDAHOLD0_bp = 1 ; SDA Hold Time Enable bit 0 position
TWI_SDAHOLD1_bm = 1<<2 ; SDA Hold Time Enable bit 1 mask
TWI_SDAHOLD1_bp = 2 ; SDA Hold Time Enable bit 1 position
TWI_EDIEN_bm = 0x01 ; External Driver Interface Enable bit mask
TWI_EDIEN_bp = 0 ; External Driver Interface Enable bit position

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


;***************************************************************************
;** USB - USB
;***************************************************************************/

; USB_EP_STATUS masks
USB_EP_STALLF_bm = 0x80 ; Endpoint Stall Flag bit mask
USB_EP_STALLF_bp = 7 ; Endpoint Stall Flag bit position
USB_EP_CRC_bm = 0x80 ; CRC Error Flag bit mask
USB_EP_CRC_bp = 7 ; CRC Error Flag bit position
USB_EP_UNF_bm = 0x40 ; Underflow Enpoint FLag bit mask
USB_EP_UNF_bp = 6 ; Underflow Enpoint FLag bit position
USB_EP_OVF_bm = 0x40 ; Overflow Enpoint Flag for Output Endpoints bit mask
USB_EP_OVF_bp = 6 ; Overflow Enpoint Flag for Output Endpoints bit position
USB_EP_TRNCOMPL0_bm = 0x20 ; Transaction Complete 0 Flag bit mask
USB_EP_TRNCOMPL0_bp = 5 ; Transaction Complete 0 Flag bit position
USB_EP_TRNCOMPL1_bm = 0x10 ; Transaction Complete 1 Flag bit mask
USB_EP_TRNCOMPL1_bp = 4 ; Transaction Complete 1 Flag bit position
USB_EP_SETUP_bm = 0x10 ; SETUP Transaction Complete Flag bit mask
USB_EP_SETUP_bp = 4 ; SETUP Transaction Complete Flag bit position
USB_EP_BANK_bm = 0x08 ; Bank Select bit mask
USB_EP_BANK_bp = 3 ; Bank Select bit position
USB_EP_BUSNACK1_bm = 0x04 ; Data Buffer 1 Not Acknowledge bit mask
USB_EP_BUSNACK1_bp = 2 ; Data Buffer 1 Not Acknowledge bit position
USB_EP_BUSNACK0_bm = 0x02 ; Data Buffer 0 Not Acknowledge bit mask
USB_EP_BUSNACK0_bp = 1 ; Data Buffer 0 Not Acknowledge bit position
USB_EP_TOGGLE_bm = 0x01 ; Data Toggle bit mask
USB_EP_TOGGLE_bp = 0 ; Data Toggle bit position

; USB_EP_CTRL masks
USB_EP_TYPE_gm = 0xC0 ; Endpoint Type group mask
USB_EP_TYPE_gp = 6 ; Endpoint Type group position
USB_EP_TYPE0_bm = 1<<6 ; Endpoint Type bit 0 mask
USB_EP_TYPE0_bp = 6 ; Endpoint Type bit 0 position
USB_EP_TYPE1_bm = 1<<7 ; Endpoint Type bit 1 mask
USB_EP_TYPE1_bp = 7 ; Endpoint Type bit 1 position
USB_EP_MULTIPKT_bm = 0x20 ; Multi Packet Transfer Enable bit mask
USB_EP_MULTIPKT_bp = 5 ; Multi Packet Transfer Enable bit position
USB_EP_PINGPONG_bm = 0x10 ; Ping-Pong Enable bit mask
USB_EP_PINGPONG_bp = 4 ; Ping-Pong Enable bit position
USB_EP_INTDSBL_bm = 0x08 ; Interrupt Disable bit mask
USB_EP_INTDSBL_bp = 3 ; Interrupt Disable bit position
USB_EP_STALL_bm = 0x04 ; Data Stall bit mask
USB_EP_STALL_bp = 2 ; Data Stall bit position
USB_EP_BUFSIZE_gm = 0x07 ; Data Buffer Size group mask
USB_EP_BUFSIZE_gp = 0 ; Data Buffer Size group position
USB_EP_BUFSIZE0_bm = 1<<0 ; Data Buffer Size bit 0 mask
USB_EP_BUFSIZE0_bp = 0 ; Data Buffer Size bit 0 position
USB_EP_BUFSIZE1_bm = 1<<1 ; Data Buffer Size bit 1 mask
USB_EP_BUFSIZE1_bp = 1 ; Data Buffer Size bit 1 position
USB_EP_BUFSIZE2_bm = 1<<2 ; Data Buffer Size bit 2 mask
USB_EP_BUFSIZE2_bp = 2 ; Data Buffer Size bit 2 position

; USB_EP_CNT masks
USB_EP_ZLP_bm = 0x8000 ; Zero Length Packet bit mask
USB_EP_ZLP_bp = 15 ; Zero Length Packet bit position

; USB_CTRLA masks
USB_ENABLE_bm = 0x80 ; USB Enable bit mask
USB_ENABLE_bp = 7 ; USB Enable bit position
USB_SPEED_bm = 0x40 ; Speed Select bit mask
USB_SPEED_bp = 6 ; Speed Select bit position
USB_FIFOEN_bm = 0x20 ; USB FIFO Enable bit mask
USB_FIFOEN_bp = 5 ; USB FIFO Enable bit position
USB_STFRNUM_bm = 0x10 ; Store Frame Number Enable bit mask
USB_STFRNUM_bp = 4 ; Store Frame Number Enable bit position
USB_MAXEP_gm = 0x0F ; Maximum Endpoint Addresses group mask
USB_MAXEP_gp = 0 ; Maximum Endpoint Addresses group position
USB_MAXEP0_bm = 1<<0 ; Maximum Endpoint Addresses bit 0 mask
USB_MAXEP0_bp = 0 ; Maximum Endpoint Addresses bit 0 position
USB_MAXEP1_bm = 1<<1 ; Maximum Endpoint Addresses bit 1 mask
USB_MAXEP1_bp = 1 ; Maximum Endpoint Addresses bit 1 position
USB_MAXEP2_bm = 1<<2 ; Maximum Endpoint Addresses bit 2 mask
USB_MAXEP2_bp = 2 ; Maximum Endpoint Addresses bit 2 position
USB_MAXEP3_bm = 1<<3 ; Maximum Endpoint Addresses bit 3 mask
USB_MAXEP3_bp = 3 ; Maximum Endpoint Addresses bit 3 position

; USB_CTRLB masks
USB_PULLRST_bm = 0x10 ; Pull during Reset bit mask
USB_PULLRST_bp = 4 ; Pull during Reset bit position
USB_RWAKEUP_bm = 0x04 ; Remote Wake-up bit mask
USB_RWAKEUP_bp = 2 ; Remote Wake-up bit position
USB_GNACK_bm = 0x02 ; Global NACK bit mask
USB_GNACK_bp = 1 ; Global NACK bit position
USB_ATTACH_bm = 0x01 ; Attach bit mask
USB_ATTACH_bp = 0 ; Attach bit position

; USB_STATUS masks
USB_URESUME_bm = 0x08 ; Upstream Resume bit mask
USB_URESUME_bp = 3 ; Upstream Resume bit position
USB_RESUME_bm = 0x04 ; Resume bit mask
USB_RESUME_bp = 2 ; Resume bit position
USB_SUSPEND_bm = 0x02 ; Bus Suspended bit mask
USB_SUSPEND_bp = 1 ; Bus Suspended bit position
USB_BUSRST_bm = 0x01 ; Bus Reset bit mask
USB_BUSRST_bp = 0 ; Bus Reset bit position

; USB_ADDR masks
USB_ADDR_gm = 0x7F ; Device Address group mask
USB_ADDR_gp = 0 ; Device Address group position
USB_ADDR0_bm = 1<<0 ; Device Address bit 0 mask
USB_ADDR0_bp = 0 ; Device Address bit 0 position
USB_ADDR1_bm = 1<<1 ; Device Address bit 1 mask
USB_ADDR1_bp = 1 ; Device Address bit 1 position
USB_ADDR2_bm = 1<<2 ; Device Address bit 2 mask
USB_ADDR2_bp = 2 ; Device Address bit 2 position
USB_ADDR3_bm = 1<<3 ; Device Address bit 3 mask
USB_ADDR3_bp = 3 ; Device Address bit 3 position
USB_ADDR4_bm = 1<<4 ; Device Address bit 4 mask
USB_ADDR4_bp = 4 ; Device Address bit 4 position
USB_ADDR5_bm = 1<<5 ; Device Address bit 5 mask
USB_ADDR5_bp = 5 ; Device Address bit 5 position
USB_ADDR6_bm = 1<<6 ; Device Address bit 6 mask
USB_ADDR6_bp = 6 ; Device Address bit 6 position

; USB_FIFOWP masks
USB_FIFOWP_gm = 0x1F ; FIFO Write Pointer group mask
USB_FIFOWP_gp = 0 ; FIFO Write Pointer group position
USB_FIFOWP0_bm = 1<<0 ; FIFO Write Pointer bit 0 mask
USB_FIFOWP0_bp = 0 ; FIFO Write Pointer bit 0 position
USB_FIFOWP1_bm = 1<<1 ; FIFO Write Pointer bit 1 mask
USB_FIFOWP1_bp = 1 ; FIFO Write Pointer bit 1 position
USB_FIFOWP2_bm = 1<<2 ; FIFO Write Pointer bit 2 mask
USB_FIFOWP2_bp = 2 ; FIFO Write Pointer bit 2 position
USB_FIFOWP3_bm = 1<<3 ; FIFO Write Pointer bit 3 mask
USB_FIFOWP3_bp = 3 ; FIFO Write Pointer bit 3 position
USB_FIFOWP4_bm = 1<<4 ; FIFO Write Pointer bit 4 mask
USB_FIFOWP4_bp = 4 ; FIFO Write Pointer bit 4 position

; USB_FIFORP masks
USB_FIFORP_gm = 0x1F ; FIFO Read Pointer group mask
USB_FIFORP_gp = 0 ; FIFO Read Pointer group position
USB_FIFORP0_bm = 1<<0 ; FIFO Read Pointer bit 0 mask
USB_FIFORP0_bp = 0 ; FIFO Read Pointer bit 0 position
USB_FIFORP1_bm = 1<<1 ; FIFO Read Pointer bit 1 mask
USB_FIFORP1_bp = 1 ; FIFO Read Pointer bit 1 position
USB_FIFORP2_bm = 1<<2 ; FIFO Read Pointer bit 2 mask
USB_FIFORP2_bp = 2 ; FIFO Read Pointer bit 2 position
USB_FIFORP3_bm = 1<<3 ; FIFO Read Pointer bit 3 mask
USB_FIFORP3_bp = 3 ; FIFO Read Pointer bit 3 position
USB_FIFORP4_bm = 1<<4 ; FIFO Read Pointer bit 4 mask
USB_FIFORP4_bp = 4 ; FIFO Read Pointer bit 4 position

; USB_INTCTRLA masks
USB_SOFIE_bm = 0x80 ; Start Of Frame Interrupt Enable bit mask
USB_SOFIE_bp = 7 ; Start Of Frame Interrupt Enable bit position
USB_BUSEVIE_bm = 0x40 ; Bus Event Interrupt Enable bit mask
USB_BUSEVIE_bp = 6 ; Bus Event Interrupt Enable bit position
USB_BUSERRIE_bm = 0x20 ; Bus Error Interrupt Enable bit mask
USB_BUSERRIE_bp = 5 ; Bus Error Interrupt Enable bit position
USB_STALLIE_bm = 0x10 ; STALL Interrupt Enable bit mask
USB_STALLIE_bp = 4 ; STALL Interrupt Enable bit position
USB_INTLVL_gm = 0x03 ; Interrupt Level group mask
USB_INTLVL_gp = 0 ; Interrupt Level group position
USB_INTLVL0_bm = 1<<0 ; Interrupt Level bit 0 mask
USB_INTLVL0_bp = 0 ; Interrupt Level bit 0 position
USB_INTLVL1_bm = 1<<1 ; Interrupt Level bit 1 mask
USB_INTLVL1_bp = 1 ; Interrupt Level bit 1 position

; USB_INTCTRLB masks
USB_TRNIE_bm = 0x02 ; Transaction Complete Interrupt Enable bit mask
USB_TRNIE_bp = 1 ; Transaction Complete Interrupt Enable bit position
USB_SETUPIE_bm = 0x01 ; SETUP Transaction Complete Interrupt Enable bit mask
USB_SETUPIE_bp = 0 ; SETUP Transaction Complete Interrupt Enable bit position

; USB_INTFLAGSACLR masks
USB_SOFIF_bm = 0x80 ; Start Of Frame Interrupt Flag bit mask
USB_SOFIF_bp = 7 ; Start Of Frame Interrupt Flag bit position
USB_SUSPENDIF_bm = 0x40 ; Suspend Interrupt Flag bit mask
USB_SUSPENDIF_bp = 6 ; Suspend Interrupt Flag bit position
USB_RESUMEIF_bm = 0x20 ; Resume Interrupt Flag bit mask
USB_RESUMEIF_bp = 5 ; Resume Interrupt Flag bit position
USB_RSTIF_bm = 0x10 ; Reset Interrupt Flag bit mask
USB_RSTIF_bp = 4 ; Reset Interrupt Flag bit position
USB_CRCIF_bm = 0x08 ; Isochronous CRC Error Interrupt Flag bit mask
USB_CRCIF_bp = 3 ; Isochronous CRC Error Interrupt Flag bit position
USB_UNFIF_bm = 0x04 ; Underflow Interrupt Flag bit mask
USB_UNFIF_bp = 2 ; Underflow Interrupt Flag bit position
USB_OVFIF_bm = 0x02 ; Overflow Interrupt Flag bit mask
USB_OVFIF_bp = 1 ; Overflow Interrupt Flag bit position
USB_STALLIF_bm = 0x01 ; STALL Interrupt Flag bit mask
USB_STALLIF_bp = 0 ; STALL Interrupt Flag bit position

; USB_INTFLAGSASET masks
; Masks for SOFIF aready defined
; Masks for SUSPENDIF aready defined
; Masks for RESUMEIF aready defined
; Masks for RSTIF aready defined
; Masks for CRCIF aready defined
; Masks for UNFIF aready defined
; Masks for OVFIF aready defined
; Masks for STALLIF aready defined

; USB_INTFLAGSBCLR masks
USB_TRNIF_bm = 0x02 ; Transaction Complete Interrupt Flag bit mask
USB_TRNIF_bp = 1 ; Transaction Complete Interrupt Flag bit position
USB_SETUPIF_bm = 0x01 ; SETUP Transaction Complete Interrupt Flag bit mask
USB_SETUPIF_bp = 0 ; SETUP Transaction Complete Interrupt Flag bit position

; USB_INTFLAGSBSET masks
; Masks for TRNIF aready defined
; Masks for SETUPIF aready defined

; Interrupt level
USB_INTLVL_OFF_gc = 0x00<<0 ; Interrupt disabled
USB_INTLVL_LO_gc = 0x01<<0 ; Low level
USB_INTLVL_MED_gc = 0x02<<0 ; Medium level
USB_INTLVL_HI_gc = 0x03<<0 ; High level

; USB Endpoint Type
USB_EP_TYPE_DISABLE_gc = 0x00<<6 ; Endpoint Disabled
USB_EP_TYPE_CONTROL_gc = 0x01<<6 ; Control
USB_EP_TYPE_BULK_gc = 0x02<<6 ; Bulk/Interrupt
USB_EP_TYPE_ISOCHRONOUS_gc = 0x03<<6 ; Isochronous

; USB Endpoint Buffersize
USB_EP_BUFSIZE_8_gc = 0x00<<0 ; 8 bytes buffer size
USB_EP_BUFSIZE_16_gc = 0x01<<0 ; 16 bytes buffer size
USB_EP_BUFSIZE_32_gc = 0x02<<0 ; 32 bytes buffer size
USB_EP_BUFSIZE_64_gc = 0x03<<0 ; 64 bytes buffer size
USB_EP_BUFSIZE_128_gc = 0x04<<0 ; 128 bytes buffer size
USB_EP_BUFSIZE_256_gc = 0x05<<0 ; 256 bytes buffer size
USB_EP_BUFSIZE_512_gc = 0x06<<0 ; 512 bytes buffer size
USB_EP_BUFSIZE_1023_gc = 0x07<<0 ; 1023 bytes buffer size


;***************************************************************************
;** PORT - I/O Port Configuration
;***************************************************************************/

; PORT_INTCTRL masks
PORT_INT1LVL_gm = 0x0C ; Port Interrupt 1 Level group mask
PORT_INT1LVL_gp = 2 ; Port Interrupt 1 Level group position
PORT_INT1LVL0_bm = 1<<2 ; Port Interrupt 1 Level bit 0 mask
PORT_INT1LVL0_bp = 2 ; Port Interrupt 1 Level bit 0 position
PORT_INT1LVL1_bm = 1<<3 ; Port Interrupt 1 Level bit 1 mask
PORT_INT1LVL1_bp = 3 ; Port Interrupt 1 Level bit 1 position
PORT_INT0LVL_gm = 0x03 ; Port Interrupt 0 Level group mask
PORT_INT0LVL_gp = 0 ; Port Interrupt 0 Level group position
PORT_INT0LVL0_bm = 1<<0 ; Port Interrupt 0 Level bit 0 mask
PORT_INT0LVL0_bp = 0 ; Port Interrupt 0 Level bit 0 position
PORT_INT0LVL1_bm = 1<<1 ; Port Interrupt 0 Level bit 1 mask
PORT_INT0LVL1_bp = 1 ; Port Interrupt 0 Level bit 1 position

; PORT_INTFLAGS masks
PORT_INT1IF_bm = 0x02 ; Port Interrupt 1 Flag bit mask
PORT_INT1IF_bp = 1 ; Port Interrupt 1 Flag bit position
PORT_INT0IF_bm = 0x01 ; Port Interrupt 0 Flag bit mask
PORT_INT0IF_bp = 0 ; Port Interrupt 0 Flag bit position

; PORT_REMAP masks
PORT_SPI_bm = 0x20 ; SPI bit mask
PORT_SPI_bp = 5 ; SPI bit position
PORT_USART0_bm = 0x10 ; USART0 bit mask
PORT_USART0_bp = 4 ; USART0 bit position
PORT_TC0D_bm = 0x08 ; Timer/Counter 0 Output Compare D bit mask
PORT_TC0D_bp = 3 ; Timer/Counter 0 Output Compare D bit position
PORT_TC0C_bm = 0x04 ; Timer/Counter 0 Output Compare C bit mask
PORT_TC0C_bp = 2 ; Timer/Counter 0 Output Compare C bit position
PORT_TC0B_bm = 0x02 ; Timer/Counter 0 Output Compare B bit mask
PORT_TC0B_bp = 1 ; Timer/Counter 0 Output Compare B bit position
PORT_TC0A_bm = 0x01 ; Timer/Counter 0 Output Compare A bit mask
PORT_TC0A_bp = 0 ; Timer/Counter 0 Output Compare A bit position

; PORT_PIN0CTRL masks
PORT_SRLEN_bm = 0x80 ; Slew Rate Enable bit mask
PORT_SRLEN_bp = 7 ; Slew Rate Enable bit position
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
; Masks for SRLEN aready defined
; Masks for INVEN aready defined
; Masks for OPC aready defined
; Masks for ISC aready defined

; PORT_PIN2CTRL masks
; Masks for SRLEN aready defined
; Masks for INVEN aready defined
; Masks for OPC aready defined
; Masks for ISC aready defined

; PORT_PIN3CTRL masks
; Masks for SRLEN aready defined
; Masks for INVEN aready defined
; Masks for OPC aready defined
; Masks for ISC aready defined

; PORT_PIN4CTRL masks
; Masks for SRLEN aready defined
; Masks for INVEN aready defined
; Masks for OPC aready defined
; Masks for ISC aready defined

; PORT_PIN5CTRL masks
; Masks for SRLEN aready defined
; Masks for INVEN aready defined
; Masks for OPC aready defined
; Masks for ISC aready defined

; PORT_PIN6CTRL masks
; Masks for SRLEN aready defined
; Masks for INVEN aready defined
; Masks for OPC aready defined
; Masks for ISC aready defined

; PORT_PIN7CTRL masks
; Masks for SRLEN aready defined
; Masks for INVEN aready defined
; Masks for OPC aready defined
; Masks for ISC aready defined

; Port Interrupt 0 Level
PORT_INT0LVL_OFF_gc = 0x00<<0 ; Interrupt Disabled
PORT_INT0LVL_LO_gc = 0x01<<0 ; Low Level
PORT_INT0LVL_MED_gc = 0x02<<0 ; Medium Level
PORT_INT0LVL_HI_gc = 0x03<<0 ; High Level

; Port Interrupt 1 Level
PORT_INT1LVL_OFF_gc = 0x00<<2 ; Interrupt Disabled
PORT_INT1LVL_LO_gc = 0x01<<2 ; Low Level
PORT_INT1LVL_MED_gc = 0x02<<2 ; Medium Level
PORT_INT1LVL_HI_gc = 0x03<<2 ; High Level

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
PORT_ISC_INPUT_DISABLE_gc = 0x07<<0 ; Disable Digital Input Buffer


;***************************************************************************
;** TC - 16-bit Timer/Counter With PWM
;***************************************************************************/

; TC0_CTRLA masks
TC0_CLKSEL_gm = 0x0F ; Clock Selection group mask
TC0_CLKSEL_gp = 0 ; Clock Selection group position
TC0_CLKSEL0_bm = 1<<0 ; Clock Selection bit 0 mask
TC0_CLKSEL0_bp = 0 ; Clock Selection bit 0 position
TC0_CLKSEL1_bm = 1<<1 ; Clock Selection bit 1 mask
TC0_CLKSEL1_bp = 1 ; Clock Selection bit 1 position
TC0_CLKSEL2_bm = 1<<2 ; Clock Selection bit 2 mask
TC0_CLKSEL2_bp = 2 ; Clock Selection bit 2 position
TC0_CLKSEL3_bm = 1<<3 ; Clock Selection bit 3 mask
TC0_CLKSEL3_bp = 3 ; Clock Selection bit 3 position

; TC0_CTRLB masks
TC0_CCDEN_bm = 0x80 ; Compare or Capture D Enable bit mask
TC0_CCDEN_bp = 7 ; Compare or Capture D Enable bit position
TC0_CCCEN_bm = 0x40 ; Compare or Capture C Enable bit mask
TC0_CCCEN_bp = 6 ; Compare or Capture C Enable bit position
TC0_CCBEN_bm = 0x20 ; Compare or Capture B Enable bit mask
TC0_CCBEN_bp = 5 ; Compare or Capture B Enable bit position
TC0_CCAEN_bm = 0x10 ; Compare or Capture A Enable bit mask
TC0_CCAEN_bp = 4 ; Compare or Capture A Enable bit position
TC0_WGMODE_gm = 0x07 ; Waveform generation mode group mask
TC0_WGMODE_gp = 0 ; Waveform generation mode group position
TC0_WGMODE0_bm = 1<<0 ; Waveform generation mode bit 0 mask
TC0_WGMODE0_bp = 0 ; Waveform generation mode bit 0 position
TC0_WGMODE1_bm = 1<<1 ; Waveform generation mode bit 1 mask
TC0_WGMODE1_bp = 1 ; Waveform generation mode bit 1 position
TC0_WGMODE2_bm = 1<<2 ; Waveform generation mode bit 2 mask
TC0_WGMODE2_bp = 2 ; Waveform generation mode bit 2 position

; TC0_CTRLC masks
TC0_CMPD_bm = 0x08 ; Compare D Output Value bit mask
TC0_CMPD_bp = 3 ; Compare D Output Value bit position
TC0_CMPC_bm = 0x04 ; Compare C Output Value bit mask
TC0_CMPC_bp = 2 ; Compare C Output Value bit position
TC0_CMPB_bm = 0x02 ; Compare B Output Value bit mask
TC0_CMPB_bp = 1 ; Compare B Output Value bit position
TC0_CMPA_bm = 0x01 ; Compare A Output Value bit mask
TC0_CMPA_bp = 0 ; Compare A Output Value bit position

; TC0_CTRLD masks
TC0_EVACT_gm = 0xE0 ; Event Action group mask
TC0_EVACT_gp = 5 ; Event Action group position
TC0_EVACT0_bm = 1<<5 ; Event Action bit 0 mask
TC0_EVACT0_bp = 5 ; Event Action bit 0 position
TC0_EVACT1_bm = 1<<6 ; Event Action bit 1 mask
TC0_EVACT1_bp = 6 ; Event Action bit 1 position
TC0_EVACT2_bm = 1<<7 ; Event Action bit 2 mask
TC0_EVACT2_bp = 7 ; Event Action bit 2 position
TC0_EVDLY_bm = 0x10 ; Event Delay bit mask
TC0_EVDLY_bp = 4 ; Event Delay bit position
TC0_EVSEL_gm = 0x0F ; Event Source Select group mask
TC0_EVSEL_gp = 0 ; Event Source Select group position
TC0_EVSEL0_bm = 1<<0 ; Event Source Select bit 0 mask
TC0_EVSEL0_bp = 0 ; Event Source Select bit 0 position
TC0_EVSEL1_bm = 1<<1 ; Event Source Select bit 1 mask
TC0_EVSEL1_bp = 1 ; Event Source Select bit 1 position
TC0_EVSEL2_bm = 1<<2 ; Event Source Select bit 2 mask
TC0_EVSEL2_bp = 2 ; Event Source Select bit 2 position
TC0_EVSEL3_bm = 1<<3 ; Event Source Select bit 3 mask
TC0_EVSEL3_bp = 3 ; Event Source Select bit 3 position

; TC0_CTRLE masks
TC0_BYTEM_gm = 0x03 ; Byte Mode group mask
TC0_BYTEM_gp = 0 ; Byte Mode group position
TC0_BYTEM0_bm = 1<<0 ; Byte Mode bit 0 mask
TC0_BYTEM0_bp = 0 ; Byte Mode bit 0 position
TC0_BYTEM1_bm = 1<<1 ; Byte Mode bit 1 mask
TC0_BYTEM1_bp = 1 ; Byte Mode bit 1 position

; TC0_INTCTRLA masks
TC0_ERRINTLVL_gm = 0x0C ; Error Interrupt Level group mask
TC0_ERRINTLVL_gp = 2 ; Error Interrupt Level group position
TC0_ERRINTLVL0_bm = 1<<2 ; Error Interrupt Level bit 0 mask
TC0_ERRINTLVL0_bp = 2 ; Error Interrupt Level bit 0 position
TC0_ERRINTLVL1_bm = 1<<3 ; Error Interrupt Level bit 1 mask
TC0_ERRINTLVL1_bp = 3 ; Error Interrupt Level bit 1 position
TC0_OVFINTLVL_gm = 0x03 ; Overflow interrupt level group mask
TC0_OVFINTLVL_gp = 0 ; Overflow interrupt level group position
TC0_OVFINTLVL0_bm = 1<<0 ; Overflow interrupt level bit 0 mask
TC0_OVFINTLVL0_bp = 0 ; Overflow interrupt level bit 0 position
TC0_OVFINTLVL1_bm = 1<<1 ; Overflow interrupt level bit 1 mask
TC0_OVFINTLVL1_bp = 1 ; Overflow interrupt level bit 1 position

; TC0_INTCTRLB masks
TC0_CCDINTLVL_gm = 0xC0 ; Compare or Capture D Interrupt Level group mask
TC0_CCDINTLVL_gp = 6 ; Compare or Capture D Interrupt Level group position
TC0_CCDINTLVL0_bm = 1<<6 ; Compare or Capture D Interrupt Level bit 0 mask
TC0_CCDINTLVL0_bp = 6 ; Compare or Capture D Interrupt Level bit 0 position
TC0_CCDINTLVL1_bm = 1<<7 ; Compare or Capture D Interrupt Level bit 1 mask
TC0_CCDINTLVL1_bp = 7 ; Compare or Capture D Interrupt Level bit 1 position
TC0_CCCINTLVL_gm = 0x30 ; Compare or Capture C Interrupt Level group mask
TC0_CCCINTLVL_gp = 4 ; Compare or Capture C Interrupt Level group position
TC0_CCCINTLVL0_bm = 1<<4 ; Compare or Capture C Interrupt Level bit 0 mask
TC0_CCCINTLVL0_bp = 4 ; Compare or Capture C Interrupt Level bit 0 position
TC0_CCCINTLVL1_bm = 1<<5 ; Compare or Capture C Interrupt Level bit 1 mask
TC0_CCCINTLVL1_bp = 5 ; Compare or Capture C Interrupt Level bit 1 position
TC0_CCBINTLVL_gm = 0x0C ; Compare or Capture B Interrupt Level group mask
TC0_CCBINTLVL_gp = 2 ; Compare or Capture B Interrupt Level group position
TC0_CCBINTLVL0_bm = 1<<2 ; Compare or Capture B Interrupt Level bit 0 mask
TC0_CCBINTLVL0_bp = 2 ; Compare or Capture B Interrupt Level bit 0 position
TC0_CCBINTLVL1_bm = 1<<3 ; Compare or Capture B Interrupt Level bit 1 mask
TC0_CCBINTLVL1_bp = 3 ; Compare or Capture B Interrupt Level bit 1 position
TC0_CCAINTLVL_gm = 0x03 ; Compare or Capture A Interrupt Level group mask
TC0_CCAINTLVL_gp = 0 ; Compare or Capture A Interrupt Level group position
TC0_CCAINTLVL0_bm = 1<<0 ; Compare or Capture A Interrupt Level bit 0 mask
TC0_CCAINTLVL0_bp = 0 ; Compare or Capture A Interrupt Level bit 0 position
TC0_CCAINTLVL1_bm = 1<<1 ; Compare or Capture A Interrupt Level bit 1 mask
TC0_CCAINTLVL1_bp = 1 ; Compare or Capture A Interrupt Level bit 1 position

; TC0_CTRLFCLR masks
TC0_CMD_gm = 0x0C ; Command group mask
TC0_CMD_gp = 2 ; Command group position
TC0_CMD0_bm = 1<<2 ; Command bit 0 mask
TC0_CMD0_bp = 2 ; Command bit 0 position
TC0_CMD1_bm = 1<<3 ; Command bit 1 mask
TC0_CMD1_bp = 3 ; Command bit 1 position
TC0_LUPD_bm = 0x02 ; Lock Update bit mask
TC0_LUPD_bp = 1 ; Lock Update bit position
TC0_DIR_bm = 0x01 ; Direction bit mask
TC0_DIR_bp = 0 ; Direction bit position

; TC0_CTRLFSET masks
; Masks for CMD aready defined
; Masks for LUPD aready defined
; Masks for DIR aready defined

; TC0_CTRLGCLR masks
TC0_CCDBV_bm = 0x10 ; Compare or Capture D Buffer Valid bit mask
TC0_CCDBV_bp = 4 ; Compare or Capture D Buffer Valid bit position
TC0_CCCBV_bm = 0x08 ; Compare or Capture C Buffer Valid bit mask
TC0_CCCBV_bp = 3 ; Compare or Capture C Buffer Valid bit position
TC0_CCBBV_bm = 0x04 ; Compare or Capture B Buffer Valid bit mask
TC0_CCBBV_bp = 2 ; Compare or Capture B Buffer Valid bit position
TC0_CCABV_bm = 0x02 ; Compare or Capture A Buffer Valid bit mask
TC0_CCABV_bp = 1 ; Compare or Capture A Buffer Valid bit position
TC0_PERBV_bm = 0x01 ; Period Buffer Valid bit mask
TC0_PERBV_bp = 0 ; Period Buffer Valid bit position

; TC0_CTRLGSET masks
; Masks for CCDBV aready defined
; Masks for CCCBV aready defined
; Masks for CCBBV aready defined
; Masks for CCABV aready defined
; Masks for PERBV aready defined

; TC0_INTFLAGS masks
TC0_CCDIF_bm = 0x80 ; Compare or Capture D Interrupt Flag bit mask
TC0_CCDIF_bp = 7 ; Compare or Capture D Interrupt Flag bit position
TC0_CCCIF_bm = 0x40 ; Compare or Capture C Interrupt Flag bit mask
TC0_CCCIF_bp = 6 ; Compare or Capture C Interrupt Flag bit position
TC0_CCBIF_bm = 0x20 ; Compare or Capture B Interrupt Flag bit mask
TC0_CCBIF_bp = 5 ; Compare or Capture B Interrupt Flag bit position
TC0_CCAIF_bm = 0x10 ; Compare or Capture A Interrupt Flag bit mask
TC0_CCAIF_bp = 4 ; Compare or Capture A Interrupt Flag bit position
TC0_ERRIF_bm = 0x02 ; Error Interrupt Flag bit mask
TC0_ERRIF_bp = 1 ; Error Interrupt Flag bit position
TC0_OVFIF_bm = 0x01 ; Overflow Interrupt Flag bit mask
TC0_OVFIF_bp = 0 ; Overflow Interrupt Flag bit position

; TC1_CTRLA masks
TC1_CLKSEL_gm = 0x0F ; Clock Selection group mask
TC1_CLKSEL_gp = 0 ; Clock Selection group position
TC1_CLKSEL0_bm = 1<<0 ; Clock Selection bit 0 mask
TC1_CLKSEL0_bp = 0 ; Clock Selection bit 0 position
TC1_CLKSEL1_bm = 1<<1 ; Clock Selection bit 1 mask
TC1_CLKSEL1_bp = 1 ; Clock Selection bit 1 position
TC1_CLKSEL2_bm = 1<<2 ; Clock Selection bit 2 mask
TC1_CLKSEL2_bp = 2 ; Clock Selection bit 2 position
TC1_CLKSEL3_bm = 1<<3 ; Clock Selection bit 3 mask
TC1_CLKSEL3_bp = 3 ; Clock Selection bit 3 position

; TC1_CTRLB masks
TC1_CCBEN_bm = 0x20 ; Compare or Capture B Enable bit mask
TC1_CCBEN_bp = 5 ; Compare or Capture B Enable bit position
TC1_CCAEN_bm = 0x10 ; Compare or Capture A Enable bit mask
TC1_CCAEN_bp = 4 ; Compare or Capture A Enable bit position
TC1_WGMODE_gm = 0x07 ; Waveform generation mode group mask
TC1_WGMODE_gp = 0 ; Waveform generation mode group position
TC1_WGMODE0_bm = 1<<0 ; Waveform generation mode bit 0 mask
TC1_WGMODE0_bp = 0 ; Waveform generation mode bit 0 position
TC1_WGMODE1_bm = 1<<1 ; Waveform generation mode bit 1 mask
TC1_WGMODE1_bp = 1 ; Waveform generation mode bit 1 position
TC1_WGMODE2_bm = 1<<2 ; Waveform generation mode bit 2 mask
TC1_WGMODE2_bp = 2 ; Waveform generation mode bit 2 position

; TC1_CTRLC masks
TC1_CMPB_bm = 0x02 ; Compare B Output Value bit mask
TC1_CMPB_bp = 1 ; Compare B Output Value bit position
TC1_CMPA_bm = 0x01 ; Compare A Output Value bit mask
TC1_CMPA_bp = 0 ; Compare A Output Value bit position

; TC1_CTRLD masks
TC1_EVACT_gm = 0xE0 ; Event Action group mask
TC1_EVACT_gp = 5 ; Event Action group position
TC1_EVACT0_bm = 1<<5 ; Event Action bit 0 mask
TC1_EVACT0_bp = 5 ; Event Action bit 0 position
TC1_EVACT1_bm = 1<<6 ; Event Action bit 1 mask
TC1_EVACT1_bp = 6 ; Event Action bit 1 position
TC1_EVACT2_bm = 1<<7 ; Event Action bit 2 mask
TC1_EVACT2_bp = 7 ; Event Action bit 2 position
TC1_EVDLY_bm = 0x10 ; Event Delay bit mask
TC1_EVDLY_bp = 4 ; Event Delay bit position
TC1_EVSEL_gm = 0x0F ; Event Source Select group mask
TC1_EVSEL_gp = 0 ; Event Source Select group position
TC1_EVSEL0_bm = 1<<0 ; Event Source Select bit 0 mask
TC1_EVSEL0_bp = 0 ; Event Source Select bit 0 position
TC1_EVSEL1_bm = 1<<1 ; Event Source Select bit 1 mask
TC1_EVSEL1_bp = 1 ; Event Source Select bit 1 position
TC1_EVSEL2_bm = 1<<2 ; Event Source Select bit 2 mask
TC1_EVSEL2_bp = 2 ; Event Source Select bit 2 position
TC1_EVSEL3_bm = 1<<3 ; Event Source Select bit 3 mask
TC1_EVSEL3_bp = 3 ; Event Source Select bit 3 position

; TC1_CTRLE masks
TC1_BYTEM_bm = 0x01 ; Byte Mode bit mask
TC1_BYTEM_bp = 0 ; Byte Mode bit position

; TC1_INTCTRLA masks
TC1_ERRINTLVL_gm = 0x0C ; Error Interrupt Level group mask
TC1_ERRINTLVL_gp = 2 ; Error Interrupt Level group position
TC1_ERRINTLVL0_bm = 1<<2 ; Error Interrupt Level bit 0 mask
TC1_ERRINTLVL0_bp = 2 ; Error Interrupt Level bit 0 position
TC1_ERRINTLVL1_bm = 1<<3 ; Error Interrupt Level bit 1 mask
TC1_ERRINTLVL1_bp = 3 ; Error Interrupt Level bit 1 position
TC1_OVFINTLVL_gm = 0x03 ; Overflow interrupt level group mask
TC1_OVFINTLVL_gp = 0 ; Overflow interrupt level group position
TC1_OVFINTLVL0_bm = 1<<0 ; Overflow interrupt level bit 0 mask
TC1_OVFINTLVL0_bp = 0 ; Overflow interrupt level bit 0 position
TC1_OVFINTLVL1_bm = 1<<1 ; Overflow interrupt level bit 1 mask
TC1_OVFINTLVL1_bp = 1 ; Overflow interrupt level bit 1 position

; TC1_INTCTRLB masks
TC1_CCBINTLVL_gm = 0x0C ; Compare or Capture B Interrupt Level group mask
TC1_CCBINTLVL_gp = 2 ; Compare or Capture B Interrupt Level group position
TC1_CCBINTLVL0_bm = 1<<2 ; Compare or Capture B Interrupt Level bit 0 mask
TC1_CCBINTLVL0_bp = 2 ; Compare or Capture B Interrupt Level bit 0 position
TC1_CCBINTLVL1_bm = 1<<3 ; Compare or Capture B Interrupt Level bit 1 mask
TC1_CCBINTLVL1_bp = 3 ; Compare or Capture B Interrupt Level bit 1 position
TC1_CCAINTLVL_gm = 0x03 ; Compare or Capture A Interrupt Level group mask
TC1_CCAINTLVL_gp = 0 ; Compare or Capture A Interrupt Level group position
TC1_CCAINTLVL0_bm = 1<<0 ; Compare or Capture A Interrupt Level bit 0 mask
TC1_CCAINTLVL0_bp = 0 ; Compare or Capture A Interrupt Level bit 0 position
TC1_CCAINTLVL1_bm = 1<<1 ; Compare or Capture A Interrupt Level bit 1 mask
TC1_CCAINTLVL1_bp = 1 ; Compare or Capture A Interrupt Level bit 1 position

; TC1_CTRLFCLR masks
TC1_CMD_gm = 0x0C ; Command group mask
TC1_CMD_gp = 2 ; Command group position
TC1_CMD0_bm = 1<<2 ; Command bit 0 mask
TC1_CMD0_bp = 2 ; Command bit 0 position
TC1_CMD1_bm = 1<<3 ; Command bit 1 mask
TC1_CMD1_bp = 3 ; Command bit 1 position
TC1_LUPD_bm = 0x02 ; Lock Update bit mask
TC1_LUPD_bp = 1 ; Lock Update bit position
TC1_DIR_bm = 0x01 ; Direction bit mask
TC1_DIR_bp = 0 ; Direction bit position

; TC1_CTRLFSET masks
; Masks for CMD aready defined
; Masks for LUPD aready defined
; Masks for DIR aready defined

; TC1_CTRLGCLR masks
TC1_CCBBV_bm = 0x04 ; Compare or Capture B Buffer Valid bit mask
TC1_CCBBV_bp = 2 ; Compare or Capture B Buffer Valid bit position
TC1_CCABV_bm = 0x02 ; Compare or Capture A Buffer Valid bit mask
TC1_CCABV_bp = 1 ; Compare or Capture A Buffer Valid bit position
TC1_PERBV_bm = 0x01 ; Period Buffer Valid bit mask
TC1_PERBV_bp = 0 ; Period Buffer Valid bit position

; TC1_CTRLGSET masks
; Masks for CCBBV aready defined
; Masks for CCABV aready defined
; Masks for PERBV aready defined

; TC1_INTFLAGS masks
TC1_CCBIF_bm = 0x20 ; Compare or Capture B Interrupt Flag bit mask
TC1_CCBIF_bp = 5 ; Compare or Capture B Interrupt Flag bit position
TC1_CCAIF_bm = 0x10 ; Compare or Capture A Interrupt Flag bit mask
TC1_CCAIF_bp = 4 ; Compare or Capture A Interrupt Flag bit position
TC1_ERRIF_bm = 0x02 ; Error Interrupt Flag bit mask
TC1_ERRIF_bp = 1 ; Error Interrupt Flag bit position
TC1_OVFIF_bm = 0x01 ; Overflow Interrupt Flag bit mask
TC1_OVFIF_bp = 0 ; Overflow Interrupt Flag bit position

; Clock Selection
TC_CLKSEL_OFF_gc = 0x00<<0 ; Timer Off
TC_CLKSEL_DIV1_gc = 0x01<<0 ; System Clock
TC_CLKSEL_DIV2_gc = 0x02<<0 ; System Clock / 2
TC_CLKSEL_DIV4_gc = 0x03<<0 ; System Clock / 4
TC_CLKSEL_DIV8_gc = 0x04<<0 ; System Clock / 8
TC_CLKSEL_DIV64_gc = 0x05<<0 ; System Clock / 64
TC_CLKSEL_DIV256_gc = 0x06<<0 ; System Clock / 256
TC_CLKSEL_DIV1024_gc = 0x07<<0 ; System Clock / 1024
TC_CLKSEL_EVCH0_gc = 0x08<<0 ; Event Channel 0
TC_CLKSEL_EVCH1_gc = 0x09<<0 ; Event Channel 1
TC_CLKSEL_EVCH2_gc = 0x0A<<0 ; Event Channel 2
TC_CLKSEL_EVCH3_gc = 0x0B<<0 ; Event Channel 3

; Waveform Generation Mode
TC_WGMODE_NORMAL_gc = 0x00<<0 ; Normal Mode
TC_WGMODE_FRQ_gc = 0x01<<0 ; Frequency Generation Mode
TC_WGMODE_SINGLESLOPE_gc = 0x03<<0 ; Single Slope
TC_WGMODE_SS_gc = 0x03<<0 ; Single Slope
TC_WGMODE_DSTOP_gc = 0x05<<0 ; Dual Slope, Update on TOP
TC_WGMODE_DS_T_gc = 0x05<<0 ; Dual Slope, Update on TOP
TC_WGMODE_DSBOTH_gc = 0x06<<0 ; Dual Slope, Update on both TOP and BOTTOM
TC_WGMODE_DS_TB_gc = 0x06<<0 ; Dual Slope, Update on both TOP and BOTTOM
TC_WGMODE_DSBOTTOM_gc = 0x07<<0 ; Dual Slope, Update on BOTTOM
TC_WGMODE_DS_B_gc = 0x07<<0 ; Dual Slope, Update on BOTTOM

; Byte Mode
TC_BYTEM_NORMAL_gc = 0x00<<0 ; 16-bit mode
TC_BYTEM_BYTEMODE_gc = 0x01<<0 ; Timer/Counter operating in byte mode only
TC_BYTEM_SPLITMODE_gc = 0x02<<0 ; Timer/Counter split into two 8-bit Counters

; Event Action
TC_EVACT_OFF_gc = 0x00<<5 ; No Event Action
TC_EVACT_CAPT_gc = 0x01<<5 ; Input Capture
TC_EVACT_UPDOWN_gc = 0x02<<5 ; Externally Controlled Up/Down Count
TC_EVACT_QDEC_gc = 0x03<<5 ; Quadrature Decode
TC_EVACT_RESTART_gc = 0x04<<5 ; Restart
TC_EVACT_FRQ_gc = 0x05<<5 ; Frequency Capture
TC_EVACT_PW_gc = 0x06<<5 ; Pulse-width Capture

; Event Selection
TC_EVSEL_OFF_gc = 0x00<<0 ; No Event Source
TC_EVSEL_CH0_gc = 0x08<<0 ; Event Channel 0
TC_EVSEL_CH1_gc = 0x09<<0 ; Event Channel 1
TC_EVSEL_CH2_gc = 0x0A<<0 ; Event Channel 2
TC_EVSEL_CH3_gc = 0x0B<<0 ; Event Channel 3

; Error Interrupt Level
TC_ERRINTLVL_OFF_gc = 0x00<<2 ; Interrupt Disabled
TC_ERRINTLVL_LO_gc = 0x01<<2 ; Low Level
TC_ERRINTLVL_MED_gc = 0x02<<2 ; Medium Level
TC_ERRINTLVL_HI_gc = 0x03<<2 ; High Level

; Overflow Interrupt Level
TC_OVFINTLVL_OFF_gc = 0x00<<0 ; Interrupt Disabled
TC_OVFINTLVL_LO_gc = 0x01<<0 ; Low Level
TC_OVFINTLVL_MED_gc = 0x02<<0 ; Medium Level
TC_OVFINTLVL_HI_gc = 0x03<<0 ; High Level

; Compare or Capture D Interrupt Level
TC_CCDINTLVL_OFF_gc = 0x00<<6 ; Interrupt Disabled
TC_CCDINTLVL_LO_gc = 0x01<<6 ; Low Level
TC_CCDINTLVL_MED_gc = 0x02<<6 ; Medium Level
TC_CCDINTLVL_HI_gc = 0x03<<6 ; High Level

; Compare or Capture C Interrupt Level
TC_CCCINTLVL_OFF_gc = 0x00<<4 ; Interrupt Disabled
TC_CCCINTLVL_LO_gc = 0x01<<4 ; Low Level
TC_CCCINTLVL_MED_gc = 0x02<<4 ; Medium Level
TC_CCCINTLVL_HI_gc = 0x03<<4 ; High Level

; Compare or Capture B Interrupt Level
TC_CCBINTLVL_OFF_gc = 0x00<<2 ; Interrupt Disabled
TC_CCBINTLVL_LO_gc = 0x01<<2 ; Low Level
TC_CCBINTLVL_MED_gc = 0x02<<2 ; Medium Level
TC_CCBINTLVL_HI_gc = 0x03<<2 ; High Level

; Compare or Capture A Interrupt Level
TC_CCAINTLVL_OFF_gc = 0x00<<0 ; Interrupt Disabled
TC_CCAINTLVL_LO_gc = 0x01<<0 ; Low Level
TC_CCAINTLVL_MED_gc = 0x02<<0 ; Medium Level
TC_CCAINTLVL_HI_gc = 0x03<<0 ; High Level

; Timer/Counter Command
TC_CMD_NONE_gc = 0x00<<2 ; No Command
TC_CMD_UPDATE_gc = 0x01<<2 ; Force Update
TC_CMD_RESTART_gc = 0x02<<2 ; Force Restart
TC_CMD_RESET_gc = 0x03<<2 ; Force Hard Reset


;***************************************************************************
;** AWEX - Timer/Counter Advanced Waveform Extension
;***************************************************************************/

; AWEX_CTRL masks
AWEX_PGM_bm = 0x20 ; Pattern Generation Mode bit mask
AWEX_PGM_bp = 5 ; Pattern Generation Mode bit position
AWEX_CWCM_bm = 0x10 ; Common Waveform Channel Mode bit mask
AWEX_CWCM_bp = 4 ; Common Waveform Channel Mode bit position
AWEX_DTICCDEN_bm = 0x08 ; Dead Time Insertion Compare Channel D Enable bit mask
AWEX_DTICCDEN_bp = 3 ; Dead Time Insertion Compare Channel D Enable bit position
AWEX_DTICCCEN_bm = 0x04 ; Dead Time Insertion Compare Channel C Enable bit mask
AWEX_DTICCCEN_bp = 2 ; Dead Time Insertion Compare Channel C Enable bit position
AWEX_DTICCBEN_bm = 0x02 ; Dead Time Insertion Compare Channel B Enable bit mask
AWEX_DTICCBEN_bp = 1 ; Dead Time Insertion Compare Channel B Enable bit position
AWEX_DTICCAEN_bm = 0x01 ; Dead Time Insertion Compare Channel A Enable bit mask
AWEX_DTICCAEN_bp = 0 ; Dead Time Insertion Compare Channel A Enable bit position

; AWEX_FDCTRL masks
AWEX_FDDBD_bm = 0x10 ; Fault Detect on Disable Break Disable bit mask
AWEX_FDDBD_bp = 4 ; Fault Detect on Disable Break Disable bit position
AWEX_FDMODE_bm = 0x04 ; Fault Detect Mode bit mask
AWEX_FDMODE_bp = 2 ; Fault Detect Mode bit position
AWEX_FDACT_gm = 0x03 ; Fault Detect Action group mask
AWEX_FDACT_gp = 0 ; Fault Detect Action group position
AWEX_FDACT0_bm = 1<<0 ; Fault Detect Action bit 0 mask
AWEX_FDACT0_bp = 0 ; Fault Detect Action bit 0 position
AWEX_FDACT1_bm = 1<<1 ; Fault Detect Action bit 1 mask
AWEX_FDACT1_bp = 1 ; Fault Detect Action bit 1 position

; AWEX_STATUS masks
AWEX_FDF_bm = 0x04 ; Fault Detect Flag bit mask
AWEX_FDF_bp = 2 ; Fault Detect Flag bit position
AWEX_DTHSBUFV_bm = 0x02 ; Dead Time High Side Buffer Valid bit mask
AWEX_DTHSBUFV_bp = 1 ; Dead Time High Side Buffer Valid bit position
AWEX_DTLSBUFV_bm = 0x01 ; Dead Time Low Side Buffer Valid bit mask
AWEX_DTLSBUFV_bp = 0 ; Dead Time Low Side Buffer Valid bit position

; AWEX_STATUSSET masks
; Masks for FDF aready defined
; Masks for DTHSBUFV aready defined
; Masks for DTLSBUFV aready defined

; Fault Detect Action
AWEX_FDACT_NONE_gc = 0x00<<0 ; No Fault Protection
AWEX_FDACT_CLEAROE_gc = 0x01<<0 ; Clear Output Enable Bits
AWEX_FDACT_CLEARDIR_gc = 0x03<<0 ; Clear I/O Port Direction Bits


;***************************************************************************
;** HIRES - Timer/Counter High-Resolution Extension
;***************************************************************************/

; HIRES_CTRLA masks
HIRES_HREN_gm = 0x03 ; High Resolution Enable group mask
HIRES_HREN_gp = 0 ; High Resolution Enable group position
HIRES_HREN0_bm = 1<<0 ; High Resolution Enable bit 0 mask
HIRES_HREN0_bp = 0 ; High Resolution Enable bit 0 position
HIRES_HREN1_bm = 1<<1 ; High Resolution Enable bit 1 mask
HIRES_HREN1_bp = 1 ; High Resolution Enable bit 1 position
HIRES_HRPLUS_bm = 1<<2 ; High Resolution Plus bit mask
HIRES_HRPLUS_bp = 2 ; High Resolution Plus bit position

; High Resolution Enable
HIRES_HREN_NONE_gc = 0x00<<0 ; No Fault Protection
HIRES_HREN_TC0_gc = 0x01<<0 ; Enable High Resolution on Timer/Counter 0
HIRES_HREN_TC1_gc = 0x02<<0 ; Enable High Resolution on Timer/Counter 1
HIRES_HREN_BOTH_gc = 0x03<<0 ; Enable High Resolution both Timer/Counters


;***************************************************************************
;** USART - Universal Asynchronous Receiver-Transmitter
;***************************************************************************/

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
USART_RXB8_bm = 0x01 ; Receive Bit 8 bit mask
USART_RXB8_bp = 0 ; Receive Bit 8 bit position

; USART_CTRLA masks
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
; Masks for BSEL aready defined

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


;***************************************************************************
;** SPI - Serial Peripheral Interface
;***************************************************************************/

; SPI_CTRL masks
SPI_CLK2X_bm = 0x80 ; Enable Double Speed bit mask
SPI_CLK2X_bp = 7 ; Enable Double Speed bit position
SPI_ENABLE_bm = 0x40 ; Enable Module bit mask
SPI_ENABLE_bp = 6 ; Enable Module bit position
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
SPI_INTLVL_gm = 0x03 ; Interrupt level group mask
SPI_INTLVL_gp = 0 ; Interrupt level group position
SPI_INTLVL0_bm = 1<<0 ; Interrupt level bit 0 mask
SPI_INTLVL0_bp = 0 ; Interrupt level bit 0 position
SPI_INTLVL1_bm = 1<<1 ; Interrupt level bit 1 mask
SPI_INTLVL1_bp = 1 ; Interrupt level bit 1 position

; SPI_STATUS masks
SPI_IF_bm = 0x80 ; Interrupt Flag bit mask
SPI_IF_bp = 7 ; Interrupt Flag bit position
SPI_WRCOL_bm = 0x40 ; Write Collision bit mask
SPI_WRCOL_bp = 6 ; Write Collision bit position

; SPI Mode
SPI_MODE_0_gc = 0x00<<2 ; SPI Mode 0
SPI_MODE_1_gc = 0x01<<2 ; SPI Mode 1
SPI_MODE_2_gc = 0x02<<2 ; SPI Mode 2
SPI_MODE_3_gc = 0x03<<2 ; SPI Mode 3

; Prescaler setting
SPI_PRESCALER_DIV4_gc = 0x00<<0 ; System Clock / 4
SPI_PRESCALER_DIV16_gc = 0x01<<0 ; System Clock / 16
SPI_PRESCALER_DIV64_gc = 0x02<<0 ; System Clock / 64
SPI_PRESCALER_DIV128_gc = 0x03<<0 ; System Clock / 128

; Interrupt level
SPI_INTLVL_OFF_gc = 0x00<<0 ; Interrupt Disabled
SPI_INTLVL_LO_gc = 0x01<<0 ; Low Level
SPI_INTLVL_MED_gc = 0x02<<0 ; Medium Level
SPI_INTLVL_HI_gc = 0x03<<0 ; High Level


;***************************************************************************
;** IRCOM - IR Communication Module
;***************************************************************************/

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


;***************************************************************************
;** LCD - LCD Controller
;***************************************************************************/

; LCD_CTRLA masks
LCD_ENABLE_bm = 0x80 ; LCD Enable bit mask
LCD_ENABLE_bp = 7 ; LCD Enable bit position
LCD_XBIAS_bm = 0x40 ; External Register Bias Generation bit mask
LCD_XBIAS_bp = 6 ; External Register Bias Generation bit position
LCD_DATCLK_bm = 0x20 ; Data Register Lock bit mask
LCD_DATCLK_bp = 5 ; Data Register Lock bit position
LCD_COMSWP_bm = 0x10 ; Common Bus Swap bit mask
LCD_COMSWP_bp = 4 ; Common Bus Swap bit position
LCD_SEGSWP_bm = 0x08 ; Segment Bus Swap bit mask
LCD_SEGSWP_bp = 3 ; Segment Bus Swap bit position
LCD_CLRDT_bm = 0x04 ; Clear Data Register bit mask
LCD_CLRDT_bp = 2 ; Clear Data Register bit position
LCD_SEGON_bm = 0x02 ; Segments On bit mask
LCD_SEGON_bp = 1 ; Segments On bit position
LCD_BLANK_bm = 0x01 ; Blanking Display Mode bit mask
LCD_BLANK_bp = 0 ; Blanking Display Mode bit position

; LCD_CTRLB masks
LCD_PRESC_bm = 0x80 ; LCD Prescaler Select bit mask
LCD_PRESC_bp = 7 ; LCD Prescaler Select bit position
LCD_CLKDIV_gm = 0x70 ; LCD Clock Divide group mask
LCD_CLKDIV_gp = 4 ; LCD Clock Divide group position
LCD_CLKDIV0_bm = 1<<4 ; LCD Clock Divide bit 0 mask
LCD_CLKDIV0_bp = 4 ; LCD Clock Divide bit 0 position
LCD_CLKDIV1_bm = 1<<5 ; LCD Clock Divide bit 1 mask
LCD_CLKDIV1_bp = 5 ; LCD Clock Divide bit 1 position
LCD_CLKDIV2_bm = 1<<6 ; LCD Clock Divide bit 2 mask
LCD_CLKDIV2_bp = 6 ; LCD Clock Divide bit 2 position
LCD_LPWAV_bm = 0x08 ; Low Power Waveform bit mask
LCD_LPWAV_bp = 3 ; Low Power Waveform bit position
LCD_DUTY_gm = 0x03 ; Duty Select group mask
LCD_DUTY_gp = 0 ; Duty Select group position
LCD_DUTY0_bm = 1<<0 ; Duty Select bit 0 mask
LCD_DUTY0_bp = 0 ; Duty Select bit 0 position
LCD_DUTY1_bm = 1<<1 ; Duty Select bit 1 mask
LCD_DUTY1_bp = 1 ; Duty Select bit 1 position

; LCD_CTRLC masks
LCD_PMSK_gm = 0x3F ; LCD Port Mask group mask
LCD_PMSK_gp = 0 ; LCD Port Mask group position
LCD_PMSK0_bm = 1<<0 ; LCD Port Mask bit 0 mask
LCD_PMSK0_bp = 0 ; LCD Port Mask bit 0 position
LCD_PMSK1_bm = 1<<1 ; LCD Port Mask bit 1 mask
LCD_PMSK1_bp = 1 ; LCD Port Mask bit 1 position
LCD_PMSK2_bm = 1<<2 ; LCD Port Mask bit 2 mask
LCD_PMSK2_bp = 2 ; LCD Port Mask bit 2 position
LCD_PMSK3_bm = 1<<3 ; LCD Port Mask bit 3 mask
LCD_PMSK3_bp = 3 ; LCD Port Mask bit 3 position
LCD_PMSK4_bm = 1<<4 ; LCD Port Mask bit 4 mask
LCD_PMSK4_bp = 4 ; LCD Port Mask bit 4 position
LCD_PMSK5_bm = 1<<5 ; LCD Port Mask bit 5 mask
LCD_PMSK5_bp = 5 ; LCD Port Mask bit 5 position

; LCD_INTCTRL masks
LCD_XIME_gm = 0xF8 ; eXtended Interrupt Mode Enable group mask
LCD_XIME_gp = 3 ; eXtended Interrupt Mode Enable group position
LCD_XIME0_bm = 1<<3 ; eXtended Interrupt Mode Enable bit 0 mask
LCD_XIME0_bp = 3 ; eXtended Interrupt Mode Enable bit 0 position
LCD_XIME1_bm = 1<<4 ; eXtended Interrupt Mode Enable bit 1 mask
LCD_XIME1_bp = 4 ; eXtended Interrupt Mode Enable bit 1 position
LCD_XIME2_bm = 1<<5 ; eXtended Interrupt Mode Enable bit 2 mask
LCD_XIME2_bp = 5 ; eXtended Interrupt Mode Enable bit 2 position
LCD_XIME3_bm = 1<<6 ; eXtended Interrupt Mode Enable bit 3 mask
LCD_XIME3_bp = 6 ; eXtended Interrupt Mode Enable bit 3 position
LCD_XIME4_bm = 1<<7 ; eXtended Interrupt Mode Enable bit 4 mask
LCD_XIME4_bp = 7 ; eXtended Interrupt Mode Enable bit 4 position
LCD_FCINTLVL_gm = 0x03 ; Interrupt Level group mask
LCD_FCINTLVL_gp = 0 ; Interrupt Level group position
LCD_FCINTLVL0_bm = 1<<0 ; Interrupt Level bit 0 mask
LCD_FCINTLVL0_bp = 0 ; Interrupt Level bit 0 position
LCD_FCINTLVL1_bm = 1<<1 ; Interrupt Level bit 1 mask
LCD_FCINTLVL1_bp = 1 ; Interrupt Level bit 1 position

; LCD_INTFLAG masks
LCD_FCIF_bm = 0x01 ; LCD Frame Completed Interrupt Flag bit mask
LCD_FCIF_bp = 0 ; LCD Frame Completed Interrupt Flag bit position

; LCD_CTRLD masks
LCD_BLINKEN_bm = 0x08 ; Blink Enable bit mask
LCD_BLINKEN_bp = 3 ; Blink Enable bit position
LCD_BLINKRATE_gm = 0x03 ; LCD Blink Rate group mask
LCD_BLINKRATE_gp = 0 ; LCD Blink Rate group position
LCD_BLINKRATE0_bm = 1<<0 ; LCD Blink Rate bit 0 mask
LCD_BLINKRATE0_bp = 0 ; LCD Blink Rate bit 0 position
LCD_BLINKRATE1_bm = 1<<1 ; LCD Blink Rate bit 1 mask
LCD_BLINKRATE1_bp = 1 ; LCD Blink Rate bit 1 position

; LCD_CTRLE masks
LCD_BPS1_gm = 0xF0 ; Blink Pixel Selection 1 group mask
LCD_BPS1_gp = 4 ; Blink Pixel Selection 1 group position
LCD_BPS10_bm = 1<<4 ; Blink Pixel Selection 1 bit 0 mask
LCD_BPS10_bp = 4 ; Blink Pixel Selection 1 bit 0 position
LCD_BPS11_bm = 1<<5 ; Blink Pixel Selection 1 bit 1 mask
LCD_BPS11_bp = 5 ; Blink Pixel Selection 1 bit 1 position
LCD_BPS12_bm = 1<<6 ; Blink Pixel Selection 1 bit 2 mask
LCD_BPS12_bp = 6 ; Blink Pixel Selection 1 bit 2 position
LCD_BPS13_bm = 1<<7 ; Blink Pixel Selection 1 bit 3 mask
LCD_BPS13_bp = 7 ; Blink Pixel Selection 1 bit 3 position
LCD_BPS0_gm = 0x0F ; Blink Pixel Selection 0 group mask
LCD_BPS0_gp = 0 ; Blink Pixel Selection 0 group position
LCD_BPS00_bm = 1<<0 ; Blink Pixel Selection 0 bit 0 mask
LCD_BPS00_bp = 0 ; Blink Pixel Selection 0 bit 0 position
LCD_BPS01_bm = 1<<1 ; Blink Pixel Selection 0 bit 1 mask
LCD_BPS01_bp = 1 ; Blink Pixel Selection 0 bit 1 position
LCD_BPS02_bm = 1<<2 ; Blink Pixel Selection 0 bit 2 mask
LCD_BPS02_bp = 2 ; Blink Pixel Selection 0 bit 2 position
LCD_BPS03_bm = 1<<3 ; Blink Pixel Selection 0 bit 3 mask
LCD_BPS03_bp = 3 ; Blink Pixel Selection 0 bit 3 position

; LCD_CTRLF masks
LCD_FCONT_gm = 0x3F ; Fine Contrast group mask
LCD_FCONT_gp = 0 ; Fine Contrast group position
LCD_FCONT0_bm = 1<<0 ; Fine Contrast bit 0 mask
LCD_FCONT0_bp = 0 ; Fine Contrast bit 0 position
LCD_FCONT1_bm = 1<<1 ; Fine Contrast bit 1 mask
LCD_FCONT1_bp = 1 ; Fine Contrast bit 1 position
LCD_FCONT2_bm = 1<<2 ; Fine Contrast bit 2 mask
LCD_FCONT2_bp = 2 ; Fine Contrast bit 2 position
LCD_FCONT3_bm = 1<<3 ; Fine Contrast bit 3 mask
LCD_FCONT3_bp = 3 ; Fine Contrast bit 3 position
LCD_FCONT4_bm = 1<<4 ; Fine Contrast bit 4 mask
LCD_FCONT4_bp = 4 ; Fine Contrast bit 4 position
LCD_FCONT5_bm = 1<<5 ; Fine Contrast bit 5 mask
LCD_FCONT5_bp = 5 ; Fine Contrast bit 5 position

; LCD_CTRLG masks
LCD_TDG_gm = 0xC0 ; Type of Digit group mask
LCD_TDG_gp = 6 ; Type of Digit group position
LCD_TDG0_bm = 1<<6 ; Type of Digit bit 0 mask
LCD_TDG0_bp = 6 ; Type of Digit bit 0 position
LCD_TDG1_bm = 1<<7 ; Type of Digit bit 1 mask
LCD_TDG1_bp = 7 ; Type of Digit bit 1 position
LCD_STSEG_gm = 0x3F ; Start Segment group mask
LCD_STSEG_gp = 0 ; Start Segment group position
LCD_STSEG0_bm = 1<<0 ; Start Segment bit 0 mask
LCD_STSEG0_bp = 0 ; Start Segment bit 0 position
LCD_STSEG1_bm = 1<<1 ; Start Segment bit 1 mask
LCD_STSEG1_bp = 1 ; Start Segment bit 1 position
LCD_STSEG2_bm = 1<<2 ; Start Segment bit 2 mask
LCD_STSEG2_bp = 2 ; Start Segment bit 2 position
LCD_STSEG3_bm = 1<<3 ; Start Segment bit 3 mask
LCD_STSEG3_bp = 3 ; Start Segment bit 3 position
LCD_STSEG4_bm = 1<<4 ; Start Segment bit 4 mask
LCD_STSEG4_bp = 4 ; Start Segment bit 4 position
LCD_STSEG5_bm = 1<<5 ; Start Segment bit 5 mask
LCD_STSEG5_bp = 5 ; Start Segment bit 5 position

; LCD_CTRLH masks
LCD_DEC_bm = 0x80 ; Decrement of Start Segment bit mask
LCD_DEC_bp = 7 ; Decrement of Start Segment bit position
LCD_DCODE_gm = 0x7F ; Display Code group mask
LCD_DCODE_gp = 0 ; Display Code group position
LCD_DCODE0_bm = 1<<0 ; Display Code bit 0 mask
LCD_DCODE0_bp = 0 ; Display Code bit 0 position
LCD_DCODE1_bm = 1<<1 ; Display Code bit 1 mask
LCD_DCODE1_bp = 1 ; Display Code bit 1 position
LCD_DCODE2_bm = 1<<2 ; Display Code bit 2 mask
LCD_DCODE2_bp = 2 ; Display Code bit 2 position
LCD_DCODE3_bm = 1<<3 ; Display Code bit 3 mask
LCD_DCODE3_bp = 3 ; Display Code bit 3 position
LCD_DCODE4_bm = 1<<4 ; Display Code bit 4 mask
LCD_DCODE4_bp = 4 ; Display Code bit 4 position
LCD_DCODE5_bm = 1<<5 ; Display Code bit 5 mask
LCD_DCODE5_bp = 5 ; Display Code bit 5 position
LCD_DCODE6_bm = 1<<6 ; Display Code bit 6 mask
LCD_DCODE6_bp = 6 ; Display Code bit 6 position

; LCD Blink Rate
LCD_BLINKRATE_4Hz_gc = 0x00<<0 ; 4Hz Blink Rate
LCD_BLINKRATE_2Hz_gc = 0x01<<0 ; 2Hz Blink Rate
LCD_BLINKRATE_1Hz_gc = 0x02<<0 ; 1Hz Blink Rate
LCD_BLINKRATE_0Hz5_gc = 0x03<<0 ; 0.5Hz Blink Rate

; LCD Clock Divide
LCD_CLKDIV_DivBy1_gc = 0x00<<4 ; frame rate of 256 Hz
LCD_CLKDIV_DivBy2_gc = 0x01<<4 ; frame rate of 128 Hz
LCD_CLKDIV_DivBy3_gc = 0x02<<4 ; frame rate of 83.5 Hz
LCD_CLKDIV_DivBy4_gc = 0x03<<4 ; frame rate of 64 Hz
LCD_CLKDIV_DivBy5_gc = 0x04<<4 ; frame rate of 51.2 Hz
LCD_CLKDIV_DivBy6_gc = 0x05<<4 ; frame rate of 42.7 Hz
LCD_CLKDIV_DivBy7_gc = 0x06<<4 ; frame rate of 36.6 Hz
LCD_CLKDIV_DivBy8_gc = 0x07<<4 ; frame rate of 32 Hz

; Duty Select
LCD_DUTY_1_4_gc = 0x00<<0 ; Duty=1/4, Bias=1/3, COM0:3
LCD_DUTY_Static_gc = 0x01<<0 ; Duty=Static, Bias=Static, COM0
LCD_DUTY_1_2_gc = 0x02<<0 ; Duty=1/2, Bias=1/3, COM0:1
LCD_DUTY_1_3_gc = 0x03<<0 ; Duty=1/3, Bias=1/3, COM0:2

; LCD Prescaler Select
LCD_PRESC_8_gc = 0x00<<7 ; clk_lcd/8
LCD_PRESC_16_gc = 0x01<<7 ; clk_lcd/16

; Type of Digit
LCD_TDG_7S_3C_gc = 0x00<<6 ; 7-segment with 3 COMs
LCD_TDG_7S_4C_gc = 0x01<<6 ; 7-segment with 4 COMs
LCD_TDG_14S_4C_gc = 0x02<<6 ; 14-segment with 4 COMs
LCD_TDG_16S_3C_gc = 0x03<<6 ; 16-segment with 3 COMs


;***************************************************************************
;** FUSE - Fuses and Lockbits
;***************************************************************************/

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

; NVM_FUSES_FUSEBYTE0 masks
NVM_FUSES_JTAGUSERID_gm = 0xFF ; JTAG User ID group mask
NVM_FUSES_JTAGUSERID_gp = 0 ; JTAG User ID group position
NVM_FUSES_JTAGUSERID0_bm = 1<<0 ; JTAG User ID bit 0 mask
NVM_FUSES_JTAGUSERID0_bp = 0 ; JTAG User ID bit 0 position
NVM_FUSES_JTAGUSERID1_bm = 1<<1 ; JTAG User ID bit 1 mask
NVM_FUSES_JTAGUSERID1_bp = 1 ; JTAG User ID bit 1 position
NVM_FUSES_JTAGUSERID2_bm = 1<<2 ; JTAG User ID bit 2 mask
NVM_FUSES_JTAGUSERID2_bp = 2 ; JTAG User ID bit 2 position
NVM_FUSES_JTAGUSERID3_bm = 1<<3 ; JTAG User ID bit 3 mask
NVM_FUSES_JTAGUSERID3_bp = 3 ; JTAG User ID bit 3 position
NVM_FUSES_JTAGUSERID4_bm = 1<<4 ; JTAG User ID bit 4 mask
NVM_FUSES_JTAGUSERID4_bp = 4 ; JTAG User ID bit 4 position
NVM_FUSES_JTAGUSERID5_bm = 1<<5 ; JTAG User ID bit 5 mask
NVM_FUSES_JTAGUSERID5_bp = 5 ; JTAG User ID bit 5 position
NVM_FUSES_JTAGUSERID6_bm = 1<<6 ; JTAG User ID bit 6 mask
NVM_FUSES_JTAGUSERID6_bp = 6 ; JTAG User ID bit 6 position
NVM_FUSES_JTAGUSERID7_bm = 1<<7 ; JTAG User ID bit 7 mask
NVM_FUSES_JTAGUSERID7_bp = 7 ; JTAG User ID bit 7 position

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
NVM_FUSES_TOSCSEL_bm = 0x20 ; Timer Oscillator pin location bit mask
NVM_FUSES_TOSCSEL_bp = 5 ; Timer Oscillator pin location bit position
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
NVM_FUSES_JTAGEN_bm = 0x01 ; JTAG Interface Enable bit mask
NVM_FUSES_JTAGEN_bp = 0 ; JTAG Interface Enable bit position

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

; Timer Oscillator pin location
TOSCSEL_ALTERNATE_gc = 0x00<<5 ; TOSC1 / TOSC2 on separate pins
TOSCSEL_XTAL_gc = 0x01<<5 ; TOSC1 / TOSC2 shared with XTAL1 / XTAL2

; BOD operation
BOD_SAMPLED_gc = 0x01<<0 ; BOD enabled in sampled mode
BOD_CONTINUOUS_gc = 0x02<<0 ; BOD enabled continuously
BOD_DISABLED_gc = 0x03<<0 ; BOD Disabled

; Watchdog (Window) Timeout Period
WD_8CLK_gc = 0x00<<4 ; 8 cycles (8ms @ 3.3V)
WD_16CLK_gc = 0x01<<4 ; 16 cycles (16ms @ 3.3V)
WD_32CLK_gc = 0x02<<4 ; 32 cycles (32ms @ 3.3V)
WD_64CLK_gc = 0x03<<4 ; 64 cycles (64ms @ 3.3V)
WD_128CLK_gc = 0x04<<4 ; 128 cycles (0.125s @ 3.3V)
WD_256CLK_gc = 0x05<<4 ; 256 cycles (0.25s @ 3.3V)
WD_512CLK_gc = 0x06<<4 ; 512 cycles (0.5s @ 3.3V)
WD_1KCLK_gc = 0x07<<4 ; 1K cycles (1s @ 3.3V)
WD_2KCLK_gc = 0x08<<4 ; 2K cycles (2s @ 3.3V)
WD_4KCLK_gc = 0x09<<4 ; 4K cycles (4s @ 3.3V)
WD_8KCLK_gc = 0x0A<<4 ; 8K cycles (8s @ 3.3V)

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


;***************************************************************************
;** SIGROW - Signature Row
;***************************************************************************/




; ***** CPU REGISTER DEFINITIONS *****************************************
XH	.DE r27
XL	.DE r26
YH	.DE r29
YL	.DE r28
ZH	.DE r31
ZL	.DE r30


; ***** DATA MEMORY DECLARATIONS *****************************************


PROGMEM_START   =   0x00000
PROGMEM_SIZE    =   0x22000
PROGMEM_END     =   0x00000+0x22000-1

APP_SECTION_START   =   0x00000
APP_SECTION_SIZE    =   0x20000
APP_SECTION_END     =   0x00000+0x20000-1

APPTABLE_SECTION_START  =   0x1E000
APPTABLE_SECTION_SIZE   =   0x2000
APPTABLE_SECTION_END    =   0x1E000+0x2000-1

BOOT_SECTION_START  =   0x20000
BOOT_SECTION_SIZE   =   0x2000
BOOT_SECTION_END    =   0x20000+0x2000-1

EEPROM_START    =   0x00000
EEPROM_SIZE     =   0x0800
EEPROM_END      =   0x00000+0x0800-1

FUSE_START  =   0x0000
FUSE_SIZE   =   0x0006
FUSE_END    =   0x0000+0x0006-1

LOCKBIT_START   =   0x0000
LOCKBIT_SIZE    =   0x0001
LOCKBIT_END     =   0x0000+0x0001-1

SIGNATURES_START    =   0x0000
SIGNATURES_SIZE     =   0x0003
SIGNATURES_END      =   0x0000+0x0003-1

USER_SIGNATURES_START   =   0x0000
USER_SIGNATURES_SIZE    =   0x0100
USER_SIGNATURES_END     =   0x0000+0x0100-1

PROD_SIGNATURES_START   =   0x0000
PROD_SIGNATURES_SIZE    =   0x0040
PROD_SIGNATURES_END     =   0x0000+0x0040-1

DATAMEM_START   =   0x0000
DATAMEM_SIZE    =   0x4000
DATAMEM_END     =   0x0000+0x4000-1

IO_START    =   0x0000
IO_SIZE     =   0x1000
IO_END      =   0x0000+0x1000-1

MAPPED_EEPROM_START     =   0x1000
MAPPED_EEPROM_SIZE      =   0x0800
MAPPED_EEPROM_END       =   0x1000+0x0800-1

INTERNAL_SRAM_START     =   0x2000
INTERNAL_SRAM_SIZE      =   0x2000
INTERNAL_SRAM_END       =   0x2000+0x2000-1


; Legacy definitions
FLASHEND    = PROGMEM_END/2  ; Note: Word address
IOEND       = IO_END
SRAM_START	= INTERNAL_SRAM_START
SRAM_SIZE	= INTERNAL_SRAM_SIZE
RAMEND	    = INTERNAL_SRAM_END
E2END	    = EEPROM_END
EEPROMEND	= EEPROM_END


; Definitions used by the assembler



; ***** INTERRUPT VECTORS, ABSOLUTE ADDRESSES ****************************

; OSC interrupt vectors
OSC_OSCF_vect = 2 ; Oscillator Failure Interrupt (NMI)

; PORTC interrupt vectors
PORTC_INT0_vect = 4 ; External Interrupt 0
PORTC_INT1_vect = 6 ; External Interrupt 1

; PORTR interrupt vectors
PORTR_INT0_vect = 8 ; External Interrupt 0
PORTR_INT1_vect = 10 ; External Interrupt 1

; DMA interrupt vectors
DMA_CH0_vect = 12 ; Channel 0 Interrupt
DMA_CH1_vect = 14 ; Channel 1 Interrupt

; RTC interrupt vectors
RTC_OVF_vect = 20 ; Overflow Interrupt
RTC_COMP_vect = 22 ; Compare Interrupt

; TWIC interrupt vectors
TWIC_TWIS_vect = 24 ; TWI Slave Interrupt
TWIC_TWIM_vect = 26 ; TWI Master Interrupt

; TCC0 interrupt vectors
TCC0_OVF_vect = 28 ; Overflow Interrupt
TCC0_ERR_vect = 30 ; Error Interrupt
TCC0_CCA_vect = 32 ; Compare or Capture A Interrupt
TCC0_CCB_vect = 34 ; Compare or Capture B Interrupt
TCC0_CCC_vect = 36 ; Compare or Capture C Interrupt
TCC0_CCD_vect = 38 ; Compare or Capture D Interrupt

; TCC1 interrupt vectors
TCC1_OVF_vect = 40 ; Overflow Interrupt
TCC1_ERR_vect = 42 ; Error Interrupt
TCC1_CCA_vect = 44 ; Compare or Capture A Interrupt
TCC1_CCB_vect = 46 ; Compare or Capture B Interrupt

; SPIC interrupt vectors
SPIC_INT_vect = 48 ; SPI Interrupt

; USARTC0 interrupt vectors
USARTC0_RXC_vect = 50 ; Reception Complete Interrupt
USARTC0_DRE_vect = 52 ; Data Register Empty Interrupt
USARTC0_TXC_vect = 54 ; Transmission Complete Interrupt

; USB interrupt vectors
USB_BUSEVENT_vect = 62 ; SOF, suspend, resume, reset bus event interrupts, crc, underflow, overflow and stall error interrupts
USB_TRNCOMPL_vect = 64 ; Transaction complete interrupt

; LCD interrupt vectors
LCD_INT_vect = 70 ; LCD Interrupt

; AES interrupt vectors
AES_INT_vect = 72 ; AES Interrupt

; NVM interrupt vectors
NVM_EE_vect = 74 ; EE Interrupt
NVM_SPM_vect = 76 ; SPM Interrupt

; PORTB interrupt vectors
PORTB_INT0_vect = 78 ; External Interrupt 0
PORTB_INT1_vect = 80 ; External Interrupt 1

; ACB interrupt vectors
ACB_AC0_vect = 82 ; AC0 Interrupt
ACB_AC1_vect = 84 ; AC1 Interrupt
ACB_ACW_vect = 86 ; ACW Window Mode Interrupt

; ADCB interrupt vectors
ADCB_CH0_vect = 88 ; Interrupt 0

; PORTD interrupt vectors
PORTD_INT0_vect = 96 ; External Interrupt 0
PORTD_INT1_vect = 98 ; External Interrupt 1

; PORTG interrupt vectors
PORTG_INT0_vect = 100 ; External Interrupt 0
PORTG_INT1_vect = 102 ; External Interrupt 1

; PORTM interrupt vectors
PORTM_INT0_vect = 104 ; External Interrupt 0
PORTM_INT1_vect = 106 ; External Interrupt 1



; ***** INTERRUPT VECTORS, MODULE BASES **********************************

OSC_vbase = 2
PORTC_vbase = 4
PORTR_vbase = 8
DMA_vbase = 12
RTC_vbase = 20
TWIC_vbase = 24
TCC0_vbase = 28
TCC1_vbase = 40
SPIC_vbase = 48
USARTC0_vbase = 50
USB_vbase = 62
LCD_vbase = 70
AES_vbase = 72
NVM_vbase = 74
PORTB_vbase = 78
ACB_vbase = 82
ADCB_vbase = 88
PORTD_vbase = 96
PORTG_vbase = 100
PORTM_vbase = 104


; ***** INTERRUPT VECTORS, VECTOR OFFSETS *********************************

; OSC interrupt vector offsets

OSC_OSCF_voffset = 0

; AES interrupt vector offsets

AES_INT_voffset = 0

; DMA interrupt vector offsets

DMA_CH0_voffset = 0
DMA_CH1_voffset = 2

; NVM interrupt vector offsets

NVM_EE_voffset = 0
NVM_SPM_voffset = 2

; ADC interrupt vector offsets

ADC_CH0_voffset = 0

; AC interrupt vector offsets

AC_AC0_voffset = 0
AC_AC1_voffset = 2
AC_ACW_voffset = 4

; RTC interrupt vector offsets

RTC_OVF_voffset = 0
RTC_COMP_voffset = 2

; TWI interrupt vector offsets

TWI_TWIS_voffset = 0
TWI_TWIM_voffset = 2

; USB interrupt vector offsets

USB_BUSEVENT_voffset = 0
USB_TRNCOMPL_voffset = 2

; PORT interrupt vector offsets

PORT_INT0_voffset = 0
PORT_INT1_voffset = 2

; TC0 interrupt vector offsets

TC0_OVF_voffset = 0
TC0_ERR_voffset = 2
TC0_CCA_voffset = 4
TC0_CCB_voffset = 6
TC0_CCC_voffset = 8
TC0_CCD_voffset = 10

; TC1 interrupt vector offsets

TC1_OVF_voffset = 0
TC1_ERR_voffset = 2
TC1_CCA_voffset = 4
TC1_CCB_voffset = 6

; USART interrupt vector offsets

USART_RXC_voffset = 0
USART_DRE_voffset = 2
USART_TXC_voffset = 4

; SPI interrupt vector offsets

SPI_INT_voffset = 0

; LCD interrupt vector offsets

LCD_INT_voffset = 0



INT_VECTORS_SIZE = 108 ; size in words



; ***** END OF FILE ******************************************************



