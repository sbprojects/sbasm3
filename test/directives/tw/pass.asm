# Testing the .TW directive (should produce no errors)

                .TW     /Do nothing, no target file opened yet."

                .SM     CODE
                .TF     output.hex,int
                .AS     /Testing/
                .TW     #$7C,/Testing/,#$7C,/Testing/,#$7C
                .AS     /Testing|/

                .SM     RAM
                .TW     /This simply gets lost because there is no target file./

                .SM     EEPROM
                .TF     eeprom.hex,int
                .HS     0102030405060708
                .TW     /Testing/
                .HS     0102030405060708
