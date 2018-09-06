;*************************************************************************
;* A P P L I C A T I O N   N O T E   F O R   T H E   A V R   F A M I L Y
;* 
;* Number            : AVR000
;* File Name         : "tn87def.asm"
;* Title             : Register/Bit Definitions for the ATtiny87
;* Date              : 2011-02-09
;* Version           : 2.35
;* Support E-mail    : avr@atmel.com
;* Target MCU        : ATtiny87
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
; .device ATtiny87

SIGNATURE_000	= 0x1e
SIGNATURE_001	= 0x93
SIGNATURE_002	= 0x87

                .CR     avr
                .FA     enhanced128k
				.MS		$1000

; ***** I/O REGISTER DEFINITIONS *****************************************
; NOTE:
; Definitions marked "MEMORY MAPPED"are extended I/O ports
; and cannot be used with IN/OUT instructions
LINDAT	= 0xd2	; MEMORY MAPPED
LINSEL	= 0xd1	; MEMORY MAPPED
LINIDR	= 0xd0	; MEMORY MAPPED
LINDLR	= 0xcf	; MEMORY MAPPED
LINBRRH	= 0xce	; MEMORY MAPPED
LINBRRL	= 0xcd	; MEMORY MAPPED
LINBTR	= 0xcc	; MEMORY MAPPED
LINERR	= 0xcb	; MEMORY MAPPED
LINENIR	= 0xca	; MEMORY MAPPED
LINSIR	= 0xc9	; MEMORY MAPPED
LINCR	= 0xc8	; MEMORY MAPPED
USIPP	= 0xbc	; MEMORY MAPPED
USIBR	= 0xbb	; MEMORY MAPPED
USIDR	= 0xba	; MEMORY MAPPED
USISR	= 0xb9	; MEMORY MAPPED
USICR	= 0xb8	; MEMORY MAPPED
ASSR	= 0xb6	; MEMORY MAPPED
OCR1BL	= 0x8a	; MEMORY MAPPED
OCR1BH	= 0x8b	; MEMORY MAPPED
OCR1AL	= 0x88	; MEMORY MAPPED
OCR1AH	= 0x89	; MEMORY MAPPED
ICR1L	= 0x86	; MEMORY MAPPED
ICR1H	= 0x87	; MEMORY MAPPED
TCNT1L	= 0x84	; MEMORY MAPPED
TCNT1H	= 0x85	; MEMORY MAPPED
TCCR1D	= 0x83	; MEMORY MAPPED
TCCR1C	= 0x82	; MEMORY MAPPED
TCCR1B	= 0x81	; MEMORY MAPPED
TCCR1A	= 0x80	; MEMORY MAPPED
DIDR1	= 0x7f	; MEMORY MAPPED
DIDR0	= 0x7e	; MEMORY MAPPED
ADMUX	= 0x7c	; MEMORY MAPPED
ADCSRB	= 0x7b	; MEMORY MAPPED
ADCSRA	= 0x7a	; MEMORY MAPPED
ADCH	= 0x79	; MEMORY MAPPED
ADCL	= 0x78	; MEMORY MAPPED
AMISCR	= 0x77	; MEMORY MAPPED
TIMSK1	= 0x6f	; MEMORY MAPPED
TIMSK0	= 0x6e	; MEMORY MAPPED
PCMSK1	= 0x6c	; MEMORY MAPPED
PCMSK0	= 0x6b	; MEMORY MAPPED
EICRA	= 0x69	; MEMORY MAPPED
PCICR	= 0x68	; MEMORY MAPPED
OSCCAL	= 0x66	; MEMORY MAPPED
PRR	= 0x64	; MEMORY MAPPED
CLKSELR	= 0x63	; MEMORY MAPPED
CLKCSR	= 0x62	; MEMORY MAPPED
CLKPR	= 0x61	; MEMORY MAPPED
WDTCR	= 0x60	; MEMORY MAPPED
SREG	= 0x3f
SPL	= 0x3d
SPH	= 0x3e
SPMCSR	= 0x37
MCUCR	= 0x35
MCUSR	= 0x34
SMCR	= 0x33
DWDR	= 0x31
ACSR	= 0x30
SPDR	= 0x2e
SPSR	= 0x2d
SPCR	= 0x2c
GPIOR2	= 0x2b
GPIOR1	= 0x2a
OCR0A	= 0x28
TCNT0	= 0x27
TCCR0B	= 0x26
TCCR0A	= 0x25
GTCCR	= 0x23
EEARH	= 0x22
EEARL	= 0x21
EEDR	= 0x20
EECR	= 0x1f
GPIOR0	= 0x1e
EIMSK	= 0x1d
EIFR	= 0x1c
PCIFR	= 0x1b
TIFR1	= 0x16
TIFR0	= 0x15
PORTCR	= 0x12
PORTB	= 0x05
DDRB	= 0x04
PINB	= 0x03
PORTA	= 0x02
DDRA	= 0x01
PINA	= 0x00


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


; ***** LINUART **********************
; LINCR - LIN Control Register
LCMD0	= 0	; LIN Command and Mode bit 0
LCMD1	= 1	; LIN Command and Mode bit 1
LCMD2	= 2	; LIN Command and Mode bit 2
LENA	= 3	; LIN or UART Enable
LCONF0	= 4	; LIN Configuration bit 0
LCONF1	= 5	; LIN Configuration bit 1
LIN13	= 6	; LIN Standard
LSWRES	= 7	; Software Reset

; LINSIR - LIN Status and Interrupt Register
LRXOK	= 0	; Receive Performed Interrupt
LTXOK	= 1	; Transmit Performed Interrupt
LIDOK	= 2	; Identifier Interrupt
LERR	= 3	; Error Interrupt
LBUSY	= 4	; Busy Signal
LIDST0	= 5	; Identifier Status bit 0
LIDST1	= 6	; Identifier Status bit 1
LIDST2	= 7	; Identifier Status bit 2

; LINENIR - LIN Enable Interrupt Register
LENRXOK	= 0	; Enable Receive Performed Interrupt
LENTXOK	= 1	; Enable Transmit Performed Interrupt
LENIDOK	= 2	; Enable Identifier Interrupt
LENERR	= 3	; Enable Error Interrupt

; LINERR - LIN Error Register
LBERR	= 0	; Bit Error Flag
LCERR	= 1	; Checksum Error Flag
LPERR	= 2	; Parity Error Flag
LSERR	= 3	; Synchronization Error Flag
LFERR	= 4	; Framing Error Flag
LOVERR	= 5	; Overrun Error Flag
LTOERR	= 6	; Frame Time Out Error Flag
LABORT	= 7	; Abort Flag

; LINBTR - LIN Bit Timing Register
LBT0	= 0	; LIN Bit Timing bit 0
LBT1	= 1	; LIN Bit Timing bit 1
LBT2	= 2	; LIN Bit Timing bit 2
LBT3	= 3	; LIN Bit Timing bit 3
LBT4	= 4	; LIN Bit Timing bit 4
LBT5	= 5	; LIN Bit Timing bit 5
LDISR	= 7	; Disable Bit Timing Resynchronization

; LINBRRL - LIN Baud Rate Low Register
LDIV0	= 0	; 
LDIV1	= 1	; 
LDIV2	= 2	; 
LDIV3	= 3	; 
LDIV4	= 4	; 
LDIV5	= 5	; 
LDIV6	= 6	; 
LDIV7	= 7	; 

; LINBRRH - LIN Baud Rate High Register
LDIV8	= 0	; 
LDIV9	= 1	; 
LDIV10	= 2	; 
LDIV11	= 3	; 

; LINDLR - LIN Data Length Register
LRXDL0	= 0	; LIN Receive Data Length bit 0
LRXDL1	= 1	; LIN Receive Data Length bit 1
LRXDL2	= 2	; LIN Receive Data Length bit 2
LRXDL3	= 3	; LIN Receive Data Length bit 3
LTXDL0	= 4	; LIN Transmit Data Length bit 0
LTXDL1	= 5	; LIN Transmit Data Length bit 1
LTXDL2	= 6	; LIN Transmit Data Length bit 2
LTXDL3	= 7	; LIN Transmit Data Length bit 3

; LINIDR - LIN Identifier Register
LID0	= 0	; Identifier bit 0
LID1	= 1	; Identifier bit 1
LID2	= 2	; Identifier bit 2
LID3	= 3	; Identifier bit 3
LID4	= 4	; Identifier bit 4 or Data Length bit 0
LID5	= 5	; Identifier bit 5 or Data Length bit 1
LP0	= 6	; Parity bit 0
LP1	= 7	; Parity bit 1

; LINSEL - LIN Data Buffer Selection Register
LINDX0	= 0	; FIFO LIN Data Buffer Index bit 0
LINDX1	= 1	; FIFO LIN Data Buffer Index bit 1
LINDX2	= 2	; FIFO LIN Data Buffer Index bit 2
LAINC	= 3	; Auto Increment of Data Buffer Index (Active Low)

; LINDAT - LIN Data Register
LDATA0	= 0	; 
LDATA1	= 1	; 
LDATA2	= 2	; 
LDATA3	= 3	; 
LDATA4	= 4	; 
LDATA5	= 5	; 
LDATA6	= 6	; 
LDATA7	= 7	; 


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


; ***** TIMER_COUNTER_0 **************
; TIMSK0 - Timer/Counter0 Interrupt Mask register
TOIE0	= 0	; Timer/Counter0 Overflow Interrupt Enable
OCIE0A	= 1	; Timer/Counter0 Output Compare Match A Interrupt Enable

; TIFR0 - Timer/Counter0 Interrupt Flag Register
TOV0	= 0	; Timer/Counter0 Overflow Flag
OCF0A	= 1	; Output Compare Flag 0A

; TCCR0A - Timer/Counter0 Control Register A
WGM00	= 0	; Waveform Genration Mode bit 0
WGM01	= 1	; Waveform Genration Mode bit 1
COM0A0	= 6	; Compare Output Mode bit 0
COM0A1	= 7	; Compare Output Mode bit 1

; TCCR0B - Timer/Counter0 Control Register B
CS00	= 0	; Clock Select bit 0
CS01	= 1	; Clock Select bit 1
CS02	= 2	; Clock Select bit 2
FOC0A	= 7	; Force Output Compare A

; TCNT0 - Timer/Counter0
TCNT00	= 0	; Timer/Counter 0 bit 0
TCNT01	= 1	; Timer/Counter 0 bit 1
TCNT02	= 2	; Timer/Counter 0 bit 2
TCNT03	= 3	; Timer/Counter 0 bit 3
TCNT04	= 4	; Timer/Counter 0 bit 4
TCNT05	= 5	; Timer/Counter 0 bit 5
TCNT06	= 6	; Timer/Counter 0 bit 6
TCNT07	= 7	; Timer/Counter 0 bit 7

; OCR0A - Timer/Counter0 Output Compare Register A
OCR00	= 0	; Timer/Counter0 Output Compare Register Bit 0
OCR01	= 1	; Timer/Counter0 Output Compare Register Bit 1
OCR02	= 2	; Timer/Counter0 Output Compare Register Bit 2
OCR03	= 3	; Timer/Counter0 Output Compare Register Bit 3
OCR04	= 4	; Timer/Counter0 Output Compare Register Bit 4
OCR05	= 5	; Timer/Counter0 Output Compare Register Bit 5
OCR06	= 6	; Timer/Counter0 Output Compare Register Bit 6
OCR07	= 7	; Timer/Counter0 Output Compare Register Bit 7

; ASSR - Asynchronous Status Register
TCR0BUB	= 0	; Timer/Counter0 Control Register B Update Busy
TCR0AUB	= 1	; Timer/Counter0 Control Register A Update Busy
OCR0AUB	= 3	; Output Compare Register 0A  Update Busy
TCN0UB	= 4	; Timer/Counter0 Update Busy
AS0	= 5	; Asynchronous Timer/Counter0
EXCLK	= 6	; Enable External Clock Input

; GTCCR - General Timer Counter Control register
PSR1	= 0	; Prescaler Reset Synchronous 16-bit Timer/Counter1
PSR0	= 1	; Prescaler Reset Asynchronous 8-bit Timer/Counter0
TSM	= 7	; Timer/Counter Synchronization Mode


; ***** TIMER_COUNTER_1 **************
; TIMSK1 - Timer/Counter1 Interrupt Mask Register
TOIE1	= 0	; Timer/Counter1 Overflow Interrupt Enable
OCIE1A	= 1	; Timer/Counter1 Output Compare A Match Interrupt Enable
OCIE1B	= 2	; Timer/Counter1 Output Compare B Match Interrupt Enable
ICIE1	= 5	; Timer/Counter1 Input Capture Interrupt Enable

; TIFR1 - Timer/Counter1 Interrupt Flag register
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
CS10	= 0	; Timer/Counter1 Clock Select bit 0
CS11	= 1	; Timer/Counter1 Clock Select bit 1
CS12	= 2	; Timer/Counter1 Clock Select bit 2
WGM12	= 3	; Waveform Generation Mode Bit 2
WGM13	= 4	; Waveform Generation Mode Bit 3
ICES1	= 6	; Input Capture 1 Edge Select
ICNC1	= 7	; Input Capture 1 Noise Canceler

; TCCR1C - Timer/Counter1 Control Register C
FOC1B	= 6	; Timer/Counter1 Force Output Compare for Channel B
FOC1A	= 7	; Timer/Counter1 Force Output Compare for Channel A

; TCCR1D - Timer/Counter1 Control Register D
OC1AU	= 0	; Timer/Counter1 Output Compare U-pin Enable for Channel A
OC1AV	= 1	; Timer/Counter1 Output Compare V-pin Enable for Channel A
OC1AW	= 2	; Timer/Counter1 Output Compare W-pin Enable for Channel A
OC1AX	= 3	; Timer/Counter1 Output Compare X-pin Enable for Channel A
OC1BU	= 4	; Timer/Counter1 Output Compare U-pin Enable for Channel B
OC1BV	= 5	; Timer/Counter1 Output Compare V-pin Enable for Channel B
OC1BW	= 6	; Timer/Counter1 Output Compare W-pin Enable for Channel B
OC1BX	= 7	; Timer/Counter1 Output Compare X-pin Enable for Channel B


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

; ADCSRA - The ADC Control and Status register A
ADPS0	= 0	; ADC  Prescaler Select Bits
ADPS1	= 1	; ADC  Prescaler Select Bits
ADPS2	= 2	; ADC  Prescaler Select Bits
ADIE	= 3	; ADC Interrupt Enable
ADIF	= 4	; ADC Interrupt Flag
ADATE	= 5	; ADC  Auto Trigger Enable
ADSC	= 6	; ADC Start Conversion
ADEN	= 7	; ADC Enable

; ADCSRB - The ADC Control and Status register B (Shared with ANALOG_COMPARATOR IO_MODULE)
ADTS0	= 0	; ADC Auto Trigger Source bit 0
ADTS1	= 1	; ADC Auto Trigger Source bit 1
ADTS2	= 2	; ADC Auto Trigger Source bit 2
BIN	= 7	; Bipolar Input Mode

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

; AMISCR - Analog Miscellaneous Control Register (Shared with CURRENT_SOURCE IO_MODULE)
XREFEN	= 1	; Internal Voltage Reference Output Enable
AREFEN	= 2	; External Voltage Reference Input Enable

; DIDR1 - Digital Input Disable Register 1
ADC8D	= 0	; 
ADC9D	= 1	; 
ADC10D	= 2	; 

; DIDR0 - Digital Input Disable Register 0
ADC0D	= 0	; 
ADC1D	= 1	; 
ADC2D	= 2	; 
ADC3D	= 3	; 
ADC4D	= 4	; 
ADC5D	= 5	; 
ADC6D	= 6	; 
AIN0D	= ADC6D	; For compatibility
ADC7D	= 7	; 
AIN1D	= ADC7D	; For compatibility


; ***** CURRENT_SOURCE ***************
; AMISCR - Analog Miscellaneous Control Register (Shared with AD_CONVERTER IO_MODULE)
ISRCEN	= 0	; Current Source Enable


; ***** ANALOG_COMPARATOR ************
; ADCSRB - Analog Comparator & ADC Control and Status Register B (Shared with AD_CONVERTER IO_MODULE)
ACIR0	= 4	; Analog Comparator Internal Voltage Reference Select Bit 0
ACIR1	= 5	; Analog Comparator Internal Voltage Reference Select Bit 1
ACME	= 6	; Analog Comparator Multiplexer Enable

; ACSR - Analog Comparator Control And Status Register
ACIS0	= 0	; Analog Comparator Interrupt Mode Select bit 0
ACIS1	= 1	; Analog Comparator Interrupt Mode Select bit 1
ACIC	= 2	; Analog Comparator Input Capture Enable
ACIE	= 3	; Analog Comparator Interrupt Enable
ACI	= 4	; Analog Comparator Interrupt Flag
ACO	= 5	; Analog Compare Output
ACIRS	= 6	; Analog Comparator Internal Reference Select
ACD	= 7	; Analog Comparator Disable


; ***** EXTERNAL_INTERRUPT ***********
; EICRA - External Interrupt Control Register
ISC00	= 0	; External Interrupt Sense Control 0 Bit 0
ISC01	= 1	; External Interrupt Sense Control 0 Bit 1
ISC10	= 2	; External Interrupt Sense Control 1 Bit 0
ISC11	= 3	; External Interrupt Sense Control 1 Bit 1

; EIMSK - External Interrupt Mask Register
INT0	= 0	; External Interrupt Request 0 Enable
INT1	= 1	; External Interrupt Request 1 Enable

; EIFR - External Interrupt Flag Register
INTF0	= 0	; External Interrupt Flag 0
INTF1	= 1	; External Interrupt Flag 1

; PCICR - Pin Change Interrupt Control Register
PCIE0	= 0	; Pin Change Interrupt Enable on any PCINT7..0 pin
PCIE1	= 1	; Pin Change Interrupt Enable  on any PCINT14..8 pin

; PCIFR - Pin Change Interrupt Flag Register
PCIF0	= 0	; Pin Change Interrupt Flag 0
PCIF1	= 1	; Pin Change Interrupt Flag 1

; PCMSK1 - Pin Change Mask Register 1
PCINT8	= 0	; Pin Change Enable Mask 8
PCINT9	= 1	; Pin Change Enable Mask 9
PCINT10	= 2	; Pin Change Enable Mask 10
PCINT11	= 3	; Pin Change Enable Mask 11
PCINT12	= 4	; Pin Change Enable Mask 12
PCINT13	= 5	; Pin Change Enable Mask 13
PCINT14	= 6	; Pin Change Enable Mask 14
PCINT15	= 7	; Pin Change Enable Mask 15

; PCMSK0 - Pin Change Mask Register 0
PCINT0	= 0	; Pin Change Enable Mask 0
PCINT1	= 1	; Pin Change Enable Mask 1
PCINT2	= 2	; Pin Change Enable Mask 2
PCINT3	= 3	; Pin Change Enable Mask 3
PCINT4	= 4	; Pin Change Enable Mask 4
PCINT5	= 5	; Pin Change Enable Mask 5
PCINT6	= 6	; Pin Change Enable Mask 6
PCINT7	= 7	; Pin Change Enable Mask 7


; ***** BOOT_LOAD ********************
; SPMCSR - Store Program Memory Control Register
SPMEN	= 0	; Store Program Memory Enable
PGERS	= 1	; Page Erase
PGWRT	= 2	; Page Write
RFLB	= 3	; Read Fuse and Lock Bits
CTPB	= 4	; Clear Temporary Page Buffer
SIGRD	= 5	; Signature Row Read
RWWSB	= 6	; Read While Write Section Busy


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
PUD	= 4	; Pull-up Disable
BODS	= 5	; BOD Sleep
BODSE	= 6	; BOD Sleep Enable

; MCUSR - MCU Status register
PORF	= 0	; Power-On Reset Flag
EXTRF	= 1	; External Reset Flag
BORF	= 2	; Brown-out Reset Flag
WDRF	= 3	; Watchdog Reset Flag

; SMCR - Sleep Mode Control Register
SE	= 0	; Sleep Enable
SM0	= 1	; Sleep Mode Select Bit 0
SM1	= 2	; Sleep Mode Select Bit 1

; PRR - Power Reduction Register
PRADC	= 0	; Power Reduction ADC
PRUSI	= 1	; Power Reduction USI
PRTIM0	= 2	; Power Reduction Timer/Counter0
PRTIM1	= 3	; Power Reduction Timer/Counter1
PRSPI	= 4	; Power Reduction SPI
PRLIN	= 5	; Power Reduction LINUART

; OSCCAL - Oscillator Calibration Register
CAL0	= 0	; Oscillatro Calibration Value Bit 0
CAL1	= 1	; Oscillatro Calibration Value Bit 1
CAL2	= 2	; Oscillatro Calibration Value Bit 2
CAL3	= 3	; Oscillatro Calibration Value Bit 3
CAL4	= 4	; Oscillatro Calibration Value Bit 4
CAL5	= 5	; Oscillatro Calibration Value Bit 5
CAL6	= 6	; Oscillatro Calibration Value Bit 6
CAL7	= 7	; Oscillatro Calibration Value Bit 7

; CLKPR - Clock Prescale Register
CLKPS0	= 0	; Clock Prescaler Select Bit 0
CLKPS1	= 1	; Clock Prescaler Select Bit 1
CLKPS2	= 2	; Clock Prescaler Select Bit 2
CLKPS3	= 3	; Clock Prescaler Select Bit 3
CLKPCE	= 7	; Clock Prescaler Change Enable

; CLKSELR - Clock Selection Register
CSEL0	= 0	; Clock Source Select bit 0 - CKSEL0 fuse substitution
CSEL1	= 1	; Clock Source Select bit 1 - CKSEL1 fuse substitution
CSEL2	= 2	; Clock Source Select bit 2 - CKSEL2 fuse substitution
CSEL3	= 3	; Clock Source Select bit 3 - CKSEL3 fuse substitution
CSUT0	= 4	; Clock Start-up Time bit 0 - SUT0 fuse substitution
CSUT1	= 5	; Clock Start-up Time bit 1 - SUT1 fuse substitution
COUT	= 6	; Clock Out - CKOUT fuse substitution

; CLKCSR - Clock Control & Status Register
CLKC0	= 0	; Clock Control bit 0
CLKC1	= 1	; Clock Control bit 1
CLKC2	= 2	; Clock Control bit 2
CLKC3	= 3	; Clock Control bit 3
CLKRDY	= 4	; Clock Ready Flag
CLKCCE	= 7	; Clock Control Change Enable

; DWDR - DebugWire data register
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

; PORTCR - General purpose register 0
PUDA	= 0	; Port-Wise Pull-up Disable Port A
PUDB	= 2	; Port-Wise Pull-up Disable Port B
BBMA	= 4	; Break-Before-Make Mode Enable Port A
BBMB	= 5	; Break-Before-Make Mode Enable Port B



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
WDTON	= 4	; Watchdog Timer always ON
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
IOEND	= 0x00ff
SRAM_START	= 0x0100
SRAM_SIZE	= 512
RAMEND	= 0x02ff
XRAMEND	= 0x0000
E2END	= 0x01ff
EEPROMEND	= 0x01ff
EEADRBITS	= 9



; ***** BOOTLOADER DECLARATIONS ******************************************
NRWW_START_ADDR	= 0x0
NRWW_STOP_ADDR	= 0xfff
RWW_START_ADDR	= 0x0
RWW_STOP_ADDR	= 0x0
PAGESIZE	= 64



; ***** INTERRUPT VECTORS ************************************************
INT0addr	= 0x0001	; External Interrupt Request 0
INT1addr	= 0x0002	; External Interrupt Request 1
PCI0addr	= 0x0003	; Pin Change Interrupt Request 0
PCI1addr	= 0x0004	; Pin Change Interrupt Request 1
WDTaddr	= 0x0005	; Watchdog Time-Out Interrupt
ICP1addr	= 0x0006	; Timer/Counter1 Capture Event
OC1Aaddr	= 0x0007	; Timer/Counter1 Compare Match 1A
OC1Baddr	= 0x0008	; Timer/Counter1 Compare Match 1B
OVF1addr	= 0x0009	; Timer/Counter1 Overflow
OC0Aaddr	= 0x000a	; Timer/Counter0 Compare Match 0A
OVF0addr	= 0x000b	; Timer/Counter0 Overflow
LIN_TCaddr	= 0x000c	; LIN Transfer Complete
LIN_ERRaddr	= 0x000d	; LIN Error
SPIaddr	= 0x000e	; SPI Serial Transfer Complete
ADCCaddr	= 0x000f	; ADC Conversion Complete
ERDYaddr	= 0x0010	; EEPROM Ready
ACIaddr	= 0x0022	; Analog Comparator
USI_STARTaddr	= 0x0024	; USI Start
USI_OVFaddr	= 0x0013	; USI Overflow

INT_VECTORS_SIZE	= 30	; size in words


; ***** END OF FILE ******************************************************
