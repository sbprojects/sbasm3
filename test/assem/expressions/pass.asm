# Testing expressions

                .SF     test.sym    Record everything into the symbol table

;-----------------------------------------------------------------------
;  Decimal numbers. One more or less for MAX and MIN1 gives overflow
;-----------------------------------------------------------------------

; Normal notation

DECIMAL_POS     .EQ     1234567890
DECIMAL_NEG     .EQ     -1234567890
DECIMAL_MAX     .EQ     4294967295
DECIMAL_MIN     .EQ     -2147483648
DECIMAL_MIN1    .EQ     -4294967296     Has become positive again

; Alternative notation (should give same results)

DECIMAL_POS     .EQ     1234567890d
DECIMAL_NEG     .EQ     -1234567890d
DECIMAL_MAX     .EQ     4294967295d
DECIMAL_MIN     .EQ     -2147483648d
DECIMAL_MIN1    .EQ     -4294967296d    Has become 0

;-----------------------------------------------------------------------
;  Hexadecimal numbers. One more or less for MAX and MIN1 gives overflow
;-----------------------------------------------------------------------

; Motorola notation

HEX_POS         .EQ     $12345678
HEX_NEG         .EQ     -$9ABCDEF0
HEX_MAX         .EQ     $FFFFFFFF
HEX_MIN         .EQ     -$80000000
HEX_MIN1        .EQ     -$100000000     Has become 0

; Intel notation

HEX_POS         .EQ     12345678h
HEX_NEG         .EQ     -9ABCDEF0h
HEX_MAX         .EQ     0FFFFFFFFh
HEX_MIN         .EQ     -80000000h
HEX_MIN1        .EQ     -100000000h     Has become 0

; C-style notation

HEX_POS         .EQ     0x12345678
HEX_NEG         .EQ     -0x9ABCDEF0
HEX_MAX         .EQ     0xFFFFFFFF
HEX_MIN         .EQ     -0x80000000
HEX_MIN1        .EQ     -0x100000000     Has become 0

;-----------------------------------------------------------------------
;  Octal numbers. One more or less for MAX and MIN1 gives overflow
;-----------------------------------------------------------------------

; Motorola notation

OCTAL_POS       .EQ     @12345670
OCTAL_NEQ       .EQ     -@12345670
OCTAL_MAX       .EQ     @37777777777
OCTAL_MIN       .EQ     @20000000000
OCTAL_MIN1      .EQ     -@40000000000   Has become 0

; Intel notation

OCTAL_POS       .EQ     12345670q
OCTAL_NEQ       .EQ     -12345670q
OCTAL_MAX       .EQ     37777777777q
OCTAL_MIN       .EQ     20000000000q
OCTAL_MIN1      .EQ     -40000000000q   Has become 0

;-----------------------------------------------------------------------
;  Binary numbers. One more or less for MAX and MIN1 gives overflow
;-----------------------------------------------------------------------

; Motorola notation

BIN_POS         .EQ     %1010.1010
BIN_NEG         .EQ     -%1010.1010
BIN_MAX         .EQ     %1111.1111.1111.1111.1111.1111.1111.1111
BIN_MIN         .EQ     -%1000.0000.0000.0000.0000.0000.0000.0000
BIN_MIN1        .EQ     -%1.0000.0000.0000.0000.0000.0000.0000.0000

; Intel notation

BIN_POS         .EQ     10101010b
BIN_NEG         .EQ     -10101010b
BIN_MAX         .EQ     11111111111111111111111111111111b
BIN_MIN         .EQ     -10000000000000000000000000000000b
BIN_MIN1        .EQ     -100000000000000000000000000000000b

;-----------------------------------------------------------------------
;  ASCII Characters
;-----------------------------------------------------------------------

ASCII_1         .EQ     'a
ASCII_2         .EQ     'Z'
ASCII_3         .EQ     "a
ASCII_4         .EQ     "Z"

;-----------------------------------------------------------------------
;  Misc numbers
;-----------------------------------------------------------------------

                .OR     $12345678

AUTOLABEL
CURRENT_LOC1    .EQ     *
CURRENT_LOC2    .EQ     $

PASS            .SE     ?

;-----------------------------------------------------------------------
;  Arithmetic operations
;-----------------------------------------------------------------------

ADD             .EQ     $12345678+$87654321
SUB             .EQ     $12345678-$87654321
MUL             .EQ     $1234*$4321
DIV             .EQ     $12345678/$1234
MOD             .EQ     $12345678\$1234
BITAND          .EQ     $FFFF0000&%1111.0000.1010.0101.1111.0000.1010.0101
BITOR           .EQ     $FFFF0000^%1111.0000.1010.0101.1111.0000.1010.0101
BITOR           .EQ     $FFFF0000|%1111.0000.1010.0101.1111.0000.1010.0101
BITEXOR         .EQ     $FFFF0000!%1111.0000.1010.0101.1111.0000.1010.0101
BITSHIFTLEFT    .EQ     1<<31
BITSHIFTRIGHT   .EQ     $80000000>>31
EQUAL_TRUE      .EQ     $1234=$1234
EQUAL_FALSE     .EQ     $1234=$4321
LESS_TRUE       .EQ     $1234<$4321
LESS_FALSE      .EQ     $4321<$1234
LESS_FALSE      .EQ     $1234<$1234
GREATER_TRUE    .EQ     $4321>$1234
GREATER_FALSE   .EQ     $1234>$4321
GREATER_FALSE   .EQ     $1234>$1234
LE_EQ_TRUE      .EQ     $1234<=$4321
LE_EQ_TRUE      .EQ     $1234<=$1234
LE_EQ_FALSE     .EQ     $4321<=$1234
GR_EQ_TRUE      .EQ     $4321>=$1234
GR_EQ_TRUE      .EQ     $1234>=$1234
GR_EQ_FALSE     .EQ     $1234>=$4321
NOT_EQ_TRUE     .EQ     $1234<>$4321
NOT_EQ_TRUE     .EQ     $1234!=$4321
NOT_EQ_FALSE    .EQ     $1234<>$1234
NOT_EQ_FALSE    .EQ     $1234<>$1234

;-----------------------------------------------------------------------
;  Arithmetic operations
;-----------------------------------------------------------------------

NEGATE1         .EQ     ~$12345678
NEGATE2         .EQ     ~-$1234568
NEGATE3         .EQ     ~5+11
