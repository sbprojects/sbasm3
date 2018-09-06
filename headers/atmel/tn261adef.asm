;*************************************************************************
;* A P P L I C A T I O N   N O T E   F O R   T H E   A V R   F A M I L Y
;* 
;* Number            : AVR000
;* File Name         : "tn261Adef.asm"
;* Title             : Register/Bit Definitions for the ATtiny261A
;* Date              : 2011-02-09
;* Version           : 2.35
;* Support E-mail    : avr@atmel.com
;* Target MCU        : ATtiny261A
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
; .device ATtiny261A

SIGNATURE_000	= 0x1e
SIGNATURE_001	= 0x91
SIGNATURE_002	= 0x0c

                .CR     avr
                .FA     enhanced128k
				.MS		$0400

; ***** I/O REGISTER DEFINITIONS *****************************************
; NOTE:
; Definitions marked "MEMORY MAPPED"are extended I/O ports
; and cannot be used with IN/OUT instructions
SREG	= 0x3f
SPL	= 0x3d
GIMSK	= 0x3b
GIFR	= 0x3a
TIMSK	= 0x39
TIFR	= 0x38
SPMCSR	= 0x37
PRR	= 0x36
MCUCR	= 0x35
MCUSR	= 0x34
TCCR0B	= 0x33
TCNT0L	= 0x32
OSCCAL	= 0x31
TCCR1A	= 0x30
TCCR1B	= 0x2f
TCNT1	= 0x2e
OCR1A	= 0x2d
OCR1B	= 0x2c
OCR1C	= 0x2b
OCR1D	= 0x2a
PLLCSR	= 0x29
CLKPR	= 0x28
TCCR1C	= 0x27
TCCR1D	= 0x26
TC1H	= 0x25
DT1	= 0x24
PCMSK0	= 0x23
PCMSK1	= 0x22
WDTCR	= 0x21
DWDR	= 0x20
EEARH	= 0x1f
EEARL	= 0x1e
EEDR	= 0x1d
EECR	= 0x1c
PORTA	= 0x1b
DDRA	= 0x1a
PINA	= 0x19
PORTB	= 0x18
DDRB	= 0x17
PINB	= 0x16
TCCR0A	= 0x15
TCNT0H	= 0x14
OCR0A	= 0x13
OCR0B	= 0x12
USIPP	= 0x11
USIBR	= 0x10
USIDR	= 0x0f
USISR	= 0x0e
USICR	= 0x0d
GPIOR2	= 0x0c
GPIOR1	= 0x0b
GPIOR0	= 0x0a
ACSRB	= 0x09
ACSRA	= 0x08
ADMUX	= 0x07
ADCSRA	= 0x06
ADCH	= 0x05
ADCL	= 0x04
ADCSRB	= 0x03
DIDR1	= 0x02
DIDR0	= 0x01
TCCR1E	= 0x00


; ***** BIT DEFINITIONS **************************************************

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
MUX5	= 3	; 
REFS2	= 4	; 
IPR	= 5	; Input Polarity Mode
GSEL	= 6	; Gain Select
BIN	= 7	; Bipolar Input Mode

; DIDR0 - Digital Input Disable Register 0
ADC0D	= 0	; ADC0 Digital input Disable
ADC1D	= 1	; ADC1 Digital input Disable
ADC2D	= 2	; ADC2 Digital input Disable
AREFD	= 3	; AREF Digital Input Disable
ADC3D	= 4	; ADC3 Digital input Disable
ADC4D	= 5	; ADC4 Digital input Disable
ADC5D	= 6	; ADC5 Digital input Disable
ADC6D	= 7	; ADC6 Digital input Disable

; DIDR1 - Digital Input Disable Register 1
ADC7D	= 4	; ADC7 Digital input Disable
ADC8D	= 5	; ADC8 Digital input Disable
ADC9D	= 6	; ADC9 Digital input Disable
ADC10D	= 7	; ADC10 Digital input Disable


; ***** ANALOG_COMPARATOR ************
; ACSRA - Analog Comparator Control And Status Register A
ACIS0	= 0	; Analog Comparator Interrupt Mode Select bit 0
ACIS1	= 1	; Analog Comparator Interrupt Mode Select bit 1
ACME	= 2	; Analog Comparator Multiplexer Enable
ACIE	= 3	; Analog Comparator Interrupt Enable
ACI	= 4	; Analog Comparator Interrupt Flag
ACO	= 5	; Analog Compare Output
ACBG	= 6	; Analog Comparator Bandgap Select
ACD	= 7	; Analog Comparator Disable

; ACSRB - Analog Comparator Control And Status Register B
ACM0	= 0	; Analog Comparator Multiplexer
ACM1	= 1	; Analog Comparator Multiplexer
ACM2	= 2	; Analog Comparator Multiplexer
HLEV	= 6	; Hysteresis Level
HSEL	= 7	; Hysteresis Select


; ***** USI **************************
; USIPP - USI Pin Position
USIPOS	= 0	; USI Pin Position

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


; ***** EEPROM ***********************
; EEARL - EEPROM Address Register Low Byte
EEAR0	= 0	; EEPROM Read/Write Access Bit 0
EEAR1	= 1	; EEPROM Read/Write Access Bit 1
EEAR2	= 2	; EEPROM Read/Write Access Bit 2
EEAR3	= 3	; EEPROM Read/Write Access Bit 3
EEAR4	= 4	; EEPROM Read/Write Access Bit 4
EEAR5	= 5	; EEPROM Read/Write Access Bit 5
EEAR6	= 6	; EEPROM Read/Write Access Bit 6
EEAR7	= 7	; EEPROM Read/Write Access Bit 7

; EEARH - EEPROM Address Register High Byte
EEAR8	= 0	; EEPROM Read/Write Access Bit 0

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
EEMPE	= 2	; EEPROM Master Write Enable
EERIE	= 3	; EEPROM Ready Interrupt Enable
EEPM0	= 4	; EEPROM Programming Mode Bit 0
EEPM1	= 5	; EEPROM Programming Mode Bit 1


; ***** WATCHDOG *********************
; WDTCR - Watchdog Timer Control Register
WDTCSR	= WDTCR	; For compatibility
WDP0	= 0	; Watch Dog Timer Prescaler bit 0
WDP1	= 1	; Watch Dog Timer Prescaler bit 1
WDP2	= 2	; Watch Dog Timer Prescaler bit 2
WDE	= 3	; Watch Dog Enable
WDCE	= 4	; Watchdog Change Enable
WDTOE	= WDCE	; For compatibility
WDP3	= 5	; Watchdog Timer Prescaler Bit 3
WDIE	= 6	; Watchdog Timeout Interrupt Enable
WDIF	= 7	; Watchdog Timeout Interrupt Flag


; ***** TIMER_COUNTER_0 **************
; TIMSK - Timer/Counter Interrupt Mask Register
TICIE0	= 0	; Timer/Counter0 Input Capture Interrupt Enable
TOIE0	= 1	; Timer/Counter0 Overflow Interrupt Enable
OCIE0B	= 3	; Timer/Counter0 Output Compare Match B Interrupt Enable
OCIE0A	= 4	; Timer/Counter0 Output Compare Match A Interrupt Enable

; TIFR - Timer/Counter0 Interrupt Flag register
ICF0	= 0	; Timer/Counter0 Input Capture Flag
TOV0	= 1	; Timer/Counter0 Overflow Flag
OCF0B	= 3	; Timer/Counter0 Output Compare Flag 0B
OCF0A	= 4	; Timer/Counter0 Output Compare Flag 0A

; TCCR0A - Timer/Counter  Control Register A
WGM00	= 0	; Waveform Generation Mode
ACIC0	= 3	; Analog Comparator Input Capture Enable
ICES0	= 4	; Input Capture Edge Select
ICNC0	= 5	; Input Capture Noice Canceler
ICEN0	= 6	; Input Capture Mode Enable
TCW0	= 7	; Timer/Counter 0 Width

; TCCR0B - Timer/Counter Control Register B
CS00	= 0	; Clock Select
CS01	= 1	; Clock Select
CS02	= 2	; Clock Select
PSR0	= 3	; Timer/Counter 0 Prescaler Reset
TSM	= 4	; Timer/Counter Synchronization Mode

; TCNT0H - Timer/Counter0 High
TCNT0H_0	= 0	; 
TCNT0H_1	= 1	; 
TCNT0H_2	= 2	; 
TCNT0H_3	= 3	; 
TCNT0H_4	= 4	; 
TCNT0H_5	= 5	; 
TCNT0H_6	= 6	; 
TCNT0H_7	= 7	; 

; TCNT0L - Timer/Counter0 Low
TCNT0L_0	= 0	; 
TCNT0L_1	= 1	; 
TCNT0L_2	= 2	; 
TCNT0L_3	= 3	; 
TCNT0L_4	= 4	; 
TCNT0L_5	= 5	; 
TCNT0L_6	= 6	; 
TCNT0L_7	= 7	; 

; OCR0A - Timer/Counter0 Output Compare Register
OCR0A_0	= 0	; 
OCR0A_1	= 1	; 
OCR0A_2	= 2	; 
OCR0A_3	= 3	; 
OCR0A_4	= 4	; 
OCR0A_5	= 5	; 
OCR0A_6	= 6	; 
OCR0A_7	= 7	; 

; OCR0B - Timer/Counter0 Output Compare Register
OCR0B_0	= 0	; 
OCR0B_1	= 1	; 
OCR0B_2	= 2	; 
OCR0B_3	= 3	; 
OCR0B_4	= 4	; 
OCR0B_5	= 5	; 
OCR0B_6	= 6	; 
OCR0B_7	= 7	; 


; ***** TIMER_COUNTER_1 **************
; TCCR1A - Timer/Counter Control Register A
PWM1B	= 0	; Pulse Width Modulator Enable
PWM1A	= 1	; Pulse Width Modulator Enable
FOC1B	= 2	; Force Output Compare Match 1B
FOC1A	= 3	; Force Output Compare Match 1A
COM1B0	= 4	; Compare Output Mode, Bit 0
COM1B1	= 5	; Compare Output Mode, Bit 1
COM1A0	= 6	; Compare Output Mode, Bit 1
COM1A1	= 7	; Compare Output Mode, Bit 0

; TCCR1B - Timer/Counter Control Register B
CS10	= 0	; Clock Select Bits
CS11	= 1	; Clock Select Bits
CS12	= 2	; Clock Select Bits
CS13	= 3	; Clock Select Bits
DTPS10	= 4	; Dead Time Prescaler
DTPS11	= 5	; Dead Time Prescaler
PSR1	= 6	; Timer/Counter 1 Prescaler reset

; TCCR1C - Timer/Counter Control Register C
PWM1D	= 0	; Pulse Width Modulator D Enable
FOC1D	= 1	; Force Output Compare Match 1D
COM1D0	= 2	; Comparator D output mode
COM1D1	= 3	; Comparator D output mode
COM1B0S	= 4	; COM1B0 Shadow Bit
COM1B1S	= 5	; COM1B1 Shadow Bit
COM1A0S	= 6	; COM1A0 Shadow Bit
COM1A1S	= 7	; COM1A1 Shadow Bit

; TCCR1D - Timer/Counter Control Register D
WGM10	= 0	; Waveform Generation Mode Bit
WGM11	= 1	; Waveform Generation Mode Bit
FPF1	= 2	; Fault Protection Interrupt Flag
FPAC1	= 3	; Fault Protection Analog Comparator Enable
FPES1	= 4	; Fault Protection Edge Select
FPNC1	= 5	; Fault Protection Noise Canceler
FPEN1	= 6	; Fault Protection Mode Enable
FPIE1	= 7	; Fault Protection Interrupt Enable

; TCCR1E - Timer/Counter1 Control Register E
OC1OE0	= 0	; Ouput Compare Override Enable Bit 0
OC1OE1	= 1	; Ouput Compare Override Enable Bit 1
OC1OE2	= 2	; Ouput Compare Override Enable Bit 2
OC1OE3	= 3	; Ouput Compare Override Enable Bit 3
OC1OE4	= 4	; Ouput Compare Override Enable Bit 4
OC1OE5	= 5	; Ouput Compare Override Enable Bit 5

; TCNT1 - Timer/Counter Register
TC1H_0	= 0	; Timer/Counter Register Bit 0
TC1H_1	= 1	; Timer/Counter Register Bit 1
TC1H_2	= 2	; Timer/Counter Register Bit 2
TC1H_3	= 3	; Timer/Counter Register Bit 3
TC1H_4	= 4	; Timer/Counter Register Bit 4
TC1H_5	= 5	; Timer/Counter Register Bit 5
TC1H_6	= 6	; Timer/Counter Register Bit 6
TC1H_7	= 7	; Timer/Counter Register Bit 7

; TC1H - Timer/Counter 1 Register High
TC18	= 0	; Timer/Counter Register Bit 0
TC19	= 1	; Timer/Counter Register Bit 1

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

; OCR1C - Output compare register
OCR1C0	= 0	; 
OCR1C1	= 1	; 
OCR1C2	= 2	; 
OCR1C3	= 3	; 
OCR1C4	= 4	; 
OCR1C5	= 5	; 
OCR1C6	= 6	; 
OCR1C7	= 7	; 

; OCR1D - Output compare register
OCR1D0	= 0	; 
OCR1D1	= 1	; 
OCR1D2	= 2	; 
OCR1D3	= 3	; 
OCR1D4	= 4	; 
OCR1D5	= 5	; 
OCR1D6	= 6	; 
OCR1D7	= 7	; 

; TIMSK - Timer/Counter Interrupt Mask Register
TOIE1	= 2	; Timer/Counter1 Overflow Interrupt Enable
OCIE1B	= 5	; OCIE1A: Timer/Counter1 Output Compare B Interrupt Enable
OCIE1A	= 6	; OCIE1A: Timer/Counter1 Output Compare Interrupt Enable
OCIE1D	= 7	; OCIE1D: Timer/Counter1 Output Compare Interrupt Enable

; TIFR - Timer/Counter Interrupt Flag Register
TOV1	= 2	; Timer/Counter1 Overflow Flag
OCF1B	= 5	; Timer/Counter1 Output Compare Flag 1B
OCF1A	= 6	; Timer/Counter1 Output Compare Flag 1A
OCF1D	= 7	; Timer/Counter1 Output Compare Flag 1D

; DT1 - Timer/Counter 1 Dead Time Value
DT1L0	= 0	; 
DT1L1	= 1	; 
DT1L2	= 2	; 
DT1L3	= 3	; 
DT1H0	= 4	; 
DT1H1	= 5	; 
DT1H2	= 6	; 
DT1H3	= 7	; 


; ***** BOOT_LOAD ********************
; SPMCSR - Store Program Memory Control Register
SPMEN	= 0	; Store Program Memory Enable
PGERS	= 1	; Page Erase
PGWRT	= 2	; Page Write
RFLB	= 3	; Read fuse and lock bits
CTPB	= 4	; Clear temporary page buffer


; ***** EXTERNAL_INTERRUPT ***********
; MCUCR - MCU Control Register
ISC00	= 0	; Interrupt Sense Control 0 Bit 0
ISC01	= 1	; Interrupt Sense Control 0 Bit 1

; GIMSK - General Interrupt Mask Register
GICR	= GIMSK	; For compatibility
PCIE0	= 4	; Pin Change Interrupt Enable 0
PCIE1	= 5	; Pin Change Interrupt Enable 1
INT0	= 6	; External Interrupt Request 0 Enable
INT1	= 7	; External Interrupt Request 1 Enable

; GIFR - General Interrupt Flag register
PCIF	= 5	; Pin Change Interrupt Flag
INTF0	= 6	; External Interrupt Flag 0
INTF1	= 7	; External Interrupt Flag 1

; PCMSK0 - Pin Change Enable Mask 0
PCINT0	= 0	; Pin Change Enable Mask Bit 0
PCINT1	= 1	; Pin Change Enable Mask Bit 1
PCINT2	= 2	; Pin Change Enable Mask Bit 2
PCINT3	= 3	; Pin Change Enable Mask Bit 3
PCINT4	= 4	; Pin Change Enable Mask Bit 4
PCINT5	= 5	; Pin Change Enable Mask Bit 5
PCINT6	= 6	; Pin Change Enable Mask Bit 6
PCINT7	= 7	; Pin Change Enable Mask Bit 7

; PCMSK1 - Pin Change Enable Mask 1
PCINT8	= 0	; Pin Change Enable Mask Bit 8
PCINT9	= 1	; Pin Change Enable Mask Bit 9
PCINT10	= 2	; Pin Change Enable Mask Bit 10
PCINT11	= 3	; Pin Change Enable Mask Bit 11
PCINT12	= 4	; Pin Change Enable Mask Bit 12
PCINT13	= 5	; Pin Change Enable Mask Bit 13
PCINT14	= 6	; Pin Change Enable Mask Bit 14
PCINT15	= 7	; Pin Change Enable Mask Bit 15


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
;ISC00	= 0	; Interrupt Sense Control 0 bit 0
;ISC01	= 1	; Interrupt Sense Control 0 bit 1
BODSE	= 2	; BOD Sleep Enable
SM0	= 3	; Sleep Mode Select Bit 0
SM1	= 4	; Sleep Mode Select Bit 1
SE	= 5	; Sleep Enable
PUD	= 6	; Pull-up Disable
BODS	= 7	; BOD Sleep

; MCUSR - MCU Status register
PORF	= 0	; Power-On Reset Flag
EXTRF	= 1	; External Reset Flag
BORF	= 2	; Brown-out Reset Flag
WDRF	= 3	; Watchdog Reset Flag

; PRR - Power Reduction Register
PRADC	= 0	; Power Reduction ADC
PRUSI	= 1	; Power Reduction USI
PRTIM0	= 2	; Power Reduction Timer/Counter0
PRTIM1	= 3	; Power Reduction Timer/Counter1

; OSCCAL - Oscillator Calibration Register
CAL0	= 0	; Oscillatro Calibration Value Bit 0
CAL1	= 1	; Oscillatro Calibration Value Bit 1
CAL2	= 2	; Oscillatro Calibration Value Bit 2
CAL3	= 3	; Oscillatro Calibration Value Bit 3
CAL4	= 4	; Oscillatro Calibration Value Bit 4
CAL5	= 5	; Oscillatro Calibration Value Bit 5
CAL6	= 6	; Oscillatro Calibration Value Bit 6
CAL7	= 7	; Oscillatro Calibration Value Bit 7

; PLLCSR - PLL Control and status register
PLOCK	= 0	; PLL Lock detector
PLLE	= 1	; PLL Enable
PCKE	= 2	; PCK Enable
LSM	= 7	; Low speed mode

; CLKPR - Clock Prescale Register
CLKPS0	= 0	; Clock Prescaler Select Bit 0
CLKPS1	= 1	; Clock Prescaler Select Bit 1
CLKPS2	= 2	; Clock Prescaler Select Bit 2
CLKPS3	= 3	; Clock Prescaler Select Bit 3
CLKPCE	= 7	; Clock Prescaler Change Enable

; DWDR - debugWire data register
DWDR0	= 0	; 
DWDR1	= 1	; 
DWDR2	= 2	; 
DWDR3	= 3	; 
DWDR4	= 4	; 
DWDR5	= 5	; 
DWDR6	= 6	; 
DWDR7	= 7	; 

; GPIOR2 - General Purpose IO register 2
GPIOR20	= 0	; 
GPIOR21	= 1	; 
GPIOR22	= 2	; 
GPIOR23	= 3	; 
GPIOR24	= 4	; 
GPIOR25	= 5	; 
GPIOR26	= 6	; 
GPIOR27	= 7	; 

; GPIOR1 - General Purpose register 1
GPIOR10	= 0	; 
GPIOR11	= 1	; 
GPIOR12	= 2	; 
GPIOR13	= 3	; 
GPIOR14	= 4	; 
GPIOR15	= 5	; 
GPIOR16	= 6	; 
GPIOR17	= 7	; 

; GPIOR0 - General purpose register 0
GPIOR00	= 0	; 
GPIOR01	= 1	; 
GPIOR02	= 2	; 
GPIOR03	= 3	; 
GPIOR04	= 4	; 
GPIOR05	= 5	; 
GPIOR06	= 6	; 
GPIOR07	= 7	; 



; ***** LOCKSBITS ********************************************************
LB1	= 0	; Lockbit
LB2	= 1	; Lockbit


; ***** FUSES ************************************************************
; LOW fuse bits
CKSEL0	= 0	; Select Clock source
CKSEL1	= 1	; Select Clock source
CKSEL2	= 2	; Select Clock source
CKSEL3	= 3	; Select Clock source
SUT0	= 4	; Select start-up time
SUT1	= 5	; Select start-up time
CKOUT	= 6	; Clock Output Enable
CKDIV8	= 7	; Divide clock by 8

; HIGH fuse bits
BODLEVEL0	= 0	; Brown-out Detector trigger level
BODLEVEL1	= 1	; Brown-out Detector trigger level
BODLEVEL2	= 2	; Brown-out Detector trigger level
EESAVE	= 3	; EEPROM memory is preserved through the Chip Erase
WDTON	= 4	; Watchdog Timer always on
SPIEN	= 5	; Enable Serial Program and Data Downloading
DWEN	= 6	; DebugWIRE Enable
RSTDISBL	= 7	; External Reset disable

; EXTENDED fuse bits
SELFPRGEN	= 0	; Self-Programming Enable



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



; ***** BOOTLOADER DECLARATIONS ******************************************
NRWW_START_ADDR	= 0x0
NRWW_STOP_ADDR	= 0x3ff
RWW_START_ADDR	= 0x0
RWW_STOP_ADDR	= 0x0
PAGESIZE	= 16



; ***** INTERRUPT VECTORS ************************************************
INT0addr	= 0x0001	; External Interrupt 0
PCIaddr	= 0x0002	; Pin Change Interrupt
OC1Aaddr	= 0x0003	; Timer/Counter1 Compare Match 1A
OC1Baddr	= 0x0004	; Timer/Counter1 Compare Match 1B
OVF1addr	= 0x0005	; Timer/Counter1 Overflow
OVF0addr	= 0x0006	; Timer/Counter0 Overflow
USI_STARTaddr	= 0x0007	; USI Start
USI_OVFaddr	= 0x0008	; USI Overflow
ERDYaddr	= 0x0009	; EEPROM Ready
ACIaddr	= 0x000a	; Analog Comparator
ADCCaddr	= 0x000b	; ADC Conversion Complete
WDTaddr	= 0x000c	; Watchdog Time-Out
INT1addr	= 0x000d	; External Interrupt 1
OC0Aaddr	= 0x000e	; Timer/Counter0 Compare Match A
OC0Baddr	= 0x000f	; Timer/Counter0 Compare Match B
ICP0addr	= 0x0010	; ADC Conversion Complete
OC1Daddr	= 0x0011	; Timer/Counter1 Compare Match D
FAULT_PROTaddr	= 0x0012	; Timer/Counter1 Fault Protection

INT_VECTORS_SIZE	= 19	; size in words


; ***** END OF FILE ******************************************************
