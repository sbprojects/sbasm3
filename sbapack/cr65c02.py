# ------------------------------------------------------------------------------
#
#   cr65c02.py
#
#   Package module file for the SB-Assembler sbasm
#   See www.sbprojects.net for details
#
#   Author: San Bergmans
#   Date  : 2015-12-21
#
#   65c02 Cross Overlay
#
# ------------------------------------------------------------------------------

import sys
import os

import cr6502


# ------------------------------------------------------------------------------

def Help():

    print('Tell a little story about this cross overlay')


# ------------------------------------------------------------------------------

def CrossInit():

    return cr6502.CrossInit()


# ------------------------------------------------------------------------------

def CrossDirective():

    return cr6502.CrossDirective()


# ------------------------------------------------------------------------------

def CrossCleanUp():

    cr6502.CrossCleanUp()


# ------------------------------------------------------------------------------

def CrossMnemonic():

    cr6502.CrossMnemonic()


# -----------------------------------------------------------------------------

if __name__ == '__main__':
    print("")
    print("This is a python module, it's not a program.")
    print("This module is part of the sbasm package.")
    print("Run sbasm instead.")
    print("")
