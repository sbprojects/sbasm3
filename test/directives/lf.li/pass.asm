# Testing the .LF and .LI directives (should produce no errors)

            .LF     output1

MACRO       .MA
            .DA     0
            .DO     1
            .DA     #0              This line is assembled
            .EL
            .DA     #-1             This line is not assembled
            .FI
            .EM

            .LI     OFF             This line is not listed
            .DA     $1234           This line is not listed
            .LI     ON              List everything again
            .DA     $5678

            .LI     MOFF
            >MACRO                  This line is listed, the expanding macro isn't

            .LI     MON
            >MACRO                  This line is listed, as is the expanding macro

            .LI     COFF
            >MACRO                  This line is listed, as is the expanding macro
            .LI     CON

            .CR     6502            We need a Cross Overlay for the next test
            .LI     TOFF
            LDA     #0              Timing is not listed
            .LI     TON
            LDA     #0              Timing is listed again

            .LI     ON,MON,CON,TON  All flags at once

            .LF
            .DA     #0              Will be listed to the screen again

            .LF     output2,64
# This line will be truncated because the maximum line length is 64 characters.
