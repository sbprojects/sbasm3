# Testing the .CH and .IN directives (should produce no errors)

            .TF     output.hex,hex

            .IN     include1        File name without extension
            .IN     include1.asm    File name with extension
            .CH     chained         Behaves like .IN in the main file
            .IN     include2
            .DA     #0
