# ------------------------------------------------------------------------------
#
#   cr68hc11.py
#
#   Package module file for the SB-Assembler sbasm
#   See www.sbprojects.net for details
#
#   Author: San Bergmans
#   Date  : 2015-12-21
#
#   This cross overlay will handle the assembling of 68HC11
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
        'ABA'  : (Implied, 0x1B, '2'),
        'ABX'  : (Implied, 0x3A, '3'),
        'ABY'  : (Implied, 0x183A, '4'),
        'ASLA' : (Implied, 0x48, '2'),
        'ASLB' : (Implied, 0x58, '2'),
        'ASLD' : (Implied, 0x05, '3'),
        'ASRA' : (Implied, 0x47, '2'),
        'ASRB' : (Implied, 0x57, '2'),
        'CBA'  : (Implied, 0x11, '2'),
        'CLC'  : (Implied, 0x0C, '2'),
        'CLI'  : (Implied, 0x0E, '2'),
        'CLRA' : (Implied, 0x4F, '2'),
        'CLRB' : (Implied, 0x5F, '2'),
        'CLRD' : (Implied, 0x4F5F, '4'),
        'CLV'  : (Implied, 0x0A, '2'),
        'COMA' : (Implied, 0x43, '2'),
        'COMB' : (Implied, 0x53, '2'),
        'COMD' : (Implied, 0x4353, '4'),
        'DAA'  : (Implied, 0x19, '2'),
        'DECA' : (Implied, 0x4A, '2'),
        'DECB' : (Implied, 0x5A, '2'),
        'DES'  : (Implied, 0x34, '3'),
        'DEX'  : (Implied, 0x09, '3'),
        'DEY'  : (Implied, 0x1809, '4'),
        'FDIV' : (Implied, 0x03, '41'),
        'IDIV' : (Implied, 0x02, '41'),
        'INCA' : (Implied, 0x4C, '2'),
        'INCB' : (Implied, 0x5C, '2'),
        'INS'  : (Implied, 0x31, '3'),
        'INX'  : (Implied, 0x08, '3'),
        'INY'  : (Implied, 0x1808, '4'),
        'LSLA' : (Implied, 0x48, '2'),
        'LSLB' : (Implied, 0x58, '2'),
        'LSLD' : (Implied, 0x05, '3'),
        'LSRA' : (Implied, 0x44, '2'),
        'LSRB' : (Implied, 0x54, '2'),
        'LSRD' : (Implied, 0x04, '3'),
        'MUL'  : (Implied, 0x3D, '10'),
        'NEGA' : (Implied, 0x40, '2'),
        'NEGB' : (Implied, 0x50, '2'),
        'NOP'  : (Implied, 0x01, '2'),
        'PSHA' : (Implied, 0x36, '3'),
        'PSHB' : (Implied, 0x37, '3'),
        'PSHD' : (Implied, 0x3736, '6'),
        'PSHX' : (Implied, 0x3C, '4'),
        'PSHY' : (Implied, 0x183C, '5'),
        'PULA' : (Implied, 0x32, '4'),
        'PULB' : (Implied, 0x33, '4'),
        'PULD' : (Implied, 0x3233, '8'),
        'PULX' : (Implied, 0x38, '5'),
        'PULY' : (Implied, 0x1838, '6'),
        'ROLA' : (Implied, 0x49, '2'),
        'ROLB' : (Implied, 0x59, '2'),
        'ROLD' : (Implied, 0x5949, '4'),
        'RORA' : (Implied, 0x46, '2'),
        'RORB' : (Implied, 0x56, '2'),
        'RORD' : (Implied, 0x4656, '4'),
        'RTI'  : (Implied, 0x3B, '12'),
        'RTS'  : (Implied, 0x39, '5'),
        'SBA'  : (Implied, 0x10, '2'),
        'SEC'  : (Implied, 0x0D, '2'),
        'SEI'  : (Implied, 0x0F, '2'),
        'SEV'  : (Implied, 0x0B, '2'),
        'STOP' : (Implied, 0xCF, '2'),
        'SWI'  : (Implied, 0x3F, '14'),
        'TAB'  : (Implied, 0x16, '2'),
        'TAP'  : (Implied, 0x06, '2'),
        'TBA'  : (Implied, 0x17, '2'),
        'TEST' : (Implied, 0x00, '5+'),
        'TPA'  : (Implied, 0x07, '2'),
        'TSTA' : (Implied, 0x4D,  '2'),
        'TSTB' : (Implied, 0x5D, '2'),
        'TSX'  : (Implied, 0x30, '3'),
        'TSY'  : (Implied, 0x1830, '4'),
        'TXS'  : (Implied, 0x35, '3'),
        'TYS'  : (Implied, 0x1835, '4'),
        'WAI'  : (Implied, 0x3E, '14'),
        'XGDX' : (Implied, 0x8F, '3'),
        'XGDY' : (Implied, 0x188F, '4'),

        'BCC'  : (Branch, 0x24, '3'),
        'BCS'  : (Branch, 0x25, '3'),
        'BEQ'  : (Branch, 0x27, '3'),
        'BGE'  : (Branch, 0x2C, '3'),
        'BGT'  : (Branch, 0x2E, '3'),
        'BHI'  : (Branch, 0x22, '3'),
        'BHS'  : (Branch, 0x24, '3'),
        'BLE'  : (Branch, 0x2F, '3'),
        'BLO'  : (Branch, 0x25, '3'),
        'BLS'  : (Branch, 0x23, '3'),
        'BLT'  : (Branch, 0x2D, '3'),
        'BMI'  : (Branch, 0x2B, '3'),
        'BNE'  : (Branch, 0x26, '3'),
        'BPL'  : (Branch, 0x2A, '3'),
        'BRA'  : (Branch, 0x20, '3'),
        'BRN'  : (Branch, 0x21, '3'),
        'BSR'  : (Branch, 0x8D, '6'),
        'BVC'  : (Branch, 0x28, '3'),
        'BVS'  : (Branch, 0x29, '3'),

        'ADCA' : (Multi, (0x89, 0x99, 0xB9, 0xA9, 0x18A9),
                  ('2', '3', '4', '4', '5'), False),
        'ADCB' : (Multi, (0xC9, 0xD9, 0xF9, 0xE9, 0x18E9),
                  ('2', '3', '4', '4', '5'), False),
        'ADDA' : (Multi, (0x8B, 0x9B, 0xBB, 0xAB, 0x18AB),
                  ('2', '3', '4', '4', '5'), False),
        'ADDB' : (Multi, (0xCB, 0xDB, 0xFB, 0xEB, 0x18EB),
                  ('2', '3', '4', '4', '5'), False),
        'ADDD' : (Multi, (0xC3, 0xD3, 0xF3, 0xE3, 0x18E3),
                  ('4', '5', '6', '6', '7'), True),
        'ANDA' : (Multi, (0x84, 0x94, 0xB4, 0xA4, 0x18A4),
                  ('2', '3', '4', '4', '5'), False),
        'ANDB' : (Multi, (0xC4, 0xD4, 0xF4, 0xE4, 0x18E4),
                  ('2', '3', '4', '4', '5'), False),
        'ASL'  : (Multi, (0x00, 0x00, 0x78, 0x68, 0x1868),
                  ('', '', '6', '6', '7'), False),
        'ASR'  : (Multi, (0x00, 0x00, 0x77, 0x67, 0x1867),
                  ('', '', '6', '6', '7'), False),
        'BITA' : (Multi, (0x85, 0x95, 0xB5, 0xA5, 0x18A5),
                  ('2', '3', '4', '4', '5'), False),
        'BITB' : (Multi, (0xC5, 0xD5, 0xF5, 0xE5, 0x18E5),
                  ('2', '3', '4', '4', '5'), False),
        'CLR'  : (Multi, (0x00, 0x00, 0x7F, 0x6F, 0x186F),
                  ('', '', '6', '6', '7'), False),
        'CMPA' : (Multi, (0x81, 0x91, 0xB1, 0xA1, 0x18A1),
                  ('2', '3', '4', '4', '5'), False),
        'CMPB' : (Multi, (0xC1, 0xD1, 0xF1, 0xE1, 0x18E1),
                  ('2', '3', '4', '4', '5'), False),
        'COM'  : (Multi, (0x00, 0x00, 0x73, 0x63, 0x1863),
                  ('', '', '6', '6', '7'), False),
        'CPD'  : (Multi, (0x1A83, 0x1A93, 0x1AB3, 0x1AA3, 0xCDA3),
                  ('5', '6', '7', '7', '7'), True),
        'CPX'  : (Multi, (0x8C, 0x9C, 0xBC, 0xAC, 0xCDAC),
                  ('4', '5', '6', '6', '7'), True),
        'CPY'  : (Multi, (0x188C, 0x189C, 0x18BC, 0x1AAC, 0x18AC),
                  ('5', '6', '7', '7', '7'), True),
        'DEC'  : (Multi, (0x00, 0x00, 0x7A, 0x6A, 0x186A),
                  ('', '', '6', '6', '7'), False),
        'EORA' : (Multi, (0x88, 0x98, 0xB8, 0xA8, 0x18A8),
                  ('2', '3', '4', '4', '5'), False),
        'EORB' : (Multi, (0xC8, 0xD8, 0xF8, 0xE8, 0x18E8),
                  ('2', '3', '4', '4', '5'), False),
        'INC'  : (Multi, (0x00, 0x00, 0x7C, 0x6C, 0x186C),
                  ('', '', '6', '6', '7'), False),
        'JMP'  : (Multi, (0x00, 0x00, 0x7E, 0x6E, 0x186E),
                  ('', '', '3', '3', '4'), False),
        'JSR'  : (Multi, (0x00, 0x9D, 0xBD, 0xAD, 0x18AD),
                  ('', '5', '6', '6', '7'), False),
        'LDA'  : (Multi, (0x86, 0x96, 0xB6, 0xA6, 0x18A6),
                  ('2', '3', '4', '4', '5'), False),
        'LDAA' : (Multi, (0x86, 0x96, 0xB6, 0xA6, 0x18A6),
                  ('2', '3', '4', '4', '5'), False),
        'LDB'  : (Multi, (0xC6, 0xD6, 0xF6, 0xE6, 0x18E6),
                  ('2', '3', '4', '4', '5'), False),
        'LDAB' : (Multi, (0xC6, 0xD6, 0xF6, 0xE6, 0x18E6),
                  ('2', '3', '4', '4', '5'), False),
        'LDD'  : (Multi, (0xCC, 0xDC, 0xFC, 0xEC, 0x18EC),
                  ('3', '4', '5', '5', '6'), True),
        'LDAD' : (Multi, (0xCC, 0xDC, 0xFC, 0xEC, 0x18EC),
                  ('3', '4', '5', '5', '6'), True),
        'LDS'  : (Multi, (0x8E, 0x9E, 0xBE, 0xAE, 0x18AE),
                  ('3', '4', '5', '5', '6'), True),
        'LDX'  : (Multi, (0xCE, 0xDE, 0xFE, 0xEE, 0xCDEE),
                  ('3', '4', '5', '5', '6'), True),
        'LDY'  : (Multi, (0x18CE, 0x18DE, 0x18FE, 0x1AEE, 0x18EE),
                  ('4', '5', '6', '6', '6'), True),
        'LSL'  : (Multi, (0x00, 0x00, 0x78, 0x68, 0x1868),
                  ('', '', '6', '6', '7'), False),
        'LSR'  : (Multi, (0x00, 0x00, 0x74, 0x64, 0x1864),
                  ('', '', '6', '6', '7'), False),
        'NEG'  : (Multi, (0x00, 0x00, 0x70, 0x60, 0x1860),
                  ('', '', '6', '6', '7'), False),
        'ORAA' : (Multi, (0x8A, 0x9A, 0xBA, 0xAA, 0x18AA),
                  ('2', '3', '4', '4', '5'), False),
        'ORAB' : (Multi, (0xCA, 0xDA, 0xFA, 0xEA, 0x18EA),
                  ('2', '3', '4', '4', '5'), False),
        'ROL'  : (Multi, (0x00, 0x00, 0x79, 0x69, 0x1869),
                  ('', '', '6', '6', '7'), False),
        'ROR'  : (Multi, (0x00, 0x00, 0x76, 0x66, 0x1866),
                  ('', '', '6', '6', '7'), False),
        'SBCA' : (Multi, (0x82, 0x92, 0xB2, 0xA2, 0x18A2),
                  ('2', '3', '4', '4', '5'), False),
        'SBCB' : (Multi, (0xC2, 0xD2, 0xF2, 0xE2, 0x18E2),
                  ('2', '3', '4', '4', '5'), False),
        'STA'  : (Multi, (0x00, 0x97, 0xB7, 0xA7, 0x18A7),
                  ('', '3', '4', '4', '5'), False),
        'STAA' : (Multi, (0x00, 0x97, 0xB7, 0xA7, 0x18A7),
                  ('', '3', '4', '4', '5'), False),
        'STB'  : (Multi, (0x00, 0xD7, 0xF7, 0xE7, 0x18E7),
                  ('', '3', '4', '4', '5'), False),
        'STAB' : (Multi, (0x00, 0xD7, 0xF7, 0xE7, 0x18E7),
                  ('', '3', '4', '4', '5'), False),
        'STD'  : (Multi, (0x00, 0xDD, 0xFD, 0xED, 0x18ED),
                  ('', '4', '5', '5', '6'), False),
        'STAD' : (Multi, (0x00, 0xDD, 0xFD, 0xED, 0x18ED),
                  ('', '4', '5', '5', '6'), False),
        'STS'  : (Multi, (0x00, 0x9F, 0xBF, 0xAF, 0x18AF),
                  ('', '4', '5', '5', '6'), False),
        'STX'  : (Multi, (0x00, 0xDF, 0xFF, 0xEF, 0xCDEF),
                  ('', '4', '5', '5', '6'), False),
        'STY'  : (Multi, (0x00, 0x18DF, 0x18FF, 0x1AEF, 0x18EF),
                  ('', '5', '6', '6', '6'), False),
        'SUBA' : (Multi, (0x80, 0x90, 0xB0, 0xA0, 0x18A0),
                  ('2', '3', '4', '4', '5'), False),
        'SUBB' : (Multi, (0xC0, 0xD0, 0xF0, 0xE0, 0x18E0),
                  ('2', '3', '4', '4', '5'), False),
        'SUBD' : (Multi, (0x83, 0x93, 0xB3, 0xA3, 0x18A3),
                  ('4', '5', '6', '6', '7'), True),
        'TST'  : (Multi, (0x00, 0x00, 0x7D, 0x6D, 0x186D),
                  ('', '', '6', '6', '7'), False),

        'BRCLR': (Bits, (0x13, 0x1F, 0x181F), ('6', '7', '8')),
        'BRSET': (Bits, (0x12, 0x1E, 0x181E), ('6', '7', '8')),
        'BCLR' : (Bits, (0x15, 0x1D, 0x181D), ('6', '7', '8')),
        'BSET' : (Bits, (0x14, 0x1C, 0x181C), ('6', '7', '8'))

    }

    dec.Asm.Timing_Length = 2

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
    - Indexed X mode
    - Indexed Y mode
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
        length = 1
        assem.MoreParameters()
        indexreg = assem.NowChar(True).upper()
        if indexreg == 'X':
            index = 3
        elif indexreg == 'Y':
            index = 4
        else:
            errors.DoError('badoper', False)
            return

    elif dec.Asm.Parse_Line[dec.Asm.Parse_Pointer:dec.Asm.Parse_Pointer+2]\
            .upper() == 'X ':
        # Zero offset indexed X mode
        value = 0
        length = 1
        index = 3
        assem.IncParsePointer()

    elif dec.Asm.Parse_Line[dec.Asm.Parse_Pointer:dec.Asm.Parse_Pointer+2]\
            .upper() == 'Y ':
        # Zero offset indexed Y mode
        value = 0
        length = 1
        index = 4
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
            length = 1
            indexreg = assem.NowChar(True).upper()
            if indexreg == 'X':
                index = 3
            elif indexreg == 'Y':
                index = 4
            else:
                errors.DoError('badoper', False)
                index = 3
            if dec.Asm.Pass == 2 and (value > 255 or value < 0):
                errors.DoError('range', False)

        else:
            # Direct or extended mode
            if dec.Asm.Instructions[dec.Asm.Mnemonic][1][1] == 0\
                    or prefix == '>':
                # Use extended mode because direct mode doesn't exist or
                # forced extended
                index = 2
                length = 2
            elif prefix == '<':
                # Forced direct mode
                index = 1
                length = 1
                if dec.Asm.Pass == 2 and value > 255:
                    errors.DoError('range', False)
            else:
                # Let the assembler deside whether it's direct or extended
                if dest[1]:
                    # Forward referenced label used, use extended
                    index = 2
                    length = 2
                else:
                    if value > 255:
                        index = 2
                        length = 2
                    else:
                        index = 1
                        length = 1

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][index]
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][index]
    Code(opcode)
    if length == 1:
        target.CodeByte(value)
    else:
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

    index = 0
    if assem.NowChar() == ',':
        # Zero offset indexed
        memory = 0
        assem.MoreParameters()
    else:
        # If first parameter is X or Y we still have 0 offset
        if dec.Asm.Parse_Line[dec.Asm.Parse_Pointer:dec.Asm.Parse_Pointer+2]\
                .upper() in ('X,', 'Y,'):
            memory = 0
            index = -1
        else:
            # direct address or 8-bit unsigned offset
            memory = assem.EvalExpr()[0]
            if not assem.MoreParameters():
                # We expected more parameters
                errors.DoError('missoper', False)
                return

    if dec.Asm.Parse_Line[dec.Asm.Parse_Pointer:dec.Asm.Parse_Pointer+2]\
            .upper() == 'X,':
        # It is index register X mode
        index = 1
        assem.IncParsePointer()
        if not assem.MoreParameters():
            # We expected more parameters
            errors.DoError('missoper', False)
            return
    elif dec.Asm.Parse_Line[dec.Asm.Parse_Pointer:dec.Asm.Parse_Pointer+2]\
            .upper() == 'Y,':
        # It is index register Y mode
        index = 2
        assem.IncParsePointer()
        if not assem.MoreParameters():
            # We expected more parameters
            errors.DoError('missoper', False)
            return
    else:
        # It was not an indexed mode
        if index == -1:
            # We expected indexed mode, but didn't get it
            errors.DoError('badoper', False)
            return
        index = 0

    # Get immediate data mask
    prefix = assem.NowChar()
    if prefix in '#/=\\':
        # An immediate prefix was present
        assem.IncParsePointer()
    else:
        # No prefix was given, asume #
        prefix = '#'
    value = assem.EvalExpr()[0]

    if prefix == '/':
        value = value >> 8
    elif prefix == '=':
        value = value >> 16
    elif prefix == '\\':
        value = value >> 24

    if dec.Asm.Mnemonic[1] == 'R':
        # It's one of the branch instructions
        if not assem.MoreParameters():
            # We expected more parameters
            errors.DoError('missoper', False)
            return

        dest = assem.EvalExpr()[0]
        offset = dest - dec.Asm.BOL_Address - 4
        if index == 2:
            offset = offset - 1
        if dec.Asm.Pass == 2 and (offset < -128 or offset > 127):
            errors.DoError('range', False)

        Code(dec.Asm.Instructions[dec.Asm.Mnemonic][1][index])
        target.CodeByte(memory)
        target.CodeByte(value)
        target.CodeByte(offset)
    else:
        Code(dec.Asm.Instructions[dec.Asm.Mnemonic][1][index])
        target.CodeByte(memory)
        target.CodeByte(value)

    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][index]

    if dec.Asm.Pass == 2 and (memory < 0 or memory > 255):
        # Test this way back here, because it is not very important
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
