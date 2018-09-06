;*************************************************************************
;* A P P L I C A T I O N   N O T E   F O R   T H E   A V R   F A M I L Y
;* 
;* Number            : AVR000
;* File Name         : "tn11def.asm"
;* Title             : Register/Bit Definitions for the ATtiny11
;* Date              : 2011-02-09
;* Version           : 2.35
;* Support E-mail    : avr@atmel.com
;* Target MCU        : ATtiny11
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
;device ATtiny11

SIGNATURE_000	= 0x1e
SIGNATURE_001	= 0x90
SIGNATURE_002	= 0x04

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
WDTCR	= 0x21
PORTB	= 0x18
DDRB	= 0x17
PINB	= 0x16
ACSR	= 0x08


; ***** BIT DEFINITIONS **************************************************

; ***** ANALOG_COMPARATOR ************
; ACSR - Analog Comparator Control And Status Register
ACIS0	= 0	; Analog Comparator Interrupt Mode Select bit 0
ACIS1	= 1	; Analog Comparator Interrupt Mode Select bit 1
ACIE	= 3	; Analog Comparator Interrupt Enable
ACI	= 4	; Analog Comparator Interrupt Flag
ACO	= 5	; Analog Comparator Output
ACD	= 7	; Analog Comparator Disable


; ***** EXTERNAL_INTERRUPT ***********
; GIMSK - General Interrupt Mask Register
PCIE	= 5	; Pin Change Interrupt Enable
INT0	= 6	; External Interrupt Request 0 Enable

; GIFR - General Interrupt Flag register
PCIF	= 5	; Pin Change Interrupt Flag
INTF0	= 6	; External Interrupt Flag 0


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
SM	= 4	; Sleep Mode
SE	= 5	; Sleep Enable

; MCUSR - MCU Status register
PORF	= 0	; Power-On Reset Flag
EXTRF	= 1	; External Reset Flag



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
E2END	= 0x0000
EEPROMEND	= 0x0000





; ***** INTERRUPT VECTORS ************************************************
INT0addr	= 0x0001	; External Interrupt 0
PCI0addr	= 0x0002	; External Interrupt Request 0
OVF0addr	= 0x0003	; Timer/Counter0 Overflow
ACIaddr	= 0x0004	; Analog Comparator

INT_VECTORS_SIZE	= 5	; size in words



; ***** END OF FILE ******************************************************
