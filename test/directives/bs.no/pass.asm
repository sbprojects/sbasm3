# Testing the .BS and .NO directives (should produce no errors)
                .SF     output

                .CR     6502        A 1 byte per instruction processor

# Let's start with RAM, that's the easiest to test
                .SM     RAM
                .OR     $1000

RAM01           .BS     2
RAM02           .BS     1,$FF
RAM03           .BS     3
RAM04           .BS     16
RAM05
                # Produce some code, makes comparing easier
                .SM     CODE
                .TF     ram.int,int
                .DA     RAM01,RAM02,RAM03,RAM04,RAM05

# Now let's test EERPOM memory. This is not very complicated either

                .SM     EEPROM
                .TF     eeprom.int,int
                .OR     $2000

EEPROM01        .BS     2
EEPROM02        .BS     1
EEPROM03        .BS     3
EEPROM04        .BS     2,$11
EEPROM05        .BS     1,$22
EEPROM06        .BS     3,$33
                .DA     #1          Just a marker
EEPROM07        .BS     16          This is not > line length so it fills
                .DA     #2          Just a marker
EEPROM08        .BS     17          This one is and will just skip
                .DA     #3
EEPROM09        .BS     20,$44      This one fills, because I asked it to
                .DA     #4
                .NO     $3000       Let's do something silly and jump far
EEPROM10        .DA     #5           and store a marker there

# Let's test an unformatted CODE target file, it should always fill

                .SM     CODE
                .TF     unfomratted.hex,hex
                .OR     $3000

HEX01           .BS     2
HEX02           .BS     1
HEX03           .BS     3
HEX04           .BS     2,$11
HEX05           .BS     1,$22
HEX06           .BS     3,$33
                .DA     #1
HEX07           .BS     16
                .DA     #2
HEX08           .BS     17
                .DA     #3
HEX09           .BS     20,$44
                .DA     #4
                .NO     $3100
HEX10           .DA     #5

# Let's test a formatted CODE target file, it should not always fill

                .SM     CODE
                .TF     formatted.int,int
                .OR     $3800

FORM01          .BS     2               Does fill
FORM02          .BS     1               Does fill
FORM03          .BS     3               Does fill
FORM04          .BS     2,$11           Does fill
FORM05          .BS     1,$22           Does fill
FORM06          .BS     3,$33           Does fill
                .DA     #1
FORM07          .BS     16              Does fill
                .DA     #2
FORM08          .BS     17              Does not fill
                .DA     #3
FORM09          .BS     20,$44          Does fill
                .DA     #4
                .NO     $3900           Does not fill
FORM10          .DA     #5

# Finally test the difference between .BS and .NO with
# multi byte instruction sizes
                .TF     avr.int,int
                .OR     $4000           TA starts at double this address
                .CR     avr             Get a 2 byte per instruction Cross
AVR01           .DA     $1111           Just a marker
AVR02           .BS     2               Just two bytes now
AVR03           .BS     1               One byte, with following boundary sync!
AVR04           .BS     3               3 bytes, with following boundary sync!
AVR05           .BS     2,$11           2 bytes
AVR06           .BS     1,$22           1 bytes, with boundary sync
AVR07           .BS     3,$33           3 bytes, with boundary sync
                .BS     2,$44           2 bytes, to be able to check better
AVR08           .BS     16              16 bytes filled (not words)
                .DA     $1113           A marker
AVR09           .BS     17              17 bytes skipped, with boundary sync!
                .EV
AVR10           .DA     $1114           A marker
                .NO     $4100           Now use an absolute address
AVR11           .DA     $1115           A marker


