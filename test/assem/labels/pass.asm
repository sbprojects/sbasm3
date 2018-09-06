# Testing labels

            .sf     test.sym    Record everything into the symbol table

MACRO       .MA     LEVEL       Test for macro labels and macro names
:MACRO      .EQ     ]1
            .EM

_MACRO      .MA     LEVEL       Another test for macro labels
:MACRO      .EQ     ]1
            .EM

GLOBAL      .EQ     $1          A normal global lable
lower       .EQ     $2          A label with lower case characters
All._1      .EQ     $3          All legal characters
_Under      .EQ     $4          Starting with underscore
COLON:      .EQ     $5          Declaration with a trailing colon

.LOCAL      .EQ     $11         A local label
:MACRO      .EQ     $12         A macro label
.MACRO      .EQ     $12         Same is macro on main level

NEW         .EQ     $20         New global label
.LOCAL      .EQ     $21         A local label
:MACRO      .EQ     $22         A macro label

            .SM     EEPROM      Test memory segment
EEPROM      .EQ     $30
            .SM     RAM
RAM         .EQ     $31
            .SM     CODE
CODE        .EQ     $32

            >MACRO  $41         Test macro labels
            >MACRO  $42
            >_MACRO $43
            >_MACRO $44

            .DA     _UNDER      Reference a label
            .DA     COLON:LOCAL Should be $11
