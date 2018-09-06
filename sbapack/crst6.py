# ------------------------------------------------------------------------------
#
#   crst6.py
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
        'NOP'   : (Inherent, 0x04, '2'),
        'RET'   : (Inherent, 0xCD, '2'),
        'RETI'  : (Inherent, 0x4D, '2'),
        'STOP'  : (Inherent, 0x6D, '2'),
        'WAIT'  : (Inherent, 0xED, '2'),

        #                DATA  A    X    Y    V    W    (X)  (Y)
        'CLR': (Single, ('0DXX00', 'DFFF', '0D8000', '0D8100', '0D8200',
                         '0D8300', '', ''),
                ('4', '4', '4', '4', '4', '4', '4', '4')),
        'COM': (Single, ('', '2D', '', '', '', '', '', ''),
                ('0', '4', '0', '0', '0', '0', '0', '0')),
        'DEC': (Single, ('FFXX', 'FFFF', '1D', '5D', '9D', 'DD', 'E7', 'EF'),
                ('4', '4', '4', '4', '4', '4', '4', '4')),
        'DEC': (Single, ('FFXX', 'FFFF', '1D', '5D', '9D', 'DD', 'E7', 'EF'),
                ('4', '4', '4', '4', '4', '4', '4', '4')),
        'INC': (Single, ('7FXX', '7FFF', '15', '55', '95', 'D5', '67', '6F'),
                ('4', '4', '4', '4', '4', '4', '4', '4')),
        'RLC': (Single, ('', 'AD', '', '', '', '', '', ''),
                ('0', '4', '0', '0', '0', '0', '0', '0')),
        'SLA': (Single, ('', '5FFF', '', '', '', '', '', ''),
                ('0', '4', '0', '0', '0', '0', '0', '0')),

        'ADD': (Math, ('5FXX', '5FFF', '5F80', '5F81', '5F82', '5F83',
                       '47', '4F'),
                ('4', '4', '4', '4', '4', '4', '4', '4')),
        'AND': (Math, ('BFXX', 'BFFF', 'BF80', 'BF81', 'BF82', 'BF83',
                       'A7', 'AF'),
                ('4', '4', '4', '4', '4', '4', '4', '4')),
        'CP' : (Math, ('3FXX', '3FFF', '3F80', '3F81', '3F82', '3F83',
                       '27', '2F'),
                ('4', '4', '4', '4', '4', '4', '4', '4')),
        'SUB': (Math, ('DFXX', 'DFFF', 'DF80', 'DF81', 'DF82', 'DF83',
                       'C7', 'CF'),
                ('4', '4', '4', '4', '4', '4', '4', '4')),

        #                      DATA, A, X, Y, V, W
        'ADDI'  : (Immediate, ('', '57', '', '', '', ''),
                              ('0', '4', '0', '0', '0', '0')),
        'ANDI'  : (Immediate, ('', 'B7', '', '', '', ''),
                              ('0', '4', '0', '0', '0', '0')),
        'CPI'   : (Immediate, ('', '37', '', '', '', ''),
                              ('0', '4', '0', '0', '0', '0')),
        'LDI'   : (Immediate, ('0DXX', '17', '0D80', '0D81', '0D82', '0D83'),
                              ('4', '4', '4', '4', '4', '4')),
        'SUBI'  : (Immediate, ('', 'D7', '', '', '', ''),
                              ('0', '4', '0', '0', '0', '0')),

        #                      DATA, A, X, Y, V, W, (X), (Y)
        #                      First tupple A,reg
        #                      Second tupple reg,A
        'LD' : (LDInst, ('1FXX', '1FFF', '35', '75', 'B5', 'F5', '07', '0F'),
                ('9FXX', '9FFF', '3D', '7D', 'BD', 'FD', '87', '8F')),

        'JRC'   : (Branch, 0x06, '2'),
        'JRNC'  : (Branch, 0x02, '2'),
        'JRNZ'  : (Branch, 0x00, '2'),
        'JRZ'   : (Branch, 0x04, '2'),

        'JRR'   : (BitTest, 0x03, '5'),
        'JRS'   : (BitTest, 0x13, '5'),

        'CALL'  : (Extended, 0x01, '4'),
        'JP'    : (Extended, 0x09, '4'),

        'RES'   : (BitInst, 0x0B, '4'),
        'SET'   : (BitInst, 0x1B, '4')

    }

    dec.Asm.Timing_Length = 1

    dec.Asm.Memory = 0              # Select code memory as default
    if dec.Asm.Pass == 1:
        sys.stdout.write('Loaded ' + dec.Cross.Name[2:] + ' overlay version '
                         + crossversion + dec.EOL)

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

    target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1])
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]


# -----------------------------------------------------------------------------

def Single():

    global Asm

    if MissingOperand():
        return

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1]
    timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    value = GetReg()

    if len(opcode[value[0]]) == 0:
        errors.DoError('badoper', False)
        return

    for i in range(0, len(opcode[value[0]]), 2):
        byte = opcode[value[0]][i:i+2]
        if byte == 'XX':
            target.CodeByte(value[1])
        else:
            target.CodeByte(int(byte, 16))

    dec.Asm.Timing = timing[value[0]]

    NoMore()


# -----------------------------------------------------------------------------

def Math():

    global Asm

    if MissingOperand():
        return

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1]
    timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    if assem.GetWord().upper() != 'A':
        errors.DoError('badoper', False)
        return

    if not assem.MoreParameters():
        errors.DoError('missoper', False)
        return

    value = GetReg()

    for i in range(0, len(opcode[value[0]]), 2):
        byte = opcode[value[0]][i:i+2]
        if byte == 'XX':
            target.CodeByte(value[1])
        else:
            target.CodeByte(int(byte, 16))

    dec.Asm.Timing = timing[value[0]]

    NoMore()


# -----------------------------------------------------------------------------

def Immediate():

    global Asm

    if MissingOperand():
        return

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1]
    timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    dest = GetReg()

    if dest[0] > 5:
        errors.DoError('badoper', False)
        return

    if len(opcode[dest[0]]) == 0:
        errors.DoError('badoper', False)
        return

    if not assem.MoreParameters():
        errors.DoError('missoper', False)
        return

    if assem.NowChar() in '#/=\\':
        prefix = assem.NowChar(True)
    else:
        prefix = '#'

    value = assem.EvalExpr()

    for i in range(0, len(opcode[dest[0]]), 2):
        byte = opcode[dest[0]][i:i+2]
        if byte == 'XX':
            target.CodeByte(dest[1])
        else:
            target.CodeByte(int(byte, 16))

    if prefix == '#':
        data = value[0]
    elif prefix == '/':
        data = value[0] >> 8
    elif prefix == '=':
        data = value[0] >> 16
    else:
        data = value[0] >> 24

    target.CodeByte(data)

    dec.Asm.Timing = timing[dest[0]]

    NoMore()


# -----------------------------------------------------------------------------

def LDInst():

    global Asm

    if MissingOperand():
        return

    register1 = GetReg()

    if not assem.MoreParameters():
        errors.DoError('missoper', False)
        return

    register2 = GetReg()

    if register1[0] == 1:
        # First operand is the Accumulator
        opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1]
        value = register2
    elif register2[0] == 1:
        # First operand was other register, second operand must be Accumulator
        opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][2]
        value = register1
    else:
        errors.DoError('badoper', False)
        return

    for i in range(0, len(opcode[value[0]]), 2):
        byte = opcode[value[0]][i:i+2]
        if byte == 'XX':
            target.CodeByte(value[1])
        else:
            target.CodeByte(int(byte, 16))

    dec.Asm.Timing = '4'

    NoMore()


# -----------------------------------------------------------------------------

def Branch():

    global Asm

    if MissingOperand():
        return

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1]

    value = assem.EvalExpr()

    offset = value[0] - dec.Asm.BOL_Address - 1

    if dec.Asm.Pass == 2 and (offset < -16 or offset > 15):
        errors.DoError('range', False)

    offset = (offset & 31) << 3

    target.CodeByte(opcode + offset)
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    NoMore()


# -----------------------------------------------------------------------------

def BitTest():

    global Asm

    if MissingOperand():
        return

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1]

    bitno = assem.EvalExpr()[0]

    if dec.Asm.Pass == 2 and (bitno > 7 or bitno < 0):
        assem.DoError('range', False)
        bitno = bitno & 7

    if not assem.MoreParameters():
        errors.DoError('missoper', False)
        return

    datareg = GetReg()
    if datareg[0] > 5:
        assem.DoError('badoper', False)

    datareg = datareg[1]

    if not assem.MoreParameters():
        errors.DoError('missoper', False)
        return

    offset = assem.EvalExpr()[0] - dec.Asm.BOL_Address - 2

    if dec.Asm.Pass == 2 and (offset < -128 or offset > 127):
        errors.DoError('range', False)

    target.CodeByte(opcode + BitSwap(bitno))
    target.CodeByte(datareg)
    target.CodeByte(offset)

    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    NoMore()


# -----------------------------------------------------------------------------

def BitInst():

    global Asm

    if MissingOperand():
        return

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1]

    bitno = assem.EvalExpr()[0]

    if dec.Asm.Pass == 2 and (bitno > 7 or bitno < 0):
        assem.DoError('range', False)
        bitno = bitno & 7

    if not assem.MoreParameters():
        errors.DoError('missoper', False)
        return

    datareg = GetReg()
    if datareg[0] > 5:
        assem.DoError('badoper', False)

    datareg = datareg[1]

    target.CodeByte(opcode + BitSwap(bitno))
    target.CodeByte(datareg)

    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    NoMore()


# -----------------------------------------------------------------------------

def BitSwap(bits):

    """
    Bit instructions must have their bit order reversed and shifted 5 left.
    """

    swaptable = (0, 128, 64, 192, 32, 160, 96, 224)

    return swaptable[bits]


# -----------------------------------------------------------------------------

def Extended():

    global Asm

    if MissingOperand():
        return

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1]
    value = assem.EvalExpr()

    if dec.Asm.Pass == 2 and (value[0] >> 12) != 0:
        errors.DoError('range', False)

    dest1 = (value[0] >> 4) & 255
    dest2 = (value[0] & 15) << 4

    target.CodeByte(opcode + dest2)
    target.CodeByte(dest1)
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    NoMore()


# -----------------------------------------------------------------------------

def GetReg():

    global Asm

    pointer = dec.Asm.Parse_Pointer

    register = assem.GetWord().upper()

    if register == 'A':
        return (1, 0xFF)
    elif register == "X":
        return (2, 0x80)
    elif register == "Y":
        return (3, 0x81)
    elif register == "V":
        return (4, 0x82)
    elif register == "W":
        return (5, 0x83)
    elif register == "(X)":
        return (6, 0)
    elif register == "(Y)":
        return (7, 0)
    else:
        dec.Asm.Parse_Pointer = pointer
        value = assem.EvalExpr()[0]
        if dec.Asm.Pass == 2 and (value > 255 or value < 0):
            errors.DoError('range', False)
            value = value & 255

        return (0, value)


# -----------------------------------------------------------------------------

if __name__ == '__main__':
    print("")
    print("This is a python module, it's not a program.")
    print("This module is part of the sbasm package.")
    print("Run sbasm instead.")
    print("")
