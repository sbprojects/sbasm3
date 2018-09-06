# Testing the .MA .EM and .XM directives (should produce no errors, will give a warning)

            .TF     output.hex,hex

# Preferred notation
MACRO1      .MA     P1,P2,P3,P4,P5,P6,P7,P8,P9,P10
            .DA     #]1
            .DA     #]2
            .DA     #]3
            .DA     #]4
            .DA     #]5
            .DA     #]6
            .DA     #]7
            .DA     #]8
            .DA     #]9
            .DA     #]0
            .EM

            >MACRO1 1,2,3,4,5,6,7,8,9,10

# Apple ][ compatible notation
# And nesting Macro expansion
            .MA     MACRO2  P1,P2,P3,P4
             >MACRO1 1,2,3,4,5,6,7,8,9,0
            .DA     #$]1
            .DA     #$]2
            .DA     #$]3
            .DA     #$]4
            .EM

            >MACRO2 A, B, C, D

# Conditional .XM test
MACRO3      .MA     1 to 3 parameters are expeted
            .DA     #]1
            .XM     ]#=1
            .DA     #]2
            .XM     ]#=2
            .DA     #]3
            .EM

            >MACRO3 10
            >MACRO3 10,20
            >MACRO3 10,20,30

# Unconditional .XM test
MACRO4      .MA     FLAG
            .DA     #1
            .DO     ]1!=0
            .DA     #2
            .FI
            .EM

            >MACRO4 0
            >MACRO4 1

            .EM                 This gives a warning
