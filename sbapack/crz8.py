# ------------------------------------------------------------------------------
#
#   crz8.py
#
#   Package module file for the SB-Assembler sbasm
#   See www.sbprojects.net for details
#
#   Author: San Bergmans
#   Date  : 2015-12-21
#
#   Cross Overlay for the Z8 family of processors
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
        'LD'  : (Load,),

        'ADC' : (Math, (0x12, 0x13, 0x14, 0x15, 0x16, 0x17),
                 ('6', '6', '10', '10', '10', '10')),
        'ADD' : (Math, (0x02, 0x03, 0x04, 0x05, 0x06, 0x07),
                 ('6', '6', '10', '10', '10', '10')),
        'AND' : (Math, (0x52, 0x53, 0x54, 0x55, 0x56, 0x57),
                 ('6', '6', '10', '10', '10', '10')),
        'CP'  : (Math, (0xA2, 0xA3, 0xA4, 0xA5, 0xA6, 0xA7),
                 ('6', '6', '10', '10', '10', '10')),
        'SBC' : (Math, (0x32, 0x33, 0x34, 0x35, 0x36, 0x37),
                 ('6', '6', '10', '10', '10', '10')),
        'SUB' : (Math, (0x22, 0x23, 0x24, 0x25, 0x26, 0x27),
                 ('6', '6', '10', '10', '10', '10')),
        'TCM' : (Math, (0x62, 0x63, 0x64, 0x65, 0x66, 0x67),
                 ('6', '6', '10', '10', '10', '10')),
        'OR'  : (Math, (0x42, 0x43, 0x44, 0x45, 0x46, 0x47),
                 ('6', '6', '10', '10', '10', '10')),
        'TM'  : (Math, (0x72, 0x73, 0x74, 0x75, 0x76, 0x77),
                 ('6', '6', '10', '10', '10', '10')),
        'XOR' : (Math, (0xB2, 0xB3, 0xB4, 0xB5, 0xB6, 0xB7),
                 ('6', '6', '10', '10', '10', '10')),

        'CLR' : (Single, (0xB0, 0xB1), ('6', '6')),
        'COM' : (Single, (0x60, 0x61), ('6', '6')),
        'DA'  : (Single, (0x40, 0x41), ('8', '8')),
        'DEC' : (Single, (0x00, 0x01), ('6', '6')),
        'INC' : (Single, (0x20, 0x21), ('6', '6')),  # One special opcode for r
        'RL'  : (Single, (0x90, 0x91), ('6', '6')),
        'RLC' : (Single, (0x10, 0x11), ('6', '6')),
        'RR'  : (Single, (0xE0, 0xE1), ('6', '6')),
        'RRC' : (Single, (0xC0, 0xC1), ('6', '6')),
        'SRA' : (Single, (0xD0, 0xD1), ('6', '6')),
        'SWAP': (Single, (0xF0, 0xF1), ('6', '6')),
        'POP' : (Single, (0x50, 0x51), ('10', '10')),
        'PUSH': (Single, (0x70, 0x71), ('10+', '10')),
        'SRP' : (Single, (0x31,), ('6',)),
        'DECW': (SingleW, (0x80, 0x81), ('10', '10')),
        'INCW': (SingleW, (0xA0, 0xA1), ('10', '10')),

        'CCF' : (Implied, 0xEF, '6'),
        'DI'  : (Implied, 0x8F, '6'),
        'EI'  : (Implied, 0x9F, '6'),
        'HALT': (Implied, 0x7F, '6'),
        'IRET': (Implied, 0xBF, '16'),
        'NOP' : (Implied, 0xFF, '6'),
        'RCF' : (Implied, 0xCF, '6'),
        'RET' : (Implied, 0xAF, '14'),
        'SCF' : (Implied, 0xDF, '6'),
        'STOP': (Implied, 0x6F, '6'),
        'WDH' : (Implied, 0x4F, '6'),
        'WDT' : (Implied, 0x5F, '6'),

        'DJNZ': (Branch, 10, '10+'),
        'JR'  : (Branch, 11, '10+'),

        'CALL': (Jumps, (0xD6, 0xD4), ('20', '20')),
        'JP'  : (Jumps, (0x8D, 0x30), ('12', '8')),

        'LDC' : (Memory, (0xC2, 0xD2), ('12', '12')),
        'LDCI': (Memory, (0xC3, 0xD3), ('18', '18')),
        'LDE' : (Memory, (0x82, 0x92), ('12', '12')),
        'LDEI': (Memory, (0x83, 0x93), ('18,' '18'))

        }

    dec.Asm.Memory = 0
    length = 0

    dec.Asm.Timing_Length = 3

    if dec.Asm.Pass == 1:
        sys.stdout.write('Loaded ' + dec.Cross.Name[2:] +
                         ' overlay version ' + crossversion + dec.EOL)

    dec.Asm.Max_Address = dec.MAX16
    dec.Asm.PP_TA_Factor = 1
    dec.Flags.BigEndian = True

    dec.Asm.Z8rp = 0

    return


# ------------------------------------------------------------------------------

def CrossDirective():

    # This cross overlay has one extra directive

    if len(dec.Asm.Mnemonic) > 1:
        directive = dec.Asm.Mnemonic[1:3].upper()
    else:
        directive = dec.Asm.Mnemonic

    if directive == 'RP':
        DirRP()
        return True

    return False    # We didn't handle any directives


# ------------------------------------------------------------------------------

def CrossCleanUp():

    # This cross overlay does not need any clean up

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

    if dec.Asm.Parse_Pointer == 0:
        errors.DoError('missoper', False)
        return True
    else:
        return False


# -----------------------------------------------------------------------------


def NoMore():

    if assem.MoreParameters():
        errors.DoWarning('extrign', False)


# -----------------------------------------------------------------------------

def Implied():

    global Asm

    target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1])
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]


# -----------------------------------------------------------------------------

def Load():

    global Asm

    if MissingOperand():
        return

    reg1 = GetReg()

    if dec.Flags.ErrorInLine:
        # An error was found in parameter 1, no need to continue
        return

    if not assem.MoreParameters():
        errors.DoError('missoper', False)
        return

    reg2 = GetReg()

    if dec.Flags.ErrorInLine:
        # An error was found in parameter 1, no need to continue
        return

    if reg2[0] == '#':
        # It's some form of immediate mode
        if reg1[0] == 'r':
            target.CodeByte((reg1[1] << 4) + 12)
            target.CodeByte(reg2[1])
            dec.Asm.Timing = '6'
        elif reg1[0] == 'R':
            target.CodeByte(0xE6)
            target.CodeByte(reg1[1])
            target.CodeByte(reg2[1])
            dec.Asm.Timing = '10'
        elif reg1[0] == '@R' or reg1[0] == '@r':
            target.CodeByte(0xE7)
            target.CodeByte(reg1[1])
            target.CodeByte(reg2[1])
            dec.Asm.Timing = '10'
        else:
            errors.DoError('badoper', False)

    elif reg1[0] == 'r':
        # First operand is a 4-bit register
        if reg2[0] == 'r' or reg2[0] == 'R':
            # Second is a 4 or 8 bit register
            target.CodeByte((reg1[1] << 4) + 8)
            target.CodeByte(reg2[1])
            dec.Asm.Timing = '6'
        elif reg2[0] == '@r':
            # Second operand is 4-bit indirect
            target.CodeByte(0xE3)
            target.CodeByte((reg1[1] << 4) + (reg2[1] & 15))
            dec.Asm.Timing = '6'
        elif reg2[0] == '@R':
            # Second operand is 8-bit indirect
            target.CodeByte(0xE5)
            target.CodeByte(reg2[1])
            target.CodeByte(reg1[1])
            dec.Asm.Timing = '10'
        elif reg2[0] == 'X':
            target.CodeByte(0xC7)
            target.CodeByte((reg1[1] << 4) + (reg2[1] & 15))
            target.CodeByte(reg2[2])
            dec.Asm.Timing = '10'
        else:
            errors.DoError('badoper', False)

    elif reg1[0] == 'R':
        # First operand is an 8 bit register
        if reg2[0] == 'r':
            # Second is a 4 bit register
            target.CodeByte((reg2[1] << 4) + 9)
            target.CodeByte(reg1[1])
            dec.Asm.Timing = '6'
        elif reg2[0] == 'R':
            # Second is also an 8 bit register
            target.CodeByte(0xE4)
            target.CodeByte(reg2[1])
            target.CodeByte(reg1[1])
            dec.Asm.Timing = '10'
        elif reg2[0] == '@R':
            # Second is also an 8 bit register
            target.CodeByte(0xE5)
            target.CodeByte(reg2[1])
            target.CodeByte(reg1[1])
            dec.Asm.Timing = '10'
        else:
            errors.DoError('badoper', False)

    elif reg1[0] == '@r':
        # First operand is indirect 4 bit register
        if reg2[0] == 'r':
            # Second is a 4 bit register
            target.CodeByte(0xF3)
            target.CodeByte((reg1[1] << 4) + (reg2[1] & 15))
            dec.Asm.Timing = '6'
        elif reg2[0] == 'R':
            # Second is an 8 bit register
            target.CodeByte(0xF5)
            target.CodeByte(reg2[1])
            target.CodeByte(reg1[1])
            dec.Asm.Timing = '10'
        else:
            errors.DoError('badoper', False)

    elif reg1[0] == '@R':
        # First operand is indirect 8 bit register
        if reg2[0] == 'r' or reg2[0] == 'R':
            target.CodeByte(0xF5)
            target.CodeByte(reg2[1])
            target.CodeByte(reg1[1])
            dec.Asm.Timing = '10'
        else:
            errors.DoError('badoper', False)

    elif reg1[0] == 'X':
        # First operand is indexed mode
        if reg2[0] == 'r':
            # Second is indeed a 4 bit register
            target.CodeByte(0xD7)
            target.CodeByte((reg2[1] << 4) + (reg1[1] & 15))
            target.CodeByte(reg1[2])
            dec.Asm.Timing = '10'
        else:
            errors.DoError('badoper', False)

    else:
        errors.DoError('badoper', False)

    NoMore()


# -----------------------------------------------------------------------------

def Math():

    global Asm

    if MissingOperand():
        return

    reg1 = GetReg()

    if dec.Flags.ErrorInLine:
        # An error was found in parameter 1, no need to continue
        return

    if not assem.MoreParameters():
        errors.DoError('missoper', False)
        return

    reg2 = GetReg()

    if dec.Flags.ErrorInLine:
        # An error was found in parameter 1, no need to continue
        return

    if reg1[0] == 'r':
        # First operand is 4 bit register
        if reg2[0] == 'r':
            # Second is also 4 bit register
            index = 0
        elif reg2[0] == '@r':
            # Second is indirect 4 bit register
            index = 1
        elif reg2[0] == 'R':
            # Second is 8 bit register
            index = 2
        elif reg2[0] == '@R':
            # Second is indirect 8 bit register
            index = 3
        elif reg2[0] == '#':
            # Second is immediate mode
            index = 4
        else:
            errors.DoError('badoper', False)
            return

    elif reg1[0] == 'R':
        # First operand is 8 bit register
        if reg2[0] == 'r' or reg2[0] == 'R':
            # Second is 4 or 8 bit register
            index = 2
        elif reg2[0] == '@r' or reg2[0] == '@R':
            # Second is indirect register
            index = 3
        elif reg2[0] == '#':
            # Second is immediate
            index = 4
        else:
            errors.DoError('badoper', False)
            return

    elif reg1[0] == '@r' or reg1[0] == '@R':
        # First operand is indirect register
        if reg2[0] == '#':
            # Immediate mode is only one allowed
            index = 5
        else:
            errors.DoError('badoper', False)
            return

    else:
        errors.DoError('badoper', False)
        return

    if index == 0 or index == 1:
        target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1][index])
        target.CodeByte((reg1[1] << 4) + (reg2[1] & 15))
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][index]
    elif index == 2 or index == 3:
        target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1][index])
        target.CodeByte(reg2[1])
        target.CodeByte(reg1[1])
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][index]
    elif index == 4 or index == 5:
        target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1][index])
        target.CodeByte(reg1[1])
        target.CodeByte(reg2[1])
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][index]

    NoMore()


# -----------------------------------------------------------------------------

def Single():

    global Asm

    if MissingOperand():
        return

    reg1 = GetReg()

    if dec.Flags.ErrorInLine:
        # An error was found in parameter 1, no need to continue
        return

    if dec.Asm.Mnemonic == 'SRP':
        # This one allows only immediate data
        target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1][0])
        target.CodeByte(reg1[1])
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][0]

    else:
        if reg1[0] == 'r' or reg1[0] == 'R':
            # It's a register
            if dec.Asm.Mnemonic == 'INC' and reg1[0] == 'r':
                # There's one little exception to the general rule
                target.CodeByte((reg1[1] << 4) + 14)
            else:
                target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1][0])
                target.CodeByte(reg1[1])
            dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][0]
        elif reg1[0] == '@r' or reg1[0] == '@R':
            # It's an indirect register
            target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1][1])
            target.CodeByte(reg1[1])
            dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][1]
        else:
            errors.DoError('badoper', False)

    NoMore()


# -----------------------------------------------------------------------------

def SingleW():

    global Asm

    if MissingOperand():
        return

    reg1 = GetReg()

    if dec.Flags.ErrorInLine:
        # An error was found in parameter 1, no need to continue
        return

    if reg1[0] == 'rr' or reg1[0] == 'R' or reg1[0] == 'r':
        # Operand is register pair
        target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1][0])
        target.CodeByte(reg1[1])
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][0]
        if dec.Asm.Pass == 2 and (reg1[1] & 1) != 0:
            errors.DoError('range', False)
    elif reg1[0] == '@r' or reg1[0] == '@R':
        # Operand is indirect register pair
        target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1][1])
        target.CodeByte(reg1[1])
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][1]
    else:
        errors.DoError('badoper', False)

    NoMore()


# -----------------------------------------------------------------------------

def Branch():

    global Asm

    if MissingOperand():
        return

    if dec.Asm.Mnemonic == 'DJNZ':
        # DJNZ

        reg1 = GetReg()

        if dec.Flags.ErrorInLine:
            # An error was found in parameter 1, no need to continue
            return

        if reg1[0] != 'r':
            errors.DoError('badoper', False)
            return

        if not assem.MoreParameters():
            errors.DoError('missoper', False)
            return

        cc = reg1[1] << 4
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    else:
        # JR

        conditions = {'F': 0x00, 'C': 0x70, 'NC': 0xF0, 'Z': 0x60, 'NZ': 0xE0,
                      'PL': 0xD0, 'MI': 0x50, 'OV': 0x40, 'NOV': 0x0C0,
                      'EQ': 0x60, 'NE': 0xE0, 'GE': 0x90, 'LT': 0x10,
                      'GT': 0xA0, 'LE': 0x20, 'UGE': 0xF0, 'ULT': 0x70,
                      'UGT': 0xB0, 'ULE': 0x30}

        pointer = dec.Asm.Parse_Pointer
        cond = assem.GetWord().upper()

        if cond in conditions and assem.NowChar() == ',':
            # A legal condition code was given
            cc = conditions[cond]
            dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]
            if not assem.MoreParameters():
                errors.DoError('missoper', False)
                return
        else:
            # No condition was given
            dec.Asm.Parse_Pointer = pointer
            dec.Asm.Timing = '12'
            cc = 0x80

    dest = assem.EvalExpr()

    offset = dest[0] - dec.Asm.BOL_Address - 2

    if dec.Asm.Pass == 2 and (offset < -128 or offset > 127):
        errors.DoError('range', False)

    target.CodeByte(cc + dec.Asm.Instructions[dec.Asm.Mnemonic][1])
    target.CodeByte(offset)

    NoMore()


# -----------------------------------------------------------------------------

def Jumps():

    global Asm

    if MissingOperand():
        return

    if assem.NowChar() == '@':
        # It is an indirect jump

        reg1 = GetReg()

        if reg1[0] == '@rr' or reg1[0] == '@R':
            target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1][1])
            target.CodeByte(reg1[1])
            dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][1]
            if reg1[1] & 1 != 0:
                errors.DoError('range', False)
        else:
            errors.DoError('badoper', False)
    else:
        # It's not an indirect jump
        if dec.Asm.Mnemonic == 'CALL':
            # It's a CALL instruction
            opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][0]
            dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][0]

        else:
            # It's JP instruction
            conditions = {'F': 0x00, 'C': 0x70, 'NC': 0xF0, 'Z': 0x60,
                          'NZ': 0xE0, 'PL': 0xD0, 'MI': 0x50, 'OV': 0x40,
                          'NOV': 0xC0, 'EQ': 0x60, 'NE': 0xE0, 'GE': 0x90,
                          'LT': 0x10, 'GT': 0xA0, 'LE': 0x20, 'UGE': 0xF0,
                          'ULT': 0x70, 'UGT': 0xB0, 'ULE': 0x30}

            pointer = dec.Asm.Parse_Pointer
            cond = assem.GetWord().upper()

            if cond in conditions and assem.NowChar() == ',':
                # A legal condition code was given
                opcode = conditions[cond] + 13
                dec.Asm.Timing = '10+'
                if not assem.MoreParameters():
                    errors.DoError('missoper', False)
                    return
            else:
                # No condition was given
                dec.Asm.Parse_Pointer = pointer
                dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][0]
                opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][0]

        dest = assem.EvalExpr()

        target.CodeByte(opcode)
        target.CodeWord(dest[0])
        if dec.Asm.Pass == 2 and (dest[0] >> 16) != 0:
            errors.DoError('range', False)

    NoMore()


# -----------------------------------------------------------------------------

def Memory():

    global Asm

    if MissingOperand():
        return

    reg1 = GetReg()

    if dec.Flags.ErrorInLine:
        # An error was found in parameter 1, no need to continue
        return

    if not assem.MoreParameters():
        errors.DoError('missoper', False)
        return

    reg2 = GetReg()

    if dec.Flags.ErrorInLine:
        # An error was found in parameter 1, no need to continue
        return

    if dec.Asm.Mnemonic[-1] != 'I':
        # LDC or LDE
        if (reg1[0] == 'r' or reg1[0] == 'R') and\
                (reg2[0] == '@rr' or reg2[0] == '@R' or reg2[0] == '@r'):
            index = 0
        elif (reg1[0] == '@rr' or reg1[0] == '@R' or reg1[0] == '@r') and\
                (reg2[0] == 'r' or reg2[0] == 'R'):
            index = 1
            temp = reg1
            reg1 = reg2
            reg2 = temp
        else:
            errors.DoError('badoper', False)
            return

        target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1][index])
        target.CodeByte((reg1[1] << 4) + (reg2[1] & 15))
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][index]
        if dec.Asm.Pass == 2 and (reg2[1] & 1) != 0:
            errors.DoError('range', False)

    else:
        # LDCI or LDEI
        if reg1[0] == '@rr':
            # First operand is @rr, no doubt
            if reg2[0] == '@rr' or reg2[0][0] != '@':
                # Can't be both @rr and must be indirect mode
                errors.DoError('badoper', False)
                return
            if (reg2[1] & 240) != 224:
                # Must have been a working register!
                errors.DoError('range', False)
            index = 1

        elif reg2[0] == '@rr':
            # Second operand is @rr, no doubt
            if reg1[0] == '@rr' or reg1[0][0] != '@':
                # Can't be both @rr and must be indirect mode
                errors.DoError('badoper', False)
                return
            if (reg1[1] & 240) != 224:
                # Must have been a working register!
                errors.DoError('range', False)
            index = 0

        else:
            # There may be some doubt about who's who
            if reg1[0][0] != '@' or reg2[0][0] != '@':
                # Both operands should be indirect mode
                errors.DoError('badoper', False)
                return
            if ((reg1[1] & 240) != 224) or ((reg2[1] & 240) != 224):
                # Must have been a working register!
                errors.DoError('range', False)
            if (reg1[1] & 1 != 0) and (reg2[1] & 1 != 0):
                # Can't have 2 odd addresses, one should have been an even pair
                errors.DoError('range', False)
                index = 0
            elif (reg1[1] & 1 == 0) and (reg2[1] & 1 == 0):
                # Both arguments are even, so we have no way of telling,
                # assume @r,@rr now
                index = 0
            elif (reg1[1] & 1 == 0):
                # First operand is even, second is odd. Assume the first one
                # to be a @rr
                index = 1
            else:
                # Second operand is even, first is odd. Assume the second one
                # to be a @rr
                index = 0

        target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1][index])
        if index == 0:
            target.CodeByte((reg1[1] << 4) + (reg2[1] & 15))
        else:
            target.CodeByte((reg2[1] << 4) + (reg1[1] & 15))
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][index]

    NoMore()


# -----------------------------------------------------------------------------

def GetReg():

    """
    Possible parameters:
    Name:       Returns:
    #           ('#', value)
    4-bit r     ('r',regnr)
    8-bit R     ('R',regnr)
    4-bit @r    ('@r',regnr)
    8-bit @R    ('@R,'regnr)
    4-bit rr    ('rr',regnr)
    8-bit RR    ('R',regnr)
    4-bit @rr   ('@rr',regnr)
    8-bit @RR   ('@R',regnr)
    indexed     ('X',regnr,offset)
    error       ('!', 0)

    Registers are returned as an 8 bit value.
    In case it was a 4 bit address $E0 is added to the register number
    This indicates 4-bit r mode.
    In case it was a 8 bit address we can not know whether it was a register
    or a register pair. We should let the instruction decide which it should
    have been. That's why the returned code for registers and pairs is both
    R or @R.
    """

    global Asm

    pointer = dec.Asm.Parse_Pointer
    param = assem.GetWord().upper()
    allregisters = ('R0', 'R1', 'R2', 'R3', 'R4', 'R5', 'R6', 'R7', 'R8',
                    'R9', 'R10', 'R11', 'R12', 'R13', 'R14', 'R15')

    if len(param) == 0:
        errors.DoError('badoper', False)
        return ('!', 0)

    if param[0] in ('#/=\\'):
        # Parameter is an immediate prefix
        dec.Asm.Parse_Pointer = pointer
        prefix = assem.NowChar(True)
        value = assem.EvalExpr()
        if prefix == '#':
            data = value[0]
        elif prefix == '/':
            data = value[0] >> 8
        elif prefix == '=':
            data = value[0] >> 16
        else:
            data = value[0] >> 24
        return ('#', data)

    elif '(' in param:
        # Should be index mode
        dec.Asm.Parse_Pointer = pointer
        offset = assem.EvalExpr()
        if assem.NowChar(True) != '(':
            errors.DoError('badoper', False)
            return ('1', 0)
        pointer = dec.Asm.Parse_Pointer
        param = assem.GetWord().upper()
        if param[:-1] in allregisters:
            regnr = int(param[1:-1])
            if param[-1] != ')':
                errors.DoError('badoper', False)
                return ('!', 0)
        else:
            # Address must resolve to a 4 bit register
            dec.Asm.Parse_Pointer = pointer
            value = assem.EvalExpr()
            if dec.Asm.Pass == 2:
                if value[0] < 0 or value[0] > 255 or (value[0] & 240) == 224:
                    errors.DoError('range', False)
                    regnr = 0       # use dummy value
                else:
                    if (value[0] & 240) != dec.Asm.Z8rp:
                        errors.DoError('range', False)
                        # us dummy value if it's not a working register
                        regnr = 0
                    else:
                        regnr = value[0] & 15
            else:
                regnr = 0           # use dummy value during pass 1
            if assem.NowChar(True) != ')':
                errors.DoError('badoper', False)
                return ('!',  0)
        return ('X', regnr | 224, offset[0])

    elif param in allregisters:
        # Parameter is a register
        regnr = int(param[1:]) | 224
        return ('r', regnr)

    elif param in ('@R0', '@R1', '@R2', '@R3', '@R4', '@R5', '@R6', '@R7',
                   '@R8', '@R9', '@R10', '@R11', '@R12', '@R13', '@R14',
                   '@R15'):
        # Parameter is an indirect register
        regnr = int(param[2:]) | 224
        return ('@r', regnr)

    elif param in ('RR0', 'RR2', 'RR4', 'RR6', 'RR8', 'RR10', 'RR12', 'RR14'):
        # Parameter is a register pair
        regnr = int(param[2:]) | 224
        return ('rr', regnr)

    elif param in ('@RR0', '@RR2', '@RR4', '@RR6', '@RR8', '@RR10', '@RR12',
                   '@RR14'):
        # Parameter is an indirect register pair
        regnr = int(param[3:]) | 224
        return ('@rr', regnr)

    else:
        # Must be a normal expression now (8-bit register or pair)
        if param[0] == '@':
            # Can be either indirect mode or an octal number
            if len(param) > 1 and (param[1] in '01234567'):
                # Treat this as an octal number
                prefix = ''
                dec.Asm.Parse_Pointer = pointer
            else:
                # Treat it as an indirect prefix
                prefix = '@'
                dec.Asm.Parse_Pointer = pointer + 1
        else:
            prefix = ''
            dec.Asm.Parse_Pointer = pointer

        value = assem.EvalExpr()

        if dec.Asm.Pass == 2:
            # Only do range checks during pass 2
            # Legal values are from $00 to $FF, excluding $E0 to $EF
            if value[0] < 0 or value[0] > 255 or (value[0] & 240) == 224:
                errors.DoError('range', False)
                return ('!', 0)

        bank = value[0] & 240    # Mask value with $F0
        if not value[1] and dec.Asm.Z8rp == bank:
            # Make it a 4-bit register if not forward referenced and in
            # current bank
            return (prefix+'r', value[0] & 15 | 224)
        else:
            return (prefix+'R', value[0])


# -----------------------------------------------------------------------------

def DirRP():

    global Asm

    if MissingOperand():
        return

    value = assem.EvalExpr()

    if value[1]:
        # Forward referenced labels are not allowed
        errors.DoError('', False)
    else:
        # Check range
        if value[0] < 0 or value[0] > 255 or (value[0] & 15) != 0 or\
                (value[0] & 240) == 224:
            errors.DoError('range', False)
        else:
            dec.Asm.Z8rp = value[0]

    NoMore()


# -----------------------------------------------------------------------------

if __name__ == '__main__':
    print("")
    print("This is a python module, it's not a program.")
    print("This module is part of the sbasm package.")
    print("Run sbasm instead.")
    print("")
