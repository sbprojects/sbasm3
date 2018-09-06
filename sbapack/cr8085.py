# ------------------------------------------------------------------------------
#
#   cr8085.py
#
#   Package module file for the SB-Assembler sbasm
#   See www.sbprojects.net for details
#
#   Author: San Bergmans
#   Date  : 2015-12-21
#
#   8085 Cross Overlay
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
    #   string with cycle time(s) of this instruction on an 8080

    dec.Asm.Instructions = {
        'CALL': (Absolute, 0xCD, '18', '17'),
        'CC'  : (Absolute, 0xDC, '9/18', '11/17'),
        'CM'  : (Absolute, 0xFC, '9/18', '11/17'),
        'CNC' : (Absolute, 0xD4, '9/18', '11/17'),
        'CNZ' : (Absolute, 0xC4, '9/18', '11/17'),
        'CP'  : (Absolute, 0xF4, '9/18', '11/17'),
        'CPE' : (Absolute, 0xEC, '9/18', '11/17'),
        'CPO' : (Absolute, 0xE4, '9/18', '11/17'),
        'CZ'  : (Absolute, 0xCC, '9/18', '11/17'),
        'JC'  : (Absolute, 0xDA, '7/10', '10'),
        'JM'  : (Absolute, 0xFA, '7/10', '10'),
        'JMP' : (Absolute, 0xC3, '7', '10'),
        'JNC' : (Absolute, 0xD2, '7/10', '10'),
        'JNZ' : (Absolute, 0xC2, '7/10', '10'),
        'JP'  : (Absolute, 0xF2, '7/10', '10'),
        'JPE' : (Absolute, 0xEA, '7/10', '10'),
        'JPO' : (Absolute, 0xE2, '7/10', '10'),
        'JZ'  : (Absolute, 0xCA, '7/10', '10'),
        'LDA' : (Absolute, 0x3A, '13', '13'),
        'LHLD': (Absolute, 0x2A, '16', '16'),
        'SHLD': (Absolute, 0x22, '16', '16'),
        'STA' : (Absolute, 0x32, '13', '13'),

        'CMA' : (Inherent, 0x2F, '4', '4'),
        'CMC' : (Inherent, 0x3F, '4', '4'),
        'DAA' : (Inherent, 0x27, '4', '4'),
        'DI'  : (Inherent, 0xF3, '4', '4'),
        'EI'  : (Inherent, 0xFB, '4', '4'),
        'HLT' : (Inherent, 0x76, '5', '7'),
        'NOP' : (Inherent, 0x00, '4', '4'),
        'PCHL': (Inherent, 0xE9, '6', '5'),
        'RAL' : (Inherent, 0x17, '4', '4'),
        'RAR' : (Inherent, 0x1F, '4', '4'),
        'RC'  : (Inherent, 0xD8, '6/12', '5/11'),
        'RET' : (Inherent, 0xC9, '10', '10'),
        'RIM' : (Inherent, 0x20, '4', ''),
        'RLC' : (Inherent, 0x07, '4', '4'),
        'RM'  : (Inherent, 0xF8, '6/12', '5/11'),
        'RNC' : (Inherent, 0xD0, '6/12', '5/11'),
        'RNZ' : (Inherent, 0xC0, '6/12', '5/11'),
        'RP'  : (Inherent, 0xF0, '6/12', '5/11'),
        'RPE' : (Inherent, 0xE8, '6/12', '5/11'),
        'RPO' : (Inherent, 0xE0, '6/12', '5/11'),
        'RRC' : (Inherent, 0x0F, '4', '4'),
        'RZ'  : (Inherent, 0xC8, '6/12', '5/11'),
        'SIM' : (Inherent, 0x30, '4', ''),
        'SPHL': (Inherent, 0xF9, '6', '5'),
        'STC' : (Inherent, 0x37, '4', '4'),
        'XCHG': (Inherent, 0xEB, '4', '4'),
        'XTHL': (Inherent, 0xE3, '16', '18'),

        'MOV' : (MovInst, 0x40, '4:7', '5:7'),

        'ADC' : (Math, 0x88, '4:7', '4:7'),
        'ADD' : (Math, 0x80, '4:7', '4:7'),
        'ANA' : (Math, 0xA0, '4:7', '4:7'),
        'CMP' : (Math, 0xB8, '4:7', '4:7'),
        'DCR' : (Math, 0x05, '4:10', '5:10'),
        'INR' : (Math, 0x04, '4:10', '5:10'),
        'ORA' : (Math, 0xB0, '4:7', '4:7'),
        'SBB' : (Math, 0x98, '4:7', '4:7'),
        'SUB' : (Math, 0x90, '4:7', '4:7'),
        'XRA' : (Math, 0xA8, '4:7', '4:7'),

        'ACI' : (Immediate, 0xCE, '7', '7'),
        'ADI' : (Immediate, 0xC6, '7', '7'),
        'ANI' : (Immediate, 0xE6, '7', '7'),
        'CPI' : (Immediate, 0xFE, '7', '7'),
        'LXI' : (Immediate, 0x01, '10', '10'),
        'MVI' : (Immediate, 0x06, '7:10', '7:10'),
        'ORI' : (Immediate, 0xF6, '7', '7'),
        'SBI' : (Immediate, 0xDE, '7', '7'),
        'SUI' : (Immediate, 0xD6, '7', '7'),
        'XRI' : (Immediate, 0xEE, '7', '7'),

        'IN'  : (InOut, 0xDB, '10', '10'),
        'OUT' : (InOut, 0xD3, '10', '10'),

        'DAD' : (RegPair, 0x09, '10', '10'),
        'DCX' : (RegPair, 0x0B, '6', '5'),
        'INX' : (RegPair, 0x03, '6', '5'),
        'POP' : (RegPair, 0xC1, '10', '10'),
        'PUSH': (RegPair, 0xC5, '12', '11'),

        'LDAX': (LdaxStax, 0x0A, '7', '7'),
        'STAX': (LdaxStax, 0x02, '7', '7'),

        'RST' : (Restart, 0xC7, '12', '11')
        }

    dec.Asm.Memory = 0
    length = 0
    if dec.Cross.Name == 'cr8085':
        for i in dec.Asm.Instructions:
            if len(dec.Asm.Instructions[i][2]) > length:
                length = len(dec.Asm.Instructions[i][2])
    else:
        for i in dec.Asm.Instructions:
            if len(dec.Asm.Instructions[i][3]) > length:
                length = len(dec.Asm.Instructions[i][3])

    dec.Asm.Timing_Length = length

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

    if dec.Asm.Mnemonic in dec.Asm.Instructions:
        func = dec.Asm.Instructions[dec.Asm.Mnemonic][0]
        if dec.Cross.Name == 'cr8085':
            # Get timing for 8085 processor
            dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]
        else:
            # Get timing for 8080 processor
            dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][3]
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

    timing = dec.Asm.Timing.split(':')

    if MissingOperand():
        return

    registers = 'BCDEHLMA'

    reg1 = registers.find(assem.NowChar(True).upper())

    if reg1 < 0:
        errors.DoError('badoper', False)
        return

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

    if reg1 == 6 and reg2 == 6:
        # mov m,m is not allowed, that's the hlt instruction
        errors.DoError('badoper', False)
        return

    NoMore()

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1] + (reg1 << 3) + reg2

    if reg1 == 6 or reg2 == 6:
        dec.Asm.Timing = timing[1]
    else:
        dec.Asm.Timing = timing[0]

    target.CodeByte(opcode)


# -----------------------------------------------------------------------------

def Inherent():

    global Asm

    if dec.Cross.Name == 'cr8080':
        # Exclude 2 instructions in case we're assembling for an 8080
        if dec.Asm.Mnemonic in ('RIM', 'SIM'):
            errors.DoError('badopco', False)
            return

    target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1])


# -----------------------------------------------------------------------------

def Absolute():

    global Asm

    if MissingOperand():
        return

    value = assem.EvalExpr()

    if dec.Asm.Pass == 2 or (not value[1]):
        # Test range only if in pass 2, or pass 1 if not forward referenced
        if value[0] > dec.Asm.Max_Address or value[0] < 0:
            # It's a range error, simply ignore everything which doesn't fit
            errors.DoError('range', False)

    target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1])
    target.CodeWord(value[0])

    if value[2] == 2:
        errors.DoWarning('eeprom')

    NoMore()


# -----------------------------------------------------------------------------

def Math():

    global Asm

    timing = dec.Asm.Timing.split(':')

    if MissingOperand():
        return

    registers = 'BCDEHLMA'

    reg = registers.find(assem.NowChar(True).upper())

    if reg == 6:
        dec.Asm.Timing = timing[1]
    else:
        dec.Asm.Timing = timing[0]

    if dec.Asm.Mnemonic in ('DCR', 'INR'):
        reg = reg << 3

    if reg < 0:
        errors.DoError('badoper', False)
        return

    NoMore()

    target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1] + reg)


# -----------------------------------------------------------------------------

def Immediate():

    global Asm

    if MissingOperand():
        return

    if dec.Asm.Mnemonic == 'LXI':
        registers = 'BDHS'
        reg = registers.find(assem.NowChar(True).upper())

        if reg < 0:
            errors.DoError('badoper', False)
            return
        if reg == 3:
            # It was S, so next char must be a P to finish SP
            if assem.NowChar(True).upper() != 'P':
                errors.DoError('badoper', False)
                return
        opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1] + (reg << 4)
        if not assem.MoreParameters():
            errors.DoError('missoper', False)
    elif dec.Asm.Mnemonic == 'MVI':
        registers = 'BCDEHLMA'
        reg = registers.find(assem.NowChar(True).upper())
        timing = dec.Asm.Timing.split(':')
        if reg == 6:
            dec.Asm.Timing = timing[1]
        else:
            dec.Asm.Timing = timing[0]
        if reg < 0:
            errors.DoError('badoper', False)
            return
        opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1] + (reg << 3)
        if not assem.MoreParameters():
            errors.DoError('missoper', False)
    else:
        opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1]

    prefix = ''
    if assem.NowChar() in '#/=\\':
        prefix = assem.NowChar(True)

    value = assem.EvalExpr()

    if not dec.Flags.ErrorInLine:
        target.CodeByte(opcode)

        if dec.Asm.Mnemonic == 'LXI':
            if prefix in ' #':
                target.CodeWord(value[0])
            elif prefix == '/':
                target.CodeWord(value[0] >> 8)
            elif prefix == '=':
                target.CodeWord(value[0] >> 16)
            else:
                target.CodeWord(value[0] >> 24)
        else:
            if prefix in ' #':
                target.CodeByte(value[0])
            elif prefix == '/':
                target.CodeByte(value[0] >> 8)
            elif prefix == '=':
                target.CodeByte(value[0] >> 16)
            else:
                target.CodeByte(value[0] >> 24)

    NoMore()


# -----------------------------------------------------------------------------

def InOut():

    global Asm

    if MissingOperand():
        return

    value = assem.EvalExpr()

    if dec.Flags.ErrorInLine:
        # Save 2 dummy bytes if an error was given
        target.CodeWord(0)
    else:
        # No error was found, no danger of getting sync error
        if dec.Asm.Pass == 2 or (not value[1]):
            # Test range in pass 2 or when not forward referenced
            if value[0] > dec.MAX8 or value[0] < 0:
                # Report error, but ignore everthing which doesn't fit
                errors.DoError('range', False)
        target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1])
        target.CodeByte(value[0])

    NoMore()


# -----------------------------------------------------------------------------

def RegPair():

    global Asm

    if MissingOperand():
        return

    registers = 'BDHS'
    if dec.Asm.Mnemonic in ('POP', 'PUSH'):
        registers = 'BDHP'

    reg = registers.find(assem.NowChar(True).upper())

    if reg < 0:
        errors.DoError('badoper', False)
        return

    if reg == 3:
        wrong = False
        if dec.Asm.Mnemonic in ('POP', 'PUSH'):
            if assem.NowChar(True).upper() != 'S':
                wrong = True
            else:
                if assem.NowChar(True).upper() != 'W':
                    wrong = True
        else:
            if assem.NowChar(True).upper() != 'P':
                    wrong = True
        if wrong:
            errors.DoError('badoper', False)
            return

    target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1] + (reg << 4))

    NoMore()


# -----------------------------------------------------------------------------

def LdaxStax():

    global Asm

    if MissingOperand():
        return

    reg = assem.NowChar(True).upper()

    if reg == 'B':
        opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1]
    elif reg == 'D':
        opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1] + (1 << 4)
    else:
        errors.DoError('badoper', False)
        return

    NoMore()

    target.CodeByte(opcode)


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
