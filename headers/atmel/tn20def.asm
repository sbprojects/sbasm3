;*************************************************************************
;* A P P L I C A T I O N   N O T E   F O R   T H E   A V R   F A M I L Y
;* 
;* Number            : AVR000
;* File Name         : "tn20def.asm"
;* Title             : Register/Bit Definitions for the ATtiny20
;* Date              : 2011-02-09
;* Version           : 2.35
;* Support E-mail    : avr@atmel.com
;* Target MCU        : ATtiny20
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
; .device ATtiny20

SIGNATURE_000	= 0x1e
SIGNATURE_001	= 0x91
SIGNATURE_002	= 0x0f

                .CR     avr
                .FA     enhanced128k
				.MS		$0400

; ***** I/O REGISTER DEFINITIONS *****************************************
; NOTE:
; Definitions marked "MEMORY MAPPED"are extended I/O ports
; and cannot be used with IN/OUT instructions
SREG	= 0x3f
SPL	= 0x3d
SPH	= 0x3e
CCP	= 0x3c
RSTFLR	= 0x3b
MCUCR	= 0x3a
OSCCAL	= 0x39
CLKMSR	= 0x37
CLKPSR	= 0x36
PRR	= 0x35
QTCSR	= 0x34
NVMCMD	= 0x33
NVMCSR	= 0x32
WDTCSR	= 0x31
SPCR	= 0x30
SPSR	= 0x2f
SPDR	= 0x2e
TWSCRA	= 0x2d
TWSCRB	= 0x2c
TWSSRA	= 0x2b
TWSA	= 0x2a
TWSAM	= 0x29
TWSD	= 0x28
GTCCR	= 0x27
TIMSK	= 0x26
TIFR	= 0x25
TCCR1A	= 0x24
TCCR1B	= 0x23
TCCR1C	= 0x22
TCNT1H	= 0x21
TCNT1L	= 0x20
OCR1AL	= 0x1e
OCR1AH	= 0x1f
OCR1BL	= 0x1c
OCR1BH	= 0x1d
ICR1L	= 0x1a
ICR1H	= 0x1b
TCCR0A	= 0x19
TCCR0B	= 0x18
TCNT0	= 0x17
OCR0A	= 0x16
OCR0B	= 0x15
ACSRA	= 0x14
ACSRB	= 0x13
ADCSRA	= 0x12
ADCSRB	= 0x11
ADMUX	= 0x10
ADCH	= 0x0f
ADCL	= 0x0e
DIDR0	= 0x0d
GIMSK	= 0x0c
GIFR	= 0x0b
PCMSK1	= 0x0a
PCMSK0	= 0x09
PORTCR	= 0x08
PUEB	= 0x07
PORTB	= 0x06
DDRB	= 0x05
PINB	= 0x04
PUEA	= 0x03
PORTA	= 0x02
DDRA	= 0x01
PINA	= 0x00


; ***** BIT DEFINITIONS **************************************************

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


; ***** WATCHDOG *********************
; WDTCSR - Watchdog Timer Control and Status Register
WDP0	= 0	; Watch Dog Timer Prescaler bit 0
WDP1	= 1	; Watch Dog Timer Prescaler bit 1
WDP2	= 2	; Watch Dog Timer Prescaler bit 2
WDE	= 3	; Watch Dog Enable
WDP3	= 5	; Watchdog Timer Prescaler Bit 3
WDIE	= 6	; Watchdog Timer Interrupt Enable
WDIF	= 7	; Watchdog Timer Interrupt Flag


; ***** AD_CONVERTER *****************
; ADMUX - The ADC multiplexer Selection Register
MUX0	= 0	; Analog Channel and Gain Selection Bits
MUX1	= 1	; Analog Channel and Gain Selection Bits
MUX2	= 2	; Analog Channel and Gain Selection Bits
MUX3	= 3	; Analog Channel and Gain Selection Bits
REFS	= 6	; Reference Selection Bit

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

; DIDR0 - Digital Input Disable Register 0
ADC0D	= 0	; ADC0 Digital input Disable
ADC1D	= 1	; ADC1 Digital input Disable
ADC2D	= 2	; ADC2 Digital input Disable
ADC3D	= 3	; AREF Digital Input Disable
ADC4D	= 4	; ADC3 Digital input Disable
ADC5D	= 5	; ADC4 Digital input Disable
ADC6D	= 6	; ADC5 Digital input Disable
ADC7D	= 7	; ADC6 Digital input Disable


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

; PRR - Power Reduction Register
PRADC	= 0	; Power Reduction ADC
PRTIM0	= 1	; Power Reduction Timer/Counter0
PRTIM1	= 2	; Power Reduction Timer/Counter1
PRSPI	= 3	; Power Reduction Serial Peripheral Interface
PRTWI	= 4	; Power Reduction TWI

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

; MCUCR - MCU Control Register
SE	= 0	; 
SM0	= 1	; 
SM1	= 2	; 
SM2	= 3	; 
BODS	= 4	; 
ISC00	= 6	; 
ISC01	= 7	; 


; ***** EXTERNAL_INTERRUPT ***********
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
INTF0	= 0	; External Interrupt Flag 0
PCIF0	= 4	; Pin Change Interrupt Flag 0
PCIF1	= 5	; Pin Change Interrupt Flag 1

; GIMSK - General Interrupt Mask Register
INT0	= 0	; External Interrupt Request 0 Enable
PCIE0	= 4	; Pin Change Interrupt Enable 0
PCIE1	= 5	; Pin Change Interrupt Enable 1


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
FOC0B	= 6	; Force Output Compare B
FOC0A	= 7	; Force Output Compare A

; TIMSK - Timer Interrupt Mask Register
TOIE0	= 0	; Timer/Counter0 Overflow Interrupt Enable
OCIE0A	= 1	; Timer/Counter0 Output Compare Match A Interrupt Enable
OCIE0B	= 2	; Timer/Counter Output Compare Match B Interrupt Enable
TOIE1	= 3	; Overflow Interrupt Enable
OCIE1A	= 4	; Output Compare A Match Interrupt Enable
OCIE1B	= 5	; Output Compare B Match Interrupt Enable
ICIE1	= 7	; Input Capture Interrupt Enable

; TIFR - Overflow Interrupt Enable
TOV0	= 0	; Timer/Counter0 Overflow Flag
OCF0A	= 1	; Output Compare Flag 0 A
OCF0B	= 2	; Output Compare Flag 0 B
TOV1	= 3	; Timer Overflow Flag
OCF1A	= 4	; Timer Output Compare Flag 1A
OCF1B	= 5	; Timer Output Compare Flag 1B
ICF1	= 7	; Input Capture Flag

; GTCCR - General Timer/Counter Control Register
PSR	= 0	; Prescaler Reset
TSM	= 7	; Timer Synchronization Mode

; TCNT0 - Timer/Counter0
TCNT0_0	= 0	; 
TCNT0_1	= 1	; 
TCNT0_2	= 2	; 
TCNT0_3	= 3	; 
TCNT0_4	= 4	; 
TCNT0_5	= 5	; 
TCNT0_6	= 6	; 
TCNT0_7	= 7	; 

; OCR0A - Timer/Counter0 Output Compare Register
OCR0_0	= 0	; 
OCR0_1	= 1	; 
OCR0_2	= 2	; 
OCR0_3	= 3	; 
OCR0_4	= 4	; 
OCR0_5	= 5	; 
OCR0_6	= 6	; 
OCR0_7	= 7	; 

; OCR0B - Timer/Counter0 Output Compare Register
OCR0B_0	= 0	; 
OCR0B_1	= 1	; 
OCR0B_2	= 2	; 
OCR0B_3	= 3	; 
OCR0B_4	= 4	; 
OCR0B_5	= 5	; 
OCR0B_6	= 6	; 
OCR0B_7	= 7	; 


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


; ***** TIMER_COUNTER_1 **************
; TCCR1A - Timer/Counter1 Control Register A
WGM10	= 0	; Waveform Generation Mode Bit 0
PWM10	= WGM10	; For compatibility
WGM11	= 1	; Waveform Generation Mode Bit 1
PWM11	= WGM11	; For compatibility
COM1B0	= 4	; Compare Output Mode 1B, bit 0
COM1B1	= 5	; Compare Output Mode 1B, bit 1
COM1A0	= 6	; Compare Ouput Mode 1A, bit 0
COM1A1	= 7	; Compare Output Mode 1A, bit 1

; TCCR1B - Timer/Counter1 Control Register B
CS10	= 0	; Clock Select bit 0
CS11	= 1	; Clock Select 1 bit 1
CS12	= 2	; Clock Select1 bit 2
WGM12	= 3	; Waveform Generation Mode
CTC10	= WGM12	; For compatibility
WGM13	= 4	; Waveform Generation Mode
CTC11	= WGM13	; For compatibility
ICES1	= 6	; Input Capture 1 Edge Select
ICNC1	= 7	; Input Capture 1 Noise Canceler

; TCCR1C - Timer/Counter1 Control Register C
FOC1B	= 6	; Force Output Compare for channel B
FOC1A	= 7	; Force Output Compare for channel A

; TCNT1H - Timer/Counter1 High
TCNT1_8	= 0	; 
TCNT1_9	= 1	; 
TCNT1_10	= 2	; 
TCNT1_11	= 3	; 
TCNT1_12	= 4	; 
TCNT1_13	= 5	; 
TCNT1_14	= 6	; 
TCNT1_15	= 7	; 

; TCNT1L - Timer/Counter1 Low
TCNT1_0	= 0	; 
TCNT1_1	= 1	; 
TCNT1_2	= 2	; 
TCNT1_3	= 3	; 
TCNT1_4	= 4	; 
TCNT1_5	= 5	; 
TCNT1_6	= 6	; 
TCNT1_7	= 7	; 

; TIMSK - Timer Interrupt Mask Register
;TOIE0	= 0	; Timer/Counter0 Overflow Interrupt Enable
;OCIE0A	= 1	; Timer/Counter0 Output Compare Match A Interrupt Enable
;OCIE0B	= 2	; Timer/Counter Output Compare Match B Interrupt Enable
;TOIE1	= 3	; Overflow Interrupt Enable
;OCIE1A	= 4	; Output Compare A Match Interrupt Enable
;OCIE1B	= 5	; Output Compare B Match Interrupt Enable
;ICIE1	= 7	; Input Capture Interrupt Enable

; TIFR - Overflow Interrupt Enable
;TOV0	= 0	; Timer/Counter0 Overflow Flag
;OCF0A	= 1	; Output Compare Flag 0 A
;OCF0B	= 2	; Output Compare Flag 0 B
;TOV1	= 3	; Timer Overflow Flag
;OCF1A	= 4	; Timer Output Compare Flag 1A
;OCF1B	= 5	; Timer Output Compare Flag 1B
;ICF1	= 7	; Input Capture Flag

; GTCCR - General Timer/Counter Control Register
;PSR	= 0	; Prescaler Reset
;TSM	= 7	; Timer Synchronization Mode


; ***** SPI **************************
; SPDR - SPI Data Register
SPDR0	= 0	; SPI Data Register bit 0
SPDR1	= 1	; SPI Data Register bit 1
SPDR2	= 2	; SPI Data Register bit 2
SPDR3	= 3	; SPI Data Register bit 3
SPDR4	= 4	; SPI Data Register bit 4
SPDR5	= 5	; SPI Data Register bit 5
SPDR6	= 6	; SPI Data Register bit 6
SPDR7	= 7	; SPI Data Register bit 7

; SPSR - SPI Status Register
SPI2X	= 0	; Double SPI Speed Bit
WCOL	= 6	; Write Collision Flag
SPIF	= 7	; SPI Interrupt Flag

; SPCR - SPI Control Register
SPR0	= 0	; SPI Clock Rate Select 0
SPR1	= 1	; SPI Clock Rate Select 1
CPHA	= 2	; Clock Phase
CPOL	= 3	; Clock polarity
MSTR	= 4	; Master/Slave Select
DORD	= 5	; Data Order
SPE	= 6	; SPI Enable
SPIE	= 7	; SPI Interrupt Enable



; ***** LOCKSBITS ********************************************************
LB1	= 0	; Lockbit
LB2	= 1	; Lockbit


; ***** FUSES ************************************************************
; BYTE0 fuse bits
RSTDISBL	= 0	; Disable external reset
WDTON	= 1	; Watch dog timer always on
CKOUT	= 2	; Output external clock
BODLEVEL0	= 4	; Brown-out Detector trigger level
BODLEVEL1	= 5	; Brown-out Detector trigger level
BODLEVEL2	= 6	; Brown-out Detector trigger level



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
SRAM_START	= 0x0040
SRAM_SIZE	= 128
RAMEND	= 0x00bf
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
MAPPED_FLASH_SIZE	= 0x0800
MAPPED_FLASH_END	= 0x47ff



; ***** BOOTLOADER DECLARATIONS ******************************************
PAGESIZE	= 32



; ***** INTERRUPT VECTORS ************************************************
INT0addr	= 0x0001	; External Interrupt Request 0
PCI0addr	= 0x0002	; Pin Change Interrupt Request 0
PCI1addr	= 0x0003	; Pin Change Interrupt Request 1
WDTaddr	= 0x0004	; Watchdog Time-out
ICP1addr	= 0x0005	; Timer/Counter1 Input Capture
OC1Aaddr	= 0x0006	; Timer/Counter1 Compare Match A
OC1Baddr	= 0x0007	; Timer/Counter1 Compare Match B
OVF1addr	= 0x0008	; Timer/Counter1 Overflow
OC0Aaddr	= 0x0009	; Timer/Counter0 Compare Match A
OC0Baddr	= 0x000a	; Timer/Counter0 Compare Match B
OVF0addr	= 0x000b	; Timer/Counter0 Overflow
ACIaddr	= 0x000c	; Analog Comparator
ADCCaddr	= 0x000d	; Conversion Complete
TWIaddr	= 0x000e	; Two-Wire Interface
SPIaddr	= 0x000f	; Serial Peripheral Interface
QTRIPaddr	= 0x0010	; Touch Sensing

INT_VECTORS_SIZE	= 17	; size in words



; ***** END OF FILE ******************************************************
