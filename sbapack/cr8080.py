# ------------------------------------------------------------------------------
#
#   cr8080.py
#
#   Package module file for the SB-Assembler sbasm
#   See www.sbprojects.net for details
#
#   Author: San Bergmans
#   Date  : 2015-12-21
#
#   8080 Cross Overlay
#
# ------------------------------------------------------------------------------

import sys
import os

import cr8085


# ------------------------------------------------------------------------------

def Help():

    print('Tell a little story about this cross overlay')


# ------------------------------------------------------------------------------

def CrossInit():

    return cr8085.CrossInit()


# ------------------------------------------------------------------------------

def CrossDirective():

    return cr8085.CrossDirective()


# ------------------------------------------------------------------------------

def CrossCleanUp():

    cr8085.CrossCleanUp()


# ------------------------------------------------------------------------------

def CrossMnemonic():

    cr8085.CrossMnemonic()


# -----------------------------------------------------------------------------

if __name__ == '__main__':
    print("")
    print("This is a python module, it's not a program.")
    print("This module is part of the sbasm package.")
    print("Run sbasm instead.")
    print("")
