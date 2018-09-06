# Testing the .DU and .ED directives (should produce no errors)
            .SF     output
            .TF     output.hex,int

            .OR     $1000
LABEL11     .DA     #1          This byte must be saved
            .DU
LABEL12     .DA     #0          This byte must not be saved
LABEL13     .DA     0           This word must not be saved
            .ED
LABEL14     .DA     #-1         Byte stored in wrong location!

            .OR     $2000
LABEL21     .DA     #2          This byte must be saved

            .DU     $3000
LABEL31     .DA     #0          This byte must not be saved
LABEL32     .DA     0           This word must not be saved
            .DU     $4000
LABEL41     .DA     #0          This byte must not be saved
LABEL42     .DA     0           This word must not be saved
            .ED

            .OR     $5000
            .DU          $6000  This address is too far away (optional)
LABEL51     .DA     #1          Therfore this label gets address $5000
            .ED
