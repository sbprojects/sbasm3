# Testing the .AS .AT and .AZ directives (should produce no errors)

        .OR     $1000
        .TF     output.hex,hex

        .AS     /abcdefghijklmnopqrstuvwxyz/
        .AT     /abcdefghijklmnopqrstuvwxyz/
        .AZ     /abcdefghijklmnopqrstuvwxyz/

        .AS     -/abcdefghijklmnopqrstuvwxyz/
        .AT     -/abcdefghijklmnopqrstuvwxyz/
        .AZ     -/abcdefghijklmnopqrstuvwxyz/

        .AS     #$7F,/test/,#$0D
        .AT     #$7F,/test/,#$0D
        .AZ     #$7F,/test/,#$0D

        .AS     -#$7f,/test/,#$0D
        .AT     -#$7f,/test/,#$0D
        .AZ     -#$7f,/test/,#$0D

        .AS     "Escaped \" quote and \\ backslash"
        .AT     "Escaped \" quote and \\ backslash"
        .AZ     "Escaped \" quote and \\ backslash"

