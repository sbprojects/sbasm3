# ------------------------------------------------------------------------------
#
#   cr0000.py
#
#   Package module file for the SB-Assembler sbasm
#   See www.sbprojects.net for details
#
#   Author: San Bergmans
#   Date  : 2015-12-21
#
#   Cross Overlay Template
#
# ------------------------------------------------------------------------------

import sys
import os

import cr4004

crossversion = '3.01.01'
minversion = '3.01.00'


# ------------------------------------------------------------------------------

def Help():

    print('Tell a little story about this cross overlay')


# ------------------------------------------------------------------------------

def CrossInit():

    cr4004.CrossInit()


# ------------------------------------------------------------------------------

def CrossDirective():

    cr4004.CrossDirective()


# ------------------------------------------------------------------------------

def CrossCleanUp():

    cr4004.CrossCleanUp()


# ------------------------------------------------------------------------------

def CrossMnemonic():

    cr4004.CrossMnemonic()


# ------------------------------------------------------------------------------

if __name__ == '__main__':
    print("")
    print("This is a python module, it's not a program.")
    print("This module is part of the sbasm package.")
    print("Run sbasm instead.")
    print("")
