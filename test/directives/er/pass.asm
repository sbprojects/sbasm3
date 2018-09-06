# Testing the .ER directives (Must produce errors)

            .ER

            .ER     Oops, something went wrong

            .ER     W

            .ER     W,This is a warning, as designed by me

            .ER     F,Wow, a fatal error

Blah, blah, blah. This is not interpreted anymore because the
program terminated because of the previous fatal error.
