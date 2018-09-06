;*************************************************************************
;* A P P L I C A T I O N   N O T E   F O R   T H E   A V R   F A M I L Y
;*
;* Number            : AVR000
;* File Name         : ATxmega64A1Udef.inc
;* Title             : Register/Bit Definitions for the ATxmega64A1U
;* Date              : Jan 01 2008
;* Version           : 1.00
;* Support E-mail    : avr@atmel.com
;* Target MCU        : ATxmega64A1U
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
; device ATxmega64A1U

SIGNATURE_000 = 0x1E
SIGNATURE_001 = 0x96
SIGNATURE_002 = 0x4E

                .CR     avr
                .FA     xmega
				.MS		$8800

; ***** ABSOLUTE I/O REGISTER LOCATIONS **********************************


;***************************************************************************
;** GPIO - General Purpose IO Registers
;***************************************************************************

GPIO_GPIOR0 = 0		// General Purpose IO Register 0
GPIO_GPIOR1 = 1		// General Purpose IO Register 1
GPIO_GPIOR2 = 2		// General Purpose IO Register 2
GPIO_GPIOR3 = 3		// General Purpose IO Register 3
GPIO_GPIOR4 = 4		// General Purpose IO Register 4
GPIO_GPIOR5 = 5		// General Purpose IO Register 5
GPIO_GPIOR6 = 6		// General Purpose IO Register 6
GPIO_GPIOR7 = 7		// General Purpose IO Register 7
GPIO_GPIOR8 = 8		// General Purpose IO Register 8
GPIO_GPIOR9 = 9		// General Purpose IO Register 9
GPIO_GPIORA = 10		// General Purpose IO Register 10
GPIO_GPIORB = 11		// General Purpose IO Register 11
GPIO_GPIORC = 12		// General Purpose IO Register 12
GPIO_GPIORD = 13		// General Purpose IO Register 13
GPIO_GPIORE = 14		// General Purpose IO Register 14
GPIO_GPIORF = 15		// General Purpose IO Register 15

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
PR_PRPD = 116		// Power Reduction Port D
PR_PRPE = 117		// Power Reduction Port E
PR_PRPF = 118		// Power Reduction Port F

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
DMA_TEMP = 262		// Temporary Register For 16/24-bit Access
DMA_CH0_CTRLA = 272		// Channel Control
DMA_CH0_CTRLB = 273		// Channel Control
DMA_CH0_ADDRCTRL = 274		// Address Control
DMA_CH0_TRIGSRC = 275		// Channel Trigger Source
DMA_CH0_TRFCNT = 276		// Channel Block Transfer Count
DMA_CH0_REPCNT = 278		// Channel Repeat Count
DMA_CH0_SRCADDR0 = 280		// Channel Source Address 0
DMA_CH0_SRCADDR1 = 281		// Channel Source Address 1
DMA_CH0_SRCADDR2 = 282		// Channel Source Address 2
DMA_CH0_DESTADDR0 = 284		// Channel Destination Address 0
DMA_CH0_DESTADDR1 = 285		// Channel Destination Address 1
DMA_CH0_DESTADDR2 = 286		// Channel Destination Address 2
DMA_CH1_CTRLA = 288		// Channel Control
DMA_CH1_CTRLB = 289		// Channel Control
DMA_CH1_ADDRCTRL = 290		// Address Control
DMA_CH1_TRIGSRC = 291		// Channel Trigger Source
DMA_CH1_TRFCNT = 292		// Channel Block Transfer Count
DMA_CH1_REPCNT = 294		// Channel Repeat Count
DMA_CH1_SRCADDR0 = 296		// Channel Source Address 0
DMA_CH1_SRCADDR1 = 297		// Channel Source Address 1
DMA_CH1_SRCADDR2 = 298		// Channel Source Address 2
DMA_CH1_DESTADDR0 = 300		// Channel Destination Address 0
DMA_CH1_DESTADDR1 = 301		// Channel Destination Address 1
DMA_CH1_DESTADDR2 = 302		// Channel Destination Address 2
DMA_CH2_CTRLA = 304		// Channel Control
DMA_CH2_CTRLB = 305		// Channel Control
DMA_CH2_ADDRCTRL = 306		// Address Control
DMA_CH2_TRIGSRC = 307		// Channel Trigger Source
DMA_CH2_TRFCNT = 308		// Channel Block Transfer Count
DMA_CH2_REPCNT = 310		// Channel Repeat Count
DMA_CH2_SRCADDR0 = 312		// Channel Source Address 0
DMA_CH2_SRCADDR1 = 313		// Channel Source Address 1
DMA_CH2_SRCADDR2 = 314		// Channel Source Address 2
DMA_CH2_DESTADDR0 = 316		// Channel Destination Address 0
DMA_CH2_DESTADDR1 = 317		// Channel Destination Address 1
DMA_CH2_DESTADDR2 = 318		// Channel Destination Address 2
DMA_CH3_CTRLA = 320		// Channel Control
DMA_CH3_CTRLB = 321		// Channel Control
DMA_CH3_ADDRCTRL = 322		// Address Control
DMA_CH3_TRIGSRC = 323		// Channel Trigger Source
DMA_CH3_TRFCNT = 324		// Channel Block Transfer Count
DMA_CH3_REPCNT = 326		// Channel Repeat Count
DMA_CH3_SRCADDR0 = 328		// Channel Source Address 0
DMA_CH3_SRCADDR1 = 329		// Channel Source Address 1
DMA_CH3_SRCADDR2 = 330		// Channel Source Address 2
DMA_CH3_DESTADDR0 = 332		// Channel Destination Address 0
DMA_CH3_DESTADDR1 = 333		// Channel Destination Address 1
DMA_CH3_DESTADDR2 = 334		// Channel Destination Address 2

;***************************************************************************
;** EVSYS - Event System
;***************************************************************************

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
;** ADCA - Analog to Digital Converter A
;***************************************************************************

ADCA_CTRLA = 512		// Control Register A
ADCA_CTRLB = 513		// Control Register B
ADCA_REFCTRL = 514		// Reference Control
ADCA_EVCTRL = 515		// Event Control
ADCA_PRESCALER = 516		// Clock Prescaler
ADCA_INTFLAGS = 518		// Interrupt Flags
ADCA_TEMP = 519		// Temporary Register
ADCA_CAL = 524		// Calibration Value
ADCA_CH0RES = 528		// Channel 0 Result
ADCA_CH1RES = 530		// Channel 1 Result
ADCA_CH2RES = 532		// Channel 2 Result
ADCA_CH3RES = 534		// Channel 3 Result
ADCA_CMP = 536		// Compare Value
ADCA_CH0_CTRL = 544		// Control Register
ADCA_CH0_MUXCTRL = 545		// MUX Control
ADCA_CH0_INTCTRL = 546		// Channel Interrupt Control Register
ADCA_CH0_INTFLAGS = 547		// Interrupt Flags
ADCA_CH0_RES = 548		// Channel Result
ADCA_CH0_SCAN = 550		// Input Channel Scan
ADCA_CH1_CTRL = 552		// Control Register
ADCA_CH1_MUXCTRL = 553		// MUX Control
ADCA_CH1_INTCTRL = 554		// Channel Interrupt Control Register
ADCA_CH1_INTFLAGS = 555		// Interrupt Flags
ADCA_CH1_RES = 556		// Channel Result
ADCA_CH1_SCAN = 558		// Input Channel Scan
ADCA_CH2_CTRL = 560		// Control Register
ADCA_CH2_MUXCTRL = 561		// MUX Control
ADCA_CH2_INTCTRL = 562		// Channel Interrupt Control Register
ADCA_CH2_INTFLAGS = 563		// Interrupt Flags
ADCA_CH2_RES = 564		// Channel Result
ADCA_CH2_SCAN = 566		// Input Channel Scan
ADCA_CH3_CTRL = 568		// Control Register
ADCA_CH3_MUXCTRL = 569		// MUX Control
ADCA_CH3_INTCTRL = 570		// Channel Interrupt Control Register
ADCA_CH3_INTFLAGS = 571		// Interrupt Flags
ADCA_CH3_RES = 572		// Channel Result
ADCA_CH3_SCAN = 574		// Input Channel Scan

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
ADCB_CAL = 588		// Calibration Value
ADCB_CH0RES = 592		// Channel 0 Result
ADCB_CH1RES = 594		// Channel 1 Result
ADCB_CH2RES = 596		// Channel 2 Result
ADCB_CH3RES = 598		// Channel 3 Result
ADCB_CMP = 600		// Compare Value
ADCB_CH0_CTRL = 608		// Control Register
ADCB_CH0_MUXCTRL = 609		// MUX Control
ADCB_CH0_INTCTRL = 610		// Channel Interrupt Control Register
ADCB_CH0_INTFLAGS = 611		// Interrupt Flags
ADCB_CH0_RES = 612		// Channel Result
ADCB_CH0_SCAN = 614		// Input Channel Scan
ADCB_CH1_CTRL = 616		// Control Register
ADCB_CH1_MUXCTRL = 617		// MUX Control
ADCB_CH1_INTCTRL = 618		// Channel Interrupt Control Register
ADCB_CH1_INTFLAGS = 619		// Interrupt Flags
ADCB_CH1_RES = 620		// Channel Result
ADCB_CH1_SCAN = 622		// Input Channel Scan
ADCB_CH2_CTRL = 624		// Control Register
ADCB_CH2_MUXCTRL = 625		// MUX Control
ADCB_CH2_INTCTRL = 626		// Channel Interrupt Control Register
ADCB_CH2_INTFLAGS = 627		// Interrupt Flags
ADCB_CH2_RES = 628		// Channel Result
ADCB_CH2_SCAN = 630		// Input Channel Scan
ADCB_CH3_CTRL = 632		// Control Register
ADCB_CH3_MUXCTRL = 633		// MUX Control
ADCB_CH3_INTCTRL = 634		// Channel Interrupt Control Register
ADCB_CH3_INTFLAGS = 635		// Interrupt Flags
ADCB_CH3_RES = 636		// Channel Result
ADCB_CH3_SCAN = 638		// Input Channel Scan

;***************************************************************************
;** DACA - Digital to Analog Converter A
;***************************************************************************

DACA_CTRLA = 768		// Control Register A
DACA_CTRLB = 769		// Control Register B
DACA_CTRLC = 770		// Control Register C
DACA_EVCTRL = 771		// Event Input Control
DACA_STATUS = 773		// Status
DACA_CH0GAINCAL = 776		// Gain Calibration
DACA_CH0OFFSETCAL = 777		// Offset Calibration
DACA_CH1GAINCAL = 778		// Gain Calibration
DACA_CH1OFFSETCAL = 779		// Offset Calibration
DACA_CH0DATA = 792		// Channel 0 Data
DACA_CH1DATA = 794		// Channel 1 Data

;***************************************************************************
;** DACB - Digital to Analog Converter B
;***************************************************************************

DACB_CTRLA = 800		// Control Register A
DACB_CTRLB = 801		// Control Register B
DACB_CTRLC = 802		// Control Register C
DACB_EVCTRL = 803		// Event Input Control
DACB_STATUS = 805		// Status
DACB_CH0GAINCAL = 808		// Gain Calibration
DACB_CH0OFFSETCAL = 809		// Offset Calibration
DACB_CH1GAINCAL = 810		// Gain Calibration
DACB_CH1OFFSETCAL = 811		// Offset Calibration
DACB_CH0DATA = 824		// Channel 0 Data
DACB_CH1DATA = 826		// Channel 1 Data

;***************************************************************************
;** ACA - Analog Comparator A
;***************************************************************************

ACA_AC0CTRL = 896		// Analog Comparator 0 Control
ACA_AC1CTRL = 897		// Analog Comparator 1 Control
ACA_AC0MUXCTRL = 898		// Analog Comparator 0 MUX Control
ACA_AC1MUXCTRL = 899		// Analog Comparator 1 MUX Control
ACA_CTRLA = 900		// Control Register A
ACA_CTRLB = 901		// Control Register B
ACA_WINCTRL = 902		// Window Mode Control
ACA_STATUS = 903		// Status

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
;** EBI - External Bus Interface
;***************************************************************************

EBI_CTRL = 1088		// Control
EBI_SDRAMCTRLA = 1089		// SDRAM Control Register A
EBI_REFRESH = 1092		// SDRAM Refresh Period
EBI_INITDLY = 1094		// SDRAM Initialization Delay
EBI_SDRAMCTRLB = 1096		// SDRAM Control Register B
EBI_SDRAMCTRLC = 1097		// SDRAM Control Register C
EBI_CS0_CTRLA = 1104		// Chip Select Control Register A
EBI_CS0_CTRLB = 1105		// Chip Select Control Register B
EBI_CS0_BASEADDR = 1106		// Chip Select Base Address
EBI_CS1_CTRLA = 1108		// Chip Select Control Register A
EBI_CS1_CTRLB = 1109		// Chip Select Control Register B
EBI_CS1_BASEADDR = 1110		// Chip Select Base Address
EBI_CS2_CTRLA = 1112		// Chip Select Control Register A
EBI_CS2_CTRLB = 1113		// Chip Select Control Register B
EBI_CS2_BASEADDR = 1114		// Chip Select Base Address
EBI_CS3_CTRLA = 1116		// Chip Select Control Register A
EBI_CS3_CTRLB = 1117		// Chip Select Control Register B
EBI_CS3_BASEADDR = 1118		// Chip Select Base Address

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
;** TWID - Two-Wire Interface D
;***************************************************************************

TWID_CTRL = 1168		// TWI Common Control Register
TWID_MASTER_CTRLA = 1169		// Control Register A
TWID_MASTER_CTRLB = 1170		// Control Register B
TWID_MASTER_CTRLC = 1171		// Control Register C
TWID_MASTER_STATUS = 1172		// Status Register
TWID_MASTER_BAUD = 1173		// Baurd Rate Control Register
TWID_MASTER_ADDR = 1174		// Address Register
TWID_MASTER_DATA = 1175		// Data Register
TWID_SLAVE_CTRLA = 1176		// Control Register A
TWID_SLAVE_CTRLB = 1177		// Control Register B
TWID_SLAVE_STATUS = 1178		// Status Register
TWID_SLAVE_ADDR = 1179		// Address Register
TWID_SLAVE_DATA = 1180		// Data Register
TWID_SLAVE_ADDRMASK = 1181		// Address Mask Register

;***************************************************************************
;** TWIE - Two-Wire Interface E
;***************************************************************************

TWIE_CTRL = 1184		// TWI Common Control Register
TWIE_MASTER_CTRLA = 1185		// Control Register A
TWIE_MASTER_CTRLB = 1186		// Control Register B
TWIE_MASTER_CTRLC = 1187		// Control Register C
TWIE_MASTER_STATUS = 1188		// Status Register
TWIE_MASTER_BAUD = 1189		// Baurd Rate Control Register
TWIE_MASTER_ADDR = 1190		// Address Register
TWIE_MASTER_DATA = 1191		// Data Register
TWIE_SLAVE_CTRLA = 1192		// Control Register A
TWIE_SLAVE_CTRLB = 1193		// Control Register B
TWIE_SLAVE_STATUS = 1194		// Status Register
TWIE_SLAVE_ADDR = 1195		// Address Register
TWIE_SLAVE_DATA = 1196		// Data Register
TWIE_SLAVE_ADDRMASK = 1197		// Address Mask Register

;***************************************************************************
;** TWIF - Two-Wire Interface F
;***************************************************************************

TWIF_CTRL = 1200		// TWI Common Control Register
TWIF_MASTER_CTRLA = 1201		// Control Register A
TWIF_MASTER_CTRLB = 1202		// Control Register B
TWIF_MASTER_CTRLC = 1203		// Control Register C
TWIF_MASTER_STATUS = 1204		// Status Register
TWIF_MASTER_BAUD = 1205		// Baurd Rate Control Register
TWIF_MASTER_ADDR = 1206		// Address Register
TWIF_MASTER_DATA = 1207		// Data Register
TWIF_SLAVE_CTRLA = 1208		// Control Register A
TWIF_SLAVE_CTRLB = 1209		// Control Register B
TWIF_SLAVE_STATUS = 1210		// Status Register
TWIF_SLAVE_ADDR = 1211		// Address Register
TWIF_SLAVE_DATA = 1212		// Data Register
TWIF_SLAVE_ADDRMASK = 1213		// Address Mask Register

;***************************************************************************
;** USB - Universal Serial Bus
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
;** PORTA - Port A
;***************************************************************************

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
PORTA_INT0MASK = 1546		// Port Interrupt 0 Mask
PORTA_INT1MASK = 1547		// Port Interrupt 1 Mask
PORTA_INTFLAGS = 1548		// Interrupt Flag Register
PORTA_REMAP = 1550		// I/O Port Pin Remap Register
PORTA_PIN0CTRL = 1552		// Pin 0 Control Register
PORTA_PIN1CTRL = 1553		// Pin 1 Control Register
PORTA_PIN2CTRL = 1554		// Pin 2 Control Register
PORTA_PIN3CTRL = 1555		// Pin 3 Control Register
PORTA_PIN4CTRL = 1556		// Pin 4 Control Register
PORTA_PIN5CTRL = 1557		// Pin 5 Control Register
PORTA_PIN6CTRL = 1558		// Pin 6 Control Register
PORTA_PIN7CTRL = 1559		// Pin 7 Control Register

;***************************************************************************
;** PORTB - Port B
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
;** PORTC - Port C
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
;** PORTD - Port D
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
;** PORTE - Port E
;***************************************************************************

PORTE_DIR = 1664		// I/O Port Data Direction
PORTE_DIRSET = 1665		// I/O Port Data Direction Set
PORTE_DIRCLR = 1666		// I/O Port Data Direction Clear
PORTE_DIRTGL = 1667		// I/O Port Data Direction Toggle
PORTE_OUT = 1668		// I/O Port Output
PORTE_OUTSET = 1669		// I/O Port Output Set
PORTE_OUTCLR = 1670		// I/O Port Output Clear
PORTE_OUTTGL = 1671		// I/O Port Output Toggle
PORTE_IN = 1672		// I/O port Input
PORTE_INTCTRL = 1673		// Interrupt Control Register
PORTE_INT0MASK = 1674		// Port Interrupt 0 Mask
PORTE_INT1MASK = 1675		// Port Interrupt 1 Mask
PORTE_INTFLAGS = 1676		// Interrupt Flag Register
PORTE_REMAP = 1678		// I/O Port Pin Remap Register
PORTE_PIN0CTRL = 1680		// Pin 0 Control Register
PORTE_PIN1CTRL = 1681		// Pin 1 Control Register
PORTE_PIN2CTRL = 1682		// Pin 2 Control Register
PORTE_PIN3CTRL = 1683		// Pin 3 Control Register
PORTE_PIN4CTRL = 1684		// Pin 4 Control Register
PORTE_PIN5CTRL = 1685		// Pin 5 Control Register
PORTE_PIN6CTRL = 1686		// Pin 6 Control Register
PORTE_PIN7CTRL = 1687		// Pin 7 Control Register

;***************************************************************************
;** PORTF - Port F
;***************************************************************************

PORTF_DIR = 1696		// I/O Port Data Direction
PORTF_DIRSET = 1697		// I/O Port Data Direction Set
PORTF_DIRCLR = 1698		// I/O Port Data Direction Clear
PORTF_DIRTGL = 1699		// I/O Port Data Direction Toggle
PORTF_OUT = 1700		// I/O Port Output
PORTF_OUTSET = 1701		// I/O Port Output Set
PORTF_OUTCLR = 1702		// I/O Port Output Clear
PORTF_OUTTGL = 1703		// I/O Port Output Toggle
PORTF_IN = 1704		// I/O port Input
PORTF_INTCTRL = 1705		// Interrupt Control Register
PORTF_INT0MASK = 1706		// Port Interrupt 0 Mask
PORTF_INT1MASK = 1707		// Port Interrupt 1 Mask
PORTF_INTFLAGS = 1708		// Interrupt Flag Register
PORTF_REMAP = 1710		// I/O Port Pin Remap Register
PORTF_PIN0CTRL = 1712		// Pin 0 Control Register
PORTF_PIN1CTRL = 1713		// Pin 1 Control Register
PORTF_PIN2CTRL = 1714		// Pin 2 Control Register
PORTF_PIN3CTRL = 1715		// Pin 3 Control Register
PORTF_PIN4CTRL = 1716		// Pin 4 Control Register
PORTF_PIN5CTRL = 1717		// Pin 5 Control Register
PORTF_PIN6CTRL = 1718		// Pin 6 Control Register
PORTF_PIN7CTRL = 1719		// Pin 7 Control Register

;***************************************************************************
;** PORTH - Port H
;***************************************************************************

PORTH_DIR = 1760		// I/O Port Data Direction
PORTH_DIRSET = 1761		// I/O Port Data Direction Set
PORTH_DIRCLR = 1762		// I/O Port Data Direction Clear
PORTH_DIRTGL = 1763		// I/O Port Data Direction Toggle
PORTH_OUT = 1764		// I/O Port Output
PORTH_OUTSET = 1765		// I/O Port Output Set
PORTH_OUTCLR = 1766		// I/O Port Output Clear
PORTH_OUTTGL = 1767		// I/O Port Output Toggle
PORTH_IN = 1768		// I/O port Input
PORTH_INTCTRL = 1769		// Interrupt Control Register
PORTH_INT0MASK = 1770		// Port Interrupt 0 Mask
PORTH_INT1MASK = 1771		// Port Interrupt 1 Mask
PORTH_INTFLAGS = 1772		// Interrupt Flag Register
PORTH_REMAP = 1774		// I/O Port Pin Remap Register
PORTH_PIN0CTRL = 1776		// Pin 0 Control Register
PORTH_PIN1CTRL = 1777		// Pin 1 Control Register
PORTH_PIN2CTRL = 1778		// Pin 2 Control Register
PORTH_PIN3CTRL = 1779		// Pin 3 Control Register
PORTH_PIN4CTRL = 1780		// Pin 4 Control Register
PORTH_PIN5CTRL = 1781		// Pin 5 Control Register
PORTH_PIN6CTRL = 1782		// Pin 6 Control Register
PORTH_PIN7CTRL = 1783		// Pin 7 Control Register

;***************************************************************************
;** PORTJ - Port J
;***************************************************************************

PORTJ_DIR = 1792		// I/O Port Data Direction
PORTJ_DIRSET = 1793		// I/O Port Data Direction Set
PORTJ_DIRCLR = 1794		// I/O Port Data Direction Clear
PORTJ_DIRTGL = 1795		// I/O Port Data Direction Toggle
PORTJ_OUT = 1796		// I/O Port Output
PORTJ_OUTSET = 1797		// I/O Port Output Set
PORTJ_OUTCLR = 1798		// I/O Port Output Clear
PORTJ_OUTTGL = 1799		// I/O Port Output Toggle
PORTJ_IN = 1800		// I/O port Input
PORTJ_INTCTRL = 1801		// Interrupt Control Register
PORTJ_INT0MASK = 1802		// Port Interrupt 0 Mask
PORTJ_INT1MASK = 1803		// Port Interrupt 1 Mask
PORTJ_INTFLAGS = 1804		// Interrupt Flag Register
PORTJ_REMAP = 1806		// I/O Port Pin Remap Register
PORTJ_PIN0CTRL = 1808		// Pin 0 Control Register
PORTJ_PIN1CTRL = 1809		// Pin 1 Control Register
PORTJ_PIN2CTRL = 1810		// Pin 2 Control Register
PORTJ_PIN3CTRL = 1811		// Pin 3 Control Register
PORTJ_PIN4CTRL = 1812		// Pin 4 Control Register
PORTJ_PIN5CTRL = 1813		// Pin 5 Control Register
PORTJ_PIN6CTRL = 1814		// Pin 6 Control Register
PORTJ_PIN7CTRL = 1815		// Pin 7 Control Register

;***************************************************************************
;** PORTK - Port K
;***************************************************************************

PORTK_DIR = 1824		// I/O Port Data Direction
PORTK_DIRSET = 1825		// I/O Port Data Direction Set
PORTK_DIRCLR = 1826		// I/O Port Data Direction Clear
PORTK_DIRTGL = 1827		// I/O Port Data Direction Toggle
PORTK_OUT = 1828		// I/O Port Output
PORTK_OUTSET = 1829		// I/O Port Output Set
PORTK_OUTCLR = 1830		// I/O Port Output Clear
PORTK_OUTTGL = 1831		// I/O Port Output Toggle
PORTK_IN = 1832		// I/O port Input
PORTK_INTCTRL = 1833		// Interrupt Control Register
PORTK_INT0MASK = 1834		// Port Interrupt 0 Mask
PORTK_INT1MASK = 1835		// Port Interrupt 1 Mask
PORTK_INTFLAGS = 1836		// Interrupt Flag Register
PORTK_REMAP = 1838		// I/O Port Pin Remap Register
PORTK_PIN0CTRL = 1840		// Pin 0 Control Register
PORTK_PIN1CTRL = 1841		// Pin 1 Control Register
PORTK_PIN2CTRL = 1842		// Pin 2 Control Register
PORTK_PIN3CTRL = 1843		// Pin 3 Control Register
PORTK_PIN4CTRL = 1844		// Pin 4 Control Register
PORTK_PIN5CTRL = 1845		// Pin 5 Control Register
PORTK_PIN6CTRL = 1846		// Pin 6 Control Register
PORTK_PIN7CTRL = 1847		// Pin 7 Control Register

;***************************************************************************
;** PORTQ - Port Q
;***************************************************************************

PORTQ_DIR = 1984		// I/O Port Data Direction
PORTQ_DIRSET = 1985		// I/O Port Data Direction Set
PORTQ_DIRCLR = 1986		// I/O Port Data Direction Clear
PORTQ_DIRTGL = 1987		// I/O Port Data Direction Toggle
PORTQ_OUT = 1988		// I/O Port Output
PORTQ_OUTSET = 1989		// I/O Port Output Set
PORTQ_OUTCLR = 1990		// I/O Port Output Clear
PORTQ_OUTTGL = 1991		// I/O Port Output Toggle
PORTQ_IN = 1992		// I/O port Input
PORTQ_INTCTRL = 1993		// Interrupt Control Register
PORTQ_INT0MASK = 1994		// Port Interrupt 0 Mask
PORTQ_INT1MASK = 1995		// Port Interrupt 1 Mask
PORTQ_INTFLAGS = 1996		// Interrupt Flag Register
PORTQ_REMAP = 1998		// I/O Port Pin Remap Register
PORTQ_PIN0CTRL = 2000		// Pin 0 Control Register
PORTQ_PIN1CTRL = 2001		// Pin 1 Control Register
PORTQ_PIN2CTRL = 2002		// Pin 2 Control Register
PORTQ_PIN3CTRL = 2003		// Pin 3 Control Register
PORTQ_PIN4CTRL = 2004		// Pin 4 Control Register
PORTQ_PIN5CTRL = 2005		// Pin 5 Control Register
PORTQ_PIN6CTRL = 2006		// Pin 6 Control Register
PORTQ_PIN7CTRL = 2007		// Pin 7 Control Register

;***************************************************************************
;** PORTR - Port R
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
;** TCC2 - Timer/Counter C2
;***************************************************************************

TCC2_CTRLA = 2048		// Control Register A
TCC2_CTRLB = 2049		// Control Register B
TCC2_CTRLC = 2050		// Control register C
TCC2_CTRLE = 2052		// Control Register E
TCC2_INTCTRLA = 2054		// Interrupt Control Register A
TCC2_INTCTRLB = 2055		// Interrupt Control Register B
TCC2_CTRLF = 2057		// Control Register F
TCC2_INTFLAGS = 2060		// Interrupt Flag Register
TCC2_LCNT = 2080		// Low Byte Count
TCC2_HCNT = 2081		// High Byte Count
TCC2_LPER = 2086		// Low Byte Period
TCC2_HPER = 2087		// High Byte Period
TCC2_LCMPA = 2088		// Low Byte Compare A
TCC2_HCMPA = 2089		// High Byte Compare A
TCC2_LCMPB = 2090		// Low Byte Compare B
TCC2_HCMPB = 2091		// High Byte Compare B
TCC2_LCMPC = 2092		// Low Byte Compare C
TCC2_HCMPC = 2093		// High Byte Compare C
TCC2_LCMPD = 2094		// Low Byte Compare D
TCC2_HCMPD = 2095		// High Byte Compare D

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
;** USARTC1 - Universal Asynchronous Receiver-Transmitter C1
;***************************************************************************

USARTC1_DATA = 2224		// Data Register
USARTC1_STATUS = 2225		// Status Register
USARTC1_CTRLA = 2227		// Control Register A
USARTC1_CTRLB = 2228		// Control Register B
USARTC1_CTRLC = 2229		// Control Register C
USARTC1_BAUDCTRLA = 2230		// Baud Rate Control Register A
USARTC1_BAUDCTRLB = 2231		// Baud Rate Control Register B

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
;** TCD0 - Timer/Counter D0
;***************************************************************************

TCD0_CTRLA = 2304		// Control  Register A
TCD0_CTRLB = 2305		// Control Register B
TCD0_CTRLC = 2306		// Control register C
TCD0_CTRLD = 2307		// Control Register D
TCD0_CTRLE = 2308		// Control Register E
TCD0_INTCTRLA = 2310		// Interrupt Control Register A
TCD0_INTCTRLB = 2311		// Interrupt Control Register B
TCD0_CTRLFCLR = 2312		// Control Register F Clear
TCD0_CTRLFSET = 2313		// Control Register F Set
TCD0_CTRLGCLR = 2314		// Control Register G Clear
TCD0_CTRLGSET = 2315		// Control Register G Set
TCD0_INTFLAGS = 2316		// Interrupt Flag Register
TCD0_TEMP = 2319		// Temporary Register For 16-bit Access
TCD0_CNT = 2336		// Count
TCD0_PER = 2342		// Period
TCD0_CCA = 2344		// Compare or Capture A
TCD0_CCB = 2346		// Compare or Capture B
TCD0_CCC = 2348		// Compare or Capture C
TCD0_CCD = 2350		// Compare or Capture D
TCD0_PERBUF = 2358		// Period Buffer
TCD0_CCABUF = 2360		// Compare Or Capture A Buffer
TCD0_CCBBUF = 2362		// Compare Or Capture B Buffer
TCD0_CCCBUF = 2364		// Compare Or Capture C Buffer
TCD0_CCDBUF = 2366		// Compare Or Capture D Buffer

;***************************************************************************
;** TCD2 - Timer/Counter D2
;***************************************************************************

TCD2_CTRLA = 2304		// Control Register A
TCD2_CTRLB = 2305		// Control Register B
TCD2_CTRLC = 2306		// Control register C
TCD2_CTRLE = 2308		// Control Register E
TCD2_INTCTRLA = 2310		// Interrupt Control Register A
TCD2_INTCTRLB = 2311		// Interrupt Control Register B
TCD2_CTRLF = 2313		// Control Register F
TCD2_INTFLAGS = 2316		// Interrupt Flag Register
TCD2_LCNT = 2336		// Low Byte Count
TCD2_HCNT = 2337		// High Byte Count
TCD2_LPER = 2342		// Low Byte Period
TCD2_HPER = 2343		// High Byte Period
TCD2_LCMPA = 2344		// Low Byte Compare A
TCD2_HCMPA = 2345		// High Byte Compare A
TCD2_LCMPB = 2346		// Low Byte Compare B
TCD2_HCMPB = 2347		// High Byte Compare B
TCD2_LCMPC = 2348		// Low Byte Compare C
TCD2_HCMPC = 2349		// High Byte Compare C
TCD2_LCMPD = 2350		// Low Byte Compare D
TCD2_HCMPD = 2351		// High Byte Compare D

;***************************************************************************
;** TCD1 - Timer/Counter D1
;***************************************************************************

TCD1_CTRLA = 2368		// Control  Register A
TCD1_CTRLB = 2369		// Control Register B
TCD1_CTRLC = 2370		// Control register C
TCD1_CTRLD = 2371		// Control Register D
TCD1_CTRLE = 2372		// Control Register E
TCD1_INTCTRLA = 2374		// Interrupt Control Register A
TCD1_INTCTRLB = 2375		// Interrupt Control Register B
TCD1_CTRLFCLR = 2376		// Control Register F Clear
TCD1_CTRLFSET = 2377		// Control Register F Set
TCD1_CTRLGCLR = 2378		// Control Register G Clear
TCD1_CTRLGSET = 2379		// Control Register G Set
TCD1_INTFLAGS = 2380		// Interrupt Flag Register
TCD1_TEMP = 2383		// Temporary Register For 16-bit Access
TCD1_CNT = 2400		// Count
TCD1_PER = 2406		// Period
TCD1_CCA = 2408		// Compare or Capture A
TCD1_CCB = 2410		// Compare or Capture B
TCD1_PERBUF = 2422		// Period Buffer
TCD1_CCABUF = 2424		// Compare Or Capture A Buffer
TCD1_CCBBUF = 2426		// Compare Or Capture B Buffer

;***************************************************************************
;** HIRESD - High-Resolution Extension D
;***************************************************************************

HIRESD_CTRLA = 2448		// Control Register

;***************************************************************************
;** USARTD0 - Universal Asynchronous Receiver-Transmitter D0
;***************************************************************************

USARTD0_DATA = 2464		// Data Register
USARTD0_STATUS = 2465		// Status Register
USARTD0_CTRLA = 2467		// Control Register A
USARTD0_CTRLB = 2468		// Control Register B
USARTD0_CTRLC = 2469		// Control Register C
USARTD0_BAUDCTRLA = 2470		// Baud Rate Control Register A
USARTD0_BAUDCTRLB = 2471		// Baud Rate Control Register B

;***************************************************************************
;** USARTD1 - Universal Asynchronous Receiver-Transmitter D1
;***************************************************************************

USARTD1_DATA = 2480		// Data Register
USARTD1_STATUS = 2481		// Status Register
USARTD1_CTRLA = 2483		// Control Register A
USARTD1_CTRLB = 2484		// Control Register B
USARTD1_CTRLC = 2485		// Control Register C
USARTD1_BAUDCTRLA = 2486		// Baud Rate Control Register A
USARTD1_BAUDCTRLB = 2487		// Baud Rate Control Register B

;***************************************************************************
;** SPID - Serial Peripheral Interface D
;***************************************************************************

SPID_CTRL = 2496		// Control Register
SPID_INTCTRL = 2497		// Interrupt Control Register
SPID_STATUS = 2498		// Status Register
SPID_DATA = 2499		// Data Register

;***************************************************************************
;** TCE0 - Timer/Counter E0
;***************************************************************************

TCE0_CTRLA = 2560		// Control  Register A
TCE0_CTRLB = 2561		// Control Register B
TCE0_CTRLC = 2562		// Control register C
TCE0_CTRLD = 2563		// Control Register D
TCE0_CTRLE = 2564		// Control Register E
TCE0_INTCTRLA = 2566		// Interrupt Control Register A
TCE0_INTCTRLB = 2567		// Interrupt Control Register B
TCE0_CTRLFCLR = 2568		// Control Register F Clear
TCE0_CTRLFSET = 2569		// Control Register F Set
TCE0_CTRLGCLR = 2570		// Control Register G Clear
TCE0_CTRLGSET = 2571		// Control Register G Set
TCE0_INTFLAGS = 2572		// Interrupt Flag Register
TCE0_TEMP = 2575		// Temporary Register For 16-bit Access
TCE0_CNT = 2592		// Count
TCE0_PER = 2598		// Period
TCE0_CCA = 2600		// Compare or Capture A
TCE0_CCB = 2602		// Compare or Capture B
TCE0_CCC = 2604		// Compare or Capture C
TCE0_CCD = 2606		// Compare or Capture D
TCE0_PERBUF = 2614		// Period Buffer
TCE0_CCABUF = 2616		// Compare Or Capture A Buffer
TCE0_CCBBUF = 2618		// Compare Or Capture B Buffer
TCE0_CCCBUF = 2620		// Compare Or Capture C Buffer
TCE0_CCDBUF = 2622		// Compare Or Capture D Buffer

;***************************************************************************
;** TCE2 - Timer/Counter E2
;***************************************************************************

TCE2_CTRLA = 2560		// Control Register A
TCE2_CTRLB = 2561		// Control Register B
TCE2_CTRLC = 2562		// Control register C
TCE2_CTRLE = 2564		// Control Register E
TCE2_INTCTRLA = 2566		// Interrupt Control Register A
TCE2_INTCTRLB = 2567		// Interrupt Control Register B
TCE2_CTRLF = 2569		// Control Register F
TCE2_INTFLAGS = 2572		// Interrupt Flag Register
TCE2_LCNT = 2592		// Low Byte Count
TCE2_HCNT = 2593		// High Byte Count
TCE2_LPER = 2598		// Low Byte Period
TCE2_HPER = 2599		// High Byte Period
TCE2_LCMPA = 2600		// Low Byte Compare A
TCE2_HCMPA = 2601		// High Byte Compare A
TCE2_LCMPB = 2602		// Low Byte Compare B
TCE2_HCMPB = 2603		// High Byte Compare B
TCE2_LCMPC = 2604		// Low Byte Compare C
TCE2_HCMPC = 2605		// High Byte Compare C
TCE2_LCMPD = 2606		// Low Byte Compare D
TCE2_HCMPD = 2607		// High Byte Compare D

;***************************************************************************
;** TCE1 - Timer/Counter E1
;***************************************************************************

TCE1_CTRLA = 2624		// Control  Register A
TCE1_CTRLB = 2625		// Control Register B
TCE1_CTRLC = 2626		// Control register C
TCE1_CTRLD = 2627		// Control Register D
TCE1_CTRLE = 2628		// Control Register E
TCE1_INTCTRLA = 2630		// Interrupt Control Register A
TCE1_INTCTRLB = 2631		// Interrupt Control Register B
TCE1_CTRLFCLR = 2632		// Control Register F Clear
TCE1_CTRLFSET = 2633		// Control Register F Set
TCE1_CTRLGCLR = 2634		// Control Register G Clear
TCE1_CTRLGSET = 2635		// Control Register G Set
TCE1_INTFLAGS = 2636		// Interrupt Flag Register
TCE1_TEMP = 2639		// Temporary Register For 16-bit Access
TCE1_CNT = 2656		// Count
TCE1_PER = 2662		// Period
TCE1_CCA = 2664		// Compare or Capture A
TCE1_CCB = 2666		// Compare or Capture B
TCE1_PERBUF = 2678		// Period Buffer
TCE1_CCABUF = 2680		// Compare Or Capture A Buffer
TCE1_CCBBUF = 2682		// Compare Or Capture B Buffer

;***************************************************************************
;** AWEXE - Advanced Waveform Extension E
;***************************************************************************

AWEXE_CTRL = 2688		// Control Register
AWEXE_FDEMASK = 2690		// Fault Detection Event Mask
AWEXE_FDCTRL = 2691		// Fault Detection Control Register
AWEXE_STATUS = 2692		// Status Register
AWEXE_STATUSSET = 2693		// Status Set Register
AWEXE_DTBOTH = 2694		// Dead Time Both Sides
AWEXE_DTBOTHBUF = 2695		// Dead Time Both Sides Buffer
AWEXE_DTLS = 2696		// Dead Time Low Side
AWEXE_DTHS = 2697		// Dead Time High Side
AWEXE_DTLSBUF = 2698		// Dead Time Low Side Buffer
AWEXE_DTHSBUF = 2699		// Dead Time High Side Buffer
AWEXE_OUTOVEN = 2700		// Output Override Enable

;***************************************************************************
;** HIRESE - High-Resolution Extension E
;***************************************************************************

HIRESE_CTRLA = 2704		// Control Register

;***************************************************************************
;** USARTE0 - Universal Asynchronous Receiver-Transmitter E0
;***************************************************************************

USARTE0_DATA = 2720		// Data Register
USARTE0_STATUS = 2721		// Status Register
USARTE0_CTRLA = 2723		// Control Register A
USARTE0_CTRLB = 2724		// Control Register B
USARTE0_CTRLC = 2725		// Control Register C
USARTE0_BAUDCTRLA = 2726		// Baud Rate Control Register A
USARTE0_BAUDCTRLB = 2727		// Baud Rate Control Register B

;***************************************************************************
;** USARTE1 - Universal Asynchronous Receiver-Transmitter E1
;***************************************************************************

USARTE1_DATA = 2736		// Data Register
USARTE1_STATUS = 2737		// Status Register
USARTE1_CTRLA = 2739		// Control Register A
USARTE1_CTRLB = 2740		// Control Register B
USARTE1_CTRLC = 2741		// Control Register C
USARTE1_BAUDCTRLA = 2742		// Baud Rate Control Register A
USARTE1_BAUDCTRLB = 2743		// Baud Rate Control Register B

;***************************************************************************
;** SPIE - Serial Peripheral Interface E
;***************************************************************************

SPIE_CTRL = 2752		// Control Register
SPIE_INTCTRL = 2753		// Interrupt Control Register
SPIE_STATUS = 2754		// Status Register
SPIE_DATA = 2755		// Data Register

;***************************************************************************
;** TCF0 - Timer/Counter F0
;***************************************************************************

TCF0_CTRLA = 2816		// Control  Register A
TCF0_CTRLB = 2817		// Control Register B
TCF0_CTRLC = 2818		// Control register C
TCF0_CTRLD = 2819		// Control Register D
TCF0_CTRLE = 2820		// Control Register E
TCF0_INTCTRLA = 2822		// Interrupt Control Register A
TCF0_INTCTRLB = 2823		// Interrupt Control Register B
TCF0_CTRLFCLR = 2824		// Control Register F Clear
TCF0_CTRLFSET = 2825		// Control Register F Set
TCF0_CTRLGCLR = 2826		// Control Register G Clear
TCF0_CTRLGSET = 2827		// Control Register G Set
TCF0_INTFLAGS = 2828		// Interrupt Flag Register
TCF0_TEMP = 2831		// Temporary Register For 16-bit Access
TCF0_CNT = 2848		// Count
TCF0_PER = 2854		// Period
TCF0_CCA = 2856		// Compare or Capture A
TCF0_CCB = 2858		// Compare or Capture B
TCF0_CCC = 2860		// Compare or Capture C
TCF0_CCD = 2862		// Compare or Capture D
TCF0_PERBUF = 2870		// Period Buffer
TCF0_CCABUF = 2872		// Compare Or Capture A Buffer
TCF0_CCBBUF = 2874		// Compare Or Capture B Buffer
TCF0_CCCBUF = 2876		// Compare Or Capture C Buffer
TCF0_CCDBUF = 2878		// Compare Or Capture D Buffer

;***************************************************************************
;** TCF2 - Timer/Counter F2
;***************************************************************************

TCF2_CTRLA = 2816		// Control Register A
TCF2_CTRLB = 2817		// Control Register B
TCF2_CTRLC = 2818		// Control register C
TCF2_CTRLE = 2820		// Control Register E
TCF2_INTCTRLA = 2822		// Interrupt Control Register A
TCF2_INTCTRLB = 2823		// Interrupt Control Register B
TCF2_CTRLF = 2825		// Control Register F
TCF2_INTFLAGS = 2828		// Interrupt Flag Register
TCF2_LCNT = 2848		// Low Byte Count
TCF2_HCNT = 2849		// High Byte Count
TCF2_LPER = 2854		// Low Byte Period
TCF2_HPER = 2855		// High Byte Period
TCF2_LCMPA = 2856		// Low Byte Compare A
TCF2_HCMPA = 2857		// High Byte Compare A
TCF2_LCMPB = 2858		// Low Byte Compare B
TCF2_HCMPB = 2859		// High Byte Compare B
TCF2_LCMPC = 2860		// Low Byte Compare C
TCF2_HCMPC = 2861		// High Byte Compare C
TCF2_LCMPD = 2862		// Low Byte Compare D
TCF2_HCMPD = 2863		// High Byte Compare D

;***************************************************************************
;** TCF1 - Timer/Counter F1
;***************************************************************************

TCF1_CTRLA = 2880		// Control  Register A
TCF1_CTRLB = 2881		// Control Register B
TCF1_CTRLC = 2882		// Control register C
TCF1_CTRLD = 2883		// Control Register D
TCF1_CTRLE = 2884		// Control Register E
TCF1_INTCTRLA = 2886		// Interrupt Control Register A
TCF1_INTCTRLB = 2887		// Interrupt Control Register B
TCF1_CTRLFCLR = 2888		// Control Register F Clear
TCF1_CTRLFSET = 2889		// Control Register F Set
TCF1_CTRLGCLR = 2890		// Control Register G Clear
TCF1_CTRLGSET = 2891		// Control Register G Set
TCF1_INTFLAGS = 2892		// Interrupt Flag Register
TCF1_TEMP = 2895		// Temporary Register For 16-bit Access
TCF1_CNT = 2912		// Count
TCF1_PER = 2918		// Period
TCF1_CCA = 2920		// Compare or Capture A
TCF1_CCB = 2922		// Compare or Capture B
TCF1_PERBUF = 2934		// Period Buffer
TCF1_CCABUF = 2936		// Compare Or Capture A Buffer
TCF1_CCBBUF = 2938		// Compare Or Capture B Buffer

;***************************************************************************
;** HIRESF - High-Resolution Extension F
;***************************************************************************

HIRESF_CTRLA = 2960		// Control Register

;***************************************************************************
;** USARTF0 - Universal Asynchronous Receiver-Transmitter F0
;***************************************************************************

USARTF0_DATA = 2976		// Data Register
USARTF0_STATUS = 2977		// Status Register
USARTF0_CTRLA = 2979		// Control Register A
USARTF0_CTRLB = 2980		// Control Register B
USARTF0_CTRLC = 2981		// Control Register C
USARTF0_BAUDCTRLA = 2982		// Baud Rate Control Register A
USARTF0_BAUDCTRLB = 2983		// Baud Rate Control Register B

;***************************************************************************
;** USARTF1 - Universal Asynchronous Receiver-Transmitter F1
;***************************************************************************

USARTF1_DATA = 2992		// Data Register
USARTF1_STATUS = 2993		// Status Register
USARTF1_CTRLA = 2995		// Control Register A
USARTF1_CTRLB = 2996		// Control Register B
USARTF1_CTRLC = 2997		// Control Register C
USARTF1_BAUDCTRLA = 2998		// Baud Rate Control Register A
USARTF1_BAUDCTRLB = 2999		// Baud Rate Control Register B

;***************************************************************************
;** SPIF - Serial Peripheral Interface F
;***************************************************************************

SPIF_CTRL = 3008		// Control Register
SPIF_INTCTRL = 3009		// Interrupt Control Register
SPIF_STATUS = 3010		// Status Register
SPIF_DATA = 3011		// Data Register


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
ADCA_base = 0x0200		// Analog to Digital Converter A
ADCB_base = 0x0240		// Analog to Digital Converter B
DACA_base = 0x0300		// Digital to Analog Converter A
DACB_base = 0x0320		// Digital to Analog Converter B
ACA_base = 0x0380		// Analog Comparator A
ACB_base = 0x0390		// Analog Comparator B
RTC_base = 0x0400		// Real-Time Counter
EBI_base = 0x0440		// External Bus Interface
TWIC_base = 0x480		// Two-Wire Interface C
TWID_base = 0x490		// Two-Wire Interface D
TWIE_base = 0x4A0		// Two-Wire Interface E
TWIF_base = 0x4B0		// Two-Wire Interface F
USB_base = 0x4C0		// Universal Serial Bus
PORTA_base = 0x0600		// Port A
PORTB_base = 0x0620		// Port B
PORTC_base = 0x0640		// Port C
PORTD_base = 0x0660		// Port D
PORTE_base = 0x0680		// Port E
PORTF_base = 0x06A0		// Port F
PORTH_base = 0x06E0		// Port H
PORTJ_base = 0x0700		// Port J
PORTK_base = 0x0720		// Port K
PORTQ_base = 0x07C0		// Port Q
PORTR_base = 0x07E0		// Port R
TCC0_base = 0x800		// Timer/Counter C0
TCC2_base = 0x800		// Timer/Counter C2
TCC1_base = 0x840		// Timer/Counter C1
AWEXC_base = 0x880		// Advanced Waveform Extension C
HIRESC_base = 0x890		// High-Resolution Extension C
USARTC0_base = 0x8A0		// Universal Asynchronous Receiver-Transmitter C0
USARTC1_base = 0x8B0		// Universal Asynchronous Receiver-Transmitter C1
SPIC_base = 0x8C0		// Serial Peripheral Interface C
IRCOM_base = 0x8F8		// IR Communication Module
TCD0_base = 0x900		// Timer/Counter D0
TCD2_base = 0x900		// Timer/Counter D2
TCD1_base = 0x940		// Timer/Counter D1
HIRESD_base = 0x990		// High-Resolution Extension D
USARTD0_base = 0x9A0		// Universal Asynchronous Receiver-Transmitter D0
USARTD1_base = 0x9B0		// Universal Asynchronous Receiver-Transmitter D1
SPID_base = 0x9C0		// Serial Peripheral Interface D
TCE0_base = 0xA00		// Timer/Counter E0
TCE2_base = 0xA00		// Timer/Counter E2
TCE1_base = 0xA40		// Timer/Counter E1
AWEXE_base = 0xA80		// Advanced Waveform Extension E
HIRESE_base = 0xA90		// High-Resolution Extension E
USARTE0_base = 0xAA0		// Universal Asynchronous Receiver-Transmitter E0
USARTE1_base = 0xAB0		// Universal Asynchronous Receiver-Transmitter E1
SPIE_base = 0xAC0		// Serial Peripheral Interface E
TCF0_base = 0xB00		// Timer/Counter F0
TCF2_base = 0xB00		// Timer/Counter F2
TCF1_base = 0xB40		// Timer/Counter F1
HIRESF_base = 0xB90		// High-Resolution Extension F
USARTF0_base = 0xBA0		// Universal Asynchronous Receiver-Transmitter F0
USARTF1_base = 0xBB0		// Universal Asynchronous Receiver-Transmitter F1
SPIF_base = 0xBC0		// Serial Peripheral Interface F


; ***** IO REGISTER OFFSETS **********************************************


;***************************************************************************
;** GPIO - General Purpose IO
;***************************************************************************/
GPIO_GPIOR0_offset = 0x00		// General Purpose IO Register 0
GPIO_GPIOR1_offset = 0x01		// General Purpose IO Register 1
GPIO_GPIOR2_offset = 0x02		// General Purpose IO Register 2
GPIO_GPIOR3_offset = 0x03		// General Purpose IO Register 3
GPIO_GPIOR4_offset = 0x04		// General Purpose IO Register 4
GPIO_GPIOR5_offset = 0x05		// General Purpose IO Register 5
GPIO_GPIOR6_offset = 0x06		// General Purpose IO Register 6
GPIO_GPIOR7_offset = 0x07		// General Purpose IO Register 7
GPIO_GPIOR8_offset = 0x08		// General Purpose IO Register 8
GPIO_GPIOR9_offset = 0x09		// General Purpose IO Register 9
GPIO_GPIORA_offset = 0x0A		// General Purpose IO Register 10
GPIO_GPIORB_offset = 0x0B		// General Purpose IO Register 11
GPIO_GPIORC_offset = 0x0C		// General Purpose IO Register 12
GPIO_GPIORD_offset = 0x0D		// General Purpose IO Register 13
GPIO_GPIORE_offset = 0x0E		// General Purpose IO Register 14
GPIO_GPIORF_offset = 0x0F		// General Purpose IO Register 15

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
PR_PRGEN_offset = 0x00		// General Power Reduction
PR_PRPA_offset = 0x01		// Power Reduction Port A
PR_PRPB_offset = 0x02		// Power Reduction Port B
PR_PRPC_offset = 0x03		// Power Reduction Port C
PR_PRPD_offset = 0x04		// Power Reduction Port D
PR_PRPE_offset = 0x05		// Power Reduction Port E
PR_PRPF_offset = 0x06		// Power Reduction Port F

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
DMA_CH_TRFCNT_offset = 0x04		// Channel Block Transfer Count
DMA_CH_REPCNT_offset = 0x06		// Channel Repeat Count
DMA_CH_SRCADDR0_offset = 0x08		// Channel Source Address 0
DMA_CH_SRCADDR1_offset = 0x09		// Channel Source Address 1
DMA_CH_SRCADDR2_offset = 0x0A		// Channel Source Address 2
DMA_CH_DESTADDR0_offset = 0x0C		// Channel Destination Address 0
DMA_CH_DESTADDR1_offset = 0x0D		// Channel Destination Address 1
DMA_CH_DESTADDR2_offset = 0x0E		// Channel Destination Address 2
DMA_CTRL_offset = 0x00		// Control
DMA_INTFLAGS_offset = 0x03		// Transfer Interrupt Status
DMA_STATUS_offset = 0x04		// Status
DMA_TEMP_offset = 0x06		// Temporary Register For 16/24-bit Access
DMA_CH0_offset = 0x10		// DMA Channel 0
DMA_CH1_offset = 0x20		// DMA Channel 1
DMA_CH2_offset = 0x30		// DMA Channel 2
DMA_CH3_offset = 0x40		// DMA Channel 3

;***************************************************************************
;** EVSYS - Event System
;***************************************************************************/
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
ADC_CAL_offset = 0x0C		// Calibration Value
ADC_CH0RES_offset = 0x10		// Channel 0 Result
ADC_CH1RES_offset = 0x12		// Channel 1 Result
ADC_CH2RES_offset = 0x14		// Channel 2 Result
ADC_CH3RES_offset = 0x16		// Channel 3 Result
ADC_CMP_offset = 0x18		// Compare Value
ADC_CH0_offset = 0x20		// ADC Channel 0
ADC_CH1_offset = 0x28		// ADC Channel 1
ADC_CH2_offset = 0x30		// ADC Channel 2
ADC_CH3_offset = 0x38		// ADC Channel 3

;***************************************************************************
;** DAC - Digital/Analog Converter
;***************************************************************************/
DAC_CTRLA_offset = 0x00		// Control Register A
DAC_CTRLB_offset = 0x01		// Control Register B
DAC_CTRLC_offset = 0x02		// Control Register C
DAC_EVCTRL_offset = 0x03		// Event Input Control
DAC_STATUS_offset = 0x05		// Status
DAC_CH0GAINCAL_offset = 0x08		// Gain Calibration
DAC_CH0OFFSETCAL_offset = 0x09		// Offset Calibration
DAC_CH1GAINCAL_offset = 0x0A		// Gain Calibration
DAC_CH1OFFSETCAL_offset = 0x0B		// Offset Calibration
DAC_CH0DATA_offset = 0x18		// Channel 0 Data
DAC_CH1DATA_offset = 0x1A		// Channel 1 Data

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
;** EBI - External Bus Interface
;***************************************************************************/
EBI_CS_CTRLA_offset = 0x00		// Chip Select Control Register A
EBI_CS_CTRLB_offset = 0x01		// Chip Select Control Register B
EBI_CS_BASEADDR_offset = 0x02		// Chip Select Base Address
EBI_CTRL_offset = 0x00		// Control
EBI_SDRAMCTRLA_offset = 0x01		// SDRAM Control Register A
EBI_REFRESH_offset = 0x04		// SDRAM Refresh Period
EBI_INITDLY_offset = 0x06		// SDRAM Initialization Delay
EBI_SDRAMCTRLB_offset = 0x08		// SDRAM Control Register B
EBI_SDRAMCTRLC_offset = 0x09		// SDRAM Control Register C
EBI_CS0_offset = 0x10		// Chip Select 0
EBI_CS1_offset = 0x14		// Chip Select 1
EBI_CS2_offset = 0x18		// Chip Select 2
EBI_CS3_offset = 0x1C		// Chip Select 3

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
;** TC2 - 16-bit Timer/Counter type 2
;***************************************************************************/
TC2_CTRLA_offset = 0x00		// Control Register A
TC2_CTRLB_offset = 0x01		// Control Register B
TC2_CTRLC_offset = 0x02		// Control register C
TC2_CTRLE_offset = 0x04		// Control Register E
TC2_INTCTRLA_offset = 0x06		// Interrupt Control Register A
TC2_INTCTRLB_offset = 0x07		// Interrupt Control Register B
TC2_CTRLF_offset = 0x09		// Control Register F
TC2_INTFLAGS_offset = 0x0C		// Interrupt Flag Register
TC2_LCNT_offset = 0x20		// Low Byte Count
TC2_HCNT_offset = 0x21		// High Byte Count
TC2_LPER_offset = 0x26		// Low Byte Period
TC2_HPER_offset = 0x27		// High Byte Period
TC2_LCMPA_offset = 0x28		// Low Byte Compare A
TC2_HCMPA_offset = 0x29		// High Byte Compare A
TC2_LCMPB_offset = 0x2A		// Low Byte Compare B
TC2_HCMPB_offset = 0x2B		// High Byte Compare B
TC2_LCMPC_offset = 0x2C		// Low Byte Compare C
TC2_HCMPC_offset = 0x2D		// High Byte Compare C
TC2_LCMPD_offset = 0x2E		// Low Byte Compare D
TC2_HCMPD_offset = 0x2F		// High Byte Compare D

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
NVM_PROD_SIGNATURES_DACA0OFFCAL_offset = 0x30		// DACA0 Calibration Byte 0
NVM_PROD_SIGNATURES_DACA0GAINCAL_offset = 0x31		// DACA0 Calibration Byte 1
NVM_PROD_SIGNATURES_DACB0OFFCAL_offset = 0x32		// DACB0 Calibration Byte 0
NVM_PROD_SIGNATURES_DACB0GAINCAL_offset = 0x33		// DACB0 Calibration Byte 1
NVM_PROD_SIGNATURES_DACA1OFFCAL_offset = 0x34		// DACA1 Calibration Byte 0
NVM_PROD_SIGNATURES_DACA1GAINCAL_offset = 0x35		// DACA1 Calibration Byte 1
NVM_PROD_SIGNATURES_DACB1OFFCAL_offset = 0x36		// DACB1 Calibration Byte 0
NVM_PROD_SIGNATURES_DACB1GAINCAL_offset = 0x37		// DACB1 Calibration Byte 1


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

; PR_PRGEN masks
PR_USB_bm = 0x40 ; USB bit mask
PR_USB_bp = 6 ; USB bit position
PR_AES_bm = 0x10 ; AES bit mask
PR_AES_bp = 4 ; AES bit position
PR_EBI_bm = 0x08 ; External Bus Interface bit mask
PR_EBI_bp = 3 ; External Bus Interface bit position
PR_RTC_bm = 0x04 ; Real-time Counter bit mask
PR_RTC_bp = 2 ; Real-time Counter bit position
PR_EVSYS_bm = 0x02 ; Event System bit mask
PR_EVSYS_bp = 1 ; Event System bit position
PR_DMA_bm = 0x01 ; DMA-Controller bit mask
PR_DMA_bp = 0 ; DMA-Controller bit position

; PR_PRPA masks
PR_DAC_bm = 0x04 ; Port A DAC bit mask
PR_DAC_bp = 2 ; Port A DAC bit position
PR_ADC_bm = 0x02 ; Port A ADC bit mask
PR_ADC_bp = 1 ; Port A ADC bit position
PR_AC_bm = 0x01 ; Port A Analog Comparator bit mask
PR_AC_bp = 0 ; Port A Analog Comparator bit position

; PR_PRPB masks
; Masks for DAC aready defined
; Masks for ADC aready defined
; Masks for AC aready defined

; PR_PRPC masks
PR_TWI_bm = 0x40 ; Port C Two-wire Interface bit mask
PR_TWI_bp = 6 ; Port C Two-wire Interface bit position
PR_USART1_bm = 0x20 ; Port C USART1 bit mask
PR_USART1_bp = 5 ; Port C USART1 bit position
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

; PR_PRPD masks
; Masks for TWI aready defined
; Masks for USART1 aready defined
; Masks for USART0 aready defined
; Masks for SPI aready defined
; Masks for HIRES aready defined
; Masks for TC1 aready defined
; Masks for TC0 aready defined

; PR_PRPE masks
; Masks for TWI aready defined
; Masks for USART1 aready defined
; Masks for USART0 aready defined
; Masks for SPI aready defined
; Masks for HIRES aready defined
; Masks for TC1 aready defined
; Masks for TC0 aready defined

; PR_PRPF masks
; Masks for TWI aready defined
; Masks for USART1 aready defined
; Masks for USART0 aready defined
; Masks for SPI aready defined
; Masks for HIRES aready defined
; Masks for TC1 aready defined
; Masks for TC0 aready defined

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
OSC_XOSCSEL_gm = 0x0F ; External Oscillator Selection and Startup Time group mask
OSC_XOSCSEL_gp = 0 ; External Oscillator Selection and Startup Time group position
OSC_XOSCSEL0_bm = 1<<0 ; External Oscillator Selection and Startup Time bit 0 mask
OSC_XOSCSEL0_bp = 0 ; External Oscillator Selection and Startup Time bit 0 position
OSC_XOSCSEL1_bm = 1<<1 ; External Oscillator Selection and Startup Time bit 1 mask
OSC_XOSCSEL1_bp = 1 ; External Oscillator Selection and Startup Time bit 1 position
OSC_XOSCSEL2_bm = 1<<2 ; External Oscillator Selection and Startup Time bit 2 mask
OSC_XOSCSEL2_bp = 2 ; External Oscillator Selection and Startup Time bit 2 position
OSC_XOSCSEL3_bm = 1<<3 ; External Oscillator Selection and Startup Time bit 3 mask
OSC_XOSCSEL3_bp = 3 ; External Oscillator Selection and Startup Time bit 3 position

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
OSC_XOSCSEL_EXTCLK_gc = 0x00<<0 ; External Clock - 6 CLK
OSC_XOSCSEL_32KHz_gc = 0x02<<0 ; 32.768 kHz TOSC - 32K CLK
OSC_XOSCSEL_XTAL_256CLK_gc = 0x03<<0 ; 0.4-16 MHz XTAL - 256 CLK
OSC_XOSCSEL_XTAL_1KCLK_gc = 0x07<<0 ; 0.4-16 MHz XTAL - 1K CLK
OSC_XOSCSEL_XTAL_16KCLK_gc = 0x0B<<0 ; 0.4-16 MHz XTAL - 16K CLK

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
MCU_AWEXFLOCK_bm = 0x08 ; AWeX on T/C F0 Lock bit mask
MCU_AWEXFLOCK_bp = 3 ; AWeX on T/C F0 Lock bit position
MCU_AWEXELOCK_bm = 0x04 ; AWeX on T/C E0 Lock bit mask
MCU_AWEXELOCK_bp = 2 ; AWeX on T/C E0 Lock bit position
MCU_AWEXDLOCK_bm = 0x02 ; AWeX on T/C D0 Lock bit mask
MCU_AWEXDLOCK_bp = 1 ; AWeX on T/C D0 Lock bit position
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
PORTCFG_EVOUTSEL_gm = 0x07 ; Event Output Select group mask
PORTCFG_EVOUTSEL_gp = 0 ; Event Output Select group position
PORTCFG_EVOUTSEL0_bm = 1<<0 ; Event Output Select bit 0 mask
PORTCFG_EVOUTSEL0_bp = 0 ; Event Output Select bit 0 position
PORTCFG_EVOUTSEL1_bm = 1<<1 ; Event Output Select bit 1 mask
PORTCFG_EVOUTSEL1_bp = 1 ; Event Output Select bit 1 position
PORTCFG_EVOUTSEL2_bm = 1<<2 ; Event Output Select bit 2 mask
PORTCFG_EVOUTSEL2_bp = 2 ; Event Output Select bit 2 position

; Virtual Port Mapping
PORTCFG_VP02MAP_PORTA_gc = 0x00<<0 ; Mapped To PORTA
PORTCFG_VP02MAP_PORTB_gc = 0x01<<0 ; Mapped To PORTB
PORTCFG_VP02MAP_PORTC_gc = 0x02<<0 ; Mapped To PORTC
PORTCFG_VP02MAP_PORTD_gc = 0x03<<0 ; Mapped To PORTD
PORTCFG_VP02MAP_PORTE_gc = 0x04<<0 ; Mapped To PORTE
PORTCFG_VP02MAP_PORTF_gc = 0x05<<0 ; Mapped To PORTF
PORTCFG_VP02MAP_PORTG_gc = 0x06<<0 ; Mapped To PORTG
PORTCFG_VP02MAP_PORTH_gc = 0x07<<0 ; Mapped To PORTH
PORTCFG_VP02MAP_PORTJ_gc = 0x08<<0 ; Mapped To PORTJ
PORTCFG_VP02MAP_PORTK_gc = 0x09<<0 ; Mapped To PORTK
PORTCFG_VP02MAP_PORTL_gc = 0x0A<<0 ; Mapped To PORTL
PORTCFG_VP02MAP_PORTM_gc = 0x0B<<0 ; Mapped To PORTM
PORTCFG_VP02MAP_PORTN_gc = 0x0C<<0 ; Mapped To PORTN
PORTCFG_VP02MAP_PORTP_gc = 0x0D<<0 ; Mapped To PORTP
PORTCFG_VP02MAP_PORTQ_gc = 0x0E<<0 ; Mapped To PORTQ
PORTCFG_VP02MAP_PORTR_gc = 0x0F<<0 ; Mapped To PORTR

; Virtual Port Mapping
PORTCFG_VP13MAP_PORTA_gc = 0x00<<4 ; Mapped To PORTA
PORTCFG_VP13MAP_PORTB_gc = 0x01<<4 ; Mapped To PORTB
PORTCFG_VP13MAP_PORTC_gc = 0x02<<4 ; Mapped To PORTC
PORTCFG_VP13MAP_PORTD_gc = 0x03<<4 ; Mapped To PORTD
PORTCFG_VP13MAP_PORTE_gc = 0x04<<4 ; Mapped To PORTE
PORTCFG_VP13MAP_PORTF_gc = 0x05<<4 ; Mapped To PORTF
PORTCFG_VP13MAP_PORTG_gc = 0x06<<4 ; Mapped To PORTG
PORTCFG_VP13MAP_PORTH_gc = 0x07<<4 ; Mapped To PORTH
PORTCFG_VP13MAP_PORTJ_gc = 0x08<<4 ; Mapped To PORTJ
PORTCFG_VP13MAP_PORTK_gc = 0x09<<4 ; Mapped To PORTK
PORTCFG_VP13MAP_PORTL_gc = 0x0A<<4 ; Mapped To PORTL
PORTCFG_VP13MAP_PORTM_gc = 0x0B<<4 ; Mapped To PORTM
PORTCFG_VP13MAP_PORTN_gc = 0x0C<<4 ; Mapped To PORTN
PORTCFG_VP13MAP_PORTP_gc = 0x0D<<4 ; Mapped To PORTP
PORTCFG_VP13MAP_PORTQ_gc = 0x0E<<4 ; Mapped To PORTQ
PORTCFG_VP13MAP_PORTR_gc = 0x0F<<4 ; Mapped To PORTR

; System Clock Output Port
PORTCFG_CLKOUT_OFF_gc = 0x00<<0 ; System Clock Output Disabled
PORTCFG_CLKOUT_PC7_gc = 0x01<<0 ; System Clock Output on Port C pin 7
PORTCFG_CLKOUT_PD7_gc = 0x02<<0 ; System Clock Output on Port D pin 7
PORTCFG_CLKOUT_PE7_gc = 0x03<<0 ; System Clock Output on Port E pin 7

; Peripheral Clock Output Select
PORTCFG_CLKOUTSEL_CLK1X_gc = 0x00<<2 ; 1x Peripheral Clock Output to pin
PORTCFG_CLKOUTSEL_CLK2X_gc = 0x01<<2 ; 2x Peripheral Clock Output to pin
PORTCFG_CLKOUTSEL_CLK4X_gc = 0x02<<2 ; 4x Peripheral Clock Output to pin

; Event Output Port
PORTCFG_EVOUT_OFF_gc = 0x00<<4 ; Event Output Disabled
PORTCFG_EVOUT_PC7_gc = 0x01<<4 ; Event Channel 7 Output on Port C pin 7
PORTCFG_EVOUT_PD7_gc = 0x02<<4 ; Event Channel 7 Output on Port D pin 7
PORTCFG_EVOUT_PE7_gc = 0x03<<4 ; Event Channel 7 Output on Port E pin 7

; Clock and Event Output Port
PORTCFG_CLKEVPIN_PIN7_gc = 0x00<<7 ; Clock and Event Ouput on PIN 7
PORTCFG_CLKEVPIN_PIN4_gc = 0x01<<7 ; Clock and Event Ouput on PIN 4

; Event Output Select
PORTCFG_EVOUTSEL_0_gc = 0x00<<0 ; Event Channel 0 output to pin
PORTCFG_EVOUTSEL_1_gc = 0x01<<0 ; Event Channel 1 output to pin
PORTCFG_EVOUTSEL_2_gc = 0x02<<0 ; Event Channel 2 output to pin
PORTCFG_EVOUTSEL_3_gc = 0x03<<0 ; Event Channel 3 output to pin
PORTCFG_EVOUTSEL_4_gc = 0x04<<0 ; Event Channel 4 output to pin
PORTCFG_EVOUTSEL_5_gc = 0x05<<0 ; Event Channel 5 output to pin
PORTCFG_EVOUTSEL_6_gc = 0x06<<0 ; Event Channel 6 output to pin
PORTCFG_EVOUTSEL_7_gc = 0x07<<0 ; Event Channel 7 output to pin


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
CRC_SOURCE_DMAC2_gc = 0x06<<0 ; DMAC Channel 2
CRC_SOURCE_DMAC3_gc = 0x07<<0 ; DMAC Channel 3


;***************************************************************************
;** DMA - DMA Controller
;***************************************************************************/

; DMA_CH_CTRLA masks
DMA_CH_ENABLE_bm = 0x80 ; Channel Enable bit mask
DMA_CH_ENABLE_bp = 7 ; Channel Enable bit position
DMA_CH_RESET_bm = 0x40 ; Channel Software Reset bit mask
DMA_CH_RESET_bp = 6 ; Channel Software Reset bit position
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
DMA_DBUFMODE_gm = 0x0C ; Double Buffering Mode group mask
DMA_DBUFMODE_gp = 2 ; Double Buffering Mode group position
DMA_DBUFMODE0_bm = 1<<2 ; Double Buffering Mode bit 0 mask
DMA_DBUFMODE0_bp = 2 ; Double Buffering Mode bit 0 position
DMA_DBUFMODE1_bm = 1<<3 ; Double Buffering Mode bit 1 mask
DMA_DBUFMODE1_bp = 3 ; Double Buffering Mode bit 1 position
DMA_PRIMODE_gm = 0x03 ; Channel Priority Mode group mask
DMA_PRIMODE_gp = 0 ; Channel Priority Mode group position
DMA_PRIMODE0_bm = 1<<0 ; Channel Priority Mode bit 0 mask
DMA_PRIMODE0_bp = 0 ; Channel Priority Mode bit 0 position
DMA_PRIMODE1_bm = 1<<1 ; Channel Priority Mode bit 1 mask
DMA_PRIMODE1_bp = 1 ; Channel Priority Mode bit 1 position

; DMA_INTFLAGS masks
DMA_CH3ERRIF_bm = 0x80 ; Channel 3 Block Transfer Error Interrupt Flag bit mask
DMA_CH3ERRIF_bp = 7 ; Channel 3 Block Transfer Error Interrupt Flag bit position
DMA_CH2ERRIF_bm = 0x40 ; Channel 2 Block Transfer Error Interrupt Flag bit mask
DMA_CH2ERRIF_bp = 6 ; Channel 2 Block Transfer Error Interrupt Flag bit position
DMA_CH1ERRIF_bm = 0x20 ; Channel 1 Block Transfer Error Interrupt Flag bit mask
DMA_CH1ERRIF_bp = 5 ; Channel 1 Block Transfer Error Interrupt Flag bit position
DMA_CH0ERRIF_bm = 0x10 ; Channel 0 Block Transfer Error Interrupt Flag bit mask
DMA_CH0ERRIF_bp = 4 ; Channel 0 Block Transfer Error Interrupt Flag bit position
DMA_CH3TRNIF_bm = 0x08 ; Channel 3 Transaction Complete Interrupt Flag bit mask
DMA_CH3TRNIF_bp = 3 ; Channel 3 Transaction Complete Interrupt Flag bit position
DMA_CH2TRNIF_bm = 0x04 ; Channel 2 Transaction Complete Interrupt Flag bit mask
DMA_CH2TRNIF_bp = 2 ; Channel 2 Transaction Complete Interrupt Flag bit position
DMA_CH1TRNIF_bm = 0x02 ; Channel 1 Transaction Complete Interrupt Flag bit mask
DMA_CH1TRNIF_bp = 1 ; Channel 1 Transaction Complete Interrupt Flag bit position
DMA_CH0TRNIF_bm = 0x01 ; Channel 0 Transaction Complete Interrupt Flag bit mask
DMA_CH0TRNIF_bp = 0 ; Channel 0 Transaction Complete Interrupt Flag bit position

; DMA_STATUS masks
DMA_CH3BUSY_bm = 0x80 ; Channel 3 Block Transfer Busy bit mask
DMA_CH3BUSY_bp = 7 ; Channel 3 Block Transfer Busy bit position
DMA_CH2BUSY_bm = 0x40 ; Channel 2 Block Transfer Busy bit mask
DMA_CH2BUSY_bp = 6 ; Channel 2 Block Transfer Busy bit position
DMA_CH1BUSY_bm = 0x20 ; Channel 1 Block Transfer Busy bit mask
DMA_CH1BUSY_bp = 5 ; Channel 1 Block Transfer Busy bit position
DMA_CH0BUSY_bm = 0x10 ; Channel 0 Block Transfer Busy bit mask
DMA_CH0BUSY_bp = 4 ; Channel 0 Block Transfer Busy bit position
DMA_CH3PEND_bm = 0x08 ; Channel 3 Block Transfer Pending bit mask
DMA_CH3PEND_bp = 3 ; Channel 3 Block Transfer Pending bit position
DMA_CH2PEND_bm = 0x04 ; Channel 2 Block Transfer Pending bit mask
DMA_CH2PEND_bp = 2 ; Channel 2 Block Transfer Pending bit position
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
DMA_CH_TRIGSRC_AES_gc = 0x04<<0 ; AES
DMA_CH_TRIGSRC_ADCA_CH0_gc = 0x10<<0 ; ADCA Channel 0
DMA_CH_TRIGSRC_ADCA_CH1_gc = 0x11<<0 ; ADCA Channel 1
DMA_CH_TRIGSRC_ADCA_CH2_gc = 0x12<<0 ; ADCA Channel 2
DMA_CH_TRIGSRC_ADCA_CH3_gc = 0x13<<0 ; ADCA Channel 3
DMA_CH_TRIGSRC_ADCA_CH4_gc = 0x14<<0 ; ADCA Channel 0,1,2,3 combined
DMA_CH_TRIGSRC_DACA_CH0_gc = 0x15<<0 ; DACA Channel 0
DMA_CH_TRIGSRC_DACA_CH1_gc = 0x16<<0 ; DACA Channel 1
DMA_CH_TRIGSRC_ADCB_CH0_gc = 0x20<<0 ; ADCB Channel 0
DMA_CH_TRIGSRC_ADCB_CH1_gc = 0x21<<0 ; ADCB Channel 1
DMA_CH_TRIGSRC_ADCB_CH2_gc = 0x22<<0 ; ADCB Channel 2
DMA_CH_TRIGSRC_ADCB_CH3_gc = 0x23<<0 ; ADCB Channel 3
DMA_CH_TRIGSRC_ADCB_CH4_gc = 0x24<<0 ; ADCB Channel 0,1,2,3 combined
DMA_CH_TRIGSRC_DACB_CH0_gc = 0x25<<0 ; DACB Channel 0
DMA_CH_TRIGSRC_DACB_CH1_gc = 0x26<<0 ; DACB Channel 1
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
DMA_CH_TRIGSRC_USARTC1_RXC_gc = 0x4E<<0 ; USART C1 Receive Complete
DMA_CH_TRIGSRC_USARTC1_DRE_gc = 0x4F<<0 ; USART C1 Data Register Empty
DMA_CH_TRIGSRC_TCD0_OVF_gc = 0x60<<0 ; Timer/Counter D0 Overflow
DMA_CH_TRIGSRC_TCD0_ERR_gc = 0x61<<0 ; Timer/Counter D0 Error
DMA_CH_TRIGSRC_TCD0_CCA_gc = 0x62<<0 ; Timer/Counter D0 Compare or Capture A
DMA_CH_TRIGSRC_TCD0_CCB_gc = 0x63<<0 ; Timer/Counter D0 Compare or Capture B
DMA_CH_TRIGSRC_TCD0_CCC_gc = 0x64<<0 ; Timer/Counter D0 Compare or Capture C
DMA_CH_TRIGSRC_TCD0_CCD_gc = 0x65<<0 ; Timer/Counter D0 Compare or Capture D
DMA_CH_TRIGSRC_TCD1_OVF_gc = 0x66<<0 ; Timer/Counter D1 Overflow
DMA_CH_TRIGSRC_TCD1_ERR_gc = 0x67<<0 ; Timer/Counter D1 Error
DMA_CH_TRIGSRC_TCD1_CCA_gc = 0x68<<0 ; Timer/Counter D1 Compare or Capture A
DMA_CH_TRIGSRC_TCD1_CCB_gc = 0x69<<0 ; Timer/Counter D1 Compare or Capture B
DMA_CH_TRIGSRC_SPID_gc = 0x6A<<0 ; SPI D Transfer Complete
DMA_CH_TRIGSRC_USARTD0_RXC_gc = 0x6B<<0 ; USART D0 Receive Complete
DMA_CH_TRIGSRC_USARTD0_DRE_gc = 0x6C<<0 ; USART D0 Data Register Empty
DMA_CH_TRIGSRC_USARTD1_RXC_gc = 0x6E<<0 ; USART D1 Receive Complete
DMA_CH_TRIGSRC_USARTD1_DRE_gc = 0x6F<<0 ; USART D1 Data Register Empty
DMA_CH_TRIGSRC_TCE0_OVF_gc = 0x80<<0 ; Timer/Counter E0 Overflow
DMA_CH_TRIGSRC_TCE0_ERR_gc = 0x81<<0 ; Timer/Counter E0 Error
DMA_CH_TRIGSRC_TCE0_CCA_gc = 0x82<<0 ; Timer/Counter E0 Compare or Capture A
DMA_CH_TRIGSRC_TCE0_CCB_gc = 0x83<<0 ; Timer/Counter E0 Compare or Capture B
DMA_CH_TRIGSRC_TCE0_CCC_gc = 0x84<<0 ; Timer/Counter E0 Compare or Capture C
DMA_CH_TRIGSRC_TCE0_CCD_gc = 0x85<<0 ; Timer/Counter E0 Compare or Capture D
DMA_CH_TRIGSRC_TCE1_OVF_gc = 0x86<<0 ; Timer/Counter E1 Overflow
DMA_CH_TRIGSRC_TCE1_ERR_gc = 0x87<<0 ; Timer/Counter E1 Error
DMA_CH_TRIGSRC_TCE1_CCA_gc = 0x88<<0 ; Timer/Counter E1 Compare or Capture A
DMA_CH_TRIGSRC_TCE1_CCB_gc = 0x89<<0 ; Timer/Counter E1 Compare or Capture B
DMA_CH_TRIGSRC_SPIE_gc = 0x8A<<0 ; SPI E Transfer Complete
DMA_CH_TRIGSRC_USARTE0_RXC_gc = 0x8B<<0 ; USART E0 Receive Complete
DMA_CH_TRIGSRC_USARTE0_DRE_gc = 0x8C<<0 ; USART E0 Data Register Empty
DMA_CH_TRIGSRC_USARTE1_RXC_gc = 0x8E<<0 ; USART E1 Receive Complete
DMA_CH_TRIGSRC_USARTE1_DRE_gc = 0x8F<<0 ; USART E1 Data Register Empty
DMA_CH_TRIGSRC_TCF0_OVF_gc = 0xA0<<0 ; Timer/Counter F0 Overflow
DMA_CH_TRIGSRC_TCF0_ERR_gc = 0xA1<<0 ; Timer/Counter F0 Error
DMA_CH_TRIGSRC_TCF0_CCA_gc = 0xA2<<0 ; Timer/Counter F0 Compare or Capture A
DMA_CH_TRIGSRC_TCF0_CCB_gc = 0xA3<<0 ; Timer/Counter F0 Compare or Capture B
DMA_CH_TRIGSRC_TCF0_CCC_gc = 0xA4<<0 ; Timer/Counter F0 Compare or Capture C
DMA_CH_TRIGSRC_TCF0_CCD_gc = 0xA5<<0 ; Timer/Counter F0 Compare or Capture D
DMA_CH_TRIGSRC_TCF1_OVF_gc = 0xA6<<0 ; Timer/Counter F1 Overflow
DMA_CH_TRIGSRC_TCF1_ERR_gc = 0xA7<<0 ; Timer/Counter F1 Error
DMA_CH_TRIGSRC_TCF1_CCA_gc = 0xA8<<0 ; Timer/Counter F1 Compare or Capture A
DMA_CH_TRIGSRC_TCF1_CCB_gc = 0xA9<<0 ; Timer/Counter F1 Compare or Capture B
DMA_CH_TRIGSRC_SPIF_gc = 0xAA<<0 ; SPI F Transfer Complete
DMA_CH_TRIGSRC_USARTF0_RXC_gc = 0xAB<<0 ; USART F0 Receive Complete
DMA_CH_TRIGSRC_USARTF0_DRE_gc = 0xAC<<0 ; USART F0 Data Register Empty
DMA_CH_TRIGSRC_USARTF1_RXC_gc = 0xAE<<0 ; USART F1 Receive Complete
DMA_CH_TRIGSRC_USARTF1_DRE_gc = 0xAF<<0 ; USART F1 Data Register Empty

; Double buffering mode
DMA_DBUFMODE_DISABLED_gc = 0x00<<2 ; Double buffering disabled
DMA_DBUFMODE_CH01_gc = 0x01<<2 ; Double buffering enabled on channel 0/1
DMA_DBUFMODE_CH23_gc = 0x02<<2 ; Double buffering enabled on channel 2/3
DMA_DBUFMODE_CH01CH23_gc = 0x03<<2 ; Double buffering enabled on ch. 0/1 and ch. 2/3

; Priority mode
DMA_PRIMODE_RR0123_gc = 0x00<<0 ; Round Robin
DMA_PRIMODE_CH0RR123_gc = 0x01<<0 ; Channel 0 > Round Robin on channel 1/2/3
DMA_PRIMODE_CH01RR23_gc = 0x02<<0 ; Channel 0 > channel 1 > Round Robin on channel 2/3
DMA_PRIMODE_CH0123_gc = 0x03<<0 ; Channel 0 > channel 1 > channel 2 > channel 3

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

; EVSYS_CH4MUX masks
; Masks for CHMUX aready defined

; EVSYS_CH5MUX masks
; Masks for CHMUX aready defined

; EVSYS_CH6MUX masks
; Masks for CHMUX aready defined

; EVSYS_CH7MUX masks
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
; Masks for QDIRM aready defined
; Masks for QDIEN aready defined
; Masks for QDEN aready defined
; Masks for DIGFILT aready defined

; EVSYS_CH3CTRL masks
; Masks for DIGFILT aready defined

; EVSYS_CH4CTRL masks
; Masks for QDIRM aready defined
; Masks for QDIEN aready defined
; Masks for QDEN aready defined
; Masks for DIGFILT aready defined

; EVSYS_CH5CTRL masks
; Masks for DIGFILT aready defined

; EVSYS_CH6CTRL masks
; Masks for DIGFILT aready defined

; EVSYS_CH7CTRL masks
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
EVSYS_CHMUX_ADCA_CH0_gc = 0x20<<0 ; ADC A Channel 0
EVSYS_CHMUX_ADCA_CH1_gc = 0x21<<0 ; ADC A Channel 1
EVSYS_CHMUX_ADCA_CH2_gc = 0x22<<0 ; ADC A Channel 2
EVSYS_CHMUX_ADCA_CH3_gc = 0x23<<0 ; ADC A Channel 3
EVSYS_CHMUX_ADCB_CH0_gc = 0x24<<0 ; ADC B Channel 0
EVSYS_CHMUX_ADCB_CH1_gc = 0x25<<0 ; ADC B Channel 1
EVSYS_CHMUX_ADCB_CH2_gc = 0x26<<0 ; ADC B Channel 2
EVSYS_CHMUX_ADCB_CH3_gc = 0x27<<0 ; ADC B Channel 3
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
EVSYS_CHMUX_PORTD_PIN3_gc = 0x6B<<0 ; Port D, Pin3
EVSYS_CHMUX_PORTD_PIN4_gc = 0x6C<<0 ; Port D, Pin4
EVSYS_CHMUX_PORTD_PIN5_gc = 0x6D<<0 ; Port D, Pin5
EVSYS_CHMUX_PORTD_PIN6_gc = 0x6E<<0 ; Port D, Pin6
EVSYS_CHMUX_PORTD_PIN7_gc = 0x6F<<0 ; Port D, Pin7
EVSYS_CHMUX_PORTE_PIN0_gc = 0x70<<0 ; Port E, Pin0
EVSYS_CHMUX_PORTE_PIN1_gc = 0x71<<0 ; Port E, Pin1
EVSYS_CHMUX_PORTE_PIN2_gc = 0x72<<0 ; Port E, Pin2
EVSYS_CHMUX_PORTE_PIN3_gc = 0x73<<0 ; Port E, Pin3
EVSYS_CHMUX_PORTE_PIN4_gc = 0x74<<0 ; Port E, Pin4
EVSYS_CHMUX_PORTE_PIN5_gc = 0x75<<0 ; Port E, Pin5
EVSYS_CHMUX_PORTE_PIN6_gc = 0x76<<0 ; Port E, Pin6
EVSYS_CHMUX_PORTE_PIN7_gc = 0x77<<0 ; Port E, Pin7
EVSYS_CHMUX_PORTF_PIN0_gc = 0x78<<0 ; Port F, Pin0
EVSYS_CHMUX_PORTF_PIN1_gc = 0x79<<0 ; Port F, Pin1
EVSYS_CHMUX_PORTF_PIN2_gc = 0x7A<<0 ; Port F, Pin2
EVSYS_CHMUX_PORTF_PIN3_gc = 0x7B<<0 ; Port F, Pin3
EVSYS_CHMUX_PORTF_PIN4_gc = 0x7C<<0 ; Port F, Pin4
EVSYS_CHMUX_PORTF_PIN5_gc = 0x7D<<0 ; Port F, Pin5
EVSYS_CHMUX_PORTF_PIN6_gc = 0x7E<<0 ; Port F, Pin6
EVSYS_CHMUX_PORTF_PIN7_gc = 0x7F<<0 ; Port F, Pin7
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
EVSYS_CHMUX_TCD0_OVF_gc = 0xD0<<0 ; Timer/Counter D0 Overflow
EVSYS_CHMUX_TCD0_ERR_gc = 0xD1<<0 ; Timer/Counter D0 Error
EVSYS_CHMUX_TCD0_CCA_gc = 0xD4<<0 ; Timer/Counter D0 Compare or Capture A
EVSYS_CHMUX_TCD0_CCB_gc = 0xD5<<0 ; Timer/Counter D0 Compare or Capture B
EVSYS_CHMUX_TCD0_CCC_gc = 0xD6<<0 ; Timer/Counter D0 Compare or Capture C
EVSYS_CHMUX_TCD0_CCD_gc = 0xD7<<0 ; Timer/Counter D0 Compare or Capture D
EVSYS_CHMUX_TCD1_OVF_gc = 0xD8<<0 ; Timer/Counter D1 Overflow
EVSYS_CHMUX_TCD1_ERR_gc = 0xD9<<0 ; Timer/Counter D1 Error
EVSYS_CHMUX_TCD1_CCA_gc = 0xDC<<0 ; Timer/Counter D1 Compare or Capture A
EVSYS_CHMUX_TCD1_CCB_gc = 0xDD<<0 ; Timer/Counter D1 Compare or Capture B
EVSYS_CHMUX_TCE0_OVF_gc = 0xE0<<0 ; Timer/Counter E0 Overflow
EVSYS_CHMUX_TCE0_ERR_gc = 0xE1<<0 ; Timer/Counter E0 Error
EVSYS_CHMUX_TCE0_CCA_gc = 0xE4<<0 ; Timer/Counter E0 Compare or Capture A
EVSYS_CHMUX_TCE0_CCB_gc = 0xE5<<0 ; Timer/Counter E0 Compare or Capture B
EVSYS_CHMUX_TCE0_CCC_gc = 0xE6<<0 ; Timer/Counter E0 Compare or Capture C
EVSYS_CHMUX_TCE0_CCD_gc = 0xE7<<0 ; Timer/Counter E0 Compare or Capture D
EVSYS_CHMUX_TCE1_OVF_gc = 0xE8<<0 ; Timer/Counter E1 Overflow
EVSYS_CHMUX_TCE1_ERR_gc = 0xE9<<0 ; Timer/Counter E1 Error
EVSYS_CHMUX_TCE1_CCA_gc = 0xEC<<0 ; Timer/Counter E1 Compare or Capture A
EVSYS_CHMUX_TCE1_CCB_gc = 0xED<<0 ; Timer/Counter E1 Compare or Capture B
EVSYS_CHMUX_TCF0_OVF_gc = 0xF0<<0 ; Timer/Counter F0 Overflow
EVSYS_CHMUX_TCF0_ERR_gc = 0xF1<<0 ; Timer/Counter F0 Error
EVSYS_CHMUX_TCF0_CCA_gc = 0xF4<<0 ; Timer/Counter F0 Compare or Capture A
EVSYS_CHMUX_TCF0_CCB_gc = 0xF5<<0 ; Timer/Counter F0 Compare or Capture B
EVSYS_CHMUX_TCF0_CCC_gc = 0xF6<<0 ; Timer/Counter F0 Compare or Capture C
EVSYS_CHMUX_TCF0_CCD_gc = 0xF7<<0 ; Timer/Counter F0 Compare or Capture D
EVSYS_CHMUX_TCF1_OVF_gc = 0xF8<<0 ; Timer/Counter F1 Overflow
EVSYS_CHMUX_TCF1_ERR_gc = 0xF9<<0 ; Timer/Counter F1 Error
EVSYS_CHMUX_TCF1_CCA_gc = 0xFC<<0 ; Timer/Counter F1 Compare or Capture A
EVSYS_CHMUX_TCF1_CCB_gc = 0xFD<<0 ; Timer/Counter F1 Compare or Capture B


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
ADC_DMASEL_gm = 0xC0 ; DMA Selection group mask
ADC_DMASEL_gp = 6 ; DMA Selection group position
ADC_DMASEL0_bm = 1<<6 ; DMA Selection bit 0 mask
ADC_DMASEL0_bp = 6 ; DMA Selection bit 0 position
ADC_DMASEL1_bm = 1<<7 ; DMA Selection bit 1 mask
ADC_DMASEL1_bp = 7 ; DMA Selection bit 1 position
ADC_CH3START_bm = 0x20 ; Channel 3 Start Conversion bit mask
ADC_CH3START_bp = 5 ; Channel 3 Start Conversion bit position
ADC_CH2START_bm = 0x10 ; Channel 2 Start Conversion bit mask
ADC_CH2START_bp = 4 ; Channel 2 Start Conversion bit position
ADC_CH1START_bm = 0x08 ; Channel 1 Start Conversion bit mask
ADC_CH1START_bp = 3 ; Channel 1 Start Conversion bit position
ADC_CH0START_bm = 0x04 ; Channel 0 Start Conversion bit mask
ADC_CH0START_bp = 2 ; Channel 0 Start Conversion bit position
ADC_FLUSH_bm = 0x02 ; Flush Pipeline bit mask
ADC_FLUSH_bp = 1 ; Flush Pipeline bit position
ADC_ENABLE_bm = 0x01 ; Enable ADC bit mask
ADC_ENABLE_bp = 0 ; Enable ADC bit position

; ADC_CTRLB masks
ADC_IMPMODE_bm = 0x80 ; Gain Stage Impedance Mode bit mask
ADC_IMPMODE_bp = 7 ; Gain Stage Impedance Mode bit position
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
ADC_SWEEP_gm = 0xC0 ; Channel Sweep Selection group mask
ADC_SWEEP_gp = 6 ; Channel Sweep Selection group position
ADC_SWEEP0_bm = 1<<6 ; Channel Sweep Selection bit 0 mask
ADC_SWEEP0_bp = 6 ; Channel Sweep Selection bit 0 position
ADC_SWEEP1_bm = 1<<7 ; Channel Sweep Selection bit 1 mask
ADC_SWEEP1_bp = 7 ; Channel Sweep Selection bit 1 position
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
ADC_CH3IF_bm = 0x08 ; Channel 3 Interrupt Flag bit mask
ADC_CH3IF_bp = 3 ; Channel 3 Interrupt Flag bit position
ADC_CH2IF_bm = 0x04 ; Channel 2 Interrupt Flag bit mask
ADC_CH2IF_bp = 2 ; Channel 2 Interrupt Flag bit position
ADC_CH1IF_bm = 0x02 ; Channel 1 Interrupt Flag bit mask
ADC_CH1IF_bp = 1 ; Channel 1 Interrupt Flag bit position
ADC_CH0IF_bm = 0x01 ; Channel 0 Interrupt Flag bit mask
ADC_CH0IF_bp = 0 ; Channel 0 Interrupt Flag bit position

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
ADC_CH_MUXINT_DAC_gc = 0x03<<3 ; DAC output

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

; Current Limitation Mode
ADC_CURRLIMIT_NO_gc = 0x00<<5 ; No Current Reduction
ADC_CURRLIMIT_SMALL_gc = 0x01<<5 ; 10% current reduction
ADC_CURRLIMIT_MEDIUM_gc = 0x02<<5 ; 20% current reduction
ADC_CURRLIMIT_LARGE_gc = 0x03<<5 ; 30% current reduction

; Voltage reference selection
ADC_REFSEL_INT1V_gc = 0x00<<4 ; Internal 1V
ADC_REFSEL_VCC_gc = 0x01<<4 ; Internal VCC / 1.6
ADC_REFSEL_AREFA_gc = 0x02<<4 ; External reference on PORT A
ADC_REFSEL_AREFB_gc = 0x03<<4 ; External reference on PORT B
ADC_REFSEL_VCCDIV2_gc = 0x04<<4 ; Internal VCC / 2

; Channel sweep selection
ADC_SWEEP_0_gc = 0x00<<6 ; ADC Channel 0
ADC_SWEEP_01_gc = 0x01<<6 ; ADC Channel 0,1
ADC_SWEEP_012_gc = 0x02<<6 ; ADC Channel 0,1,2
ADC_SWEEP_0123_gc = 0x03<<6 ; ADC Channel 0,1,2,3

; Event channel input selection
ADC_EVSEL_0123_gc = 0x00<<3 ; Event Channel 0,1,2,3
ADC_EVSEL_1234_gc = 0x01<<3 ; Event Channel 1,2,3,4
ADC_EVSEL_2345_gc = 0x02<<3 ; Event Channel 2,3,4,5
ADC_EVSEL_3456_gc = 0x03<<3 ; Event Channel 3,4,5,6
ADC_EVSEL_4567_gc = 0x04<<3 ; Event Channel 4,5,6,7
ADC_EVSEL_567_gc = 0x05<<3 ; Event Channel 5,6,7
ADC_EVSEL_67_gc = 0x06<<3 ; Event Channel 6,7
ADC_EVSEL_7_gc = 0x07<<3 ; Event Channel 7

; Event action selection
ADC_EVACT_NONE_gc = 0x00<<0 ; No event action
ADC_EVACT_CH0_gc = 0x01<<0 ; First event triggers channel 0
ADC_EVACT_CH01_gc = 0x02<<0 ; First two events trigger channel 0,1
ADC_EVACT_CH012_gc = 0x03<<0 ; First three events trigger channel 0,1,2
ADC_EVACT_CH0123_gc = 0x04<<0 ; Events trigger channel 0,1,2,3
ADC_EVACT_SWEEP_gc = 0x05<<0 ; First event triggers sweep
ADC_EVACT_SYNCHSWEEP_gc = 0x06<<0 ; First event triggers synchronized sweep

; Interupt mode
ADC_CH_INTMODE_COMPLETE_gc = 0x00<<2 ; Interrupt on conversion complete
ADC_CH_INTMODE_BELOW_gc = 0x01<<2 ; Interrupt on result below compare value
ADC_CH_INTMODE_ABOVE_gc = 0x03<<2 ; Interrupt on result above compare value

; Interrupt level
ADC_CH_INTLVL_OFF_gc = 0x00<<0 ; Interrupt disabled
ADC_CH_INTLVL_LO_gc = 0x01<<0 ; Low level
ADC_CH_INTLVL_MED_gc = 0x02<<0 ; Medium level
ADC_CH_INTLVL_HI_gc = 0x03<<0 ; High level

; DMA request selection
ADC_DMASEL_OFF_gc = 0x00<<6 ; Combined DMA request OFF
ADC_DMASEL_CH01_gc = 0x01<<6 ; ADC Channel 0 or 1
ADC_DMASEL_CH012_gc = 0x02<<6 ; ADC Channel 0 or 1 or 2
ADC_DMASEL_CH0123_gc = 0x03<<6 ; ADC Channel 0 or 1 or 2 or 3

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
;** DAC - Digital/Analog Converter
;***************************************************************************/

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
AC_HSMODE_bm = 0x08 ; High-speed Mode bit mask
AC_HSMODE_bp = 3 ; High-speed Mode bit position
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
; Masks for HSMODE aready defined
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
;** EBI - External Bus Interface
;***************************************************************************/

; EBI_CS_CTRLA masks
EBI_CS_ASPACE_gm = 0x7C ; Address Space group mask
EBI_CS_ASPACE_gp = 2 ; Address Space group position
EBI_CS_ASPACE0_bm = 1<<2 ; Address Space bit 0 mask
EBI_CS_ASPACE0_bp = 2 ; Address Space bit 0 position
EBI_CS_ASPACE1_bm = 1<<3 ; Address Space bit 1 mask
EBI_CS_ASPACE1_bp = 3 ; Address Space bit 1 position
EBI_CS_ASPACE2_bm = 1<<4 ; Address Space bit 2 mask
EBI_CS_ASPACE2_bp = 4 ; Address Space bit 2 position
EBI_CS_ASPACE3_bm = 1<<5 ; Address Space bit 3 mask
EBI_CS_ASPACE3_bp = 5 ; Address Space bit 3 position
EBI_CS_ASPACE4_bm = 1<<6 ; Address Space bit 4 mask
EBI_CS_ASPACE4_bp = 6 ; Address Space bit 4 position
EBI_CS_MODE_gm = 0x03 ; Memory Mode group mask
EBI_CS_MODE_gp = 0 ; Memory Mode group position
EBI_CS_MODE0_bm = 1<<0 ; Memory Mode bit 0 mask
EBI_CS_MODE0_bp = 0 ; Memory Mode bit 0 position
EBI_CS_MODE1_bm = 1<<1 ; Memory Mode bit 1 mask
EBI_CS_MODE1_bp = 1 ; Memory Mode bit 1 position

; EBI_CS_CTRLB masks
EBI_CS_SRWS_gm = 0x07 ; SRAM Wait State Cycles group mask
EBI_CS_SRWS_gp = 0 ; SRAM Wait State Cycles group position
EBI_CS_SRWS0_bm = 1<<0 ; SRAM Wait State Cycles bit 0 mask
EBI_CS_SRWS0_bp = 0 ; SRAM Wait State Cycles bit 0 position
EBI_CS_SRWS1_bm = 1<<1 ; SRAM Wait State Cycles bit 1 mask
EBI_CS_SRWS1_bp = 1 ; SRAM Wait State Cycles bit 1 position
EBI_CS_SRWS2_bm = 1<<2 ; SRAM Wait State Cycles bit 2 mask
EBI_CS_SRWS2_bp = 2 ; SRAM Wait State Cycles bit 2 position
EBI_CS_SDINITDONE_bm = 0x80 ; SDRAM Initialization Done bit mask
EBI_CS_SDINITDONE_bp = 7 ; SDRAM Initialization Done bit position
EBI_CS_SDSREN_bm = 0x04 ; SDRAM Self-refresh Enable bit mask
EBI_CS_SDSREN_bp = 2 ; SDRAM Self-refresh Enable bit position
EBI_CS_SDMODE_gm = 0x03 ; SDRAM Mode group mask
EBI_CS_SDMODE_gp = 0 ; SDRAM Mode group position
EBI_CS_SDMODE0_bm = 1<<0 ; SDRAM Mode bit 0 mask
EBI_CS_SDMODE0_bp = 0 ; SDRAM Mode bit 0 position
EBI_CS_SDMODE1_bm = 1<<1 ; SDRAM Mode bit 1 mask
EBI_CS_SDMODE1_bp = 1 ; SDRAM Mode bit 1 position

; EBI_CTRL masks
EBI_SDDATAW_gm = 0xC0 ; SDRAM Data Width Setting group mask
EBI_SDDATAW_gp = 6 ; SDRAM Data Width Setting group position
EBI_SDDATAW0_bm = 1<<6 ; SDRAM Data Width Setting bit 0 mask
EBI_SDDATAW0_bp = 6 ; SDRAM Data Width Setting bit 0 position
EBI_SDDATAW1_bm = 1<<7 ; SDRAM Data Width Setting bit 1 mask
EBI_SDDATAW1_bp = 7 ; SDRAM Data Width Setting bit 1 position
EBI_LPCMODE_gm = 0x30 ; SRAM LPC Mode group mask
EBI_LPCMODE_gp = 4 ; SRAM LPC Mode group position
EBI_LPCMODE0_bm = 1<<4 ; SRAM LPC Mode bit 0 mask
EBI_LPCMODE0_bp = 4 ; SRAM LPC Mode bit 0 position
EBI_LPCMODE1_bm = 1<<5 ; SRAM LPC Mode bit 1 mask
EBI_LPCMODE1_bp = 5 ; SRAM LPC Mode bit 1 position
EBI_SRMODE_gm = 0x0C ; SRAM Mode group mask
EBI_SRMODE_gp = 2 ; SRAM Mode group position
EBI_SRMODE0_bm = 1<<2 ; SRAM Mode bit 0 mask
EBI_SRMODE0_bp = 2 ; SRAM Mode bit 0 position
EBI_SRMODE1_bm = 1<<3 ; SRAM Mode bit 1 mask
EBI_SRMODE1_bp = 3 ; SRAM Mode bit 1 position
EBI_IFMODE_gm = 0x03 ; Interface Mode group mask
EBI_IFMODE_gp = 0 ; Interface Mode group position
EBI_IFMODE0_bm = 1<<0 ; Interface Mode bit 0 mask
EBI_IFMODE0_bp = 0 ; Interface Mode bit 0 position
EBI_IFMODE1_bm = 1<<1 ; Interface Mode bit 1 mask
EBI_IFMODE1_bp = 1 ; Interface Mode bit 1 position

; EBI_SDRAMCTRLA masks
EBI_SDCAS_bm = 0x08 ; SDRAM CAS Latency Setting bit mask
EBI_SDCAS_bp = 3 ; SDRAM CAS Latency Setting bit position
EBI_SDROW_bm = 0x04 ; SDRAM ROW Bits Setting bit mask
EBI_SDROW_bp = 2 ; SDRAM ROW Bits Setting bit position
EBI_SDCOL_gm = 0x03 ; SDRAM Column Bits Setting group mask
EBI_SDCOL_gp = 0 ; SDRAM Column Bits Setting group position
EBI_SDCOL0_bm = 1<<0 ; SDRAM Column Bits Setting bit 0 mask
EBI_SDCOL0_bp = 0 ; SDRAM Column Bits Setting bit 0 position
EBI_SDCOL1_bm = 1<<1 ; SDRAM Column Bits Setting bit 1 mask
EBI_SDCOL1_bp = 1 ; SDRAM Column Bits Setting bit 1 position

; EBI_SDRAMCTRLB masks
EBI_MRDLY_gm = 0xC0 ; SDRAM Mode Register Delay group mask
EBI_MRDLY_gp = 6 ; SDRAM Mode Register Delay group position
EBI_MRDLY0_bm = 1<<6 ; SDRAM Mode Register Delay bit 0 mask
EBI_MRDLY0_bp = 6 ; SDRAM Mode Register Delay bit 0 position
EBI_MRDLY1_bm = 1<<7 ; SDRAM Mode Register Delay bit 1 mask
EBI_MRDLY1_bp = 7 ; SDRAM Mode Register Delay bit 1 position
EBI_ROWCYCDLY_gm = 0x38 ; SDRAM Row Cycle Delay group mask
EBI_ROWCYCDLY_gp = 3 ; SDRAM Row Cycle Delay group position
EBI_ROWCYCDLY0_bm = 1<<3 ; SDRAM Row Cycle Delay bit 0 mask
EBI_ROWCYCDLY0_bp = 3 ; SDRAM Row Cycle Delay bit 0 position
EBI_ROWCYCDLY1_bm = 1<<4 ; SDRAM Row Cycle Delay bit 1 mask
EBI_ROWCYCDLY1_bp = 4 ; SDRAM Row Cycle Delay bit 1 position
EBI_ROWCYCDLY2_bm = 1<<5 ; SDRAM Row Cycle Delay bit 2 mask
EBI_ROWCYCDLY2_bp = 5 ; SDRAM Row Cycle Delay bit 2 position
EBI_RPDLY_gm = 0x07 ; SDRAM Row-to-Precharge Delay group mask
EBI_RPDLY_gp = 0 ; SDRAM Row-to-Precharge Delay group position
EBI_RPDLY0_bm = 1<<0 ; SDRAM Row-to-Precharge Delay bit 0 mask
EBI_RPDLY0_bp = 0 ; SDRAM Row-to-Precharge Delay bit 0 position
EBI_RPDLY1_bm = 1<<1 ; SDRAM Row-to-Precharge Delay bit 1 mask
EBI_RPDLY1_bp = 1 ; SDRAM Row-to-Precharge Delay bit 1 position
EBI_RPDLY2_bm = 1<<2 ; SDRAM Row-to-Precharge Delay bit 2 mask
EBI_RPDLY2_bp = 2 ; SDRAM Row-to-Precharge Delay bit 2 position

; EBI_SDRAMCTRLC masks
EBI_WRDLY_gm = 0xC0 ; SDRAM Write Recovery Delay group mask
EBI_WRDLY_gp = 6 ; SDRAM Write Recovery Delay group position
EBI_WRDLY0_bm = 1<<6 ; SDRAM Write Recovery Delay bit 0 mask
EBI_WRDLY0_bp = 6 ; SDRAM Write Recovery Delay bit 0 position
EBI_WRDLY1_bm = 1<<7 ; SDRAM Write Recovery Delay bit 1 mask
EBI_WRDLY1_bp = 7 ; SDRAM Write Recovery Delay bit 1 position
EBI_ESRDLY_gm = 0x38 ; SDRAM Exit-Self-refresh-to-Active Delay group mask
EBI_ESRDLY_gp = 3 ; SDRAM Exit-Self-refresh-to-Active Delay group position
EBI_ESRDLY0_bm = 1<<3 ; SDRAM Exit-Self-refresh-to-Active Delay bit 0 mask
EBI_ESRDLY0_bp = 3 ; SDRAM Exit-Self-refresh-to-Active Delay bit 0 position
EBI_ESRDLY1_bm = 1<<4 ; SDRAM Exit-Self-refresh-to-Active Delay bit 1 mask
EBI_ESRDLY1_bp = 4 ; SDRAM Exit-Self-refresh-to-Active Delay bit 1 position
EBI_ESRDLY2_bm = 1<<5 ; SDRAM Exit-Self-refresh-to-Active Delay bit 2 mask
EBI_ESRDLY2_bp = 5 ; SDRAM Exit-Self-refresh-to-Active Delay bit 2 position
EBI_ROWCOLDLY_gm = 0x07 ; SDRAM Row-to-Column Delay group mask
EBI_ROWCOLDLY_gp = 0 ; SDRAM Row-to-Column Delay group position
EBI_ROWCOLDLY0_bm = 1<<0 ; SDRAM Row-to-Column Delay bit 0 mask
EBI_ROWCOLDLY0_bp = 0 ; SDRAM Row-to-Column Delay bit 0 position
EBI_ROWCOLDLY1_bm = 1<<1 ; SDRAM Row-to-Column Delay bit 1 mask
EBI_ROWCOLDLY1_bp = 1 ; SDRAM Row-to-Column Delay bit 1 position
EBI_ROWCOLDLY2_bm = 1<<2 ; SDRAM Row-to-Column Delay bit 2 mask
EBI_ROWCOLDLY2_bp = 2 ; SDRAM Row-to-Column Delay bit 2 position

; Chip Select adress space
EBI_CS_ASPACE_256B_gc = 0x00<<2 ; 256 bytes
EBI_CS_ASPACE_512B_gc = 0x01<<2 ; 512 bytes
EBI_CS_ASPACE_1KB_gc = 0x02<<2 ; 1K bytes
EBI_CS_ASPACE_2KB_gc = 0x03<<2 ; 2K bytes
EBI_CS_ASPACE_4KB_gc = 0x04<<2 ; 4K bytes
EBI_CS_ASPACE_8KB_gc = 0x05<<2 ; 8K bytes
EBI_CS_ASPACE_16KB_gc = 0x06<<2 ; 16K bytes
EBI_CS_ASPACE_32KB_gc = 0x07<<2 ; 32K bytes
EBI_CS_ASPACE_64KB_gc = 0x08<<2 ; 64K bytes
EBI_CS_ASPACE_128KB_gc = 0x09<<2 ; 128K bytes
EBI_CS_ASPACE_256KB_gc = 0x0A<<2 ; 256K bytes
EBI_CS_ASPACE_512KB_gc = 0x0B<<2 ; 512K bytes
EBI_CS_ASPACE_1MB_gc = 0x0C<<2 ; 1M bytes
EBI_CS_ASPACE_2MB_gc = 0x0D<<2 ; 2M bytes
EBI_CS_ASPACE_4MB_gc = 0x0E<<2 ; 4M bytes
EBI_CS_ASPACE_8MB_gc = 0x0F<<2 ; 8M bytes
EBI_CS_ASPACE_16M_gc = 0x10<<2 ; 16M bytes

; SRAM Wait State Selection
EBI_CS_SRWS_0CLK_gc = 0x00<<0 ; 0 cycles
EBI_CS_SRWS_1CLK_gc = 0x01<<0 ; 1 cycle
EBI_CS_SRWS_2CLK_gc = 0x02<<0 ; 2 cycles
EBI_CS_SRWS_3CLK_gc = 0x03<<0 ; 3 cycles
EBI_CS_SRWS_4CLK_gc = 0x04<<0 ; 4 cycles
EBI_CS_SRWS_5CLK_gc = 0x05<<0 ; 5 cycles
EBI_CS_SRWS_6CLK_gc = 0x06<<0 ; 6 cycles
EBI_CS_SRWS_7CLK_gc = 0x07<<0 ; 7 cycles

; Chip Select address mode
EBI_CS_MODE_DISABLED_gc = 0x00<<0 ; Chip Select Disabled
EBI_CS_MODE_SRAM_gc = 0x01<<0 ; Chip Select in SRAM mode
EBI_CS_MODE_LPC_gc = 0x02<<0 ; Chip Select in SRAM LPC mode
EBI_CS_MODE_SDRAM_gc = 0x03<<0 ; Chip Select in SDRAM mode

; Chip Select SDRAM mode
EBI_CS_SDMODE_NORMAL_gc = 0x00<<0 ; Normal mode
EBI_CS_SDMODE_LOAD_gc = 0x01<<0 ; Load Mode Register command mode

;
EBI_SDDATAW_4BIT_gc = 0x00<<6 ; 4-bit data bus
EBI_SDDATAW_8BIT_gc = 0x01<<6 ; 8-bit data bus

;
EBI_LPCMODE_ALE1_gc = 0x00<<4 ; Data muxed with addr byte 0
EBI_LPCMODE_ALE12_gc = 0x02<<4 ; Data muxed with addr byte 0 and 1

;
EBI_SRMODE_ALE1_gc = 0x00<<2 ; Addr byte 0 muxed with 1
EBI_SRMODE_ALE2_gc = 0x01<<2 ; Addr byte 0 muxed with 2
EBI_SRMODE_ALE12_gc = 0x02<<2 ; Addr byte 0 muxed with 1 and 2
EBI_SRMODE_NOALE_gc = 0x03<<2 ; No addr muxing

;
EBI_IFMODE_DISABLED_gc = 0x00<<0 ; EBI Disabled
EBI_IFMODE_3PORT_gc = 0x01<<0 ; 3-port mode
EBI_IFMODE_4PORT_gc = 0x02<<0 ; 4-port mode
EBI_IFMODE_2PORT_gc = 0x03<<0 ; 2-port mode

;
EBI_SDCOL_8BIT_gc = 0x00<<0 ; 8 column bits
EBI_SDCOL_9BIT_gc = 0x01<<0 ; 9 column bits
EBI_SDCOL_10BIT_gc = 0x02<<0 ; 10 column bits
EBI_SDCOL_11BIT_gc = 0x03<<0 ; 11 column bits

; SDRAM Load Mode to Active delay
EBI_MRDLY_0CLK_gc = 0x00<<6 ; 0 cycles
EBI_MRDLY_1CLK_gc = 0x01<<6 ; 1 cycle
EBI_MRDLY_2CLK_gc = 0x02<<6 ; 2 cycles
EBI_MRDLY_3CLK_gc = 0x03<<6 ; 3 cycles

; SDRAM Row Cycle Delay
EBI_ROWCYCDLY_0CLK_gc = 0x00<<3 ; 0 cycles
EBI_ROWCYCDLY_1CLK_gc = 0x01<<3 ; 1 cycle
EBI_ROWCYCDLY_2CLK_gc = 0x02<<3 ; 2 cycles
EBI_ROWCYCDLY_3CLK_gc = 0x03<<3 ; 3 cycles
EBI_ROWCYCDLY_4CLK_gc = 0x04<<3 ; 4 cycles
EBI_ROWCYCDLY_5CLK_gc = 0x05<<3 ; 5 cycles
EBI_ROWCYCDLY_6CLK_gc = 0x06<<3 ; 6 cycles
EBI_ROWCYCDLY_7CLK_gc = 0x07<<3 ; 7 cycles

; SDRAM Row to Precharge Delay
EBI_RPDLY_0CLK_gc = 0x00<<0 ; 0 cycles
EBI_RPDLY_1CLK_gc = 0x01<<0 ; 1 cycle
EBI_RPDLY_2CLK_gc = 0x02<<0 ; 2 cycles
EBI_RPDLY_3CLK_gc = 0x03<<0 ; 3 cycles
EBI_RPDLY_4CLK_gc = 0x04<<0 ; 4 cycles
EBI_RPDLY_5CLK_gc = 0x05<<0 ; 5 cycles
EBI_RPDLY_6CLK_gc = 0x06<<0 ; 6 cycles
EBI_RPDLY_7CLK_gc = 0x07<<0 ; 7 cycles

; SDRAM Write Recovery Delay
EBI_WRDLY_0CLK_gc = 0x00<<6 ; 0 cycles
EBI_WRDLY_1CLK_gc = 0x01<<6 ; 1 cycle
EBI_WRDLY_2CLK_gc = 0x02<<6 ; 2 cycles
EBI_WRDLY_3CLK_gc = 0x03<<6 ; 3 cycles

; SDRAM Exit Self Refresh to Active Delay
EBI_ESRDLY_0CLK_gc = 0x00<<3 ; 0 cycles
EBI_ESRDLY_1CLK_gc = 0x01<<3 ; 1 cycle
EBI_ESRDLY_2CLK_gc = 0x02<<3 ; 2 cycles
EBI_ESRDLY_3CLK_gc = 0x03<<3 ; 3 cycles
EBI_ESRDLY_4CLK_gc = 0x04<<3 ; 4 cycles
EBI_ESRDLY_5CLK_gc = 0x05<<3 ; 5 cycles
EBI_ESRDLY_6CLK_gc = 0x06<<3 ; 6 cycles
EBI_ESRDLY_7CLK_gc = 0x07<<3 ; 7 cycles

; SDRAM Row to Column Delay
EBI_ROWCOLDLY_0CLK_gc = 0x00<<0 ; 0 cycles
EBI_ROWCOLDLY_1CLK_gc = 0x01<<0 ; 1 cycle
EBI_ROWCOLDLY_2CLK_gc = 0x02<<0 ; 2 cycles
EBI_ROWCOLDLY_3CLK_gc = 0x03<<0 ; 3 cycles
EBI_ROWCOLDLY_4CLK_gc = 0x04<<0 ; 4 cycles
EBI_ROWCOLDLY_5CLK_gc = 0x05<<0 ; 5 cycles
EBI_ROWCOLDLY_6CLK_gc = 0x06<<0 ; 6 cycles
EBI_ROWCOLDLY_7CLK_gc = 0x07<<0 ; 7 cycles


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
TWI_SDAHOLD_bm = 0x02 ; SDA Hold Time Enable bit mask
TWI_SDAHOLD_bp = 1 ; SDA Hold Time Enable bit position
TWI_EDIEN_bm = 0x01 ; External Driver Interface Enable bit mask
TWI_EDIEN_bp = 0 ; External Driver Interface Enable bit position

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
TC_CLKSEL_EVCH4_gc = 0x0C<<0 ; Event Channel 4
TC_CLKSEL_EVCH5_gc = 0x0D<<0 ; Event Channel 5
TC_CLKSEL_EVCH6_gc = 0x0E<<0 ; Event Channel 6
TC_CLKSEL_EVCH7_gc = 0x0F<<0 ; Event Channel 7

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
TC_BYTEM_SPLITMODE_gc = 0x02<<0 ; Timer/Counter split into two 8-bit Counters (TC2)

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
TC_EVSEL_CH4_gc = 0x0C<<0 ; Event Channel 4
TC_EVSEL_CH5_gc = 0x0D<<0 ; Event Channel 5
TC_EVSEL_CH6_gc = 0x0E<<0 ; Event Channel 6
TC_EVSEL_CH7_gc = 0x0F<<0 ; Event Channel 7

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
;** TC2 - 16-bit Timer/Counter type 2
;***************************************************************************/

; TC2_CTRLA masks
TC2_CLKSEL_gm = 0x0F ; Clock Selection group mask
TC2_CLKSEL_gp = 0 ; Clock Selection group position
TC2_CLKSEL0_bm = 1<<0 ; Clock Selection bit 0 mask
TC2_CLKSEL0_bp = 0 ; Clock Selection bit 0 position
TC2_CLKSEL1_bm = 1<<1 ; Clock Selection bit 1 mask
TC2_CLKSEL1_bp = 1 ; Clock Selection bit 1 position
TC2_CLKSEL2_bm = 1<<2 ; Clock Selection bit 2 mask
TC2_CLKSEL2_bp = 2 ; Clock Selection bit 2 position
TC2_CLKSEL3_bm = 1<<3 ; Clock Selection bit 3 mask
TC2_CLKSEL3_bp = 3 ; Clock Selection bit 3 position

; TC2_CTRLB masks
TC2_HCMPDEN_bm = 0x80 ; High Byte Compare D Enable bit mask
TC2_HCMPDEN_bp = 7 ; High Byte Compare D Enable bit position
TC2_HCMPCEN_bm = 0x40 ; High Byte Compare C Enable bit mask
TC2_HCMPCEN_bp = 6 ; High Byte Compare C Enable bit position
TC2_HCMPBEN_bm = 0x20 ; High Byte Compare B Enable bit mask
TC2_HCMPBEN_bp = 5 ; High Byte Compare B Enable bit position
TC2_HCMPAEN_bm = 0x10 ; High Byte Compare A Enable bit mask
TC2_HCMPAEN_bp = 4 ; High Byte Compare A Enable bit position
TC2_LCMPDEN_bm = 0x08 ; Low Byte Compare D Enable bit mask
TC2_LCMPDEN_bp = 3 ; Low Byte Compare D Enable bit position
TC2_LCMPCEN_bm = 0x04 ; Low Byte Compare C Enable bit mask
TC2_LCMPCEN_bp = 2 ; Low Byte Compare C Enable bit position
TC2_LCMPBEN_bm = 0x02 ; Low Byte Compare B Enable bit mask
TC2_LCMPBEN_bp = 1 ; Low Byte Compare B Enable bit position
TC2_LCMPAEN_bm = 0x01 ; Low Byte Compare A Enable bit mask
TC2_LCMPAEN_bp = 0 ; Low Byte Compare A Enable bit position

; TC2_CTRLC masks
TC2_HCMPD_bm = 0x80 ; High Byte Compare D Output Value bit mask
TC2_HCMPD_bp = 7 ; High Byte Compare D Output Value bit position
TC2_HCMPC_bm = 0x40 ; High Byte Compare C Output Value bit mask
TC2_HCMPC_bp = 6 ; High Byte Compare C Output Value bit position
TC2_HCMPB_bm = 0x20 ; High Byte Compare B Output Value bit mask
TC2_HCMPB_bp = 5 ; High Byte Compare B Output Value bit position
TC2_HCMPA_bm = 0x10 ; High Byte Compare A Output Value bit mask
TC2_HCMPA_bp = 4 ; High Byte Compare A Output Value bit position
TC2_LCMPD_bm = 0x08 ; Low Byte Compare D Output Value bit mask
TC2_LCMPD_bp = 3 ; Low Byte Compare D Output Value bit position
TC2_LCMPC_bm = 0x04 ; Low Byte Compare C Output Value bit mask
TC2_LCMPC_bp = 2 ; Low Byte Compare C Output Value bit position
TC2_LCMPB_bm = 0x02 ; Low Byte Compare B Output Value bit mask
TC2_LCMPB_bp = 1 ; Low Byte Compare B Output Value bit position
TC2_LCMPA_bm = 0x01 ; Low Byte Compare A Output Value bit mask
TC2_LCMPA_bp = 0 ; Low Byte Compare A Output Value bit position

; TC2_CTRLE masks
TC2_BYTEM_gm = 0x03 ; Byte Mode group mask
TC2_BYTEM_gp = 0 ; Byte Mode group position
TC2_BYTEM0_bm = 1<<0 ; Byte Mode bit 0 mask
TC2_BYTEM0_bp = 0 ; Byte Mode bit 0 position
TC2_BYTEM1_bm = 1<<1 ; Byte Mode bit 1 mask
TC2_BYTEM1_bp = 1 ; Byte Mode bit 1 position

; TC2_INTCTRLA masks
TC2_HUNFINTLVL_gm = 0x0C ; High Byte Underflow Interrupt Level group mask
TC2_HUNFINTLVL_gp = 2 ; High Byte Underflow Interrupt Level group position
TC2_HUNFINTLVL0_bm = 1<<2 ; High Byte Underflow Interrupt Level bit 0 mask
TC2_HUNFINTLVL0_bp = 2 ; High Byte Underflow Interrupt Level bit 0 position
TC2_HUNFINTLVL1_bm = 1<<3 ; High Byte Underflow Interrupt Level bit 1 mask
TC2_HUNFINTLVL1_bp = 3 ; High Byte Underflow Interrupt Level bit 1 position
TC2_LUNFINTLVL_gm = 0x03 ; Low Byte Underflow interrupt level group mask
TC2_LUNFINTLVL_gp = 0 ; Low Byte Underflow interrupt level group position
TC2_LUNFINTLVL0_bm = 1<<0 ; Low Byte Underflow interrupt level bit 0 mask
TC2_LUNFINTLVL0_bp = 0 ; Low Byte Underflow interrupt level bit 0 position
TC2_LUNFINTLVL1_bm = 1<<1 ; Low Byte Underflow interrupt level bit 1 mask
TC2_LUNFINTLVL1_bp = 1 ; Low Byte Underflow interrupt level bit 1 position

; TC2_INTCTRLB masks
TC2_LCMPDINTLVL_gm = 0xC0 ; Low Byte Compare D Interrupt Level group mask
TC2_LCMPDINTLVL_gp = 6 ; Low Byte Compare D Interrupt Level group position
TC2_LCMPDINTLVL0_bm = 1<<6 ; Low Byte Compare D Interrupt Level bit 0 mask
TC2_LCMPDINTLVL0_bp = 6 ; Low Byte Compare D Interrupt Level bit 0 position
TC2_LCMPDINTLVL1_bm = 1<<7 ; Low Byte Compare D Interrupt Level bit 1 mask
TC2_LCMPDINTLVL1_bp = 7 ; Low Byte Compare D Interrupt Level bit 1 position
TC2_LCMPCINTLVL_gm = 0x30 ; Low Byte Compare C Interrupt Level group mask
TC2_LCMPCINTLVL_gp = 4 ; Low Byte Compare C Interrupt Level group position
TC2_LCMPCINTLVL0_bm = 1<<4 ; Low Byte Compare C Interrupt Level bit 0 mask
TC2_LCMPCINTLVL0_bp = 4 ; Low Byte Compare C Interrupt Level bit 0 position
TC2_LCMPCINTLVL1_bm = 1<<5 ; Low Byte Compare C Interrupt Level bit 1 mask
TC2_LCMPCINTLVL1_bp = 5 ; Low Byte Compare C Interrupt Level bit 1 position
TC2_LCMPBINTLVL_gm = 0x0C ; Low Byte Compare B Interrupt Level group mask
TC2_LCMPBINTLVL_gp = 2 ; Low Byte Compare B Interrupt Level group position
TC2_LCMPBINTLVL0_bm = 1<<2 ; Low Byte Compare B Interrupt Level bit 0 mask
TC2_LCMPBINTLVL0_bp = 2 ; Low Byte Compare B Interrupt Level bit 0 position
TC2_LCMPBINTLVL1_bm = 1<<3 ; Low Byte Compare B Interrupt Level bit 1 mask
TC2_LCMPBINTLVL1_bp = 3 ; Low Byte Compare B Interrupt Level bit 1 position
TC2_LCMPAINTLVL_gm = 0x03 ; Low Byte Compare A Interrupt Level group mask
TC2_LCMPAINTLVL_gp = 0 ; Low Byte Compare A Interrupt Level group position
TC2_LCMPAINTLVL0_bm = 1<<0 ; Low Byte Compare A Interrupt Level bit 0 mask
TC2_LCMPAINTLVL0_bp = 0 ; Low Byte Compare A Interrupt Level bit 0 position
TC2_LCMPAINTLVL1_bm = 1<<1 ; Low Byte Compare A Interrupt Level bit 1 mask
TC2_LCMPAINTLVL1_bp = 1 ; Low Byte Compare A Interrupt Level bit 1 position

; TC2_CTRLF masks
TC2_CMD_gm = 0x0C ; Command group mask
TC2_CMD_gp = 2 ; Command group position
TC2_CMD0_bm = 1<<2 ; Command bit 0 mask
TC2_CMD0_bp = 2 ; Command bit 0 position
TC2_CMD1_bm = 1<<3 ; Command bit 1 mask
TC2_CMD1_bp = 3 ; Command bit 1 position
TC2_CMDEN_gm = 0x03 ; Command Enable group mask
TC2_CMDEN_gp = 0 ; Command Enable group position
TC2_CMDEN0_bm = 1<<0 ; Command Enable bit 0 mask
TC2_CMDEN0_bp = 0 ; Command Enable bit 0 position
TC2_CMDEN1_bm = 1<<1 ; Command Enable bit 1 mask
TC2_CMDEN1_bp = 1 ; Command Enable bit 1 position

; TC2_INTFLAGS masks
TC2_LCMPDIF_bm = 0x80 ; Low Byte Compare D Interrupt Flag bit mask
TC2_LCMPDIF_bp = 7 ; Low Byte Compare D Interrupt Flag bit position
TC2_LCMPCIF_bm = 0x40 ; Low Byte Compare C Interrupt Flag bit mask
TC2_LCMPCIF_bp = 6 ; Low Byte Compare C Interrupt Flag bit position
TC2_LCMPBIF_bm = 0x20 ; Low Byte Compare B Interrupt Flag bit mask
TC2_LCMPBIF_bp = 5 ; Low Byte Compare B Interrupt Flag bit position
TC2_LCMPAIF_bm = 0x10 ; Low Byte Compare A Interrupt Flag bit mask
TC2_LCMPAIF_bp = 4 ; Low Byte Compare A Interrupt Flag bit position
TC2_HUNFIF_bm = 0x02 ; High Byte Underflow Interrupt Flag bit mask
TC2_HUNFIF_bp = 1 ; High Byte Underflow Interrupt Flag bit position
TC2_LUNFIF_bm = 0x01 ; Low Byte Underflow Interrupt Flag bit mask
TC2_LUNFIF_bp = 0 ; Low Byte Underflow Interrupt Flag bit position

; Clock Selection
TC2_CLKSEL_OFF_gc = 0x00<<0 ; Timer Off
TC2_CLKSEL_DIV1_gc = 0x01<<0 ; System Clock
TC2_CLKSEL_DIV2_gc = 0x02<<0 ; System Clock / 2
TC2_CLKSEL_DIV4_gc = 0x03<<0 ; System Clock / 4
TC2_CLKSEL_DIV8_gc = 0x04<<0 ; System Clock / 8
TC2_CLKSEL_DIV64_gc = 0x05<<0 ; System Clock / 64
TC2_CLKSEL_DIV256_gc = 0x06<<0 ; System Clock / 256
TC2_CLKSEL_DIV1024_gc = 0x07<<0 ; System Clock / 1024
TC2_CLKSEL_EVCH0_gc = 0x08<<0 ; Event Channel 0
TC2_CLKSEL_EVCH1_gc = 0x09<<0 ; Event Channel 1
TC2_CLKSEL_EVCH2_gc = 0x0A<<0 ; Event Channel 2
TC2_CLKSEL_EVCH3_gc = 0x0B<<0 ; Event Channel 3
TC2_CLKSEL_EVCH4_gc = 0x0C<<0 ; Event Channel 4
TC2_CLKSEL_EVCH5_gc = 0x0D<<0 ; Event Channel 5
TC2_CLKSEL_EVCH6_gc = 0x0E<<0 ; Event Channel 6
TC2_CLKSEL_EVCH7_gc = 0x0F<<0 ; Event Channel 7

; Byte Mode
TC2_BYTEM_NORMAL_gc = 0x00<<0 ; 16-bit mode
TC2_BYTEM_BYTEMODE_gc = 0x01<<0 ; Timer/Counter operating in byte mode only (TC2)
TC2_BYTEM_SPLITMODE_gc = 0x02<<0 ; Timer/Counter split into two 8-bit Counters

; High Byte Underflow Interrupt Level
TC2_HUNFINTLVL_OFF_gc = 0x00<<2 ; Interrupt Disabled
TC2_HUNFINTLVL_LO_gc = 0x01<<2 ; Low Level
TC2_HUNFINTLVL_MED_gc = 0x02<<2 ; Medium Level
TC2_HUNFINTLVL_HI_gc = 0x03<<2 ; High Level

; Low Byte Underflow Interrupt Level
TC2_LUNFINTLVL_OFF_gc = 0x00<<0 ; Interrupt Disabled
TC2_LUNFINTLVL_LO_gc = 0x01<<0 ; Low Level
TC2_LUNFINTLVL_MED_gc = 0x02<<0 ; Medium Level
TC2_LUNFINTLVL_HI_gc = 0x03<<0 ; High Level

; Low Byte Compare D Interrupt Level
TC2_LCMPDINTLVL_OFF_gc = 0x00<<6 ; Interrupt Disabled
TC2_LCMPDINTLVL_LO_gc = 0x01<<6 ; Low Level
TC2_LCMPDINTLVL_MED_gc = 0x02<<6 ; Medium Level
TC2_LCMPDINTLVL_HI_gc = 0x03<<6 ; High Level

; Low Byte Compare C Interrupt Level
TC2_LCMPCINTLVL_OFF_gc = 0x00<<4 ; Interrupt Disabled
TC2_LCMPCINTLVL_LO_gc = 0x01<<4 ; Low Level
TC2_LCMPCINTLVL_MED_gc = 0x02<<4 ; Medium Level
TC2_LCMPCINTLVL_HI_gc = 0x03<<4 ; High Level

; Low Byte Compare B Interrupt Level
TC2_LCMPBINTLVL_OFF_gc = 0x00<<2 ; Interrupt Disabled
TC2_LCMPBINTLVL_LO_gc = 0x01<<2 ; Low Level
TC2_LCMPBINTLVL_MED_gc = 0x02<<2 ; Medium Level
TC2_LCMPBINTLVL_HI_gc = 0x03<<2 ; High Level

; Low Byte Compare A Interrupt Level
TC2_LCMPAINTLVL_OFF_gc = 0x00<<0 ; Interrupt Disabled
TC2_LCMPAINTLVL_LO_gc = 0x01<<0 ; Low Level
TC2_LCMPAINTLVL_MED_gc = 0x02<<0 ; Medium Level
TC2_LCMPAINTLVL_HI_gc = 0x03<<0 ; High Level

; Timer/Counter Command
TC2_CMD_NONE_gc = 0x00<<2 ; No Command
TC2_CMD_RESTART_gc = 0x02<<2 ; Force Restart
TC2_CMD_RESET_gc = 0x03<<2 ; Force Hard Reset

; Timer/Counter Command
TC2_CMDEN_LOW_gc = 0x01<<0 ; Low Byte Timer/Counter
TC2_CMDEN_HIGH_gc = 0x02<<0 ; High Byte Timer/Counter
TC2_CMDEN_BOTH_gc = 0x03<<0 ; Both Low Byte and High Byte Timer/Counters


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
IRDA_EVSEL_4_gc = 0x0C<<0 ; Event Channel 4
IRDA_EVSEL_5_gc = 0x0D<<0 ; Event Channel 5
IRDA_EVSEL_6_gc = 0x0E<<0 ; Event Channel 6
IRDA_EVSEL_7_gc = 0x0F<<0 ; Event Channel 7


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
PROGMEM_SIZE    =   0x11000
PROGMEM_END     =   0x00000+0x11000-1

APP_SECTION_START   =   0x00000
APP_SECTION_SIZE    =   0x10000
APP_SECTION_END     =   0x00000+0x10000-1

APPTABLE_SECTION_START  =   0x0F000
APPTABLE_SECTION_SIZE   =   0x1000
APPTABLE_SECTION_END    =   0x0F000+0x1000-1

BOOT_SECTION_START  =   0x10000
BOOT_SECTION_SIZE   =   0x1000
BOOT_SECTION_END    =   0x10000+0x1000-1

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
DATAMEM_SIZE    =   0x1000000
DATAMEM_END     =   0x0000+0x1000000-1

IO_START    =   0x0000
IO_SIZE     =   0x001000
IO_END      =   0x0000+0x001000-1

MAPPED_EEPROM_START     =   0x1000
MAPPED_EEPROM_SIZE      =   0x000800
MAPPED_EEPROM_END       =   0x1000+0x000800-1

INTERNAL_SRAM_START     =   0x2000
INTERNAL_SRAM_SIZE      =   0x001000
INTERNAL_SRAM_END       =   0x2000+0x001000-1

EXTERNAL_SRAM_START     =   0x4000
EXTERNAL_SRAM_SIZE      =   0xFFC000
EXTERNAL_SRAM_END       =   0x4000+0xFFC000-1


; Legacy definitions
FLASHEND    = PROGMEM_END/2  ; Note: Word address
IOEND       = IO_END
SRAM_START	= INTERNAL_SRAM_START
SRAM_SIZE	= INTERNAL_SRAM_SIZE
RAMEND	    = INTERNAL_SRAM_END
XRAMEND	    = EXTERNAL_SRAM_END
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
DMA_CH2_vect = 16 ; Channel 2 Interrupt
DMA_CH3_vect = 18 ; Channel 3 Interrupt

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

; TCC2 interrupt vectors
TCC2_LUNF_vect = 28 ; Low Byte Underflow Interrupt
TCC2_HUNF_vect = 30 ; High Byte Underflow Interrupt
TCC2_LCMPA_vect = 32 ; Low Byte Compare A Interrupt
TCC2_LCMPB_vect = 34 ; Low Byte Compare B Interrupt
TCC2_LCMPC_vect = 36 ; Low Byte Compare C Interrupt
TCC2_LCMPD_vect = 38 ; Low Byte Compare D Interrupt

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

; USARTC1 interrupt vectors
USARTC1_RXC_vect = 56 ; Reception Complete Interrupt
USARTC1_DRE_vect = 58 ; Data Register Empty Interrupt
USARTC1_TXC_vect = 60 ; Transmission Complete Interrupt

; AES interrupt vectors
AES_INT_vect = 62 ; AES Interrupt

; NVM interrupt vectors
NVM_EE_vect = 64 ; EE Interrupt
NVM_SPM_vect = 66 ; SPM Interrupt

; PORTB interrupt vectors
PORTB_INT0_vect = 68 ; External Interrupt 0
PORTB_INT1_vect = 70 ; External Interrupt 1

; ACB interrupt vectors
ACB_AC0_vect = 72 ; AC0 Interrupt
ACB_AC1_vect = 74 ; AC1 Interrupt
ACB_ACW_vect = 76 ; ACW Window Mode Interrupt

; ADCB interrupt vectors
ADCB_CH0_vect = 78 ; Interrupt 0
ADCB_CH1_vect = 80 ; Interrupt 1
ADCB_CH2_vect = 82 ; Interrupt 2
ADCB_CH3_vect = 84 ; Interrupt 3

; PORTE interrupt vectors
PORTE_INT0_vect = 86 ; External Interrupt 0
PORTE_INT1_vect = 88 ; External Interrupt 1

; TWIE interrupt vectors
TWIE_TWIS_vect = 90 ; TWI Slave Interrupt
TWIE_TWIM_vect = 92 ; TWI Master Interrupt

; TCE0 interrupt vectors
TCE0_OVF_vect = 94 ; Overflow Interrupt
TCE0_ERR_vect = 96 ; Error Interrupt
TCE0_CCA_vect = 98 ; Compare or Capture A Interrupt
TCE0_CCB_vect = 100 ; Compare or Capture B Interrupt
TCE0_CCC_vect = 102 ; Compare or Capture C Interrupt
TCE0_CCD_vect = 104 ; Compare or Capture D Interrupt

; TCE2 interrupt vectors
TCE2_LUNF_vect = 94 ; Low Byte Underflow Interrupt
TCE2_HUNF_vect = 96 ; High Byte Underflow Interrupt
TCE2_LCMPA_vect = 98 ; Low Byte Compare A Interrupt
TCE2_LCMPB_vect = 100 ; Low Byte Compare B Interrupt
TCE2_LCMPC_vect = 102 ; Low Byte Compare C Interrupt
TCE2_LCMPD_vect = 104 ; Low Byte Compare D Interrupt

; TCE1 interrupt vectors
TCE1_OVF_vect = 106 ; Overflow Interrupt
TCE1_ERR_vect = 108 ; Error Interrupt
TCE1_CCA_vect = 110 ; Compare or Capture A Interrupt
TCE1_CCB_vect = 112 ; Compare or Capture B Interrupt

; SPIE interrupt vectors
SPIE_INT_vect = 114 ; SPI Interrupt

; USARTE0 interrupt vectors
USARTE0_RXC_vect = 116 ; Reception Complete Interrupt
USARTE0_DRE_vect = 118 ; Data Register Empty Interrupt
USARTE0_TXC_vect = 120 ; Transmission Complete Interrupt

; USARTE1 interrupt vectors
USARTE1_RXC_vect = 122 ; Reception Complete Interrupt
USARTE1_DRE_vect = 124 ; Data Register Empty Interrupt
USARTE1_TXC_vect = 126 ; Transmission Complete Interrupt

; PORTD interrupt vectors
PORTD_INT0_vect = 128 ; External Interrupt 0
PORTD_INT1_vect = 130 ; External Interrupt 1

; PORTA interrupt vectors
PORTA_INT0_vect = 132 ; External Interrupt 0
PORTA_INT1_vect = 134 ; External Interrupt 1

; ACA interrupt vectors
ACA_AC0_vect = 136 ; AC0 Interrupt
ACA_AC1_vect = 138 ; AC1 Interrupt
ACA_ACW_vect = 140 ; ACW Window Mode Interrupt

; ADCA interrupt vectors
ADCA_CH0_vect = 142 ; Interrupt 0
ADCA_CH1_vect = 144 ; Interrupt 1
ADCA_CH2_vect = 146 ; Interrupt 2
ADCA_CH3_vect = 148 ; Interrupt 3

; TWID interrupt vectors
TWID_TWIS_vect = 150 ; TWI Slave Interrupt
TWID_TWIM_vect = 152 ; TWI Master Interrupt

; TCD0 interrupt vectors
TCD0_OVF_vect = 154 ; Overflow Interrupt
TCD0_ERR_vect = 156 ; Error Interrupt
TCD0_CCA_vect = 158 ; Compare or Capture A Interrupt
TCD0_CCB_vect = 160 ; Compare or Capture B Interrupt
TCD0_CCC_vect = 162 ; Compare or Capture C Interrupt
TCD0_CCD_vect = 164 ; Compare or Capture D Interrupt

; TCD2 interrupt vectors
TCD2_LUNF_vect = 154 ; Low Byte Underflow Interrupt
TCD2_HUNF_vect = 156 ; High Byte Underflow Interrupt
TCD2_LCMPA_vect = 158 ; Low Byte Compare A Interrupt
TCD2_LCMPB_vect = 160 ; Low Byte Compare B Interrupt
TCD2_LCMPC_vect = 162 ; Low Byte Compare C Interrupt
TCD2_LCMPD_vect = 164 ; Low Byte Compare D Interrupt

; TCD1 interrupt vectors
TCD1_OVF_vect = 166 ; Overflow Interrupt
TCD1_ERR_vect = 168 ; Error Interrupt
TCD1_CCA_vect = 170 ; Compare or Capture A Interrupt
TCD1_CCB_vect = 172 ; Compare or Capture B Interrupt

; SPID interrupt vectors
SPID_INT_vect = 174 ; SPI Interrupt

; USARTD0 interrupt vectors
USARTD0_RXC_vect = 176 ; Reception Complete Interrupt
USARTD0_DRE_vect = 178 ; Data Register Empty Interrupt
USARTD0_TXC_vect = 180 ; Transmission Complete Interrupt

; USARTD1 interrupt vectors
USARTD1_RXC_vect = 182 ; Reception Complete Interrupt
USARTD1_DRE_vect = 184 ; Data Register Empty Interrupt
USARTD1_TXC_vect = 186 ; Transmission Complete Interrupt

; PORTQ interrupt vectors
PORTQ_INT0_vect = 188 ; External Interrupt 0
PORTQ_INT1_vect = 190 ; External Interrupt 1

; PORTH interrupt vectors
PORTH_INT0_vect = 192 ; External Interrupt 0
PORTH_INT1_vect = 194 ; External Interrupt 1

; PORTJ interrupt vectors
PORTJ_INT0_vect = 196 ; External Interrupt 0
PORTJ_INT1_vect = 198 ; External Interrupt 1

; PORTK interrupt vectors
PORTK_INT0_vect = 200 ; External Interrupt 0
PORTK_INT1_vect = 202 ; External Interrupt 1

; PORTF interrupt vectors
PORTF_INT0_vect = 208 ; External Interrupt 0
PORTF_INT1_vect = 210 ; External Interrupt 1

; TWIF interrupt vectors
TWIF_TWIS_vect = 212 ; TWI Slave Interrupt
TWIF_TWIM_vect = 214 ; TWI Master Interrupt

; TCF0 interrupt vectors
TCF0_OVF_vect = 216 ; Overflow Interrupt
TCF0_ERR_vect = 218 ; Error Interrupt
TCF0_CCA_vect = 220 ; Compare or Capture A Interrupt
TCF0_CCB_vect = 222 ; Compare or Capture B Interrupt
TCF0_CCC_vect = 224 ; Compare or Capture C Interrupt
TCF0_CCD_vect = 226 ; Compare or Capture D Interrupt

; TCF2 interrupt vectors
TCF2_LUNF_vect = 216 ; Low Byte Underflow Interrupt
TCF2_HUNF_vect = 218 ; High Byte Underflow Interrupt
TCF2_LCMPA_vect = 220 ; Low Byte Compare A Interrupt
TCF2_LCMPB_vect = 222 ; Low Byte Compare B Interrupt
TCF2_LCMPC_vect = 224 ; Low Byte Compare C Interrupt
TCF2_LCMPD_vect = 226 ; Low Byte Compare D Interrupt

; TCF1 interrupt vectors
TCF1_OVF_vect = 228 ; Overflow Interrupt
TCF1_ERR_vect = 230 ; Error Interrupt
TCF1_CCA_vect = 232 ; Compare or Capture A Interrupt
TCF1_CCB_vect = 234 ; Compare or Capture B Interrupt

; SPIF interrupt vectors
SPIF_INT_vect = 236 ; SPI Interrupt

; USARTF0 interrupt vectors
USARTF0_RXC_vect = 238 ; Reception Complete Interrupt
USARTF0_DRE_vect = 240 ; Data Register Empty Interrupt
USARTF0_TXC_vect = 242 ; Transmission Complete Interrupt

; USARTF1 interrupt vectors
USARTF1_RXC_vect = 244 ; Reception Complete Interrupt
USARTF1_DRE_vect = 246 ; Data Register Empty Interrupt
USARTF1_TXC_vect = 248 ; Transmission Complete Interrupt

; USB interrupt vectors
USB_BUSEVENT_vect = 250 ; SOF, suspend, resume, reset bus event interrupts, crc, underflow, overflow and stall error interrupts
USB_TRNCOMPL_vect = 252 ; Transaction complete interrupt



; ***** INTERRUPT VECTORS, MODULE BASES **********************************

OSC_vbase = 2
PORTC_vbase = 4
PORTR_vbase = 8
DMA_vbase = 12
RTC_vbase = 20
TWIC_vbase = 24
TCC0_vbase = 28
TCC2_vbase = 28
TCC1_vbase = 40
SPIC_vbase = 48
USARTC0_vbase = 50
USARTC1_vbase = 56
AES_vbase = 62
NVM_vbase = 64
PORTB_vbase = 68
ACB_vbase = 72
ADCB_vbase = 78
PORTE_vbase = 86
TWIE_vbase = 90
TCE0_vbase = 94
TCE2_vbase = 94
TCE1_vbase = 106
SPIE_vbase = 114
USARTE0_vbase = 116
USARTE1_vbase = 122
PORTD_vbase = 128
PORTA_vbase = 132
ACA_vbase = 136
ADCA_vbase = 142
TWID_vbase = 150
TCD0_vbase = 154
TCD2_vbase = 154
TCD1_vbase = 166
SPID_vbase = 174
USARTD0_vbase = 176
USARTD1_vbase = 182
PORTQ_vbase = 188
PORTH_vbase = 192
PORTJ_vbase = 196
PORTK_vbase = 200
PORTF_vbase = 208
TWIF_vbase = 212
TCF0_vbase = 216
TCF2_vbase = 216
TCF1_vbase = 228
SPIF_vbase = 236
USARTF0_vbase = 238
USARTF1_vbase = 244
USB_vbase = 250


; ***** INTERRUPT VECTORS, VECTOR OFFSETS *********************************

; OSC interrupt vector offsets

OSC_OSCF_voffset = 0

; AES interrupt vector offsets

AES_INT_voffset = 0

; DMA interrupt vector offsets

DMA_CH0_voffset = 0
DMA_CH1_voffset = 2
DMA_CH2_voffset = 4
DMA_CH3_voffset = 6

; NVM interrupt vector offsets

NVM_EE_voffset = 0
NVM_SPM_voffset = 2

; ADC interrupt vector offsets

ADC_CH0_voffset = 0
ADC_CH1_voffset = 2
ADC_CH2_voffset = 4
ADC_CH3_voffset = 6

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

; TC2 interrupt vector offsets

TC2_LUNF_voffset = 0
TC2_HUNF_voffset = 2
TC2_LCMPA_voffset = 4
TC2_LCMPB_voffset = 6
TC2_LCMPC_voffset = 8
TC2_LCMPD_voffset = 10

; USART interrupt vector offsets

USART_RXC_voffset = 0
USART_DRE_voffset = 2
USART_TXC_voffset = 4

; SPI interrupt vector offsets

SPI_INT_voffset = 0



INT_VECTORS_SIZE = 254 ; size in words



; ***** END OF FILE ******************************************************



