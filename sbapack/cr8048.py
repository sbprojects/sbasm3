# ------------------------------------------------------------------------------
#
#   cr8048.py
#
#   Package module file for the SB-Assembler sbasm
#   See www.sbprojects.net for details
#
#   Author: San Bergmans
#   Date  : 2015-12-21
#
#   Cross Overlay for the 8048 family of processors
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

    global Asm, Flags, Error_List

    assem.CheckVersions(crossversion, minversion)

    # Declare the tuples for the MOV instruction seperately, otherwise the
    # line gets sooooooo long
    movparams = ('A,R0', 'A,R1', 'A,R2', 'A,R3', 'A,R4', 'A,R5', 'A,R6',
                 'A,R7', 'A,@R0', 'A,@R1', 'R0,A', 'R1,A', 'R2,A', 'R3,A',
                 'R4,A', 'R5,A', 'R6,A', 'R7,A', '@R0,A', '@R1,A', 'A,#',
                 'R0,#', 'R1,#', 'R2,#', 'R3,#', 'R4,#', 'R5,#', 'R6,#',
                 'R7,#', '@R0,#', '@R1,#', 'A,PSW', 'PSW,A', 'A,T', 'T,A')
    movopcodes = (0xF8, 0xF9, 0xFA, 0xFB, 0xFC, 0xFD, 0xFE, 0xFF, 0xF0, 0xF1,
                  0xA8, 0xA9, 0xAA, 0xAB, 0xAC, 0xAD, 0xAE, 0xAF, 0xA0, 0xA1,
                  0x23, 0xB8, 0xB9, 0xBA, 0xBB, 0xBC, 0xBD, 0xBE, 0xBF, 0xB0,
                  0xB1, 0xC7, 0xD7, 0x42, 0x62)
    movtimes = ('1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1',
                '1', '1', '1', '1', '1', '1', '1', '1', '2', '2', '2', '2',
                '2', '2', '2', '2', '2', '2', '2', '1', '1', '1', '1')

    dec.Asm.Instructions = {
     'JB0'  : (Branch, 0x12, '2'),
     'JB1'  : (Branch, 0x32, '2'),
     'JB2'  : (Branch, 0x52, '2'),
     'JB3'  : (Branch, 0x72, '2'),
     'JB4'  : (Branch, 0x92, '2'),
     'JB5'  : (Branch, 0xB2, '2'),
     'JB6'  : (Branch, 0xD2, '2'),
     'JB7'  : (Branch, 0xF2, '2'),
     'JC'   : (Branch, 0xF6, '2'),
     'JF0'  : (Branch, 0xB6, '2'),
     'JF1'  : (Branch, 0x76, '2'),
     'JNC'  : (Branch, 0xE6, '2'),
     'JNI'  : (Branch, 0x86, '2'),
     'JNT0' : (Branch, 0x26, '2'),
     'JNT1' : (Branch, 0x46, '2'),
     'JNZ'  : (Branch, 0x96, '2'),
     'JTF'  : (Branch, 0x16, '2'),
     'JT0'  : (Branch, 0x36, '2'),
     'JT1'  : (Branch, 0x56, '2'),
     'JZ'   : (Branch, 0xC6, '2'),

     'CLR'  : (Singles, ('A', 'C', 'F0', 'F1'), (0x27, 0x97, 0x85, 0xA5),
               ('1', '1', '1', '1')),
     'CPL'  : (Singles, ('A', 'C', 'F0', 'F1'), (0x37, 0xA7, 0x95, 0xB5),
               ('1', '1', '1', '1')),
     'DA'   : (Singles, ('A',), (0x57,), ('1',)),
     'DEC'  : (Singles, ('A', 'R0', 'R1', 'R2', 'R3', 'R4', 'R5', 'R6', 'R7'),
               (0x07, 0xC8, 0xC9, 0xCA, 0xCB, 0xCC, 0xCD, 0xCE, 0xCF),
               ('1', '1', '1', '1', '1', '1', '1', '1', '1')),
     'INC'  : (Singles, ('A', 'R0', 'R1', 'R2', 'R3', 'R4', 'R5', 'R6', 'R7',
                         '@R0', '@R1'),
               (0x17, 0x18, 0x19, 0x1A, 0x1B, 0x1C, 0x1D, 0x1E, 0x1F, 0x10,
                0x11),
               ('1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1')),
     'RL'   : (Singles, ('A',), (0xE7,), ('1',)),
     'RLC'  : (Singles, ('A',), (0xF7,), ('1',)),
     'RR'   : (Singles, ('A',), (0x77,), ('1',)),
     'RRC'  : (Singles, ('A',), (0x67,), ('1',)),
     'SWAP' : (Singles, ('A',), (0x47,), ('1',)),
     'DIS'  : (Singles, ('I', 'TCNTI'), (0x15, 0x35), ('1', '1')),
     'EN'   : (Singles, ('I', 'TCNTI'), (0x05, 0x25), ('1', '1')),
     'ENT0' : (Singles, ('CLK',), (0x75,), ('1',)),
     'JMPP' : (Singles, ('@A',), (0xB3,), ('2',)),
     'SEL'  : (Singles, ('MB0', 'MB1', 'RB0', 'RB1'), (0xE5, 0xF5, 0xC5, 0xD5),
               ('1', '1', '1', '1')),
     'STOP' : (Singles, ('TCNT',), (0x65,), ('1',)),
     'STRT' : (Singles, ('T', 'CNT'), (0x55, 0x45), ('1', '1')),

     'ADD'  : (Pairs, ('A,R0', 'A,R1', 'A,R2', 'A,R3', 'A,R4', 'A,R5', 'A,R6',
                       'A,R7', 'A,@R0', 'A,@R1', 'A,#'),
               (0x68, 0x69, 0x6A, 0x6B, 0x6C, 0x6D, 0x6E, 0x6F, 0x60, 0x61,
                0x03),
               ('1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2')),
     'ADDC' : (Pairs, ('A,R0', 'A,R1', 'A,R2', 'A,R3', 'A,R4', 'A,R5', 'A,R6',
                       'A,R7', 'A,@R0', 'A,@R1', 'A,#'),
               (0x78, 0x79, 0x7A, 0x7B, 0x7C, 0x7D, 0x7E, 0x7F, 0x70, 0x71,
                0x13),
               ('1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2')),
     'ANL'  : (Pairs, ('A,R0', 'A,R1', 'A,R2', 'A,R3', 'A,R4', 'A,R5', 'A,R6',
                       'A,R7', 'A,@R0', 'A,@R1', 'A,#', 'BUS,#', 'P1,#',
                       'P2,#'),
               (0x58, 0x59, 0x5A, 0x5B, 0x5C, 0x5D, 0x5E, 0x5F, 0x50, 0x51,
                0x53, 0x98, 0x99, 0x9A),
               ('1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2', '2',
                '2', '2')),
     'ORL'  : (Pairs, ('A,R0', 'A,R1', 'A,R2', 'A,R3', 'A,R4', 'A,R5', 'A,R6',
                       'A,R7', 'A,@R0', 'A,@R1', 'A,#', 'BUS,#', 'P1,#',
                       'P2,#'),
               (0x48, 0x49, 0x4A, 0x4B, 0x4C, 0x4D, 0x4E, 0x4F, 0x40, 0x41,
                0x43, 0x88, 0x89, 0x8A),
               ('1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2', '2',
                '2', '2')),
     'XCH'  : (Pairs, ('A,R0', 'A,R1', 'A,R2', 'A,R3', 'A,R4', 'A,R5', 'A,R6',
                       'A,R7', 'A,@R0', 'A,@R1'),
               (0x28, 0x29, 0x2A, 0x2B, 0x2C, 0x2D, 0x2E, 0x2F, 0x20, 0x21),
               ('1', '1', '1', '1', '1', '1', '1', '1', '1', '1')),
     'XCHD' : (Pairs, ('A,@R0', 'A,@R1'), (0x30, 0x31), ('1', '1')),
     'XRL'  : (Pairs, ('A,R0', 'A,R1', 'A,R2', 'A,R3', 'A,R4', 'A,R5', 'A,R6',
                       'A,R7', 'A,@R0', 'A,@R1', 'A,#'),
               (0xD8, 0xD9, 0xDA, 0xDB, 0xDC, 0xDD, 0xDE, 0xDF, 0xD0, 0xD1,
                0xD3),
               ('1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2')),
     'MOV'  : (Pairs, movparams, movopcodes, movtimes),
     'ANLD' : (Pairs, ('P4,A', 'P5,A', 'P6,A', 'P7,A'),
               (0x9C, 0x9D, 0x9E, 0x9F), ('2', '2', '2', '2')),
     'IN'   : (Pairs, ('A,P1', 'A,P2'), (0x09, 0x0A), ('2', '2')),
     'INS'  : (Pairs, ('A,BUS',), (0x08,), ('2',)),
     'MOVP' : (Pairs, ('A,@A',), (0xA3,), ('2',)),
     'MOVP3': (Pairs, ('A,@A',), (0xE3,), ('2',)),
     'ORLD' : (Pairs, ('P4,A', 'P5,A', 'P6,A', 'P7,A'),
               (0x8C, 0x8D, 0x8E, 0x8F), ('1', '1', '1', '1')),
     'OUTL' : (Pairs, ('BUS,A', 'P1,A', 'P2,A'), (0x02, 0x39, 0x3A),
               ('2', '2', '2')),
     'MOVD' : (Pairs, ('A,P4', 'A,P5', 'A,P6', 'A,P7', 'P4,A', 'P5,A', 'P6,A',
                       'P7,A'),
               (0x0C, 0x0D, 0x0E, 0x0F, 0x3C, 0x3D, 0x3E, 0x3F),
               ('2', '2', '2', '2', '2', '2', '2', '2')),
     'MOVX' : (Pairs, ('A,@R0', 'A,@R1', '@R0,A', '@R1,A'),
               (0x80, 0x81, 0x90, 0x91), ('2', '2', '2', '2')),

     'NOP'  : (Implied, 0x00, '1'),
     'RET'  : (Implied, 0x83, '2'),
     'RETR' : (Implied, 0x93, '2'),

     'CALL' : (Absolute, 0x14, '2'),
     'JMP'  : (Absolute, 0x04, '2'),

     'DJNZ' : (Djnz, (0xE8, 0x00), '2')
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

    """
    Two new directives are added by this cross overlay
    .OT and .CT are used to check if a table doesn't cross a page boundary.
    """

    global Asm

    if len(dec.Asm.Mnemonic) > 1:
        directive = dec.Asm.Mnemonic[1:3].upper()
    else:
        directive = dec.Asm.Mnemonic

    if directive == 'CT':
        DirCT()
        return True

    if directive == 'OT':
        DirOT()
        return True

    return False


# ------------------------------------------------------------------------------

def CrossCleanUp():

    """
    Close any open talbes and check for boundary crossings.
    """

    DirCT()

    return


# ------------------------------------------------------------------------------

def CrossMnemonic():

    """
    Jump to the mnemonic handling routine.
    """

    global Asm

    if dec.Asm.Mnemonic in dec.Asm.Instructions:
        func = dec.Asm.Instructions[dec.Asm.Mnemonic][0]
        func()
    else:
        errors.DoError('badopco', False)


# -----------------------------------------------------------------------------

def MissingOperand():

    """
    An operand is mandatory, so it's an error if one is missing.
    Returns True if the operand is indeed missing.
    """

    if dec.Asm.Parse_Pointer == 0:
        errors.DoError('missoper', False)
        return True
    else:
        return False


# -----------------------------------------------------------------------------

def NoMore():

    """
    This must be the end of the line. Raise an error if it's not. Or a warning
    if more parameters follow.
    """

    if assem.MoreParameters():
        errors.DoWarning('extrign', False)


# -----------------------------------------------------------------------------

def Branch():

    """
    Handle the simple branch instructions.
    """

    global Asm

    if MissingOperand():
        return

    value = assem.EvalExpr()

    if dec.Asm.Pass == 2:
        temp = (dec.Asm.BOL_Address + 1) >> 8
        dest = value[0] >> 8
        if temp != dest:
            # Destination is not in the same memory page
            errors.DoError('range', False)

    target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1])
    target.CodeByte(value[0])
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    NoMore()


# -----------------------------------------------------------------------------

def Singles():

    """
    Handle single operand instructions.
    """

    global Asm

    if MissingOperand():
        return

    regname = assem.GetWord().upper()

    registers = dec.Asm.Instructions[dec.Asm.Mnemonic][1]
    opcodes = dec.Asm.Instructions[dec.Asm.Mnemonic][2]
    times = dec.Asm.Instructions[dec.Asm.Mnemonic][3]

    if regname in registers:
        index = 0
        for t in registers:
            if t == regname:
                break
            index = index + 1
        target.CodeByte(opcodes[index])
        dec.Asm.Timing = times[index]
    else:
        errors.DoError('badoper', False)

    NoMore()


# -----------------------------------------------------------------------------

def Pairs():

    """
    Handle paired operand instructions.
    """

    global Asm

    if MissingOperand():
        return

    reg1 = assem.GetWord().upper()

    if not assem.MoreParameters():
        errors.DoError('missoper', False)
        return

    if assem.NowChar() == ' ':
        errors.DoError('missoper', False)
        return

    if assem.NowChar() in '#/=\\':
        reg2 = '#'
    else:
        reg2 = assem.GetWord().upper()

    operand = reg1 + ',' + reg2

    operands = dec.Asm.Instructions[dec.Asm.Mnemonic][1]
    opcodes = dec.Asm.Instructions[dec.Asm.Mnemonic][2]
    times = dec.Asm.Instructions[dec.Asm.Mnemonic][3]

    if operand in operands:
        index = 0
        for t in operands:
            if t == operand:
                break
            index = index + 1
        target.CodeByte(opcodes[index])
        dec.Asm.Timing = times[index]
        if reg2 == '#':
            prefix = assem.NowChar(True)
            value = assem.EvalExpr()
            if prefix == '#':
                target.CodeByte(value[0])
            elif prefix == '/':
                target.CodeByte(value[0] >> 8)
            elif prefix == '=':
                target.CodeByte(value[0] >> 16)
            else:
                target.CodeByte(value[0] >> 24)
    else:
        errors.DoError('badoper', False)

    NoMore()


# -----------------------------------------------------------------------------

def Implied():

    global Asm

    target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1])

    dec.Asm.Timing = (dec.Asm.Instructions[dec.Asm.Mnemonic][2])


# -----------------------------------------------------------------------------

def Absolute():

    global Asm

    if MissingOperand():
        return

    dest = assem.EvalExpr()

    hibits = (dest[0] >> 8) & 7

    target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1] + (hibits << 5))
    target.CodeByte(dest[0])

    if (dest[0] >> 11) != 0:
        errors.DoError('range', False)

    dec.Asm.Timing = (dec.Asm.Instructions[dec.Asm.Mnemonic][2])


# -----------------------------------------------------------------------------

def Djnz():

    """
    Handle DJNZ.
    DJNZ has two opcodes in the instruction table. The first one is for
    DJNZ Rx,dest. The second entry is for DJNZ @Rn,dest.
    If indirect mode doesn't exist the opcode for it should be 00.
    """

    global Asm

    if MissingOperand():
        return

    registers = ('R0', 'R1', 'R2', 'R3', 'R4', 'R5', 'R6', 'R7', '@R0', '@R1')
    regname = assem.GetWord().upper()

    if regname in registers:
        index = 0
        for t in registers:
            if t == regname:
                break
            index = index + 1
        if index < 8:
            # direct addressing mode
            opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][0] + index
        else:
            # indirect addressing mode
            opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][1]
            if opcode == 0:
                errors.DoError('badoper', False)
                return
            opcode = opcode + (index & 1)
    else:
        errors.DoError('badoper', False)
        return

    if not assem.MoreParameters():
        errors.DoError('missoper', False)
        return

    value = assem.EvalExpr()

    if dec.Asm.Pass == 2:
        temp = (dec.Asm.BOL_Address + 1) >> 8
        dest = value[0] >> 8
        if temp != dest:
            # Destination is not in the same memory page
            errors.DoError('range', False)

    target.CodeByte(opcode)
    target.CodeByte(value[0])
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    NoMore()


# -----------------------------------------------------------------------------

def DirCT():

    """
    Check if the table is still in the same memory page as when it was opened.
    Generate an error if it is not.
    Test only during pass 2
    """

    global Asm

    if (dec.Asm.Pass == 2) and (dec.Asm.Table8048 != -1):
        # The beginning was set, otherwise ignore this directive
        if dec.Asm.Table8048 != (dec.Asm.BOL_Address >> 8):
            # Oops, not the same page
            # Our last hope is that we're on the first location of the next
            # page, because then the table had ended just in time.
            if dec.Asm.Table8048 != ((dec.Asm.BOL_Address - 1) >> 8):
                # Nope, we've definately crossed the page!
                errors.DoError(dec.Cross.Name + 'tcrossed', False)

    # Now clear the beginning address
    dec.Asm.Table8048 = -1


# -----------------------------------------------------------------------------

def DirOT():

    """
    Open table. Mark the beginning of a new table so we can check if the
    table has crossed a page boundary when we close the table.
    """

    global Asm

    # Close the previous table, if it's still open
    DirCT()

    # Set new begin of table address page
    dec.Asm.Table8048 = dec.Asm.BOL_Address >> 8


# -----------------------------------------------------------------------------

if __name__ == '__main__':
    print("")
    print("This is a python module, it's not a program.")
    print("This module is part of the sbasm package.")
    print("Run sbasm instead.")
    print("")
