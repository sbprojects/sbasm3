# ------------------------------------------------------------------------------
#
#   crdp2200.py
#
#   Package module file for the SB-Assembler sbasm
#   See www.sbprojects.net for details
#
#   Author: San Bergmans
#   Date  : 2015-12-21
#
#   dp2200 Cross Overlay
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
     'LAA'   : (Inherent, 0xC0, '0'),
     'LAB'   : (Inherent, 0xC1, '0'),
     'LAC'   : (Inherent, 0xC2, '0'),
     'LAD'   : (Inherent, 0xC3, '0'),
     'LAE'   : (Inherent, 0xC4, '0'),
     'LAH'   : (Inherent, 0xC5, '0'),
     'LAL'   : (Inherent, 0xC6, '0'),
     'LAM'   : (Inherent, 0xC7, '0'),
     'LBA'   : (Inherent, 0xC8, '0'),
     'LBB'   : (Inherent, 0xC9, '0'),    # Not defined, probably NOP
     'LBC'   : (Inherent, 0xCA, '0'),
     'LBD'   : (Inherent, 0xCB, '0'),
     'LBE'   : (Inherent, 0xCC, '0'),
     'LBH'   : (Inherent, 0xCD, '0'),
     'LBL'   : (Inherent, 0xCE, '0'),
     'LBM'   : (Inherent, 0xCF, '0'),
     'LCA'   : (Inherent, 0xD0, '0'),
     'LCB'   : (Inherent, 0xD1, '0'),
     'LCC'   : (Inherent, 0xD2, '0'),    # Not defined, probably NOP
     'LCD'   : (Inherent, 0xD3, '0'),
     'LCE'   : (Inherent, 0xD4, '0'),
     'LCH'   : (Inherent, 0xD5, '0'),
     'LCL'   : (Inherent, 0xD6, '0'),
     'LCM'   : (Inherent, 0xD7, '0'),
     'LDA'   : (Inherent, 0xD8, '0'),
     'LDB'   : (Inherent, 0xD9, '0'),
     'LDC'   : (Inherent, 0xDA, '0'),
     'LDD'   : (Inherent, 0xDB, '0'),    # Not defined, probably NOP
     'LDE'   : (Inherent, 0xDC, '0'),
     'LDH'   : (Inherent, 0xDD, '0'),
     'LDL'   : (Inherent, 0xDE, '0'),
     'LDM'   : (Inherent, 0xDF, '0'),
     'LEA'   : (Inherent, 0xE0, '0'),
     'LEB'   : (Inherent, 0xE1, '0'),
     'LEC'   : (Inherent, 0xE2, '0'),
     'LED'   : (Inherent, 0xE3, '0'),
     'LEE'   : (Inherent, 0xE4, '0'),    # Not defined, probably NOP
     'LEH'   : (Inherent, 0xE5, '0'),
     'LEL'   : (Inherent, 0xE6, '0'),
     'LEM'   : (Inherent, 0xE7, '0'),
     'LHA'   : (Inherent, 0xE8, '0'),
     'LHB'   : (Inherent, 0xE9, '0'),
     'LHC'   : (Inherent, 0xEA, '0'),
     'LHD'   : (Inherent, 0xEB, '0'),
     'LHE'   : (Inherent, 0xEC, '0'),
     'LHH'   : (Inherent, 0xED, '0'),    # Not defined, probably NOP
     'LHL'   : (Inherent, 0xEE, '0'),
     'LHM'   : (Inherent, 0xEF, '0'),
     'LLA'   : (Inherent, 0xF0, '0'),
     'LLB'   : (Inherent, 0xF1, '0'),
     'LLC'   : (Inherent, 0xF2, '0'),
     'LLD'   : (Inherent, 0xF3, '0'),
     'LLE'   : (Inherent, 0xF4, '0'),
     'LLH'   : (Inherent, 0xF5, '0'),
     'LLL'   : (Inherent, 0xF6, '0'),    # Not defined, probably NOP
     'LLM'   : (Inherent, 0xF7, '0'),
     'LMA'   : (Inherent, 0xF8, '0'),
     'LMB'   : (Inherent, 0xF9, '0'),
     'LMC'   : (Inherent, 0xFA, '0'),
     'LMD'   : (Inherent, 0xFB, '0'),
     'LME'   : (Inherent, 0xFC, '0'),
     'LMH'   : (Inherent, 0xFD, '0'),
     'LML'   : (Inherent, 0xFE, '0'),
     'ACA'   : (Inherent, 0x88, '0'),
     'ACB'   : (Inherent, 0x89, '0'),
     'ACC'   : (Inherent, 0x8A, '0'),
     'ACD'   : (Inherent, 0x8B, '0'),
     'ACE'   : (Inherent, 0x8C, '0'),
     'ACH'   : (Inherent, 0x8D, '0'),
     'ACL'   : (Inherent, 0x8E, '0'),
     'ACM'   : (Inherent, 0x8F, '0'),
     'ADA'   : (Inherent, 0x80, '0'),
     'ADB'   : (Inherent, 0x81, '0'),
     'ADC'   : (Inherent, 0x82, '0'),
     'ADD'   : (Inherent, 0x83, '0'),
     'ADE'   : (Inherent, 0x84, '0'),
     'ADH'   : (Inherent, 0x85, '0'),
     'ADL'   : (Inherent, 0x86, '0'),
     'ADM'   : (Inherent, 0x87, '0'),
     'SBA'   : (Inherent, 0x98, '0'),
     'SBB'   : (Inherent, 0x99, '0'),
     'SBC'   : (Inherent, 0x9A, '0'),
     'SBD'   : (Inherent, 0x9B, '0'),
     'SBE'   : (Inherent, 0x9C, '0'),
     'SBH'   : (Inherent, 0x9D, '0'),
     'SBL'   : (Inherent, 0x9E, '0'),
     'SBM'   : (Inherent, 0x9F, '0'),
     'SUA'   : (Inherent, 0x90, '0'),
     'SUB'   : (Inherent, 0x91, '0'),
     'SUC'   : (Inherent, 0x92, '0'),
     'SUD'   : (Inherent, 0x93, '0'),
     'SUE'   : (Inherent, 0x94, '0'),
     'SUH'   : (Inherent, 0x95, '0'),
     'SUL'   : (Inherent, 0x96, '0'),
     'SUM'   : (Inherent, 0x97, '0'),
     'NDA'   : (Inherent, 0xA0, '0'),
     'NDB'   : (Inherent, 0xA1, '0'),
     'NDC'   : (Inherent, 0xA2, '0'),
     'NDD'   : (Inherent, 0xA3, '0'),
     'NDE'   : (Inherent, 0xA4, '0'),
     'NDH'   : (Inherent, 0xA5, '0'),
     'NDL'   : (Inherent, 0xA6, '0'),
     'NDM'   : (Inherent, 0xA7, '0'),
     'XRA'   : (Inherent, 0xA8, '0'),
     'XRB'   : (Inherent, 0xA9, '0'),
     'XRC'   : (Inherent, 0xAA, '0'),
     'XRD'   : (Inherent, 0xAB, '0'),
     'XRE'   : (Inherent, 0xAC, '0'),
     'XRH'   : (Inherent, 0xAD, '0'),
     'XRL'   : (Inherent, 0xAE, '0'),
     'XRM'   : (Inherent, 0xAF, '0'),
     'ORA'   : (Inherent, 0xB0, '0'),
     'ORB'   : (Inherent, 0xB1, '0'),
     'ORC'   : (Inherent, 0xB2, '0'),
     'ORD'   : (Inherent, 0xB3, '0'),
     'ORE'   : (Inherent, 0xB4, '0'),
     'ORH'   : (Inherent, 0xB5, '0'),
     'ORL'   : (Inherent, 0xB6, '0'),
     'ORM'   : (Inherent, 0xB7, '0'),
     'CPA'   : (Inherent, 0xB8, '0'),
     'CPB'   : (Inherent, 0xB9, '0'),
     'CPC'   : (Inherent, 0xBA, '0'),
     'CPD'   : (Inherent, 0xBB, '0'),
     'CPE'   : (Inherent, 0xBC, '0'),
     'CPH'   : (Inherent, 0xBD, '0'),
     'CPL'   : (Inherent, 0xBE, '0'),
     'CPM'   : (Inherent, 0xBF, '0'),
     'NOP'   : (Inherent, 0xC0, '0'),
     'SLC'   : (Inherent, 0x02, '0'),
     'SRC'   : (Inherent, 0x0A, '0'),
     'HALT'  : (Inherent, 0x00, '0'),
     'RETURN': (Inherent, 0x07, '0'),
     'RFC'   : (Inherent, 0x03, '0'),
     'RFZ'   : (Inherent, 0x0B, '0'),
     'RFS'   : (Inherent, 0x13, '0'),
     'RFP'   : (Inherent, 0x1B, '0'),
     'RTC'   : (Inherent, 0x23, '0'),
     'RTZ'   : (Inherent, 0x2B, '0'),
     'RTS'   : (Inherent, 0x33, '0'),
     'RTP'   : (Inherent, 0x3B, '0'),
     'INPUT' : (Inherent, 0x41, '0'),
     'ALPHA' : (Inherent, 0x18, '0'),
     'BETA'  : (Inherent, 0x10, '0'),
     'PUSH'  : (Inherent, 0x38, '0'),
     'POP'   : (Inherent, 0x30, '0'),
     'DI'    : (Inherent, 0x20, '0'),
     'EI'    : (Inherent, 0x28, '0'),

     # Immediate address instructions
     'LA': (Immediate, 0x06, '0'),
     'LB': (Immediate, 0x0E, '0'),
     'LC': (Immediate, 0x16, '0'),
     'LD': (Immediate, 0x1E, '0'),
     'LE': (Immediate, 0x26, '0'),
     'LH': (Immediate, 0x2E, '0'),
     'LL': (Immediate, 0x36, '0'),
     'AC': (Immediate, 0x0C, '0'),
     'AD': (Immediate, 0x04, '0'),
     'SB': (Immediate, 0x1C, '0'),
     'SU': (Immediate, 0x14, '0'),
     'ND': (Immediate, 0x24, '0'),
     'XR': (Immediate, 0x2C, '0'),
     'OR': (Immediate, 0x34, '0'),
     'CP': (Immediate, 0x3C, '0'),

     # Jump instructions
     'JMP' : (Jumps, 0x44, '0'),
     'JFC' : (Jumps, 0x40, '0'),
     'JFZ' : (Jumps, 0x48, '0'),
     'JFS' : (Jumps, 0x50, '0'),
     'JFP' : (Jumps, 0x58, '0'),
     'JTC' : (Jumps, 0x60, '0'),
     'JTZ' : (Jumps, 0x68, '0'),
     'JTS' : (Jumps, 0x70, '0'),
     'JTP' : (Jumps, 0x78, '0'),
     'CALL': (Jumps, 0x46, '0'),
     'CFC' : (Jumps, 0x42, '0'),
     'CFZ' : (Jumps, 0x4A, '0'),
     'CFS' : (Jumps, 0x52, '0'),
     'CFP' : (Jumps, 0x5A, '0'),
     'CTC' : (Jumps, 0x62, '0'),
     'CTZ' : (Jumps, 0x6A, '0'),
     'CTS' : (Jumps, 0x72, '0'),
     'CTP' : (Jumps, 0x7A, '0'),

     # Output instruction
     'EX': (Output, 0x00, '0')
    }

    dec.Asm.Timing_Length = 0       # No timing information available.

    dec.Asm.Memory = 0              # Select code memory as default
    if dec.Asm.Pass == 1:
        sys.stdout.write('Loaded ' + dec.Cross.Name[2:] +
                         ' overlay version ' + crossversion + dec.EOL)

    dec.Asm.Max_Address = (1 << 14)-1
    dec.Asm.PP_TA_Factor = 1        # Set the actual factor between PP and TA
    dec.Flags.BigEndian = False     # Set actual value

    return


# ------------------------------------------------------------------------------

def CrossDirective():

    # Nothing to do here

    return False     # return True if we handled the directive


# ------------------------------------------------------------------------------

def CrossCleanUp():

    # Nothing to do here either

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

    """
    A useful function which raises an error if no operand is given.
    """

    if dec.Asm.Parse_Pointer == 0:
        errors.DoError('missoper', False)
        return True
    else:
        return False


# -----------------------------------------------------------------------------


def NoMore():

    """
    A useful function which tests if no more parameters are given when we
    don't expect any more at the end of the operand parsing.
    """

    if assem.MoreParameters():
        errors.DoWarning('extrign', False)


# -----------------------------------------------------------------------------

def Inherent():

    global Asm

    target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1])
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]


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
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    NoMore()


# -----------------------------------------------------------------------------

def Jumps():

    global Asm

    if MissingOperand():
        return

    dest = assem.EvalExpr()

    target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1])
    target.CodeWord(dest[0])
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    if dec.Asm.Pass == 2 and (dest[0] >> 14) != 0:
        errors.DoError('range', False)

    NoMore()


# -----------------------------------------------------------------------------

def Output():

    global Asm

    if MissingOperand():
        return

    operand = assem.GetWord().upper()

    outputlist = {
     'ADR'   : 0x51,
     'STATUS': 0x53,
     'DATA'  : 0x55,
     'WRITE' : 0x57,
     'COM1'  : 0x59,
     'COM2'  : 0x5B,
     'COM3'  : 0x5D,
     'COM4'  : 0x5F,

     'BEEP' : 0x69,
     'CLICK': 0x6B,
     'DECK1': 0x6D,
     'DECK2': 0x6F,
     'RBK'  : 0x71,
     'WBK'  : 0x73,

     'BSP'   : 0x77,
     'SF'    : 0x79,
     'SB'    : 0x7B,
     'REWIND': 0x7D,
     'TSTOP' : 0x7F
    }

    if operand in outputlist:
        target.CodeByte(outputlist[operand])
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]
    else:
        errors.DoError('badoper', False)

    NoMore()


# -----------------------------------------------------------------------------

if __name__ == '__main__':
    print("")
    print("This is a python module, it's not a program.")
    print("This module is part of the sbasm package.")
    print("Run sbasm instead.")
    print("")
