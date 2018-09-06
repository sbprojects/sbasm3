# Main tests

            .OR     $1000

            .CO
LABEL1      This label is not assigned
            because this is all a comment block.
#           Starting a comment line doesn't affect this
;           no matter what comment symbol is used.
#           .EC     This line is comment, and therefore ignored

            .DA     $1234       This is still acomment
            .EC

LABEL_X     .DA     LABEL2      Now we're talkking again

LABEL2      .CO                 A label can be assigned
See if .CO mode ends when the file ends.
