# ------------------------------------------------------------------------------
#
#   cr6809.py
#
#   Package module file for the SB-Assembler sbasm
#   See www.sbprojects.net for details
#
#   Author: San Bergmans
#   Date  : 2015-12-21
#
#   This cross overlay will handle the assembling of 6809
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
        'ABX'  : (Implied, 0x3A, '3'),
        'ASLA' : (Implied, 0x48, '2'),
        'ASLB' : (Implied, 0x58, '2'),
        'ASRA' : (Implied, 0x47, '2'),
        'ASRB' : (Implied, 0x57, '2'),
        'CLRA' : (Implied, 0x4F, '2'),
        'CLRB' : (Implied, 0x5F, '2'),
        'COMA' : (Implied, 0x43, '2'),
        'COMB' : (Implied, 0x53, '2'),
        'DAA'  : (Implied, 0x19, '2'),
        'DECA' : (Implied, 0x4A, '2'),
        'DECB' : (Implied, 0x5A, '2'),
        'INCA' : (Implied, 0x4C, '2'),
        'INCB' : (Implied, 0x5C, '2'),
        'LSLA' : (Implied, 0x48, '2'),
        'LSLB' : (Implied, 0x58, '2'),
        'LSRA' : (Implied, 0x44, '2'),
        'LSRB' : (Implied, 0x54, '2'),
        'MUL'  : (Implied, 0x3D, '11'),
        'NEGA' : (Implied, 0x40, '2'),
        'NEGB' : (Implied, 0x50, '2'),
        'NOP'  : (Implied, 0x12, '2'),
        'ROLA' : (Implied, 0x49, '2'),
        'ROLB' : (Implied, 0x59, '2'),
        'RORA' : (Implied, 0x46, '2'),
        'RORB' : (Implied, 0x56, '2'),
        'RTI'  : (Implied, 0x3B, '15'),
        'RTS'  : (Implied, 0x39, '5'),
        'SEX'  : (Implied, 0x1D, '2'),
        'SWI'  : (Implied, 0x3F, '19'),
        'SWI2' : (Implied, 0x103F, '20'),
        'SWI3' : (Implied, 0x113F, '20'),
        'SYNC' : (Implied, 0x13, '2'),
        'TSTA' : (Implied, 0x4D, '2'),
        'TSTB' : (Implied, 0x5D, '2'),

        'ABA'  : (Implied, 0x3404ABE0, '12'),
        'ASLD' : (Implied, 0x5849, '4'),
        'ASRD' : (Implied, 0x4756, '4'),
        'CBA'  : (Implied, 0x3404A1E0, '12'),
        'CLC'  : (Implied, 0x1CFE, '3'),
        'CLF'  : (Implied, 0x1CBF, '3'),
        'CLI'  : (Implied, 0x1CEF, '3'),
        'CLIF' : (Implied, 0x1CAF, '3'),
        'CLRD' : (Implied, 0x4F5F, '4'),
        'CLV'  : (Implied, 0x1CFD, '3'),
        'COMD' : (Implied, 0x4353, '4'),
        'DES'  : (Implied, 0x327F, '5'),
        'DEX'  : (Implied, 0x301F, '5'),
        'DEY'  : (Implied, 0x313F, '5'),
        'DEU'  : (Implied, 0x335F, '5'),
        'INS'  : (Implied, 0x3261, '5'),
        'INU'  : (Implied, 0x3341, '5'),
        'INX'  : (Implied, 0x3001, '5'),
        'INY'  : (Implied, 0x3121, '5'),
        'LSLD' : (Implied, 0x5849, '4'),
        'LSRD' : (Implied, 0x4456, '4'),
        'PSHA' : (Implied, 0x3402, '6'),
        'PSHB' : (Implied, 0x3404, '6'),
        'PSHCC': (Implied, 0x3401, '6'),
        'PSHD' : (Implied, 0x3406, '7'),
        'PSHDP': (Implied, 0x3408, '6'),
        'PSHPC': (Implied, 0x3480, '6'),
        'PSHX' : (Implied, 0x3410, '6'),
        'PSHY' : (Implied, 0x3420, '6'),
        'PULA' : (Implied, 0x3502, '6'),
        'PULB' : (Implied, 0x3504, '6'),
        'PULCC': (Implied, 0x3501, '6'),
        'PULD' : (Implied, 0x3506, '7'),
        'PULDP': (Implied, 0x3508, '6'),
        'PULPC': (Implied, 0x3580, '6'),
        'PULX' : (Implied, 0x3510, '6'),
        'PULY' : (Implied, 0x3520, '6'),
        'ROLD' : (Implied, 0x5949, '4'),
        'RORD' : (Implied, 0x4656, '4'),
        'SBA'  : (Implied, 0x3404A0E0, '12'),
        'SEC'  : (Implied, 0x1A01, '3'),
        'SEF'  : (Implied, 0x1A40, '3'),
        'SEI'  : (Implied, 0x1A10, '3'),
        'SEIF' : (Implied, 0x1A50, '3'),
        'SEV'  : (Implied, 0x1A02, '3'),
        'TAB'  : (Implied, 0x1F894D, '9'),
        'TAP'  : (Implied, 0x1F8A, '7'),
        'TBA'  : (Implied, 0x1F984D, '9'),
        'TPA'  : (Implied, 0x1FA8, '7'),
        'TSX'  : (Implied, 0x1F41, '7'),
        'TXS'  : (Implied, 0x1F14, '7'),
        'WAI'  : (Implied, 0x3CFF, '20'),

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
        'BSR'  : (Branch, 0x8D, '7'),
        'BVC'  : (Branch, 0x28, '3'),
        'BVS'  : (Branch, 0x29, '3'),

        'LBCC' : (LBranch, 0x1024, '5+'),
        'LBCS' : (LBranch, 0x1025, '5+'),
        'LBEQ' : (LBranch, 0x1027, '5+'),
        'LBGE' : (LBranch, 0x102C, '5+'),
        'LBGT' : (LBranch, 0x102E, '5+'),
        'LBHI' : (LBranch, 0x1022, '5+'),
        'LBHS' : (LBranch, 0x1024, '5+'),
        'LBLE' : (LBranch, 0x102F, '5+'),
        'LBLO' : (LBranch, 0x1025, '5+'),
        'LBLS' : (LBranch, 0x1023, '5+'),
        'LBLT' : (LBranch, 0x102D, '5+'),
        'LBMI' : (LBranch, 0x102B, '5+'),
        'LBNE' : (LBranch, 0x1026, '5+'),
        'LBPL' : (LBranch, 0x102A, '5+'),
        'LBRA' : (LBranch, 0x16, '55'),
        'LBRN' : (LBranch, 0x1021, '5+'),
        'LBSR' : (LBranch, 0x17, '9'),
        'LBVC' : (LBranch, 0x1028, '5+'),
        'LBVS' : (LBranch, 0x1029, '5+'),

        'ADCA' : (Multi, (0x89, 0x99, 0xA9, 0xB9), ('2', '4', '4', '5'),
                  False),
        'ADCB' : (Multi, (0xC9, 0xD9, 0xE9, 0xF9), ('2', '4', '4', '5'),
                  False),
        'ADDA' : (Multi, (0x8B, 0x9B, 0xAB, 0xBB), ('2', '4', '4', '5'),
                  False),
        'ADDB' : (Multi, (0xCB, 0xDB, 0xEB, 0xFB), ('2', '4', '4', '5'),
                  False),
        'ADDD' : (Multi, (0xC3, 0xD3, 0xE3, 0xF3), ('4', '6', '6', '7'),
                  True),
        'ANDA' : (Multi, (0x84, 0x94, 0xA4, 0xB4), ('2', '4', '4', '5'),
                  False),
        'ANDB' : (Multi, (0xC4, 0xD4, 0xE4, 0xF4), ('2', '4', '4', '5'),
                  False),
        'ANDCC': (Multi, (0x1C, 0x00, 0x00, 0x00), ('3', '0', '0', '0'),
                  False),
        'ASL'  : (Multi, (0x00, 0x08, 0x68, 0x78), ('0', '6', '6', '7'),
                  False),
        'ASR'  : (Multi, (0x00, 0x07, 0x67, 0x77), ('0', '6', '6', '7'),
                  False),
        'BITA' : (Multi, (0x85, 0x95, 0xA5, 0xB5), ('2', '4', '4', '5'),
                  False),
        'BITB' : (Multi, (0xC5, 0xD5, 0xE5, 0xF5), ('2', '4', '4', '5'),
                  False),
        'CLR'  : (Multi, (0x00, 0x0F, 0x6F, 0x7F), ('0', '6', '6', '7'),
                  False),
        'CMPA' : (Multi, (0x81, 0x91, 0xA1, 0xB1), ('2', '4', '4', '5'),
                  False),
        'CMPB' : (Multi, (0xC1, 0xD1, 0xE1, 0xF1), ('2', '4', '4', '5'),
                  False),
        'CMPD' : (Multi, (0x1083, 0x1093, 0x10A3, 0x10B3),
                  ('5', '7', '7', '8'), True),
        'CMPS' : (Multi, (0x118C, 0x119C, 0x11AC, 0x11BC),
                  ('5', '7', '7', '8'), True),
        'CMPU' : (Multi, (0x1183, 0x1193, 0x11A3, 0x11B3),
                  ('5', '7', '7', '8'), True),
        'CMPX' : (Multi, (0x8C, 0x9C, 0xAC, 0xBC), ('4', '6', '6', '7'), True),
        'CMPY' : (Multi, (0x108C, 0x109C, 0x10AC, 0x10BC),
                  ('5', '7', '7', '8'), True),
        'COM'  : (Multi, (0x00, 0x03, 0x63, 0x73), ('0', '6', '6', '7'),
                  False),
        'CWAI' : (Multi, (0x3C, 0x00, 0x00, 0x00), ('20', '0', '0', '0'),
                  False),
        'DEC'  : (Multi, (0x00, 0x0A, 0x6A, 0x7A), ('0', '6', '6', '7'),
                  False),
        'EORA' : (Multi, (0x88, 0x98, 0xA8, 0xB8), ('2', '4', '4', '5'),
                  False),
        'EORB' : (Multi, (0xC8, 0xD8, 0xE8, 0xF8), ('2', '4', '4', '5'),
                  False),
        'INC'  : (Multi, (0x00, 0x0C, 0x6C, 0x7C), ('0', '6', '6', '7'),
                  False),
        'JMP'  : (Multi, (0x00, 0x0E, 0x6E, 0x7E), ('0', '3', '3', '4'),
                  False),
        'JSR'  : (Multi, (0x00, 0x9D, 0xAD, 0xBD), ('0', '7', '7', '8'),
                  False),
        'LDA'  : (Multi, (0x86, 0x96, 0xA6, 0xB6), ('2', '4', '4', '5'),
                  False),
        'LDAA' : (Multi, (0x86, 0x96, 0xA6, 0xB6), ('2', '4', '4', '5'),
                  False),
        'LDB'  : (Multi, (0xC6, 0xD6, 0xE6, 0xF6), ('2', '4', '4', '5'),
                  False),
        'LDAB' : (Multi, (0xC6, 0xD6, 0xE6, 0xF6), ('2', '4', '4', '5'),
                  False),
        'LDD'  : (Multi, (0xCC, 0xDC, 0xEC, 0xFC), ('3', '5', '5', '6'),
                  True),
        'LDAD' : (Multi, (0xCC, 0xDC, 0xEC, 0xFC), ('3', '5', '5', '6'),
                  True),
        'LDS'  : (Multi, (0x10CE, 0x10DE, 0x10EE, 0x10FE),
                  ('4', '6', '6', '7'), True),
        'LDU'  : (Multi, (0xCE, 0xDE, 0xEE, 0xFE), ('3', '5', '5', '6'), True),
        'LDX'  : (Multi, (0x8E, 0x9E, 0xAE, 0xBE), ('3', '5', '5', '6'), True),
        'LDY'  : (Multi, (0x108E, 0x109E, 0x10AE, 0x10BE),
                  ('4', '6', '6', '7'), True),
        'LEAS' : (Multi, (0x00, 0x00, 0x32, 0x00), ('0', '0', '4', '0'),
                  False),
        'LEAU' : (Multi, (0x00, 0x00, 0x33, 0x00), ('0', '0', '4', '0'),
                  False),
        'LEAX' : (Multi, (0x00, 0x00, 0x30, 0x00), ('0', '0', '4', '0'),
                  False),
        'LEAY' : (Multi, (0x00, 0x00, 0x31, 0x00), ('0', '0', '4', '0'),
                  False),
        'LSL'  : (Multi, (0x00, 0x08, 0x68, 0x78), ('0', '6', '6', '7'),
                  False),
        'LSR'  : (Multi, (0x00, 0x04, 0x64, 0x74), ('0', '6', '6', '7'),
                  False),
        'NEG'  : (Multi, (0x00, 0xFF, 0x60, 0x70), ('0', '6', '6', '7'),
                  False),
        'ORA'  : (Multi, (0x8A, 0x9A, 0xAA, 0xBA), ('2', '4', '4', '5'),
                  False),
        'ORB'  : (Multi, (0xCA, 0xDA, 0xEA, 0xFA), ('2', '4', '4', '5'),
                  False),
        'ORCC' : (Multi, (0x1A, 0x00, 0x00, 0x00), ('3', '0', '0', '0'),
                  False),
        'ROL'  : (Multi, (0x00, 0x09, 0x69, 0x79), ('0', '6', '6', '7'),
                  False),
        'ROR'  : (Multi, (0x00, 0x06, 0x66, 0x76), ('0', '6', '6', '7'),
                  False),
        'SBCA' : (Multi, (0x82, 0x92, 0xA2, 0xB2), ('2', '4', '4', '5'),
                  False),
        'SBCB' : (Multi, (0xC2, 0xD2, 0xE2, 0xF2), ('2', '4', '4', '5'),
                  False),
        'STA'  : (Multi, (0x00, 0x97, 0xA7, 0xB7), ('0', '4', '4', '5'),
                  False),
        'STAA' : (Multi, (0x00, 0x97, 0xA7, 0xB7), ('0', '4', '4', '5'),
                  False),
        'STB'  : (Multi, (0x00, 0xD7, 0xE7, 0xF7), ('0', '4', '4', '5'),
                  False),
        'STAB' : (Multi, (0x00, 0xD7, 0xE7, 0xF7), ('0', '4', '4', '5'),
                  False),
        'STD'  : (Multi, (0x00, 0xDD, 0xED, 0xFD), ('0', '5', '5', '6'),
                  False),
        'STAD' : (Multi, (0x00, 0xDD, 0xED, 0xFD), ('0', '5', '5', '6'),
                  False),
        'STS'  : (Multi, (0x00, 0x10DF, 0x10EF, 0x10FF), ('0', '6', '6', '7'),
                  False),
        'STU'  : (Multi, (0x00, 0xDF, 0xEF, 0xFF), ('0', '5', '5', '6'),
                  False),
        'STX'  : (Multi, (0x00, 0x9F, 0xAF, 0xBF), ('0', '5', '5', '6'),
                  False),
        'STY'  : (Multi, (0x00, 0x109F, 0x10AF, 0x10BF), ('0', '6', '6', '7'),
                  False),
        'SUBA' : (Multi, (0x80, 0x90, 0xA0, 0xB0), ('2', '4', '4', '5'),
                  False),
        'SUBB' : (Multi, (0xC0, 0xD0, 0xE0, 0xF0), ('2', '4', '4', '5'),
                  False),
        'SUBD' : (Multi, (0x83, 0x93, 0xA3, 0xB3), ('4', '6', '6', '7'),
                  True),
        'TST'  : (Multi, (0x00, 0x0D, 0x6D, 0x7D), ('0', '6', '6', '7'),
                  False),

        'PSHS' : (Stack, 0x34, 5),
        'PSHU' : (Stack, 0x36, 5),
        'PULS' : (Stack, 0x35, 5),
        'PULU' : (Stack, 0x37, 5),

        'EXG'  : (Exchange, 0x1E, '7'),
        'TFR'  : (Exchange, 0x1F, '7')
    }

    errors.Error_List['6809double'] = 'Repeated register(s) ignored'

    dec.Asm.Timing_Length = 2

    dec.Asm.Memory = 0
    if dec.Asm.Pass == 1:
        sys.stdout.write('Loaded ' + dec.Cross.Name[2:] +
                         ' overlay version ' + crossversion + dec.EOL)

    dec.Asm.Max_Address = dec.MAX16
    dec.Asm.PP_TA_Factor = 1
    dec.Flags.BigEndian = True
    dec.Asm.DP6809 = 0

    return


# ------------------------------------------------------------------------------

def CrossDirective():

    """
    One extra directive
    """

    if len(dec.Asm.Mnemonic) > 1:
        directive = dec.Asm.Mnemonic[1:3].upper()
    else:
        directive = dec.Asm.Mnemonic

    if directive == 'DP':
        DirDP()
        return True

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
    if (opcode >> 24) != 0:
        # Save 4 bytes of opcode
        target.CodeByte(opcode >> 24)
        target.CodeByte(opcode >> 16)
        target.CodeByte(opcode >> 8)
        target.CodeByte(opcode)
    elif (opcode >> 16) != 0:
        # Save 3 bytes of opcode
        target.CodeByte(opcode >> 16)
        target.CodeByte(opcode >> 8)
        target.CodeByte(opcode)
    elif (opcode >> 8) != 0:
        # Save 2 bytes of opcode
        target.CodeByte(opcode >> 8)
        target.CodeByte(opcode)
    else:
        # Save 1 byte of opcode
        target.CodeByte(opcode)

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

def LBranch():

    """
    Handle long branch instructions.
    Displacement is destinaiton - current address - 3 in case 3 byte long
    instruction
    Displacement is destinaiton - current address - 4 in case 4 byte long
    instruction
    """

    global Asm

    if MissingOperand():
        return

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1]
    value = assem.EvalExpr()
    offset = value[0] - dec.Asm.BOL_Address - 3

    if opcode > 255:
        # It's a 2 byte opcode
        offset = offset - 1
        target.CodeByte(opcode >> 8)
    target.CodeByte(opcode)
    target.CodeWord(offset)
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    NoMore()


# -----------------------------------------------------------------------------

def Multi():

    """
    Handle multiple operand instructions
    This is quite a complex one.
    - First let's see if an immediate value follows the mnemonic
    - If it is not an immediate value, it may be an indirect mode of some sort
    - Next we check if it's r,index mode
    - Then it could be zero offset,index
    - or forced or automatic offset,index mode
    - index,PCR or index,PC mode
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

    postbyte = -1    # Indicate non indexed or indirect mode per default
    oplength = 0
    extra = 0
    value = (0, False)

    indexregs = {'X': 0, 'Y': 1, 'U': 2, 'US': 2, 'S': 3, 'SP': 3}
    incdecregs = {'X+': 0x80, 'Y+': 0xA0, 'U+': 0xC0, 'US+': 0xC0,
                  'S+': 0xE0, 'SP+': 0xE0, 'X++': 0x81, 'Y++': 0xA1,
                  'U++': 0xC1, 'US++': 0xC1, 'S++': 0xE1, 'SP++': 0xE1,
                  '-X': 0x82, '-Y': 0xA2, '-U': 0xC2, '-US': 0xC2,
                  '-S': 0xE2, '-SP': 0xE2, '--X': 0x83, '--Y': 0xA3,
                  '--U': 0xC3, '--US': 0xC3, '--S': 0xE3, '--SP': 0xE3}

    indirect = assem.NowChar()
    if indirect in ('[', '('):
        dec.Asm.Parse_Pointer = dec.Asm.Parse_Pointer + 1
    else:
        indirect = ''

    pointer = dec.Asm.Parse_Pointer
    register = assem.GetWord().upper()

    if register in ('A', 'B', 'D'):
        # It is r,index mode
        if register == 'A':
            postbyte = 0x86
            extra = 1
        elif register == 'B':
            postbyte = 0x85
            extra = 1
        else:
            postbyte = 0x8B
            extra = 4

        if not assem.MoreParameters():
            errors.DoError('missoper', False)
            return

        register = assem.GetWord('', '', ' ,)]').upper()

        if register in indexregs:
            postbyte = postbyte + (indexregs[register] << 5)
        else:
            errors.DoError('badoper', False)
            return

        if indirect != '':
            if assem.NowChar(True).upper() in (')', ']'):
                postbyte = postbyte + 16
                extra = extra + 3
            else:
                errors.DoError('badoper', False)
                return

    else:
        # It was not r,index mode
        dec.Asm.Parse_Pointer = pointer

        prefix = ''

        if assem.NowChar() == ',':
            # Zero offset indexed mode
            value = (0, False)

        elif assem.NowChar() in '<>':
            # Forced short or long addressing mode
            prefix = assem.NowChar(True)
            value = assem.EvalExpr()
        else:
            value = assem.EvalExpr()

        if assem.NowChar() in (')', ']'):
            # Normal indirect mode [address]
            # Ignoring prefix < or >
            dec.Asm.Parse_Pointer = dec.Asm.Parse_Pointer + 1
            postbyte = 0x9F
            extra = 5
            oplength = 2

        else:
            # Indirect/indexed mode [offset,ix]
            if assem.NowChar() != ' ':
                # Some kind of indirect or indexed mode

                if assem.NowChar(True) != ',':
                    errors.DoError('badoper', False)
                    return

                register = assem.GetWord('', '', ')] ,').upper()

                if register in incdecregs:
                    # Auto increment or decrement indexed
                    postbyte = incdecregs[register]

                    if value[0] != 0:
                        errors.DoError('range', False)
                        return

                    if (postbyte & 1) == 0:
                        # single inc or dec
                        extra = 2
                        if indirect != '' or assem.NowChar() in (')', ']'):
                            # Indirect mode not allowed for single inc or dec
                            errors.DoError('badoper', False)
                            return
                    else:
                        # double inc or dec
                        extra = 3
                        if indirect != '':
                            # It's indirect mode
                            if assem.NowChar(True) in (')', ']'):
                                postbyte = postbyte + 16
                                extra = extra + 3
                            else:
                                errors.DoError('badoper', False)
                                return

                else:
                    # Now it's some kind of offset,index mode (maybe together
                    # with indirect)
                    if register in indexregs:
                        # It's offset,r
                        osize = OffsetSize(value, prefix, indirect)
                        if osize == 16:
                            postbyte = 0x89
                            oplength = 2
                            extra = 4
                        elif osize == 0:
                            postbyte = 0x84
                            oplength = 0
                            extra = 0
                        elif osize == 8:
                            postbyte = 0x88
                            oplength = 1
                            extra = 1
                        else:
                            # Offset is now 5 bits long
                            postbyte = value[0] & 31
                            oplength = 0
                            extra = 1
                        postbyte = postbyte + (indexregs[register] << 5)

                    elif register == 'PCR':
                        # It's offset,pc or offset,pcr
                        if register == 'PCR':
                            # It's offset,pcr

                            # Treat the offset as a relative address
                            # First calculate PC just behind the current
                            # instruction
                            if (dec.Asm.Instructions[dec.Asm.Mnemonic]
                                    [1][2] >> 8) == 0:
                                # Instruction requires no pre-byte
                                nowpc = dec.Asm.BOL_Address + 3
                            else:
                                # Instruction requires pre-byte
                                nowpc = dec.Asm.BOL_Address + 4

                            rel = value[0] - nowpc
                            short = False

                            if value[1] or prefix == '>':
                                # We don't know the value now or we want 16-bit
                                # offsets
                                if prefix == '<':
                                    short = True
                            else:
                                # We could have an 8-bit offset
                                if rel >= -128 and rel <= +127:
                                    # It is indeed a short address
                                    short = True

                            if not short:
                                # Long instructions are 1 byte longer
                                rel = rel - 1

                            value = (rel, value[1])

                            if short:
                                postbyte = 0x8C
                                oplength = 1
                                extra = 1
                            else:
                                postbyte = 0x8D
                                oplength = 2
                                extra = 5

                    elif register == 'PC':
                        # It's offset,pc or offset,pcr
                        if OffsetSize(value, prefix, indirect) == 16:
                            postbyte = 0x8D
                            oplength = 2
                            extra = 5
                        else:
                            # 5-bit and 0-bit offsets don't exist for offset,pc
                            postbyte = 0x8C
                            oplength = 1
                            extra = 1

                    else:
                        errors.DoError('badoper', False)
                        return

                    if indirect != '':
                        # It's indirect mode as well
                        postbyte = postbyte + 16
                        extra = extra + 3
                        if not assem.NowChar(True) in (')', ']'):
                            errors.DoError('badoper', False)

    if postbyte < 0:
        # Normal direct or extended addressing mode
        if IsDirect(value, prefix):
            opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][1]
            if opcode == 0:
                errors.DoError('badoper', False)
                return
            if opcode == 0xFF:
                # NEG direct page is exception because it is 0x00
                opcode = 0x00
            Code(opcode)
            target.CodeByte(value[0])
            dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][1]
        else:
            opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][3]
            if opcode == 0:
                errors.DoError('badoper', False)
                return
            Code(opcode)
            target.CodeWord(value[0])
            dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][3]
    else:
        # It was some kind of indirect or indexed mode
        opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][2]
        if opcode == 0:
            errors.DoError('badoper', False)
            return
        Code(opcode)
        target.CodeByte(postbyte)
        if oplength == 1:
            target.CodeByte(value[0])
        elif oplength == 2:
            target.CodeWord(value[0])

        dec.Asm.Timing = str(int(dec.Asm.Instructions
                             [dec.Asm.Mnemonic][2][3]) + extra)

    NoMore()


# -----------------------------------------------------------------------------

def OffsetSize(offset, prefix, indirect):

    if prefix == '>':
        # Forced 16-bit
        return 16

    if prefix == '<':
        # Forced 8-bit?
        if dec.Asm.Pass == 2 and (offset[0] < -128 or offset[0] > +127):
            errors.DoError('range', False)
        return 8

    if offset[1]:
        # Forward referenced label used
        return 16

    if offset[0] == 0:
        return 0

    if offset[0] < -128 or offset[0] > +127:
        return 16

    if indirect != '':
        return 8

    if offset[0] < -16 or offset[0] > +15:
        return 8
    else:
        return 5


# -----------------------------------------------------------------------------

def IsDirect(value, prefix):

    if prefix == '>' or value[1]:
        # Forced extended mode or forward referenced label
        direct = False
    elif prefix == '<':
        # Forced direct mode
        direct = True
    elif (value[0] >> 8) == dec.Asm.DP6809:
        # Address is within current direct page
        direct = True
    else:
        # Sorry, it's extended mode
        direct = False

    return direct


# -----------------------------------------------------------------------------

def Stack():

    """
    Handle Push and Pull instructions.
    Any number from of registers and register pairs may be pushed and pulled
    by one instruction, all separated by a comma.
    A warning is issued if you specify a particular register more than once.
    """

    global Asm

    if MissingOperand():
        return

    registers = {'CC': 1, 'CCR': 1, 'A': 2, 'B': 4, 'D': 6, 'A:B': 6,
                 'DP': 8, 'DPR': 8, 'X': 16, 'Y': 32, 'U': 64, 'US': 64,
                 'S': 64, 'SP': 64, 'PC': 128}

    stack = dec.Asm.Mnemonic[-1]

    postbyte = 0
    doubled = False

    while True:
        reg = assem.GetWord().upper()
        if reg in registers:
            if reg == stack:
                # S may not be used in PSHS and PULS
                # U may not be used in PSHU and PULU
                errors.DoError('badoper', False)
                return
            bits = registers[reg]
            if (postbyte & bits) != 0:
                doubled = True
            postbyte = postbyte | bits
        else:
            errors.DoError('badoper', False)
            return

        if not assem.MoreParameters():
            break

    if doubled:
        errors.DoWarning('6809double', False)

    count = 0
    for i in range(0, 8):
        if (postbyte & (1 << i)) != 0:
            if i > 3:
                count = count + 2
            else:
                count = count + 1

    target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1])
    target.CodeByte(postbyte)
    dec.Asm.Timing = str(dec.Asm.Instructions[dec.Asm.Mnemonic][2] + count)


# -----------------------------------------------------------------------------

def Exchange():

    """
    Handle EXG and TFR directives.
    Both directives take 2 operands of either 8-bit size or 16-bit size.
    Sizes of the registers may not be mixed.
    """

    global Asm

    if MissingOperand():
        return

    reg1 = assem.GetWord().upper()

    if not assem.MoreParameters():
        errors.DoError('missoper', False)
        return

    reg2 = assem.GetWord().upper()

    words = {'A:B': 0, 'D': 0, 'X': 1, 'Y': 2, 'US': 3, 'U': 3, 'SP': 4,
             'S': 4, 'PC': 5}
    bytes = {'A': 8, 'B': 9, 'CC': 10, 'CCR': 10, 'DP': 11, 'DPR': 11}

    if reg1 in words:
        if reg2 in words:
            target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1])
            target.CodeByte((words[reg1] << 4) + words[reg2])
            dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]
        else:
            errors.DoError('badoper', False)
    elif reg1 in bytes:
        if reg2 in bytes:
            target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1])
            target.CodeByte((bytes[reg1] << 4) + bytes[reg2])
            dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]
        else:
            errors.DoError('badoper', False)
    else:
        errors.DoError('badoper', False)

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

def DirDP():

    """
    Handle the .DP directive, which tells the assembler what direct page is
    to be used.
    No forward referenced labels are allowed.
    """

    global Asm

    if MissingOperand():
        return

    value = assem.EvalExpr()

    if value[1]:
        errors.DoError('forwref', False)
    else:
        if value[0] < 0 or value[0] > 255:
            errors.DoError('range', False)
        dec.Asm.DP6809 = value[0]

    NoMore()


# -----------------------------------------------------------------------------

if __name__ == '__main__':
    print("")
    print("This is a python module, it's not a program.")
    print("This module is part of the sbasm package.")
    print("Run sbasm instead.")
    print ("")
