# ------------------------------------------------------------------------------
#
#   cr8008.py
#
#   Package module file for the SB-Assembler sbasm
#   See www.sbprojects.net for details
#
#   Author: San Bergmans
#   Date  : 2015-12-21
#
#   8008 Cross Overlay
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

    # The instructions directory contains a tuple with:
    #   function which handles this opcode,
    #   integer value of opcode
    #   string with cycle time(s) of this instruction on an 8085

    dec.Asm.Instructions = {
        'MOV' : (MovInst, 0xC0, '5'),
        'MVI' : (MviInst, 0x06, '8'),

        'INR' : (IncDec, 0x08, '5'),
        'DCR' : (IncDec, 0x09, '5'),

        'ADD' : (Math, 0x80, '5'),
        'ADC' : (Math, 0x88, '5'),
        'SUB' : (Math, 0x90, '5'),
        'SBB' : (Math, 0x98, '5'),
        'ANA' : (Math, 0xA0, '5'),
        'XRA' : (Math, 0xA8, '5'),
        'ORA' : (Math, 0xB0, '5'),
        'CMP' : (Math, 0xB8, '5'),

        'JMP' : (Jumps, 0x44, '11'),
        'JFC' : (Jumps, 0x40, '9/11'),
        'JNC' : (Jumps, 0x40, '9/11'),
        'JFZ' : (Jumps, 0x48, '9/11'),
        'JNZ' : (Jumps, 0x48, '9/11'),
        'JFS' : (Jumps, 0x50, '9/11'),
        'JP'  : (Jumps, 0x50, '9/11'),
        'JFP' : (Jumps, 0x58, '9/11'),
        'JPO' : (Jumps, 0x58, '9/11'),
        'JTC' : (Jumps, 0x60, '9/11'),
        'JC'  : (Jumps, 0x60, '9/11'),
        'JTZ' : (Jumps, 0x68, '9/11'),
        'JZ'  : (Jumps, 0x68, '9/11'),
        'JTS' : (Jumps, 0x70, '9/11'),
        'JM'  : (Jumps, 0x70, '9/11'),
        'JTP' : (Jumps, 0x78, '9/11'),
        'JPE' : (Jumps, 0x78, '9/11'),
        'CAL' : (Jumps, 0x46, '11'),
        'CALL': (Jumps, 0x46, '11'),
        'CFC' : (Jumps, 0x42, '9/11'),
        'CNC' : (Jumps, 0x42, '9/11'),
        'CFZ' : (Jumps, 0x4A, '9/11'),
        'CNZ' : (Jumps, 0x4A, '9/11'),
        'CFS' : (Jumps, 0x52, '9/11'),
        'CP'  : (Jumps, 0x52, '9/11'),
        'CFP' : (Jumps, 0x5A, '9/11'),
        'CPO' : (Jumps, 0x5A, '9/11'),
        'CTC' : (Jumps, 0x62, '9/11'),
        'CC'  : (Jumps, 0x62, '9/11'),
        'CTZ' : (Jumps, 0x6A, '9/11'),
        'CZ'  : (Jumps, 0x6A, '9/11'),
        'CTS' : (Jumps, 0x72, '9/11'),
        'CM'  : (Jumps, 0x72, '9/11'),
        'CTP' : (Jumps, 0x7A, '9/11'),
        'CPE' : (Jumps, 0x7A, '9/11'),

        'LAA' : (Inherent, 0xC0, '5'),
        'LAB' : (Inherent, 0xC1, '5'),
        'LAC' : (Inherent, 0xC2, '5'),
        'LAD' : (Inherent, 0xC3, '5'),
        'LAE' : (Inherent, 0xC4, '5'),
        'LAH' : (Inherent, 0xC5, '5'),
        'LAL' : (Inherent, 0xC6, '5'),
        'LAM' : (Inherent, 0xC7, '8'),
        'LBA' : (Inherent, 0xC8, '5'),
        'LBB' : (Inherent, 0xC9, '5'),
        'LBC' : (Inherent, 0xCA, '5'),
        'LBD' : (Inherent, 0xCB, '5'),
        'LBE' : (Inherent, 0xCC, '5'),
        'LBH' : (Inherent, 0xCD, '5'),
        'LBL' : (Inherent, 0xCE, '5'),
        'LBM' : (Inherent, 0xCF, '8'),
        'LCA' : (Inherent, 0xD0, '5'),
        'LCB' : (Inherent, 0xD1, '5'),
        'LCC' : (Inherent, 0xD2, '5'),
        'LCD' : (Inherent, 0xD3, '5'),
        'LCE' : (Inherent, 0xD4, '5'),
        'LCH' : (Inherent, 0xD5, '5'),
        'LCL' : (Inherent, 0xD6, '5'),
        'LCM' : (Inherent, 0xD7, '8'),
        'LDA' : (Inherent, 0xD8, '5'),
        'LDB' : (Inherent, 0xD9, '5'),
        'LDC' : (Inherent, 0xDA, '5'),
        'LDD' : (Inherent, 0xDB, '5'),
        'LDE' : (Inherent, 0xDC, '5'),
        'LDH' : (Inherent, 0xDD, '5'),
        'LDL' : (Inherent, 0xDE, '5'),
        'LDM' : (Inherent, 0xDF, '8'),
        'LEA' : (Inherent, 0xE0, '5'),
        'LEB' : (Inherent, 0xE1, '5'),
        'LEC' : (Inherent, 0xE2, '5'),
        'LED' : (Inherent, 0xE3, '5'),
        'LEE' : (Inherent, 0xE4, '5'),
        'LEH' : (Inherent, 0xE5, '5'),
        'LEL' : (Inherent, 0xE6, '5'),
        'LEM' : (Inherent, 0xE7, '8'),
        'LHA' : (Inherent, 0xE8, '5'),
        'LHB' : (Inherent, 0xE9, '5'),
        'LHC' : (Inherent, 0xEA, '5'),
        'LHD' : (Inherent, 0xEB, '5'),
        'LHE' : (Inherent, 0xEC, '5'),
        'LHH' : (Inherent, 0xED, '5'),
        'LHL' : (Inherent, 0xEE, '5'),
        'LHM' : (Inherent, 0xEF, '8'),
        'LLA' : (Inherent, 0xF0, '5'),
        'LLB' : (Inherent, 0xF1, '5'),
        'LLC' : (Inherent, 0xF2, '5'),
        'LLD' : (Inherent, 0xF3, '5'),
        'LLE' : (Inherent, 0xF4, '5'),
        'LLH' : (Inherent, 0xF5, '5'),
        'LLL' : (Inherent, 0xF6, '5'),
        'LLM' : (Inherent, 0xF7, '8'),
        'LMA' : (Inherent, 0xF8, '7'),
        'LMB' : (Inherent, 0xF9, '7'),
        'LMC' : (Inherent, 0xFA, '7'),
        'LMD' : (Inherent, 0xFB, '7'),
        'LME' : (Inherent, 0xFC, '7'),
        'LMH' : (Inherent, 0xFD, '7'),
        'LML' : (Inherent, 0xFE, '7'),

        'INB' : (Inherent, 0x08, '5'),
        'INC' : (Inherent, 0x10, '5'),
        'IND' : (Inherent, 0x18, '5'),
        'INE' : (Inherent, 0x20, '5'),
        'INH' : (Inherent, 0x28, '5'),
        'INL' : (Inherent, 0x30, '5'),
        'DCB' : (Inherent, 0x09, '5'),
        'DCC' : (Inherent, 0x11, '5'),
        'DCD' : (Inherent, 0x19, '5'),
        'DCE' : (Inherent, 0x21, '5'),
        'DCH' : (Inherent, 0x29, '5'),
        'DCL' : (Inherent, 0x31, '5'),

        'ADA' : (Inherent, 0x80, '5'),
        'ADB' : (Inherent, 0x81, '5'),
        # 'ADC' : (Inherent, 0x82, '5'),  Conflicting syntax parsed separately
        # 'ADD' : (Inherent, 0x83, '5'),  Conflicting syntax parsed separately
        'ADE' : (Inherent, 0x84, '5'),
        'ADH' : (Inherent, 0x85, '5'),
        'ADL' : (Inherent, 0x86, '5'),
        'ADM' : (Inherent, 0x87, '8'),
        'ACA' : (Inherent, 0x88, '5'),
        'ACB' : (Inherent, 0x89, '5'),
        'ACC' : (Inherent, 0x8A, '5'),
        'ACD' : (Inherent, 0x8B, '5'),
        'ACE' : (Inherent, 0x8C, '5'),
        'ACH' : (Inherent, 0x8D, '5'),
        'ACL' : (Inherent, 0x8E, '5'),
        'ACM' : (Inherent, 0x8F, '8'),
        'SUA' : (Inherent, 0x90, '5'),
        # 'SUB' : (Inherent, 0x91, '5'),  Conflicting syntax parsed separately
        'SUC' : (Inherent, 0x92, '5'),
        'SUD' : (Inherent, 0x93, '5'),
        'SUE' : (Inherent, 0x94, '5'),
        'SUH' : (Inherent, 0x95, '5'),
        'SUL' : (Inherent, 0x96, '5'),
        'SUM' : (Inherent, 0x97, '8'),
        'SBA' : (Inherent, 0x98, '5'),
        # 'SBB' : (Inherent,0x99,'5'),    Conflicting syntax parsed separately
        'SBC' : (Inherent, 0x9A, '5'),
        'SBD' : (Inherent, 0x9B, '5'),
        'SBE' : (Inherent, 0x9C, '5'),
        'SBH' : (Inherent, 0x9D, '5'),
        'SBL' : (Inherent, 0x9E, '5'),
        'SBM' : (Inherent, 0x9F, '8'),
        'NDA' : (Inherent, 0xA0, '5'),
        'NDB' : (Inherent, 0xA1, '5'),
        'NDC' : (Inherent, 0xA2, '5'),
        'NDD' : (Inherent, 0xA3, '5'),
        'NDE' : (Inherent, 0xA4, '5'),
        'NDH' : (Inherent, 0xA5, '5'),
        'NDL' : (Inherent, 0xA6, '5'),
        'NDM' : (Inherent, 0xA7, '8'),
        # 'XRA' : (Inherent, 0xA8, '5'),  Conflicting syntax parsed separately
        'XRB' : (Inherent, 0xA9, '5'),
        'XRC' : (Inherent, 0xAA, '5'),
        'XRD' : (Inherent, 0xAB, '5'),
        'XRE' : (Inherent, 0xAC, '5'),
        'XRH' : (Inherent, 0xAD, '5'),
        'XRL' : (Inherent, 0xAE, '5'),
        'XRM' : (Inherent, 0xAF, '8'),
        # 'ORA' : (Inherent, 0xB0, '5'),  Conflicting syntax parsed separately
        'ORB' : (Inherent, 0xB1, '5'),
        'ORC' : (Inherent, 0xB2, '5'),
        'ORD' : (Inherent, 0xB3, '5'),
        'ORE' : (Inherent, 0xB4, '5'),
        'ORH' : (Inherent, 0xB5, '5'),
        'ORL' : (Inherent, 0xB6, '5'),
        'ORM' : (Inherent, 0xB7, '8'),
        'CPA' : (Inherent, 0xB8, '5'),
        'CPB' : (Inherent, 0xB9, '5'),
        'CPC' : (Inherent, 0xBA, '5'),
        'CPD' : (Inherent, 0xBB, '5'),
        # 'CPE' : (Inherent, 0xBC, '5'),  Conflicting syntax parsed separately
        'CPH' : (Inherent, 0xBD, '5'),
        'CPL' : (Inherent, 0xBE, '5'),
        'CPM' : (Inherent, 0xBF, '8'),

        'RLC' : (Inherent, 0x02, '5'),
        'RRC' : (Inherent, 0x0A, '5'),
        'RAL' : (Inherent, 0x12, '5'),
        'RAR' : (Inherent, 0x1A, '5'),

        'HLT' : (Inherent, 0x00, '4'),

        'RET' : (Inherent, 0x07, '5'),
        'RFC' : (Inherent, 0x03, '3/5'),
        'RNC' : (Inherent, 0x03, '3/5'),
        'RFZ' : (Inherent, 0x0B, '3/5'),
        'RNZ' : (Inherent, 0x0B, '3/5'),
        'RFS' : (Inherent, 0x13, '3/5'),
        'RP'  : (Inherent, 0x13, '3/5'),
        'RFP' : (Inherent, 0x1B, '3/5'),
        'RPO' : (Inherent, 0x1B, '3/5'),

        'RTC' : (Inherent, 0x23, '3/5'),
        'RC'  : (Inherent, 0x23, '3/5'),
        'RTZ' : (Inherent, 0x2B, '3/5'),
        'RZ'  : (Inherent, 0x2B, '3/5'),
        'RTS' : (Inherent, 0x33, '3/5'),
        'RM'  : (Inherent, 0x33, '3/5'),
        'RTP' : (Inherent, 0x3B, '3/5'),
        'RPE' : (Inherent, 0x3B, '3/5'),

        'LAI' : (Immediate, 0x06, '8'),
        'LBI' : (Immediate, 0x0E, '8'),
        'LCI' : (Immediate, 0x16, '8'),
        'LDI' : (Immediate, 0x1E, '8'),
        'LEI' : (Immediate, 0x26, '8'),
        'LHI' : (Immediate, 0x2E, '8'),
        'LLI' : (Immediate, 0x36, '8'),
        'LMI' : (Immediate, 0x3E, '9'),

        'ADI' : (Immediate, 0x04, '8'),
        'ACI' : (Immediate, 0x0C, '8'),
        'SUI' : (Immediate, 0x14, '8'),
        'SBI' : (Immediate, 0x1C, '8'),
        'NDI' : (Immediate, 0x24, '8'),
        'ANI' : (Immediate, 0x24, '8'),
        'XRI' : (Immediate, 0x2C, '8'),
        'ORI' : (Immediate, 0x34, '8'),
        'CPI' : (Immediate, 0x3C, '8'),

        'IN'  : (InOut, 0x41, '8'),
        'INP' : (InOut, 0x41, '8'),
        'OUT' : (InOut, 0x41, '6'),

        'RST' : (Restart, 0x05, '5')
        }

    dec.Asm.Memory = 0
    dec.Asm.Timing_Length = 4

    if dec.Asm.Pass == 1:
        sys.stdout.write('Loaded ' + dec.Cross.Name[2:] +
                         ' overlay version ' + crossversion + dec.EOL)

    dec.Asm.Max_Address = (1 << 14)-1
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

    if dec.Asm.Mnemonic in dec.Asm.Instructions:
        func = dec.Asm.Instructions[dec.Asm.Mnemonic][0]
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]
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

def MovInst():

    global Asm

    if MissingOperand():
        return

    registers = 'ABCDEHLM'

    reg1 = registers.find(assem.NowChar(True).upper())

    if reg1 < 0:
        errors.DoError('badoper', False)
        return

    if reg1 == 7:
        # timing is different if first operand is M
        dec.Asm.Timing = '7'

    if not assem.MoreParameters():
        errors.DoError('missoper', False)
        return

    if assem.NowChar() == ' ':
        errors.DoError('missoper', False)
        return

    reg2 = registers.find(assem.NowChar(True).upper())

    if reg2 < 0:
        errors.DoError('badoper', False)
        return

    if reg1 == 7 and reg2 == 7:
        # mov m,m is not allowed, that his the hlt instruction
        errors.DoError('badoper', False)
        return

    if reg2 == 7:
        # timing is different if second operand is M
        dec.Asm.Timing = '8'

    NoMore()

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1] + (reg1 << 3) + reg2

    target.CodeByte(opcode)


# -----------------------------------------------------------------------------

def MviInst():

    global Asm

    if MissingOperand():
        return

    registers = 'ABCDEHLM'

    reg1 = registers.find(assem.NowChar(True).upper())

    if reg1 < 0:
        errors.DoError('badoper', False)
        return

    if reg1 == 7:
        # timing is different if first operand is M
        dec.Asm.Timing = '9'

    if not assem.MoreParameters():
        errors.DoError('missoper', False)
        return

    if assem.NowChar() == ' ':
        errors.DoError('missoper', False)
        return

    prefix = assem.NowChar()

    if prefix in '#/=\\':
        prefix = assem.NowChar(True)
    else:
        prefix = '#'

    value = assem.EvalExpr()

    if prefix == '#':
        byte = value[0]
    elif prefix == '/':
        byte = value[0] >> 8
    elif prefix == '=':
        byte = value[0] >> 16
    else:
        byte = value[0] >> 24

    NoMore()

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1] + (reg1 << 3)

    target.CodeByte(opcode)
    target.CodeByte(byte)


# -----------------------------------------------------------------------------

def Inherent():

    target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1])


# -----------------------------------------------------------------------------

def Immediate():

    global Asm

    if MissingOperand():
        return

    prefix = assem.NowChar()

    if prefix in '#/=\\':
        prefix = assem.NowChar(True)
    else:
        prefix = '#'

    value = assem.EvalExpr()

    if prefix == '#':
        byte = value[0]
    elif prefix == '/':
        byte = value[0] >> 8
    elif prefix == '=':
        byte = value[0] >> 16
    else:
        byte = value[0] >> 24

    target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1])
    target.CodeByte(byte)

    NoMore()


# -----------------------------------------------------------------------------

def IncDec():

    global Asm

    registers = "BCDEHL"

    if MissingOperand():
        return

    reg = registers.find(assem.NowChar(True).upper())

    if reg < 0:
        errors.DoError('badoper', False)
        return

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1] + (reg << 3)

    target.CodeByte(opcode)

    NoMore()


# -----------------------------------------------------------------------------

def Math():

    global Asm

    registers = "ABCDEHLM"
    exceptions = ('ADC', 'ADD', 'SUB', 'SBB', 'ORA', 'XRA')

    if dec.Asm.Mnemonic in exceptions:
        # These mnemonics may or may not have a register as operand
        # Depending on the 1972 or 1976 syntax
        if not dec.Asm.Optional:
            # No parameter was following within 10 spaces
            opcodes = [0x82, 0x83, 0x91, 0x99, 0xB0, 0xA8]
            ind = 0
            for t in exceptions:
                if t == dec.Asm.Mnemonic:
                    break
                ind = ind + 1
            opcode = opcodes[ind]
            target.CodeByte(opcode)
            return

    reg = registers.find(assem.NowChar(True).upper())

    if reg < 0:
        errors.DoError('badoper', False)
        return

    if reg == 7:
        # Timing is different for M
        dec.Asm.Timing = '8'

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1] + reg

    target.CodeByte(opcode)

    NoMore()


# -----------------------------------------------------------------------------

def Jumps():

    global Asm

    if dec.Asm.Mnemonic == 'CPE':
        # This mnemonics may or may not have an address as operand
        # Depending on the 1972 or 1976 syntax
        if not dec.Asm.Optional:
            # No parameter was following within 10 spaces
            target.CodeByte(0xBC)
            dec.Asm.Timing = "5"
            return

    dest = assem.EvalExpr()

    target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1])
    target.CodeWord(dest[0])

    if dec.Asm.Pass == 2 and (dest[0] >> 14) != 0:
        errors.DoError('range', False)

    NoMore()


# -----------------------------------------------------------------------------

def InOut():

    global Asm

    if MissingOperand():
        return

    dest = assem.EvalExpr()[0]

    if dec.Asm.Pass == 2:
        if dec.Asm.Mnemonic == "OUT":
            if dest < 8 or dest > 31:
                errors.DoError('range', False)
        else:
            if dest < 0 or dest > 7:
                errors.DoError('range', False)

    dest = dest & 31

    target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1] + dest * 2)

    NoMore()


# -----------------------------------------------------------------------------

def Restart():

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

    NoMore()


# -----------------------------------------------------------------------------

if __name__ == '__main__':
    print("")
    print("This is a python module, it's not a program.")
    print("This module is part of the sbasm package.")
    print("Run sbasm instead.")
    print("")
