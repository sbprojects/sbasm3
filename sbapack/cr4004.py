# ------------------------------------------------------------------------------
#
#   cr4004.py
#
#   Package module file for the SB-Assembler sbasm
#   See www.sbprojects.net for details
#
#   Author: San Bergmans
#   Date  : 2016-01-02
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
        # Implied addressing mode
        'NOP'  : (Implied, 0x00, '8'),
        'WRM'  : (Implied, 0xE0, '8'),
        'WMP'  : (Implied, 0xE1, '8'),
        'WRR'  : (Implied, 0xE2, '8'),
        'WPM'  : (Implied, 0xE3, '8'),
        'WR0'  : (Implied, 0xE4, '8'),
        'WR1'  : (Implied, 0xE5, '8'),
        'WR2'  : (Implied, 0xE6, '8'),
        'WR3'  : (Implied, 0xE7, '8'),
        'SBM'  : (Implied, 0xE8, '8'),
        'RDM'  : (Implied, 0xE9, '8'),
        'RDR'  : (Implied, 0xEA, '8'),
        'ADM'  : (Implied, 0xEB, '8'),
        'RD0'  : (Implied, 0xEC, '8'),
        'RD1'  : (Implied, 0xED, '8'),
        'RD2'  : (Implied, 0xEE, '8'),
        'RD3'  : (Implied, 0xEF, '8'),
        'CLB'  : (Implied, 0xF0, '8'),
        'CLC'  : (Implied, 0xF1, '8'),
        'IAC'  : (Implied, 0xF2, '8'),
        'CMC'  : (Implied, 0xF3, '8'),
        'CMA'  : (Implied, 0xF4, '8'),
        'RAL'  : (Implied, 0xF5, '8'),
        'RAR'  : (Implied, 0xF6, '8'),
        'TCC'  : (Implied, 0xF7, '8'),
        'DAC'  : (Implied, 0xF8, '8'),
        'TCS'  : (Implied, 0xF9, '8'),
        'STC'  : (Implied, 0xFA, '8'),
        'DAA'  : (Implied, 0xFB, '8'),
        'KBP'  : (Implied, 0xFC, '8'),
        'DCL'  : (Implied, 0xFD, '8'),

        # 4040 only instructions

        'HLT'  : (Implied, 0x01, '0'),
        'BBS'  : (Implied, 0x02, '0'),
        'LCR'  : (Implied, 0x03, '0'),
        'OR4'  : (Implied, 0x04, '0'),
        'OR5'  : (Implied, 0x05, '0'),
        'AN6'  : (Implied, 0x06, '0'),
        'AN7'  : (Implied, 0x07, '0'),
        'DB0'  : (Implied, 0x08, '0'),
        'DB1'  : (Implied, 0x09, '0'),
        'SB0'  : (Implied, 0x0A, '0'),
        'SB1'  : (Implied, 0x0B, '0'),
        'EIN'  : (Implied, 0x0C, '0'),
        'DIN'  : (Implied, 0x0D, '0'),
        'RPM'  : (Implied, 0x0E, '0'),

        # Conditional jumps
        'JCN'  : (Conditional, 0x10, '16'),
        'ISZ'  : (Conditional, 0x70, '16'),

        # Pointer pair with data instructions
        'FIM'  : (PointerData, 0x20, '16'),

        # Pointer pair instructions
        'SRC'  : (Pointer, 0x21, '8'),
        'FIN'  : (Pointer, 0x30, '8'),
        'JIN'  : (Pointer, 0x31, '8'),

        # Absolute addressing
        'JUN'  : (Absolute, 0x40, '16'),
        'JMS'  : (Absolute, 0x50, '16'),

        # Register instructions
        'INC'  : (Register, 0x60, '8'),
        'ADD'  : (Register, 0x80, '8'),
        'SUB'  : (Register, 0x90, '8'),
        'LD'   : (Register, 0xA0, '8'),
        'XCH'  : (Register, 0xB0, '8'),

        # Immediate nibble instructions
        'BBL'  : (ImmediateNibl, 0xC0, '8'),
        'LDM'  : (ImmediateNibl, 0xD0, '8'),

        # Alternative branch instructions
        'JNT'  : (Branch, 0x11, '16'),
        'JC'   : (Branch, 0x12, '16'),
        'JZ'   : (Branch, 0x14, '16'),
        'JT'   : (Branch, 0x19, '16'),
        'JNC'  : (Branch, 0x1A, '16'),
        'JNZ'  : (Branch, 0x1C, '16')
     }

    dec.Asm.Timing_Length = 2

    dec.Asm.Memory = 0              # Select code memory as default

    if dec.Asm.Pass == 1:
        sys.stdout.write('Loaded ' + dec.Cross.Name[2:] +
                         ' overlay version ' + crossversion + dec.EOL)

    dec.Asm.Max_Address = (1 << 12)-1
    dec.Asm.PP_TA_Factor = 1
    dec.Flags.BigEndian = False

    return


# ------------------------------------------------------------------------------

def CrossDirective():

    """
    Nothing to do here.
    """

    return False


# ------------------------------------------------------------------------------

def CrossCleanUp():

    """
    Nothing to do here.
    """

    return


# ------------------------------------------------------------------------------

def CrossMnemonic():

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


# ------------------------------------------------------------------------------

def NoMore():

    """
    A useful function which tests if no more parameters are given when we
    don't expect any more at the end of the operand parsing.
    """

    if assem.MoreParameters():
        errors.DoWarning('extrign', False)


# -----------------------------------------------------------------------------

def Implied():

    """
    Implied addressing mode
    If the insturction time field is 0 it is a 4040 only instruction
    4040 instructions are designated by an instruction time of 0
    All instructions have an instruction time of 8 clock cycles though
    """

    global Asm

    if dec.Cross.Name == 'cr4004':
        # Some of the instuctions are invalid for the 4004
        if dec.Asm.Instructions[dec.Asm.Mnemonic][2] == '0':
            # This is one of them
            errors.DoError('badoper', False)
        else:
            # This is not one of them
            target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1])
            dec.Asm.Timing = '8'
    else:
        # The 4040 knows all instrutions
        target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1])
        dec.Asm.Timing = '8'


# -----------------------------------------------------------------------------

def Conditional():

    """
    Conditional instructions
    reg,dest
    con,dest
    """

    global Asm

    if MissingOperand():
        return

    val = assem.EvalExpr()[0]

    if not assem.MoreParameters():
        errors.DoError('missoper', False)
        return

    dest = assem.EvalExpr()[0]

    if dec.Asm.Pass == 2:
        if (val < 0 or val > 15):
            # Range error
            errors.DoError('range', False)

# !!!! isz on last 2 locations of page causes jump to next page. Strange but
# true according to page 3-42

    target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1] + (val & 15))
    target.CodeByte(dest)
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    NoMore()


# -----------------------------------------------------------------------------

def Branch():

    """
    Branch instructions (test included in mnemonic)
    dest
    """

    global Asm

    if MissingOperand():
        return

    dest = assem.EvalExpr()[0]

# !!!! branch on last 2 locations of page causes jump to next page. Strange
# but true according to page 3-42

    target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1])
    target.CodeByte(dest)
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    NoMore()


# -----------------------------------------------------------------------------

def PointerData():

    """
    Pointer pair with data instructions
    pointer,data
    """

    global Asm

    MissingOperand()

    parsepointer = dec.Asm.Parse_Pointer
    pointer = -1

    pntr = assem.GetWord().upper()
    if len(pntr) == 2 and pntr[1] == "P":
        # It might as well be a poiner pair
        if pntr[0] >= '0' and pntr[0] <= '7':
            # It sure is
            pointer = int(pntr[0]) * 2

    if pointer == -1:
        # It wasn't a pointer, so it must be an expression now
        dec.Asm.Parse_Pointer = parsepointer
        pointer = assem.EvalExpr()[0]

    if not assem.MoreParameters():
        errors.DoError('missoper', False)
        return

    prefix = '#'
    if assem.NowChar() in '#/=\\':
        prefix = assem.NowChar(True)

    value = assem.EvalExpr()

    if prefix == '#':
        val = value[0] & 255
    elif prefix == '/':
        val = (value[0] >> 8) & 255
    elif prefix == '=':
        val = (value[0] >> 16) & 255
    else:
        val = (value[0] >> 24) & 255

    if dec.Asm.Pass == 2:
        # Range check only in pass 2
        if pointer < 0 or pointer > 15 or pointer % 2 == 1:
            # Range error
            errors.DoError('range', False)

    target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1] + pointer)
    target.CodeByte(val)
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    NoMore()


# -----------------------------------------------------------------------------

def Pointer():

    """
    Pointer pair instructions
    PntrPair
    """

    global Asm

    MissingOperand()

    parsepointer = dec.Asm.Parse_Pointer
    pointer = -1

    pntr = assem.GetWord().upper()
    if len(pntr) == 2 and pntr[1] == "P":
        # It might as well be a poiner pair
        if pntr[0] >= '0' and pntr[0] <= '7':
            # It sure is
            pointer = int(pntr[0]) * 2

    if pointer == -1:
        # It wasn't a pointer, so it must be an expression now
        dec.Asm.Parse_Pointer = parsepointer
        pointer = assem.EvalExpr()[0]

    if dec.Asm.Pass == 2:
        # Range check only in pass 2
        if pointer < 0 or pointer > 15 or pointer % 2 == 1:
            # Range error
            errors.DoError('range', False)

    target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1] + pointer)
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    NoMore()

# !!!! fin instruction high nibble of address is same as address of 2nd byte.
# !!!! jin instruction will also jump to next page if jin is at end of page


# -----------------------------------------------------------------------------

def Absolute():

    """
    Absolute addressing mode instructions
    dest
    """

    global Asm

    MissingOperand()

    dest = assem.EvalExpr()[0]

    target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1] + (dest >> 8))
    target.CodeByte(dest)
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    if dec.Asm.Pass == 2:
        # Range check only in pass 2
        if dest < 0 or dest > 4095:
            # Range error
            errors.DoError('range', False)

    NoMore()


# -----------------------------------------------------------------------------

def Register():

    """
    Register instructions
    reg
    """

    global Asm

    if MissingOperand():
        return

    val = assem.EvalExpr()[0]

    target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1] + (val & 15))
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    if dec.Asm.Pass == 2 and (val < 0 or val > 15):
        # Range error
        errors.DoError('range', False)

    NoMore()


# -----------------------------------------------------------------------------

def ImmediateNibl():

    """
    Immediate Nibble instructions (test included in mnemonic)
    data
    """

    global Asm

    if MissingOperand():
        return

    prefix = '#'
    if assem.NowChar() in '#/=\\':
        prefix = assem.NowChar(True)

    value = assem.EvalExpr()

    if prefix == '#':
        val = value[0] & 255
    elif prefix == '/':
        val = (value[0] >> 8) & 255
    elif prefix == '=':
        val = (value[0] >> 16) & 255
    else:
        val = (value[0] >> 24) & 255

    target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1] + (val & 15))
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    NoMore()


# -----------------------------------------------------------------------------

if __name__ == '__main__':
    print("")
    print("This is a python module, it's not a program.")
    print("This module is part of the sbasm package.")
    print("Run sbasm instead.")
    print("")
