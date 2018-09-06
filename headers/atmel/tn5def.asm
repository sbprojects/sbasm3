;*************************************************************************
;* A P P L I C A T I O N   N O T E   F O R   T H E   A V R   F A M I L Y
;* 
;* Number            : AVR000
;* File Name         : "tn5def.asm"
;* Title             : Register/Bit Definitions for the ATtiny5
;* Date              : 2011-02-09
;* Version           : 2.35
;* Support E-mail    : avr@atmel.com
;* Target MCU        : ATtiny5
;* 
;* DESCRIPTION
;* When including this file in the assembly program file, all I/O register 
;* names and I/O register bit names appearing in the data book can be used.
;* In addition, the six registers forming the three data pointers X, Y and 
;* Z have been assigned names XL - ZH. Highest RAM address for Internal 
;* SRAM is also defined 
;* 
;* The Register names are represented by their hexadecimal address.
;* 
;* The Register Bit names are represented by their bit number (0-7).
;* 
;* Please observe the difference in using the bit names with instructions
;* such as "sbr"/"cbr" (set/clear bit in register) and "sbrs"/"sbrc"
;* (skip if bit in register set/cleared). The following example illustrates
;* this:
;* 
;* in    r16,PORTB             ;read PORTB latch
;* sbr   r16,1<<PB6)+1<<PB5) ;set PB6 and PB5 (use masks, not bit#)
;* out   PORTB,r16             ;output to PORTB
;* 
;* in    r16,TIFR              ;read the Timer Interrupt Flag Register
;* sbrc  r16,TOV0              ;test the overflow flag (use bit#)
;* rjmp  TOV0_is_set           ;jump if set
;* ...                         ;otherwise do something else
;*************************************************************************




; ***** SPECIFY DEVICE ***************************************************

;device ATtiny5

SIGNATURE_000	= 0x1e
SIGNATURE_001	= 0x8f
SIGNATURE_002	= 0x09

                .CR     avr
                .FA     reduced
				.MS		$0100

; ***** I/O REGISTER DEFINITIONS *****************************************
; NOTE:
; Definitions marked "MEMORY MAPPED"are extended I/O ports
; and cannot be used with IN/OUT instructions
SREG	= 0x3f
SPL	= 0x3d
SPH	= 0x3e
CCP	= 0x3c
RSTFLR	= 0x3b
SMCR	= 0x3a
OSCCAL	= 0x39
CLKMSR	= 0x37
CLKPSR	= 0x36
PRR	= 0x35
VLMCSR	= 0x34
NVMCMD	= 0x33
NVMCSR	= 0x32
WDTCSR	= 0x31
GTCCR	= 0x2f
TCCR0A	= 0x2e
TCCR0B	= 0x2d
TCCR0C	= 0x2c
TIMSK0	= 0x2b
TIFR0	= 0x2a
TCNT0L	= 0x28
TCNT0H	= 0x29
OCR0AL	= 0x26
OCR0AH	= 0x27
OCR0BL	= 0x24
OCR0BH	= 0x25
ICR0L	= 0x22
ICR0H	= 0x23
ACSR	= 0x1f
ADCSRA	= 0x1d
ADCSRB	= 0x1c
ADMUX	= 0x1b
ADCL	= 0x19
DIDR0	= 0x17
EICRA	= 0x15
EIFR	= 0x14
EIMSK	= 0x13
PCICR	= 0x12
PCIFR	= 0x11
PCMSK	= 0x10
PORTCR	= 0x0c
PUEB	= 0x03
PORTB	= 0x02
DDRB	= 0x01
PINB	= 0x00


; ***** BIT DEFINITIONS **************************************************

; ***** AD_CONVERTER *****************
; ADMUX - The ADC multiplexer Selection Register
MUX0	= 0	; Analog Channel Selection Bits
MUX1	= 1	; Analog Channel Selection Bits

; ADCSRA - The ADC Control and Status register A
ADPS0	= 0	; ADC  Prescaler Select Bits
ADPS1	= 1	; ADC  Prescaler Select Bits
ADPS2	= 2	; ADC  Prescaler Select Bits
ADIE	= 3	; ADC Interrupt Enable
ADIF	= 4	; ADC Interrupt Flag
ADATE	= 5	; ADC  Auto Trigger Enable
ADSC	= 6	; ADC Start Conversion
ADEN	= 7	; ADC Enable

; ADCSRB - The ADC Control and Status register B
ADTS0	= 0	; ADC Auto Trigger Source bit 0
ADTS1	= 1	; ADC Auto Trigger Source bit 1
ADTS2	= 2	; ADC Auto Trigger Source bit 2

; ADCL - ADC Data Register
ADC0	= 0	; ADC Data Register Bit 0
ADC1	= 1	; ADC Data Register Bit 1
ADC2	= 2	; ADC Data Register Bit 2
ADC3	= 3	; ADC Data Register Bit 3
ADC4	= 4	; ADC Data Register Bit 4
ADC5	= 5	; ADC Data Register Bit 5
ADC6	= 6	; ADC Data Register Bit 6
ADC7	= 7	; ADC Data Register Bit 7

; DIDR0 - Digital Input Disable Register
ADC0D	= 0	; 
ADC1D	= 1	; 
ADC2D	= 2	; 
ADC3D	= 3	; 


; ***** ANALOG_COMPARATOR ************
; ACSR - Analog Comparator Control And Status Register
ACIS0	= 0	; Analog Comparator Interrupt Mode Select bit 0
ACIS1	= 1	; Analog Comparator Interrupt Mode Select bit 1
ACIC	= 2	; Analog Comparator Input Capture  Enable
ACIE	= 3	; Analog Comparator Interrupt Enable
ACI	= 4	; Analog Comparator Interrupt Flag
ACO	= 5	; Analog Compare Output
ACD	= 7	; Analog Comparator Disable

; DIDR0 - 
AIN0D	= 0	; AIN0 Digital Input Disable
AIN1D	= 1	; AIN1 Digital Input Disable


; ***** CPU **************************
; CCP - Configuration Change Protection
CCP0	= 0	; Configuration Change Protection bit 0
CCP1	= 1	; Configuration Change Protection bit 1
CCP2	= 2	; Configuration Change Protection bit 2
CCP3	= 3	; Configuration Change Protection bit 3
CCP4	= 4	; Configuration Change Protection bit 4
CCP5	= 5	; Configuration Change Protection bit 5
CCP6	= 6	; Configuration Change Protection bit 6
CCP7	= 7	; Configuration Change Protection bit 7

; SREG - Status Register
SREG_C	= 0	; Carry Flag
SREG_Z	= 1	; Zero Flag
SREG_N	= 2	; Negative Flag
SREG_V	= 3	; Two's Complement Overflow Flag
SREG_S	= 4	; Sign Bit
SREG_H	= 5	; Half Carry Flag
SREG_T	= 6	; Bit Copy Storage
SREG_I	= 7	; Global Interrupt Enable

; CLKMSR - Clock Main Settings Register
CLKMS0	= 0	; Clock Main Select Bit 0
CLKMS1	= 1	; Clock Main Select Bit 1

; CLKPSR - Clock Prescale Register
CLKPS0	= 0	; Clock Prescaler Select Bit 0
CLKPS1	= 1	; Clock Prescaler Select Bit 1
CLKPS2	= 2	; Clock Prescaler Select Bit 2
CLKPS3	= 3	; Clock Prescaler Select Bit 3

; OSCCAL - Oscillator Calibration Value
CAL0	= 0	; Oscillator Calibration Value Bit0
CAL1	= 1	; Oscillator Calibration Value Bit1
CAL2	= 2	; Oscillator Calibration Value Bit2
CAL3	= 3	; Oscillator Calibration Value Bit3
CAL4	= 4	; Oscillator Calibration Value Bit4
CAL5	= 5	; Oscillator Calibration Value Bit5
CAL6	= 6	; Oscillator Calibration Value Bit6
CAL7	= 7	; Oscillator Calibration Value Bit7

; SMCR - Sleep Mode Control Register
SE	= 0	; Sleep Enable
SM0	= 1	; Sleep Mode Select Bit 0
SM1	= 2	; Sleep Mode Select Bit 1
SM2	= 3	; Sleep Mode Select Bit 2

; PRR - Power Reduction Register
PRTIM0	= 0	; Power Reduction Timer/Counter0
PRADC	= 1	; Power Reduction ADC

; VLMCSR - Vcc Level Monitoring Control and Status Register
VLM0	= 0	; Trigger Level of Voltage Level Monitor bit 0
VLM1	= 1	; Trigger Level of Voltage Level Monitor bit 1
VLM2	= 2	; Trigger Level of Voltage Level Monitor bit 2
VLMIE	= 6	; VLM Interrupt Enable
VLMF	= 7	; VLM Flag

; RSTFLR - Reset Flag Register
PORF	= 0	; Power-on Reset Flag
EXTRF	= 1	; External Reset Flag
WDRF	= 3	; Watchdog Reset Flag

; NVMCSR - Non-Volatile Memory Control and Status Register
NVMBSY	= 7	; Non-Volatile Memory Busy

; NVMCMD - Non-Volatile Memory Command
NVMCMD0	= 0	; 
NVMCMD1	= 1	; 
NVMCMD2	= 2	; 
NVMCMD3	= 3	; 
NVMCMD4	= 4	; 
NVMCMD5	= 5	; 


; ***** PORTB ************************
; PORTCR - Port Control Register
BBMB	= 1	; Break-Before-Make Mode Enable

; PUEB - Pull-up Enable Control Register
PUEB0	= 0	; 
PUEB1	= 1	; 
PUEB2	= 2	; 
PUEB3	= 3	; 

; PORTB - Input Pins, Port B
PORTB0	= 0	; 
PB0	= 0	; For compatibility
PORTB1	= 1	; 
PB1	= 1	; For compatibility
PORTB2	= 2	; 
PB2	= 2	; For compatibility
PORTB3	= 3	; 
PB3	= 3	; For compatibility

; DDRB - Data Direction Register, Port B
DDB0	= 0	; 
DDB1	= 1	; 
DDB2	= 2	; 
DDB3	= 3	; 

; PINB - Port B Data register
PINB0	= 0	; 
PINB1	= 1	; 
PINB2	= 2	; 
PINB3	= 3	; 


; ***** EXTERNAL_INTERRUPT ***********
; EICRA - External Interrupt Control Register A
ISC00	= 0	; Interrupt Sense Control 0 Bit 0
ISC01	= 1	; Interrupt Sense Control 0 Bit 1

; EIMSK - External Interrupt Mask register
INT0	= 0	; External Interrupt Request 0 Enable

; EIFR - External Interrupt Flag register
INTF0	= 0	; External Interrupt Flag 0

; PCICR - Pin Change Interrupt Control Register
PCIE0	= 0	; Pin Change Interrupt Enable 0

; PCIFR - Pin Change Interrupt Flag Register
PCIF0	= 0	; Pin Change Interrupt Flag 0

; PCMSK - Pin Change Mask Register
PCINT0	= 0	; Pin Change Enable Mask 0
PCINT1	= 1	; Pin Change Enable Mask 1
PCINT2	= 2	; Pin Change Enable Mask 2
PCINT3	= 3	; Pin Change Enable Mask 3


; ***** TIMER_COUNTER_0 **************
; TCCR0A - Timer/Counter 0 Control Register A
WGM00	= 0	; Waveform Generation Mode
WGM01	= 1	; Waveform Generation Mode
COM0B0	= 4	; Compare Output Mode for Channel B bit 0
COM0B1	= 5	; Compare Output Mode for Channel B bit 1
COM0A0	= 6	; Compare Output Mode for Channel A bit 0
COM0A1	= 7	; Compare Output Mode for Channel A bit 1

; TCCR0B - Timer/Counter 0 Control Register B
CS00	= 0	; Clock Select
CS01	= 1	; Clock Select
CS02	= 2	; Clock Select
WGM02	= 3	; Waveform Generation Mode
WGM03	= 4	; Waveform Generation Mode
ICES0	= 6	; Input Capture Edge Select
ICNC0	= 7	; Input Capture Noise Canceler

; TCCR0C - Timer/Counter 0 Control Register C
FOC0B	= 6	; Force Output Compare for Channel B
FOC0A	= 7	; Force Output Compare for Channel A

; TIMSK0 - Timer Interrupt Mask Register 0
TOIE0	= 0	; Overflow Interrupt Enable
OCIE0A	= 1	; Output Compare A Match Interrupt Enable
OCIE0B	= 2	; Output Compare B Match Interrupt Enable
ICIE0	= 5	; Input Capture Interrupt Enable

; TIFR0 - Overflow Interrupt Enable
TOV0	= 0	; Timer Overflow Flag
OCF0A	= 1	; Timer Output Compare Flag 0A
OCF0B	= 2	; Timer Output Compare Flag 0B
ICF0	= 5	; Input Capture Flag

; GTCCR - General Timer/Counter Control Register
PSR	= 0	; Prescaler Reset
TSM	= 7	; Timer Synchronization Mode


; ***** WATCHDOG *********************
; WDTCSR - Watchdog Timer Control and Status Register
WDP0	= 0	; Watch Dog Timer Prescaler bit 0
WDP1	= 1	; Watch Dog Timer Prescaler bit 1
WDP2	= 2	; Watch Dog Timer Prescaler bit 2
WDE	= 3	; Watch Dog Enable
WDP3	= 5	; Watchdog Timer Prescaler Bit 3
WDIE	= 6	; Watchdog Timer Interrupt Enable
WDIF	= 7	; Watchdog Timer Interrupt Flag



; ***** LOCKSBITS ********************************************************
LB1	= 0	; Lockbit
LB2	= 1	; Lockbit


; ***** FUSES ************************************************************
; BYTE0 fuse bits
RSTDISBL	= 0	; Disable external reset
WDTON	= 1	; Watch dog timer always on
CKOUT	= 2	; Output external clock



; ***** CPU REGISTER DEFINITIONS *****************************************
XH	.DE r27
XL	.DE r26
YH	.DE r29
YL	.DE r28
ZH	.DE r31
ZL	.DE r30



; ***** DATA MEMORY DECLARATIONS *****************************************
FLASHEND	= 0x00ff	; Note: Word address
IOEND	= 0x003f
SRAM_START	= 0x0040
SRAM_SIZE	= 32
RAMEND	= 0x005f
XRAMEND	= 0x0000
E2END	= 0x0000
EEPROMEND	= 0x0000

; ***** MEMORY MAPPED NVM ************************************************
MAPPED_FLASH_START	= 0x4000
MAPPED_LOCKBITS_0	= 0x3f00
MAPPED_CONFIG_0	= 0x3f40
MAPPED_CALIB_0	= 0x3f80
MAPPED_SIGN_0	= 0x3fc0
MAPPED_SIGN_1	= 0x3fc1
MAPPED_SIGN_2	= 0x3fc2
MAPPED_FLASH_SIZE	= 0x0200
MAPPED_FLASH_END	= 0x41ff



; ***** BOOTLOADER DECLARATIONS ******************************************
PAGESIZE	= 16



; ***** INTERRUPT VECTORS ************************************************
INT0addr	= 0x0001	; External Interrupt Request 0
PCI0addr	= 0x0002	; Pin Change Interrupt Request 0
ICP0addr	= 0x0003	; Timer/Counter0 Input Capture
OVF0addr	= 0x0004	; Timer/Counter0 Overflow
OC0Aaddr	= 0x0005	; Timer/Counter Compare Match A
OC0Baddr	= 0x0006	; Timer/Counter Compare Match B
ACIaddr	= 0x0007	; Analog Comparator
WDTaddr	= 0x0008	; Watchdog Time-out
VLMaddr	= 0x0009	; Vcc Voltage Level Monitor
ADCCaddr	= 0x000a	; ADC Conversion Complete

INT_VECTORS_SIZE	= 11	; size in words



; ***** END OF FILE ******************************************************
