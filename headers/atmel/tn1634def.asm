;*************************************************************************
;* A P P L I C A T I O N   N O T E   F O R   T H E   A V R   F A M I L Y
;* 
;* Number            : AVR000
;* File Name         : "tn1634def.asm"
;* Title             : Register/Bit Definitions for the ATtiny1634
;* Date              : 2011-05-12
;* Version           : 2.35
;* Support E-mail    : avr@atmel.com
;* Target MCU        : ATtiny1634
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
; .device ATtiny1634

SIGNATURE_000	= 0x1e
SIGNATURE_001	= 0x94
SIGNATURE_002	= 0x12

                .CR     avr
                .FA     enhanced128k
				.MS		$2000

; ***** I/O REGISTER DEFINITIONS *****************************************
; NOTE:
; Definitions marked "MEMORY MAPPED"are extended I/O ports
; and cannot be used with IN/OUT instructions
TWSCRA	= 0x7f	; MEMORY MAPPED
TWSCRB	= 0x7e	; MEMORY MAPPED
TWSSRA	= 0x7d	; MEMORY MAPPED
TWSA	= 0x7c	; MEMORY MAPPED
TWSAM	= 0x7b	; MEMORY MAPPED
TWSD	= 0x7a	; MEMORY MAPPED
UCSR1A	= 0x79	; MEMORY MAPPED
UCSR1B	= 0x78	; MEMORY MAPPED
UCSR1C	= 0x77	; MEMORY MAPPED
UCSR1D	= 0x76	; MEMORY MAPPED
UBRR1L	= 0x74	; MEMORY MAPPED
UBRR1H	= 0x75	; MEMORY MAPPED
UDR1	= 0x73	; MEMORY MAPPED
TCCR1A	= 0x72	; MEMORY MAPPED
TCCR1B	= 0x71	; MEMORY MAPPED
TCCR1C	= 0x70	; MEMORY MAPPED
TCNT1L	= 0x6e	; MEMORY MAPPED
TCNT1H	= 0x6f	; MEMORY MAPPED
OCR1AL	= 0x6c	; MEMORY MAPPED
OCR1AH	= 0x6d	; MEMORY MAPPED
OCR1BL	= 0x2e
OCR1BH	= 0x2e
ICR1L	= 0x2e
ICR1H	= 0x2e
GTCCR	= 0x67	; MEMORY MAPPED
OSCCAL1	= 0x66	; MEMORY MAPPED
OSCTCAL0B	= 0x65	; MEMORY MAPPED
OSCTCAL0A	= 0x64	; MEMORY MAPPED
OSCCAL0	= 0x63	; MEMORY MAPPED
DIDR2	= 0x62	; MEMORY MAPPED
DIDR1	= 0x61	; MEMORY MAPPED
DIDR0	= 0x60	; MEMORY MAPPED
SREG	= 0x3f
SPL	= 0x3d
SPH	= 0x3e
GIMSK	= 0x3c
GIFR	= 0x3b
TIMSK	= 0x3a
TIFR	= 0x39
SPMCSR	= 0x37
MCUCR	= 0x36
MCUSR	= 0x35
PRR	= 0x34
CLKPR	= 0x33
CLKSR	= 0x32
WDTCSR	= 0x30
CCP	= 0x2f
USISR	= 0x2d
USICR	= 0x2c
USIDR	= 0x2b
USIBR	= 0x2a
PCMSK2	= 0x29
PCMSK1	= 0x28
PCMSK0	= 0x27
UCSR0A	= 0x26
UCSR0B	= 0x25
UCSR0C	= 0x24
UCSR0D	= 0x23
UBRR0L	= 0x21
UBRR0H	= 0x22
UDR0	= 0x20
EEAR	= 0x1e
EEDR	= 0x1d
EECR	= 0x1c
TCCR0A	= 0x1b
TCCR0B	= 0x1a
TCNT0	= 0x19
OCR0A	= 0x18
OCR0B	= 0x17
GPIOR2	= 0x16
GPIOR1	= 0x15
GPIOR0	= 0x14
PORTCR	= 0x13
PUEA	= 0x12
PORTA	= 0x11
DDRA	= 0x10
PINA	= 0x0f
PUEB	= 0x0e
PORTB	= 0x0d
DDRB	= 0x0c
PINB	= 0x0b
PUEC	= 0x0a
PORTC	= 0x09
DDRC	= 0x08
PINC	= 0x07
ACSRA	= 0x06
ACSRB	= 0x05
ADMUX	= 0x04
ADCSRA	= 0x03
ADCSRB	= 0x02
ADCH	= 0x01
ADCL	= 0x00


; ***** BIT DEFINITIONS **************************************************

; ***** TWI **************************
; TWSCRA - TWI Slave Control Register A
TWSME	= 0	; TWI Smart Mode Enable
TWPME	= 1	; TWI Promiscuous Mode Enable
TWSIE	= 2	; TWI Stop Interrupt Enable
TWEN	= 3	; Two-Wire Interface Enable
TWASIE	= 4	; TWI Address/Stop Interrupt Enable
TWDIE	= 5	; TWI Data Interrupt Enable
TWSHE	= 7	; TWI SDA Hold Time Enable

; TWSCRB - TWI Slave Control Register B
TWCMD0	= 0	; 
TWCMD1	= 1	; 
TWAA	= 2	; TWI Acknowledge Action

; TWSSRA - TWI Slave Status Register A
TWAS	= 0	; TWI Address or Stop
TWDIR	= 1	; TWI Read/Write Direction
TWBE	= 2	; TWI Bus Error
TWC	= 3	; TWI Collision
TWRA	= 4	; TWI Receive Acknowledge
TWCH	= 5	; TWI Clock Hold
TWASIF	= 6	; TWI Address/Stop Interrupt Flag
TWDIF	= 7	; TWI Data Interrupt Flag.

; TWSA - TWI Slave Address Register
TWSA0	= 0	; TWI slave address bit
TWSA1	= 1	; TWI slave address bit
TWSA2	= 2	; TWI slave address bit
TWSA3	= 3	; TWI slave address bit
TWSA4	= 4	; TWI slave address bit
TWSA5	= 5	; TWI slave address bit
TWSA6	= 6	; TWI slave address bit
TWSA7	= 7	; TWI slave address bit

; TWSD - TWI Slave Data Register
TWSD0	= 0	; TWI slave data bit
TWSD1	= 1	; TWI slave data bit
TWSD2	= 2	; TWI slave data bit
TWSD3	= 3	; TWI slave data bit
TWSD4	= 4	; TWI slave data bit
TWSD5	= 5	; TWI slave data bit
TWSD6	= 6	; TWI slave data bit
TWSD7	= 7	; TWI slave data bit

; TWSAM - TWI Slave Address Mask Register
TWAE	= 0	; TWI Address Enable
TWSAM1	= 1	; TWI Address Mask Bit 1
TWSAM2	= 2	; TWI Address Mask Bit 2
TWSAM3	= 3	; TWI Address Mask Bit 3
TWSAM4	= 4	; TWI Address Mask Bit 4
TWSAM5	= 5	; TWI Address Mask Bit 5
TWSAM6	= 6	; TWI Address Mask Bit 6
TWSAM7	= 7	; TWI Address Mask Bit 7


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


; ***** PORTC ************************
; PORTCR - Port Control Register
BBMC	= 2	; Break-Before-Make Mode Enable

; PUEC - Pull-up Enable Control Register
PUEC0	= 0	; 
PUEC1	= 1	; 
PUEC2	= 2	; 
PUEC3	= 3	; 
PUEC4	= 4	; 
PUEC5	= 5	; 

; PORTC - Port C Data Register
PORTC0	= 0	; 
PC0	= 0	; For compatibility
PORTC1	= 1	; 
PC1	= 1	; For compatibility
PORTC2	= 2	; 
PC2	= 2	; For compatibility
PORTC3	= 3	; 
PC3	= 3	; For compatibility
PORTC4	= 4	; 
PC4	= 4	; For compatibility
PORTC5	= 5	; 
PC5	= 5	; For compatibility

; DDRC - Data Direction Register, Port C
DDC0	= 0	; 
DDC1	= 1	; 
DDC2	= 2	; 
DDC3	= 3	; 
DDC4	= 4	; 
DDC5	= 5	; 

; PINC - Port C Input Pins
PINC0	= 0	; 
PINC1	= 1	; 
PINC2	= 2	; 
PINC3	= 3	; 
PINC4	= 4	; 
PINC5	= 5	; 


; ***** PORTA ************************
; PORTCR - Port Control Register
BBMA	= 0	; Break-Before-Make Mode Enable

; PUEA - Pull-up Enable Control Register
PUEA0	= 0	; 
PUEA1	= 1	; 
PUEA2	= 2	; 
PUEA3	= 3	; 
PUEA4	= 4	; 
PUEA5	= 5	; 
PUEA6	= 6	; 
PUEA7	= 7	; 

; PORTA - Port A Data Register
PORTA0	= 0	; 
PA0	= 0	; For compatibility
PORTA1	= 1	; 
PA1	= 1	; For compatibility
PORTA2	= 2	; 
PA2	= 2	; For compatibility
PORTA3	= 3	; 
PA3	= 3	; For compatibility
PORTA4	= 4	; 
PA4	= 4	; For compatibility
PORTA5	= 5	; 
PA5	= 5	; For compatibility
PORTA6	= 6	; 
PA6	= 6	; For compatibility
PORTA7	= 7	; 
PA7	= 7	; For compatibility

; DDRA - Data Direction Register, Port A
DDA0	= 0	; 
DDA1	= 1	; 
DDA2	= 2	; 
DDA3	= 3	; 
DDA4	= 4	; 
DDA5	= 5	; 
DDA6	= 6	; 
DDA7	= 7	; 

; PINA - Port A Input Pins
PINA0	= 0	; 
PINA1	= 1	; 
PINA2	= 2	; 
PINA3	= 3	; 
PINA4	= 4	; 
PINA5	= 5	; 
PINA6	= 6	; 
PINA7	= 7	; 


; ***** AD_CONVERTER *****************
; ADMUX - The ADC multiplexer Selection Register
MUX0	= 0	; Analog Channel and Gain Selection Bits
MUX1	= 1	; Analog Channel and Gain Selection Bits
MUX2	= 2	; Analog Channel and Gain Selection Bits
MUX3	= 3	; Analog Channel and Gain Selection Bits
REFS0	= 6	; Reference Selection Bit
REFS1	= 7	; Reference Selection Bit

; ADCSRA - The ADC Control and Status register
ADPS0	= 0	; ADC Prescaler Select Bits
ADPS1	= 1	; ADC Prescaler Select Bits
ADPS2	= 2	; ADC Prescaler Select Bits
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
ADLAR	= 3	; 

; DIDR2 - Digital Input Disable Register 2
ADC9D	= 0	; ADC9 Digital input Disable
ADC10D	= 1	; ADC10 Digital input Disable
ADC11D	= 2	; ADC11 Digital input Disable

; DIDR1 - Digital Input Disable Register 1
ADC5D	= 0	; ADC5 Digital input Disable
ADC6D	= 1	; ADC6 Digital input Disable
ADC7D	= 2	; ADC7 Digital input Disable
ADC8D	= 3	; ADC8 Digital Input Disable

; DIDR0 - Digital Input Disable Register 0
AREFD	= 0	; AREF Digital input Disable
AIN0D	= 1	; AIN0 Digital input Disable
AIN1D	= 2	; AIN1 Digital input Disable
ADC0D	= 3	; ADC0 Digital Input Disable
ADC1D	= 4	; ADC1 Digital input Disable
ADC2D	= 5	; ADC2 Digital input Disable
ADC3D	= 6	; ADC3 Digital input Disable
ADC4D	= 7	; ADC4 Digital input Disable


; ***** ANALOG_COMPARATOR ************
; ACSRA - Analog Comparator Control And Status Register A
ACIS0	= 0	; Analog Comparator Interrupt Mode Select bit 0
ACIS1	= 1	; Analog Comparator Interrupt Mode Select bit 1
ACIC	= 2	; Analog Comparator Input Capture Enable
ACIE	= 3	; Analog Comparator Interrupt Enable
ACI	= 4	; Analog Comparator Interrupt Flag
ACO	= 5	; Analog Compare Output
ACBG	= 6	; Analog Comparator Bandgap Select
ACD	= 7	; Analog Comparator Disable

; ACSRB - Analog Comparator Control And Status Register B
ACME	= 2	; Analog Comparator Multiplexer Enable
HLEV	= 6	; Hysteresis Level
HSEL	= 7	; Hysteresis Select


; ***** EEPROM ***********************
; EEAR - EEPROM Read/Write Access
EEARL	= EEAR	; For compatibility
EEAR0	= 0	; EEPROM Read/Write Access bit 0
EEAR1	= 1	; EEPROM Read/Write Access bit 1
EEAR2	= 2	; EEPROM Read/Write Access bit 2
EEAR3	= 3	; EEPROM Read/Write Access bit 3
EEAR4	= 4	; EEPROM Read/Write Access bit 4
EEAR5	= 5	; EEPROM Read/Write Access bit 5
EEAR6	= 6	; EEPROM Read/Write Access bit 6
EEAR7	= 7	; EEPROM Read/Write Access bit 7

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
EEPE	= 1	; EEPROM Write Enable
EEWE	= EEPE	; For compatibility
EEMPE	= 2	; EEPROM Master Write Enable
EEMWE	= EEMPE	; For compatibility
EERIE	= 3	; EEProm Ready Interrupt Enable
EEPM0	= 4	; EEPROM Programming Mode Bit 0
EEPM1	= 5	; EEPROM Programming Mode Bit 1


; ***** TIMER_COUNTER_1 **************
; TIMSK - Timer/Counter Interrupt Mask Register
ICIE1	= 3	; Timer/Counter1 Input Capture Interrupt Enable
TICIE	= ICIE1	; For compatibility
OCIE1B	= 5	; Timer/Counter1 Output CompareB Match Interrupt Enable
OCIE1A	= 6	; Timer/Counter1 Output CompareA Match Interrupt Enable
TOIE1	= 7	; Timer/Counter1 Overflow Interrupt Enable

; TIFR - Timer/Counter Interrupt Flag register
ICF1	= 3	; Input Capture Flag 1
OCF1B	= 5	; Output Compare Flag 1B
OCF1A	= 6	; Output Compare Flag 1A
TOV1	= 7	; Timer/Counter1 Overflow Flag

; TCCR1A - Timer/Counter1 Control Register A
WGM10	= 0	; Pulse Width Modulator Select Bit 0
PWM10	= WGM10	; For compatibility
WGM11	= 1	; Pulse Width Modulator Select Bit 1
PWM11	= WGM11	; For compatibility
COM1B0	= 4	; Comparet Ouput Mode 1B, bit 0
COM1B1	= 5	; Compare Output Mode 1B, bit 1
COM1A0	= 6	; Comparet Ouput Mode 1A, bit 0
COM1A1	= 7	; Compare Output Mode 1A, bit 1

; TCCR1B - Timer/Counter1 Control Register B
CS10	= 0	; Clock Select bit 0
CS11	= 1	; Clock Select 1 bit 1
CS12	= 2	; Clock Select1 bit 2
WGM12	= 3	; Waveform Generation Mode Bit 2
CTC1	= WGM12	; For compatibility
WGM13	= 4	; Waveform Generation Mode Bit 3
ICES1	= 6	; Input Capture 1 Edge Select
ICNC1	= 7	; Input Capture 1 Noise Canceler

; TCCR1C - Timer/Counter1 Control Register C
FOC1B	= 6	; Force Output Compare for Channel B
FOC1A	= 7	; Force Output Compare for Channel A


; ***** TIMER_COUNTER_0 **************
; TIMSK - Timer/Counter Interrupt Mask Register
OCIE0A	= 0	; Timer/Counter0 Output Compare Match A Interrupt Enable
TOIE0	= 1	; Timer/Counter0 Overflow Interrupt Enable
OCIE0B	= 2	; Timer/Counter0 Output Compare Match B Interrupt Enable

; TIFR - Timer/Counter Interrupt Flag register
OCF0A	= 0	; Timer/Counter0 Output Compare Flag 0A
TOV0	= 1	; Timer/Counter0 Overflow Flag
OCF0B	= 2	; Timer/Counter0 Output Compare Flag 0B

; OCR0B - Timer/Counter0 Output Compare Register
OCR0_0	= 0	; 
OCR0_1	= 1	; 
OCR0_2	= 2	; 
OCR0_3	= 3	; 
OCR0_4	= 4	; 
OCR0_5	= 5	; 
OCR0_6	= 6	; 
OCR0_7	= 7	; 

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
TCCR0	= TCCR0B	; For compatibility
CS00	= 0	; Clock Select
CS01	= 1	; Clock Select
CS02	= 2	; Clock Select
WGM02	= 3	; 
FOC0B	= 6	; Force Output Compare B
FOC0A	= 7	; Force Output Compare B


; ***** EXTERNAL_INTERRUPT ***********
; PCMSK2 - Pin Change Mask Register 1
PCINT12	= 0	; Pin Change Enable Mask 12
PCINT13	= 1	; Pin Change Enable Mask 13
PCINT14	= 2	; Pin Change Enable Mask 14
PCINT15	= 3	; Pin Change Enable Mask 15
PCINT16	= 4	; Pin Change Enable Mask 16
PCINT17	= 5	; Pin Change Enable Mask 17

; PCMSK1 - Pin Change Mask Register 1
PCINT8	= 0	; Pin Change Enable Mask 8
PCINT9	= 1	; Pin Change Enable Mask 9
PCINT10	= 2	; Pin Change Enable Mask 10
PCINT11	= 3	; Pin Change Enable Mask 11

; PCMSK0 - Pin Change Mask Register 0
PCINT0	= 0	; Pin Change Enable Mask 0
PCINT1	= 1	; Pin Change Enable Mask 1
PCINT2	= 2	; Pin Change Enable Mask 2
PCINT3	= 3	; Pin Change Enable Mask 3
PCINT4	= 4	; Pin Change Enable Mask 4
PCINT5	= 5	; Pin Change Enable Mask 5
PCINT6	= 6	; Pin Change Enable Mask 6
PCINT7	= 7	; Pin Change Enable Mask 7

; GIFR - General Interrupt Flag Register
PCIF0	= 3	; Pin Change Interrupt Flag 0
PCIF1	= 4	; Pin Change Interrupt Flag 1
PCIF2	= 5	; Pin Change Interrupt Flag 2
INTF0	= 6	; External Interrupt Flag 0

; GIMSK - General Interrupt Mask Register
PCIE0	= 3	; Pin Change Interrupt Enable 0
PCIE1	= 4	; Pin Change Interrupt Enable 1
PCIE2	= 5	; Pin Change Interrupt Enable 2
INT0	= 6	; External Interrupt Request 0 Enable


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
SE	= 4	; Sleep Enable
SM0	= 5	; Sleep Mode Select Bit 0
SM1	= 6	; Sleep Mode Select Bit 1

; MCUSR - MCU Status Register
PORF	= 0	; Power-on reset flag
EXTRF	= 1	; External Reset Flag
BORF	= 2	; Brown-out Reset Flag
WDRF	= 3	; Watchdog Reset Flag

; OSCCAL0 - Oscillator Calibration Value
CAL00	= 0	; Oscillator Calibration Value Bit0
CAL01	= 1	; Oscillator Calibration Value Bit1
CAL02	= 2	; Oscillator Calibration Value Bit2
CAL03	= 3	; Oscillator Calibration Value Bit3
CAL04	= 4	; Oscillator Calibration Value Bit4
CAL05	= 5	; Oscillator Calibration Value Bit5
CAL06	= 6	; Oscillator Calibration Value Bit6
CAL07	= 7	; Oscillator Calibration Value Bit7

; OSCCAL1 - 
CAL10	= 0	; 
CAL11	= 1	; 

; OSCTCAL0A - 
TCAL0A0	= 0	; 
TCAL0A1	= 1	; 
TCAL0A2	= 2	; 
TCAL0A3	= 3	; 
TCAL0A4	= 4	; 
TCAL0A5	= 5	; 
TCAL0A6	= 6	; 
TCAL0A7	= 7	; 

; OSCTCAL0B - 
TCAL0B0	= 0	; 
TCAL0B1	= 1	; 
TCAL0B2	= 2	; 
TCAL0B3	= 3	; 
TCAL0B4	= 4	; 
TCAL0B5	= 5	; 
TCAL0B6	= 6	; 
TCAL0B7	= 7	; 

; GPIOR2 - General Purpose I/O Register 2
GPIOR20	= 0	; 
GPIOR21	= 1	; 
GPIOR22	= 2	; 
GPIOR23	= 3	; 
GPIOR24	= 4	; 
GPIOR25	= 5	; 
GPIOR26	= 6	; 
GPIOR27	= 7	; 

; GPIOR1 - General Purpose I/O Register 1
GPIOR10	= 0	; 
GPIOR11	= 1	; 
GPIOR12	= 2	; 
GPIOR13	= 3	; 
GPIOR14	= 4	; 
GPIOR15	= 5	; 
GPIOR16	= 6	; 
GPIOR17	= 7	; 

; GPIOR0 - General Purpose I/O Register 0
GPIOR00	= 0	; 
GPIOR01	= 1	; 
GPIOR02	= 2	; 
GPIOR03	= 3	; 
GPIOR04	= 4	; 
GPIOR05	= 5	; 
GPIOR06	= 6	; 
GPIOR07	= 7	; 

; PRR - Power Reduction Register
PRADC	= 0	; Power Reduction ADC
PRUSART0	= 1	; Power Reduction USART 0
PRUSART1	= 2	; Power Reduction USART 1
PRUSI	= 3	; Power Reduction USI
PRTIM0	= 4	; Power Reduction Timer/Counter0
PRTIM1	= 5	; Power Reduction Timer/Counter1
PRTWI	= 6	; Power Reduction TWI

; CLKPR - Clock Prescale Register
CLKPS0	= 0	; Clock Prescaler Select Bit 0
CLKPS1	= 1	; Clock Prescaler Select Bit 1
CLKPS2	= 2	; Clock Prescaler Select Bit 2
CLKPS3	= 3	; Clock Prescaler Select Bit 3

; CLKSR - Clock Setting Register
CKSEL0	= 0	; Clock Select Bit 0
CKSEL1	= 1	; Clock Select Bit 1
CKSEL2	= 2	; Clock Select Bit 2
CKSEL3	= 3	; Clock Select Bit 3
SUT	= 4	; Start-up Time
CKOUT_IO	= 5	; Clock Output (active low)
CSTR	= 6	; Clock Switch Trigger
OSCRDY	= 7	; Oscillator Ready

; CCP - Configuration Change Protection
CCP0	= 0	; Configuration Change Protection bit 0
CCP1	= 1	; Configuration Change Protection bit 1
CCP2	= 2	; Configuration Change Protection bit 2
CCP3	= 3	; Configuration Change Protection bit 3
CCP4	= 4	; Configuration Change Protection bit 4
CCP5	= 5	; Configuration Change Protection bit 5
CCP6	= 6	; Configuration Change Protection bit 6
CCP7	= 7	; Configuration Change Protection bit 7


; ***** USI **************************
; USIBR - USI Buffer Register
USIBR0	= 0	; USI Buffer Register bit 0
USIBR1	= 1	; USI Buffer Register bit 1
USIBR2	= 2	; USI Buffer Register bit 2
USIBR3	= 3	; USI Buffer Register bit 3
USIBR4	= 4	; USI Buffer Register bit 4
USIBR5	= 5	; USI Buffer Register bit 5
USIBR6	= 6	; USI Buffer Register bit 6
USIBR7	= 7	; USI Buffer Register bit 7

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


; ***** USART0 ***********************
; UDR0 - USART I/O Data Register
UDR0_0	= 0	; USART I/O Data Register bit 0
UDR0_1	= 1	; USART I/O Data Register bit 1
UDR0_2	= 2	; USART I/O Data Register bit 2
UDR0_3	= 3	; USART I/O Data Register bit 3
UDR0_4	= 4	; USART I/O Data Register bit 4
UDR0_5	= 5	; USART I/O Data Register bit 5
UDR0_6	= 6	; USART I/O Data Register bit 6
UDR0_7	= 7	; USART I/O Data Register bit 7

; UCSR0A - USART Control and Status Register A
MPCM0	= 0	; Multi-processor Communication Mode
U2X0	= 1	; Double the USART transmission speed
UPE0	= 2	; Parity Error
DOR0	= 3	; Data overRun
FE0	= 4	; Framing Error
UDRE0	= 5	; USART Data Register Empty
TXC0	= 6	; USART Transmitt Complete
RXC0	= 7	; USART Receive Complete

; UCSR0B - USART Control and Status Register B
TXB80	= 0	; Transmit Data Bit 8
RXB80	= 1	; Receive Data Bit 8
UCSZ02	= 2	; Character Size
TXEN0	= 3	; Transmitter Enable
RXEN0	= 4	; Receiver Enable
UDRIE0	= 5	; USART Data register Empty Interrupt Enable
TXCIE0	= 6	; TX Complete Interrupt Enable
RXCIE0	= 7	; RX Complete Interrupt Enable

; UCSR0C - USART Control and Status Register C
UCPOL0	= 0	; Clock Polarity
UCSZ00	= 1	; Character Size
UCPHA0	= UCSZ00	; For compatibility
UCSZ01	= 2	; Character Size
UDORD0	= UCSZ01	; For compatibility
USBS0	= 3	; Stop Bit Select
UPM00	= 4	; Parity Mode Bit 0
UPM01	= 5	; Parity Mode Bit 1
UMSEL00	= 6	; USART Mode Select
UMSEL0	= UMSEL00	; For compatibility
UMSEL01	= 7	; USART Mode Select
UMSEL1	= UMSEL01	; For compatibility

; UCSR0D - USART Control and Status Register D
SFDE0	= 5	; USART RX Start Frame Detection Enable
RXS0	= 6	; USART RX Start Flag
RXS	= RXS0	; For compatibility
RXSIE0	= 7	; USART RX Start Interrupt Enable
RXSIE	= RXSIE0	; For compatibility

; UBRR0H - USART Baud Rate Register High Byte
UBRR8	= 0	; USART Baud Rate Register bit 8
UBRR9	= 1	; USART Baud Rate Register bit 9
UBRR10	= 2	; USART Baud Rate Register bit 10
UBRR11	= 3	; USART Baud Rate Register bit 11

; UBRR0L - USART Baud Rate Register Low Byte
_UBRR0	= 0	; USART Baud Rate Register bit 0
_UBRR1	= 1	; USART Baud Rate Register bit 1
UBRR2	= 2	; USART Baud Rate Register bit 2
UBRR3	= 3	; USART Baud Rate Register bit 3
UBRR4	= 4	; USART Baud Rate Register bit 4
UBRR5	= 5	; USART Baud Rate Register bit 5
UBRR6	= 6	; USART Baud Rate Register bit 6
UBRR7	= 7	; USART Baud Rate Register bit 7


; ***** USART1 ***********************
; UDR1 - USART I/O Data Register
UDR1_0	= 0	; USART I/O Data Register bit 0
UDR1_1	= 1	; USART I/O Data Register bit 1
UDR1_2	= 2	; USART I/O Data Register bit 2
UDR1_3	= 3	; USART I/O Data Register bit 3
UDR1_4	= 4	; USART I/O Data Register bit 4
UDR1_5	= 5	; USART I/O Data Register bit 5
UDR1_6	= 6	; USART I/O Data Register bit 6
UDR1_7	= 7	; USART I/O Data Register bit 7

; UCSR1A - USART Control and Status Register A
MPCM1	= 0	; Multi-processor Communication Mode
U2X1	= 1	; Double the USART transmission speed
UPE1	= 2	; Parity Error
DOR1	= 3	; Data overRun
FE1	= 4	; Framing Error
UDRE1	= 5	; USART Data Register Empty
TXC1	= 6	; USART Transmitt Complete
RXC1	= 7	; USART Receive Complete

; UCSR1B - USART Control and Status Register B
TXB81	= 0	; Transmit Data Bit 8
RXB81	= 1	; Receive Data Bit 8
UCSZ12	= 2	; Character Size
TXEN1	= 3	; Transmitter Enable
RXEN1	= 4	; Receiver Enable
UDRIE1	= 5	; USART Data register Empty Interrupt Enable
TXCIE1	= 6	; TX Complete Interrupt Enable
RXCIE1	= 7	; RX Complete Interrupt Enable

; UCSR1C - USART Control and Status Register C
UCPOL1	= 0	; Clock Polarity
UCSZ10	= 1	; Character Size
UCPHA1	= UCSZ10	; For compatibility
UCSZ11	= 2	; Character Size
UDORD1	= UCSZ11	; For compatibility
USBS1	= 3	; Stop Bit Select
UPM10	= 4	; Parity Mode Bit 0
UPM11	= 5	; Parity Mode Bit 1
UMSEL10	= 6	; USART Mode Select
UMSEL11	= 7	; USART Mode Select

; UCSR1D - USART Control and Status Register D
SFDE1	= 5	; USART RX Start Frame Detection Enable
RXS1	= 6	; USART RX Start Flag
;RXS	= RXS1	; For compatibility
RXSIE1	= 7	; USART RX Start Interrupt Enable
;RXSIE	= RXSIE1	; For compatibility

; UBRR1H - USART Baud Rate Register High Byte
UBRR_8	= 0	; USART Baud Rate Register bit 8
UBRR_9	= 1	; USART Baud Rate Register bit 9
UBRR_10	= 2	; USART Baud Rate Register bit 10
UBRR_11	= 3	; USART Baud Rate Register bit 11

; UBRR1L - USART Baud Rate Register Low Byte
UBRR_0	= 0	; USART Baud Rate Register bit 0
UBRR_1	= 1	; USART Baud Rate Register bit 1
UBRR_2	= 2	; USART Baud Rate Register bit 2
UBRR_3	= 3	; USART Baud Rate Register bit 3
UBRR_4	= 4	; USART Baud Rate Register bit 4
UBRR_5	= 5	; USART Baud Rate Register bit 5
UBRR_6	= 6	; USART Baud Rate Register bit 6
UBRR_7	= 7	; USART Baud Rate Register bit 7


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
; LOW fuse bits
;CKSEL0	= 0	; Select Clock Source
;CKSEL1	= 1	; Select Clock Source
;CKSEL2	= 2	; Select Clock Source
;CKSEL3	= 3	; Select Clock Source
;SUT	= 4	; Select start-up time
CKOUT	= 6	; Clock output
CKDIV8	= 7	; Divide clock by 8

; HIGH fuse bits
BODLEVEL0	= 0	; Brown-out Detector trigger level
BODLEVEL1	= 1	; Brown-out Detector trigger level
BODLEVEL2	= 2	; Brown-out Detector trigger level
EESAVE	= 3	; EEPROM memory is preserved through chip erase
WDTON	= 4	; Watchdog Timer Always On
SPIEN	= 5	; Enable Serial programming and Data Downloading
DWEN	= 6	; debugWIRE Enable
RSTDISBL	= 7	; External reset disable

; EXTENDED fuse bits
SELFPRGEN	= 0	; Self Programming Enable
BODACT0	= 1	; Brown-out detector mode
BODACT1	= 2	; Brown-out detector mode
BODPD0	= 3	; Brown-out detector mode
BODPD1	= 4	; Brown-out detector mode



; ***** CPU REGISTER DEFINITIONS *****************************************
XH	.DE r27
XL	.DE r26
YH	.DE r29
YL	.DE r28
ZH	.DE r31
ZL	.DE r30



; ***** DATA MEMORY DECLARATIONS *****************************************
FLASHEND	= 0x1fff	; Note: Word address
IOEND	= 0x00ff
SRAM_START	= 0x0100
SRAM_SIZE	= 1024
RAMEND	= 0x04ff
XRAMEND	= 0x0000
E2END	= 0x00ff
EEPROMEND	= 0x00ff
EEADRBITS	= 8



; ***** BOOTLOADER DECLARATIONS ******************************************
NRWW_START_ADDR	= 0x0
NRWW_STOP_ADDR	= 0x1fff
RWW_START_ADDR	= 0x0
RWW_STOP_ADDR	= 0x0
PAGESIZE	= 16



; ***** INTERRUPT VECTORS ************************************************
INT0addr	= 0x0002	; External Interrupt Request 0
PCI0addr	= 0x0004	; Pin Change Interrupt Request 0
PCI1addr	= 0x0006	; Pin Change Interrupt Request 1
PCI2addr	= 0x0008	; Pin Change Interrupt Request 2
WDTaddr	= 0x000a	; Watchdog Time-out Interrupt
ICP1addr	= 0x000c	; Timer/Counter1 Capture Event
OC1Aaddr	= 0x000e	; Timer/Counter1 Compare Match A
OC1Baddr	= 0x0010	; Timer/Counter1 Compare Match B
OVF1addr	= 0x0012	; Timer/Counter1 Overflow
OC0Aaddr	= 0x0014	; TimerCounter0 Compare Match A
OC0Baddr	= 0x0016	; TimerCounter0 Compare Match B
OVF0addr	= 0x0018	; Timer/Couner0 Overflow
ACIaddr	= 0x001a	; Analog Comparator
ADCCaddr	= 0x001c	; ADC Conversion Complete
USART0__STARTaddr	= 0x001e	; USART0, Start
URXC0addr	= 0x0020	; USART0, Rx Complete
UDRE0addr	= 0x0022	; USART0 Data Register Empty
UTXC0addr	= 0x0024	; USART0, Tx Complete
USART1__STARTaddr	= 0x0026	; USART1, Start
URXC1addr	= 0x0028	; USART1, Rx Complete
UDRE1addr	= 0x002a	; USART1 Data Register Empty
UTXC1addr	= 0x002c	; USART1, Tx Complete
USI_STARTaddr	= 0x002e	; USI Start Condition
USI_OVFaddr	= 0x0030	; USI Overflow
TWIaddr	= 0x0032	; Two-wire Serial Interface
ERDYaddr	= 0x0034	; EEPROM Ready
QTRIPaddr	= 0x0036	; Touch Sensing

INT_VECTORS_SIZE	= 56	; size in words


; ***** END OF FILE ******************************************************
