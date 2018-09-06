# ------------------------------------------------------------------------------
#
#   crst7.py
#
#   Package module file for the SB-Assembler sbasm
#   See www.sbprojects.net for details
#
#   Author: San Bergmans
#   Date  : 2015-12-21
#
#   ST7 Cross Overlay
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

    dec.Asm.Instructions = {

     # Inherent operand instructions
     'HALT'  : (Inherent, 0x8E, '2'),
     'IRET'  : (Inherent, 0x80, '9'),
     'NOP'   : (Inherent, 0x9D, '2'),
     'RCF'   : (Inherent, 0x98, '2'),
     'RET'   : (Inherent, 0x81, '6'),
     'RIM'   : (Inherent, 0x9A, '2'),
     'RSP'   : (Inherent, 0x9C, '2'),
     'SCF'   : (Inherent, 0x99, '2'),
     'SIM'   : (Inherent, 0x9B, '2'),
     'TRAP'  : (Inherent, 0x83, '10'),
     'WFI'   : (Inherent, 0x8F, '2'),

     # 0=#             1=short        2=long          3=(X)
     # 4=(short,X)     5=(long,X)     6=(Y)           7=(short,Y)
     # 8=(long,Y)      9=[short]      10=[long.w]     11=([short],X)
     # 12=([long.w],X) 13=([short],Y) 14=([long.w],Y) 15=A
     # 16=X            17=Y           18=S
     'ADC'   : (Accu, (0x00A9, 0x00B9, 0x00C9, 0x00F9, 0x00E9, 0x00D9,
                       0x90F9, 0x90E9, 0x90D9, 0x92B9, 0x92C9, 0x92E9,
                       0x92D9, 0x91E9, 0x91D9),
                ('2', '3', '4', '3', '4', '5', '4', '5', '6',
                 '5', '6', '6', '7', '6', '7')),
     'ADD'   : (Accu, (0x00AB, 0x00BB, 0x00CB, 0x00FB, 0x00EB, 0x00DB,
                       0x90FB, 0x90EB, 0x90DB, 0x92BB, 0x92CB, 0x92EB,
                       0x92DB, 0x91EB, 0x91DB),
                ('2', '3', '4', '3', '4', '5', '4', '5', '6',
                 '5', '6', '6', '7', '6', '7')),
     'AND'   : (Accu, (0x00A4, 0x00B4, 0x00C4, 0x00F4, 0x00E4, 0x00D4,
                       0x90F4, 0x90E4, 0x90D4, 0x92B4, 0x92C4, 0x92E4,
                       0x92D4, 0x91E4, 0x91D4),
                ('2', '3', '4', '3', '4', '5', '4', '5', '6',
                 '5', '6', '6', '7', '6', '7')),
     'BCP'   : (Accu, (0x00A5, 0x00B5, 0x00C5, 0x00F5, 0x00E5, 0x00D5,
                       0x90F5, 0x90E5, 0x90D5, 0x92B5, 0x92C5, 0x92E5,
                       0x92D5, 0x91E5, 0x91D5),
                ('2', '3', '4', '3', '4', '5', '4', '5', '6',
                 '5', '6', '6', '7', '6', '7')),
     'OR'    : (Accu, (0x00AA, 0x00BA, 0x00CA, 0x00FA, 0x00EA, 0x00DA,
                       0x90FA, 0x90EA, 0x90DA, 0x92BA, 0x92CA, 0x92EA,
                       0x92DA, 0x91EA, 0x91DA),
                ('2', '3', '4', '3', '4', '5', '4', '5', '6',
                 '5', '6', '6', '7', '6', '7')),
     'SBC'   : (Accu, (0x00A2, 0x00B2, 0x00C2, 0x00F2, 0x00E2, 0x00D2,
                       0x90F2, 0x90E2, 0x90D2, 0x92B2, 0x92C2, 0x92E2,
                       0x92D2, 0x91E2, 0x91D2),
                ('2', '3', '4', '3', '4', '5', '4', '5', '6',
                 '5', '6', '6', '7', '6', '7')),
     'SUB'   : (Accu, (0x00A0, 0x00B0, 0x00C0, 0x00F0, 0x00E0, 0x00D0,
                       0x90F0, 0x90E0, 0x90D0, 0x92B0, 0x92C0, 0x92E0,
                       0x92D0, 0x91E0, 0x91D0),
                ('2', '3', '4', '3', '4', '5', '4', '5', '6',
                 '5', '6', '6', '7', '6', '7')),
     'XOR'   : (Accu, (0x00A8, 0x00B8, 0x00C8, 0x00F8, 0x00E8, 0x00D8,
                       0x90F8, 0x90E8, 0x90D8, 0x92B8, 0x92C8, 0x92E8,
                       0x92D8, 0x91E8, 0x91D8),
                ('2', '3', '4', '3', '4', '5', '4', '5', '6',
                 '5', '6', '6', '7', '6', '7')),

     'CALL'  : (Single, (0x0000, 0x00BD, 0x00CD, 0x00FD, 0x00ED, 0x00DD,
                         0x90FD, 0x90ED, 0x90DD, 0x92BD, 0x92CD, 0x92ED,
                         0x92DD, 0x91ED, 0x91DD, 0x0000, 0x0000, 0x0000),
                ('0', '5', '6', '5', '6', '7', '6', '7', '8',
                 '7', '8', '8', '9', '8', '9', '0', '0', '0')),
     'CLR'   : (Single, (0x0000, 0x003F, 0x00FF, 0x007F, 0x006F, 0x00FF,
                         0x907F, 0x906F, 0x00FF, 0x923F, 0x00FF, 0x926F,
                         0x00FF, 0x916F, 0x00FF, 0x004F, 0x005F, 0x905F),
                ('0', '5', '0', '5', '6', '0', '6', '7', '0',
                 '7', '0', '8', '0', '8', '0', '3', '3', '4')),
     'CPL'   : (Single, (0x0000, 0x0033, 0x00FF, 0x0073, 0x0063, 0x00FF,
                         0x9073, 0x9063, 0x00FF, 0x9233, 0x00FF, 0x9263,
                         0x00FF, 0x9163, 0x00FF, 0x0043, 0x0053, 0x9053),
                ('0', '5', '0', '5', '6', '0', '6', '7', '0',
                 '7', '0', '8', '0', '8', '0', '3', '3', '4')),
     'DEC'   : (Single, (0x0000, 0x003A, 0x00FF, 0x007A, 0x006A, 0x00FF,
                         0x907A, 0x906A, 0x00FF, 0x923A, 0x00FF, 0x926A,
                         0x00FF, 0x916A, 0x00FF, 0x004A, 0x005A, 0x905A),
                ('0', '5', '0', '5', '6', '0', '6', '7', '0',
                 '7', '0', '8', '0', '8', '0', '3', '3', '4')),
     'INC'   : (Single, (0x0000, 0x003C, 0x00FF, 0x007C, 0x006C, 0x00FF,
                         0x907C, 0x906C, 0x00FF, 0x923C, 0x00FF, 0x926C,
                         0x00FF, 0x916C, 0x00FF, 0x004C, 0x005C, 0x905C),
                ('0', '5', '0', '5', '6', '0', '6', '7', '0',
                 '7', '0', '8', '0', '8', '0', '3', '3', '4')),
     'JP'    : (Single, (0x0000, 0x00BC, 0x00CC, 0x00FC, 0x00EC, 0x00DC,
                         0x90FC, 0x90EC, 0x90DC, 0x92BC, 0x92CC, 0x92EC,
                         0x92DC, 0x91EC, 0x91DC, 0x0000, 0x0000, 0x0000),
                ('0', '2', '3', '2', '3', '4', '3', '4', '5',
                 '4', '5', '5', '6', '5', '6', '0', '0', '0')),
     'NEG'   : (Single, (0x0000, 0x0030, 0x00FF, 0x0070, 0x0060, 0x00FF,
                         0x9070, 0x9060, 0x00FF, 0x9230, 0x00FF, 0x9260,
                         0x00FF, 0x9160, 0x00FF, 0x0040, 0x0050, 0x9050),
                ('0', '5', '0', '5', '6', '0', '6', '7', '0',
                 '7', '0', '8', '0', '8', '0', '3', '3', '4')),
     'RLC'   : (Single, (0x0000, 0x0039, 0x00FF, 0x0079, 0x0069, 0x00FF,
                         0x9079, 0x9069, 0x00FF, 0x9239, 0x00FF, 0x9269,
                         0x00FF, 0x9169, 0x00FF, 0x0049, 0x0059, 0x9059),
                ('0', '5', '0', '5', '6', '0', '6', '7', '0',
                 '7', '0', '8', '0', '8', '0', '3', '3', '4')),
     'RRC'   : (Single, (0x0000, 0x0036, 0x00FF, 0x0076, 0x0066, 0x00FF,
                         0x9076, 0x9066, 0x00FF, 0x9236, 0x00FF, 0x9266,
                         0x00FF, 0x9166, 0x00FF, 0x0046, 0x0056, 0x9056),
                ('0', '5', '0', '5', '6', '0', '6', '7', '0',
                 '7', '0', '8', '0', '8', '0', '3', '3', '4')),
     'SLA'   : (Single, (0x0000, 0x0038, 0x00FF, 0x0078, 0x0068, 0x00FF,
                         0x9078, 0x9068, 0x00FF, 0x9238, 0x00FF, 0x9268,
                         0x00FF, 0x9168, 0x00FF, 0x0048, 0x0058, 0x9058),
                ('0', '5', '0', '5', '6', '0', '6', '7', '0',
                 '7', '0', '8', '0', '8', '0', '3', '3', '4')),
     'SLL'   : (Single, (0x0000, 0x0038, 0x00FF, 0x0078, 0x0068, 0x00FF,
                         0x9078, 0x9068, 0x00FF, 0x9238, 0x00FF, 0x9268,
                         0x00FF, 0x9168, 0x00FF, 0x0048, 0x0058, 0x9058),
                ('0', '5', '0', '5', '6', '0', '6', '7', '0',
                 '7', '0', '8', '0', '8', '0', '3', '3', '4')),
     'SRA'   : (Single, (0x0000, 0x0037, 0x00FF, 0x0077, 0x0067, 0x00FF,
                         0x9077, 0x9067, 0x00FF, 0x9237, 0x00FF, 0x9267,
                         0x00FF, 0x9167, 0x00FF, 0x0047, 0x0057, 0x9057),
                ('0', '5', '0', '5', '6', '0', '6', '7', '0',
                 '7', '0', '8', '0', '8', '0', '3', '3', '4')),
     'SRL'   : (Single, (0x0000, 0x0034, 0x00FF, 0x0074, 0x0064, 0x00FF,
                         0x9074, 0x9064, 0x00FF, 0x9234, 0x00FF, 0x9264,
                         0x00FF, 0x9164, 0x00FF, 0x0044, 0x0054, 0x9054),
                ('0', '5', '0', '5', '6', '0', '6', '7', '0',
                 '7', '0', '8', '0', '8', '0', '3', '3', '4')),
     'SWAP'  : (Single, (0x0000, 0x003E, 0x00FF, 0x007E, 0x006E, 0x00FF,
                         0x907E, 0x906E, 0x00FF, 0x923E, 0x00FF, 0x926E,
                         0x00FF, 0x916E, 0x00FF, 0x004E, 0x005E, 0x905E),
                ('0', '5', '0', '5', '6', '0', '6', '7', '0',
                 '7', '0', '8', '0', '8', '0', '3', '3', '4')),
     'TNZ'   : (Single, (0x0000, 0x003D, 0x00FF, 0x007D, 0x006D, 0x00FF,
                         0x907D, 0x906D, 0x00FF, 0x923D, 0x00FF, 0x926D,
                         0x00FF, 0x916D, 0x00FF, 0x004D, 0x005D, 0x905D),
                ('0', '4', '0', '4', '5', '0', '5', '6', '0',
                 '6', '0', '7', '0', '7', '0', '3', '3', '4')),

     'LD'    : (LdInst, 0),

     'CP'    : (CpInst, 0),

     'BRES'  : (BitInst, (0x0011, 0x9211), ('5', '7')),
     'BSET'  : (BitInst, (0x0010, 0x9210), ('5', '7')),
     'BTJF'  : (BitInst, (0x0001, 0x9201), ('5', '7')),
     'BTJT'  : (BitInst, (0x0000, 0x9200), ('5', '7')),

     'CALLR' : (Branch, (0x00AD, 0x92AD), ('6', '8')),
     'JRA'   : (Branch, (0x0020, 0x9220), ('3', '5')),
     'JRC'   : (Branch, (0x0025, 0x9225), ('3', '5')),
     'JREQ'  : (Branch, (0x0027, 0x9227), ('3', '5')),
     'JRF'   : (Branch, (0x0021, 0x9221), ('3', '5')),
     'JRH'   : (Branch, (0x0029, 0x9229), ('3', '5')),
     'JRIH'  : (Branch, (0x002F, 0x922F), ('3', '5')),
     'JRIL'  : (Branch, (0x002E, 0x922E), ('3', '5')),
     'JRM'   : (Branch, (0x002D, 0x922D), ('3', '5')),
     'JRMI'  : (Branch, (0x002B, 0x922B), ('3', '5')),
     'JRNC'  : (Branch, (0x0024, 0x9224), ('3', '5')),
     'JRNE'  : (Branch, (0x0026, 0x9226), ('3', '5')),
     'JRNH'  : (Branch, (0x0028, 0x9228), ('3', '5')),
     'JRNM'  : (Branch, (0x002C, 0x922C), ('3', '5')),
     'JRPL'  : (Branch, (0x002A, 0x922A), ('3', '5')),
     'JRT'   : (Branch, (0x0020, 0x9220), ('3', '5')),
     'JRUGE' : (Branch, (0x0024, 0x9224), ('3', '5')),
     'JRUGT' : (Branch, (0x0022, 0x9222), ('3', '5')),
     'JRULE' : (Branch, (0x0023, 0x9223), ('3', '5')),
     'JRULT' : (Branch, (0x0025, 0x9225), ('3', '5')),

     'POP'   : (Stack, (0x0084, 0x0085, 0x9085, 0x0086), ('4', '4', '5', '4')),
     'PUSH'  : (Stack, (0x0088, 0x0089, 0x9089, 0x008A), ('3', '3', '4', '3')),

     'MUL'   : (Multiply, (0x0042, 0x9042), ('11', '12'))
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

    return False     # No extra directives


# ------------------------------------------------------------------------------

def CrossCleanUp():

    return


# ------------------------------------------------------------------------------

def CrossMnemonic():

    global Asm

    if dec.Asm.Mnemonic in dec.Asm.Instructions:
        func = dec.Asm.Instructions[dec.Asm.Mnemonic][0]
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

def Inherent():

    global Asm

    target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1])
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]


# -----------------------------------------------------------------------------

def Accu():

    global Asm

    if MissingOperand():
        return

    if GetOperand()[0] != 15:
        errors.DoError('badoper', False)
        return

    if not assem.MoreParameters():
        errors.DoError('missoper', False)
        return

    operand = GetOperand()
    if operand[0] > 14:
        errors.DoError('badoper', False)
        return

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][operand[0]]
    timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][operand[0]]
    prebyte = opcode // 256
    opcbyte = opcode % 256

    if prebyte != 0:
        target.CodeByte(prebyte)
    target.CodeByte(opcbyte)

    if operand[0] in (0, 1, 4, 7, 9, 10, 11, 12, 13, 14):
        target.CodeByte(operand[1])
    elif operand[0] in (2, 5, 8):
        target.CodeWord(operand[1])

    dec.Asm.Timing = timing

    NoMore()


# -----------------------------------------------------------------------------

def Single():

    global Asm

    if MissingOperand():
        return

    operand = GetOperand()
    if operand[0] == 0 or operand[0] > 17:
        errors.DoError('badoper', False)
        return

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][operand[0]]
    timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][operand[0]]
    prebyte = opcode // 256
    opcbyte = opcode % 256
    dec.Asm.Timing = timing

    if opcbyte == 0:
        # Illegal operand
        errors.DoError('badoper', False)
        return

    if opcbyte == 255:
        # Range error because LONG is not supported
        errors.DoError('range', False)
        return

    SaveAll(prebyte, opcbyte, operand)


# -----------------------------------------------------------------------------

def CpInst():

    global Asm

    if MissingOperand():
        return

    operand1 = GetOperand()

    if not assem.MoreParameters():
        errors.DoError('missoper', False)
        return

    operand2 = GetOperand()

    if operand1[0] == 15:
        # CP A,something

        opcode = (0x00A1, 0x00B1, 0x00C1, 0x00F1, 0x00E1, 0x00D1, 0x90F1,
                  0x90E1, 0x90D1, 0x92B1, 0x92C1, 0x92E1, 0x92D1, 0x91E1,
                  0x91D1)
        timing = ('2', '3', '4', '3', '4', '5', '4', '5', '6', '5', '6',
                  '6', '7', '6', '7')

    elif operand1[0] == 16:
        # CP X,something

        opcode = (0x00A3, 0x00B3, 0x00C3, 0x00F3, 0x00E3, 0x00D3, 0x0000,
                  0x0000, 0x0000, 0x92B3, 0x92C3, 0x92E3, 0x92D3, 0x0000,
                  0x0000)
        timing = ('2', '3', '4', '3', '4', '5', '0', '0', '0', '5', '6',
                  '6', '7', '0', '0')

    elif operand1[0] == 17:
        # CP Y,something

        opcode = (0x90A3, 0x90B3, 0x90C3, 0x0000, 0x0000, 0x0000, 0x90F3,
                  0x90E3, 0x90D3, 0x91B3, 0x91C3, 0x0000, 0x0000, 0x91E3,
                  0x91D3)
        timing = ('3', '4', '5', '0', '0', '0', '4', '5', '6', '5', '6',
                  '0', '0', '6', '7')

    else:
        errors.DoError('badoper', False)
        return

    if operand2[0] > 14:
        errors.DoError('badoper', False)
        return

    prebyte = opcode[operand2[0]] // 256
    opcbyte = opcode[operand2[0]] % 256
    dec.Asm.Timing = timing[operand2[0]]

    SaveAll(prebyte, opcbyte, operand2)


# -----------------------------------------------------------------------------

def LdInst():

    global Asm

    if MissingOperand():
        return

    operand1 = GetOperand()

    if not assem.MoreParameters():
        errors.DoError('missoper', False)
        return

    operand2 = GetOperand()

    if operand1[0] == 15:
        # LD A,something
        opcode = (0x00A6, 0x00B6, 0x00C6, 0x00F6, 0x00E6, 0x00D6, 0x90F6,
                  0x90E6, 0x90D6, 0x92B6, 0x92C6, 0x92E6, 0x92D6, 0x91E6,
                  0x91D6, 0x0000, 0x009F, 0x909F, 0x009E)
        timing = ('2', '3', '4', '3', '4', '5', '4', '5', '6', '5', '6',
                  '6', '7', '6', '7', '0', '2', '3', '2')

        operand = operand2

    elif operand2[0] == 15:
        # LD something,A

        opcode = (0x0000, 0x00B7, 0x00C7, 0x00F7, 0x00E7, 0x00D7, 0x90F7,
                  0x90E7, 0x90D7, 0x92B7, 0x92C7, 0x92E7, 0x92D7, 0x91E7,
                  0x91D7, 0x0000, 0x0097, 0x9097, 0x0095)
        timing = ('0', '4', '5', '4', '5', '6', '5', '6', '7', '6', '7',
                  '7', '8', '7', '8', '0', '2', '3', '2')

        operand = operand1

    elif operand1[0] == 16:
        # LD X,something

        opcode = (0x00AE, 0x00BE, 0x00CE, 0x00FE, 0x00EE, 0x00DE, 0x0000,
                  0x0000, 0x0000, 0x92BE, 0x92CE, 0x92EE, 0x92DE, 0x0000,
                  0x0000, 0x0097, 0x0000, 0x0093, 0x0096)
        timing = ('2', '3', '4', '3', '4', '5', '0', '0', '0', '5', '6',
                  '6', '7', '0', '0', '2', '0', '2', '2')

        operand = operand2

    elif operand2[0] == 16:
        # LD something,X

        opcode = (0x0000, 0x00BF, 0x00CF, 0x00FF, 0x00EF, 0x00DF, 0x0000,
                  0x0000, 0x0000, 0x92BF, 0x92CF, 0x92EF, 0x92DF, 0x0000,
                  0x0000, 0x009F, 0x0000, 0x9093, 0x0094)
        timing = ('0', '4', '5', '4 ', '5', '6', '0', '0', '0', '6', '7',
                  '7', '8', '0', '0', '2', '0', '3', '2')

        operand = operand1

    elif operand1[0] == 17:
        # LD Y,something

        opcode = (0x90AE, 0x90BE, 0x90CE, 0x0000, 0x0000, 0x0000, 0x90FE,
                  0x90EE, 0x90DE, 0x91BE, 0x91CE, 0x0000, 0x0000, 0x91EE,
                  0x91DE, 0x9097, 0x0093, 0x0000, 0x9096)
        timing = ('3', '4', '5', '0', '0', '0', '4', '5', '6', '5', '6',
                  '0', '0', '6', '7', '3', '2', '0', '3')

        operand = operand2

    elif operand2[0] == 17:
        # LD something,Y

        opcode = (0x0000, 0x90BF, 0x90CF, 0x0000, 0x0000, 0x0000, 0x90FF,
                  0x90EF, 0x90DF, 0x91BF, 0x91CF, 0x0000, 0x0000, 0x91EF,
                  0x91DF, 0x909F, 0x0093, 0x0000, 0x9094)
        timing = ('0', '5', '6', '0', '0', '0', '5', '6', '7', '6', '7',
                  '0', '0', '7', '8', '3', '2', '0', '3')

        operand = operand1

    # Don't bother about LD S,something and LD something,S because those
    # have been done by the others

    prebyte = opcode[operand[0]] // 256
    opcbyte = opcode[operand[0]] % 256
    dec.Asm.Timing = timing[operand[0]]

    SaveAll(prebyte, opcbyte, operand)


# -----------------------------------------------------------------------------

def BitInst():

    global Asm

    if MissingOperand():
        return

    operand1 = GetOperand()

    if operand1[0] != 1 and operand1[0] != 9:
        errors.DoError('badoper', False)
        return

    if operand1[0] == 1:
        # Bit SHORT, something
        opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][0]
        timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][0]

    else:
        # Bit [IND], something
        opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][1]
        timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][1]

    if not assem.MoreParameters():
        errors.DoError('missoper', False)
        return

    operand2 = GetOperand()

    if operand2[0] != 0:
        errors.DoError('badoper', False)
        return

    if dec.Asm.Pass == 2 and operand2[1] >> 3 != 0:
        errors.DoError('range', False)

    prebyte = opcode // 256
    opcbyte = opcode % 256
    dec.Asm.Timing = timing

    if opcbyte // 16 == 1:
        # It's not a BIT test/branch instruction
        if prebyte != 0:
            target.CodeByte(prebyte)
        target.CodeByte(opcbyte + ((operand2[1] & 7) << 1))
        target.CodeByte(operand1[1])

    else:
        # It's a BIT test/branch instruction, get operand 3
        if not assem.MoreParameters():
            errors.DoError('missoper', False)
            return

        operand3 = GetOperand()

        if operand3[0] != 1 and operand3[0] != 2:
            errors.DoError('badoper', False)
            return

        if prebyte == 0:
            offset = operand3[1] - dec.Asm.BOL_Address - 3
        else:
            offset = operand3[1] - dec.Asm.BOL_Address - 4

        if dec.Asm.Pass == 2 and (offset < -128 or offset > 127):
            errors.DoError('range', False)

        if prebyte != 0:
            target.CodeByte(prebyte)
        target.CodeByte(opcbyte + ((operand2[1] & 7) << 1))
        target.CodeByte(operand1[1])
        target.CodeByte(offset)

    NoMore()


# -----------------------------------------------------------------------------

def Branch():

    global Asm

    if MissingOperand():
        return

    operand = GetOperand()

    if operand[0] == 1 or operand[0] == 2:
        # Branch relative
        offset = operand[1] - dec.Asm.BOL_Address - 2

        if dec.Asm.Pass == 2 and (offset < -128 or offset > 127):
            errors.DoError('range', False)

        target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1][0])
        target.CodeByte(offset)
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][0]

    elif operand[0] == 9:
        # Branch [indirect]

        target.CodeWord(dec.Asm.Instructions[dec.Asm.Mnemonic][1][1])
        target.CodeByte(operand[1])
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][1]

    else:
        errors.DoError('badoper', False)
        return

    NoMore()


# -----------------------------------------------------------------------------

def Stack():

    global Asm

    if MissingOperand():
        return

    operand = assem.GetWord().upper()

    if operand == 'A':
        index = 0
    elif operand == 'X':
        index = 1
    elif operand == 'Y':
        index = 2
    elif operand == 'CC':
        index = 3
    else:
        errors.DoError('badoper', False)
        return

    opcode = (dec.Asm.Instructions[dec.Asm.Mnemonic][1][index])
    if opcode > 255:
        target.CodeWord(opcode)
    else:
        target.CodeByte(opcode)
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][index]

    NoMore()


# -----------------------------------------------------------------------------

def Multiply():

    global Asm

    if MissingOperand():
        return

    operand1 = assem.GetWord().upper()

    if operand1 not in 'XY':
        errors.DoError('badoper', False)
        return

    if not assem.MoreParameters():
        errors.DoError('missoper', False)
        return

    if assem.NowChar(True).upper() != 'A':
        errors.DoError('badoper', False)
        return

    if operand1 == 'X':
        target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1][0])
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][0]
    else:
        target.CodeWord(dec.Asm.Instructions[dec.Asm.Mnemonic][1][1])
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][1]

    NoMore()


# -----------------------------------------------------------------------------

def SaveAll(prebyte, opcode, operand):

    if opcode == 0:
        errors.DoError('badoper', False)
        return

    if prebyte != 0:
        target.CodeByte(prebyte)
    target.CodeByte(opcode)

    if operand[0] in (0, 1, 4, 7, 9, 10, 11, 12, 13, 14):
        target.CodeByte(operand[1])
    elif operand[0] in (2, 5, 8):
        target.CodeWord(operand[1])

    NoMore()


# -----------------------------------------------------------------------------

def GetOperand():

    """
    Get an operand. This can get complicated.
    Operand can be:
    Index =  0: #
    Index =  1: SHORT
    Index =  2: LONG
    Index =  3: (X)
    Index =  4: (SHORT,X)
    Index =  5: (LONG,X)
    Index =  6: (Y)
    Index =  7: (SHORT,Y)
    Index =  8: (LONG,Y)
    Index =  9: [SHORT]
    Index = 10: [LONG.W]
    Index = 10: {LONG}
    Index = 11: ([SHORT],X)
    Index = 12: ([LONG.W],X)
    Index = 12: ({LONG},X)
    Index = 13: ([SHORT],Y)
    Index = 14: ([LONG.W],Y)
    Index = 14: ({LONG},Y)
    Index = 15: A
    Index = 16: X
    Index = 17: Y
    Index = 18: S
    """

    global Asm

    pntr = dec.Asm.Parse_Pointer

    operand = assem.GetWord().upper()
    if operand == 'A':
        return (15, 0)
    if operand == 'X':
        return (16, 0)
    if operand == 'Y':
        return (17, 0)
    if operand == 'S':
        return (18, 0)
    if operand == '(X)':
        return (3, 0)
    if operand == '(Y)':
        return (6, 0)

    dec.Asm.Parse_Pointer = pntr

# ----------

    if operand[0] in '#/=\\':
        # Immediate value
        mode = assem.NowChar(True)
        value = assem.EvalExpr()
        if mode == '#':
            return (0, value[0])
        if mode == '/':
            return (0, value[0] >> 8)
        if mode == '=':
            return (0, value[0] >> 16)
        return (0, value[0] >> 24)

# ----------

    if operand[0:2] == '([':
        # Some form of Indexed Indirect mode

        assem.IncParsePointer()
        assem.IncParsePointer()

        pntr = dec.Asm.Parse_Pointer
        line = dec.Asm.Parse_Line
        operand = assem.GetWord('', '', ']').upper()
        endpnt = dec.Asm.Parse_Pointer
        dec.Asm.Parse_Pointer = pntr
        short = True
        if operand[-2:] == '.W':
            short = False
            dec.Asm.Parse_Line = line[:endpnt-2] + ' '

        value = assem.EvalExpr()
        dec.Asm.Parse_Line = line
        dec.Asm.Parse_Pointer = endpnt

        if assem.NowChar(True) != ']':
            errors.DoError('badoper', False)

        if not assem.MoreParameters():
            errors.DoError('missoper', False)

        nowchar = assem.NowChar(True).upper()
        if nowchar == 'X':
            xymode = 11
        elif nowchar == 'Y':
            xymode = 13
        else:
            xymode = 11
            errors.DoError('badoper', False)

        if assem.NowChar(True) != ')':
            errors.DoError('badoper', False)

        if dec.Asm.Pass == 2 and (value[0] >> 8 != 0):
            errors.DoError('range', False)

        if short:
            return (xymode+0, value[0])
        else:
            return (xymode+1, value[0])

# ----------

    if operand[0:2] == '({':
        # Indexed Indirect long mode

        assem.IncParsePointer()
        assem.IncParsePointer()
        value = assem.EvalExpr()
        if assem.NowChar(True) != '}':
            errors.DoError('badoper', False)

        if not assem.MoreParameters():
            errors.DoError('missoper', False)

        nowchar = assem.NowChar(True).upper()
        if nowchar == 'X':
            xymode = 12
        elif nowchar == 'Y':
            xymode = 14
        else:
            xymode = 12
            errors.DoError('badoper', False)

        if assem.NowChar(True) != ')':
            errors.DoError('badoper', False)

        if dec.Asm.Pass == 2 and (value[0] >> 8 != 0):
            errors.DoError('range', False)

        return (xymode, value[0])

# ----------

    if operand[0] == '(':
        # Some form of indexed mode.
        # It can be short or long, followed by ,X) or ,Y)

        assem.IncParsePointer()

        prefix = ''
        if operand[0] in '<>':
            # It's forced long or short
            prefix = assem.NowChar(True)

        value = assem.EvalExpr()

        if prefix == '<':
            short = True
            if dec.Asm.Pass == 2 and (value[0] >> 8) != 0:
                errors.DoError('range', False)
        elif prefix == '>' or value[1]:
            short = False
        else:
            short = False
            if (value[0] >> 8) == 0:
                short = True

        if not assem.MoreParameters():
            errors.DoError('missoper', False)

        nowchar = assem.NowChar(True).upper()
        if nowchar == 'X':
            xymode = 4
        elif nowchar == 'Y':
            xymode = 7
        else:
            xymode = 4
            errors.DoError('badoper', False)

        if assem.NowChar(True) != ')':
            errors.DoError('badoper', False)

        if short:
            return (xymode+0, value[0])
        else:
            return (xymode+1, value[0])

# ----------

    if operand[0] == '[':
        # Some form of indirect mode, could be [short] or [long.w]

        assem.IncParsePointer()
        pntr = dec.Asm.Parse_Pointer
        line = dec.Asm.Parse_Line
        operand = assem.GetWord('', '', ']').upper()
        endpnt = dec.Asm.Parse_Pointer
        dec.Asm.Parse_Pointer = pntr
        short = True
        if operand[-2:] == '.W':
            short = False
            dec.Asm.Parse_Line = line[:endpnt-2] + ' '

        value = assem.EvalExpr()
        dec.Asm.Parse_Line = line
        dec.Asm.Parse_Pointer = endpnt

        if assem.NowChar(True) != ']':
            errors.DoError('badoper', False)

        if dec.Asm.Pass == 2 and (value[0] >> 8 != 0):
            errors.DoError('range', False)

        if short:
            return (9, value[0])
        else:
            return (10, value[0])

# ----------

    if operand[0] == '{':
        # Indirect LONG mode

        assem.IncParsePointer()
        value = assem.EvalExpr()
        if assem.NowChar(True) != '}':
            errors.DoError('badoper', False)

        if dec.Asm.Pass == 2 and (value[0] >> 8 != 0):
            errors.DoError('range', False)

        return (10, value[0])

# ----------

    # Here only short or long mode option left.
    # Must decide whether to use short or long, depending on address size

    prefix = ''
    if operand[0] in '<>':
        # It's forced long or short
        prefix = assem.NowChar(True)

    value = assem.EvalExpr()

    if prefix == '<':
        short = True
        if dec.Asm.Pass == 2 and (value[0] >> 8) != 0:
            errors.DoError('range', False)
    elif prefix == '>' or value[1]:
        short = False
    else:
        short = False
        if (value[0] >> 8) == 0:
            short = True

    if short:
        return (1, value[0])
    else:
        return (2, value[0])


# -----------------------------------------------------------------------------


if __name__ == '__main__':
    print("")
    print("This is a python module, it's not a program.")
    print("This module is part of the sbasm package.")
    print("Run sbasm instead.")
    print("")
