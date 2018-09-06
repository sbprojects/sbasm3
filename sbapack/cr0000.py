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
import assem
import dec
import errors
import target

crossversion = '3.01.01'
minversion = '3.01.00'


# ------------------------------------------------------------------------------

def Help():

    print('Tell a little story about this cross overlay')


# ------------------------------------------------------------------------------

def CrossInit():

    global Asm, Flags

    assem.CheckVersions(crossversion, minversion)

    dec.Asm.Instructions = {
        # create a dictionary of all mnemonics here.
        # In the from of:
        # 'NOP': (function, (tupple of opcodes), (tupple of instruction times),
        # or
        # 'NOP': (function, opcode, instruction time),
        # The part before : holds the name mnemonic (may only appear once in
        #                   the dictionary).
        # The part behind : holds a tupple holding the handling function
        #                   reference and
        #                   either a tupple of opcodes and a tupple of
        #                   instuction times,
        #                   or a single opcode and a single instruction time.
        # Opcodes are usually given in hex, in which case you can use a
        # simple hex string like 'AB' and let the handle function translate
        # it to a number, or use int('AB',16) translate it directly in the
        # dictionary.
        # Instruction times are usually a simple string holding the
        # instruction time, possibly with two or more values if the
        # instruction time depends on conditions being true or false.
        # Be sure to set the maximum string length of the instruction times
        # in dec.Asm.Timing_Length, otherwise the columns generated in the
        # listfile won't be aligned properly.
    }

    dec.Asm.Timing_Length = 0        # Get actual value in case timing details
    #                                  given

    dec.Asm.Memory = 0               # Select code memory as default
    if dec.Asm.Pass == 1:
        sys.stdout.write('Loaded ' + dec.Cross.Name[2:] +
                         ' overlay version ' + crossversion + dec.EOL)

    dec.Asm.Max_Address = dec.MAX16  # Set actual value for code address space
    dec.Asm.PP_TA_Factor = 1         # Set the actual factor between PP and TA
    dec.Flags.BigEndian = False      # Set actual value

    return


# ------------------------------------------------------------------------------

def CrossDirective():

    # A program line containing a directive is first sent to this routine
    # before the main assembler body will attempt to decode the directive.
    # So we can add extra directives, specific to this cross overlay.
    # Or we can change the behaviour of existing directives.

    # return False if the cross didn't handle the directive passed to it.
    # return True if the cross did handle the directive passed to it.

    return False     # return True if we handled the directive


# ------------------------------------------------------------------------------

def CrossCleanUp():

    # The program is about to end or another cross overlay is about to be
    # loaded into memory.
    # So if there is something to be cleaned up, do it now!

    return


# ------------------------------------------------------------------------------

def CrossMnemonic():

    # Each program line containing a program instruction will be passed to
    # this routine.
    # Use the dec.Asm.Instructions dictionary to find the function which should
    # handle the particular instruction.
    # Issue an error message if the instruction can't be found in the
    # dictionary.
    # The code below will exactly do that.

    global Asm

    if dec.Asm.Mnemonic in dec.Asm.Instructions:
        func = dec.Asm.Instructions[dec.Asm.Mnemonic][0]
        func()
    else:
        errors.DoError('badopco', False)


# -----------------------------------------------------------------------------

def MissingOperand():

    """
    A useful function which raises an error if no operand is given.
    """

    if dec.Asm.Parse_Pointer == 0:
        errors.DoError('missoper', False)
        return True
    else:
        return False


# -----------------------------------------------------------------------------

def NoMore():

    """
    A useful function which tests if no more parameters are given when we
    don't expect any more at the end of the operand parsing.
    """

    if assem.MoreParameters():
        errors.DoWarning('extrign', False)


# -----------------------------------------------------------------------------

if __name__ == '__main__':
    print("")
    print("This is a python module, it's not a program.")
    print("This module is part of the sbasm package.")
    print("Run sbasm instead.")
    print("")

# -----------------------------------------------------------------------------
#   General tips:
#
#   The cross file name should begin with 'cr' and contain only digits
#   and lower case letters.
#   If you want your cross overlay to work on DOS machines don't make the
#   name longer than 8 characters, including the leading 'cr'.
#
#   The functions beginning with Cross are the functions which are called
#   from within the main engine. Don't add any other functions beginning
#   with Cross yourself.
#
#   Pay attention to keep both passes in sync. This means that if no errors
#   are found in pass 1, all instructions in pass 2 must generate exactly
#   the same amount of bytes as they did in pass 1.
#   Especially range errors on forward referenced labels are very tricky.
#   The range on a forward referenced value can not be checked during pass
#   1, thus will never generate an error there. If the range in pass 2 fails
#   be sure to write some dummy bytes to fill the gap, otherwise this one
#   error will trigger possibly hundres of sync errors in the remainder of
#   the program.
#
# -----------------------------------------------------------------------------
