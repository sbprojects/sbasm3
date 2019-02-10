# ------------------------------------------------------------------------------
#
#   cr1804.py
#
#   Package module file for the SB-Assembler sbasm
#   See www.sbprojects.net for details
#
#   Author: San Bergmans
#   Date  : 2018-02-16
#
#   Cross Overlay for the RCA1802 micro processor
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

    global Asm, Flags, Error_List

    assem.CheckVersions(crossversion, minversion)

    dec.Asm.Instructions = {

        # Instructions which don't require an operand and are 1 byte long
        'IRX' : (Implied, 0x60, '2'),
        'LDX' : (Implied, 0xF0, '2'),
        'LDXA': (Implied, 0x72, '2'),
        'STXD': (Implied, 0x73, '2'),
        'OR'  : (Implied, 0xF1, '2'),
        'XOR' : (Implied, 0xF3, '2'),
        'AND' : (Implied, 0xF2, '2'),
        'SHR' : (Implied, 0xF6, '2'),
        'SHRC': (Implied, 0x76, '2'),
        'RSHR': (Implied, 0x76, '2'),
        'SHL' : (Implied, 0xFE, '2'),
        'SHLC': (Implied, 0x7E, '2'),
        'RSHL': (Implied, 0x7E, '2'),
        'ADD' : (Implied, 0xF4, '2'),
        'ADC' : (Implied, 0x74, '2'),
        'SD'  : (Implied, 0xF5, '2'),
        'SDB' : (Implied, 0x75, '2'),
        'SM'  : (Implied, 0xF7, '2'),
        'SMB' : (Implied, 0x77, '2'),
        'IDL' : (Implied, 0x00, '*'),
        'NOP' : (Implied, 0xC4, '2'),
        'SEQ' : (Implied, 0x7B, '2'),
        'REQ' : (Implied, 0x7A, '2'),
        'SAV' : (Implied, 0x78, '2'),
        'MARK': (Implied, 0x79, '2'),
        'RET' : (Implied, 0x70, '2'),
        'DIS' : (Implied, 0x71, '2'),

        # Skip instructions (may be the same as branch instructions
        # but this time no operand is required. Used during debugging
        # or clever weaving of code. Skips over the next one or two
        # bytes, which are most likely instructions instead of a
        # destination address.)
        'SKP' : (Implied, 0x38, '2'),
        'LSKP': (Implied, 0xC8, '3'),
        'LSZ' : (Implied, 0xCE, '3'),
        'LSNZ': (Implied, 0xC6, '3'),
        'LSDF': (Implied, 0xCF, '3'),
        'LSNF': (Implied, 0xC7, '3'),
        'LSQ' : (Implied, 0xCD, '3'),
        'LSNQ': (Implied, 0xC5, '3'),
        'LSIE': (Implied, 0xCC, '3'),

        # Unique instructions to the 1804
        'ETQ' : (Implied, 0x6809, '3'),
        'LDC' : (Implied, 0x6806, '3'),
        'GEC' : (Implied, 0x6808, '3'),
        'STPC': (Implied, 0x6800, '3'),
        'DTC' : (Implied, 0x6801, '3'),
        'STM' : (Implied, 0x6807, '3'),
        'SCM1': (Implied, 0x6805, '3'),
        'SCM2': (Implied, 0x6803, '3'),
        'SPM1': (Implied, 0x6804, '3'),
        'SPM2': (Implied, 0x6802, '3'),
        'XIE' : (Implied, 0x680A, '3'),
        'XID' : (Implied, 0x680B, '3'),
        'CIE' : (Implied, 0x680C, '3'),
        'CID' : (Implied, 0x680D, '3'),

        # Instructions which require a register
        'INC' : (RegArg, 0x10, '2'),
        'DEC' : (RegArg, 0x20, '2'),
        'GLO' : (RegArg, 0x80, '2'),
        'PLO' : (RegArg, 0xA0, '2'),
        'GHI' : (RegArg, 0x90, '2'),
        'PHI' : (RegArg, 0xB0, '2'),
        'LDN' : (RegArg, 0x00, '2'),
        'LDA' : (RegArg, 0x40, '2'),
        'STR' : (RegArg, 0x50, '2'),
        'SEP' : (RegArg, 0xD0, '2'),
        'SEX' : (RegArg, 0xE0, '2'),
        'OUT' : (RegArg, 0x60, '2'),        # Second nibble is a dummy
        'INP' : (RegArg, 0x68, '2'),        # Second nibble is a dummy

        # Unique instructions to the 1804
        'RLXA': (RegArg, 0x6860, '5'),
        'RSXD': (RegArg, 0x68A0, '5'),
        'RNX' : (RegArg, 0x68B0, '4'),
        'SCAL': (RegArg, 0x6880, '10'),
        'SRET': (RegArg, 0x6890, '8'),

        # Immediate addressing
        'LDI' : (Immediate, 0xF8, '2'),
        'ORI' : (Immediate, 0xF9, '2'),
        'XRI' : (Immediate, 0xFB, '2'),
        'ANI' : (Immediate, 0xFA, '2'),
        'ADI' : (Immediate, 0xFC, '2'),
        'ADCI': (Immediate, 0x7C, '2'),
        'SDI' : (Immediate, 0xFD, '2'),
        'SDBI': (Immediate, 0x7D, '2'),
        'SMI' : (Immediate, 0xFF, '2'),
        'SMBI': (Immediate, 0x7F, '2'),

        # Unique instructions to the 1804
        'RLDI': (Immediate2, 0x68C0, '5'),

        # Branching
        'BR'  : (Branch, 0x30, '2'),
        'NBR' : (Branch, 0x38, '2'),
        'BZ'  : (Branch, 0x32, '2'),
        'BNZ' : (Branch, 0x3A, '2'),
        'BDF' : (Branch, 0x33, '2'),
        'BPZ' : (Branch, 0x33, '2'),
        'BGE' : (Branch, 0x33, '2'),
        'BNF' : (Branch, 0x3B, '2'),
        'BM'  : (Branch, 0x3B, '2'),
        'BL'  : (Branch, 0x3B, '2'),
        'BQ'  : (Branch, 0x31, '2'),
        'BNQ' : (Branch, 0x39, '2'),
        'B1'  : (Branch, 0x34, '2'),
        'BN1' : (Branch, 0x3C, '2'),
        'B2'  : (Branch, 0x35, '2'),
        'BN2' : (Branch, 0x3D, '2'),
        'B3'  : (Branch, 0x36, '2'),
        'BN3' : (Branch, 0x3E, '2'),
        'B4'  : (Branch, 0x37, '2'),
        'BN4' : (Branch, 0x3F, '2'),

        # Unique instructions to the 1804
        'BCI' : (Branch, 0x683E, '3'),
        'BXI' : (Branch, 0x683F, '3'),

        # Long Branches
        'LBR' : (LongBranch, 0xC0, '3'),
        'NLBR': (LongBranch, 0xC8, '3'),
        'LBZ' : (LongBranch, 0xC2, '3'),
        'LBNZ': (LongBranch, 0xCA, '3'),
        'LBDF': (LongBranch, 0xC3, '3'),
        'LBNF': (LongBranch, 0xCB, '3'),
        'LBQ' : (LongBranch, 0xC1, '3'),
        'LBNQ': (LongBranch, 0xC9, '3')

    }

    dec.Asm.Timing_Length = 4       # Longest timing string

    dec.Asm.Memory = 0              # Select code memory as default
    if dec.Asm.Pass == 1:
        sys.stdout.write('Loaded ' + dec.Cross.Name[2:] + ' overlay version '
                         + crossversion + dec.EOL)

    dec.Asm.Max_Address = dec.MAX16
    dec.Asm.PP_TA_Factor = 1
    dec.Flags.BigEndian = True      # Because of long branch byte order

    return


# ------------------------------------------------------------------------------

def CrossDirective():

    """
    Decided not to have an .OT and .CT directive pair. It's the programmer's
     responsibility to avoid table boundary crossing.
     Boundary crossing is rare enough to do without these directives.
    """

    return False     # return True if we handled the directive


# ------------------------------------------------------------------------------

def CrossCleanUp():

    """
    No need to do any cleaning.
    """

    return


# ------------------------------------------------------------------------------

def CrossMnemonic():

    """
    Find and decode the current mnemonic.
    """
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

def Implied():

    global Asm

    if dec.Asm.Instructions[dec.Asm.Mnemonic][1] > 0xFF:
        # It's a two byte instruction
        target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1] >> 8)
    target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1] & 0xFF)
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]


# -----------------------------------------------------------------------------

def Immediate():

    """
    Immediate operand. May be prefixed by one of the immediate prefixes.
    """

    global Asm

    if MissingOperand():
        return

    prefix = '#'
    if assem.NowChar() in '#/=\\':
        prefix = assem.NowChar(True)

    value = assem.EvalExpr()[0]

    if prefix == '#':
        val = value & 255
    elif prefix == '/':
        val = (value >> 8) & 255
    elif prefix == '=':
        val = (value >> 16) & 255
    else:
        val = (value >> 24) & 255

    target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1])
    target.CodeByte(val)
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    NoMore()


# -----------------------------------------------------------------------------

def Immediate2():

    """
    RLDI instruction with immediate operand.
    First operand is the register to be loaded.
    Second operand is the immediate 16 bit data.
    May be prefixed by one of the immediate prefixes.
    """

    global Asm

    if MissingOperand():
        return

    # Get register
    register = assem.EvalExpr()[0]

    if dec.Asm.Pass == 2:
        # Don't check range in pass 1 as label may be forward referenced
        if register < 0 or register > 15:
            register = 0

    if not assem.MoreParameters():
        errors.DoError('missoper', False)
        return

    prefix = '#'
    if assem.NowChar() in '#/=\\':
        prefix = assem.NowChar(True)

    value = assem.EvalExpr()[0]

    if prefix == '#':
        val = value & 0xFFFF
    elif prefix == '/':
        val = (value >> 8) & 0xFFFF
    elif prefix == '=':
        val = (value >> 16) & 0xFFFF
    else:
        val = (value >> 24) & 0xFFFF

    target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1] >> 8)
    target.CodeByte((dec.Asm.Instructions[dec.Asm.Mnemonic][1] & 0xFF) + register)
    target.CodeByte(val >> 8)
    target.CodeByte(val & 0xFF)
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    NoMore()


# -----------------------------------------------------------------------------

def RegArg():

    """
    Expecting a register as parameter.
    A valid range from 0 to 15 is only checked in pass 2.
    """

    global Asm

    if MissingOperand():
        return

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1]
    if opcode > 0xFF:
        # It's a two byte opcode
        target.CodeByte(opcode >> 8)
        opcode = opcode & 0xFF
    value = assem.EvalExpr()[0]

    if dec.Asm.Pass == 2:
        # Don't check range in pass 1 as label may be forward referenced
        if value < 0 or value > 15:
            value = 0
            errors.DoError('range', False)

        if value == 0 and opcode == 0:
            # LDN 0 is not allowed
            errors.DoError('range', False)

        if opcode == 0x60 or opcode == 0x68:
            # OUT and INP instruction have a restricted range
            if value < 1 or value > 7:
                value = 0
                errors.DoError('range', False)

    target.CodeByte(opcode + value)
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    NoMore()


# -----------------------------------------------------------------------------

def Branch():

    """
    Branching is simply done by copying the second byte of the instruction
    to PCL. Therefore the destination is always on the same page as the second
    byte of the branch instruction.
    """

    global Asm

    if MissingOperand():
        return

    value = assem.EvalExpr()[0]

    if dec.Asm.Instructions[dec.Asm.Mnemonic][1] > 0xFF:
        # It's a 2 byte instruction
        target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1] >> 8)
        offset = 2
    else:
        offset = 1

    if dec.Asm.Pass == 2:
        # Don't check range in pass 1 as label may be forward referenced
        page = (dec.Asm.BOL_Address + offset) >> 8
        destpage = value >> 8
        if page != destpage:
            # Destination not on the same page
            errors.DoError('range', False)

    target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1])
    target.CodeByte(value)
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    NoMore()


# -----------------------------------------------------------------------------

def LongBranch():

    """
    A long branch simply copies the two operand bytes to the program counter
    when the condition is true. Then the program continues from there.
    MSB comes before LSB, making it a big endian machine.
    """

    global Asm

    if MissingOperand():
        return

    value = assem.EvalExpr()[0]

    target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1])
    target.CodeByte(value >> 8)
    target.CodeByte(value)
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    NoMore()


# -----------------------------------------------------------------------------

if __name__ == '__main__':
    print("")
    print("This is a python module, it's not a program.")
    print("This module is part of the sbasm package.")
    print("Run sbasm instead.")
    print("")
