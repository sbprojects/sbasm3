;*************************************************************************
;* A P P L I C A T I O N   N O T E   F O R   T H E   A V R   F A M I L Y
;* 
;* Number            : AVR000
;* File Name         : "tn15def.asm"
;* Title             : Register/Bit Definitions for the ATtiny15
;* Date              : 2011-02-09
;* Version           : 2.35
;* Support E-mail    : avr@atmel.com
;* Target MCU        : ATtiny15
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
;device ATtiny15

SIGNATURE_000	= 0x1e
SIGNATURE_001	= 0x90
SIGNATURE_002	= 0x06

                .CR     avr
                .FA     minimal
				.MS		$0200

; ***** I/O REGISTER DEFINITIONS *****************************************
; NOTE:
; Definitions marked "MEMORY MAPPED"are extended I/O ports
; and cannot be used with IN/OUT instructions
SREG	= 0x3f
GIMSK	= 0x3b
GIFR	= 0x3a
TIMSK	= 0x39
TIFR	= 0x38
MCUCR	= 0x35
MCUSR	= 0x34
TCCR0	= 0x33
TCNT0	= 0x32
OSCCAL	= 0x31
TCCR1	= 0x30
TCNT1	= 0x2f
OCR1A	= 0x2e
OCR1B	= 0x2d
SFIOR	= 0x2c
WDTCR	= 0x21
EEAR	= 0x1e
EEDR	= 0x1d
EECR	= 0x1c
PORTB	= 0x18
DDRB	= 0x17
PINB	= 0x16
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
ADLAR	= 5	; Left Adjust Result
REFS0	= 6	; Reference Selection Bit 0
REFS1	= 7	; Reference Selection Bit 1

; ADCSR - The ADC Control and Status register
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
ACIE	= 3	; Analog Comparator Interrupt Enable
ACI	= 4	; Analog Comparator Interrupt Flag
ACO	= 5	; Analog Compare Output
ACBG	= 6	; Analog Comparator Bandgap Select
AINBG6	= ACBG	; For compatibility
ACD	= 7	; Analog Comparator Disable


; ***** EEPROM ***********************
; EEAR - EEPROM Read/Write Access
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
EEMWE	= 2	; EEPROM Master Write Enable
EERIE	= 3	; EEProm Ready Interrupt Enable


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


; ***** TIMER_COUNTER_0 **************
; TIMSK - Timer/Counter Interrupt Mask Register
TOIE0	= 1	; Timer/Counter0 Overflow Interrupt Enable

; TIFR - Timer/Counter Interrupt Flag register
TOV0	= 1	; Timer/Counter0 Overflow Flag

; TCCR0 - Timer/Counter0 Control Register
CS00	= 0	; Clock Select0 bit 0
CS01	= 1	; Clock Select0 bit 1
CS02	= 2	; Clock Select0 bit 2

; TCNT0 - Timer Counter 0
TCNT00	= 0	; Timer Counter 0 bit 0
TCNT01	= 1	; Timer Counter 0 bit 1
TCNT02	= 2	; Timer Counter 0 bit 2
TCNT03	= 3	; Timer Counter 0 bit 3
TCNT04	= 4	; Timer Counter 0 bit 4
TCNT05	= 5	; Timer Counter 0 bit 5
TCNT06	= 6	; Timer Counter 0 bit 6
TCNT07	= 7	; Timer Counter 0 bit 7


; ***** WATCHDOG *********************
; WDTCR - Watchdog Timer Control Register
WDP0	= 0	; Watch Dog Timer Prescaler bit 0
WDP1	= 1	; Watch Dog Timer Prescaler bit 1
WDP2	= 2	; Watch Dog Timer Prescaler bit 2
WDE	= 3	; Watch Dog Enable
WDTOE	= 4	; RW
WDDE	= WDTOE	; For compatibility


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
CAL1	= 1	; Oscillator Calibration Value Bit 1
CAL2	= 2	; Oscillator Calibration Value Bit 2
CAL3	= 3	; Oscillator Calibration Value Bit 3
CAL4	= 4	; Oscillator Calibration Value Bit 4
CAL5	= 5	; Oscillator Calibration Value Bit 5
CAL6	= 6	; Oscillator Calibration Value Bit 6
CAL7	= 7	; Oscillator Calibration Value Bit 7


; ***** EXTERNAL_INTERRUPT ***********
; GIMSK - General Interrupt Mask Register
PCIE	= 5	; Pin Change Interrupt Enable
INT0	= 6	; External Interrupt Request 0 Enable

; GIFR - General Interrupt Flag register
PCIF	= 5	; Pin Change Interrupt Flag
INTF0	= 6	; External Interrupt Flag 0


; ***** TIMER_COUNTER_1 **************
; TCCR1 - Timer/Counter Control Register
CS10	= 0	; Clock Select Bits
CS11	= 1	; Clock Select Bits
CS12	= 2	; Clock Select Bits
CS13	= 3	; Clock Select Bits
COM1A0	= 4	; Compare Output Mode, Bit 1
COM1A1	= 5	; Compare Output Mode, Bit 0
PWM1	= 6	; Pulse Width Modulator Enable
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

; TIMSK - Timer/Counter Interrupt Mask Register
TOIE1	= 2	; Timer/Counter1 Overflow Interrupt Enable
OCIE1A	= 6	; OCIE1A: Timer/Counter1 Output Compare Interrupt Enable

; TIFR - Timer/Counter Interrupt Flag Register
TOV1	= 2	; Timer/Counter1 Overflow Flag
OCF1A	= 6	; Timer/Counter1 Output Compare Flag 1A

; SFIOR - Special Function IO Register
PSR0	= 0	; Prescaler Reset Timer/Counter0
PSR1	= 1	; Prescaler Reset Timer/Counter1
FOC1A	= 2	; Force Output Compare 1A



; ***** LOCKSBITS ********************************************************
LB1	= 0	; Lockbit
LB2	= 1	; Lockbit


; ***** FUSES ************************************************************
; LOW fuse bits



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
SRAM_SIZE	= 0
RAMEND	= 0x0000
XRAMEND	= 0x0000
E2END	= 0x003f
EEPROMEND	= 0x003f
EEADRBITS	= 6





; ***** INTERRUPT VECTORS ************************************************
INT0addr	= 0x0001	; External Interrupt 0
PCI0addr	= 0x0002	; External Interrupt Request 0
OC1addr	= 0x0003	; Timer/Counter1 Compare Match
OVF1addr	= 0x0004	; Timer/Counter1 Overflow
OVF0addr	= 0x0005	; Timer/Counter0 Overflow
ERDYaddr	= 0x0006	; EEPROM Ready
ACIaddr	= 0x0007	; Analog Comparator
ADCCaddr	= 0x0008	; ADC Conversion Ready

INT_VECTORS_SIZE	= 9	; size in words



; ***** END OF FILE ******************************************************
