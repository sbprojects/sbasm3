# ------------------------------------------------------------------------------
#
#   cr8022.py
#
#   Package module file for the SB-Assembler sbasm
#   See www.sbprojects.net for details
#
#   Author: San Bergmans
#   Date  : 2015-12-21
#
#   Cross Overlay for the 8022 family of processors
#
# ------------------------------------------------------------------------------

import sys
import os

import assem
import dec
import errors
import target
import cr8048

crossversion = '3.01.02'
minversion = '3.01.00'


# ------------------------------------------------------------------------------

def Help():

    print('Tell a little story about this cross overlay')


# ------------------------------------------------------------------------------

def CrossInit():

    global Asm, Flags, Error_List

    assem.CheckVersions(crossversion, minversion)
    crlib = cr8048

    # Declare the tuples for the MOV instruction seperately, otherwise the
    # line gets sooooooo long
    movparams = ('A,R0', 'A,R1', 'A,R2', 'A,R3', 'A,R4', 'A,R5', 'A,R6',
                 'A,R7', 'A,@R0', 'A,@R1', 'R0,A', 'R1,A', 'R2,A', 'R3,A',
                 'R4,A', 'R5,A', 'R6,A', 'R7,A', '@R0,A', '@R1,A', 'A,#',
                 'R0,#', 'R1,#', 'R2,#', 'R3,#', 'R4,#', 'R5,#', 'R6,#',
                 'R7,#', '@R0,#', '@R1,#', 'A,T', 'T,A')
    movopcodes = (0xF8, 0xF9, 0xFA, 0xFB, 0xFC, 0xFD, 0xFE, 0xFF, 0xF0, 0xF1,
                  0xA8, 0xA9, 0xAA, 0xAB, 0xAC, 0xAD, 0xAE, 0xAF, 0xA0, 0xA1,
                  0x23, 0xB8, 0xB9, 0xBA, 0xBB, 0xBC, 0xBD, 0xBE, 0xBF, 0xB0,
                  0xB1, 0x42, 0x62)
    movtimes = ('1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1',
                '1', '1', '1', '1', '1', '1', '1', '1', '2', '2', '2', '2',
                '2', '2', '2', '2', '2', '2', '2', '1', '1')

    dec.Asm.Instructions = {
     'JC'   : (crlib.Branch, 0xF6, '2'),
     'JNC'  : (crlib.Branch, 0xE6, '2'),
     'JNT0' : (crlib.Branch, 0x26, '2'),
     'JNT1' : (crlib.Branch, 0x46, '2'),
     'JNZ'  : (crlib.Branch, 0x96, '2'),
     'JTF'  : (crlib.Branch, 0x16, '2'),
     'JT0'  : (crlib.Branch, 0x36, '2'),
     'JT1'  : (crlib.Branch, 0x56, '2'),
     'JZ'   : (crlib.Branch, 0xC6, '2'),
     'JNIBF': (crlib.Branch, 0xD6, '2'),
     'JOBF' : (crlib.Branch, 0x86, '2'),

     'CLR'  : (crlib.Singles, ('A', 'C'), (0x27, 0x97), ('1', '1')),
     'CPL'  : (crlib.Singles, ('A', 'C'), (0x37, 0xA7), ('1', '1')),
     'DA'   : (crlib.Singles, ('A',), (0x57,), ('1',)),
     'DEC'  : (crlib.Singles, ('A',), (0x07,), ('1',)),
     'INC'  : (crlib.Singles, ('A', 'R0', 'R1', 'R2', 'R3', 'R4', 'R5', 'R6',
                               'R7', '@R0', '@R1'),
               (0x17, 0x18, 0x19, 0x1A, 0x1B, 0x1C, 0x1D, 0x1E, 0x1F, 0x10,
                0x11),
               ('1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1')),
     'RL'   : (crlib.Singles, ('A',), (0xE7,), ('1',)),
     'RLC'  : (crlib.Singles, ('A',), (0xF7,), ('1',)),
     'RR'   : (crlib.Singles, ('A',), (0x77,), ('1',)),
     'RRC'  : (crlib.Singles, ('A',), (0x67,), ('1',)),
     'SWAP' : (crlib.Singles, ('A',), (0x47,), ('1',)),
     'DIS'  : (crlib.Singles, ('I', 'TCNTI'), (0x15, 0x35), ('1', '1')),
     'EN'   : (crlib.Singles, ('I', 'TCNTI'), (0x05, 0x25), ('1', '1')),
     'JMPP' : (crlib.Singles, ('@A',), (0xB3,), ('2',)),
     'SEL'  : (crlib.Singles, ('AN0', 'AN1'), (0x85, 0x95), ('1', '1')),
     'STOP' : (crlib.Singles, ('TCNT',), (0x65,), ('1',)),
     'STRT' : (crlib.Singles, ('T', 'CNT'), (0x55, 0x45), ('1', '1')),

     'ADD'  : (crlib.Pairs, ('A,R0', 'A,R1', 'A,R2', 'A,R3', 'A,R4', 'A,R5',
                             'A,R6', 'A,R7', 'A,@R0', 'A,@R1', 'A,#'),
               (0x68, 0x69, 0x6A, 0x6B, 0x6C, 0x6D, 0x6E, 0x6F, 0x60, 0x61,
                0x03),
               ('1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2')),
     'ADDC' : (crlib.Pairs, ('A,R0', 'A,R1', 'A,R2', 'A,R3', 'A,R4', 'A,R5',
                             'A,R6', 'A,R7', 'A,@R0', 'A,@R1', 'A,#'),
               (0x78, 0x79, 0x7A, 0x7B, 0x7C, 0x7D, 0x7E, 0x7F, 0x70, 0x71,
                0x13),
               ('1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2')),
     'ANL'  : (crlib.Pairs, ('A,R0', 'A,R1', 'A,R2', 'A,R3', 'A,R4', 'A,R5',
                             'A,R6', 'A,R7', 'A,@R0', 'A,@R1', 'A,#'),
               (0x58, 0x59, 0x5A, 0x5B, 0x5C, 0x5D, 0x5E, 0x5F, 0x50, 0x51,
                0x53),
               ('1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2')),
     'ORL'  : (crlib.Pairs, ('A,R0', 'A,R1', 'A,R2', 'A,R3', 'A,R4', 'A,R5',
                             'A,R6', 'A,R7', 'A,@R0', 'A,@R1', 'A,#'),
               (0x48, 0x49, 0x4A, 0x4B, 0x4C, 0x4D, 0x4E, 0x4F, 0x40, 0x41,
                0x43),
               ('1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2')),
     'XCH'  : (crlib.Pairs, ('A,R0', 'A,R1', 'A,R2', 'A,R3', 'A,R4', 'A,R5',
                             'A,R6', 'A,R7', 'A,@R0', 'A,@R1'),
               (0x28, 0x29, 0x2A, 0x2B, 0x2C, 0x2D, 0x2E, 0x2F, 0x20, 0x21),
               ('1', '1', '1', '1', '1', '1', '1', '1', '1', '1')),
     'XCHD' : (crlib.Pairs, ('A,@R0', 'A,@R1'), (0x30, 0x31), ('1', '1')),
     'XRL'  : (crlib.Pairs, ('A,R0', 'A,R1', 'A,R2', 'A,R3', 'A,R4', 'A,R5',
                             'A,R6', 'A,R7', 'A,@R0', 'A,@R1', 'A,#'),
               (0xD8, 0xD9, 0xDA, 0xDB, 0xDC, 0xDD, 0xDE, 0xDF, 0xD0, 0xD1,
                0xD3),
               ('1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2')),
     'MOV'  : (crlib.Pairs, movparams, movopcodes, movtimes),
     'ANLD' : (crlib.Pairs, ('P4,A', 'P5,A', 'P6,A', 'P7,A'),
               (0x9C, 0x9D, 0x9E, 0x9F), ('2', '2', '2', '2')),
     'IN'   : (crlib.Pairs, ('A,DBB', 'A,P0', 'A,P1', 'A,P2'),
               (0x22, 0x08, 0x09, 0x0A), ('1', '2', '2', '2')),
     'MOVP' : (crlib.Pairs, ('A,@A',), (0xA3,), ('2',)),
     'ORLD' : (crlib.Pairs, ('P4,A', 'P5,A', 'P6,A', 'P7,A'),
               (0x8C, 0x8D, 0x8E, 0x8F), ('1', '1', '1', '1')),
     'OUTL' : (crlib.Pairs, ('DBB,A', 'P0,A', 'P1,A', 'P2,A'),
               (0x02, 0x90, 0x39, 0x3A), ('2', '2', '2', '2')),
     'MOVD' : (crlib.Pairs, ('A,P4', 'A,P5', 'A,P6', 'A,P7', 'P4,A', 'P5,A',
                             'P6,A', 'P7,A'),
               (0x0C, 0x0D, 0x0E, 0x0F, 0x3C, 0x3D, 0x3E, 0x3F),
               ('2', '2', '2', '2', '2', '2', '2', '2')),

     'NOP'  : (crlib.Implied, 0x00, '1'),
     'RET'  : (crlib.Implied, 0x83, '2'),
     'RETI' : (crlib.Implied, 0x93, '2'),
     'RAD'  : (crlib.Implied, 0x80, '2'),

     'CALL' : (crlib.Absolute, 0x14, '2'),
     'JMP'  : (crlib.Absolute, 0x04, '2'),

     'DJNZ' : (crlib.Djnz, (0xE8, 0x00), '2')
    }

    dec.Asm.Timing_Length = 1

    errors.Error_List[dec.Cross.Name + 'tcrossed'] =\
        'Table crossed page boundary'

    dec.Asm.Memory = 0
    if dec.Asm.Pass == 1:
        sys.stdout.write('Loaded ' + dec.Cross.Name[2:] +
                         ' overlay version ' + crossversion + dec.EOL)

    dec.Asm.Max_Address = (1 << 11)-1
    dec.Asm.PP_TA_Factor = 1
    dec.Flags.BigEndian = False

    dec.Asm.Table8048 = -1

    return


# ------------------------------------------------------------------------------

def CrossDirective():

    return cr8048.CrossDirective()


# ------------------------------------------------------------------------------

def CrossCleanUp():

    """
    Close any open talbes and check for boundary crossings.
    """

    cr8048.DirCT()

    return


# ------------------------------------------------------------------------------

def CrossMnemonic():

    cr8048.CrossMnemonic()


# -----------------------------------------------------------------------------

if __name__ == '__main__':
    print("")
    print("This is a python module, it's not a program.")
    print("This module is part of the sbasm package.")
    print("Run sbasm instead.")
    print("")
