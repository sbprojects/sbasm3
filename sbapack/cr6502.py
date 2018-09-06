# ------------------------------------------------------------------------------
#
#   cr6502.py
#
#   Package module file for the SB-Assembler sbasm
#   See www.sbprojects.net for details
#
#   Author: San Bergmans
#   Date  : 2015-12-21
#
#   Cross Overlay for the 6502 devices
#
# ------------------------------------------------------------------------------

import sys
import os

import assem
import dec
import errors
import target

crossversion = '3.01.02'
minversion = '3.01.00'

sweet16 = False         # Sweet16 mode if True
Sweet16_Mnemonics = {}  # Extra instruction set for Sweet16
modelinex = 2


# ------------------------------------------------------------------------------

def Help():

    print('Tell a little story about this cross overlay')
    # instruction length in clock cycles
    # *  add 1 if page boundary is crossed
    # ** add 1 if branch occurs to same page
    #    add 2 if branch occurs to next page
    # The Cmos chips have different timings.
    # Especially if the D flag is set, most data instructions take 1 cycle
    # more.
    # Also if indexes cross a page boundary the instruction takes 1 cycle more.
    # The document W65C02S contains some errors/inconcistencies regardging
    # timings


# ------------------------------------------------------------------------------

def CrossInit():

    """
    Initialize this cross overlay.
    Mainly create two dictionaries. One holding all 6502 instructions and
    one holding the Sweet16 instructions.
    Set default mode to 6502 instructions.
    Also add one extra warning for the 6502 JMP (IND) bug
    """

    global Asm, Flags, Error_List, sweet16, Sweet16_Mnemonics, modelindex

    assem.CheckVersions(crossversion, minversion)
    sweet16 = False

    if dec.Cross.Name == 'cr6502':
        # Index to 6502 instruction times
        modelindex = 2
    else:
        # Index to 65C02 and 65SC02 instruction times
        modelindex = 3

    # The instructions directory contains a tuple with:
    #   function which handles this opcode,
    #   integer value of opcode, or a tupple with opcodes
    #   string or tupple with 6502 cycle time(s)
    #   string or tupple with 65C02 cycle time(s)
    # If the final cycle time is 0 that particular instruction
    # or addressing mode doesn't exist for the selected
    # processor.

    dec.Asm.Instructions = {
        'BRK' : (Implied, 0x00, '7', '7'),
        'CLC' : (Implied, 0x18, '2', '2'),
        'CLD' : (Implied, 0xD8, '2', '2'),
        'CLI' : (Implied, 0x58, '2', '2'),
        'CLV' : (Implied, 0xB8, '2', '2'),
        'DEA' : (Implied, 0x3A, '0', '2'),
        'DEX' : (Implied, 0xCA, '2', '2'),
        'DEY' : (Implied, 0x88, '2', '2'),
        'INA' : (Implied, 0x1A, '0', '2'),
        'INX' : (Implied, 0xE8, '2', '2'),
        'INY' : (Implied, 0xC8, '2', '2'),
        'NOP' : (Implied, 0xEA, '2', '2'),
        'PHA' : (Implied, 0x48, '3', '3'),
        'PHP' : (Implied, 0x08, '3', '3'),
        'PHX' : (Implied, 0xDA, '0', '3'),
        'PHY' : (Implied, 0x5A, '0', '3'),
        'PLA' : (Implied, 0x68, '4', '4'),
        'PLP' : (Implied, 0x28, '4', '4'),
        'PLX' : (Implied, 0xFA, '0', '4'),
        'PLY' : (Implied, 0x7A, '0', '4'),
        'RTI' : (Implied, 0x40, '6', '6'),
        'RTS' : (Implied, 0x60, '6', '6'),
        'SEC' : (Implied, 0x38, '2', '2'),
        'SED' : (Implied, 0xF8, '2', '2'),
        'SEI' : (Implied, 0x78, '2', '2'),
        'STP' : (Implied, 0xDB, '0', '3'),
        'TAX' : (Implied, 0xAA, '2', '2'),
        'TAY' : (Implied, 0xA8, '2', '2'),
        'TSX' : (Implied, 0xBA, '2', '2'),
        'TXA' : (Implied, 0x8A, '2', '2'),
        'TXS' : (Implied, 0x9A, '2', '2'),
        'TYA' : (Implied, 0x98, '2', '2'),
        'WAI' : (Implied, 0xCB, '0', '3'),

        'BCC' : (Branch, 0x90, '2**', '2**'),
        'BCS' : (Branch, 0xB0, '2**', '2**'),
        'BEQ' : (Branch, 0xF0, '2**', '2**'),
        'BMI' : (Branch, 0x30, '2**', '2**'),
        'BNE' : (Branch, 0xD0, '2**', '2**'),
        'BPL' : (Branch, 0x10, '2**', '2**'),
        'BRA' : (Branch, 0x80, '0',  '2**'),
        'BVC' : (Branch, 0x50, '2**', '2**'),
        'BVS' : (Branch, 0x70, '2**', '2**'),

        # implied, imm, zp, abs, (zp,x) (zp),y, zp,x abs,x zp,y abs,y (zp)

        'ADC' : (Multi, (0x00, 0x69, 0x65, 0x6D, 0x61, 0x71, 0x75, 0x7D, 0x00,
                         0x79, 0x72),
                        ('0', '2', '3', '4', '6', '5*', '4', '4*', '0', '4*',
                         '0'),
                        ('0', '2', '3', '4', '6', '5*', '4', '4*', '0', '4*',
                         '5')
                 ),
        'ADD' : (Multi, (0x00, 0x69, 0x65, 0x6D, 0x61, 0x71, 0x75, 0x7D, 0x00,
                         0x79, 0x72),
                        ('0', '4', '5', '6', '8', '5*', '6', '6*', '0', '6*',
                         '0'),
                        ('0', '4', '5', '6', '8', '5*', '6', '6*', '0', '6*',
                         '5')
                 ),
        'AND' : (Multi, (0x00, 0x29, 0x25, 0x2D, 0x21, 0x31, 0x35, 0x3D, 0x00,
                         0x39, 0x32),
                        ('0', '2', '3', '4', '6', '5*', '4', '4*', '0', '4*',
                         '0'),
                        ('0', '2', '3', '4', '6', '5*', '4', '4*', '0', '4*',
                         '5')
                 ),
        'ASL' : (Multi, (0x0A, 0x00, 0x06, 0x0E, 0x00, 0x00, 0x16, 0x1E, 0x00,
                         0x00, 0x00),
                        ('2', '0', '5', '6', '0', '0', '6', '7', '0', '0',
                         '0'),
                        ('2', '0', '5', '6', '0', '0', '6', '6*', '0', '0',
                         '0')
                 ),
        'BIT' : (Multi, (0x00, 0x89, 0x24, 0x2C, 0x00, 0x00, 0x34, 0x3C, 0x00,
                         0x00, 0x00),
                        ('0', '0', '3', '4', '0', '0', '0', '0', '0', '0',
                         '0'),
                        ('0', '2', '3', '4', '0', '0', '4', '4', '0', '0',
                         '0')
                 ),
        'CMP' : (Multi, (0x00, 0xC9, 0xC5, 0xCD, 0xC1, 0xD1, 0xD5, 0xDD, 0x00,
                         0xD9, 0xD2),
                        ('0', '2', '3', '4', '6', '5*', '4', '4*', '0', '4*',
                         '0'),
                        ('0', '2', '3', '4', '6', '5*', '4', '4*', '0', '4*',
                         '5')
                 ),
        'CPX' : (Multi, (0x00, 0xE0, 0xE4, 0xEC, 0x00, 0x00, 0x00, 0x00, 0x00,
                         0x00, 0x00),
                        ('0', '2', '3', '4', '0', '0', '0', '0', '0', '0',
                         '0'),
                        ('0', '2', '3', '4', '0', '0', '0', '0', '0', '0',
                         '0')
                 ),
        'CPY' : (Multi, (0x00, 0xC0, 0xC4, 0xCC, 0x00, 0x00, 0x00, 0x00, 0x00,
                         0x00, 0x00),
                        ('0', '2', '3', '4', '0', '0', '0', '0', '0', '0',
                         '0'),
                        ('0', '2', '3', '4', '0', '0', '0', '0', '0', '0',
                         '0')
                 ),
        'DEC' : (Multi, (0x3A, 0x00, 0xC6, 0xCE, 0x00, 0x00, 0xD6, 0xDE, 0x00,
                         0x00, 0x00),
                        ('0', '0', '5', '6', '0', '0', '6', '7', '0', '0',
                         '0'),
                        ('2', '0', '5', '6', '0', '0', '6', '7', '0', '0',
                         '0')
                 ),
        'EOR' : (Multi, (0x00, 0x49, 0x45, 0x4D, 0x41, 0x51, 0x55, 0x5D, 0x00,
                         0x59, 0x52),
                        ('0', '2', '3', '4', '6', '5*', '4', '4*', '0', '4*',
                         '0'),
                        ('0', '2', '3', '4', '6', '5*', '4', '4*', '0', '4*',
                         '5')
                 ),
        'INC' : (Multi, (0x1A, 0x00, 0xE6, 0xEE, 0x00, 0x00, 0xF6, 0xFE, 0x00,
                         0x05, 0x00),
                        ('0', '0', '5', '6', '0', '0', '6', '7', '0', '0',
                         '0'),
                        ('2', '0', '5', '6', '0', '0', '6', '7', '0', '0',
                         '0')
                 ),
        'JMP' : (Multi, (0x00, 0x00, 0x00, 0x4C, 0x7C, 0x00, 0x00, 0x00, 0x00,
                         0x00, 0x6C),
                        ('0', '0', '0', '3', '0', '0', '0', '0', '0', '0',
                         '5'),
                        ('0', '0', '0', '3', '6', '0', '0', '0', '0', '0',
                         '6')
                 ),
        'JSR' : (Multi, (0x00, 0x00, 0x00, 0x20, 0x20, 0x00, 0x00, 0x00, 0x00,
                         0x00, 0x00),
                        ('0', '0', '0', '6', '0', '0', '0', '0', '0', '0',
                         '0'),
                        ('0', '0', '0', '6', '0', '0', '0', '0', '0', '0',
                         '0')
                 ),
        'LDA' : (Multi, (0x00, 0xA9, 0xA5, 0xAD, 0xA1, 0xB1, 0xB5, 0xBD, 0x00,
                         0xB9, 0xB2),
                        ('0', '2', '3', '4', '6', '5*', '4', '4*', '0', '4*',
                         '0'),
                        ('0', '2', '3', '4', '6', '5*', '4', '4*', '0', '4*',
                         '5')
                 ),
        'LDX' : (Multi, (0x00, 0xA2, 0xA6, 0xAE, 0x00, 0x09, 0x00, 0x00, 0xB6,
                         0xBE, 0x00),
                        ('0', '2', '3', '4', '0', '0', '0', '0', '4', '4*',
                         '0'),
                        ('0', '2', '3', '4', '0', '0', '0', '0', '4', '4*',
                         '0')
                 ),
        'LDY' : (Multi, (0x00, 0xA0, 0xA4, 0xAC, 0x00, 0x00, 0xB4, 0xBC, 0x00,
                         0x00, 0x00),
                        ('0', '2', '3', '4', '0', '0', '4', '4*', '0', '0',
                         '0'),
                        ('0', '2', '3', '4', '0', '0', '4', '4*', '0', '0',
                         '0')
                 ),
        'LSR' : (Multi, (0x4A, 0x00, 0x46, 0x4E, 0x00, 0x00, 0x56, 0x5E, 0x00,
                         0x00, 0x00),
                        ('2', '0', '5', '6', '0', '0', '6', '7', '0', '0',
                         '0'),
                        ('2', '0', '5', '6', '0', '0', '6', '7', '0', '0',
                         '0')
                 ),
        'ORA' : (Multi, (0x00, 0x09, 0x05, 0x0D, 0x01, 0x11, 0x15, 0x1D, 0x00,
                         0x19, 0x12),
                        ('0', '2', '3', '4', '6', '5*', '4', '4*', '0', '4*',
                         '0'),
                        ('0', '2', ' 3', '4', '6', '5*', '4', '4*', '0', '4*',
                         '5')
                 ),
        'ROL' : (Multi, (0x2A, 0x09, 0x26, 0x2E, 0x00, 0x00, 0x36, 0x3E, 0x00,
                         0x00, 0x00),
                        ('2', '0', '5', '6', '0', '0', '6', '7', '0', '0',
                         '0'),
                        ('2', '0', '5', '6', '0', '0', '6', '7', '0', '0',
                         '0')
                 ),
        'ROR' : (Multi, (0x6A, 0x00, 0x66, 0x6E, 0x00, 0x00, 0x76, 0x7E,
                         0x00, 0x00, 0x00),
                        ('2', '0', '5', '6', '0', '0', '6', '7', '0', '0',
                         '0'),
                        ('2', '0', '5', '6', '0', '0', '6', '7', '0', '0',
                         '0')
                 ),
        'SBC' : (Multi, (0x00, 0xE9, 0xE5, 0xED, 0xE1, 0xF1, 0xF5, 0xFD, 0x00,
                         0xF9, 0xF2),
                        ('0', '2', '3', '4', '6', '5*', '4', '4*', '0', '4*',
                         '0'),
                        ('0', '2', '3', '4', '6', '5*', '4', '4*', '0', '4*',
                         '5')
                 ),
        'SUB' : (Multi, (0x00, 0xE9, 0xE5, 0xED, 0xE1, 0xF1, 0xF5, 0xFD, 0x00,
                         0xF9, 0xF2),
                        ('0', '4', '5', '6', '8', '7*', '6', '6*', '0', '6*',
                         '0'),
                        ('0', '4', '5', '6', '8', '7*', '6', '6*', '0', '6*',
                         '5')
                 ),
        'STA' : (Multi, (0x00, 0x00, 0x85, 0x8D, 0x81, 0x91, 0x95, 0x9D, 0x00,
                         0x99, 0x92),
                        ('0', '0', '2', '4', '6', '6', '4', '5', '0', '5',
                         '0'),
                        ('0', '0', '3', '4', '6', '6', '4', '5', '0', '5',
                         '5')
                 ),
        'STX' : (Multi, (0x00, 0x00, 0x86, 0x8E, 0x00, 0x00, 0x00, 0x00, 0x96,
                         0x00, 0x00),
                        ('0', '0', '3', '4', '0', '0', '0', '0', '4', '0',
                         '0'),
                        ('0', '0', '3', '4', '0', '0', '0', '0', '4', '0',
                         '0')
                 ),
        'STY' : (Multi, (0x00, 0x00, 0x84, 0x8C, 0x00, 0x00, 0x94, 0x00, 0x00,
                         0x00, 0x00),
                        ('0', '0', '3', '4', '0', '0', '4', '0', '0', '0',
                         '0'),
                        ('0', '0', '3', '4', '0', '0', '4', '0', '0', '0',
                         '0')
                 ),
        'STZ' : (Multi, (0x00, 0x00, 0x64, 0x9C, 0x00, 0x00, 0x74, 0x9E, 0x00,
                         0x00, 0x00),
                        ('0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
                         '0'),
                        ('0', '0', '3', '4', '0', '0', '4', '5', '0', '0',
                         '0')
                 ),
        'TRB' : (Multi, (0x00, 0x00, 0x14, 0x1C, 0x00, 0x00, 0x94, 0x00, 0x00,
                         0x00, 0x00),
                        ('0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
                         '0'),
                        ('0', '0', '5', '6', '0', '0', '4', '0', '0', '0',
                         '0')
                 ),
        'TSB' : (Multi, (0x00, 0x00, 0x04, 0x0C, 0x00, 0x00, 0x94, 0x00, 0x00,
                         0x00, 0x00),
                        ('0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
                         '0'),
                        ('0', '0', '5', '6', '0', '0', '4', '0', '0', '0',
                         '0')
                 ),

        'BBR0': (BitMan, 0x0F, '5'),
        'BBR1': (BitMan, 0x1F, '5'),
        'BBR2': (BitMan, 0x2F, '5'),
        'BBR3': (BitMan, 0x3F, '5'),
        'BBR4': (BitMan, 0x4F, '5'),
        'BBR5': (BitMan, 0x5F, '5'),
        'BBR6': (BitMan, 0x6F, '5'),
        'BBR7': (BitMan, 0x7F, '5'),
        'BBR' : (BitMan, 0x0F, '5'),
        'BBS0': (BitMan, 0x8F, '5'),
        'BBS1': (BitMan, 0x9F, '5'),
        'BBS2': (BitMan, 0xAF, '5'),
        'BBS3': (BitMan, 0xBF, '5'),
        'BBS4': (BitMan, 0xCF, '5'),
        'BBS5': (BitMan, 0xDF, '5'),
        'BBS6': (BitMan, 0xEF, '5'),
        'BBS7': (BitMan, 0xFF, '5'),
        'BBS' : (BitMan, 0x8F, '5'),
        'RMB0': (BitMan, 0x07, '5'),
        'RMB1': (BitMan, 0x17, '5'),
        'RMB2': (BitMan, 0x27, '5'),
        'RMB3': (BitMan, 0x37, '5'),
        'RMB4': (BitMan, 0x47, '5'),
        'RMB5': (BitMan, 0x57, '5'),
        'RMB6': (BitMan, 0x67, '5'),
        'RMB7': (BitMan, 0x77, '5'),
        'RMB' : (BitMan, 0x07, '5'),
        'SMB0': (BitMan, 0x87, '5'),
        'SMB1': (BitMan, 0x97, '5'),
        'SMB2': (BitMan, 0xA7, '5'),
        'SMB3': (BitMan, 0xB7, '5'),
        'SMB4': (BitMan, 0xC7, '5'),
        'SMB5': (BitMan, 0xD7, '5'),
        'SMB6': (BitMan, 0xE7, '5'),
        'SMB7': (BitMan, 0xF7, '5'),
        'SMB' : (BitMan, 0x87, '5')
    }

    Sweet16_Mnemonics = {
        'BK'  : (Single16, 0x0A),
        'RS'  : (Single16, 0x0B),
        'RTN' : (Single16, 0x00),

        'BR'  : (Branch16, 0x01),
        'BNC' : (Branch16, 0x02),
        'BC'  : (Branch16, 0x03),
        'BP'  : (Branch16, 0x04),
        'BM'  : (Branch16, 0x05),
        'BZ'  : (Branch16, 0x06),
        'BNZ' : (Branch16, 0x07),
        'BM1' : (Branch16, 0x08),
        'BNM1': (Branch16, 0x09),
        'BS'  : (Branch16, 0x0C),

        'SET' : (Sweet16, 0x10, 0x00),
        'LD'  : (Sweet16, 0x20, 0x40),
        'ST'  : (Sweet16, 0x30, 0x50),
        'LDD' : (Sweet16, 0x00, 0x60),
        'STD' : (Sweet16, 0x00, 0x70),
        'POP' : (Sweet16, 0x00, 0x80),
        'STP' : (Sweet16, 0x00, 0x90),
        'ADD' : (Sweet16, 0xA0, 0x00),
        'SUB' : (Sweet16, 0xB0, 0x00),
        'POPD': (Sweet16, 0x00, 0xC0),
        'CPR' : (Sweet16, 0xD0, 0x00),
        'INR' : (Sweet16, 0xE0, 0x00),
        'DCR' : (Sweet16, 0xF0, 0x00)
    }

    dec.Asm.Timing_Length = 3   # Maximum length of instruction time

    errors.Error_List['6502bug'] = '6502 JMP (IND) bug at $xxFF'

    dec.Asm.Memory = 0
    if dec.Asm.Pass == 1:
        sys.stdout.write('Loaded ' + dec.Cross.Name[2:] +
                         ' overlay version ' + crossversion + dec.EOL)

    dec.Asm.Max_Address = dec.MAX16
    dec.Asm.PP_TA_Factor = 1
    dec.Flags.BigEndian = False

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
    This may be a normal 6502 instruction, or a Sweet16 instruction depending
    on the current mode.
    JSR SWEET16 switches mode from 6502 to Sweet16, regardless of the value
    of the lable SWEET16.
    RTN switches mode back from Sweet16 to 6502.
    """

    global Asm

    if not sweet16:
        # Parse normal 6502 mnemonics
        if dec.Asm.Mnemonic in dec.Asm.Instructions:
            func = dec.Asm.Instructions[dec.Asm.Mnemonic][0]
            func()
        else:
            errors.DoError('badopco', False)
    else:
        # Parse Sweet16 mnemonics
        if dec.Asm.Mnemonic in Sweet16_Mnemonics:
            func = Sweet16_Mnemonics[dec.Asm.Mnemonic][0]
            dec.Asm.Timing = '?'
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

    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][modelindex]
    if dec.Asm.Timing != '0':
        target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1])
    else:
        errors.DoError('badopco', False)


# -----------------------------------------------------------------------------

def Branch():

    """
    Handle branch instructions.
    Displacement is destinaiton - current address - 2
    """

    global Asm

    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][modelindex]
    if dec.Asm.Timing != '0':
        if MissingOperand():
            return

        value = assem.EvalExpr()
        offset = value[0] - dec.Asm.BOL_Address - 2

        if dec.Asm.Pass == 2 and (offset < -128 or offset > 127):
            errors.DoError('range', False)

        target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1])
        target.CodeByte(offset)

        NoMore()
    else:
        errors.DoError('badopco', False)


# -----------------------------------------------------------------------------

def Multi():

    """
    Handle all other mnemonics of the 6502 instructionset.
    Each addressing mode has a separate entry in the opcode tupple.
    If the opcode is 0x00 the particular instruction is not available
    on the selected model.
    If the cycle length is '0' the particular addressing mode is not
    supported.
    The model is selected by calling either the 6502 overlay, or the
    65c02 or 65sc02 overlays.
    """

    global Asm, sweet16

    if modelindex == 2 and (dec.Asm.Mnemonic in ('STZ', 'TRB', 'TSB')):
        errors.DoError('badopco', False)
        return

    instructions = dec.Asm.Instructions[dec.Asm.Mnemonic][1]
    ctimes = dec.Asm.Instructions[dec.Asm.Mnemonic][modelindex]
    operandbegin = dec.Asm.Parse_Pointer

    # Does implied addressing exist for this instruction?
    optional = dec.Asm.Optional
    pointer = dec.Asm.Parse_Pointer
    if instructions[0] != 0 and ctimes[0] != '0':
        if optional and \
                (dec.Asm.Parse_Line[operandbegin:operandbegin+2].upper() ==
                 "A "):
            optional = False
        if optional is False:
            # No operand followed, use implied addressing mode
            dec.Asm.Timing = ctimes[0]
            target.CodeByte(instructions[0])
            return

    if MissingOperand():
        return

    # There are two compound instructions, save prefix for them first
    if dec.Asm.Mnemonic == 'ADD':
        target.CodeByte(0x18)
    if dec.Asm.Mnemonic == 'SUB':
        target.CodeByte(0x38)

    nowchar = assem.NowChar().upper()

    # Is it immediate addressing mode?
    if nowchar in '#/=\\':
        if instructions[1] == 0 or ctimes[1] == '0':
            errors.DoError('badoper', False)
            return
        prefix = assem.NowChar(True)
        value = assem.EvalExpr()
        dec.Asm.Timing = ctimes[1]
        if prefix == '#':
            operand = value[0]
        elif prefix == '/':
            operand = value[0] >> 8
        elif prefix == '=':
            operand = value[0] >> 16
        else:
            operand = value[0] >> 24
        target.CodeByte(instructions[1])
        target.CodeByte(operand)
        NoMore()
        return

    # Is it some kind if indirect mode?
    if nowchar == '(':
        assem.IncParsePointer()
        value = assem.EvalExpr()
        if assem.NowChar() == ')':
            # It must be (ZP),Y mode now, or is it JMP (IND) ?
            # On the CMOS models it can also be (ZP)
            assem.IncParsePointer()
            if assem.MoreParameters():
                # It must be (zp),y now
                opcode = instructions[5]
                if (opcode != 0) and (assem.NowChar(True).upper() == 'Y'):
                    dec.Asm.Timing = ctimes[5]
                    target.CodeByte(opcode)
                    target.CodeByte(value[0])
                    if dec.Asm.Pass == 2 and ((value[0] >> 8) != 0):
                        errors.DoError('range', False)
                    NoMore()
                    return
                else:
                    errors.DoError('badoper', False)

            else:
                # It is (zp), or (abs) in case of JMP now
                opcode = instructions[10]
                dec.Asm.Timing = ctimes[10]
                if dec.Asm.Mnemonic == "JMP":
                    # It's JMP (IND)
                    target.CodeByte(opcode)
                    target.CodeWord(value[0])
                    if dec.Asm.Pass == 2 and ((value[0] >> 16) != 0):
                        errors.DoError('range', False)
                    if ((value[0] & 255) == 255) and modelindex == 2:
                        # Give warning to user about the 6502 JMP (IND) bug
                        errors.DoWarning('6502bug', False)
                    NoMore()
                    return
                else:
                    # It's (zp) now
                    if ctimes[10] == 0:
                        errors.DoError('badoper', False)
                        return
                    target.CodeByte(opcode)
                    target.CodeByte(value[0])
                    if dec.Asm.Pass == 2 and ((value[0] >> 8) != 0):
                        errors.DoError('range', False)
                    NoMore()
                    return
            return

        # It must be (ZP,X) mode now
        opcode = instructions[4]
        if (opcode != 0 and ctimes[4] != '0') and assem.MoreParameters() \
                and (assem.NowChar(True).upper() == 'X') and \
                (assem.NowChar(True).upper() == ')'):
            dec.Asm.Timing = ctimes[4]
            target.CodeByte(opcode)
            if dec.Asm.Mnemonic == "JMP":
                target.CodeWord(value[0])
                if dec.Asm.Pass == 2 and ((value[0] >> 16) != 0):
                    errors.DoError('range', False)
            else:
                target.CodeByte(value[0])
                if dec.Asm.Pass == 2 and ((value[0] >> 8) != 0):
                    errors.DoError('range', False)
            NoMore()
        else:
            errors.DoError('badoper', False)
        return

    # May now be ZP, ABS, ZP,X ABS,X ZP,Y or ABS,Y

    if nowchar in '<>':
        # Forced ZP or ABS prefix given
        prefix = nowchar
        assem.IncParsePointer()
    else:
        prefix = ''     # We have no preference, let the assembler decide

    value = assem.EvalExpr()
    if prefix == '':
        if value[1]:
            # A forward referenced label is used, force absolute mode
            prefix = '>'
        else:
            # Now decide if ZP is still possible
            if (value[0] >> 8) == 0:
                prefix = '<'
            else:
                prefix = '>'

    if not (assem.MoreParameters()):
        # It's normal ZP or ABS addressing mode
        if prefix == '<':
            index = 2
        else:
            index = 3
    else:
        # It's ZP or ABS indexed with X or Y now
        nowchar = assem.NowChar(True).upper()
        if nowchar == 'X':
            index = 6
        elif nowchar == 'Y':
            index = 8
        else:
            errors.DoError('badoper', False)
            return
        if prefix == '>':
            index = index + 1

    if prefix == '<' and instructions[index] == 0:
        # ZP wanted, but doesn't exist, use ABS instead
        prefix = '>'
        index = index + 1

    if instructions[index] == 0 or ctimes[index] == '0':
        errors.DoError('badoper', False)
        return

    target.CodeByte(instructions[index])
    dec.Asm.Timing = ctimes[index]

    if prefix == '<':
        target.CodeByte(value[0])
        address = value[0] >> 8
    else:
        target.CodeWord(value[0])
        address = value[0] >> 16

    if dec.Asm.Mnemonic == 'JSR':
        # See if it's JSR SWEET16
        if dec.Asm.Parse_Line[operandbegin:operandbegin+8].upper() == \
                'SWEET16 ':
            sweet16 = True

    if dec.Asm.Pass == 2 and address != 0:
        errors.DoError('range', False)
    NoMore()
    return


# -----------------------------------------------------------------------------

def BitMan():

    """
    The Bit Manipulation instructions are unique to the CMOS devices.
    Even so, not all devices know them.
    It's up to the user to make sure the device supports these instructions
    or not.
    Two syntax versions exist. One where the bit number is part of the
    mnemonic, and one where the bit number is the first parameter in the
    parameter field.
    """

    global Asm

    if modelindex == 2 and (dec.Asm.Mnemonic in ('STZ', 'TRB', 'TSB')):
        errors.DoError('badopco', False)
        return

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1]
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    if MissingOperand():
        return

    if len(dec.Asm.Mnemonic) == 3:
        # Alternative syntax used, with separate bit number
        value = assem.EvalExpr()
        if dec.Asm.Pass == 2 and (value[0] >> 3) != 0:
            errors.DoError('range', False)
        opcode = opcode + ((value[0] & 7) << 4)

        if not assem.MoreParameters():
            errors.DoError('missoper', False)
            return

    value = assem.EvalExpr()

    if dec.Asm.Pass == 2 and (value[0] >> 8) != 0:
        errors.DoError('range', False)

    address = value[0]

    if dec.Asm.Mnemonic[0] == 'B':
        # Branch instructions
        if not assem.MoreParameters():
            errors.DoError('missoper', False)
            return
        value = assem.EvalExpr()
        offset = value[0] - dec.Asm.BOL_Address - 3

        if dec.Asm.Pass == 2 and (offset < -128 or offset > 127):
            errors.DoError('range', False)

        target.CodeByte(opcode)
        target.CodeByte(address)
        target.CodeByte(offset)

    else:
        # Set/Reset memory bit instructions
        target.CodeByte(opcode)
        target.CodeByte(address)

    NoMore()


# -----------------------------------------------------------------------------

def Single16():

    """
    Handle Implied Sweet16 instructions.
    The only difference is that RTN terminates Sweet16 mode.
    """

    global Asm, sweet16

    target.CodeByte(Sweet16_Mnemonics[dec.Asm.Mnemonic][1])
    if dec.Asm.Mnemonic == 'RTN':
        sweet16 = False


# -----------------------------------------------------------------------------

def Branch16():

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

    target.CodeByte(Sweet16_Mnemonics[dec.Asm.Mnemonic][1])
    target.CodeByte(offset)

    NoMore()


# -----------------------------------------------------------------------------

def Sweet16():

    """
    Handle remaining Sweet16 instructions. They all expect a register number,
    some accept an indirect register number. Only the SET instruction also
    expects a 16 bit target address.
    Registers are numbered from 0 to 15. If you want to use R0 to R15 instead
    assign labels to the 16 register numbers.
    """

    global Asm

    if MissingOperand():
        return

    if assem.NowChar() == '@':
        assem.IncParsePointer()
        opcode = Sweet16_Mnemonics[dec.Asm.Mnemonic][2]
    else:
        opcode = Sweet16_Mnemonics[dec.Asm.Mnemonic][1]

    if opcode == 0:
        errors.DoError('badopco', False)
        return

    value = assem.EvalExpr()
    if dec.Asm.Pass == 2 and (value[0] >> 4) != 0:
        errors.DoError('range', False)

    opcode = opcode + (value[0] & 15)

    target.CodeByte(opcode)

    if dec.Asm.Mnemonic == 'SET':
        if assem.MoreParameters():
            value = assem.EvalExpr()
            target.CodeWord(value[0])
        else:
            errors.DoError('missoper', False)

    NoMore()


# -----------------------------------------------------------------------------

if __name__ == '__main__':
    print("")
    print("This is a python module, it's not a program.")
    print("This module is part of the sbasm package.")
    print("Run sbasm instead.")
    print("")
