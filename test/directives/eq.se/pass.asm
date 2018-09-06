# Testing the = .EQ and .SE directives (should produce no errors)

            .SF     output.sym
            .TF     output.hex,hex

LABEL       .EQ     $1234       Assign a constant value to LABEL
CR          .EQ     $0D         Assign the Carriage Return to CR
POINTER     .EQ     $50,$51     Assign the value $50 to POINTER,
;                                 the rest is treated as comment
NEW         .EQ     LABEL+2     LABEL is already defined
ALT         =       $ABCD       = symbol is equivalent to .EQ
BIG         .EQ     $123456     Number larger than 16-bits
.LOCAL      .EQ     $654321     Local labels are OK too
VERYBIG     .EQ     $12345678   And even larger (up to 32 bits)
.LOCAL      .EQ     $87654321   Local labels are unique to global label

LABEL       .EQ     $1234       Extra definition with same value

VARIABLE    .SE     1           This value can be changed
            .DA     #VARIABLE
VARIABLE    .SE     2           See. Variables are not listed in .SF
            .DA     #VARIABLE
