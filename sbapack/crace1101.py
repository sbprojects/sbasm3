# ------------------------------------------------------------------------------
#
#   crace1101.py
#
#   Package module file for the SB-Assembler sbasm
#   See www.sbprojects.net for details
#
#   Author: San Bergmans
#   Date  : 2015-12-21
#
#   This cross overlay will handle the assembling of ace1101
#
# ------------------------------------------------------------------------------

import sys
import os

import assem
import dec
import errors
import target
import crace1202

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
        'IFC'  : (crace1202.Inherent, 0x19, '1'),
        'IFNC' : (crace1202.Inherent, 0x1F, '1'),
        'INTR' : (crace1202.Inherent, 0x00, '5'),
        'INVC' : (crace1202.Inherent, 0x12, '1'),
        'NOP'  : (crace1202.Inherent, 0x1C, '1'),
        'RC'   : (crace1202.Inherent, 0x1E, '1'),
        'RET'  : (crace1202.Inherent, 0x17, '5'),
        'RETI' : (crace1202.Inherent, 0x18, '5'),
        'SC'   : (crace1202.Inherent, 0x1D, '1'),

        'JP'   : (crace1202.Relative, 0xC0, '1'),

        'JMP'  : (crace1202.Jumps, (0x24, 0x00), ('4', '')),
        'JSR'  : (crace1202.Jumps, (0x23, 0x00), ('5', '')),

        'CLR'  : (crace1202.Singles, (0x16, 0x0F, 0x7D), ('1', '1', '2')),
        'DEC'  : (crace1202.Singles, (0x1A, 0x0C, 0x7B), ('1', '1', '2')),
        'INC'  : (crace1202.Singles, (0x1B, 0x0D, 0x7C), ('1', '1', '2')),
        'RLC'  : (crace1202.Singles, (0x15, 0x00, 0x79), ('1', '', '2')),
        'RRC'  : (crace1202.Singles, (0x13, 0x00, 0x7A), ('1', '', '2')),

        'ADC'  : (crace1202.Multiple,
                  (0x60, 0x42, 0x02, 0x00, 0x00, 0x00, 0x00),
                  ('2', '2', '1', '', '', '', '')),
        'ADD'  : (crace1202.Multiple,
                  (0x66, 0x43, 0x03, 0x00, 0x00, 0x00, 0x00),
                  ('2', '2', '1', '', '', '', '')),
        'AND'  : (crace1202.Multiple,
                  (0x61, 0x50, 0x04, 0x00, 0x00, 0x00, 0x00),
                  ('2', '2', '1', '', '', '', '')),
        'IFEQ' : (crace1202.Multiple,
                  (0x65, 0x56, 0x09, 0x00, 0x26, 0x20, 0x00),
                  ('2', '2', '1', '', '3', '3', '')),
        'IFGT' : (crace1202.Multiple,
                  (0x67, 0x55, 0x0A, 0x00, 0x27, 0x00, 0x00),
                  ('2', '2', '1', '', '3', '', '')),
        'IFLT' : (crace1202.Multiple,
                  (0x00, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00),
                  ('', '', '', '', '', '', '')),
        'IFNE' : (crace1202.Multiple,
                  (0x57, 0x54, 0x0B, 0x00, 0x00, 0x00, 0x00),
                  ('2', '2', '1', '', '', '', '')),
        'LD'   : (crace1202.Multiple,
                  (0x51, 0x46, 0x0E, 0x52, 0x25, 0x21, 0x22),
                  ('2', '2', '1', '3', '3', '3', '3')),
        'OR'   : (crace1202.Multiple,
                  (0x62, 0x44, 0x05, 0x00, 0x00, 0x00, 0x00),
                  ('2', '2', '1', '', '', '', '')),
        'ST'   : (crace1202.Multiple,
                  (0x00, 0x47, 0x11, 0x40, 0x00, 0x00, 0x00),
                  ('', '2', '2', '3', '', '', '')),
        'SUBC' : (crace1202.Multiple,
                  (0x63, 0x53, 0x06, 0x00, 0x00, 0x00, 0x00),
                  ('2', '2', '1', '', '', '', '')),
        'XOR'  : (crace1202.Multiple,
                  (0x64, 0x45, 0x07, 0x00, 0x00, 0x00, 0x00),
                  ('2', '2', '1', '', '', '', '')),

        'IFBIT': (crace1202.Bits, (0xA0, 0x58, 0x00), ('1', '2', '')),
        'LDC'  : (crace1202.Bits, (0x00, 0x80, 0x00), ('', '2', '')),
        'RBIT' : (crace1202.Bits, (0x00, 0x68, 0xB8), ('', '2', '2')),
        'SBIT' : (crace1202.Bits, (0x00, 0x48, 0xB0), ('', '2', '2')),
        'STC'  : (crace1202.Bits, (0x00, 0x88, 0x00), ('', '2', ''))

    }

    dec.Asm.Timing_Length = 1

    dec.Asm.Memory = 0              # Select code memory as default
    if dec.Asm.Pass == 1:
        sys.stdout.write('Loaded ' + dec.Cross.Name[2:] +
                         ' overlay version ' + crossversion + dec.EOL)

    dec.Asm.Max_Address = (1 << 12) - 1
    dec.Asm.PP_TA_Factor = 1
    dec.Flags.BigEndian = False

    dec.Ace_Maxjmp = 0x0FFF
    dec.Ace_Minjmp = 0x0C00

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

if __name__ == '__main__':
    print("")
    print("This is a python module, it's not a program.")
    print("This module is part of the sbasm package.")
    print("Run sbasm instead.")
    print("")
