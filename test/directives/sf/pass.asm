# Testing the .SF directives (should produce no errors)


            .SF     output


LABEL1      .EQ     $1234
BBBB        .EQ     $200
.LOCAL      .EQ     $20         Version 3 lists local labels too
AAAA        .EQ     $140
.LOCAL      .EQ     $14         Local labels can be re-used

            .DA     #LABEL1
            .DA     /LABEL1     This label is referenced twice now

            .DA     #AAAA       This label is referenced only once
            .DA     #AAAA:LOCAL   as is this one

;           Labels BBBB and BBBB:LOCAL are not refereced at all

            .SM     RAM         Generate a label in RAM memory
RAM         .EQ     1
            .SM     EEPROM      Generate a label in EEPROM memory
EEPROM      .EQ     2
            .SM     CODE        This one is on code memory again
CODE        .EQ     3

            .MA     TEST        Macros are not listed in .SF
:MACROLABEL
            .EM

GLOBAL_LABEL

            >TEST               Macro labels are not listed either
