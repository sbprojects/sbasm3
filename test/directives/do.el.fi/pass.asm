# Testing the .DO .EL and .FI directives (should produce no errors)

            .TF     output.hex,hex

# Single condition, multiple inversions of condition

            .DO     1           Condition is true
            .DA     #$12        This line is assembled
            .EL
            .DA     #$21        This line is not assembled
            .EL
            .DA     #$12        This line is assembled
            .EL
Not even the syntax of this line is checked, so it can be anything
            .FI                 End of condition

# Nested conditions

            .DO     1           Condition is true (level 1)
            .DA     #$12        This line is assembled
            .DO     1           Another true condition (level 2)
            .DA     #$12        This line is assembled
            .DO     1           Another true condition (level 3)
            .DA     #$12        This line is assembled
            .DO     0           A false condition (level 4)
            .DA     #$21        This line is not assembled
            .DO     0           Another false condition (level 5)
            .DA     #$21        This line is not assembled
            .EL                 Overall condition remains false
            .DA     #$21        This line is not assembled
            .FI                 Back to level 4
            .DA     #$21        This line is not assembled
            .FI                 Back to level 3 (condition is true again)
            .DA     #$12        This line is assembled
            .FI                 Back to level 2
            .DA     #$12        This line is assembled
            .FI                 Back to level 1
            .DA     #$12        This line is assembled

            .EL                 Make condition false
            .DA     #$21        This line is not assembled
            .DO     1           Level 2, overal condition is false
            .DA     #$21        This line is not assembled
            .EL                 Overall condition remains false
            .DA     #$21        This line is not assembled
            .FI                 Back at level 1. Condition still false
            .DA     #$21        This line is not assemlbed
            .FI                 No more conditionals
            .DA     #$12        All lines from now on are assembled again
