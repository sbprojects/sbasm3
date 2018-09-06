# ------------------------------------------------------------------------------
#
#   cr6805.py
#
#   Package module file for the SB-Assembler sbasm
#   See www.sbprojects.net for details
#
#   Author: San Bergmans
#   Date  : 2015-12-21
#
#   This cross overlay will handle the assembling of 6805
#
# ------------------------------------------------------------------------------

import sys
import os

import assem
import dec
import errors
import target
import cr68hc05

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
        'ASLA' : (cr68hc05.Implied, 0x48, '4'),
        'ASLX' : (cr68hc05.Implied, 0x58, '4'),
        'ASRA' : (cr68hc05.Implied, 0x47, '4'),
        'ASRX' : (cr68hc05.Implied, 0x57, '4'),
        'CLC'  : (cr68hc05.Implied, 0x98, '2'),
        'CLI'  : (cr68hc05.Implied, 0x9A, '2'),
        'CLRA' : (cr68hc05.Implied, 0x4F, '4'),
        'CLRX' : (cr68hc05.Implied, 0x5F, '4'),
        'COMA' : (cr68hc05.Implied, 0x43, '4'),
        'COMX' : (cr68hc05.Implied, 0x53, '4'),
        'DECA' : (cr68hc05.Implied, 0x4A, '4'),
        'DECX' : (cr68hc05.Implied, 0x5A, '4'),
        'DEX'  : (cr68hc05.Implied, 0x5A, '4'),
        'INCA' : (cr68hc05.Implied, 0x4C, '4'),
        'INCX' : (cr68hc05.Implied, 0x5C, '4'),
        'INX'  : (cr68hc05.Implied, 0x5C, '4'),
        'LSLA' : (cr68hc05.Implied, 0x48, '4'),
        'LSLX' : (cr68hc05.Implied, 0x58, '4'),
        'LSRA' : (cr68hc05.Implied, 0x44, '4'),
        'LSRX' : (cr68hc05.Implied, 0x54, '4'),
        'NEGA' : (cr68hc05.Implied, 0x40, '4'),
        'NEGX' : (cr68hc05.Implied, 0x50, '4'),
        'NOP'  : (cr68hc05.Implied, 0x9D, '2'),
        'ROLA' : (cr68hc05.Implied, 0x49, '4'),
        'ROLX' : (cr68hc05.Implied, 0x59, '4'),
        'RORA' : (cr68hc05.Implied, 0x46, '4'),
        'RORX' : (cr68hc05.Implied, 0x56, '4'),
        'RSP'  : (cr68hc05.Implied, 0x9C, '2'),
        'RTI'  : (cr68hc05.Implied, 0x80, '9'),
        'RTS'  : (cr68hc05.Implied, 0x81, '6'),
        'SEC'  : (cr68hc05.Implied, 0x99, '2'),
        'SEI'  : (cr68hc05.Implied, 0x9B, '2'),
        'SWI'  : (cr68hc05.Implied, 0x83, '11'),
        'TAX'  : (cr68hc05.Implied, 0x97, '2'),
        'TSTA' : (cr68hc05.Implied, 0x4D, '4'),
        'TSTX' : (cr68hc05.Implied, 0x5D, '4'),
        'TXA'  : (cr68hc05.Implied, 0x9F, '2'),

        'BCC'  : (cr68hc05.Branch, 0x24, '4'),
        'BCS'  : (cr68hc05.Branch, 0x25, '4'),
        'BEQ'  : (cr68hc05.Branch, 0x27, '4'),
        'BHCC' : (cr68hc05.Branch, 0x28, '4'),
        'BHCS' : (cr68hc05.Branch, 0x29, '4'),
        'BHI'  : (cr68hc05.Branch, 0x22, '4'),
        'BHS'  : (cr68hc05.Branch, 0x24, '4'),
        'BIH'  : (cr68hc05.Branch, 0x2F, '4'),
        'BIL'  : (cr68hc05.Branch, 0x2E, '4'),
        'BLO'  : (cr68hc05.Branch, 0x25, '4'),
        'BLS'  : (cr68hc05.Branch, 0x23, '4'),
        'BMC'  : (cr68hc05.Branch, 0x2C, '4'),
        'BMI'  : (cr68hc05.Branch, 0x2B, '4'),
        'BMS'  : (cr68hc05.Branch, 0x2D, '4'),
        'BNE'  : (cr68hc05.Branch, 0x26, '4'),
        'BPL'  : (cr68hc05.Branch, 0x2A, '4'),
        'BRA'  : (cr68hc05.Branch, 0x20, '4'),
        'BRN'  : (cr68hc05.Branch, 0x21, '4'),
        'BSR'  : (cr68hc05.Branch, 0xAD, '8'),

        'ADC'  : (cr68hc05.Multi, (0xA9, 0xB9, 0xC9, 0xF9, 0xE9, 0xD9),
                  ('2', '4', '5', '4', '5', '6')),
        'ADD'  : (cr68hc05.Multi, (0xAB, 0xBB, 0xCB, 0xFB, 0xEB, 0xDB),
                  ('2', '4', '5', '4', '5', '6')),
        'AND'  : (cr68hc05.Multi, (0xA4, 0xB4, 0xC4, 0xF4, 0xE4, 0xD4),
                  ('2', '4', '5', '4', '5', '6')),
        'ASL'  : (cr68hc05.Multi, (0x00, 0x38, 0x00, 0x78, 0x68, 0x00),
                  ('', '6', '', '6', '7', '')),
        'ASR'  : (cr68hc05.Multi, (0x00, 0x37, 0x00, 0x77, 0x67, 0x00),
                  ('', '6', '', '6', '7', '')),
        'BIT'  : (cr68hc05.Multi, (0xA5, 0xB5, 0xC5, 0xF5, 0xE5, 0xD5),
                  ('2', '4', '5', '4', '5', '6')),
        'CLR'  : (cr68hc05.Multi, (0x00, 0x3F, 0x00, 0x7F, 0x6F, 0x00),
                  ('', '6', '', '6', '7', '')),
        'CMP'  : (cr68hc05.Multi, (0xA1, 0xB1, 0xC1, 0xF1, 0xE1, 0xD1),
                  ('2', '4', '5', '4', '5', '6')),
        'COM'  : (cr68hc05.Multi, (0x00, 0x33, 0x00, 0x73, 0x63, 0x00),
                  ('', '6', '', '6', '7', '')),
        'CPX'  : (cr68hc05.Multi, (0xA3, 0xB3, 0xC3, 0xF3, 0xE3, 0xD3),
                  ('2', '4', '5', '4', '5', '6')),
        'DEC'  : (cr68hc05.Multi, (0x00, 0x3A, 0x00, 0x7A, 0x6A, 0x00),
                  ('', '6', '', '6', '7', '')),
        'EOR'  : (cr68hc05.Multi, (0xA8, 0xB8, 0xC8, 0xF8, 0xE8, 0xD8),
                  ('2', '4', '5', '4', '5', '6')),
        'INC'  : (cr68hc05.Multi, (0x00, 0x3C, 0x00, 0x7C, 0x6C, 0x00),
                  ('', '6', '', '6', '7', '')),
        'JMP'  : (cr68hc05.Multi, (0x00, 0xBC, 0xCC, 0xFC, 0xEC, 0xDC),
                  ('', '3', '4', '3', '4', '5')),
        'JSR'  : (cr68hc05.Multi, (0x00, 0xBD, 0xCD, 0xFD, 0xED, 0xDD),
                  ('', '7', '8', '7', '8', '9')),
        'LDA'  : (cr68hc05.Multi, (0xA6, 0xB6, 0xC6, 0xF6, 0xE6, 0xD6),
                  ('2', '4', '5', '4', '5', '6')),
        'LDX'  : (cr68hc05.Multi, (0xAE, 0xBE, 0xCE, 0xFE, 0xEE, 0xDE),
                  ('2', '4', '5', '4', '5', '6')),
        'LSL'  : (cr68hc05.Multi, (0x00, 0x38, 0x00, 0x78, 0x68, 0x00),
                  ('', '6', '', '6', '7', '')),
        'LSR'  : (cr68hc05.Multi, (0x00, 0x34, 0x00, 0x74, 0x64, 0x00),
                  ('', '6', '', '6', '7', '')),
        'NEG'  : (cr68hc05.Multi, (0x00, 0x30, 0x00, 0x70, 0x60, 0x00),
                  ('', '6', '', '6', '7', '')),
        'ORA'  : (cr68hc05.Multi, (0xAA, 0xBA, 0xCA, 0xFA, 0xEA, 0xDA),
                  ('2', '4', '5', '4', '5', '6')),
        'ROL'  : (cr68hc05.Multi, (0x00, 0x39, 0x00, 0x79, 0x69, 0x00),
                  ('', '6', '', '6', '7', '')),
        'ROR'  : (cr68hc05.Multi, (0x00, 0x36, 0x00, 0x76, 0x66, 0x00),
                  ('', '6', '', '6', '7', '')),
        'SBC'  : (cr68hc05.Multi, (0xA2, 0xB2, 0xC2, 0xF2, 0xE2, 0xD2),
                  ('2', '4', '5', '4', '5', '6')),
        'STA'  : (cr68hc05.Multi, (0x00, 0xB7, 0xC7, 0xF7, 0xE7, 0xD7),
                  ('', '5', '6', '5', '6', '7')),
        'STX'  : (cr68hc05.Multi, (0x00, 0xBF, 0xCF, 0xFF, 0xEF, 0xDF),
                  ('', '5', '6', '5', '6', '7')),
        'SUB'  : (cr68hc05.Multi, (0xA0, 0xB0, 0xC0, 0xF0, 0xE0, 0xD0),
                  ('2', '4', '5', '4', '5', '6')),
        'TST'  : (cr68hc05.Multi, (0x00, 0x3D, 0x00, 0x7D, 0x6D, 0x00),
                  ('', '6', '', '6', '7', '')),

        'BCLR' : (cr68hc05.Bits, 0x11, '7'),
        'BSET' : (cr68hc05.Bits, 0x10, '7'),
        'BRCLR': (cr68hc05.Bits, 0x01, '10'),
        'BRSET': (cr68hc05.Bits, 0x00, '10')
    }

    dec.Asm.Timing_Length = 2

    dec.Asm.Memory = 0
    if dec.Asm.Pass == 1:
        sys.stdout.write('Loaded ' + dec.Cross.Name[2:] +
                         ' overlay version ' + crossversion + dec.EOL)

    dec.Asm.Max_Address = (1 << 13)-1
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

    cr68hc05.CrossMnemonic()


# -----------------------------------------------------------------------------

if __name__ == '__main__':
    print("")
    print("This is a python module, it's not a program.")
    print("This module is part of the sbasm package.")
    print("Run sbasm instead.")
    print("")
