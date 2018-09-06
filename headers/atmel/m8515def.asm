;*************************************************************************
;* A P P L I C A T I O N   N O T E   F O R   T H E   A V R   F A M I L Y
;* 
;* Number            : AVR000
;* File Name         : "m8515def.asm"
;* Title             : Register/Bit Definitions for the ATmega8515
;* Date              : 2011-02-09
;* Version           : 2.35
;* Support E-mail    : avr@atmel.com
;* Target MCU        : ATmega8515
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
; device ATmega8515

SIGNATURE_000	= 0x1e
SIGNATURE_001	= 0x93
SIGNATURE_002	= 0x06

                .CR     avr
                .FA     enhanced8k
				.MS		$1000

; ***** I/O REGISTER DEFINITIONS *****************************************
; NOTE:
; Definitions marked "MEMORY MAPPED"are extended I/O ports
; and cannot be used with IN/OUT instructions
SREG	= 0x3f
SPL	= 0x3d
SPH	= 0x3e
GICR	= 0x3b
GIFR	= 0x3a
TIMSK	= 0x39
TIFR	= 0x38
SPMCR	= 0x37
EMCUCR	= 0x36
MCUCR	= 0x35
MCUCSR	= 0x34
TCCR0	= 0x33
TCNT0	= 0x32
OCR0	= 0x31
SFIOR	= 0x30
TCCR1A	= 0x2f
TCCR1B	= 0x2e
TCNT1L	= 0x2c
TCNT1H	= 0x2d
OCR1AL	= 0x2a
OCR1AH	= 0x2b
OCR1BL	= 0x28
OCR1BH	= 0x29
ICR1L	= 0x24
ICR1H	= 0x25
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
PORTE	= 0x07
DDRE	= 0x06
PINE	= 0x05
OSCCAL	= 0x04


; ***** BIT DEFINITIONS **************************************************

; ***** ANALOG_COMPARATOR ************
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
TXB8	= 0	; Transmit Data Bit 8
RXB8	= 1	; Receive Data Bit 8
UCSZ2	= 2	; Character Size Bit 2
CHR9	= UCSZ2	; For compatibility
TXEN	= 3	; Transmitter Enable
RXEN	= 4	; Receiver Enable
UDRIE	= 5	; USART Data register Empty Interrupt Enable
TXCIE	= 6	; TX Complete Interrupt Enable
RXCIE	= 7	; RX Complete Interrupt Enable

; UCSRC - USART Control and Status Register C
UCPOL	= 0	; Clock Polarity
UCSZ0	= 1	; Character Size Bit 0
UCSZ1	= 2	; Character Size Bit 1
USBS	= 3	; Stop Bit Select
UPM0	= 4	; Parity Mode Bit 0
UPM1	= 5	; Parity Mode Bit 1
UMSEL	= 6	; USART Mode Select
URSEL	= 7	; Register Select

; UBRRH - USART Baud Rate Register High Byte
UBRR8	= 0	; USART Baud Rate Register bit 8
UBRR9	= 1	; USART Baud Rate Register bit 9
UBRR10	= 2	; USART Baud Rate Register bit 10
UBRR11	= 3	; USART Baud Rate Register bit 11
;URSEL	= 7	; Register Select


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

; EMCUCR - Extended MCU Control Register
ISC2	= 0	; Interrupt Sense Control 2
SRW11	= 1	; Wait State Select Bits for Upper Sector, bit 1
SRW00	= 2	; Wait State Select Bits for Lower Sector, bit 0
SRW01	= 3	; Wait State Select Bits for Lower Sector, bit 1
SRL0	= 4	; Wait State Selector Limit bit 0
SRL1	= 5	; Wait State Selector Limit bit 1
SRL2	= 6	; Wait State Selector Limit bit 2
SM0	= 7	; Sleep Mode Select Bit 0

; MCUCR - MCU Control Register
ISC00	= 0	; Interrupt Sense Control 0 Bit 0
ISC01	= 1	; Interrupt Sense Control 0 Bit 1
ISC10	= 2	; Interrupt Sense Control 1 Bit 0
ISC11	= 3	; Interrupt Sense Control 1 Bit 1
SM1	= 4	; Sleep Mode Select Bit 1
SE	= 5	; Sleep Enable
SRW10	= 6	; Wait State Select Bits for Upper Sector, bit 0
SRE	= 7	; External SRAM/XMEM Enable

; MCUCSR - MCU Control And Status Register
MCUSR	= MCUCSR	; For compatibility
PORF	= 0	; Power-on reset flag
EXTRF	= 1	; External Reset Flag
BORF	= 2	; Brown-out Reset Flag
WDRF	= 3	; Watchdog Reset Flag
SM2	= 5	; Sleep Mode Select Bit 2

; OSCCAL - Oscillator Calibration Value
CAL0	= 0	; Oscillator Calibration Value Bit0
CAL1	= 1	; Oscillator Calibration Value Bit1
CAL2	= 2	; Oscillator Calibration Value Bit2
CAL3	= 3	; Oscillator Calibration Value Bit3
CAL4	= 4	; Oscillator Calibration Value Bit4
CAL5	= 5	; Oscillator Calibration Value Bit5
CAL6	= 6	; Oscillator Calibration Value Bit6
CAL7	= 7	; Oscillator Calibration Value Bit7

; SPMCR - Store Program Memory Control Register
SPMEN	= 0	; Store Program Memory Enable
PGERS	= 1	; Page Erase
PGWRT	= 2	; Page Write
BLBSET	= 3	; Boot Lock Bit Set
RWWSRE	= 4	; Read-While-Write Section Read Enable
ASRE	= RWWSRE	; For compatibility
RWWSB	= 6	; Read-While-Write Section Busy
ASB	= RWWSB	; For compatibility
SPMIE	= 7	; SPM Interrupt Enable

; SFIOR - Special Function IO Register
PSR10	= 0	; Prescaler Reset Timer / Counter 1 and Timer / Counter 0
PUD	= 2	; Pull-up Disable
XMM0	= 3	; External Memory High Mask Bit 0
XMM1	= 4	; External Memory High Mask Bit 1
XMM2	= 5	; External Memory High Mask Bit 2
XMBK	= 6	; External Memory Bus Keeper Enable


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


; ***** WATCHDOG *********************
; WDTCR - Watchdog Timer Control Register
WDTCSR	= WDTCR	; For compatibility
WDP0	= 0	; Watch Dog Timer Prescaler bit 0
WDP1	= 1	; Watch Dog Timer Prescaler bit 1
WDP2	= 2	; Watch Dog Timer Prescaler bit 2
WDE	= 3	; Watch Dog Enable
WDCE	= 4	; Watchdog Change Enable
WDTOE	= WDCE	; For compatibility


; ***** TIMER_COUNTER_0 **************
; TCCR0 - Timer/Counter 0 Control Register
CS00	= 0	; Clock Select 0
CS01	= 1	; Clock Select 1
CS02	= 2	; Clock Select 2
WGM01	= 3	; Waveform Generation Mode 1
CTC0	= WGM01	; For compatibility
COM00	= 4	; Compare match Output Mode 0
COM01	= 5	; Compare Match Output Mode 1
WGM00	= 6	; Waveform Generation Mode 0
PWM0	= WGM00	; For compatibility
FOC0	= 7	; Force Output Compare

; TCNT0 - Timer/Counter 0 Register
TCNT0_0	= 0	; 
TCNT0_1	= 1	; 
TCNT0_2	= 2	; 
TCNT0_3	= 3	; 
TCNT0_4	= 4	; 
TCNT0_5	= 5	; 
TCNT0_6	= 6	; 
TCNT0_7	= 7	; 

; OCR0 - Timer/Counter 0 Output Compare Register
OCR0_0	= 0	; 
OCR0_1	= 1	; 
OCR0_2	= 2	; 
OCR0_3	= 3	; 
OCR0_4	= 4	; 
OCR0_5	= 5	; 
OCR0_6	= 6	; 
OCR0_7	= 7	; 

; TIMSK - Timer/Counter Interrupt Mask Register
OCIE0	= 0	; Timer/Counter0 Output Compare Match Interrupt register
TOIE0	= 1	; Timer/Counter0 Overflow Interrupt Enable

; TIFR - Timer/Counter Interrupt Flag register
OCF0	= 0	; Output Compare Flag 0
TOV0	= 1	; Timer/Counter0 Overflow Flag


; ***** TIMER_COUNTER_1 **************
; TIMSK - Timer/Counter Interrupt Mask Register
TICIE1	= 3	; Timer/Counter1 Input Capture Interrupt Enable
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
FOC1B	= 2	; Force Output Compare for Channel B
FOC1A	= 3	; Force Output Compare for Channel A
COM1B0	= 4	; Compare Output Mode 1B, bit 0
COM1B1	= 5	; Compare Output Mode 1B, bit 1
COM1A0	= 6	; Compare Ouput Mode 1A, bit 0
COM1A1	= 7	; Compare Output Mode 1A, bit 1

; TCCR1B - Timer/Counter1 Control Register B
CS10	= 0	; Clock Select1 bit 0
CS11	= 1	; Clock Select1 bit 1
CS12	= 2	; Clock Select1 bit 2
WGM12	= 3	; Pulse Width Modulator Select Bit 2
CTC10	= WGM12	; For compatibility
WGM13	= 4	; Pulse Width Modulator Select Bit 3
CTC11	= WGM13	; For compatibility
ICES1	= 6	; Input Capture 1 Edge Select
ICNC1	= 7	; Input Capture 1 Noise Canceler


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


; ***** PORTE ************************
; PORTE - Port E Data Register
PORTE0	= 0	; 
PE0	= 0	; For compatibility
PORTE1	= 1	; 
PE1	= 1	; For compatibility
PORTE2	= 2	; 
PE2	= 2	; For compatibility

; DDRE - Port E Data Direction Register
DDE0	= 0	; 
DDE1	= 1	; 
DDE2	= 2	; 

; PINE - Port E Input Pins
PINE0	= 0	; 
PINE1	= 1	; 
PINE2	= 2	; 


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
WDTON	= 6	; Watchdog timer always on
S8515C	= 7	; AT90S4414/8515 compabillity mode



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
XRAMEND	= 0xffff
E2END	= 0x01ff
EEPROMEND	= 0x01ff
EEADRBITS	= 9



; ***** BOOTLOADER DECLARATIONS ******************************************
NRWW_START_ADDR	= 0xc00
NRWW_STOP_ADDR	= 0xfff
RWW_START_ADDR	= 0x0
RWW_STOP_ADDR	= 0xbff
PAGESIZE	= 32
FIRSTBOOTSTART	= 0xf80
SECONDBOOTSTART	= 0xf00
THIRDBOOTSTART	= 0xe00
FOURTHBOOTSTART	= 0xc00
SMALLBOOTSTART	= FIRSTBOOTSTART
LARGEBOOTSTART	= FOURTHBOOTSTART



; ***** INTERRUPT VECTORS ************************************************
INT0addr	= 0x0001	; External Interrupt Request 0
INT1addr	= 0x0002	; External Interrupt Request 1
ICP1addr	= 0x0003	; Timer/Counter1 Capture Event
OC1Aaddr	= 0x0004	; Timer/Counter1 Compare Match A
OC1Baddr	= 0x0005	; Timer/Counter1 Compare MatchB
OVF1addr	= 0x0006	; Timer/Counter1 Overflow
OVF0addr	= 0x0007	; Timer/Counter0 Overflow
SPIaddr	= 0x0008	; Serial Transfer Complete
URXCaddr	= 0x0009	; USART, Rx Complete
UDREaddr	= 0x000a	; USART Data Register Empty
UTXCaddr	= 0x000b	; USART, Tx Complete
ACIaddr	= 0x000c	; Analog Comparator
INT2addr	= 0x000d	; External Interrupt Request 2
OC0addr	= 0x000e	; Timer 0 Compare Match
ERDYaddr	= 0x000f	; EEPROM Ready
SPMRaddr	= 0x0010	; Store Program Memory Ready

INT_VECTORS_SIZE	= 17	; size in words



; ***** END OF FILE ******************************************************
