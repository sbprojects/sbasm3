# Testing the .OR .SM and .TA directives
# This test should not produce errors.
# It will produce two warning though.

            .SF     output

# The .OR directive in combination with unformatted HEX target

            .TF     output.hex,hex
            .OR     $1000               This is allowed, file is still empty
LABEL01     .DA     $1234               These bytes are stored int .TF

# Test the .TA directive in HEX output mode (is useless, but should work)

            .TA     $2000               This should only flush the buffer
            .DA     $ABCD

# Changing the .OR should close the file and give a warning

            .OR     $2000               This will generate a warning
LABEL02     .DA     $5678               These bytes are not stored anywhere

# The .OR directive in combination with unformatted BIN target

            .TF     output.bin,bin
            .OR     $1000               This is allowed, file is still empty
LABEL03     .DA     $1234               These bytes are stored int .TF

# Test the .TA directive in BIN output mode (is useless, but should work)

            .TA     $2000               This should only flush the buffer
            .DA     $ABCD

# Changing the .OR should close the file and give a warning

            .OR     $2000               This will generate a warning
LABEL04     .DA     $5678               These bytes are not stored anywhere

# Multiple .OR directives in combination with formatted target files

            .OR     $3000
            .TF     output.int,int
LABEL05     .DA     $1234               These bytes are stored from address $3000
            .OR     $4000
LABEL06     .DA     $5678               These bytes are stored from address $4000

# Now we're going to change the target address with .TA

            .OR     $5000               We are at address $5000
            .TA     $0000               But we'll store the output from address $0000
LABEL07     .DA     $1234               This label gets address $5000
#                                       The data is stored at $0000 though
            .OR     $6000               This sets program counter and TA to $6000
LABEL08     .DA     $1234               This label gets address $6000

# Now we're going to test the flushing of the target file

            .TA     $5100               This should flush the target file buffer
            .DA     $ABCD

# Now we're going to change the program counter using the .PH directive

            .OR     $7000               Program counter and TA are now $7000
            .PH     $0000               Program counter is now $0000 though
LABEL09     .DA     $1234               Label gets value $0000, bytes are stored from $7000
            .EP                         Back to normal now
LABEL10     .DA     $5678               Both label and data get address $7002 now

            .PH     $1000               Pretend we are writing code for address $1000
            .DA     $1234
            .OR     $8000               This gets everything in sync again from $8000
LABEL11     .DA     $1234

# Finally test the .SM directive

            .SM     RAM                 Select RAM address space
            .OR     $0000
RAM01       .BS     2                   Define a 2 byte RAM space
RAM02       .BS     14                  Define a 14 byte RAM space

            .SM     EEPROM              Select EEPROM address space
            .OR     $0000
            .TF     output.eep,int      Now I have 2 target files open!
EEPROM01    .DA     $1234

            .SM     CODE                Switch back to code memory again
            .OR     $9000               Let's start here in code memory
#                                       The original code memory target file is still open
LABLE12     .DA     $1234

            .SM     RAM                 Let's do some more RAM things
RAM03       .BS     1                   Declare a 1 byte space
RAM04       .BS     3                   Now reserve 3 bytes of space

            .SM     EEPROM              EEPROM once more
EEPROM02    .DA     $5678

            .SM     CODE                And finally some code again
LABEL13     .DA     $5678
