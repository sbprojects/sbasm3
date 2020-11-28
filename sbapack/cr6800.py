# ------------------------------------------------------------------------------
#
#   cr6800.py
#
#   Package module file for the SB-Assembler sbasm
#   See www.sbprojects.net for details
#
#   Author: San Bergmans
#   Date  : 2015-12-21
#
#   Cross Overlay Template
#   This cross overlay will handle the assembling of 6800, 6801 and 6301
#   programs, depending on the calling cross overlay
#
# ------------------------------------------------------------------------------

import sys
import os

import assem
import dec
import errors
import target

crossversion = '3.01.03'
minversion = '3.01.01'


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

    # Tupple: Handling routine, opcode, 6800 timing, 6801 timing

    dec.Asm.Instructions = {
        'ABA' : (Implied, 0x1B, '2', '2', '1'),
        'ABX' : (Implied, 0x3A, '0', '3', '1'),
        'ASLA': (Implied, 0x48, '2', '2', '1'),
        'ASLB': (Implied, 0x58, '2', '2', '1'),
        'ASLD': (Implied, 0x05, '0', '3', '1'),
        'ASRA': (Implied, 0x47, '2', '2', '1'),
        'ASRB': (Implied, 0x57, '2', '2', '1'),
        'CBA' : (Implied, 0x11, '2', '2', '1'),
        'CLC' : (Implied, 0x0C, '2', '2', '1'),
        'CLI' : (Implied, 0x0E, '2', '2', '1'),
        'CLRA': (Implied, 0x4F, '2', '2', '1'),
        'CLRB': (Implied, 0x5F, '2', '2', '1'),
        'CLV' : (Implied, 0x0A, '2', '2', '1'),
        'COMA': (Implied, 0x43, '2', '2', '1'),
        'COMB': (Implied, 0x53, '2', '2', '1'),
        'DAA' : (Implied, 0x19, '2', '2', '2'),
        'DECA': (Implied, 0x4A, '2', '2', '1'),
        'DECB': (Implied, 0x5A, '2', '2', '1'),
        'DES' : (Implied, 0x34, '4', '3', '1'),
        'DEX' : (Implied, 0x09, '4', '3', '1'),
        'INCA': (Implied, 0x4C, '2', '2', '1'),
        'INCB': (Implied, 0x5C, '2', '2', '1'),
        'INS' : (Implied, 0x31, '4', '3', '1'),
        'INX' : (Implied, 0x08, '4', '3', '1'),
        'LSLA': (Implied, 0x48, '2', '2', '1'),
        'LSLB': (Implied, 0x58, '2', '2', '1'),
        'LSLD': (Implied, 0x05, '0', '3', '1'),
        'LSRA': (Implied, 0x44, '2', '2', '1'),
        'LSRB': (Implied, 0x54, '2', '2', '1'),
        'LSRD': (Implied, 0x04, '0', '3', '1'),
        'MUL' : (Implied, 0x3D, '0', '10', '7'),
        'NEGA': (Implied, 0x40, '2', '2', '1'),
        'NEGB': (Implied, 0x50, '2', '2', '1'),
        'NOP' : (Implied, 0x01, '2', '2', '1'),
        'PSHA': (Implied, 0x36, '4', '3', '4'),
        'PSHB': (Implied, 0x37, '4', '3', '4'),
        'PSHX': (Implied, 0x3C, '0', '4', '5'),
        'PULA': (Implied, 0x32, '4', '4', '3'),
        'PULB': (Implied, 0x33, '4', '4', '3'),
        'PULX': (Implied, 0x38, '0', '5', '4'),
        'ROLA': (Implied, 0x49, '2', '2', '1'),
        'ROLB': (Implied, 0x59, '2', '2', '1'),
        'RORA': (Implied, 0x46, '2', '2', '1'),
        'RORB': (Implied, 0x56, '2', '2', '1'),
        'RTI' : (Implied, 0x3B, '10', '10', '10'),
        'RTS' : (Implied, 0x39, '5', '5', '5'),
        'SBA' : (Implied, 0x10, '2', '2', '1'),
        'SEC' : (Implied, 0x0D, '2', '2', '1'),
        'SEI' : (Implied, 0x0F, '2', '2', '1'),
        'SEV' : (Implied, 0x0B, '2', '2', '1'),
        'SLP' : (Implied, 0x1A, '0', '0', '4'),
        'SWI' : (Implied, 0x3F, '12', '12', '12'),
        'TAB' : (Implied, 0x16, '2', '2', '1'),
        'TAP' : (Implied, 0x06, '2', '2', '1'),
        'TBA' : (Implied, 0x17, '2', '2', '1'),
        'TPA' : (Implied, 0x07, '2', '2', '1'),
        'TSTA': (Implied, 0x4D, '2', '2', '1'),
        'TSTB': (Implied, 0x5D, '2', '2', '1'),
        'TSX' : (Implied, 0x30, '4', '3', '1'),
        'TXS' : (Implied, 0x35, '4', '3', '1'),
        'WAI' : (Implied, 0x3E, '9', '9', '9'),
        'XGDX': (Implied, 0x18, '0', '0', '2'),

        'BCC' : (Branch, 0x24, '4', '3', '3'),
        'BCS' : (Branch, 0x25, '4', '3', '3'),
        'BEQ' : (Branch, 0x27, '4', '3', '3'),
        'BGE' : (Branch, 0x2C, '4', '3', '3'),
        'BGT' : (Branch, 0x2E, '4', '3', '3'),
        'BHI' : (Branch, 0x22, '4', '3', '3'),
        'BLE' : (Branch, 0x2F, '4', '3', '3'),
        'BLS' : (Branch, 0x23, '4', '3', '3'),
        'BLT' : (Branch, 0x2D, '4', '3', '3'),
        'BMI' : (Branch, 0x2B, '4', '3', '3'),
        'BNE' : (Branch, 0x26, '4', '3', '3'),
        'BPL' : (Branch, 0x2A, '4', '3', '3'),
        'BRA' : (Branch, 0x20, '4', '3', '3'),
        'BRN' : (Branch, 0x21, '0', '3', '3'),
        'BSR' : (Branch, 0x8D, '8', '6', '3'),
        'BVC' : (Branch, 0x28, '4', '3', '3'),
        'BVS' : (Branch, 0x29, '4', '3', '3'),
        'BHS' : (Branch, 0x24, '4', '3', '3'),
        'BLO' : (Branch, 0x25, '4', '3', '3'),

        'ADCA' : (Multi, (0x89, 0x99, 0xA9, 0xB9),
                        ('2', '3', '5', '4'),
                        ('2', '3', '4', '4'),
                        ('2', '3', '4', '4')),
        'ADCB' : (Multi, (0xC9, 0xD9, 0xE9, 0xF9),
                        ('2', '3', '5', '4'),
                        ('2', '3', '4', '4'),
                        ('2', '3', '4', '4')),
        'ADDA' : (Multi, (0x8B, 0x9B, 0xAB, 0xBB),
                        ('2', '3', '5', '4'),
                        ('2', '3', '4', '4'),
                        ('2', '3', '4', '4')),
        'ADDB' : (Multi, (0xCB, 0xDB, 0xEB, 0xFB),
                        ('2', '3', '5', '4'),
                        ('2', '3', '4', '4'),
                        ('2', '3', '4', '4')),
        'ADDD' : (Multi, (0xC3, 0xD3, 0xE3, 0xF3),
                        ('0', '0', '0', '0'),
                        ('4', '5', '6', '6'),
                        ('3', '4', '5', '5')),
        'ANDA' : (Multi, (0x84, 0x94, 0xA4, 0xB4),
                        ('2', '3', '5', '4'),
                        ('2', '3', '4', '4'),
                        ('2', '3', '4', '4')),
        'ANDB' : (Multi, (0xC4, 0xD4, 0xE4, 0xF4),
                        ('2', '3', '5', '4'),
                        ('2', '3', '4', '4'),
                        ('2', '3', '4', '4')),
        'ASL'  : (Multi, (0x00, 0x00, 0x68, 0x78),
                        ('0', '0', '7', '6'),
                        ('0', '0', '6', '6'),
                        ('0', '0', '6', '6')),
        'ASR'  : (Multi, (0x00, 0x00, 0x67, 0x77),
                        ('0', '0', '7', '6'),
                        ('0', '0', '6', '6'),
                        ('0', '0', '6', '6')),
        'BITA' : (Multi, (0x85, 0x95, 0xA5, 0xB5),
                        ('2', '3', '5', '4'),
                        ('2', '3', '4', '4'),
                        ('2', '3', '4', '4')),
        'BITB' : (Multi, (0xC5, 0xD5, 0xE5, 0xF5),
                        ('2', '3', '5', '4'),
                        ('2', '3', '4', '4'),
                        ('2', '3', '4', '4')),
        'CLR'  : (Multi, (0x00, 0x00, 0x6F, 0x7F),
                        ('0', '0', '7', '6'),
                        ('0', '0', '6', '6'),
                        ('0', '0', '5', '5')),
        'CMPA' : (Multi, (0x81, 0x91, 0xA1, 0xB1),
                        ('2', '3', '5', '4'),
                        ('2', '3', '4', '4'),
                        ('2', '3', '4', '4')),
        'CMPB' : (Multi, (0xC1, 0xD1, 0xE1, 0xF1),
                        ('2', '3', '5', '4'),
                        ('2', '3', '4', '4'),
                        ('2', '3', '4', '4')),
        'COM'  : (Multi, (0x00, 0x00, 0x63, 0x73),
                        ('0', '0', '7', '6'),
                        ('0', '0', '6', '6'),
                        ('0', '0', '6', '6')),
        'CPX'  : (Multi, (0x8C, 0x9C, 0xAC, 0xBC),
                        ('3', '4', '6', '5'),
                        ('4', '5', '6', '6'),
                        ('3', '4', '5', '5')),
        'DEC'  : (Multi, (0x00, 0x00, 0x6A, 0x7A),
                        ('0', '0', '7', '6'),
                        ('0', '0', '6', '6'),
                        ('0', '0', '6', '6')),
        'EORA' : (Multi, (0x88, 0x98, 0xA8, 0xB8),
                        ('2', '3', '5', '4'),
                        ('2', '3', '4', '4'),
                        ('2', '3', '4', '4')),
        'EORB' : (Multi, (0xC8, 0xD8, 0xE8, 0xF8),
                        ('2', '3', '5', '4'),
                        ('2', '3', '4', '4'),
                        ('2', '3', '4', '4')),
        'INC'  : (Multi, (0x00, 0x00, 0x6C, 0x7C),
                        ('0', '0', '7', '6'),
                        ('0', '0', '6', '6'),
                        ('0', '0', '6', '6')),
        'JMP'  : (Multi, (0x00, 0x00, 0x6E, 0x7E),
                        ('0', '0', '4', '3'),
                        ('0', '0', '3', '3'),
                        ('0', '0', '3', '3')),
        'JSR'  : (Multi, (0x00, 0x9D, 0xAD, 0xBD),
                        ('0', '0', '8', '9'),
                        ('0', '5', '6', '6'),
                        ('0', '5', '5', '6')),
        'LDAA' : (Multi, (0x86, 0x96, 0xA6, 0xB6),
                        ('2', '3', '5', '4'),
                        ('2', '3', '4', '4'),
                        ('2', '3', '4', '4')),
        'LDAB' : (Multi, (0xC6, 0xD6, 0xE6, 0xF6),
                        ('2', '3', '5', '4'),
                        ('2', '3', '4', '4'),
                        ('2', '3', '4', '4')),
        'LDD'  : (Multi, (0xCC, 0xDC, 0xEC, 0xFC),
                        ('0', '0', '0', '0'),
                        ('3', '4', '5', '5'),
                        ('3', '4', '5', '5')),
        'LDAD' : (Multi, (0xCC, 0xDC, 0xEC, 0xFC),
                        ('0', '0', '0', '0'),
                        ('3', '4', '5', '5'),
                        ('3', '4', '5', '5')),
        'LDS'  : (Multi, (0x8E, 0x9E, 0xAE, 0xBE),
                        ('3', '4', '6', '5'),
                        ('3', '4', '5', '5'),
                        ('3', '4', '5', '5')),
        'LDX'  : (Multi, (0xCE, 0xDE, 0xEE, 0xFE),
                        ('3', '4', '6', '5'),
                        ('3', '4', '5', '5'),
                        ('3', '4', '5', '5')),
        'LSL'  : (Multi, (0x00, 0x00, 0x68, 0x78),
                        ('0', '0', '7', '6'),
                        ('0', '0', '6', '6'),
                        ('0', '0', '6', '6')),
        'LSR'  : (Multi, (0x00, 0x00, 0x64, 0x74),
                        ('0', '0', '7', '6'),
                        ('0', '0', '6', '6'),
                        ('0', '0', '6', '6')),
        'NEG'  : (Multi, (0x00, 0x00, 0x60, 0x70),
                        ('0', '0', '7', '6'),
                        ('0', '0', '6', '6'),
                        ('0', '0', '6', '6')),
        'ORAA' : (Multi, (0x8A, 0x9A, 0xAA, 0xBA),
                        ('2', '3', '5', '4'),
                        ('2', '3', '4', '4'),
                        ('2', '3', '4', '4')),
        'ORAB' : (Multi, (0xCA, 0xDA, 0xEA, 0xFA),
                        ('2', '3', '5', '4'),
                        ('2', '3', '4', '4'),
                        ('2', '3', '4', '4')),
        'ROL'  : (Multi, (0x00, 0x00, 0x69, 0x79),
                        ('0', '0', '7', '6'),
                        ('0', '0', '6', '6'),
                        ('0', '0', '6', '6')),
        'ROR'  : (Multi, (0x00, 0x00, 0x66, 0x76),
                        ('0', '0', '7', '6'),
                        ('0', '0', '6', '6'),
                        ('0', '0', '6', '6')),
        'SBCA' : (Multi, (0x82, 0x92, 0xA2, 0xB2),
                        ('2', '3', '5', '4'),
                        ('2', '3', '4', '4'),
                        ('2', '3', '4', '4')),
        'SBCB' : (Multi, (0xC2, 0xD2, 0xE2, 0xF2),
                        ('2', '3', '5', '4'),
                        ('2', '3', '4', '4'),
                        ('2', '3', '4', '4')),
        'STAA' : (Multi, (0x00, 0x97, 0xA7, 0xB7),
                        ('0', '4', '6', '5'),
                        ('0', '3', '4', '4'),
                        ('0', '3', '4', '4')),
        'STAB' : (Multi, (0x00, 0xD7, 0xE7, 0xF7),
                        ('0', '4', '6', '5'),
                        ('0', '3', '4', '4'),
                        ('0', '3', '4', '4')),
        'STD'  : (Multi, (0x00, 0xDD, 0xED, 0xFD),
                        ('0', '0', '0', '0'),
                        ('0', '4', '5', '5'),
                        ('0', '4', '5', '5')),
        'STAD' : (Multi, (0x00, 0xDD, 0xED, 0xFD),
                        ('0', '0', '0', '0'),
                        ('0', '4', '5', '5'),
                        ('0', '4', '5', '5')),
        'STS'  : (Multi, (0x00, 0x9F, 0xAF, 0xBF),
                        ('0', '5', '7', '6'),
                        ('0', '4', '5', '5'),
                        ('0', '4', '5', '5')),
        'STX'  : (Multi, (0x00, 0xDF, 0xEF, 0xFF),
                        ('0', '5', '7', '6'),
                        ('0', '4', '5', '5'),
                        ('0', '4', '5', '5')),
        'SUBA' : (Multi, (0x80, 0x90, 0xA0, 0xB0),
                        ('2', '3', '5', '4'),
                        ('2', '3', '4', '4'),
                        ('2', '3', '4', '4')),
        'SUBB' : (Multi, (0xC0, 0xD0, 0xE0, 0xF0),
                        ('2', '3', '5', '4'),
                        ('2', '3', '4', '4'),
                        ('2', '3', '4', '4')),
        'SUBD' : (Multi, (0x83, 0x93, 0xA3, 0xB3),
                        ('0', '0', '0', '0'),
                        ('4', '5', '6', '6'),
                        ('3', '4', '5', '5')),
        'TST'  : (Multi, (0x00, 0x00, 0x6D, 0x7D),
                        ('0', '0', '7', '6'),
                        ('0', '0', '6', '6'),
                        ('0', '0', '4', '4')),

        'AIM'  : (H6301, (0x71, 0x61), ('6', '7')),
        'EIM'  : (H6301, (0x75, 0x65), ('6', '7')),
        'OIM'  : (H6301, (0x72, 0x62), ('6', '7')),
        'TIM'  : (H6301, (0x7B, 0x6B), ('4', '5'))
    }

    dec.Asm.Timing_Length = 2

    dec.Asm.Memory = 0
    if dec.Asm.Pass == 1:
        sys.stdout.write('Loaded ' + dec.Cross.Name[2:] + ' overlay version ' +
                         crossversion + dec.EOL)

    dec.Asm.Max_Address = dec.MAX16
    dec.Asm.PP_TA_Factor = 1
    dec.Flags.BigEndian = True

    return


# ------------------------------------------------------------------------------

def CrossDirective():

    """
    No extra directives for this Cross overlay
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

    if dec.Cross.Name == 'cr6800':
        # In case of 6800 overlay
        index = 2
    elif dec.Cross.Name == 'cr6801':
        # In case of 6801 overlay
        index = 3
    else:
        # Must be 6301 now
        index = 4

    if dec.Asm.Mnemonic in dec.Asm.Instructions:
        func = dec.Asm.Instructions[dec.Asm.Mnemonic][0]
        func(index)
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

def Implied(index):

    """
    Handle implied addressing mode.
    Simply save the opcode and we're done with it.
    """

    global Asm

    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][index]
    if dec.Asm.Timing == '0':
        # This instruction is not available on this processor
        errors.DoError('badopco', False)
        return
    target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1])


# -----------------------------------------------------------------------------

def Branch(index):

    """
    Handle branch instructions.
    Displacement is destinaiton - current address - 2
    """

    global Asm

    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][index]
    if dec.Asm.Timing == '0':
        # This instruction is not available on this processor
        errors.DoError('badopco', False)
        return

    if MissingOperand():
        return

    value = assem.EvalExpr()
    offset = value[0] - dec.Asm.BOL_Address - 2

    if dec.Asm.Pass == 2 and (offset < -128 or offset > 127):
        errors.DoError('range', False)

    target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1])
    target.CodeByte(offset)

    NoMore()


# -----------------------------------------------------------------------------

def Multi(index):

    """
    Handle all other mnemonics of the 6800 instructionset.
    Each addressing mode has a separate entry in the opcode tupple.
    If the opcode is '00' the particular instruction is not available.
    If the mnemonic ends in S or X immediate mode will have 16 bit constants
    """

    global Asm

    available = int(dec.Asm.Instructions[dec.Asm.Mnemonic][index][0]) + \
        int(dec.Asm.Instructions[dec.Asm.Mnemonic][index][1]) + \
        int(dec.Asm.Instructions[dec.Asm.Mnemonic][index][2]) + \
        int(dec.Asm.Instructions[dec.Asm.Mnemonic][index][3])
    if available == 0:
        errors.DoError('badopco', False)
        return

    if MissingOperand():
        return

    if assem.NowChar() in "#/=\\":
        # Immediate addressing mode
        opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][0]
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][index][0]
        if dec.Asm.Timing == '0':
            # This instruction is not available on this processor
            errors.DoError('badopco', False)
            return
        if opcode == 0:
            errors.DoError('badoper', False)
            return
        prefix = assem.NowChar(True)
        value = assem.EvalExpr()
        if prefix == '#':
            operand = value[0]
        elif prefix == '/':
            operand = value[0] >> 8
        elif prefix == '=':
            operand = value[0] >> 16
        else:
            operand = value[0] >> 24

        if dec.Asm.Mnemonic[-1] in 'SXD':
            target.CodeByte(opcode)
            target.CodeWord(operand)
        else:
            target.CodeByte(opcode)
            target.CodeByte(operand)

        NoMore()
        return

    indexedX = False
    if dec.Asm.Parse_Line[dec.Asm.Parse_Pointer:].upper()[:2] == 'X ' or \
            assem.NowChar() == ',':
        # LDAA X    and LDAA ,X    are equivalent to the official LDAA 0,X
        value = (0, False)
        if assem.NowChar().upper() == 'X':
            indexedX = True
    else:
        if assem.NowChar() in '<>':
            prefix = assem.NowChar(True)
        else:
            prefix = ''

        value = assem.EvalExpr()

    if indexedX or assem.MoreParameters():
        # It must be ZP,X addressing mode
        opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][2]
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][index][2]
        if dec.Asm.Timing == '0':
            # This instruction is not available on this processor
            errors.DoError('badopco', False)
            return

        if assem.NowChar(True).upper() != 'X' or opcode == 0:
            errors.DoError('badoper', False)
            return

        if dec.Asm.Pass == 2 and (value[0] >> 8) != 0:
            errors.DoError('range', False)
        target.CodeByte(opcode)
        target.CodeByte(value[0])

        NoMore()
        return

    opcodezp = dec.Asm.Instructions[dec.Asm.Mnemonic][1][1]
    timingzp = dec.Asm.Instructions[dec.Asm.Mnemonic][index][1]
    opcodeabs = dec.Asm.Instructions[dec.Asm.Mnemonic][1][3]
    timingabs = dec.Asm.Instructions[dec.Asm.Mnemonic][index][3]

    if opcodezp == 0:
        zp = False
    elif prefix == '<':
        zp = True
        if dec.Asm.Pass == 2 and (value[0] >> 8) != 0:
            errors.DoError('range', False)
    elif prefix == '>' or value[1]:
        zp = False
    else:
        zp = False
        if (value[0] >> 8) == 0:
            zp = True

    if zp:
        # ZP mode is to be used
        if timingzp == 0:
            errors.DoError('badopco', False)
            return
        target.CodeByte(opcodezp)
        target.CodeByte(value[0])
        dec.Asm.Timing = timingzp
    else:
        # ABS mode is to be used
        if timingabs == 0:
            errors.DoError('badopco', False)
            return
        target.CodeByte(opcodeabs)
        target.CodeWord(value[0])
        dec.Asm.Timing = timingabs

    NoMore()


# -----------------------------------------------------------------------------

def H6301(index):

    """
    Handle immediate boolean instructions, only known to the Hitachi 6301
    """

    global Asm

    if index != 4:
        # These instructions only exist in the 6301
        errors.DoError('badopco', False)
        return

    if MissingOperand():
        return

    prefix = assem.NowChar(True)
    if prefix not in '#/=\\':
        errors.DoError('badoper', False)
        return

    value = assem.EvalExpr()

    if prefix == '#':
        oper1 = value[0]
    elif prefix == '/':
        oper1 = value[0] >> 8
    elif prefix == '=':
        oper1 = value[0] >> 16
    else:
        oper1 = value[0] >> 24

    if not assem.MoreParameters():
        errors.DoError('missoper', False)
        return

    prefix = ''
    if assem.NowChar() == '<':
        # Only forced ZP prefix allowed today
        assem.IncParsePointer()
        prefix = '<'

    value = assem.EvalExpr()

    if dec.Asm.Pass == 2 and prefix == '':
        if value[0] >> 8 != 0:
            errors.DoError('range', False)

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][0]
    timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][0]
    if assem.MoreParameters():
        if assem.NowChar(True).upper() != 'X':
            errors.DoError('badoper', False)
        opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][1]
        timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][1]

    target.CodeByte(opcode)
    target.CodeByte(oper1)
    target.CodeByte(value[0])
    dec.Asm.Timing = timing

    NoMore()


# -----------------------------------------------------------------------------

if __name__ == '__main__':
    print("")
    print("This is a python module, it's not a program.")
    print("This module is part of the sbasm package.")
    print("Run sbasm instead.")
    print("")
