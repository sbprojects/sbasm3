# ------------------------------------------------------------------------------
#
#   help.py
#
#   Package module file for the SB-Assembler sbasm
#   See www.sbprojects.net for details
#
#   Author: San Bergmans
#   Date  : 2015-12-21
#
#   All help functions go into this file.
#
# ------------------------------------------------------------------------------

import sys
import os

import dec


# ------------------------------------------------------------------------------

def DoHelp(helptext):

    print("")
    print("Sorry, help is not implemented yet.")
    print("")

    sys.exit(dec.ERRLVL_OK)


# -----------------------------------------------------------------------------

if __name__ == '__main__':
    print("")
    print("This is a python module, it's not a program.")
    print("This module is part of the sbasm package.")
    print("Run sbasm instead.")
    print("")
