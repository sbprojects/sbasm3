;*************************************************************************
;* A P P L I C A T I O N   N O T E   F O R   T H E   A V R   F A M I L Y
;* 
;* Number            : AVR000
;* File Name         : "m16Adef.asm"
;* Title             : Register/Bit Definitions for the ATmega16A
;* Date              : 2011-02-09
;* Version           : 2.35
;* Support E-mail    : avr@atmel.com
;* Target MCU        : ATmega16A
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
; device ATmega16A

SIGNATURE_000	= 0x1e
SIGNATURE_001	= 0x94
SIGNATURE_002	= 0x03

                .CR     avr
                .FA     enhanced128k
				.MS		$2000

; ***** I/O REGISTER DEFINITIONS *****************************************
; NOTE:
; Definitions marked "MEMORY MAPPED"are extended I/O ports
; and cannot be used with IN/OUT instructions
SREG	= 0x3f
SPL	= 0x3d
SPH	= 0x3e
OCR0	= 0x3c
GICR	= 0x3b
GIFR	= 0x3a
TIMSK	= 0x39
TIFR	= 0x38
SPMCSR	= 0x37
TWCR	= 0x36
MCUCR	= 0x35
MCUCSR	= 0x34
TCCR0	= 0x33
TCNT0	= 0x32
OSCCAL	= 0x31
OCDR	= 0x31
SFIOR	= 0x30
TCCR1A	= 0x2f
TCCR1B	= 0x2e
TCNT1L	= 0x2c
TCNT1H	= 0x2d
OCR1AL	= 0x2a
OCR1AH	= 0x2b
OCR1BL	= 0x28
OCR1BH	= 0x29
ICR1L	= 0x26
ICR1H	= 0x27
TCCR2	= 0x25
TCNT2	= 0x24
OCR2	= 0x23
ASSR	= 0x22
WDTCR	= 0x21
UBRRH	= 0x20
UCSRC	= 0x20
EEARL	= 0x1e
EEARH	= 0x1f
EEDR	= 0x1d
EECR	= 0x1c
PORTA	= 0x1b
DDRA	= 0x1a
PINA	= 0x19
PORTB	= 0x18
DDRB	= 0x17
PINB	= 0x16
PORTC	= 0x15
DDRC	= 0x14
PINC	= 0x13
PORTD	= 0x12
DDRD	= 0x11
PIND	= 0x10
SPDR	= 0x0f
SPSR	= 0x0e
SPCR	= 0x0d
UDR	= 0x0c
UCSRA	= 0x0b
UCSRB	= 0x0a
UBRRL	= 0x09
ACSR	= 0x08
ADMUX	= 0x07
ADCSRA	= 0x06
ADCH	= 0x05
ADCL	= 0x04
TWDR	= 0x03
TWAR	= 0x02
TWSR	= 0x01
TWBR	= 0x00


; ***** BIT DEFINITIONS **************************************************

; ***** TIMER_COUNTER_0 **************
; TCCR0 - Timer/Counter Control Register
CS00	= 0	; Clock Select 1
CS01	= 1	; Clock Select 1
CS02	= 2	; Clock Select 2
WGM01	= 3	; Waveform Generation Mode 1
CTC0	= WGM01	; For compatibility
COM00	= 4	; Compare match Output Mode 0
COM01	= 5	; Compare Match Output Mode 1
WGM00	= 6	; Waveform Generation Mode 0
PWM0	= WGM00	; For compatibility
FOC0	= 7	; Force Output Compare

; TCNT0 - Timer/Counter Register
TCNT0_0	= 0	; 
TCNT0_1	= 1	; 
TCNT0_2	= 2	; 
TCNT0_3	= 3	; 
TCNT0_4	= 4	; 
TCNT0_5	= 5	; 
TCNT0_6	= 6	; 
TCNT0_7	= 7	; 

; OCR0 - Output Compare Register
OCR0_0	= 0	; 
OCR0_1	= 1	; 
OCR0_2	= 2	; 
OCR0_3	= 3	; 
OCR0_4	= 4	; 
OCR0_5	= 5	; 
OCR0_6	= 6	; 
OCR0_7	= 7	; 

; TIMSK - Timer/Counter Interrupt Mask Register
TOIE0	= 0	; Timer/Counter0 Overflow Interrupt Enable
OCIE0	= 1	; Timer/Counter0 Output Compare Match Interrupt register

; TIFR - Timer/Counter Interrupt Flag register
TOV0	= 0	; Timer/Counter0 Overflow Flag
OCF0	= 1	; Output Compare Flag 0

; SFIOR - Special Function IO Register
PSR10	= 0	; Prescaler Reset Timer/Counter1 and Timer/Counter0


; ***** TIMER_COUNTER_1 **************
; TIMSK - Timer/Counter Interrupt Mask Register
TOIE1	= 2	; Timer/Counter1 Overflow Interrupt Enable
OCIE1B	= 3	; Timer/Counter1 Output CompareB Match Interrupt Enable
OCIE1A	= 4	; Timer/Counter1 Output CompareA Match Interrupt Enable
TICIE1	= 5	; Timer/Counter1 Input Capture Interrupt Enable

; TIFR - Timer/Counter Interrupt Flag register
TOV1	= 2	; Timer/Counter1 Overflow Flag
OCF1B	= 3	; Output Compare Flag 1B
OCF1A	= 4	; Output Compare Flag 1A
ICF1	= 5	; Input Capture Flag 1

; TCCR1A - Timer/Counter1 Control Register A
WGM10	= 0	; Waveform Generation Mode
PWM10	= WGM10	; For compatibility
WGM11	= 1	; Waveform Generation Mode
PWM11	= WGM11	; For compatibility
FOC1B	= 2	; Force Output Compare 1B
FOC1A	= 3	; Force Output Compare 1A
COM1B0	= 4	; Compare Output Mode 1B, bit 0
COM1B1	= 5	; Compare Output Mode 1B, bit 1
COM1A0	= 6	; Compare Ouput Mode 1A, bit 0
COM1A1	= 7	; Compare Output Mode 1A, bit 1

; TCCR1B - Timer/Counter1 Control Register B
CS10	= 0	; Prescaler source of Timer/Counter 1
CS11	= 1	; Prescaler source of Timer/Counter 1
CS12	= 2	; Prescaler source of Timer/Counter 1
WGM12	= 3	; Waveform Generation Mode
CTC10	= WGM12	; For compatibility
CTC1	= WGM12	; For compatibility
WGM13	= 4	; Waveform Generation Mode
CTC11	= WGM13	; For compatibility
ICES1	= 6	; Input Capture 1 Edge Select
ICNC1	= 7	; Input Capture 1 Noise Canceler


; ***** EXTERNAL_INTERRUPT ***********
; GICR - General Interrupt Control Register
GIMSK	= GICR	; For compatibility
IVCE	= 0	; Interrupt Vector Change Enable
IVSEL	= 1	; Interrupt Vector Select
INT2	= 5	; External Interrupt Request 2 Enable
INT0	= 6	; External Interrupt Request 0 Enable
INT1	= 7	; External Interrupt Request 1 Enable

; GIFR - General Interrupt Flag Register
INTF2	= 5	; External Interrupt Flag 2
INTF0	= 6	; External Interrupt Flag 0
INTF1	= 7	; External Interrupt Flag 1

; MCUCR - General Interrupt Control Register
ISC00	= 0	; Interrupt Sense Control 0 Bit 0
ISC01	= 1	; Interrupt Sense Control 0 Bit 1
ISC10	= 2	; Interrupt Sense Control 1 Bit 0
ISC11	= 3	; Interrupt Sense Control 1 Bit 1

; MCUCSR - MCU Control And Status Register
ISC2	= 6	; Interrupt Sense Control 2


; ***** EEPROM ***********************
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
EEWEE	= EEMWE	; For compatibility
EERIE	= 3	; EEPROM Ready Interrupt Enable


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
;ISC00	= 0	; Interrupt Sense Control 0 Bit 0
;ISC01	= 1	; Interrupt Sense Control 0 Bit 1
;ISC10	= 2	; Interrupt Sense Control 1 Bit 0
;ISC11	= 3	; Interrupt Sense Control 1 Bit 1
SM0	= 4	; Sleep Mode Select
SM1	= 5	; Sleep Mode Select
SE	= 6	; Sleep Enable
SM2	= 7	; Sleep Mode Select

; MCUCSR - MCU Control And Status Register
MCUSR	= MCUCSR	; For compatibility
PORF	= 0	; Power-on reset flag
EXTRF	= 1	; External Reset Flag
EXTREF	= EXTRF	; For compatibility
BORF	= 2	; Brown-out Reset Flag
WDRF	= 3	; Watchdog Reset Flag
JTRF	= 4	; JTAG Reset Flag
JTD	= 7	; JTAG Interface Disable

; OSCCAL - Oscillator Calibration Value
CAL0	= 0	; Oscillator Calibration Value Bit0
CAL1	= 1	; Oscillator Calibration Value Bit1
CAL2	= 2	; Oscillator Calibration Value Bit2
CAL3	= 3	; Oscillator Calibration Value Bit3
CAL4	= 4	; Oscillator Calibration Value Bit4
CAL5	= 5	; Oscillator Calibration Value Bit5
CAL6	= 6	; Oscillator Calibration Value Bit6
CAL7	= 7	; Oscillator Calibration Value Bit7

; SFIOR - Special function I/O register
;PSR10	= 0	; Prescaler reset
PSR2	= 1	; Prescaler reset
PUD	= 2	; Pull-up Disable


; ***** TIMER_COUNTER_2 **************
; TIMSK - Timer/Counter Interrupt Mask register
TOIE2	= 6	; Timer/Counter2 Overflow Interrupt Enable
OCIE2	= 7	; Timer/Counter2 Output Compare Match Interrupt Enable

; TIFR - Timer/Counter Interrupt Flag Register
TOV2	= 6	; Timer/Counter2 Overflow Flag
OCF2	= 7	; Output Compare Flag 2

; TCCR2 - Timer/Counter2 Control Register
CS20	= 0	; Clock Select bit 0
CS21	= 1	; Clock Select bit 1
CS22	= 2	; Clock Select bit 2
WGM21	= 3	; Waveform Generation Mode
CTC2	= WGM21	; For compatibility
COM20	= 4	; Compare Output Mode bit 0
COM21	= 5	; Compare Output Mode bit 1
WGM20	= 6	; Waveform Genration Mode
PWM2	= WGM20	; For compatibility
FOC2	= 7	; Force Output Compare

; TCNT2 - Timer/Counter2
TCNT2_0	= 0	; Timer/Counter 2 bit 0
TCNT2_1	= 1	; Timer/Counter 2 bit 1
TCNT2_2	= 2	; Timer/Counter 2 bit 2
TCNT2_3	= 3	; Timer/Counter 2 bit 3
TCNT2_4	= 4	; Timer/Counter 2 bit 4
TCNT2_5	= 5	; Timer/Counter 2 bit 5
TCNT2_6	= 6	; Timer/Counter 2 bit 6
TCNT2_7	= 7	; Timer/Counter 2 bit 7

; OCR2 - Timer/Counter2 Output Compare Register
OCR2_0	= 0	; Timer/Counter2 Output Compare Register Bit 0
OCR2_1	= 1	; Timer/Counter2 Output Compare Register Bit 1
OCR2_2	= 2	; Timer/Counter2 Output Compare Register Bit 2
OCR2_3	= 3	; Timer/Counter2 Output Compare Register Bit 3
OCR2_4	= 4	; Timer/Counter2 Output Compare Register Bit 4
OCR2_5	= 5	; Timer/Counter2 Output Compare Register Bit 5
OCR2_6	= 6	; Timer/Counter2 Output Compare Register Bit 6
OCR2_7	= 7	; Timer/Counter2 Output Compare Register Bit 7

; ASSR - Asynchronous Status Register
TCR2UB	= 0	; Timer/counter Control Register2 Update Busy
OCR2UB	= 1	; Output Compare Register2 Update Busy
TCN2UB	= 2	; Timer/Counter2 Update Busy
AS2	= 3	; Asynchronous Timer/counter2

; SFIOR - Special Function IO Register
;PSR2	= 1	; Prescaler Reset Timer/Counter2


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


; ***** USART ************************
; UDR - USART I/O Data Register
UDR0	= 0	; USART I/O Data Register bit 0
UDR1	= 1	; USART I/O Data Register bit 1
UDR2	= 2	; USART I/O Data Register bit 2
UDR3	= 3	; USART I/O Data Register bit 3
UDR4	= 4	; USART I/O Data Register bit 4
UDR5	= 5	; USART I/O Data Register bit 5
UDR6	= 6	; USART I/O Data Register bit 6
UDR7	= 7	; USART I/O Data Register bit 7

; UCSRA - USART Control and Status Register A
USR	= UCSRA	; For compatibility
MPCM	= 0	; Multi-processor Communication Mode
U2X	= 1	; Double the USART transmission speed
UPE	= 2	; Parity Error
PE	= UPE	; For compatibility
DOR	= 3	; Data overRun
FE	= 4	; Framing Error
UDRE	= 5	; USART Data Register Empty
TXC	= 6	; USART Transmitt Complete
RXC	= 7	; USART Receive Complete

; UCSRB - USART Control and Status Register B
UCR	= UCSRB	; For compatibility
TXB8	= 0	; Transmit Data Bit 8
RXB8	= 1	; Receive Data Bit 8
UCSZ2	= 2	; Character Size
CHR9	= UCSZ2	; For compatibility
TXEN	= 3	; Transmitter Enable
RXEN	= 4	; Receiver Enable
UDRIE	= 5	; USART Data register Empty Interrupt Enable
TXCIE	= 6	; TX Complete Interrupt Enable
RXCIE	= 7	; RX Complete Interrupt Enable

; UCSRC - USART Control and Status Register C
UCPOL	= 0	; Clock Polarity
UCSZ0	= 1	; Character Size
UCSZ1	= 2	; Character Size
USBS	= 3	; Stop Bit Select
UPM0	= 4	; Parity Mode Bit 0
UPM1	= 5	; Parity Mode Bit 1
UMSEL	= 6	; USART Mode Select
URSEL	= 7	; Register Select

UBRRHI	= UBRRH	; For compatibility

; ***** TWI **************************
; TWBR - TWI Bit Rate register
I2BR	= TWBR	; For compatibility
TWBR0	= 0	; 
TWBR1	= 1	; 
TWBR2	= 2	; 
TWBR3	= 3	; 
TWBR4	= 4	; 
TWBR5	= 5	; 
TWBR6	= 6	; 
TWBR7	= 7	; 

; TWCR - TWI Control Register
I2CR	= TWCR	; For compatibility
TWIE	= 0	; TWI Interrupt Enable
I2IE	= TWIE	; For compatibility
TWEN	= 2	; TWI Enable Bit
I2EN	= TWEN	; For compatibility
ENI2C	= TWEN	; For compatibility
TWWC	= 3	; TWI Write Collition Flag
I2WC	= TWWC	; For compatibility
TWSTO	= 4	; TWI Stop Condition Bit
I2STO	= TWSTO	; For compatibility
TWSTA	= 5	; TWI Start Condition Bit
I2STA	= TWSTA	; For compatibility
TWEA	= 6	; TWI Enable Acknowledge Bit
I2EA	= TWEA	; For compatibility
TWINT	= 7	; TWI Interrupt Flag
I2INT	= TWINT	; For compatibility

; TWSR - TWI Status Register
I2SR	= TWSR	; For compatibility
TWPS0	= 0	; TWI Prescaler
TWS0	= TWPS0	; For compatibility
I2GCE	= TWPS0	; For compatibility
TWPS1	= 1	; TWI Prescaler
TWS1	= TWPS1	; For compatibility
TWS3	= 3	; TWI Status
I2S3	= TWS3	; For compatibility
TWS4	= 4	; TWI Status
I2S4	= TWS4	; For compatibility
TWS5	= 5	; TWI Status
I2S5	= TWS5	; For compatibility
TWS6	= 6	; TWI Status
I2S6	= TWS6	; For compatibility
TWS7	= 7	; TWI Status
I2S7	= TWS7	; For compatibility

; TWDR - TWI Data register
I2DR	= TWDR	; For compatibility
TWD0	= 0	; TWI Data Register Bit 0
TWD1	= 1	; TWI Data Register Bit 1
TWD2	= 2	; TWI Data Register Bit 2
TWD3	= 3	; TWI Data Register Bit 3
TWD4	= 4	; TWI Data Register Bit 4
TWD5	= 5	; TWI Data Register Bit 5
TWD6	= 6	; TWI Data Register Bit 6
TWD7	= 7	; TWI Data Register Bit 7

; TWAR - TWI (Slave) Address register
I2AR	= TWAR	; For compatibility
TWGCE	= 0	; TWI General Call Recognition Enable Bit
TWA0	= 1	; TWI (Slave) Address register Bit 0
TWA1	= 2	; TWI (Slave) Address register Bit 1
TWA2	= 3	; TWI (Slave) Address register Bit 2
TWA3	= 4	; TWI (Slave) Address register Bit 3
TWA4	= 5	; TWI (Slave) Address register Bit 4
TWA5	= 6	; TWI (Slave) Address register Bit 5
TWA6	= 7	; TWI (Slave) Address register Bit 6


; ***** ANALOG_COMPARATOR ************
; SFIOR - Special Function IO Register
ACME	= 3	; Analog Comparator Multiplexer Enable

; ACSR - Analog Comparator Control And Status Register
ACIS0	= 0	; Analog Comparator Interrupt Mode Select bit 0
ACIS1	= 1	; Analog Comparator Interrupt Mode Select bit 1
ACIC	= 2	; Analog Comparator Input Capture Enable
ACIE	= 3	; Analog Comparator Interrupt Enable
ACI	= 4	; Analog Comparator Interrupt Flag
ACO	= 5	; Analog Compare Output
ACBG	= 6	; Analog Comparator Bandgap Select
ACD	= 7	; Analog Comparator Disable


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
ADCSR	= ADCSRA	; For compatibility
ADPS0	= 0	; ADC  Prescaler Select Bits
ADPS1	= 1	; ADC  Prescaler Select Bits
ADPS2	= 2	; ADC  Prescaler Select Bits
ADIE	= 3	; ADC Interrupt Enable
ADIF	= 4	; ADC Interrupt Flag
ADATE	= 5	; When this bit is written to one,the Timer/Counter2 prescaler will be reset.The bit will be cleared by hardware after the operation is performed.Writing a zero to this bit will have no effect.This bit will always be read as zero if Timer/Counter2 is clocked by the internal CPU clock.If this bit is written when Timer/Counter2 is operating in asynchronous mode,the bit will remain one until the prescaler has been reset.
ADFR	= ADATE	; For compatibility
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

; SFIOR - Special Function IO Register
ADTS0	= 5	; ADC Auto Trigger Source 0
ADTS1	= 6	; ADC Auto Trigger Source 1
ADTS2	= 7	; ADC Auto Trigger Source 2


; ***** JTAG *************************
; OCDR - On-Chip Debug Related Register in I/O Memory
OCDR0	= 0	; On-Chip Debug Register Bit 0
OCDR1	= 1	; On-Chip Debug Register Bit 1
OCDR2	= 2	; On-Chip Debug Register Bit 2
OCDR3	= 3	; On-Chip Debug Register Bit 3
OCDR4	= 4	; On-Chip Debug Register Bit 4
OCDR5	= 5	; On-Chip Debug Register Bit 5
OCDR6	= 6	; On-Chip Debug Register Bit 6
OCDR7	= 7	; On-Chip Debug Register Bit 7
IDRD	= OCDR7	; For compatibility

; MCUCSR - MCU Control And Status Register
;JTRF	= 4	; JTAG Reset Flag
;JTD	= 7	; JTAG Interface Disable


; ***** BOOT_LOAD ********************
; SPMCSR - Store Program Memory Control Register
SPMCR	= SPMCSR	; For compatibility
SPMEN	= 0	; Store Program Memory Enable
PGERS	= 1	; Page Erase
PGWRT	= 2	; Page Write
BLBSET	= 3	; Boot Lock Bit Set
RWWSRE	= 4	; Read While Write section read enable
ASRE	= RWWSRE	; For compatibility
RWWSB	= 6	; Read While Write Section Busy
ASB	= RWWSB	; For compatibility
SPMIE	= 7	; SPM Interrupt Enable


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


; ***** PORTC ************************
; PORTC - Port C Data Register
PORTC0	= 0	; Port C Data Register bit 0
PC0	= 0	; For compatibility
PORTC1	= 1	; Port C Data Register bit 1
PC1	= 1	; For compatibility
PORTC2	= 2	; Port C Data Register bit 2
PC2	= 2	; For compatibility
PORTC3	= 3	; Port C Data Register bit 3
PC3	= 3	; For compatibility
PORTC4	= 4	; Port C Data Register bit 4
PC4	= 4	; For compatibility
PORTC5	= 5	; Port C Data Register bit 5
PC5	= 5	; For compatibility
PORTC6	= 6	; Port C Data Register bit 6
PC6	= 6	; For compatibility
PORTC7	= 7	; Port C Data Register bit 7
PC7	= 7	; For compatibility

; DDRC - Port C Data Direction Register
DDC0	= 0	; Port C Data Direction Register bit 0
DDC1	= 1	; Port C Data Direction Register bit 1
DDC2	= 2	; Port C Data Direction Register bit 2
DDC3	= 3	; Port C Data Direction Register bit 3
DDC4	= 4	; Port C Data Direction Register bit 4
DDC5	= 5	; Port C Data Direction Register bit 5
DDC6	= 6	; Port C Data Direction Register bit 6
DDC7	= 7	; Port C Data Direction Register bit 7

; PINC - Port C Input Pins
PINC0	= 0	; Port C Input Pins bit 0
PINC1	= 1	; Port C Input Pins bit 1
PINC2	= 2	; Port C Input Pins bit 2
PINC3	= 3	; Port C Input Pins bit 3
PINC4	= 4	; Port C Input Pins bit 4
PINC5	= 5	; Port C Input Pins bit 5
PINC6	= 6	; Port C Input Pins bit 6
PINC7	= 7	; Port C Input Pins bit 7


; ***** PORTD ************************
; PORTD - Port D Data Register
PORTD0	= 0	; Port D Data Register bit 0
PD0	= 0	; For compatibility
PORTD1	= 1	; Port D Data Register bit 1
PD1	= 1	; For compatibility
PORTD2	= 2	; Port D Data Register bit 2
PD2	= 2	; For compatibility
PORTD3	= 3	; Port D Data Register bit 3
PD3	= 3	; For compatibility
PORTD4	= 4	; Port D Data Register bit 4
PD4	= 4	; For compatibility
PORTD5	= 5	; Port D Data Register bit 5
PD5	= 5	; For compatibility
PORTD6	= 6	; Port D Data Register bit 6
PD6	= 6	; For compatibility
PORTD7	= 7	; Port D Data Register bit 7
PD7	= 7	; For compatibility

; DDRD - Port D Data Direction Register
DDD0	= 0	; Port D Data Direction Register bit 0
DDD1	= 1	; Port D Data Direction Register bit 1
DDD2	= 2	; Port D Data Direction Register bit 2
DDD3	= 3	; Port D Data Direction Register bit 3
DDD4	= 4	; Port D Data Direction Register bit 4
DDD5	= 5	; Port D Data Direction Register bit 5
DDD6	= 6	; Port D Data Direction Register bit 6
DDD7	= 7	; Port D Data Direction Register bit 7

; PIND - Port D Input Pins
PIND0	= 0	; Port D Input Pins bit 0
PIND1	= 1	; Port D Input Pins bit 1
PIND2	= 2	; Port D Input Pins bit 2
PIND3	= 3	; Port D Input Pins bit 3
PIND4	= 4	; Port D Input Pins bit 4
PIND5	= 5	; Port D Input Pins bit 5
PIND6	= 6	; Port D Input Pins bit 6
PIND7	= 7	; Port D Input Pins bit 7


; ***** WATCHDOG *********************
; WDTCR - Watchdog Timer Control Register
WDP0	= 0	; Watch Dog Timer Prescaler bit 0
WDP1	= 1	; Watch Dog Timer Prescaler bit 1
WDP2	= 2	; Watch Dog Timer Prescaler bit 2
WDE	= 3	; Watch Dog Enable
WDTOE	= 4	; RW
WDDE	= WDTOE	; For compatibility



; ***** LOCKSBITS ********************************************************
LB1	= 0	; Lock bit
LB2	= 1	; Lock bit
BLB01	= 2	; Boot Lock bit
BLB02	= 3	; Boot Lock bit
BLB11	= 4	; Boot lock bit
BLB12	= 5	; Boot lock bit


; ***** FUSES ************************************************************
; LOW fuse bits
CKSEL0	= 0	; Select Clock Source
CKSEL1	= 1	; Select Clock Source
CKSEL2	= 2	; Select Clock Source
CKSEL3	= 3	; Select Clock Source
SUT0	= 4	; Select start-up time
SUT1	= 5	; Select start-up time
BODEN	= 6	; Brown out detector enable
BODLEVEL	= 7	; Brown out detector trigger level

; HIGH fuse bits
BOOTRST	= 0	; Select Reset Vector
BOOTSZ0	= 1	; Select Boot Size
BOOTSZ1	= 2	; Select Boot Size
EESAVE	= 3	; EEPROM memory is preserved through chip erase
CKOPT	= 4	; Oscillator Options
SPIEN	= 5	; Enable Serial programming and Data Downloading
JTAGEN	= 6	; Enable JTAG
OCDEN	= 7	; Enable OCD



; ***** CPU REGISTER DEFINITIONS *****************************************
XH	.DE r27
XL	.DE r26
YH	.DE r29
YL	.DE r28
ZH	.DE r31
ZL	.DE r30



; ***** DATA MEMORY DECLARATIONS *****************************************
FLASHEND	= 0x1fff	; Note: Word address
IOEND	= 0x003f
SRAM_START	= 0x0060
SRAM_SIZE	= 1024
RAMEND	= 0x045f
XRAMEND	= 0x0000
E2END	= 0x01ff
EEPROMEND	= 0x01ff
EEADRBITS	= 9



; ***** BOOTLOADER DECLARATIONS ******************************************
NRWW_START_ADDR	= 0x1c00
NRWW_STOP_ADDR	= 0x1fff
RWW_START_ADDR	= 0x0
RWW_STOP_ADDR	= 0x1bff
PAGESIZE	= 64
FIRSTBOOTSTART	= 0x1f80
SECONDBOOTSTART	= 0x1f00
THIRDBOOTSTART	= 0x1e00
FOURTHBOOTSTART	= 0x1c00
SMALLBOOTSTART	= FIRSTBOOTSTART
LARGEBOOTSTART	= FOURTHBOOTSTART



; ***** INTERRUPT VECTORS ************************************************
INT0addr	= 0x0002	; External Interrupt Request 0
INT1addr	= 0x0004	; External Interrupt Request 1
OC2addr	= 0x0006	; Timer/Counter2 Compare Match
OVF2addr	= 0x0008	; Timer/Counter2 Overflow
ICP1addr	= 0x000a	; Timer/Counter1 Capture Event
OC1Aaddr	= 0x000c	; Timer/Counter1 Compare Match A
OC1Baddr	= 0x000e	; Timer/Counter1 Compare Match B
OVF1addr	= 0x0010	; Timer/Counter1 Overflow
OVF0addr	= 0x0012	; Timer/Counter0 Overflow
SPIaddr	= 0x0014	; Serial Transfer Complete
URXCaddr	= 0x0016	; USART, Rx Complete
UDREaddr	= 0x0018	; USART Data Register Empty
UTXCaddr	= 0x001a	; USART, Tx Complete
ADCCaddr	= 0x001c	; ADC Conversion Complete
ERDYaddr	= 0x001e	; EEPROM Ready
ACIaddr	= 0x0020	; Analog Comparator
TWIaddr	= 0x0022	; 2-wire Serial Interface
INT2addr	= 0x0024	; External Interrupt Request 2
OC0addr	= 0x0026	; Timer/Counter0 Compare Match
SPMRaddr	= 0x0028	; Store Program Memory Ready

INT_VECTORS_SIZE	= 42	; size in words


; ***** END OF FILE ******************************************************
