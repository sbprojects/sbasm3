# ------------------------------------------------------------------------------
#
#   crz80.py
#
#   Package module file for the SB-Assembler sbasm
#   See www.sbprojects.net for details
#
#   Author: San Bergmans
#   Date  : 2015-12-21
#
#   Cross Overlay for the Z80 family of processors
#
# ------------------------------------------------------------------------------

import sys
import os

import assem
import dec
import errors
import target

crossversion = '3.01.05'
minversion = '3.01.00'


# ------------------------------------------------------------------------------

def Help():

    print('Tell a little story about this cross overlay')


# ------------------------------------------------------------------------------

def CrossInit():

    global Asm, Flags

    assem.CheckVersions(crossversion, minversion)

    dec.Asm.Instructions = {
        'CCF' : (Inherent, 0x3F, '4'),
        'CPL' : (Inherent, 0x2F, '4'),
        'DAA' : (Inherent, 0x27, '4'),
        'DI'  : (Inherent, 0xF3, '4'),
        'EI'  : (Inherent, 0xFB, '4'),
        'EXX' : (Inherent, 0xD9, '4'),
        'HALT': (Inherent, 0x76, '4'),
        'NOP' : (Inherent, 0x00, '4'),
        'RLA' : (Inherent, 0x17, '4'),
        'RLCA': (Inherent, 0x07, '4'),
        'RRA' : (Inherent, 0x1F, '4'),
        'RRCA': (Inherent, 0x0F, '4'),
        'SCF' : (Inherent, 0x37, '4'),
        'CPD' : (Inherent, 0xEDA9, '16'),
        'CPDR': (Inherent, 0xEDB9, '16+'),
        'CPI' : (Inherent, 0xEDA1, '16'),
        'CPIR': (Inherent, 0xEDB1, '16+'),
        'IND' : (Inherent, 0xEDAA, '16'),
        'INDR': (Inherent, 0xEDBA, '16+'),
        'INI' : (Inherent, 0xEDA2, '16'),
        'INIR': (Inherent, 0xEDB2, '16+'),
        'LDD' : (Inherent, 0xEDA8, '16'),
        'LDDR': (Inherent, 0xEDB8, '16+'),
        'LDI' : (Inherent, 0xEDA0, '16'),
        'LDIR': (Inherent, 0xEDB0, '16+'),
        'NEG' : (Inherent, 0xED44, '8'),
        'OTDR': (Inherent, 0xEDBB, '16+'),
        'OTIR': (Inherent, 0xEDB3, '16+'),
        'OUTD': (Inherent, 0xEDAB, '16'),
        'OUTI': (Inherent, 0xEDA3, '16'),
        'RCF' : (Inherent, 0x373F, '8'),
        'RETI': (Inherent, 0xED4D, '14'),
        'RETN': (Inherent, 0xED45, '14'),
        'RLD' : (Inherent, 0xED6F, '18'),
        'RRD' : (Inherent, 0xED67, '18'),

        'LD'     : (Load,),
        'LD.A'   : (('A', 'B', 'C', 'D', 'E', 'H', 'L', '(HL)',
                     '#', '(IX)', '(IY)', '(BC)', '(DE)', '(M)', 'I', 'R'),
                    (0x7F, 0x78, 0x79, 0x7A, 0x7B, 0x7C, 0x7D, 0x7E, 0x3E,
                     0xDD7E, 0xFD7E, 0x0A, 0x1A, 0x3A, 0xED57, 0xED5F),
                    ('4', '4', '4', '4', '4', '4', '4', '7', '7', '19',
                     '19', '7', '7', '13', '9', '9'),
                    (0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 2, 0, 0)),
        'LD.B'   : (('A', 'B', 'C', 'D', 'E', 'H', 'L', '(HL)',
                     '#', '(IX)', '(IY)'),
                    (0x47, 0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x06,
                     0xDD46, 0xFD46),
                    ('4', '4', '4', '4', '4', '4', '4', '7', '7', '19', '19'),
                    (0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1)),
        'LD.C'   : (('A', 'B', 'C', 'D', 'E', 'H', 'L', '(HL)',
                     '#', '(IX)', '(IY)'),
                    (0x4F, 0x48, 0x49, 0x4A, 0x4B, 0x4C, 0x4D, 0x4E, 0x0E,
                     0xDD4E, 0xFD4E),
                    ('4', '4', '4', '4', '4', '4', '4', '7', '7', '19', '19'),
                    (0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1)),
        'LD.D'   : (('A', 'B', 'C', 'D', 'E', 'H', 'L', '(HL)',
                     '#', '(IX)', '(IY)'),
                    (0x57, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x16,
                     0xDD56, 0xFD56),
                    ('4', '4', '4', '4', '4', '4', '4', '7', '7', '19', '19'),
                    (0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1)),
        'LD.E'   : (('A', 'B', 'C', 'D', 'E', 'H', 'L', '(HL)',
                     '#', '(IX)', '(IY)'),
                    (0x5F, 0x58, 0x59, 0x5A, 0x5B, 0x5C, 0x5D, 0x5E, 0x1E,
                     0xDD5E, 0xFD5E),
                    ('4', '4', '4', '4', '4', '4', '4', '7', '7', '19', '19'),
                    (0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1)),
        'LD.H'   : (('A', 'B', 'C', 'D', 'E', 'H', 'L', '(HL)',
                     '#', '(IX)', '(IY)'),
                    (0x67, 0x60, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x26,
                     0xDD66, 0xFD66),
                    ('4', '4', '4', '4', '4', '4', '4', '7', '7', '19', '19'),
                    (0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1)),
        'LD.L'   : (('A', 'B', 'C', 'D', 'E', 'H', 'L', '(HL)',
                     '#', '(IX)', '(IY)'),
                    (0x6F, 0x68, 0x69, 0x6A, 0x6B, 0x6C, 0x6D, 0x6E, 0x2E,
                     0xDD6E, 0xFD6E),
                    ('4', '4', '4', '4', '4', '4', '4', '7', '7', '19', '19'),
                    (0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1)),
        'LD.I'   : (('A',),
                    (0xED47,),
                    ('9',),
                    (0,)),
        'LD.R'   : (('A',),
                    (0xED4F,),
                    ('9',),
                    (0,)),
        'LD.(HL)': (('#', 'A', 'B', 'C', 'D', 'E', 'H', 'L'),
                    (0x36, 0x77, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75),
                    ('10', '7', '7', '7', '7', '7', '7', '7'),
                    (1, 0, 0, 0, 0, 0, 0, 0)),
        'LD.(IX)': (('#', 'A', 'B', 'C', 'D', 'E', 'H', 'L'),
                    (0xDD36, 0xDD77, 0xDD70, 0xDD71, 0xDD72, 0xDD73, 0xDD74,
                     0xDD75),
                    ('19', '19', '19', '19', '19', '19', '19', '19'),
                    (4, 3, 3, 3, 3, 3, 3, 3)),
        'LD.(IY)': (('#', 'A', 'B', 'C', 'D', 'E', 'H', 'L'),
                    (0xFD36, 0xFD77, 0xFD70, 0xFD71, 0xFD72, 0xFD73, 0xFD74,
                     0xFD75),
                    ('19', '19', '19', '19', '19', '19', '19', '19'),
                    (4, 3, 3, 3, 3, 3, 3, 3)),
        'LD.(BC)': (('A',),
                    (0x02,),
                    ('7',),
                    (0,)),
        'LD.(DE)': (('A',),
                    (0x12,),
                    ('7',),
                    (0,)),
        'LD.(M)' : (('A', 'BC', 'DE', 'HL', 'SP', 'IX', 'IY'),
                    (0x32, 0xED43, 0xED53, 0x22, 0xED73, 0xDD22, 0xFD22),
                    ('13', '20', '20', '20', '20', '20', '20'),
                    (5, 5, 5, 5, 5, 5, 5)),
        'LD.BC'  : (('#', '(M)'),
                    (0x01, 0xED4B),
                    ('10', '20'),
                    (2, 2)),
        'LD.DE'  : (('#', '(M)'),
                    (0x11, 0xED5B),
                    ('10', '20'),
                    (2, 2)),
        'LD.HL'  : (('#', '(M)'),
                    (0x21, 0x2A),
                    ('10', '16'),
                    (2, 2)),
        'LD.SP'  : (('#', '(M)', 'HL', 'IX', 'IY'),
                    (0x31, 0xED7B, 0xF9, 0xDDF9, 0xFDF9),
                    ('10', '20', '6', '10', '10'),
                    (2, 2, 0, 0, 0)),
        'LD.IX'  : (('#', '(M)'),
                    (0xDD21, 0xDD2A),
                    ('14', '20'),
                    (2, 2)),
        'LD.IY'  : (('#', '(M)'),
                    (0xFD21, 0xFD2A),
                    ('14', '20'),
                    (2, 2)),

        'POP' : (Stack, 0xC1, ('10', '14')),
        'PUSH': (Stack, 0xC5, ('11', '15')),

        'ADC' : (Math, (0x88, 0xDD8E, 0xFD8E, 0xCE, 0xED4A),
                 ('4/7', '19', '19', '7', '15')),
        'ADD' : (Math, (0x80, 0xDD86, 0xFD86, 0xC6, 0x09, 0xDD09, 0xFD09),
                 ('4/7', '19', '19', '7', '11', '15', '15')),
        'AND' : (Math, (0xA0, 0xDDA6, 0xFDA6, 0xE6),
                 ('4/7', '19', '19', '7')),
        'CP'  : (Math, (0xB8, 0xDDBE, 0xFDBE, 0xFE),
                 ('4/7', '19', '19', '7')),
        'OR'  : (Math, (0xB0, 0xDDB6, 0xFDB6, 0xF6),
                 ('4/7', '19', '19', '7')),
        'SBC' : (Math, (0x98, 0xDD9E, 0xFD9E, 0xDE, 0xED42),
                 ('4/7', '19', '19', '7', '15')),
        'SUB' : (Math, (0x90, 0xDD96, 0xFD96, 0xD6),
                 ('4/7', '19', '19', '7')),
        'XOR' : (Math, (0xA8, 0xDDAE, 0xFDAE, 0xEE),
                 ('4/7', '19', '19', '7')),

        'DEC' : (IncDec, (0x05, 0x35, 0xDD35, 0xFD35, 0x0B, 0xDD2B, 0xFD2B),
                 ('4', '11', '23', '23', '6', '10', '10')),
        'INC' : (IncDec, (0x04, 0x34, 0xDD34, 0xFD34, 0x03, 0xDD23, 0xFD23),
                 ('4', '11', '23', '23', '6', '10', '10')),

        'CALL': (Jumps, (0xCD, 0xC4), ('17', '10+')),
        'JP'  : (Jumps, (0xC3, 0xC2, 0xE9, 0xDDE9, 0xFDE9),
                 ('10', '10', '4', '8', '8')),

        'JR'  : (Branch, (0x18, 0x38, 0x30, 0x28, 0x20),
                 ('12', '7+', '7+', '7+', '7+')),
        'DJNZ': (Branch, (0x10,), ('8+',)),

        'RET' : (Returns, (0xC9, 0xC0), ('10', '5+')),

        'RLC' : (Singles, (0xCB00, 0xCB06, 0x06), ('8', '15', '23')),
        'RL'  : (Singles, (0xCB10, 0xCB16, 0x16), ('8', '15', '23')),
        'RRC' : (Singles, (0xCB08, 0xCB0E, 0x0E), ('8', '15', '23')),
        'RR'  : (Singles, (0xCB18, 0xCB1E, 0x1E), ('8', '15', '23')),
        'SLA' : (Singles, (0xCB20, 0xCB26, 0x26), ('8', '15', '23')),
        'SRA' : (Singles, (0xCB28, 0xCB2E, 0x2E), ('8', '15', '23')),
        'SRL' : (Singles, (0xCB38, 0xCB3E, 0x3E), ('8', '15', '23')),
        'BIT' : (Bits, (0xCB40, 0xCB46, 0x46), ('8', '12', '20')),
        'RES' : (Bits, (0xCB80, 0xCB86, 0x86), ('8', '15', '23')),
        'SET' : (Bits, (0xCBC0, 0xCBC6, 0xC6), ('8', '15', '23')),

        'IN'  : (InOut, (0xED40, 0xDB), ('12', '11')),
        'OUT' : (InOut, (0xED41, 0xD3), ('12', '11')),

        'EX'  : (Exch, (0xEB, 0x08, 0xE3, 0xDDE3, 0xFDE3),
                 ('4', '4', '19', '23', '23')),
        'IM'  : (IM, (0xED46, 0xED56, 0xED5E), '8'),

        'RST' : (Restart, 0xC7, '11')
        }

    dec.Asm.Memory = 0
    length = 0

    dec.Asm.Timing_Length = 3

    if dec.Asm.Pass == 1:
        sys.stdout.write('Loaded ' + dec.Cross.Name[2:] +
                         ' overlay version ' + crossversion + dec.EOL)

    dec.Asm.Max_Address = dec.MAX16
    dec.Asm.PP_TA_Factor = 1
    dec.Flags.BigEndian = False

    return


# ------------------------------------------------------------------------------

def CrossDirective():

    # This cross overlay has no extra/changed directives

    return False    # We didn't handle any directives


# ------------------------------------------------------------------------------

def CrossCleanUp():

    # This cross overlay does not need any clean up

    return


# ------------------------------------------------------------------------------

def CrossMnemonic():

    """
    Parse the mnemonic, if it doesn't contain a dot.
    """

    global Asm

    if '.' in dec.Asm.Mnemonic:
        # Avoid mnemonics like LD.A from being accepted
        errors.DoError('badopco', False)
        return

    if dec.Asm.Mnemonic in dec.Asm.Instructions:
        func = dec.Asm.Instructions[dec.Asm.Mnemonic][0]
        func()
    else:
        errors.DoError('badopco', False)


# -----------------------------------------------------------------------------

def MissingOperand():

    """
    The current opcode requires an operand. Raise an error if there is none.
    """

    if dec.Asm.Parse_Pointer == 0:
        errors.DoError('missoper', False)
        return True
    else:
        return False


# -----------------------------------------------------------------------------


def NoMore():

    """
    We're done with this line. Raise an error if more code follows.
    """

    if assem.MoreParameters():
        errors.DoWarning('extrign', False)


# -----------------------------------------------------------------------------

def Inherent():

    """
    We're handling an inherent instruction. We have all we need. Execute it.
    """

    global Asm

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1]
    Code(opcode)
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]


# -----------------------------------------------------------------------------

def Load():

    """
    The LD instruction can have quite complicated paramters

    """

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

    firstpar = 'LD.'+reg1[0]
    if firstpar in dec.Asm.Instructions:
        secpar = dec.Asm.Instructions[firstpar][0]
        opcode = dec.Asm.Instructions[firstpar][1]
        timing = dec.Asm.Instructions[firstpar][2]
        extra = dec.Asm.Instructions[firstpar][3]

        index = 0
        for t in secpar:
            if t == reg2[0]:
                # Found 2nd parameter, now let's save it to the target file
                opc = opcode[index]
                Code(opc)
                dec.Asm.Timing = timing[index]
                if extra[index] == 1:
                    # save one extra byte from operand 2
                    target.CodeByte(reg2[1])
                elif extra[index] == 2:
                    # save two extra bytes from operand 2
                    target.CodeWord(reg2[1])
                elif extra[index] == 3:
                    # save one extra byte from operand 1
                    target.CodeByte(reg1[1])
                elif extra[index] == 4:
                    # save one extra byte from operand 1 and one from operand 2
                    target.CodeByte(reg1[1])
                    target.CodeByte(reg2[1])
                elif extra[index] == 5:
                    # save two extra bytes from operand 1
                    target.CodeWord(reg1[1])
                NoMore()
                return
            index = index + 1

        # This type of parameter was not allowed as second parameter
        errors.DoError('badoper', False)
    else:
        # This type of parameter was not allowed as first parameter
        errors.DoError('badoper', False)


# -----------------------------------------------------------------------------

def GetReg():

    """
    Possible parameters:
    Name:       Returns:
    A           ('A',7)
    B           ('B',0)
    C           ('C',1)
    D           ('D',2)
    E           ('E',3)
    H           ('H',4)
    L           ('L',5)
    (HL)        ('(HL)',6)
    Immediate   ('#',value) (value is already shifted)
    (IX+offs)   ('(IX)',offset)
    (IY+offs)   ('(IY)',offset)
    (BC)        ('(BC)',0)
    (DE)        ('(DE)',1)
    (memory)    ('(M)',address)
    I           ('I',0)
    R           ('R',0)
    BC          ('BC',0)
    DE          ('DE',1)
    HL          ('HL',2)
    SP          ('SP',3)
    IX          ('IX',2)
    IY          ('IY',2)
    (C)         ('(C)',0)
    error       ('!',0)
    """

    global Asm

    pointer = dec.Asm.Parse_Pointer
    param = assem.GetWord().upper()

    if len(param) == 0:
        errors.DoError('badoper', False)
        return ('!', 0)

    if param[0] == '(':
        # It's a memory reference of some sort
        if param[1:4] in ('BC)', 'DE)', 'HL)'):
            # It's an index register pair
            if param == '(HL)':
                return (param, 6)
            elif param == '(BC)':
                return (param, 0)
            elif param == '(DE)':
                return (param, 1)
        elif param[1:4] in ('IX+', 'IY+', 'IX-', 'IY-', 'IX)', 'IY)'):
            # It's (IX+offs) or (IY+offs) now
            index = param[0:3] + ')'
            dec.Asm.Parse_Pointer = pointer + 3
            if assem.NowChar() in '+-':
                offset = assem.EvalExpr()[0]
                if assem.NowChar(True) != ')':
                    errors.DoError('badoper', False)
            else:
                offset = 0
                if assem.NowChar(True) != ')':
                    errors.DoError('badoper', False)
            if dec.Asm.Pass == 2 and ((offset > 127) or (offset < -128)):
                errors.DoError('range', False)
            return (index, offset)
        elif param == '(C)':
            # It's (C)
            return (param, 0)
        else:
            # It must be absolute memory
            dec.Asm.Parse_Pointer = pointer + 1
            value = assem.EvalExpr()
            if assem.NowChar(True) != ')':
                errors.DoError('badoper', False)
            return ('(M)', value[0])

    elif param[0] in '#/=\\':
        # It's immediate data
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
    else:
        # It can only be a register(pair) or immediate data by now
        registers = {'A': 7, 'B': 0, 'C': 1, 'D': 2, 'E': 3, 'H': 4,
                     'L': 5, 'I': 0, 'R': 0, 'BC': 0, 'DE': 1, 'HL': 2,
                     'SP': 3, 'IX': 2, 'IY': 2}
        if param in registers:
            return (param, registers[param])
        else:
            # It wasn't a register, so it's immediate data
            dec.Asm.Parse_Pointer = pointer
            value = assem.EvalExpr()
            return ('#', value[0])


# -----------------------------------------------------------------------------

def Stack():

    """
    Handling stack related instructions.
    """

    global Asm

    if MissingOperand():
        return

    pair = assem.GetWord().upper()

    if pair in ('BC', 'DE', 'HL', 'AF'):
        # It's a register pair which doesnt require a prefix byte
        if pair == 'DE':
            offset = 16
        elif pair == 'HL':
            offset = 32
        elif pair == 'AF':
            offset = 48
        else:
            offset = 0
        Code(dec.Asm.Instructions[dec.Asm.Mnemonic][1] + offset)
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][0]
    elif pair in ('IX', 'IY'):
        # It's a register pair which requires a prefix byte
        if pair == 'IX':
            prefix = 0xDD
        else:
            prefix = 0xFD
        Code(prefix)
        Code(dec.Asm.Instructions[dec.Asm.Mnemonic][1] + 32)
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][1]

    else:
        # Didn't find a valie register pair
        errors.DoError('badoper', False)

    NoMore()


# -----------------------------------------------------------------------------

def Mult():

    """
    Handling the multiply instruction.
    """

    global Asm

    if MissingOperand():
        return

    pair = assem.GetWord().upper()

    if pair in ('BC', 'DE', 'HL', 'SP'):
        # Legeal operand pair
        if pair == 'DE':
            offset = 16
        elif pair == 'HL':
            offset = 32
        elif pair == 'SP':
            offset = 48
        else:
            offset = 0
        Code(dec.Asm.Instructions[dec.Asm.Mnemonic][1] + offset)
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]
    else:
        # Illegal operand pair
        errors.DoError('badoper', False)

    NoMore()


# -----------------------------------------------------------------------------

def Math():

    """
    Handling Math instructions.
    """

    global Asm

    if MissingOperand():
        return

    reg1 = GetReg()

    if assem.NowChar() != ',':
        # Only one parameter given, assume first to be A
        reg2 = reg1
        reg1 = ('A', 7)
    else:
        if not assem.MoreParameters():
            errors.DoError('missoper', False)
            return
        reg2 = GetReg()

    if reg1[0] == 'A':
        # 8-bit math
        if dec.Asm.Mnemonic != 'TST':
            # Normal Z80 math instructions
            if (reg2[0] in ('A', 'B', 'C', 'D', 'E', 'H', 'L')) or\
                    (reg2[0] == '(HL)'):
                # math A,reg
                Code(dec.Asm.Instructions[dec.Asm.Mnemonic][1][0] + reg2[1])
                timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][0]
                if reg2[0] == '(HL)':
                    dec.Asm.Timing = timing[2]
                else:
                    dec.Asm.Timing = timing[0]
            elif reg2[0] == '(IX)':
                # math A,(IX+offs)
                Code(dec.Asm.Instructions[dec.Asm.Mnemonic][1][1])
                target.CodeByte(reg2[1])
                dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][1]
            elif reg2[0] == '(IY)':
                # math A,(IY+offs)
                Code(dec.Asm.Instructions[dec.Asm.Mnemonic][1][2])
                target.CodeByte(reg2[1])
                dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][2]
            elif reg2[0] == '#':
                # math A,#
                Code(dec.Asm.Instructions[dec.Asm.Mnemonic][1][3])
                target.CodeByte(reg2[1])
                dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][3]
            else:
                # No legal second operand found
                errors.DoError('badoper', False)
        else:
            # TST instruction, unique to Z180
            if (reg2[0] in ('A', 'B', 'C', 'D', 'E', 'H', 'L')) or\
                    (reg2[0] == '(HL)'):
                # TST A,reg
                Code(dec.Asm.Instructions[dec.Asm.Mnemonic][1][0] +
                     (reg2[1] << 3))
                timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][0]
                if reg2[0] == '(HL)':
                    dec.Asm.Timing = timing[2:]
                else:
                    dec.Asm.Timing = timing[0]
            elif reg2[0] == '#':
                # TST A,#
                Code(dec.Asm.Instructions[dec.Asm.Mnemonic][1][3])
                target.CodeByte(reg2[1])
                dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][3]
            else:
                errors.DoError('badoper', False)

    else:
        # 16-bit math
        # In many documentations about the Z80 instruction set the opcode for
        # ADD IX,nn is often mistakenly printed as $DD49, where it should be
        # $DD09.
        if reg1[0] == 'HL':
            if dec.Asm.Mnemonic in ('ADC', 'ADD', 'SBC'):
                opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][4] +\
                         (reg2[1] << 4)
                Code(opcode)
                dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][4]
            else:
                errors.DoError('badoper', False)

        elif reg1[0] == 'IX' and dec.Asm.Mnemonic == 'ADD':
            if reg2[0] == 'IY':
                errors.DoError('badoper', False)
                return
            opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][5]
            Code(opcode + (reg2[1] << 4))
            dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][5]

        elif reg1[0] == 'IY' and dec.Asm.Mnemonic == 'ADD':
            if reg2[0] == 'IX':
                errors.DoError('badoper', False)
                return
            opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][6]
            Code(opcode + (reg2[1] << 4))
            dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][6]

        else:
            errors.DoError('badoper', False)

    NoMore()


# -----------------------------------------------------------------------------

def IncDec():

    """
    Increment and Decrement instructions
    """

    global Asm

    if MissingOperand():
        return

    reg1 = GetReg()

    if reg1[0] in ('A', 'B', 'C', 'D', 'E', 'H', 'L'):
        opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][0] + (reg1[1] << 3)
        Code(opcode)
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][0]
    elif reg1[0] == '(HL)':
        Code(dec.Asm.Instructions[dec.Asm.Mnemonic][1][1])
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][1]
    elif reg1[0] in ('(IX)', '(IY)'):
        index = 2
        if reg1[0] == '(IY)':
            index = 3
        opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][index]
        Code(opcode)
        target.CodeByte(reg1[1])
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][index]
    elif reg1[0] in ('BC', 'DE', 'HL', 'SP'):
        opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][4] + (reg1[1] << 4)
        Code(opcode)
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][4]
    elif reg1[0] in ('IX', 'IY'):
        index = 5
        if reg1[0] == 'IY':
            index = 6
        opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][index]
        Code(opcode)
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][index]
    else:
        errors.DoError('badoper', False)

    NoMore()


# -----------------------------------------------------------------------------

def Jumps():

    """
    Handling JP instructions
    """

    global Asm

    if MissingOperand():
        return

    conditions = {'NZ': 0, 'Z': 1, 'NC': 2, 'C': 3, 'PO': 4, 'PE': 5,
                  'P': 6, 'M': 7}
    pointer = dec.Asm.Parse_Pointer
    condition = assem.GetWord().upper()
    if condition in conditions and assem.NowChar(True) == ',':
        # Conditional jump or call
        if assem.NowChar() == " ":
            # Allow a space to follow a comma
            assem.IncParsePointer()
        value = assem.EvalExpr()
        Code(dec.Asm.Instructions[dec.Asm.Mnemonic][1][1] +
             (conditions[condition] << 3))
        target.CodeWord(value[0])
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][1]
        if dec.Asm.Pass == 2 and ((value[0] >> 16) != 0):
            errors.DoErrors('range', False)
    elif condition == '(HL)':
        # (HL)
        Code(dec.Asm.Instructions[dec.Asm.Mnemonic][1][2])
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][2]
    elif condition == '(IX)':
        # (IX)
        Code(dec.Asm.Instructions[dec.Asm.Mnemonic][1][3])
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][3]
    elif condition == '(IY)':
        # (IY)
        Code(dec.Asm.Instructions[dec.Asm.Mnemonic][1][4])
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][3]
    else:
        # Non conditional
        dec.Asm.Parse_Pointer = pointer
        value = assem.EvalExpr()
        Code(dec.Asm.Instructions[dec.Asm.Mnemonic][1][0])
        target.CodeWord(value[0])
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][0]

    NoMore()


# -----------------------------------------------------------------------------

def Branch():

    """
    Handling Branch instructions
    """

    global Asm

    if MissingOperand():
        return

    conditions = {'C': 1, 'NC': 2, 'Z': 3, 'NZ': 4}
    pointer = dec.Asm.Parse_Pointer
    condition = assem.GetWord().upper()
    if dec.Asm.Mnemonic == 'JR' and condition in conditions and\
                           assem.NowChar(True) == ',':
        index = conditions[condition]
        if assem.NowChar() == " ":
            # Allow a space to follow a comma
            assem.IncParsePointer()
    else:
        dec.Asm.Parse_Pointer = pointer
        index = 0

    value = assem.EvalExpr()
    offset = value[0] - dec.Asm.BOL_Address - 2

    if dec.Asm.Pass == 2 and (offset < -128 or offset > 127):
        errors.DoError('range', False)

    Code(dec.Asm.Instructions[dec.Asm.Mnemonic][1][index])
    target.CodeByte(offset)
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][index]

    NoMore()


# -----------------------------------------------------------------------------

def Returns():

    """
    Handling Branch instructions.
    """

    global Asm

    conditions = {'NZ': 0, 'Z': 1, 'NC': 2, 'C': 3, 'PO': 4, 'PE': 5, 'P': 6,
                  'M': 7}

    condition = assem.GetWord().upper()
    if condition in conditions:
        # Recognized one of the conditions, use conditional opcode
        cond = conditions[condition] << 3
        index = 1
    else:
        # Didn't recognize condition, use unconditional opcode
        cond = 0
        index = 0

    Code(dec.Asm.Instructions[dec.Asm.Mnemonic][1][index] + cond)
    dec.Asm.Instructions[dec.Asm.Mnemonic][2][index]
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][index]

    if index == 1:
        # Only check end if an optional parameter was given
        NoMore()


# -----------------------------------------------------------------------------

def Restart():

    """
    Handling RST instruction.
    """

    global Asm

    if MissingOperand():
        return

    value = assem.EvalExpr()

    if dec.Flags.ErrorInLine:
        # Save dummy bute to keep passes in sync
        target.CodeByte(0)
    else:
        # No errors were found
        vector = value[0]
        if value[1] and dec.Asm.Pass == 1:
            # Don't bother about range in case of forward referenced in pass 1
            vector = 0
        if vector > 8:
            if vector not in (16, 24, 32, 40, 48, 56):
                errors.DoError('range', False)
                vector = 0
        if vector > 7:
            vector = vector >> 3

        target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1] +
                        (vector << 3))

    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    NoMore()


# -----------------------------------------------------------------------------

def Singles():

    """
    Handling single operand instructions.
    """

    global Asm

    if MissingOperand():
        return

    reg1 = GetReg()

    if reg1[0] in ('A', 'B', 'C', 'D', 'E', 'H', 'L'):
        # Normal register
        Code(dec.Asm.Instructions[dec.Asm.Mnemonic][1][0] + reg1[1])
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][0]

    elif reg1[0] == '(HL)':
        # (HL)
        Code(dec.Asm.Instructions[dec.Asm.Mnemonic][1][1])
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][1]

    elif reg1[0] == '(IX)':
        # (IX+offs)
        Code(0xDDCB)
        target.CodeByte(reg1[1])
        Code(dec.Asm.Instructions[dec.Asm.Mnemonic][1][2])
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][2]

    elif reg1[0] == '(IY)':
        # (IY+offs)
        Code(0xFDCB)
        target.CodeByte(reg1[1])
        Code(dec.Asm.Instructions[dec.Asm.Mnemonic][1][2])
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][2]

    else:
        errors.DoError('badoper', False)

    NoMore()


# -----------------------------------------------------------------------------

def Bits():

    """
    Handling Bit operand instructions.
    """

    global Asm

    if MissingOperand():
        return

    value = assem.EvalExpr()

    if dec.Asm.Pass == 2 and ((value[0] >> 3) != 0):
        errors.DoError('range', False)
    bits = (value[0] & 7) << 3

    if not assem.MoreParameters():
        errors.DoError('missoper', False)
        return

    reg1 = GetReg()

    if reg1[0] in ('A', 'B', 'C', 'D', 'E', 'H', 'L'):
        # Normal register
        Code(dec.Asm.Instructions[dec.Asm.Mnemonic][1][0] + reg1[1] + bits)
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][0]

    elif reg1[0] == '(HL)':
        # (HL)
        Code(dec.Asm.Instructions[dec.Asm.Mnemonic][1][1] + bits)
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][1]

    elif reg1[0] == '(IX)':
        # (IX+offs)
        Code(0xDDCB)
        target.CodeByte(reg1[1])
        Code(dec.Asm.Instructions[dec.Asm.Mnemonic][1][2] + bits)
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][2]

    elif reg1[0] == '(IY)':
        # (IY+offs)
        Code(0xFDCB)
        target.CodeByte(reg1[1])
        Code(dec.Asm.Instructions[dec.Asm.Mnemonic][1][2] + bits)
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][2]

    else:
        errors.DoError('badoper', False)

    NoMore()


# -----------------------------------------------------------------------------

def InOut():

    """
    Handling I/O instructions.
    """

    global Asm

    if MissingOperand():
        return

    reg1 = GetReg()

    if dec.Asm.Mnemonic != 'TSTIO':
        # Normal I/O and Z180 specific I/O

        if not assem.MoreParameters():
            errors.DoError('missoper', False)
            return

        reg2 = GetReg()

        if dec.Asm.Mnemonic in ('OUT', 'OUTO', 'OUT0'):
            # Swap parameters, makes it a lot easier
            temp = reg1
            reg1 = reg2
            reg2 = temp

        if reg2[0] == '(C)':
            # For Z80 it can be reg,(C)
            if reg1[0] in ('A', 'B', 'C', 'D', 'E', 'H', 'L'):
                Code(dec.Asm.Instructions[dec.Asm.Mnemonic][1][0] +
                     (reg1[1] << 3))
                dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][0]
            else:
                errors.DoError('badoper', False)
        elif reg2[0] == '(M)' and dec.Asm.Mnemonic in ('IN', 'OUT'):
            # reg,(m)
            if reg1[0] == 'A':
                Code(dec.Asm.Instructions[dec.Asm.Mnemonic][1][1])
                target.CodeByte(reg2[1])
                if reg2[1] < 0 or reg2[1] > 255:
                    errors.DoError('range', False)
                dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][1]
            else:
                errors.DoError('badoper', False)
        elif reg2[0] == '(M)' and dec.Asm.Mnemonic in ('INO', 'OUTO', 'IN0', 'OUT0'):
            # For Z180 it can be reg,(M)
            if reg1[0] in ('A', 'B', 'C', 'D', 'E', 'H', 'L'):
                Code(dec.Asm.Instructions[dec.Asm.Mnemonic][1][0] +
                     (reg1[1] << 3))
                target.CodeByte(reg2[1])
                if reg2[1] < 0 or reg2[1] > 255:
                    errors.DoError('range', False)
                dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][0]
            else:
                errors.DoError('badoper', False)
        else:
            errors.DoError('badoper', False)

    else:
        # TSTIO instruction

        if reg1[0] == '#':
            Code(dec.Asm.Instructions[dec.Asm.Mnemonic][1][0])
            target.CodeByte(reg1[1])
            dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][0]
        else:
            errors.DeoError('badoper', False)

    NoMore()


# -----------------------------------------------------------------------------

def Exch():

    """
    Handling Exchange instruction.
    """

    global Asm

    if MissingOperand():
        return

    reg1 = assem.GetWord().upper()

    if not assem.MoreParameters():
        errors.DoError('missoper', False)
        return

    reg2 = assem.GetWord().upper()

    if (reg1 == 'DE') and (reg2 == 'HL'):
        index = 0
    elif (reg1 == 'AF') and (reg2 == "AF'"):
        index = 1
    elif (reg1 == '(SP)') and (reg2 == 'HL'):
        index = 2
    elif (reg1 == '(SP)') and (reg2 == 'IX'):
        index = 3
    elif (reg1 == '(SP)') and (reg2 == 'IY'):
        index = 4
    else:
        errors.DoError('badoper', False)
        return

    Code(dec.Asm.Instructions[dec.Asm.Mnemonic][1][index])
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][index]

    NoMore()


# -----------------------------------------------------------------------------

def IM():

    """
    Handling the IM instruction.
    """

    global Asm

    if MissingOperand():
        return

    value = assem.EvalExpr()

    if dec.Asm.Pass == 1:
        # Ignore range during pass 1
        value = (0, False)

    if value[0] >= 0 and value[0] <= 2:
        Code(dec.Asm.Instructions[dec.Asm.Mnemonic][1][value[0]])
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]
    else:
        errors.DoError('range', False)

    NoMore()


# -----------------------------------------------------------------------------

def Code(code):

    """
    Write 8-bit or 16-bit opcode to target propperly. (bit endian this time!)
    """

    if code > 255:
        # It's a word, write high byte first
        target.CodeByte(code >> 8)
    target.CodeByte(code)


# -----------------------------------------------------------------------------

if __name__ == '__main__':
    print("")
    print("This is a python module, it's not a program.")
    print("This module is part of the sbasm package.")
    print("Run sbasm instead.")
    print("")
