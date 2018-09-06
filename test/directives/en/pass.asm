# Testing the .EN directive (should produce no errors)

            .TF     output.hex,hex

            .DA     #1          This line is assembled

            .EN

            .DA     #2          This one isn't

Better said, everything after .EN is ignored. They are
not even listed.
