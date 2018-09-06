;*************************************************************************
;* A P P L I C A T I O N   N O T E   F O R   T H E   A V R   F A M I L Y
;* 
;* Number            : AVR000
;* File Name         : "tn84def.asm"
;* Title             : Register/Bit Definitions for the ATtiny84
;* Date              : 2011-02-09
;* Version           : 2.35
;* Support E-mail    : avr@atmel.com
;* Target MCU        : ATtiny84
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
; .device ATtiny84

SIGNATURE_000	= 0x1e
SIGNATURE_001	= 0x93
SIGNATURE_002	= 0x0c

                .CR     avr
                .FA     enhanced128k
				.MS		$1000

; ***** I/O REGISTER DEFINITIONS *****************************************
; NOTE:
; Definitions marked "MEMORY MAPPED"are extended I/O ports
; and cannot be used with IN/OUT instructions
SREG	= 0x3f
SPL	= 0x3d
SPH	= 0x3e
OCR0B	= 0x3c
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
TCCR0A	= 0x30
TCCR1A	= 0x2f
TCCR1B	= 0x2e
TCNT1L	= 0x2c
TCNT1H	= 0x2d
OCR1AL	= 0x2a
OCR1AH	= 0x2b
OCR1BL	= 0x28
OCR1BH	= 0x29
DWDR	= 0x27
CLKPR	= 0x26
ICR1L	= 0x24
ICR1H	= 0x25
GTCCR	= 0x23
TCCR1C	= 0x22
WDTCSR	= 0x21
PCMSK1	= 0x20
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
GPIOR2	= 0x15
GPIOR1	= 0x14
GPIOR0	= 0x13
PCMSK0	= 0x12
USIBR	= 0x10
USIDR	= 0x0f
USISR	= 0x0e
USICR	= 0x0d
TIMSK1	= 0x0c
TIFR1	= 0x0b
ACSR	= 0x08
ADMUX	= 0x07
ADCSRA	= 0x06
ADCH	= 0x05
ADCL	= 0x04
ADCSRB	= 0x03
DIDR0	= 0x01
PRR	= 0x00


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
; PORTB - Data Register, Port B
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

; PINB - Input Pins, Port B
PINB0	= 0	; 
PINB1	= 1	; 
PINB2	= 2	; 
PINB3	= 3	; 


; ***** ANALOG_COMPARATOR ************
; ADCSRB - ADC Control and Status Register B
ACME	= 6	; Analog Comparator Multiplexer Enable

; ACSR - Analog Comparator Control And Status Register
ACIS0	= 0	; Analog Comparator Interrupt Mode Select bit 0
ACIS1	= 1	; Analog Comparator Interrupt Mode Select bit 1
ACIC	= 2	; Analog Comparator Input Capture Enable
ACIE	= 3	; Analog Comparator Interrupt Enable
ACI	= 4	; Analog Comparator Interrupt Flag
ACO	= 5	; Analog Compare Output
ACBG	= 6	; Analog Comparator Bandgap Select
AINBG	= ACBG	; For compatibility
ACD	= 7	; Analog Comparator Disable

; DIDR0 - 
ADC0D	= 0	; ADC 0 Digital input buffer disable
ADC1D	= 1	; ADC 1 Digital input buffer disable


; ***** AD_CONVERTER *****************
; ADMUX - ADC Multiplexer Selection Register
MUX0	= 0	; Analog Channel and Gain Selection Bit 0
MUX1	= 1	; Analog Channel and Gain Selection Bit 1
MUX2	= 2	; Analog Channel and Gain Selection Bit 2
MUX3	= 3	; Analog Channel and Gain Selection Bit 3
MUX4	= 4	; Analog Channel and Gain Selection Bit 4
MUX5	= 5	; Analog Channel and Gain Selection Bit 5
REFS0	= 6	; Reference Selection Bit 0
REFS1	= 7	; Reference Selection Bit 1

; ADCSRA - ADC Control and Status Register A
ADPS0	= 0	; ADC  Prescaler Select Bit 0
ADPS1	= 1	; ADC  Prescaler Select Bit 1
ADPS2	= 2	; ADC  Prescaler Select Bit 2
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
ADTS0	= 0	; ADC Auto Trigger Source bit 0
ADTS1	= 1	; ADC Auto Trigger Source bit 1
ADTS2	= 2	; ADC Auto Trigger Source bit 2
ADLAR	= 4	; ADC Left Adjust Result
BIN	= 7	; Bipolar Input Mode

; DIDR0 - Digital Input Disable Register 0
;ADC0D	= 0	; ADC0 Digital Input Disable
;ADC1D	= 1	; ADC1 Digital Input Disable
ADC2D	= 2	; ADC2 Digital Input Disable
ADC3D	= 3	; ADC3 Digital Input Disable
ADC4D	= 4	; ADC4 Digital Input Disable
ADC5D	= 5	; ADC5 Digital Input Disable
ADC6D	= 6	; ADC6 Digital Input Disable
ADC7D	= 7	; ADC7 Digital Input Disable


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


; ***** EXTERNAL_INTERRUPT ***********
; MCUCR - MCU Control Register
ISC00	= 0	; Interrupt Sense Control 0 Bit 0
ISC01	= 1	; Interrupt Sense Control 0 Bit 1

; GIMSK - General Interrupt Mask Register
GICR	= GIMSK	; For compatibility
PCIE0	= 4	; Pin Change Interrupt Enable 0
PCIE1	= 5	; Pin Change Interrupt Enable 1
INT0	= 6	; External Interrupt Request 0 Enable

; GIFR - General Interrupt Flag register
PCIF0	= 4	; Pin Change Interrupt Flag 0
PCIF1	= 5	; Pin Change Interrupt Flag 1
INTF0	= 6	; External Interrupt Flag 0

; PCMSK1 - Pin Change Enable Mask 1
PCINT8	= 0	; Pin Change Enable Mask Bit 8
PCINT9	= 1	; Pin Change Enable Mask Bit 9
PCINT10	= 2	; Pin Change Enable Mask Bit 10
PCINT11	= 3	; Pin Change Enable Mask Bit 11

; PCMSK0 - Pin Change Enable Mask 0
PCINT0	= 0	; Pin Change Enable Mask Bit 0
PCINT1	= 1	; Pin Change Enable Mask Bit 1
PCINT2	= 2	; Pin Change Enable Mask Bit 2
PCINT3	= 3	; Pin Change Enable Mask Bit 3
PCINT4	= 4	; Pin Change Enable Mask Bit 4
PCINT5	= 5	; Pin Change Enable Mask Bit 5
PCINT6	= 6	; Pin Change Enable Mask Bit 6
PCINT7	= 7	; Pin Change Enable Mask Bit 7


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
; WDTCSR - Watchdog Timer Control Register
WDP0	= 0	; Watch Dog Timer Prescaler bit 0
WDP1	= 1	; Watch Dog Timer Prescaler bit 1
WDP2	= 2	; Watch Dog Timer Prescaler bit 2
WDE	= 3	; Watch Dog Enable
WDCE	= 4	; Watchdog Change Enable
WDP3	= 5	; Watchdog Timer Prescaler Bit 3
WDIE	= 6	; Watchdog Timeout Interrupt Enable
WDIF	= 7	; Watchdog Timeout Interrupt Flag


; ***** TIMER_COUNTER_0 **************
; TIMSK0 - Timer/Counter Interrupt Mask Register
TOIE0	= 0	; Timer/Counter0 Overflow Interrupt Enable
OCIE0A	= 1	; Timer/Counter0 Output Compare Match A Interrupt Enable
OCIE0B	= 2	; Timer/Counter0 Output Compare Match B Interrupt Enable

; TIFR0 - Timer/Counter0 Interrupt Flag Register
TOV0	= 0	; Timer/Counter0 Overflow Flag
OCF0A	= 1	; Timer/Counter0 Output Compare Flag A
OCF0B	= 2	; Timer/Counter0 Output Compare Flag B

; TCCR0A - Timer/Counter  Control Register A
WGM00	= 0	; Waveform Generation Mode bit 0
WGM01	= 1	; Waveform Generation Mode bit 1
COM0B0	= 4	; Compare Match Output B Mode bit 0
COM0B1	= 5	; Compare Match Output B Mode bit 1
COM0A0	= 6	; Compare Match Output A Mode bit 0
COM0A1	= 7	; Compare Match Output A Mode bit 1

; TCCR0B - Timer/Counter Control Register B
CS00	= 0	; Clock Select bit 0
CS01	= 1	; Clock Select bit 1
CS02	= 2	; Clock Select bit 2
WGM02	= 3	; Waveform Generation Mode bit 2
FOC0B	= 6	; Force Output Compare B
FOC0A	= 7	; Force Output Compare A

; TCNT0 - Timer/Counter0
TCNT0_0	= 0	; 
TCNT0_1	= 1	; 
TCNT0_2	= 2	; 
TCNT0_3	= 3	; 
TCNT0_4	= 4	; 
TCNT0_5	= 5	; 
TCNT0_6	= 6	; 
TCNT0_7	= 7	; 

; OCR0A - Timer/Counter0 Output Compare Register A
OCR0A_0	= 0	; 
OCR0A_1	= 1	; 
OCR0A_2	= 2	; 
OCR0A_3	= 3	; 
OCR0A_4	= 4	; 
OCR0A_5	= 5	; 
OCR0A_6	= 6	; 
OCR0A_7	= 7	; 

; OCR0B - Timer/Counter0 Output Compare Register B
OCR0_0	= 0	; 
OCR0_1	= 1	; 
OCR0_2	= 2	; 
OCR0_3	= 3	; 
OCR0_4	= 4	; 
OCR0_5	= 5	; 
OCR0_6	= 6	; 
OCR0_7	= 7	; 

; GTCCR - General Timer/Counter Control Register
PSR10	= 0	; Prescaler Reset Timer/CounterN
TSM	= 7	; Timer/Counter Synchronization Mode


; ***** TIMER_COUNTER_1 **************
; TIMSK1 - Timer/Counter1 Interrupt Mask Register
TOIE1	= 0	; Timer/Counter1 Overflow Interrupt Enable
OCIE1A	= 1	; Timer/Counter1 Output Compare A Match Interrupt Enable
OCIE1B	= 2	; Timer/Counter1 Output Compare B Match Interrupt Enable
ICIE1	= 5	; Timer/Counter1 Input Capture Interrupt Enable

; TIFR1 - Timer/Counter Interrupt Flag register
TOV1	= 0	; Timer/Counter1 Overflow Flag
OCF1A	= 1	; Timer/Counter1 Output Compare A Match Flag
OCF1B	= 2	; Timer/Counter1 Output Compare B Match Flag
ICF1	= 5	; Timer/Counter1 Input Capture Flag

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


; ***** BOOT_LOAD ********************
; SPMCSR - Store Program Memory Control Register
SPMEN	= 0	; Store Program Memory Enable
PGERS	= 1	; Page Erase
PGWRT	= 2	; Page Write
RFLB	= 3	; Read fuse and lock bits
CTPB	= 4	; Clear temporary page buffer


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
SM0	= 3	; Sleep Mode Select Bit 0
SM1	= 4	; Sleep Mode Select Bit 1
SE	= 5	; Sleep Enable
PUD	= 6	; 

; MCUSR - MCU Status Register
PORF	= 0	; Power-on reset flag
EXTRF	= 1	; External Reset Flag
BORF	= 2	; Brown-out Reset Flag
WDRF	= 3	; Watchdog Reset Flag

; OSCCAL - Oscillator Calibration Value
CAL0	= 0	; Oscillator Calibration Value Bit0
CAL1	= 1	; Oscillator Calibration Value Bit1
CAL2	= 2	; Oscillator Calibration Value Bit2
CAL3	= 3	; Oscillator Calibration Value Bit3
CAL4	= 4	; Oscillator Calibration Value Bit4
CAL5	= 5	; Oscillator Calibration Value Bit5
CAL6	= 6	; Oscillator Calibration Value Bit6
CAL7	= 7	; Oscillator Calibration Value Bit7

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
PRUSI	= 1	; Power Reduction USI
PRTIM0	= 2	; Power Reduction Timer/Counter0
PRTIM1	= 3	; Power Reduction Timer/Counter1

; CLKPR - Clock Prescale Register
CLKPS0	= 0	; Clock Prescaler Select Bit 0
CLKPS1	= 1	; Clock Prescaler Select Bit 1
CLKPS2	= 2	; Clock Prescaler Select Bit 2
CLKPS3	= 3	; Clock Prescaler Select Bit 3
CLKPCE	= 7	; Clock Prescaler Change Enable



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
FLASHEND	= 0x0fff	; Note: Word address
IOEND	= 0x003f
SRAM_START	= 0x0060
SRAM_SIZE	= 512
RAMEND	= 0x025f
XRAMEND	= 0x0000
E2END	= 0x01ff
EEPROMEND	= 0x01ff
EEADRBITS	= 9



; ***** BOOTLOADER DECLARATIONS ******************************************
NRWW_START_ADDR	= 0x0
NRWW_STOP_ADDR	= 0xfff
RWW_START_ADDR	= 0x0
RWW_STOP_ADDR	= 0x0
PAGESIZE	= 32



; ***** INTERRUPT VECTORS ************************************************
EXT_INT0addr	= 0x0001	; External Interrupt Request 0
PCI0addr	= 0x0002	; Pin Change Interrupt Request 0
PCI1addr	= 0x0003	; Pin Change Interrupt Request 1
WATCHDOGaddr	= 0x0004	; Watchdog Time-out
ICP1addr	= 0x0005	; Timer/Counter1 Capture Event
OC1Aaddr	= 0x0006	; Timer/Counter1 Compare Match A
OC1Baddr	= 0x0007	; Timer/Counter1 Compare Match B
OVF1addr	= 0x0008	; Timer/Counter1 Overflow
OC0Aaddr	= 0x0009	; Timer/Counter0 Compare Match A
OC0Baddr	= 0x000a	; Timer/Counter0 Compare Match B
OVF0addr	= 0x000b	; Timer/Counter0 Overflow
ACIaddr	= 0x000c	; Analog Comparator
ADCCaddr	= 0x000d	; ADC Conversion Complete
ERDYaddr	= 0x000e	; EEPROM Ready
USI_STRaddr	= 0x000f	; USI START
USI_OVFaddr	= 0x0010	; USI Overflow

INT_VECTORS_SIZE	= 17	; size in words


; ***** END OF FILE ******************************************************
