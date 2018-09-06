;*************************************************************************
;* A P P L I C A T I O N   N O T E   F O R   T H E   A V R   F A M I L Y
;* 
;* Number            : AVR000
;* File Name         : "tn13def.asm"
;* Title             : Register/Bit Definitions for the ATtiny13
;* Date              : 2011-02-09
;* Version           : 2.35
;* Support E-mail    : avr@atmel.com
;* Target MCU        : ATtiny13
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
; .device ATtiny13

SIGNATURE_000	= 0x1e
SIGNATURE_001	= 0x90
SIGNATURE_002	= 0x07

                .CR     avr
                .FA     enhanced128k
				.MS		$0200

; ***** I/O REGISTER DEFINITIONS *****************************************
; NOTE:
; Definitions marked "MEMORY MAPPED"are extended I/O ports
; and cannot be used with IN/OUT instructions
SREG	= 0x3f
SPL	= 0x3d
GIMSK	= 0x3b
GIFR	= 0x3a
TIMSK0	= 0x39
TIFR0	= 0x38
SPMCSR	= 0x37
OCR0A	= 0x36
MCUCR	= 0x35
MCUSR	= 0x34
TCCR0B	= 0x33
TCNT0	= 0x32
OSCCAL	= 0x31
TCCR0A	= 0x2f
DWDR	= 0x2e
OCR0B	= 0x29
GTCCR	= 0x28
CLKPR	= 0x26
WDTCR	= 0x21
EEAR	= 0x1e
EEDR	= 0x1d
EECR	= 0x1c
PORTB	= 0x18
DDRB	= 0x17
PINB	= 0x16
PCMSK	= 0x15
DIDR0	= 0x14
ACSR	= 0x08
ADMUX	= 0x07
ADCSRA	= 0x06
ADCH	= 0x05
ADCL	= 0x04
ADCSRB	= 0x03


; ***** BIT DEFINITIONS **************************************************

; ***** AD_CONVERTER *****************
; ADMUX - The ADC multiplexer Selection Register
MUX0	= 0	; Analog Channel and Gain Selection Bits
MUX1	= 1	; Analog Channel and Gain Selection Bits
ADLAR	= 5	; Left Adjust Result
REFS0	= 6	; Reference Selection Bit 0

; ADCSRA - The ADC Control and Status register
ADPS0	= 0	; ADC  Prescaler Select Bits
ADPS1	= 1	; ADC  Prescaler Select Bits
ADPS2	= 2	; ADC  Prescaler Select Bits
ADIE	= 3	; ADC Interrupt Enable
ADIF	= 4	; ADC Interrupt Flag
ADATE	= 5	; ADC Auto Trigger Enable
ADSC	= 6	; ADC Start Conversion
ADEN	= 7	; ADC Enable

; ADCH - ADC Data Register High Byte
ADCH0	= 0	; ADC Data Register High Byte Bit 0
ADCH1	= 1	; ADC Data Register High Byte Bit 1
ADCH2	= 2	; ADC Data Register High Byte Bit 2
ADCH3	= 3	; ADC Data Register High Byte Bit 3
ADCH4	= 4	; ADC Data Register High Byte Bit 4
ADCH5	= 5	; ADC Data Register High Byte Bit 5
ADCH6	= 6	; ADC Data Register High Byte Bit 6
ADCH7	= 7	; ADC Data Register High Byte Bit 7

; ADCL - ADC Data Register Low Byte
ADCL0	= 0	; ADC Data Register Low Byte Bit 0
ADCL1	= 1	; ADC Data Register Low Byte Bit 1
ADCL2	= 2	; ADC Data Register Low Byte Bit 2
ADCL3	= 3	; ADC Data Register Low Byte Bit 3
ADCL4	= 4	; ADC Data Register Low Byte Bit 4
ADCL5	= 5	; ADC Data Register Low Byte Bit 5
ADCL6	= 6	; ADC Data Register Low Byte Bit 6
ADCL7	= 7	; ADC Data Register Low Byte Bit 7

; ADCSRB - ADC Control and Status Register B
ADTS0	= 0	; ADC Auto Trigger Source 0
ADTS1	= 1	; ADC Auto Trigger Source 1
ADTS2	= 2	; ADC Auto Trigger Source 2

; DIDR0 - Digital Input Disable Register 0
ADC1D	= 2	; ADC2 Digital input Disable
ADC3D	= 3	; ADC3 Digital input Disable
ADC2D	= 4	; ADC2 Digital input Disable
ADC0D	= 5	; ADC0 Digital input Disable


; ***** ANALOG_COMPARATOR ************
; ADCSRB - ADC Control and Status Register B
ACME	= 6	; Analog Comparator Multiplexer Enable

; ACSR - Analog Comparator Control And Status Register
ACIS0	= 0	; Analog Comparator Interrupt Mode Select bit 0
ACIS1	= 1	; Analog Comparator Interrupt Mode Select bit 1
ACIE	= 3	; Analog Comparator Interrupt Enable
ACI	= 4	; Analog Comparator Interrupt Flag
ACO	= 5	; Analog Compare Output
ACBG	= 6	; Analog Comparator Bandgap Select
AINBG	= ACBG	; For compatibility
ACD	= 7	; Analog Comparator Disable

; DIDR0 - 
AIN0D	= 0	; AIN0 Digital Input Disable
AIN1D	= 1	; AIN1 Digital Input Disable


; ***** EEPROM ***********************
; EEAR - EEPROM Read/Write Access
EEARL	= EEAR	; For compatibility
EEAR0	= 0	; EEPROM Read/Write Access bit 0
EEAR1	= 1	; EEPROM Read/Write Access bit 1
EEAR2	= 2	; EEPROM Read/Write Access bit 2
EEAR3	= 3	; EEPROM Read/Write Access bit 3
EEAR4	= 4	; EEPROM Read/Write Access bit 4
EEAR5	= 5	; EEPROM Read/Write Access bit 5

; EEDR - EEPROM Data Register
EEDR0	= 0	; EEPROM Data Register bit 0
EEDR1	= 1	; EEPROM Data Register bit 1
EEDR2	= 2	; EEPROM Data Register bit 2
EEDR3	= 3	; EEPROM Data Register bit 3
EEDR4	= 4	; EEPROM Data Register bit 4
EEDR5	= 5	; EEPROM Data Register bit 5
EEDR6	= 6	; EEPROM Data Register bit 6
EEDR7	= 7	; EEPROM Data Register bit 7

; EECR - EEPROM Control Register
EERE	= 0	; EEPROM Read Enable
EEWE	= 1	; EEPROM Write Enable
EEPE	= EEWE	; For compatibility
EEMWE	= 2	; EEPROM Master Write Enable
EEMPE	= EEMWE	; For compatibility
EERIE	= 3	; EEProm Ready Interrupt Enable
EEPM0	= 4	; 
EEPM1	= 5	; 


; ***** CPU **************************
; SREG - Status Register
SREG_C	= 0	; Carry Flag
SREG_Z	= 1	; Zero Flag
SREG_N	= 2	; Negative Flag
SREG_V	= 3	; Two's Complement Overflow Flag
SREG_S	= 4	; Sign Bit
SREG_H	= 5	; Half Carry Flag
SREG_T	= 6	; Bit Copy Storage
SREG_I	= 7	; Global Interrupt Enable

; SPL - Stack Pointer Low Byte
SP0	= 0	; Stack Pointer Bit 0
SP1	= 1	; Stack Pointer Bit 1
SP2	= 2	; Stack Pointer Bit 2
SP3	= 3	; Stack Pointer Bit 3
SP4	= 4	; Stack Pointer Bit 4
SP5	= 5	; Stack Pointer Bit 5
SP6	= 6	; Stack Pointer Bit 6
SP7	= 7	; Stack Pointer Bit 7

; MCUCR - MCU Control Register
ISC00	= 0	; Interrupt Sense Control 0 bit 0
ISC01	= 1	; Interrupt Sense Control 0 bit 1
SM0	= 3	; Sleep Mode Select Bit 0
SM1	= 4	; Sleep Mode Select Bit 1
SE	= 5	; Sleep Enable
PUD	= 6	; Pull-up Disable

; MCUSR - MCU Status register
PORF	= 0	; Power-On Reset Flag
EXTRF	= 1	; External Reset Flag
BORF	= 2	; Brown-out Reset Flag
WDRF	= 3	; Watchdog Reset Flag

; OSCCAL - Oscillator Calibration Register
CAL0	= 0	; Oscillatro Calibration Value Bit 0
CAL1	= 1	; Oscillatro Calibration Value Bit 1
CAL2	= 2	; Oscillatro Calibration Value Bit 2
CAL3	= 3	; Oscillatro Calibration Value Bit 3
CAL4	= 4	; Oscillatro Calibration Value Bit 4
CAL5	= 5	; Oscillatro Calibration Value Bit 5
CAL6	= 6	; Oscillatro Calibration Value Bit 6

; CLKPR - Clock Prescale Register
CLKPS0	= 0	; Clock Prescaler Select Bit 0
CLKPS1	= 1	; Clock Prescaler Select Bit 1
CLKPS2	= 2	; Clock Prescaler Select Bit 2
CLKPS3	= 3	; Clock Prescaler Select Bit 3
CLKPCE	= 7	; Clock Prescaler Change Enable

; DWDR - Debug Wire Data Register
DWDR0	= 0	; Debug Wire Data Register Bit 0
DWDR1	= 1	; Debug Wire Data Register Bit 1
DWDR2	= 2	; Debug Wire Data Register Bit 2
DWDR3	= 3	; Debug Wire Data Register Bit 3
DWDR4	= 4	; Debug Wire Data Register Bit 4
DWDR5	= 5	; Debug Wire Data Register Bit 5
DWDR6	= 6	; Debug Wire Data Register Bit 6
DWDR7	= 7	; Debug Wire Data Register Bit 7

; SPMCSR - Store Program Memory Control and Status Register
SPMEN	= 0	; Store program Memory Enable
PGERS	= 1	; Page Erase
PGWRT	= 2	; Page Write
RFLB	= 3	; Read Fuse and Lock Bits
CTPB	= 4	; Clear Temporary Page Buffer


; ***** PORTB ************************
; PORTB - Data Register, Port B
PORTB0	= 0	; 
PB0	= 0	; For compatibility
PORTB1	= 1	; 
PB1	= 1	; For compatibility
PORTB2	= 2	; 
PB2	= 2	; For compatibility
PORTB3	= 3	; 
PB3	= 3	; For compatibility
PORTB4	= 4	; 
PB4	= 4	; For compatibility
PORTB5	= 5	; 
PB5	= 5	; For compatibility

; DDRB - Data Direction Register, Port B
DDB0	= 0	; 
DDB1	= 1	; 
DDB2	= 2	; 
DDB3	= 3	; 
DDB4	= 4	; 
DDB5	= 5	; 

; PINB - Input Pins, Port B
PINB0	= 0	; 
PINB1	= 1	; 
PINB2	= 2	; 
PINB3	= 3	; 
PINB4	= 4	; 
PINB5	= 5	; 


; ***** EXTERNAL_INTERRUPT ***********
; MCUCR - MCU Control Register
;ISC00	= 0	; Interrupt Sense Control 0 Bit 0
;ISC01	= 1	; Interrupt Sense Control 0 Bit 1

; GIMSK - General Interrupt Mask Register
GICR	= GIMSK	; For compatibility
PCIE	= 5	; Pin Change Interrupt Enable
INT0	= 6	; External Interrupt Request 0 Enable

; GIFR - General Interrupt Flag register
PCIF	= 5	; Pin Change Interrupt Flag
INTF0	= 6	; External Interrupt Flag 0

; PCMSK - Pin Change Enable Mask
PCINT0	= 0	; Pin Change Enable Mask Bit 0
PCINT1	= 1	; Pin Change Enable Mask Bit 1
PCINT2	= 2	; Pin Change Enable Mask Bit 2
PCINT3	= 3	; Pin Change Enable Mask Bit 3
PCINT4	= 4	; Pin Change Enable Mask Bit 4
PCINT5	= 5	; Pin Change Enable Mask Bit 5


; ***** TIMER_COUNTER_0 **************
; TIMSK0 - Timer/Counter0 Interrupt Mask Register
TOIE0	= 1	; Timer/Counter0 Overflow Interrupt Enable
OCIE0A	= 2	; Timer/Counter0 Output Compare Match A Interrupt Enable
OCIE0B	= 3	; Timer/Counter0 Output Compare Match B Interrupt Enable

; TIFR0 - Timer/Counter0 Interrupt Flag register
TOV0	= 1	; Timer/Counter0 Overflow Flag
OCF0A	= 2	; Timer/Counter0 Output Compare Flag 0A
OCF0B	= 3	; Timer/Counter0 Output Compare Flag 0B

; OCR0A - Timer/Counter0 Output Compare Register
OCR0A_0	= 0	; 
OCR0A_1	= 1	; 
OCR0A_2	= 2	; 
OCR0A_3	= 3	; 
OCR0A_4	= 4	; 
OCR0A_5	= 5	; 
OCR0A_6	= 6	; 
OCR0A_7	= 7	; 

; TCCR0A - Timer/Counter  Control Register A
WGM00	= 0	; Waveform Generation Mode
WGM01	= 1	; Waveform Generation Mode
COM0B0	= 4	; Compare Match Output B Mode
COM0B1	= 5	; Compare Match Output B Mode
COM0A0	= 6	; Compare Match Output A Mode
COM0A1	= 7	; Compare Match Output A Mode

; TCNT0 - Timer/Counter0
TCNT0_0	= 0	; 
TCNT0_1	= 1	; 
TCNT0_2	= 2	; 
TCNT0_3	= 3	; 
TCNT0_4	= 4	; 
TCNT0_5	= 5	; 
TCNT0_6	= 6	; 
TCNT0_7	= 7	; 

; TCCR0B - Timer/Counter Control Register B
CS00	= 0	; Clock Select
CS01	= 1	; Clock Select
CS02	= 2	; Clock Select
WGM02	= 3	; Waveform Generation Mode
FOC0B	= 6	; Force Output Compare B
FOC0A	= 7	; Force Output Compare A

; OCR0B - Timer/Counter0 Output Compare Register
OCR0B_0	= 0	; 
OCR0B_1	= 1	; 
OCR0B_2	= 2	; 
OCR0B_3	= 3	; 
OCR0B_4	= 4	; 
OCR0B_5	= 5	; 
OCR0B_6	= 6	; 
OCR0B_7	= 7	; 

; GTCCR - General Timer Conuter Register
PSR10	= 0	; Prescaler Reset Timer/Counter0
TSM	= 7	; Timer/Counter Synchronization Mode


; ***** WATCHDOG *********************
; WDTCR - Watchdog Timer Control Register
WDP0	= 0	; Watch Dog Timer Prescaler bit 0
WDP1	= 1	; Watch Dog Timer Prescaler bit 1
WDP2	= 2	; Watch Dog Timer Prescaler bit 2
WDE	= 3	; Watch Dog Enable
WDCE	= 4	; Watchdog Change Enable
WDP3	= 5	; Watchdog Timer Prescaler Bit 3
WDTIE	= 6	; Watchdog Timeout Interrupt Enable
WDTIF	= 7	; Watchdog Timeout Interrupt Flag



; ***** LOCKSBITS ********************************************************
LB1	= 0	; Lockbit
LB2	= 1	; Lockbit


; ***** FUSES ************************************************************
; LOW fuse bits
CKSEL0	= 0	; Select Clock Source
CKSEL1	= 1	; Select Clock Source
SUT0	= 2	; Select start-up time
SUT1	= 3	; Select start-up time
CKDIV8	= 4	; Start up with system clock divided by 8
WDTON	= 5	; Watch dog timer always on
EESAVE	= 6	; Keep EEprom contents during chip erase
SPIEN	= 7	; SPI programming enable

; HIGH fuse bits
RSTDISBL	= 0	; Disable external reset
BODLEVEL0	= 1	; Enable BOD and select level
BODLEVEL1	= 2	; Enable BOD and select level
DWEN	= 3	; DebugWire Enable
SELFPRGEN	= 4	; Self Programming Enable



; ***** CPU REGISTER DEFINITIONS *****************************************
XH	.DE r27
XL	.DE r26
YH	.DE r29
YL	.DE r28
ZH	.DE r31
ZL	.DE r30



; ***** DATA MEMORY DECLARATIONS *****************************************
FLASHEND	= 0x01ff	; Note: Word address
IOEND	= 0x003f
SRAM_START	= 0x0060
SRAM_SIZE	= 64
RAMEND	= 0x009f
XRAMEND	= 0x0000
E2END	= 0x003f
EEPROMEND	= 0x003f
EEADRBITS	= 6



; ***** BOOTLOADER DECLARATIONS ******************************************
PAGESIZE	= 16



; ***** INTERRUPT VECTORS ************************************************
INT0addr	= 0x0001	; External Interrupt 0
PCI0addr	= 0x0002	; External Interrupt Request 0
OVF0addr	= 0x0003	; Timer/Counter0 Overflow
ERDYaddr	= 0x0004	; EEPROM Ready
ACIaddr	= 0x0005	; Analog Comparator
OC0Aaddr	= 0x0006	; Timer/Counter Compare Match A
OC0Baddr	= 0x0007	; Timer/Counter Compare Match B
WDTaddr	= 0x0008	; Watchdog Time-out
ADCCaddr	= 0x0009	; ADC Conversion Complete

INT_VECTORS_SIZE	= 10	; size in words


; ***** END OF FILE ******************************************************
