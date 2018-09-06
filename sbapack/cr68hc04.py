# ------------------------------------------------------------------------------
#
#   cr6804.py
#
#   Package module file for the SB-Assembler sbasm
#   See www.sbprojects.net for details
#
#   Author: San Bergmans
#   Date  : 2015-12-21
#
#   This cross overlay will handle the assembling of 6804
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
        'ASLA'  : (Inherent, 0xFAFF, '4'),
        'CLRA'  : (Inherent, 0xFBFF, ''),
        'CLRX'  : (Inherent, 0xB08000, '4'),
        'CLRY'  : (Inherent, 0xB08100, '4'),
        'CLX'   : (Inherent, 0xB08000, '4'),
        'CLY'   : (Inherent, 0xB08100, '4'),
        'COMA'  : (Inherent, 0xB4, '4'),
        'DECA'  : (Inherent, 0xFFFF, '4'),
        'DECX'  : (Inherent, 0xB8, '4'),
        'DECY'  : (Inherent, 0xB9, '4'),
        'DEX'   : (Inherent, 0xB8, '4'),
        'DEY'   : (Inherent, 0xB9, '4'),
        'INCA'  : (Inherent, 0xFEFF, '4'),
        'INCX'  : (Inherent, 0xA8, '4'),
        'INCY'  : (Inherent, 0xA9, '4'),
        'INX'   : (Inherent, 0xA8, '4'),
        'INY'   : (Inherent, 0xA9, '4'),
        'NOP'   : (Inherent, 0x20, '2'),
        'ROLA'  : (Inherent, 0xB5, '4'),
        'RTI'   : (Inherent, 0xB2, '2'),
        'RTS'   : (Inherent, 0xB3, '2'),
        'TAX'   : (Inherent, 0xBC, '1'),
        'TAY'   : (Inherent, 0xBD, '1'),
        'TXA'   : (Inherent, 0xAC, '1'),
        'TYA'   : (Inherent, 0xAD, '1'),

        # HC spcecific instructions

        'STOP'  : (Inherent, 0xB6, '2'),
        'WAIT'  : (Inherent, 0xB7, '2'),

        'BCC'   : (Branch, 0x40, '2'),
        'BCS'   : (Branch, 0x60, '2'),
        'BEQ'   : (Branch, 0x20, '2'),
        'BNE'   : (Branch, 0x00, '2'),
        'BHS'   : (Branch, 0x40, '2'),
        'BLO'   : (Branch, 0x60, '2'),

        'JMP'   : (Jumps, 0x90, '4'),
        'JSR'   : (Jumps, 0x80, '4'),

        'LDA'   : (Multiple, (0xE8, 0xAC, 0xF8, 0xE0), ('4', '4', '4', '4')),
        'STA'   : (Multiple, (0x00, 0xBC, 0xF9, 0xE1), ('', '4', '4', '4')),
        'ADD'   : (Multiple, (0xEA, 0x00, 0xFA, 0xE2), ('4', '', '4', '4')),
        'SUB'   : (Multiple, (0xEB, 0x00, 0xFB, 0xE3), ('4', '', '4', '4')),
        'CMP'   : (Multiple, (0xEC, 0x00, 0xFC, 0xE4), ('4', '', '4', '4')),
        'AND'   : (Multiple, (0xED, 0x00, 0xFD, 0xE5), ('4', '', '4', '4')),
        'INC'   : (Multiple, (0x00, 0xA8, 0xFE, 0xE6), ('', '4', '4', '4')),
        'DEC'   : (Multiple, (0x00, 0xB8, 0xFF, 0xE7), ('', '4', '4', '4')),
        'LDXI'  : (Multiple, (0xB080, 0x00, 0x00, 0x00), ('4', '', '', '')),
        'LDYI'  : (Multiple, (0xB081, 0x00, 0x00, 0x00), ('4', '', '', '')),
        'LDX'   : (Multiple, (0xB080, 0x00, 0x00, 0x00), ('4', '', '', '')),
        'LDY'   : (Multiple, (0xB081, 0x00, 0x00, 0x00), ('4', '', '', '')),

        'MVI'   : (Move, 0xB0, '4'),

        'BCLR'  : (Bits, 0xD0, '4'),
        'BSET'  : (Bits, 0xD8, '4'),
        'BRCLR' : (Bits, 0xC0, '5'),
        'BRSET' : (Bits, 0xC8, '5')

    }

    dec.Asm.Timing_Length = 1

    dec.Asm.Memory = 0              # Select code memory as default
    if dec.Asm.Pass == 1:
        sys.stdout.write('Loaded ' + dec.Cross.Name[2:] +
                         ' overlay version ' + crossversion + dec.EOL)

    dec.Asm.Max_Address = (1 << 12)-1
    dec.Asm.PP_TA_Factor = 1
    dec.Flags.BigEndian = True

    return


# ------------------------------------------------------------------------------

def CrossDirective():

    return False     # No extra directives


# ------------------------------------------------------------------------------

def CrossCleanUp():

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


# -----------------------------------------------------------------------------


def NoMore():

    """
    A useful function which tests if no more parameters are given when we
    don't expect any more at the end of the operand parsing.
    """

    if assem.MoreParameters():
        errors.DoWarning('extrign', False)


# -----------------------------------------------------------------------------

def Inherent():

    global Asm

    Code(dec.Asm.Instructions[dec.Asm.Mnemonic][1])
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]


# -----------------------------------------------------------------------------

def Branch():

    global Asm

    if MissingOperand():
        return

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1]

    value = assem.EvalExpr()[0]

    offset = value - dec.Asm.BOL_Address - 1

    if dec.Asm.Pass == 2 and (offset < -16 or offset > 15):
        errors.DoError('range', False)

    offset = (offset & 31)

    target.CodeByte(opcode + offset)
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    NoMore()


# -----------------------------------------------------------------------------

def Jumps():

    global Asm

    if MissingOperand():
        return

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1]
    value = assem.EvalExpr()[0]

    if dec.Asm.Pass == 2 and (value >> 12) != 0:
        errors.DoError('range', False)

    target.CodeByte(opcode + ((value >> 8) & 15))
    target.CodeByte(value)
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    NoMore()


# -----------------------------------------------------------------------------

def Multiple():

    global Asm

    if MissingOperand():
        return

    if assem.NowChar() in '#/=\\':
        # It is direct addressing mode
        prefix = assem.NowChar(True)
        opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][0]
        if opcode == 0:
            errors.DoError('badoper', False)
            return

        value = assem.EvalExpr()[0]
        if prefix == '/':
            value = value >> 8
        elif prefix == '=':
            value = value >> 16
        elif prefix == '\\':
            value = value >> 24

        Code(opcode)
        target.CodeByte(value)
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][0]

    elif assem.NowChar() == ',':
        # It is an indexed addressing mode

        assem.MoreParameters()

        index = assem.GetWord().upper()

        opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][3]

        if opcode == 0:
            errors.DoError('badoper', False)
            return

        if index == 'Y':
            opcode = opcode + 16
        elif index != 'X':
            errors.DoError('badoper', False)
            return

        Code(opcode)
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][3]

    else:
        # short or direct mode
        if assem.NowChar() in '<>':
            prefix = assem.NowChar(True)
        else:
            prefix = ''

        param = dec.Asm.Parse_Line[dec.Asm.Parse_Pointer:
                                   dec.Asm.Parse_Pointer+2].upper()

        if param in ('A ', 'X ', 'Y '):
            assem.NowChar(True)
            if param == 'A ':
                value = (255, False)
            elif param == 'X ':
                value = (128, False)
            else:
                value = (129, False)
        else:
            value = assem.EvalExpr()

        if dec.Asm.Instructions[dec.Asm.Mnemonic][1][1] == 0:
            # We've got no choise, short mode simply doesn't exit
            short = False
        elif prefix == '<':
            # Use short mode, even if it doesn't fit
            short = True
            if dec.Asm.Pass == 2 and (value[0] < 128 or value[0] > 131):
                errors.DoError('range', False)
        elif value[1] or prefix == '>':
            # forward referenced label used or prefix was >
            short = False
        elif value[0] < 128 or value[0] > 131:
            # Target is not within range, use long mode
            short = False
        else:
            # Phwe, we can use short mode at last
            short = True

        if short:
            opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][1]
            opcode = opcode + (value[0] & 3)
            Code(opcode)
            dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][1]
        else:
            opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][2]
            if opcode == 0:
                errors.DoError('badoper', False)
                return
            Code(opcode)
            target.CodeByte(value[0])
            dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][2]

        if dec.Asm.Pass == 2 and (value[0] < 0 or value[0] > 255):
            errors.DoError('range', False)

    NoMore()


# -----------------------------------------------------------------------------
def Move():

    global Asm

    if MissingOperand():
        return

    param = dec.Asm.Parse_Line[dec.Asm.Parse_Pointer:dec.Asm.Parse_Pointer+2]\
        .upper()

    if param in ('A,', 'X,', 'Y,'):
        assem.NowChar(True)
        if param == 'A,':
            dest = 255
        elif param == 'X,':
            dest = 128
        else:
            dest = 129
    else:
        dest = assem.EvalExpr()[0]

    if not assem.MoreParameters():
        # We expected more parameters
        errors.DoError('missoper', False)
        return

    prefix = assem.NowChar(True)

    if prefix not in '#/=\\':
        errors.DoError('badoper', False)
        return

    value = assem.EvalExpr()[0]

    if prefix == '/':
        value = value >> 8
    elif prefix == '=':
        value = value >> 16
    elif prefix == '\\':
        value = value >> 24

    Code(dec.Asm.Instructions[dec.Asm.Mnemonic][1])
    target.CodeByte(dest)
    target.CodeByte(value)

    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    if dest < 0 or dest > 255:
        errors.DoError('range', False)

    NoMore()


# -----------------------------------------------------------------------------

def Bits():

    """
    Handle Bit instructions
    Both bit set/clr as well as branch bit set/clr instructions are handled
    by this routine.
    """

    global Asm

    if MissingOperand():
        return

    bitno = assem.EvalExpr()[0]
    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1] + ((bitno & 7))
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    if not assem.MoreParameters():
        # We expected more parameters
        errors.DoError('missoper', False)
        return

    param = dec.Asm.Parse_Line[dec.Asm.Parse_Pointer:dec.Asm.Parse_Pointer+2]\
        .upper()

    if param in ('A,', 'X,', 'Y,', 'A ', 'X ', 'Y '):
        assem.NowChar(True)
        if param[0] == 'A':
            mem = 255
        elif param[0] == 'X':
            mem = 128
        else:
            mem = 129
    else:
        mem = assem.EvalExpr()[0]

    if dec.Asm.Mnemonic[1] == 'R':
        # It's a branch instruction
        if not assem.MoreParameters():
            # We expected more parameters
            errors.DoError('missoper', False)
            return
        dest = assem.EvalExpr()[0]
        offset = dest - dec.Asm.BOL_Address - 3

        target.CodeByte(opcode)
        target.CodeByte(mem)
        target.CodeByte(offset)
        if dec.Asm.Pass == 2 and (offset < -128 or offset > +127):
            errors.DoError('range', False)

    else:
        # It wasn't a branch instruction
        target.CodeByte(opcode)
        target.CodeByte(mem)

    if dec.Asm.Pass == 2:
        if (bitno < 0 or bitno > 7) or (mem < 0 or mem > 255):
            errors.DoError('range', False)

    NoMore()


# -----------------------------------------------------------------------------

def Code(opcode):

    """
    Write an opcode to the target file.
    If the opcode > 255 then a pre-byte must be saved first
    """

    if (opcode >> 16) != 0:
        target.CodeByte(opcode >> 16)
        target.CodeByte(opcode >> 8)
    elif opcode > 255:
        target.CodeByte(opcode >> 8)
    target.CodeByte(opcode)


# -----------------------------------------------------------------------------

if __name__ == '__main__':
    print("")
    print("This is a python module, it's not a program.")
    print("This module is part of the sbasm package.")
    print("Run sbasm instead.")
    print("")
