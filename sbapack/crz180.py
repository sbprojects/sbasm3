# ------------------------------------------------------------------------------
#
#   crz180.py
#
#   Package module file for the SB-Assembler sbasm
#   See www.sbprojects.net for details
#
#   Author: San Bergmans
#   Date  : 2015-12-21
#
#   Cross Overlay for the Z180 family of processors
#
# ------------------------------------------------------------------------------

import sys
import os

import assem
import dec
import errors
import target
import crz80

crossversion = '3.01.02'
minversion = '3.01.00'


# ------------------------------------------------------------------------------

def Help():

    print('Tell a little story about this cross overlay')


# ------------------------------------------------------------------------------

def CrossInit():

    global Asm, Flags

    assem.CheckVersions(crossversion, minversion)

    dec.Asm.Instructions = {
        'CCF'  : (crz80.Inherent, 0x3F, '3'),
        'CPL'  : (crz80.Inherent, 0x2F, '3'),
        'DAA'  : (crz80.Inherent, 0x27, '4'),
        'DI'   : (crz80.Inherent, 0xF3, '3'),
        'EI'   : (crz80.Inherent, 0xFB, '3'),
        'EXX'  : (crz80.Inherent, 0xD9, '3'),
        'HALT' : (crz80.Inherent, 0x76, '3'),
        'NOP'  : (crz80.Inherent, 0x00, '3'),
        'RLA'  : (crz80.Inherent, 0x17, '3'),
        'RLCA' : (crz80.Inherent, 0x07, '3'),
        'RRA'  : (crz80.Inherent, 0x1F, '3'),
        'RRCA' : (crz80.Inherent, 0x0F, '3'),
        'SCF'  : (crz80.Inherent, 0x37, '3'),
        'CPD'  : (crz80.Inherent, 0xEDA9, '12'),
        'CPDR' : (crz80.Inherent, 0xEDB9, '12+'),
        'CPI'  : (crz80.Inherent, 0xEDA1, '12'),
        'CPIR' : (crz80.Inherent, 0xEDB1, '12+'),
        'IND'  : (crz80.Inherent, 0xEDAA, '12'),
        'INDR' : (crz80.Inherent, 0xEDBA, '12+'),
        'INI'  : (crz80.Inherent, 0xEDA2, '12'),
        'INIR' : (crz80.Inherent, 0xEDB2, '12+'),
        'LDD'  : (crz80.Inherent, 0xEDA8, '12'),
        'LDDR' : (crz80.Inherent, 0xEDB8, '12+'),
        'LDI'  : (crz80.Inherent, 0xEDA0, '12'),
        'LDIR' : (crz80.Inherent, 0xEDB0, '12+'),
        'NEG'  : (crz80.Inherent, 0xED44, '6'),
        'OTDR' : (crz80.Inherent, 0xEDBB, '14+'),
        'OTDM' : (crz80.Inherent, 0xED8B, '14'),
        'OTDMR': (crz80.Inherent, 0xED9B, '14+'),
        'OTIR' : (crz80.Inherent, 0xEDB3, '12+'),
        'OTIM' : (crz80.Inherent, 0xED83, '12'),
        'OTIMR': (crz80.Inherent, 0xED93, '12+'),
        'OUTD' : (crz80.Inherent, 0xEDAB, '12'),
        'OUTI' : (crz80.Inherent, 0xEDA3, '12'),
        'RCF'  : (crz80.Inherent, 0x373F, '6'),
        'RETI' : (crz80.Inherent, 0xED4D, '12+'),
        'RETN' : (crz80.Inherent, 0xED45, '12'),
        'RLD'  : (crz80.Inherent, 0xED6F, '16'),
        'RRD'  : (crz80.Inherent, 0xED67, '16'),
        'SLP'  : (crz80.Inherent, 0xED76, '8'),
        'IM0'  : (crz80.Inherent, 0xED46, '6'),
        'IM1'  : (crz80.Inherent, 0xED56, '6'),
        'IM2'  : (crz80.Inherent, 0xED5E, '6'),

        'LD'     : (crz80.Load,),
        'LD.A'   : (('A', 'B', 'C', 'D', 'E', 'H', 'L', '(HL)',
                    '#', '(IX)', '(IY)', '(BC)', '(DE)', '(M)', 'I', 'R'),
                    (0x7F, 0x78, 0x79, 0x7A, 0x7B, 0x7C, 0x7D, 0x7E, 0x3E,
                     0xDD7E, 0xFD7E, 0x0A, 0x1A, 0x3A, 0xED57, 0xED5F),
                    ('4', '4', '4', '4', '4', '4', '4', '6', '6',
                     '14', '14', '6', '6', '12', '6', '6'),
                    (0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 2, 0, 0)),
        'LD.B'   : (('A', 'B', 'C', 'D', 'E', 'H', 'L', '(HL)',
                    '#', '(IX)', '(IY)'),
                    (0x47, 0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x06,
                     0xDD46, 0xFD46),
                    ('4', '4', '4', '4', '4', '4', '4', '6', '6', '14', '14'),
                    (0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1)),
        'LD.C'   : (('A', 'B', 'C', 'D', 'E', 'H', 'L', '(HL)',
                    '#', '(IX)', '(IY)'),
                    (0x4F, 0x48, 0x49, 0x4A, 0x4B, 0x4C, 0x4D, 0x4E, 0x0E,
                     0xDD4E, 0xFD4E),
                    ('4', '4', '4', '4', '4', '4', '4', '6', '6', '14', '14'),
                    (0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1)),
        'LD.D'   : (('A', 'B', 'C', 'D', 'E', 'H', 'L', '(HL)',
                    '#', '(IX)', '(IY)'),
                    (0x57, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x16,
                     0xDD56, 0xFD56),
                    ('4', '4', '4', '4', '4', '4', '4', '6', '6', '14', '14'),
                    (0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1)),
        'LD.E'   : (('A', 'B', 'C', 'D', 'E', 'H', 'L', '(HL)',
                    '#', '(IX)', '(IY)'),
                    (0x5F, 0x58, 0x59, 0x5A, 0x5B, 0x5C, 0x5D, 0x5E, 0x1E,
                     0xDD5E, 0xFD5E),
                    ('4', '4', '4', '4', '4', '4', '4', '6', '6', '14', '14'),
                    (0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1)),
        'LD.H'   : (('A', 'B', 'C', 'D', 'E', 'H', 'L', '(HL)',
                    '#', '(IX)', '(IY)'),
                    (0x67, 0x60, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x26,
                     0xDD66, 0xFD66),
                    ('4', '4', '4', '4', '4', '4', '4', '6', '6', '14', '14'),
                    (0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1)),
        'LD.L'   : (('A', 'B', 'C', 'D', 'E', 'H', 'L', '(HL)',
                    '#', '(IX)', '(IY)'),
                    (0x6F, 0x68, 0x69, 0x6A, 0x6B, 0x6C, 0x6D, 0x6E, 0x2E,
                     0xDD6E, 0xFD6E),
                    ('4', '4', '4', '4', '4', '4', '4', '6', '6', '14', '14'),
                    (0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1)),
        'LD.I'   : (('A',),
                    (0xED47,),
                    ('6',),
                    (0,)),
        'LD.R'   : (('A',),
                    (0xED4F,),
                    ('6',),
                    (0,)),
        'LD.(HL)': (('#', 'A', 'B', 'C', 'D', 'E', 'H', 'L'),
                    (0x36, 0x77, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75),
                    ('9', '7', '7', '7', '7', '7', '7', '7'),
                    (1, 0, 0, 0, 0, 0, 0, 0)),
        'LD.(IX)': (('#', 'A', 'B', 'C', 'D', 'E', 'H', 'L'),
                    (0xDD36, 0xDD77, 0xDD70, 0xDD71, 0xDD72, 0xDD73,
                     0xDD74, 0xDD75),
                    ('15', '15', '15', '15', '15', '15', '15', '15'),
                    (4, 3, 3, 3, 3, 3, 3, 3)),
        'LD.(IY)': (('#', 'A', 'B', 'C', 'D', 'E', 'H', 'L'),
                    (0xFD36, 0xFD77, 0xFD70, 0xFD71, 0xFD72, 0xFD73,
                     0xFD74, 0xFD75),
                    ('15', '15', '15', '15', '15', '15', '15', '15'),
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
                    ('9', '18'),
                    (2, 2)),
        'LD.DE'  : (('#', '(M)'),
                    (0x11, 0xED5B),
                    ('9', '18'),
                    (2, 2)),
        'LD.HL'  : (('#', '(M)'),
                    (0x21, 0x2A),
                    ('9', '15'),
                    (2, 2)),
        'LD.SP'  : (('#', '(M)', 'HL', 'IX', 'IY'),
                    (0x31, 0xED7B, 0xF9, 0xDDF9, 0xFDF9),
                    ('9', '18', '4', '7', '7'),
                    (2, 2, 0, 0, 0)),
        'LD.IX'  : (('#', '(M)'),
                    (0xDD21, 0xDD2A),
                    ('12', '18'),
                    (2, 2)),
        'LD.IY'  : (('#', '(M)'),
                    (0xFD21, 0xFD2A),
                    ('12', '18'),
                    (2, 2)),

        'POP' : (crz80.Stack, 0xC1, ('9', '12')),
        'PUSH': (crz80.Stack, 0xC5, ('11', '14')),
        'MLT' : (crz80.Mult, 0xED4C, '17'),

        'ADC' : (crz80.Math, (0x88, 0xDD8E, 0xFD8E, 0xCE, 0xED4A),
                 ('4/6', '14', '14', '6', '10')),
        'ADD' : (crz80.Math, (0x80, 0xDD86, 0xFD86, 0xC6, 0x09, 0xDD09,
                              0xFD09),
                 ('4/6', '14', '14', '6', '7', '10', '10')),
        'AND' : (crz80.Math, (0xA0, 0xDDA6, 0xFDA6, 0xE6),
                 ('4/6', '14', '14', '6')),
        'CP'  : (crz80.Math, (0xB8, 0xDDBE, 0xFDBE, 0xFE),
                 ('4/6', '14', '14', '6')),
        'OR'  : (crz80.Math, (0xB0, 0xDDB6, 0xFDB6, 0xF6),
                 ('4/6', '14', '14', '6')),
        'SBC' : (crz80.Math, (0x98, 0xDD9E, 0xFD9E, 0xDE, 0xED42),
                 ('4/6', '14', '14', '6', '10')),
        'SUB' : (crz80.Math, (0x90, 0xDD96, 0xFD96, 0xD6),
                 ('4/6', '14', '14', '6')),
        'XOR' : (crz80.Math, (0xA8, 0xDDAE, 0xFDAE, 0xEE),
                 ('4/6', '14', '14', '6')),
        'TST' : (crz80.Math, (0xED04, 0x00, 0x00, 0xED64),
                 ('7/10', '0', '0', '9')),

        'DEC' : (crz80.IncDec, (0x05, 0x35, 0xDD35, 0xFD35, 0x0B, 0xDD2B,
                                0xFD2B),
                 ('4', '10', '18', '18', '4', '7', '7')),
        'INC' : (crz80.IncDec, (0x04, 0x34, 0xDD34, 0xFD34, 0x03, 0xDD23,
                                0xFD23),
                 ('4', '10', '18', '18', '4', '7', '7')),

        'CALL': (crz80.Jumps, (0xCD, 0xC4), ('16', '6+')),
        'JP'  : (crz80.Jumps, (0xC3, 0xC2, 0xE9, 0xDDE9, 0xFDE9),
                 ('9', '6+', '3', '6', '6')),

        'JR'  : (crz80.Branch, (0x18, 0x38, 0x30, 0x28, 0x20),
                 ('8', '6+', '6+', '6+', '6+')),
        'DJNZ': (crz80.Branch, (0x10,), ('7+',)),

        'RET' : (crz80.Returns, (0xC9, 0xC0), ('9', '5+')),

        'RLC' : (crz80.Singles, (0xCB00, 0xCB06, 0x06), ('7', '13', '19')),
        'RL'  : (crz80.Singles, (0xCB10, 0xCB16, 0x16), ('7', '13', '19')),
        'RRC' : (crz80.Singles, (0xCB08, 0xCB0E, 0x0E), ('7', '13', '19')),
        'RR'  : (crz80.Singles, (0xCB18, 0xCB1E, 0x1E), ('7', '13', '19')),
        'SLA' : (crz80.Singles, (0xCB20, 0xCB26, 0x26), ('7', '13', '19')),
        'SRA' : (crz80.Singles, (0xCB28, 0xCB2E, 0x2E), ('7', '13', '19')),
        'SRL' : (crz80.Singles, (0xCB38, 0xCB3E, 0x3E), ('7', '13', '19')),
        'BIT' : (crz80.Bits, (0xCB40, 0xCB46, 0x46), ('6', '9', '15')),
        'RES' : (crz80.Bits, (0xCB80, 0xCB86, 0x86), ('7', '13', '19')),
        'SET' : (crz80.Bits, (0xCBC0, 0xCBC6, 0xC6), ('7', '13', '19')),

        'IN'  : (crz80.InOut, (0xED40, 0xDB), ('9', '9')),
        'OUT' : (crz80.InOut, (0xED41, 0xD3), ('10', '10')),
        'INO' : (crz80.InOut, (0xED00, 0x00), ('12', '0')),    # Actually wrong
        'IN0' : (crz80.InOut, (0xED00, 0x00), ('12', '0')),
        'OUTO': (crz80.InOut, (0xED01, 0x00), ('13', '0')),    # Actually wrong
        'OUT0': (crz80.InOut, (0xED01, 0x00), ('13', '0')),
        'TSTIO': (crz80.InOut, (0xED74, 0x00), ('12', '0')),

        'EX'  : (crz80.Exch, (0xEB, 0x08, 0xE3, 0xDDE3, 0xFDE3),
                 ('3', '4', '16', '19', '19')),
        'IM'  : (crz80.IM, (0xED46, 0xED56, 0xED5E), '6'),

        'RST' : (crz80.Restart, 0xC7, '11')
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

if __name__ == '__main__':
    print("")
    print("This is a python module, it's not a program.")
    print("This module is part of the sbasm package.")
    print("Run sbasm instead.")
    print("")
