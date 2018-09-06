# ------------------------------------------------------------------------------
#
#   cr68hc08.py
#
#   Package module file for the SB-Assembler sbasm
#   See www.sbprojects.net for details
#
#   Author: San Bergmans
#   Date  : 2015-12-21
#
#   This cross overlay will handle the assembling of 68HC08
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
        'ASLA' : (Implied, 0x48, '1'),
        'ASLX' : (Implied, 0x58, '1'),
        'ASRA' : (Implied, 0x47, '1'),
        'ASRX' : (Implied, 0x57, '1'),
        'CLC'  : (Implied, 0x98, '1'),
        'CLI'  : (Implied, 0x9A, '2'),
        'CLRA' : (Implied, 0x4F, '1'),
        'CLRX' : (Implied, 0x5F, '1'),
        'CLRH' : (Implied, 0x8C, '1'),
        'COMA' : (Implied, 0x43, '1'),
        'COMX' : (Implied, 0x53, '1'),
        'DAA'  : (Implied, 0x72, '2'),
        'DECA' : (Implied, 0x4A, '1'),
        'DECX' : (Implied, 0x5A, '1'),
        'DEX'  : (Implied, 0x5A, '1'),
        'DIV'  : (Implied, 0x52, '7'),
        'INCA' : (Implied, 0x4C, '1'),
        'INCX' : (Implied, 0x5C, '1'),
        'INX'  : (Implied, 0x5C, '1'),
        'LSLA' : (Implied, 0x48, '1'),
        'LSLX' : (Implied, 0x58, '1'),
        'LSRA' : (Implied, 0x44, '1'),
        'LSRX' : (Implied, 0x54, '1'),
        'MUL'  : (Implied, 0x42, '5'),
        'NEGA' : (Implied, 0x40, '1'),
        'NEGX' : (Implied, 0x50, '1'),
        'NOP'  : (Implied, 0x9D, '1'),
        'NSA'  : (Implied, 0x62, '3'),
        'PSHA' : (Implied, 0x87, '2'),
        'PSHH' : (Implied, 0x8B, '2'),
        'PSHX' : (Implied, 0x89, '2'),
        'PULA' : (Implied, 0x86, '2'),
        'PULH' : (Implied, 0x8A, '2'),
        'PULX' : (Implied, 0x88, '2'),
        'ROLA' : (Implied, 0x49, '1'),
        'ROLX' : (Implied, 0x59, '1'),
        'RORA' : (Implied, 0x46, '1'),
        'RORX' : (Implied, 0x56, '1'),
        'RSP'  : (Implied, 0x9C, '1'),
        'RTI'  : (Implied, 0x80, '7'),
        'RTS'  : (Implied, 0x81, '4'),
        'SEC'  : (Implied, 0x99, '1'),
        'SEI'  : (Implied, 0x9B, '2'),
        'STOP' : (Implied, 0x8E, '1'),
        'SWI'  : (Implied, 0x83, '9'),
        'TAP'  : (Implied, 0x84, '2'),
        'TAX'  : (Implied, 0x97, '1'),
        'TPA'  : (Implied, 0x85, '1'),
        'TSTA' : (Implied, 0x4D, '1'),
        'TSTX' : (Implied, 0x5D, '1'),
        'TSX'  : (Implied, 0x95, '2'),
        'TXA'  : (Implied, 0x9F, '1'),
        'TXS'  : (Implied, 0x94, '2'),
        'WAIT' : (Implied, 0x8F, '1'),

        'BCC'  : (Branch, 0x24, '3'),
        'BCS'  : (Branch, 0x25, '3'),
        'BEQ'  : (Branch, 0x27, '3'),
        'BGE'  : (Branch, 0x90, '3'),
        'BGT'  : (Branch, 0x92, '3'),
        'BHCC' : (Branch, 0x28, '3'),
        'BHCS' : (Branch, 0x29, '3'),
        'BHI'  : (Branch, 0x22, '3'),
        'BHS'  : (Branch, 0x24, '3'),
        'BIH'  : (Branch, 0x2F, '3'),
        'BIL'  : (Branch, 0x2E, '3'),
        'BLE'  : (Branch, 0x93, '3'),
        'BLO'  : (Branch, 0x25, '3'),
        'BLS'  : (Branch, 0x23, '3'),
        'BLT'  : (Branch, 0x91, '3'),
        'BMC'  : (Branch, 0x2C, '3'),
        'BMI'  : (Branch, 0x2B, '3'),
        'BMS'  : (Branch, 0x2D, '3'),
        'BNE'  : (Branch, 0x26, '3'),
        'BPL'  : (Branch, 0x2A, '3'),
        'BRA'  : (Branch, 0x20, '3'),
        'BRN'  : (Branch, 0x21, '3'),
        'BSR'  : (Branch, 0xAD, '6'),
        'DBNZA': (Branch, 0x4B, '3'),
        'DBNZX': (Branch, 0x5B, '3'),

        'ADC'  : (Multi, (0xA9, 0xB9, 0xC9, 0xF9, 0xE9, 0xD9, 0x9EE9, 0x9ED9),
                  ('2', '3', '4', '2', '3', '4', '4', '5'), False),
        'ADD'  : (Multi, (0xAB, 0xBB, 0xCB, 0xFB, 0xEB, 0xDB, 0x9EEB, 0x9EDB),
                  ('2', '3', '4', '2', '3', '4', '4', '5'), False),
        'AND'  : (Multi, (0xA4, 0xB4, 0xC4, 0xF4, 0xE4, 0xD4, 0x9EE4, 0x9ED4),
                  ('2', '3', '4', '2', '3', '4', '4', '5'), False),
        'AIS'  : (Multi, (0xA7, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00),
                  ('2', '', '', '', '', '', '', ''), False),
        'AIX'  : (Multi, (0xAF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00),
                  ('2', '', '', '', '', '', '', ''), False),
        'ASL'  : (Multi, (0x00, 0x38, 0x00, 0x78, 0x68, 0x00, 0x9E68, 0x00),
                  ('', '4', '', '3', '4', '', '5', ''), False),
        'ASR'  : (Multi, (0x00, 0x37, 0x00, 0x77, 0x67, 0x00, 0x9E67, 0x00),
                  ('', '4', '', '3', '4', '', '5', ''), False),
        'BIT'  : (Multi, (0xA5, 0xB5, 0xC5, 0xF5, 0xE5, 0xD5, 0x9EE5, 0x9ED5),
                  ('2', '3', '4', '2', '3', '4', '4', '5'), False),
        'CLR'  : (Multi, (0x00, 0x3F, 0x00, 0x7F, 0x6F, 0x00, 0x9E6F, 0x00),
                  ('', '3', '', '2', '3', '', '4', ''), False),
        'CMP'  : (Multi, (0xA1, 0xB1, 0xC1, 0xF1, 0xE1, 0xD1, 0x9EE1, 0x9ED1),
                  ('2', '3', '4', '2', '3', '4', '4', '5'), False),
        'COM'  : (Multi, (0x00, 0x33, 0x00, 0x73, 0x63, 0x00, 0x9E63, 0x00),
                  ('', '4', '', '3', '4', '', '5', ''), False),
        'CPHX' : (Multi, (0x65, 0x75, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00),
                  ('3', '4', '', '', '', '', '', ''), True),
        'CPX'  : (Multi, (0xA3, 0xB3, 0xC3, 0xF3, 0xE3, 0xD3, 0x9EE3, 0x9ED3),
                  ('2', '3', '4', '2', '3', '4', '4', '5'), False),
        'DEC'  : (Multi, (0x00, 0x3A, 0x00, 0x7A, 0x6A, 0x00, 0x9E6A, 0x00),
                  ('', '4', '', '3', '4', '', '5', ''), False),
        'EOR'  : (Multi, (0xA8, 0xB8, 0xC8, 0xF8, 0xE8, 0xD8, 0x9EE8, 0x9ED8),
                  ('2', '3', '4', '2', '3', '4', '4', '5'), False),
        'INC'  : (Multi, (0x00, 0x3C, 0x00, 0x7C, 0x6C, 0x00, 0x9E6C, 0x00),
                  ('', '4', '', '3', '4', '', '5', ''), False),
        'JMP'  : (Multi, (0x00, 0xBC, 0xCC, 0xFC, 0xEC, 0xDC, 0x00, 0x00),
                  ('', '2', '3', '2', '3', '4', '', ''), False),
        'JSR'  : (Multi, (0x00, 0xBD, 0xCD, 0xFD, 0xED, 0xDD, 0x00, 0x00),
                  ('', '4', '5', '4', '5', '6', '', ''), False),
        'LDA'  : (Multi, (0xA6, 0xB6, 0xC6, 0xF6, 0xE6, 0xD6, 0x9EE6, 0x9ED6),
                  ('2', '3', '4', '2', '3', '4', '4', '5'), False),
        'LDHX' : (Multi, (0x45, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00),
                  ('3', '4', '', '', '', '', '', ''), True),
        'LDX'  : (Multi, (0xAE, 0xBE, 0xCE, 0xFE, 0xEE, 0xDE, 0x9EEE, 0x9EDE),
                  ('2', '3', '4', '2', '3', '4', '4', '5'), False),
        'LSL'  : (Multi, (0x00, 0x38, 0x00, 0x78, 0x68, 0x00, 0x9E68, 0x00),
                  ('', '4', '', '3', '4', '', '5', ''), False),
        'LSR'  : (Multi, (0x00, 0x34, 0x00, 0x74, 0x64, 0x00, 0x9E64, 0x00),
                  ('', '4', '', '3', '4', '', '5', ''), False),
        'NEG'  : (Multi, (0x00, 0x30, 0x00, 0x70, 0x60, 0x00, 0x9E60, 0x00),
                  ('', '4', '', '3', '4', '', '5', ''), False),
        'ORA'  : (Multi, (0xAA, 0xBA, 0xCA, 0xFA, 0xEA, 0xDA, 0x9EEA, 0x9EDA),
                  ('2', '3', '4', '2', '3', '4', '4', '5'), False),
        'ROL'  : (Multi, (0x00, 0x39, 0x00, 0x79, 0x69, 0x00, 0x9E69, 0x00),
                  ('', '4', '', '3', '4', '', '5', ''), False),
        'ROR'  : (Multi, (0x00, 0x36, 0x00, 0x76, 0x66, 0x00, 0x9E66, 0x00),
                  ('', '4', '', '3', '4', '', '5', ''), False),
        'SBC'  : (Multi, (0xA2, 0xB2, 0xC2, 0xF2, 0xE2, 0xD2, 0x9EE2, 0x9ED2),
                  ('2', '3', '4', '2', '3', '4', '4', '5'), False),
        'STA'  : (Multi, (0x00, 0xB7, 0xC7, 0xF7, 0xE7, 0xD7, 0x9EE7, 0x9ED7),
                  ('', '3', '4', '2', '3', '4', '4', '5'), False),
        'STHX' : (Multi, (0x00, 0x35, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00),
                  ('', '4', '', '', '', '', '', ''), False),
        'STX'  : (Multi, (0x00, 0xBF, 0xCF, 0xFF, 0xEF, 0xDF, 0x9EEF, 0x9EDF),
                  ('', '3', '4', '2', '3', '4', '4', '5'), False),
        'SUB'  : (Multi, (0xA0, 0xB0, 0xC0, 0xF0, 0xE0, 0xD0, 0x9EE0, 0x9ED0),
                  ('2', '3', '4', '2', '3', '4', '4', '5'), False),
        'TST'  : (Multi, (0x00, 0x3D, 0x00, 0x7D, 0x6D, 0x00, 0x9E6D, 0x00),
                  ('', '3', '', '2', '3', '', '4', ''), False),

        'BCLR' : (Bits, 0x11, '4'),
        'BSET' : (Bits, 0x10, '4'),
        'BRCLR': (Bits, 0x01, '5'),
        'BRSET': (Bits, 0x00, '5'),

        'MOV'  : (Move, (0x6E, 0x4E, 0x7E, 0x5E), ('4', '5', '4', '4')),

        'CBEQ' : (CompBranch, (0x31, 0x71, 0x61, 0x9E61),
                  ('5', '4', '5', '6')),
        'CBEQA': (CompBranch, 0x41, '4'),
        'CBEQX': (CompBranch, 0x51, '4'),
        'DBNZ' : (CompBranch, (0x3B, 0x7B, 0x6B, 0x9E6B),
                  ('5', '4', '5', '6'))
    }

    dec.Asm.Timing_Length = 1

    dec.Asm.Memory = 0
    if dec.Asm.Pass == 1:
        sys.stdout.write('Loaded ' + dec.Cross.Name[2:] +
                         ' overlay version ' + crossversion + dec.EOL)

    dec.Asm.Max_Address = dec.MAX16
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
    - Direct,SP mode
    - Extended,SP mode
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
        if dec.Asm.Instructions[dec.Asm.Mnemonic][3]:
            target.CodeWord(value)
        else:
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
        elif indexreg == 'SP':
            # Use 8 bit offset SP mode
            index = 6
            length = 1
        else:
            errors.DoError('badoper', False)
            return

    elif dec.Asm.Parse_Line[dec.Asm.Parse_Pointer:
                            dec.Asm.Parse_Pointer+2].upper() == 'X ':
        # Zero offset indexed X mode
        value = 0
        length = 0
        index = 3
        assem.IncParsePointer()

    elif dec.Asm.Parse_Line[dec.Asm.Parse_Pointer:
                            dec.Asm.Parse_Pointer+3].upper() == 'SP ':
        # Zero offset indexed Y mode
        value = 0
        length = 1
        index = 6
        dec.Asm.Parse_Pointer = dec.Asm.Parse_Pointer + 2

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
            elif indexreg == 'SP':
                index = 6
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

def Move():

    """
    MOV instruction
    - #,dir
    - dir,dir
    - X+,dir
    - dir,X+
    """

    global Asm

    if MissingOperand():
        return

    if assem.NowChar() in '#/=\\':
        # It is direct addressing mode
        prefix = assem.NowChar(True)
        opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][0]
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][0]

        value = assem.EvalExpr()[0]
        if prefix == '/':
            value = value >> 8
        elif prefix == '=':
            value = value >> 16
        elif prefix == '\\':
            value = value >> 24

        if not assem.MoreParameters():
            # We expected more parameters
            errors.DoError('missoper', False)
            return

        dest = assem.EvalExpr()[0]

        Code(opcode)
        target.CodeByte(value)
        target.CodeByte(dest)

    elif dec.Asm.Parse_Line[dec.Asm.Parse_Pointer:
                            dec.Asm.Parse_Pointer+3].upper() == 'X+,':
        # X+,dir
        assem.GetWord()
        assem.MoreParameters()

        opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][2]
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][2]

        dest = assem.EvalExpr()[0]

        Code(opcode)
        target.CodeByte(dest)

    else:
        # Can now be dir,dir or dir,X+
        source = assem.EvalExpr()[0]

        if not assem.MoreParameters():
            # We expected more parameters
            errors.DoError('missoper', False)
            return

        if dec.Asm.Parse_Line[dec.Asm.Parse_Pointer:
                              dec.Asm.Parse_Pointer+3].upper() == 'X+ ':
            # It is dir,X+
            assem.GetWord()
            opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][3]
            dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][3]

            dest = source

            Code(opcode)
            target.CodeByte(dest)
        else:
            # It is dir,dir
            opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][1]
            dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][1]
            dest = assem.EvalExpr()[0]

            Code(opcode)
            target.CodeByte(source)
            target.CodeByte(dest)

    if dec.Asm.Pass == 2 and (dest < 0 or dest > 255):
        errors.DoError('range', False)

    NoMore()


# -----------------------------------------------------------------------------

def CompBranch():

    """
    Compare and Branch instructions
    - dir,rel
    - X+,rel
    - dir,X+,rel
    - dir,SP,rel
    """

    global Asm

    if MissingOperand():
        return

    if dec.Asm.Mnemonic[0] == 'D':
        indexreg = 'X,'
    else:
        indexreg = 'X+,'

    if len(dec.Asm.Mnemonic) == 5:
        if not assem.NowChar() in '#/=\\':
            # Should start with immediate prefix
            errors.DoError('badoper', False)
            return

        prefix = assem.NowChar(True)
        opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1]
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

        value = assem.EvalExpr()[0]
        if prefix == '/':
            value = value >> 8
        elif prefix == '=':
            value = value >> 16
        elif prefix == '\\':
            value = value >> 24

        if not assem.MoreParameters():
            # We expected more parameters
            errors.DoError('missoper', False)
            return

        dest = assem.EvalExpr()[0]
        offset = dest - dec.Asm.BOL_Address - 3

        Code(opcode)
        target.CodeByte(value)
        target.CodeByte(offset)

        value = 0

    elif dec.Asm.Parse_Line[dec.Asm.Parse_Pointer:
                            dec.Asm.Parse_Pointer+len(indexreg)
                            ].upper() == indexreg:
        # It is X+,rel now

        assem.GetWord()

        opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][1]
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][1]

        if not assem.MoreParameters():
            # We expected more parameters
            errors.DoError('missoper', False)
            return

        dest = assem.EvalExpr()[0]
        offset = dest - dec.Asm.BOL_Address - 2

        Code(opcode)
        target.CodeByte(offset)

        value = 0

    else:
        value = assem.EvalExpr()[0]

        if not assem.MoreParameters():
            # We expected more parameters
            errors.DoError('missoper', False)
            return

        if dec.Asm.Parse_Line[dec.Asm.Parse_Pointer:
                              dec.Asm.Parse_Pointer+len(indexreg)
                              ].upper() == indexreg:
            # It is dir,X+,rel
            assem.GetWord()
            if not assem.MoreParameters():
                # We expected more parameters
                errors.DoError('missoper', False)
                return

            opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][2]
            dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][2]

            dest = assem.EvalExpr()[0]
            offset = dest - dec.Asm.BOL_Address - 3

        elif dec.Asm.Parse_Line[dec.Asm.Parse_Pointer:
                                dec.Asm.Parse_Pointer+3].upper() == 'SP,':
            # It is dir,SP,rel
            assem.GetWord()
            if not assem.MoreParameters():
                # We expected more parameters
                errors.DoError('missoper', False)
                return

            opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][3]
            dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][3]

            dest = assem.EvalExpr()[0]
            offset = dest - dec.Asm.BOL_Address - 4

        else:
            # It is dir,rel now
            opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][0]
            dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][0]

            dest = assem.EvalExpr()[0]
            offset = dest - dec.Asm.BOL_Address - 3

        Code(opcode)
        target.CodeByte(value)
        target.CodeByte(offset)

    if dec.Asm.Pass == 2 and (offset < -128 or offset > +127
                              or value < 0 or value > 255):
        # Range error if offset too big or not direct page address
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
    print("")
