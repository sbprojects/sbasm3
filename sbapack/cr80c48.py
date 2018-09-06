# ------------------------------------------------------------------------------
#
#   cr80c48.py
#
#   Package module file for the SB-Assembler sbasm
#   See www.sbprojects.net for details
#
#   Author: San Bergmans
#   Date  : 2015-12-21
#
#   Cross Overlay for the 80C48 family of processors
#
# ------------------------------------------------------------------------------

import sys
import os

import assem
import dec
import errors
import target
import cr8048

crossversion = '3.01.01'
minversion = '3.01.00'


# ------------------------------------------------------------------------------

def Help():

    print('Tell a little story about this cross overlay')


# ------------------------------------------------------------------------------

def CrossInit():

    global Asm

    cr8048.CrossInit()
    # This is the only difference between the 8048 and the 80C48
    dec.Asm.Instructions['HALT'] = (cr8048.Implied, 0x01, '1')
    dec.Asm.Instructions['IDL'] = (cr8048.Implied, 0x01, '1')


# ------------------------------------------------------------------------------

def CrossDirective():

    return cr8048.CrossDirective()


# ------------------------------------------------------------------------------

def CrossCleanUp():

    """
    Close any open talbes and check for boundary crossings.
    """

    cr8048.DirCT()

    return


# ------------------------------------------------------------------------------

def CrossMnemonic():

    cr8048.CrossMnemonic()


# -----------------------------------------------------------------------------

if __name__ == '__main__':
    print("")
    print("This is a python module, it's not a program.")
    print("This module is part of the sbasm package.")
    print("Run sbasm instead.")
    print("")
