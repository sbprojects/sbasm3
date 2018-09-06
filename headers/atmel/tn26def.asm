;*************************************************************************
;* A P P L I C A T I O N   N O T E   F O R   T H E   A V R   F A M I L Y
;* 
;* Number            : AVR000
;* File Name         : "tn26def.asm"
;* Title             : Register/Bit Definitions for the ATtiny26
;* Date              : 2011-02-09
;* Version           : 2.35
;* Support E-mail    : avr@atmel.com
;* Target MCU        : ATtiny26
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
;device ATtiny26

SIGNATURE_000	= 0x1e
SIGNATURE_001	= 0x91
SIGNATURE_002	= 0x09

                .CR     avr
                .FA     classic8k
				.MS		$0400

; ***** I/O REGISTER DEFINITIONS *****************************************
; NOTE:
; Definitions marked "MEMORY MAPPED"are extended I/O ports
; and cannot be used with IN/OUT instructions
SREG	= 0x3f
SP	= 0x3d
GIMSK	= 0x3b
GIFR	= 0x3a
TIMSK	= 0x39
TIFR	= 0x38
MCUCR	= 0x35
MCUSR	= 0x34
TCCR0	= 0x33
TCNT0	= 0x32
OSCCAL	= 0x31
TCCR1A	= 0x30
TCCR1B	= 0x2f
TCNT1	= 0x2e
OCR1A	= 0x2d
OCR1B	= 0x2c
OCR1C	= 0x2b
PLLCSR	= 0x29
WDTCR	= 0x21
EEAR	= 0x1e
EEDR	= 0x1d
EECR	= 0x1c
PORTA	= 0x1b
DDRA	= 0x1a
PINA	= 0x19
PORTB	= 0x18
DDRB	= 0x17
PINB	= 0x16
USIDR	= 0x0f
USISR	= 0x0e
USICR	= 0x0d
ACSR	= 0x08
ADMUX	= 0x07
ADCSR	= 0x06
ADCH	= 0x05
ADCL	= 0x04


; ***** BIT DEFINITIONS **************************************************

; ***** AD_CONVERTER *****************
; ADMUX - The ADC multiplexer Selection Register
MUX0	= 0	; Analog Channel and Gain Selection Bits
MUX1	= 1	; Analog Channel and Gain Selection Bits
MUX2	= 2	; Analog Channel and Gain Selection Bits
MUX3	= 3	; Analog Channel and Gain Selection Bits
MUX4	= 4	; Analog Channel and Gain Selection Bits
ADLAR	= 5	; Left Adjust Result
REFS0	= 6	; Reference Selection Bit 0
REFS1	= 7	; Reference Selection Bit 1

; ADCSR - The ADC Control and Status register
ADCSRA	= ADCSR	; For compatibility
ADPS0	= 0	; ADC  Prescaler Select Bits
ADPS1	= 1	; ADC  Prescaler Select Bits
ADPS2	= 2	; ADC  Prescaler Select Bits
ADIE	= 3	; ADC Interrupt Enable
ADIF	= 4	; ADC Interrupt Flag
ADFR	= 5	; ADC  Free Running Select
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


; ***** ANALOG_COMPARATOR ************
; ACSR - Analog Comparator Control And Status Register
ACIS0	= 0	; Analog Comparator Interrupt Mode Select bit 0
ACIS1	= 1	; Analog Comparator Interrupt Mode Select bit 1
ACME	= 2	; Analog Comparator Multiplexer Enable
ACIE	= 3	; Analog Comparator Interrupt Enable
ACI	= 4	; Analog Comparator Interrupt Flag
ACO	= 5	; Analog Compare Output
ACBG	= 6	; Analog Comparator Bandgap Select
ACD	= 7	; Analog Comparator Disable


; ***** USI **************************
; USIDR - USI Data Register
USIDR0	= 0	; USI Data Register bit 0
USIDR1	= 1	; USI Data Register bit 1
USIDR2	= 2	; USI Data Register bit 2
USIDR3	= 3	; USI Data Register bit 3
USIDR4	= 4	; USI Data Register bit 4
USIDR5	= 5	; USI Data Register bit 5
USIDR6	= 6	; USI Data Register bit 6
USIDR7	= 7	; USI Data Register bit 7

; USISR - USI Status Register
USICNT0	= 0	; USI Counter Value Bit 0
USICNT1	= 1	; USI Counter Value Bit 1
USICNT2	= 2	; USI Counter Value Bit 2
USICNT3	= 3	; USI Counter Value Bit 3
USIDC	= 4	; Data Output Collision
USIPF	= 5	; Stop Condition Flag
USIOIF	= 6	; Counter Overflow Interrupt Flag
USISIF	= 7	; Start Condition Interrupt Flag

; USICR - USI Control Register
USITC	= 0	; Toggle Clock Port Pin
USICLK	= 1	; Clock Strobe
USICS0	= 2	; USI Clock Source Select Bit 0
USICS1	= 3	; USI Clock Source Select Bit 1
USIWM0	= 4	; USI Wire Mode Bit 0
USIWM1	= 5	; USI Wire Mode Bit 1
USIOIE	= 6	; Counter Overflow Interrupt Enable
USISIE	= 7	; Start Condition Interrupt Enable


; ***** PORTA ************************
; PORTA - Port A Data Register
PORTA0	= 0	; Port A Data Register bit 0
PA0	= 0	; For compatibility
PORTA1	= 1	; Port A Data Register bit 1
PA1	= 1	; For compatibility
PORTA2	= 2	; Port A Data Register bit 2
PA2	= 2	; For compatibility
PORTA3	= 3	; Port A Data Register bit 3
PA3	= 3	; For compatibility
PORTA4	= 4	; Port A Data Register bit 4
PA4	= 4	; For compatibility
PORTA5	= 5	; Port A Data Register bit 5
PA5	= 5	; For compatibility
PORTA6	= 6	; Port A Data Register bit 6
PA6	= 6	; For compatibility
PORTA7	= 7	; Port A Data Register bit 7
PA7	= 7	; For compatibility

; DDRA - Port A Data Direction Register
DDA0	= 0	; Data Direction Register, Port A, bit 0
DDA1	= 1	; Data Direction Register, Port A, bit 1
DDA2	= 2	; Data Direction Register, Port A, bit 2
DDA3	= 3	; Data Direction Register, Port A, bit 3
DDA4	= 4	; Data Direction Register, Port A, bit 4
DDA5	= 5	; Data Direction Register, Port A, bit 5
DDA6	= 6	; Data Direction Register, Port A, bit 6
DDA7	= 7	; Data Direction Register, Port A, bit 7

; PINA - Port A Input Pins
PINA0	= 0	; Input Pins, Port A bit 0
PINA1	= 1	; Input Pins, Port A bit 1
PINA2	= 2	; Input Pins, Port A bit 2
PINA3	= 3	; Input Pins, Port A bit 3
PINA4	= 4	; Input Pins, Port A bit 4
PINA5	= 5	; Input Pins, Port A bit 5
PINA6	= 6	; Input Pins, Port A bit 6
PINA7	= 7	; Input Pins, Port A bit 7


; ***** PORTB ************************
; PORTB - Port B Data Register
PORTB0	= 0	; Port B Data Register bit 0
PB0	= 0	; For compatibility
PORTB1	= 1	; Port B Data Register bit 1
PB1	= 1	; For compatibility
PORTB2	= 2	; Port B Data Register bit 2
PB2	= 2	; For compatibility
PORTB3	= 3	; Port B Data Register bit 3
PB3	= 3	; For compatibility
PORTB4	= 4	; Port B Data Register bit 4
PB4	= 4	; For compatibility
PORTB5	= 5	; Port B Data Register bit 5
PB5	= 5	; For compatibility
PORTB6	= 6	; Port B Data Register bit 6
PB6	= 6	; For compatibility
PORTB7	= 7	; Port B Data Register bit 7
PB7	= 7	; For compatibility

; DDRB - Port B Data Direction Register
DDB0	= 0	; Port B Data Direction Register bit 0
DDB1	= 1	; Port B Data Direction Register bit 1
DDB2	= 2	; Port B Data Direction Register bit 2
DDB3	= 3	; Port B Data Direction Register bit 3
DDB4	= 4	; Port B Data Direction Register bit 4
DDB5	= 5	; Port B Data Direction Register bit 5
DDB6	= 6	; Port B Data Direction Register bit 6
DDB7	= 7	; Port B Data Direction Register bit 7

; PINB - Port B Input Pins
PINB0	= 0	; Port B Input Pins bit 0
PINB1	= 1	; Port B Input Pins bit 1
PINB2	= 2	; Port B Input Pins bit 2
PINB3	= 3	; Port B Input Pins bit 3
PINB4	= 4	; Port B Input Pins bit 4
PINB5	= 5	; Port B Input Pins bit 5
PINB6	= 6	; Port B Input Pins bit 6
PINB7	= 7	; Port B Input Pins bit 7


; ***** EEPROM ***********************
; EEAR - EEPROM Read/Write Access
EEAR0	= 0	; EEPROM Read/Write Access bit 0
EEAR1	= 1	; EEPROM Read/Write Access bit 1
EEAR2	= 2	; EEPROM Read/Write Access bit 2
EEAR3	= 3	; EEPROM Read/Write Access bit 3
EEAR4	= 4	; EEPROM Read/Write Access bit 4
EEAR5	= 5	; EEPROM Read/Write Access bit 5
EEAR6	= 6	; EEPROM Read/Write Access bit 6

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
EEMWE	= 2	; EEPROM Master Write Enable
EERIE	= 3	; EEProm Ready Interrupt Enable


; ***** WATCHDOG *********************
; WDTCR - Watchdog Timer Control Register
WDTCSR	= WDTCR	; For compatibility
WDP0	= 0	; Watch Dog Timer Prescaler bit 0
WDP1	= 1	; Watch Dog Timer Prescaler bit 1
WDP2	= 2	; Watch Dog Timer Prescaler bit 2
WDE	= 3	; Watch Dog Enable
WDCE	= 4	; Watchdog Change Enable
WDTOE	= WDCE	; For compatibility


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

; SP - Stack Pointer
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

; OSCCAL - Status Register
CAL0	= 0	; Oscillator Calibration Value Bit 0
OSCCAL0	= CAL0	; For compatibility
CAL1	= 1	; Oscillator Calibration Value Bit 1
OSCCAL1	= CAL1	; For compatibility
CAL2	= 2	; Oscillator Calibration Value Bit 2
OSCCAL2	= CAL2	; For compatibility
CAL3	= 3	; Oscillator Calibration Value Bit 3
OSCCAL3	= CAL3	; For compatibility
CAL4	= 4	; Oscillator Calibration Value Bit 4
OSCCAL4	= CAL4	; For compatibility
CAL5	= 5	; Oscillator Calibration Value Bit 5
CAL6	= 6	; Oscillator Calibration Value Bit 6
CAL7	= 7	; Oscillator Calibration Value Bit 7


; ***** TIMER_COUNTER_0 **************
; TIMSK - Timer/Counter Interrupt Mask Register
TOIE0	= 1	; Timer/Counter0 Overflow Interrupt Enable

; TIFR - Timer/Counter Interrupt Flag register
TOV0	= 1	; Timer/Counter0 Overflow Flag

; TCCR0 - Timer/Counter0 Control Register
CS00	= 0	; Clock Select0 bit 0
CS01	= 1	; Clock Select0 bit 1
CS02	= 2	; Clock Select0 bit 2
PSR0	= 3	; Prescaler Reset Timer/Counter0

; TCNT0 - Timer Counter 0
TCNT00	= 0	; Timer Counter 0 bit 0
TCNT01	= 1	; Timer Counter 0 bit 1
TCNT02	= 2	; Timer Counter 0 bit 2
TCNT03	= 3	; Timer Counter 0 bit 3
TCNT04	= 4	; Timer Counter 0 bit 4
TCNT05	= 5	; Timer Counter 0 bit 5
TCNT06	= 6	; Timer Counter 0 bit 6
TCNT07	= 7	; Timer Counter 0 bit 7


; ***** TIMER_COUNTER_1 **************
; TCCR1A - Timer/Counter Control Register A
PWM1B	= 0	; Pulse Width Modulator B Enable
PWM1A	= 1	; Pulse Width Modulator A Enable
FOC1B	= 2	; Force Output Compare Match 1B
FOC1A	= 3	; Force Output Compare Match 1A
COM1B0	= 4	; Comparator B Output Mode Bit 0
COM1B1	= 5	; Comparator B Output Mode Bit 1
COM1A0	= 6	; Comparator A Output Mode Bit 0
COM1A1	= 7	; Comparator A Output Mode Bit 1

; TCCR1B - Timer/Counter Control Register B
CS10	= 0	; Clock Select Bits
CS11	= 1	; Clock Select Bits
CS12	= 2	; Clock Select Bits
CS13	= 3	; Clock Select Bits
PSR1	= 6	; Prescaler Reset Timer/Counter1
CTC1	= 7	; Clear Timer/Counter on Compare Match

; TCNT1 - Timer/Counter Register
TCNT1_0	= 0	; Timer/Counter Register Bit 0
TCNT1_1	= 1	; Timer/Counter Register Bit 1
TCNT1_2	= 2	; Timer/Counter Register Bit 2
TCNT1_3	= 3	; Timer/Counter Register Bit 3
TCNT1_4	= 4	; Timer/Counter Register Bit 4
TCNT1_5	= 5	; Timer/Counter Register Bit 5
TCNT1_6	= 6	; Timer/Counter Register Bit 6
TCNT1_7	= 7	; Timer/Counter Register Bit 7

; OCR1A - Output Compare Register
OCR1A0	= 0	; Output Compare Register A Bit 0
OCR1A1	= 1	; Output Compare Register A Bit 1
OCR1A2	= 2	; Output Compare Register A Bit 2
OCR1A3	= 3	; Output Compare Register A Bit 3
OCR1A4	= 4	; Output Compare Register A Bit 4
OCR1A5	= 5	; Output Compare Register A Bit 5
OCR1A6	= 6	; Output Compare Register A Bit 6
OCR1A7	= 7	; Output Compare Register A Bit 7

; OCR1B - Output Compare Register
OCR1B0	= 0	; Output Compare Register B Bit 0
OCR1B1	= 1	; Output Compare Register B Bit 1
OCR1B2	= 2	; Output Compare Register B Bit 2
OCR1B3	= 3	; Output Compare Register B Bit 3
OCR1B4	= 4	; Output Compare Register B Bit 4
OCR1B5	= 5	; Output Compare Register B Bit 5
OCR1B6	= 6	; Output Compare Register B Bit 6
OCR1B7	= 7	; Output Compare Register B Bit 7

; OCR1C - Output Compare Register
OCR1C0	= 0	; Output Compare Register C Bit 0
OCR1C1	= 1	; Output Compare Register C Bit 1
OCR1C2	= 2	; Output Compare Register C Bit 2
OCR1C3	= 3	; Output Compare Register C Bit 3
OCR1C4	= 4	; Output Compare Register C Bit 4
OCR1C5	= 5	; Output Compare Register C Bit 5
OCR1C6	= 6	; Output Compare Register C Bit 6
OCR1C7	= 7	; Output Compare Register C Bit 7

; TIMSK - Timer/Counter Interrupt Mask Register
TOIE1	= 2	; Timer/Counter1 Overflow Interrupt Enable
OCIE1B	= 5	; Timer/Counter1 Output Compare Interrupt Enable
OCIE1A	= 6	; Timer/Counter1 Output Compare Interrupt Enable

; TIFR - Timer/Counter Interrupt Flag Register
TOV1	= 2	; Timer/Counter1 Overflow Flag
OCF1B	= 5	; Timer/Counter1 Output Compare Flag 1B
OCF1A	= 6	; Timer/Counter1 Output Compare Flag 1A

; PLLCSR - PLL Control and Status Register
PLOCK	= 0	; PLL Lock Detector
PLLE	= 1	; PLL Enable
PCKE	= 2	; PCK Enable


; ***** EXTERNAL_INTERRUPT ***********
; GIMSK - General Interrupt Mask Register
PCIE0	= 4	; Pin Change Interrupt Enable 0
PCIE1	= 5	; Pin Change Interrupt Enable 1
INT0	= 6	; External Interrupt Request 0 Enable

; GIFR - General Interrupt Flag register
PCIF	= 5	; Pin Change Interrupt Flag
INTF0	= 6	; External Interrupt Flag 0



; ***** LOCKSBITS ********************************************************
LB1	= 0	; Lockbit
LB2	= 1	; Lockbit


; ***** FUSES ************************************************************
; LOW fuse bits
CKSEL0	= 0	; Select Clock Source
CKSEL1	= 1	; Select Clock Source
CKSEL2	= 2	; Select Clock Source
CKSEL3	= 3	; Select Clock Source
SUT0	= 4	; Select start-up time
SUT1	= 5	; Select start-up time
CKOPT	= 6	; Oscillator options
PLLCK	= 7	; Use PLL for internal clock

; HIGH fuse bits
BODEN	= 0	; Brown out detector enable
BODLEVEL	= 1	; Brown out detector trigger level
EESAVE	= 2	; EEPROM memory is preserved through the Chip Erase
SPIEN	= 3	; Enable Serial Program and Data Downloading
RSTDISBL	= 4	; Select if PB/ is I/O pin or RESET pin



; ***** CPU REGISTER DEFINITIONS *****************************************
XH	.DE r27
XL	.DE r26
YH	.DE r29
YL	.DE r28
ZH	.DE r31
ZL	.DE r30



; ***** DATA MEMORY DECLARATIONS *****************************************
FLASHEND	= 0x03ff	; Note: Word address
IOEND	= 0x003f
SRAM_START	= 0x0060
SRAM_SIZE	= 128
RAMEND	= 0x00df
XRAMEND	= 0x0000
E2END	= 0x007f
EEPROMEND	= 0x007f
EEADRBITS	= 7





; ***** INTERRUPT VECTORS ************************************************
INT0addr	= 0x0001	; External Interrupt 0
PCI0addr	= 0x0002	; External Interrupt Request 0
OC1Aaddr	= 0x0003	; Timer/Counter1 Compare Match 1A
OC1Baddr	= 0x0004	; Timer/Counter1 Compare Match 1B
OVF1addr	= 0x0005	; Timer/Counter1 Overflow
OVF0addr	= 0x0006	; Timer/Counter0 Overflow
USI_STARTaddr	= 0x0007	; USI Start
USI_OVFaddr	= 0x0008	; USI Overflow
ERDYaddr	= 0x0009	; EEPROM Ready
ACIaddr	= 0x000a	; Analog Comparator
ADCCaddr	= 0x000b	; ADC Conversion Complete

INT_VECTORS_SIZE	= 12	; size in words



; ***** END OF FILE ******************************************************
