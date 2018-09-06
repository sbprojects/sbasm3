# ------------------------------------------------------------------------------
#
#   cr68hc05.py
#
#   Package module file for the SB-Assembler sbasm
#   See www.sbprojects.net for details
#
#   Author: San Bergmans
#   Date  : 2015-12-21
#
#   This cross overlay will handle the assembling of 68HC05
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

    """
    Initialize this cross overlay.
    """

    global Asm, Flags

    assem.CheckVersions(crossversion, minversion)

    dec.Asm.Instructions = {
        'ASLA' : (Implied, 0x48, '3'),
        'ASLX' : (Implied, 0x58, '3'),
        'ASRA' : (Implied, 0x47, '3'),
        'ASRX' : (Implied, 0x57, '3'),
        'CLC'  : (Implied, 0x98, '2'),
        'CLI'  : (Implied, 0x9A, '2'),
        'CLRA' : (Implied, 0x4F, '3'),
        'CLRX' : (Implied, 0x5F, '3'),
        'COMA' : (Implied, 0x43, '3'),
        'COMX' : (Implied, 0x53, '3'),
        'DECA' : (Implied, 0x4A, '3'),
        'DECX' : (Implied, 0x5A, '3'),
        'DEX'  : (Implied, 0x5A, '3'),
        'INCA' : (Implied, 0x4C, '3'),
        'INCX' : (Implied, 0x5C, '3'),
        'INX'  : (Implied, 0x5C, '3'),
        'LSLA' : (Implied, 0x48, '3'),
        'LSLX' : (Implied, 0x58, '3'),
        'LSRA' : (Implied, 0x44, '3'),
        'LSRX' : (Implied, 0x54, '3'),
        'MUL'  : (Implied, 0x42, '11'),
        'NEGA' : (Implied, 0x40, '3'),
        'NEGX' : (Implied, 0x50, '3'),
        'NOP'  : (Implied, 0x9D, '2'),
        'ROLA' : (Implied, 0x49, '3'),
        'ROLX' : (Implied, 0x59, '3'),
        'RORA' : (Implied, 0x46, '3'),
        'RORX' : (Implied, 0x56, '3'),
        'RSP'  : (Implied, 0x9C, '2'),
        'RTI'  : (Implied, 0x80, '9'),
        'RTS'  : (Implied, 0x81, '6'),
        'SEC'  : (Implied, 0x99, '2'),
        'SEI'  : (Implied, 0x9B, '2'),
        'STOP' : (Implied, 0x8E, '2'),
        'SWI'  : (Implied, 0x83, '10'),
        'TAX'  : (Implied, 0x97, '2'),
        'TSTA' : (Implied, 0x4D, '3'),
        'TSTX' : (Implied, 0x5D, '3'),
        'TXA'  : (Implied, 0x9F, '2'),
        'WAIT' : (Implied, 0x8F, '2'),

        'BCC'  : (Branch, 0x24, '3'),
        'BCS'  : (Branch, 0x25, '3'),
        'BEQ'  : (Branch, 0x27, '3'),
        'BHCC' : (Branch, 0x28, '3'),
        'BHCS' : (Branch, 0x29, '3'),
        'BHI'  : (Branch, 0x22, '3'),
        'BHS'  : (Branch, 0x24, '3'),
        'BIH'  : (Branch, 0x2F, '3'),
        'BIL'  : (Branch, 0x2E, '3'),
        'BLO'  : (Branch, 0x25, '3'),
        'BLS'  : (Branch, 0x23, '3'),
        'BMC'  : (Branch, 0x2C, '3'),
        'BMI'  : (Branch, 0x2B, '3'),
        'BMS'  : (Branch, 0x2D, '3'),
        'BNE'  : (Branch, 0x26, '3'),
        'BPL'  : (Branch, 0x2A, '3'),
        'BRA'  : (Branch, 0x20, '3'),
        'BRN'  : (Branch, 0x21, '3'),
        'BSR'  : (Branch, 0xAD, '6'),

        'ADC'  : (Multi, (0xA9, 0xB9, 0xC9, 0xF9, 0xE9, 0xD9),
                  ('2', '3', '4', '3', '4', '5')),
        'ADD'  : (Multi, (0xAB, 0xBB, 0xCB, 0xFB, 0xEB, 0xDB),
                  ('2', '3', '4', '3', '4', '5')),
        'AND'  : (Multi, (0xA4, 0xB4, 0xC4, 0xF4, 0xE4, 0xD4),
                  ('2', '3', '4', '3', '4', '5')),
        'ASL'  : (Multi, (0x00, 0x38, 0x00, 0x78, 0x68, 0x00),
                  ('', '5', '', '5', '6', '')),
        'ASR'  : (Multi, (0x00, 0x37, 0x00, 0x77, 0x67, 0x00),
                  ('', '5', '', '5', '6', '')),
        'BIT'  : (Multi, (0xA5, 0xB5, 0xC5, 0xF5, 0xE5, 0xD5),
                  ('2', '3', '4', '3', '4', '5')),
        'CLR'  : (Multi, (0x00, 0x3F, 0x00, 0x7F, 0x6F, 0x00),
                  ('', '5', '', '5', '6', '')),
        'CMP'  : (Multi, (0xA1, 0xB1, 0xC1, 0xF1, 0xE1, 0xD1),
                  ('2', '3', '4', '3', '4', '5')),
        'COM'  : (Multi, (0x00, 0x33, 0x00, 0x73, 0x63, 0x00),
                  ('', '5', '', '5', '6', '')),
        'CPX'  : (Multi, (0xA3, 0xB3, 0xC3, 0xF3, 0xE3, 0xD3),
                  ('2', '3', '4', '3', '4', '5')),
        'DEC'  : (Multi, (0x00, 0x3A, 0x00, 0x7A, 0x6A, 0x00),
                  ('', '5', '', '5', '6', '')),
        'EOR'  : (Multi, (0xA8, 0xB8, 0xC8, 0xF8, 0xE8, 0xD8),
                  ('2', '3', '4', '3', '4', '5')),
        'INC'  : (Multi, (0x00, 0x3C, 0x00, 0x7C, 0x6C, 0x00),
                  ('', '5', '', '5', '6', '')),
        'JMP'  : (Multi, (0x00, 0xBC, 0xCC, 0xFC, 0xEC, 0xDC),
                  ('', '2', '3', '2', '3', '4')),
        'JSR'  : (Multi, (0x00, 0xBD, 0xCD, 0xFD, 0xED, 0xDD),
                  ('', '5', '6', '5', '6', '7')),
        'LDA'  : (Multi, (0xA6, 0xB6, 0xC6, 0xF6, 0xE6, 0xD6),
                  ('2', '3', '4', '3', '4', '5')),
        'LDX'  : (Multi, (0xAE, 0xBE, 0xCE, 0xFE, 0xEE, 0xDE),
                  ('2', '3', '4', '3', '4', '5')),
        'LSL'  : (Multi, (0x00, 0x38, 0x00, 0x78, 0x68, 0x00),
                  ('', '5', '', '5', '6', '')),
        'LSR'  : (Multi, (0x00, 0x34, 0x00, 0x74, 0x64, 0x00),
                  ('', '5', '', '5', '6', '')),
        'NEG'  : (Multi, (0x00, 0x30, 0x00, 0x70, 0x60, 0x00),
                  ('', '5', '', '5', '6', '')),
        'ORA'  : (Multi, (0xAA, 0xBA, 0xCA, 0xFA, 0xEA, 0xDA),
                  ('2', '3', '4', '3', '4', '5')),
        'ROL'  : (Multi, (0x00, 0x39, 0x00, 0x79, 0x69, 0x00),
                  ('', '5', '', '5', '6', '')),
        'ROR'  : (Multi, (0x00, 0x36, 0x00, 0x76, 0x66, 0x00),
                  ('', '5', '', '5', '6', '')),
        'SBC'  : (Multi, (0xA2, 0xB2, 0xC2, 0xF2, 0xE2, 0xD2),
                  ('2', '3', '4', '3', '4', '5')),
        'STA'  : (Multi, (0x00, 0xB7, 0xC7, 0xF7, 0xE7, 0xD7),
                  ('', '4', '5', '4', '5', '6')),
        'STX'  : (Multi, (0x00, 0xBF, 0xCF, 0xFF, 0xEF, 0xDF),
                  ('', '4', '5', '4', '5', '6')),
        'SUB'  : (Multi, (0xA0, 0xB0, 0xC0, 0xF0, 0xE0, 0xD0),
                  ('2', '3', '4', '3', '4', '5')),
        'TST'  : (Multi, (0x00, 0x3D, 0x00, 0x7D, 0x6D, 0x00),
                  ('', '4', '', '4', '5', '')),

        'BCLR' : (Bits, 0x11, '5'),
        'BSET' : (Bits, 0x10, '5'),
        'BRCLR': (Bits, 0x01, '5'),
        'BRSET': (Bits, 0x00, '5')
    }

    dec.Asm.Timing_Length = 2

    dec.Asm.Memory = 0
    if dec.Asm.Pass == 1:
        sys.stdout.write('Loaded ' + dec.Cross.Name[2:] +
                         ' overlay version ' + crossversion + dec.EOL)

    dec.Asm.Max_Address = (1 << 13)-1
    dec.Asm.PP_TA_Factor = 1
    dec.Flags.BigEndian = True

    return


# ------------------------------------------------------------------------------

def CrossDirective():

    """
    No extra directives for this Cross overlay
    """

    return False     # We didn't handle any directives


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
    An operand must follow. Raise an error if it's not.
    """

    if dec.Asm.Parse_Pointer == 0:
        errors.DoError('missoper', False)
        return True
    else:
        return False


# -----------------------------------------------------------------------------


def NoMore():

    """
    No more operands shoudl follow. Raise a warning if more parameters follow.
    """

    if assem.MoreParameters():
        errors.DoWarning('extrign', False)


# -----------------------------------------------------------------------------

def Implied():

    """
    Handle implied addressing mode.
    Simply save the opcode and we're done with it.
    """

    global Asm

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1]
    Code(opcode)
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]


# -----------------------------------------------------------------------------

def Branch():

    """
    Handle branch instructions.
    Displacement is destinaiton - current address - 2
    """

    global Asm

    if MissingOperand():
        return

    value = assem.EvalExpr()
    offset = value[0] - dec.Asm.BOL_Address - 2

    if dec.Asm.Pass == 2 and (offset < -128 or offset > 127):
        errors.DoError('range', False)

    target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1])
    target.CodeByte(offset)
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    NoMore()


# -----------------------------------------------------------------------------

def Multi():

    """
    Handle multiple operand type instructions
    - Immediate mode
    - Direct page mode
    - Extended mode
    - 0,X mode
    - Direct,X mode
    - Extended,X mode
    """

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

        NoMore()
        return

    if assem.NowChar() == ',':
        # zero offset indexed mode
        value = 0
        length = 0
        assem.MoreParameters()
        indexreg = assem.GetWord().upper()
        if indexreg == 'X':
            # Use 0 offset X mode
            index = 3
        else:
            errors.DoError('badoper', False)
            return

    elif dec.Asm.Parse_Line[dec.Asm.Parse_Pointer:dec.Asm.Parse_Pointer+2]\
            .upper() == 'X ':
        # Zero offset indexed X mode
        value = 0
        length = 0
        index = 3
        assem.IncParsePointer()

    else:
        # Can be direct mode, extended mode or offset,indexed mode from here
        prefix = ''
        if assem.NowChar() in '<>':
            prefix = assem.NowChar(True)

        dest = assem.EvalExpr()
        value = dest[0]

        if assem.MoreParameters():
            # Handle indexed mode
            indexreg = assem.GetWord().upper()
            if indexreg == 'X':
                index = 4
            else:
                errors.DoError('badoper', False)
                return

            if prefix == '>':
                # Forced extended mode
                if dec.Asm.Instructions[dec.Asm.Mnemonic][1][index+1] == 0:
                    # Extended mode doesn't exist, use direct mode instead
                    length = 1
                else:
                    index = index + 1
                    length = 2
            elif prefix == '<':
                # Forced direct mode
                length = 1
            else:
                # Let the assembler deside whether it's direct or extended
                if dest[1]:
                    # Forward referenced label used, use extended
                    if dec.Asm.Instructions[dec.Asm.Mnemonic][1][index+1] == 0:
                        # Extended mode doesn't exist, use direct mode instead
                        length = 1
                    else:
                        length = 2
                        index = index + 1
                else:
                    if value == 0 and index == 4:
                        # 0 offset and X index, use special opcode if it exists
                        if dec.Asm.Instructions[dec.Asm.Mnemonic][1][index-1]\
                                == 0:
                            # Sorry, doesn't exist
                            length = 1
                        else:
                            length = 0
                            index = index - 1
                    elif value > 255:
                        # We should use extended indexed mode
                        if dec.Asm.Instructions[dec.Asm.Mnemonic][1][index+1]\
                                == 0:
                            # But that doesn't exist
                            errors.DoError('range', False)
                            return
                        index = index + 1
                        length = 2
                    else:
                        # We can use Direct mode
                        length = 1

        else:
            # Direct or extended mode
            if prefix == '>':
                # Forced extended mode
                if dec.Asm.Instructions[dec.Asm.Mnemonic][1][2] == 0:
                    # Extended mode doesn't exist, use direct mode instead
                    index = 1
                    length = 1
                else:
                    # Extended mode exists, feel free to use it
                    index = 2
                    length = 2
            elif prefix == '<':
                # Forced direct mode
                index = 1
                length = 1
            else:
                # Let the assembler deside whether it's direct or extended
                if dest[1]:
                    # Forward referenced label used, use extended
                    if dec.Asm.Instructions[dec.Asm.Mnemonic][1][2] == 0:
                        # Extended mode doesn't exist, use direct mode instead
                        index = 1
                        length = 1
                    else:
                        # Extended mode does exist, feel free to use it
                        index = 2
                        length = 2
                else:
                    if value > 255:
                        index = 2
                        length = 2
                    else:
                        index = 1
                        length = 1

            if dec.Asm.Pass == 2 and length == 1:
                # We are using direct mode, does the value fit?
                if value >= 255:
                    errors.DoError('range', False)
            if dec.Asm.Pass == 2 and value < 0:
                # Negative numbers not allowed
                errors.DoError('range', False)

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][index]
    if opcode == 0:
        errors.DoError('badoper', False)
        return
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][index]
    Code(opcode)

    if length == 1:
        target.CodeByte(value)
    elif length == 2:
        target.CodeWord(value)

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
    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1] + ((bitno & 7) << 1)
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    if not assem.MoreParameters():
        # We expected more parameters
        errors.DoError('missoper', False)
        return

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

    if opcode > 255:
        target.CodeByte(opcode >> 8)
    target.CodeByte(opcode)


# -----------------------------------------------------------------------------

if __name__ == '__main__':
    print("")
    print("This is a python module, it's not a program.")
    print("This module is part of the sbasm package.")
    print("Run sbasm instead.")
    print ("")
