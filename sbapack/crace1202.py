# ------------------------------------------------------------------------------
#
#   crace1202.py
#
#   Package module file for the SB-Assembler sbasm
#   See www.sbprojects.net for details
#
#   Author: San Bergmans
#   Date  : 2015-12-21
#
#   This cross overlay will handle the assembling of ace1202
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
        'IFC' : (Inherent, 0x19, '1'),
        'IFNC': (Inherent, 0x1F, '1'),
        'INTR': (Inherent, 0x00, '5'),
        'INVC': (Inherent, 0x12, '1'),
        'NOP' : (Inherent, 0x1C, '1'),
        'RC'  : (Inherent, 0x1E, '1'),
        'RET' : (Inherent, 0x17, '5'),
        'RETI': (Inherent, 0x18, '5'),
        'SC'  : (Inherent, 0x1D, '1'),

        'JP': (Relative, 0xC0, '1'),

        'JMP': (Jumps, (0x24, 0x7E), ('4', '3')),
        'JSR': (Jumps, (0x23, 0x7F), ('5', '3')),

        'CLR': (Singles, (0x16, 0x0F, 0x7D), ('1', '1', '2')),
        'DEC': (Singles, (0x1A, 0x0C, 0x7B), ('1', '1', '2')),
        'INC': (Singles, (0x1B, 0x0D, 0x7C), ('1', '1', '2')),
        'RLC': (Singles, (0x15, 0x00, 0x79), ('1', '', '2')),
        'RRC': (Singles, (0x13, 0x00, 0x7A), ('1', '', '2')),

        'ADC' : (Multiple, (0x60, 0x42, 0x02, 0x70, 0x00, 0x00, 0x00),
                 ('2', '2', '1', '3', '', '', '')),
        'ADD' : (Multiple, (0x66, 0x43, 0x03, 0x71, 0x00, 0x00, 0x00),
                 ('2', '2', '1', '3', '', '', '')),
        'AND' : (Multiple, (0x61, 0x50, 0x04, 0x72, 0x00, 0x00, 0x00),
                 ('2', '2', '1', '3', '', '', '')),
        'IFEQ': (Multiple, (0x65, 0x56, 0x09, 0x76, 0x26, 0x20, 0x00),
                 ('2', '2', '1', '2', '3', '3', '')),
        'IFGT': (Multiple, (0x67, 0x55, 0x0A, 0x77, 0x27, 0x00, 0x00),
                 ('2', '2', '1', '2', '3', '', '')),
        'IFLT': (Multiple, (0x00, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00),
                 ('', '', '', '', '3', '', '')),
        'IFNE': (Multiple, (0x57, 0x54, 0x0B, 0x78, 0x00, 0x00, 0x00),
                 ('2', '2', '1', '2', '', '', '')),
        'LD'  : (Multiple, (0x51, 0x46, 0x0E, 0x52, 0x25, 0x21, 0x22),
                 ('2', '2', '1', '3', '3', '3', '3')),
        'OR'  : (Multiple, (0x62, 0x44, 0x05, 0x73, 0x00, 0x00, 0x00),
                 ('2', '2', '1', '3', '', '', '')),
        'ST'  : (Multiple, (0x00, 0x47, 0x11, 0x40, 0x00, 0x00, 0x00),
                 ('', '2', '2', '3', '', '', '')),
        'SUBC': (Multiple, (0x63, 0x53, 0x06, 0x74, 0x00, 0x00, 0x00),
                 ('2', '2', '1', '3', '', '', '')),
        'XOR' : (Multiple, (0x64, 0x45, 0x07, 0x75, 0x00, 0x00, 0x00),
                 ('2', '2', '1', '3', '', '', '')),

        'IFBIT': (Bits, (0xA0, 0x58, 0x00), ('1', '2', '')),
        'LDC'  : (Bits, (0x00, 0x80, 0x00), ('', '2', '')),
        'RBIT' : (Bits, (0x00, 0x68, 0xB8), ('', '2', '2')),
        'SBIT' : (Bits, (0x00, 0x48, 0xB0), ('', '2', '2')),
        'STC'  : (Bits, (0x00, 0x88, 0x00), ('', '2', ''))

    }

    dec.Asm.Timing_Length = 1

    dec.Asm.Memory = 0              # Select code memory as default
    if dec.Asm.Pass == 1:
        sys.stdout.write('Loaded ' + dec.Cross.Name[2:] +
                         ' overlay version ' + crossversion + dec.EOL)

    dec.Asm.Max_Address = (1 << 12) - 1
    dec.Asm.PP_TA_Factor = 1
    dec.Flags.BigEndian = False

    dec.Ace_Maxjmp = 0x0FFF
    dec.Ace_Minjmp = 0x0800

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

def Relative():

    global Asm

    if MissingOperand():
        return

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1]

    value = assem.EvalExpr()[0]

    offset = value - dec.Asm.BOL_Address - 1

    if dec.Asm.Pass == 2 and (offset < -32 or offset > 31):
        errors.DoError('range', False)

    if dec.Asm.Pass == 2:
        if offset < 0:
            offset = offset * -1
        else:
            opcode = opcode + 32
    else:
        offset = 0

    offset = (offset & 63)

    target.CodeByte(opcode + offset)
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    NoMore()


# -----------------------------------------------------------------------------

def Jumps():

    """
    Jump instructions
    - Absolute
    - [#,X]
    """

    global Asm

    if MissingOperand():
        return

    if assem.NowChar() == '[':
        # Should be [#,X] now
        assem.IncParsePointer()
        opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][1]
        if opcode == 0:
            errors.DoError('badoper', False)
            return
        else:
            if assem.NowChar() == '#':
                # Ignore leading #
                assem.IncParsePointer()
            value = assem.EvalExpr()[0]
            target.CodeByte(opcode)
            target.CodeByte(value)
            dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][1]
            if not assem.MoreParameters():
                errors.DoError('missoper', False)
            if dec.Asm.Parse_Line[dec.Asm.Parse_Pointer:dec.Asm.Parse_Pointer +
                                  3].upper() != 'X] ':
                errors.DoError('badoper', False)
            return

    else:
        # Must be absolute now
        dest = assem.EvalExpr()[0]
        target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1][0])
        target.CodeWord(dest)
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][1]

        if dec.Asm.Pass == 2 and (dest < dec.Ace_Minjmp or dest >
                                  dec.Ace_Maxjmp):
            errors.DoError('range', False)

    NoMore()


# -----------------------------------------------------------------------------

def Multiple():

    """
    Multiple operand instructions
    - #
    - Direct
    - [X]
    - [#,X]
    - X,#
    - Direct,#
    - Direct,Direct
    """

    global Asm

    if MissingOperand():
        return

    param = dec.Asm.Parse_Line[dec.Asm.Parse_Pointer:dec.Asm.Parse_Pointer+2]\
        .upper()

    if param == 'A,':
        # First operand is A
        assem.NowChar(True)
        assem.MoreParameters()

        if assem.NowChar() in '#/=\\':
            # It is direct mode
            opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][0]
            if opcode == 0:
                errors.DoError('badoper', False)
            else:
                prefix = assem.NowChar(True)

                value = assem.EvalExpr()[0]

                if prefix == '/':
                    value = value >> 8
                elif prefix == '=':
                    value = value >> 16
                elif prefix == '\\':
                    value = value >> 24

                target.CodeByte(opcode)
                target.CodeByte(value)
                dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][0]

        elif assem.NowChar() == '[':
            # It's some kind of indexed mode
            assem.IncParsePointer()

            param = dec.Asm.Parse_Line[dec.Asm.Parse_Pointer:
                                       dec.Asm.Parse_Pointer+2].upper()
            if param == 'X]':
                # Non offset indexed mode
                opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][2]
                if opcode == 0:
                    errors.DoError('badoper', False)
                else:
                    target.CodeByte(opcode)
                    dec.Asm.Timing =\
                        dec.Asm.Instructions[dec.Asm.Mnemonic][2][2]
                    dec.Asm.Parse_Pointer = dec.Asm.Parse_Pointer + 2
            else:
                # Must be offset indexed mode
                opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][3]
                if opcode == 0:
                    errors.DoError('badoper', False)
                else:
                    if assem.NowChar() == '#':
                        # Ignore leading #
                        assem.IncParsePointer()
                    value = assem.EvalExpr()[0]
                    target.CodeByte(opcode)
                    target.CodeByte(value)
                    dec.Asm.Timing =\
                        dec.Asm.Instructions[dec.Asm.Mnemonic][2][3]
                    if not assem.MoreParameters():
                        errors.DoError('missoper', False)
                    if dec.Asm.Parse_Line[dec.Asm.Parse_Pointer:dec.Asm.
                                          Parse_Pointer+3].upper() != 'X] ':
                        errors.DoError('badoper', False)
                    return
        else:
            # Second parameter must be direct mode
            opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][1]
            if opcode == 0:
                errors.DoError('badoper', False)
            else:
                value = assem.EvalExpr()[0]
                target.CodeByte(opcode)
                target.CodeByte(value)
                dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][1]
                if dec.Asm.Pass == 2 and (value < 0 or value > 255):
                    errors.DoError('range', False)

    elif param == 'X,':
        # First operand is X
        assem.NowChar(True)
        assem.MoreParameters()
        opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][4]
        if opcode == 0:
            errors.DoError('badoper', False)
        else:
            prefix = assem.NowChar(True)

            value = assem.EvalExpr()[0]

            if prefix == '/':
                value = value >> 8
            elif prefix == '=':
                value = value >> 16
            elif prefix == '\\':
                value = value >> 24

            target.CodeByte(opcode)
            target.CodeWord(value)
            dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][4]

    else:
        # Must be direct mode

        parm1 = assem.EvalExpr()[0]

        if not assem.MoreParameters():
            errors.DoError('missoper', False)

        if assem.NowChar() in '#/=\\':
            # Second parameter is immediate
            opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][5]
            if opcode == 0:
                errors.DoError('badoper', False)
            else:
                prefix = assem.NowChar(True)
                parm2 = assem.EvalExpr()[0]

                if prefix == '/':
                    parm2 = parm2 >> 8
                elif prefix == '=':
                    parm2 = parm2 >> 16
                elif prefix == '\\':
                    parm2 = parm2 >> 24

                if dec.Asm.Pass == 2 and (parm1 < 0 or parm1 > 255):
                    errors.DoError('range', False)
                target.CodeByte(opcode)
                target.CodeByte(parm1)
                target.CodeByte(parm2)
                dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][5]

        else:
            # Second operand should be direct now
            opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][6]
            if opcode == 0:
                errors.DoError('badoper', False)
            else:
                parm2 = assem.EvalExpr()[0]
                if dec.Asm.Pass == 2 and (parm1 < 0 or parm1 > 255 or
                                          parm2 < 0 or parm2 > 255):
                    errors.DoError('range', False)
                target.CodeByte(opcode)
                target.CodeByte(parm2)
                target.CodeByte(parm1)
                dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][6]

    NoMore()


# -----------------------------------------------------------------------------

def Singles():

    """
    Single operand instructions
    - A
    - X
    - Direct
    """

    global Asm

    if MissingOperand():
        return

    param = dec.Asm.Parse_Line[dec.Asm.Parse_Pointer:dec.Asm.Parse_Pointer+2]\
        .upper()

    if param == 'A ':
        # A mode
        target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1][0])
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][0]
    elif param == 'X ':
        # X mode
        opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][1]
        if opcode != 00:
            target.CodeByte(opcode)
            dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][1]
        else:
            errors.DoError('badoper', False)

    else:
        # Must be direct mode now
        value = assem.EvalExpr()[0]

        target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1][2])
        target.CodeByte(value)
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][2]

        if dec.Asm.Pass == 2 and (value < 0 or value > 255):
            errors.DoError('range', False)

        NoMore()


# -----------------------------------------------------------------------------
def Bits():

    """
    Bit instructions
    - A
    - Direct
    - [X]
    """

    global Asm

    if MissingOperand():
        return

    if assem.NowChar() == '#':
        # This is optional
        assem.IncParsePointer()

    bit = assem.EvalExpr()[0]

    if not assem.MoreParameters():
        errors.DoError('missoper', False)
        return

    param = dec.Asm.Parse_Line[dec.Asm.Parse_Pointer:dec.Asm.Parse_Pointer+2]\
        .upper()

    if param == 'A ':
        # Second operand is A
        opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][0]
        if opcode == 0:
            errors.DoError('badoper', False)
            return
        else:
            assem.IncParsePointer()
            target.CodeByte(opcode + bit)
            dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][0]

    elif assem.NowChar() == '[':
        # Secnd parameter should be [X]
        opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][2]
        if opcode == 0:
            errors.DoError('badoper', False)
            return
        else:
            assem.GetWord()
            target.CodeByte(opcode + bit)
            dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][2]

    else:
        # Second parameter is Direct
        direct = assem.EvalExpr()[0]
        opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][1]
        target.CodeByte(opcode + bit)
        target.CodeByte(direct)
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][1]

        if dec.Asm.Pass == 2 and (direct < 0 or direct > 255):
            errors.DoError('range', False)

    if dec.Asm.Pass == 2 and (bit < 0 or bit > 7):
        errors.DoError('range', False)

    NoMore()


# -----------------------------------------------------------------------------

if __name__ == '__main__':
    print("")
    print("This is a python module, it's not a program.")
    print("This module is part of the sbasm package.")
    print("Run sbasm instead.")
    print("")
