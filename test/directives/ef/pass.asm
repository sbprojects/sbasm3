# Testing the .EF directives (Must produce errors)

            .EF     output

000         This line produces an error, deliberately.
            .DA     12AB        # Wrong decimal format

            .ER     "This is a user generated error."

            And this one is a fatal error!

            As is this one, but this one is not reported
            anymore because the previous one stopped the
            assembler already.
