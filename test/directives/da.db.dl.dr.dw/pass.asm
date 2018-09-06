# Testing the .DA .DB .DL .DR and .DW directives (should produce no errors)

            .TF     output.hex,hex

LONG_INT    =       $12345678

            .CR     6502            A little endian processor

            .DA     LONG_INT        Only store the 2 LSBs
            .DA     #LONG_INT       Only store the LSB
            .DA     /LONG_INT       Only store the 2nd LSB
            .DA     =LONG_INT       Only store the 2nd MSB
            .DA     \LONG_INT       Only store the MSB
            .DA     LONG_INT,#1,#2,#3,#4

            .DB     LONG_INT        Only store the LSB
            .DB     0x12,0x34       Store these two bytes
            .DB     "Test"          Store a string of bytes
            .DB     "Test",0DH,0AH  Store a string and two bytes

            .DL     LONG_INT        Store the entire long integer
            .DL     #LONG_INT       Store only the two LSBs
            .DL     /LONG_INT       Store only the tow middle bytes
            .DL     =LONG_INT       Store only the two MSBs
            .DL     \LONG_INT       Store 0 and the MBS
            .DL     LONG_INT,#LONG_INT  Mixed sizes on one line

            .DR     LONG_INT        Only store the 2 LSBs
            .DR     #LONG_INT       Only store the LSB
            .DR     /LONG_INT       Only store the 2nd LSB
            .DR     =LONG_INT       Only store the 2nd MSB
            .DR     \LONG_INT       Only store the MSB
            .DR     LONG_INT,#1,#2,#3,#4

            .DW     0x1234          A normal word
            .DW     LONG_INT        Only the two LSBs are stored
            .DW     1234H,5678H     Storing multiple words

            .CR     6800            A big endian processor

            .DA     LONG_INT        Only store the 2 LSBs
            .DA     #LONG_INT       Only store the LSB
            .DA     /LONG_INT       Only store the 2nd LSB
            .DA     =LONG_INT       Only store the 2nd MSB
            .DA     \LONG_INT       Only store the MSB
            .DA     LONG_INT,#1,#2,#3,#4

            .DB     LONG_INT        Only store the LSB
            .DB     0x12,0x34       Store these two bytes
            .DB     "Test"          Store a string of bytes
            .DB     "Test",0DH,0AH  Store a string and two bytes

            .DL     LONG_INT        Store the entire long integer
            .DL     #LONG_INT       Store only the two LSBs
            .DL     /LONG_INT       Store only the tow middle bytes
            .DL     =LONG_INT       Store only the two MSBs
            .DL     \LONG_INT       Store 0 and the MBS
            .DL     LONG_INT,#LONG_INT  Mixed sizes on one line

            .DR     LONG_INT        Only store the 2 LSBs
            .DR     #LONG_INT       Only store the LSB
            .DR     /LONG_INT       Only store the 2nd LSB
            .DR     =LONG_INT       Only store the 2nd MSB
            .DR     \LONG_INT       Only store the MSB
            .DR     LONG_INT,#1,#2,#3,#4

            .DW     0x1234          A normal word
            .DW     LONG_INT        Only the two LSBs are stored
            .DW     1234H,5678H     Storing multiple words
