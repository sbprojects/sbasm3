# Testing the .RF directive (should produce no errors)

            .TF     random.hex,hex

            .RF     256

            .TF     output.hex,hex

            .RF     256,1000

#           .RF     FORWARD     This one would fail
FORWARD     =       10
