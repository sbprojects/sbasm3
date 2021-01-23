# ------------------------------------------------------------------------------
#
#   crscmp.py
#
#   Package module file for the SB-Assembler sbasm
#   See www.sbprojects.net for details
#
#   Author: San Bergmans
#   Date  : 2015-12-31
#
#   Cross Overlay for the SC/MP micro processor
#
# ------------------------------------------------------------------------------

import sys
import os

import assem
import dec
import errors
import target

crossversion = '3.02.00'
minversion = '3.01.00'


# ------------------------------------------------------------------------------

def Help():

    print('Tell a little story about this cross overlay')


# ------------------------------------------------------------------------------

def CrossInit():

    global Asm, Flags, Error_List

    assem.CheckVersions(crossversion, minversion)

    dec.Asm.Instructions = {

        # Instructions which don't require an operand and are 1 byte long
        'HALT' : (Implied, 0x00, '8'),
        'XAE'  : (Implied, 0x01, '7'),
        'CCL'  : (Implied, 0x02, '5'),
        'SCL'  : (Implied, 0x03, '5'),
        'DINT' : (Implied, 0x04, '6'),
        'IEN'  : (Implied, 0x05, '6'),
        'CSA'  : (Implied, 0x06, '5'),
        'CAS'  : (Implied, 0x07, '6'),
        'NOP'  : (Implied, 0x08, '5'),
        'SIO'  : (Implied, 0x19, '5'),
        'SR'   : (Implied, 0x1C, '5'),
        'SRL'  : (Implied, 0x1D, '5'),
        'RR'   : (Implied, 0x1E, '5'),
        'RRL'  : (Implied, 0x1F, '5'),
        'LDE'  : (Implied, 0x40, '6'),
        'ANE'  : (Implied, 0x50, '6'),
        'ORE'  : (Implied, 0x58, '6'),
        'XRE'  : (Implied, 0x60, '6'),
        'DAE'  : (Implied, 0x68, '11'),
        'ADE'  : (Implied, 0x70, '7'),
        'CAE'  : (Implied, 0x78, '8'),

        # Instructions which require a ptr as operand are one byte long
        'XPAL' : (SinglePtr, 0x30, '8'),
        'XPAH' : (SinglePtr, 0x34, '8'),
        'XPPC' : (SinglePtr, 0x3C, '7'),
        'RET'  : (SinglePtr, 0x3C, '7'),

        # Instructions which expect a single byte as data
        # THese are 2 bytes long
        'DLY'  : (Immediate, 0x8F, '13+'),
        'LDI'  : (Immediate, 0xC4, '10'),
        'ANI'  : (Immediate, 0xD4, '10'),
        'ORI'  : (Immediate, 0xDC, '10'),
        'XRI'  : (Immediate, 0xE4, '10'),
        'DAI'  : (Immediate, 0xEC, '15'),
        'ADI'  : (Immediate, 0xF4, '11'),
        'CAI'  : (Immediate, 0xFC, '12'),

        # Instructions which expect a displacement and a pointer
        # These are 2 bytes long
        'JMP'  : (Transfer, 0x90, '11'),
        'JP'   : (Transfer, 0x94, '9/11'),
        'JZ'   : (Transfer, 0x98, '9/11'),
        'JNZ'  : (Transfer, 0x9C, '9/11'),
        'ILD'  : (Transfer, 0xA8, '22'),
        'DLD'  : (Transfer, 0xB8, '22'),

        # Instructions which expect a displacement or an indirect displacement
        # and a ptr. These are also 2 bytes long.
        'LD'   : (MemRef, 0xC0, '18'),
        'ST'   : (MemRef, 0xC8, '18'),
        'AND'  : (MemRef, 0xD0, '18'),
        'OR'   : (MemRef, 0xD8, '18'),
        'XOR'  : (MemRef, 0xE0, '18'),
        'DAD'  : (MemRef, 0xE8, '23'),
        'ADD'  : (MemRef, 0xF0, '19'),
        'CAD'  : (MemRef, 0xF8, '20'),

        # There's one Pseudo instructions which is the Jump to Subroutine
        # instruction. It is translated into 5 real instructions, simulating
        # one non existent instruction.
        'JS'   : (Pseudo, 0, '43')
    }

    errors.Error_List[dec.Cross.Name + 'pagex']\
        = 'Instruction crossed a page boundary'
    errors.Error_List[dec.Cross.Name + 'pagebeg']\
        = 'Instruction starts at page boundary'
    errors.Error_List[dec.Cross.Name + 'offset']\
        = 'Offset is -128, E register conflict'

    dec.Asm.Timing_Length = 4       # Longest timing string

    dec.Asm.Memory = 0              # Select code memory as default
    if dec.Asm.Pass == 1:
        sys.stdout.write('Loaded ' + dec.Cross.Name[2:] + ' overlay version '
                         + crossversion + dec.EOL)

    dec.Asm.Max_Address = dec.MAX16
    dec.Asm.PP_TA_Factor = 1
    dec.Flags.BigEndian = False     # Arbitrary mode chosen

    return


# ------------------------------------------------------------------------------

def CrossDirective():

    """
    Decided not to have an .OT and .CT directive pair. It's the programmer's
     responsibility to avoid table boundary crossing.
     Boundary crossing is rare enough to do without these directives.
    """

    return False     # return True if we handled the directive


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

def WriteOpcode(data):

    """
    Normally an Opcode byte can just be written to memory. However when the
    Opcode byte is written to the beginning of the page, the assembler assumes
    that you have crossed a page boundary and it will give you a warning.
    Crossing a page boundary is perfectly legal, as long as you know what
    you're doing.
    """

    global Asm

    if dec.Asm.Pass == 2:
        if ((dec.Asm.BOL_Address) & 4095) == 0:
            errors.DoWarning(dec.Cross.Name + 'pagebeg', True)
    target.CodeByte(data)


# -----------------------------------------------------------------------------

def WriteOperand(data):

    """
    Normally an Operand can just be written to memory. However when the
    Operand byte is written to the beginning of a memory page it means that
    the instruction is spanning across 2 memory pages, which is not legal.
    Therefore the assembler will give you an error if that occurs.
    """

    global Asm

    if dec.Asm.Pass == 2:
        if ((dec.Asm.BOL_Address + 1) & 4095) == 0:
            errors.DoError(dec.Cross.Name + 'pagex', False)
    target.CodeByte(data)


# -----------------------------------------------------------------------------

def GetPtr():

    """
    A pointer parameter is expected. Legal options are P0, PC, P1, P2 or P3
    They translate to 0..3, where P0 and PC are equal and generate 0.
    For compatibility digits 0, 1, 2 and 3 are also accepted.
    """

    global Asm

    pointer = dec.Asm.Parse_Pointer
    param = assem.GetWord().upper()

    if param == '':
        # Empty parameter not allowed
        errors.DoError('missoper', False)
        return 0

    if len(param) == 2 and param[0] == 'P':
        # Strip leading P if parameter length = 2
        param = param[1]
        if param == 'C':
            # Translate PC parameter to 0
            param = '0'

    if len(param) == 1:
        # Parameter length may only be 1 now
        if param.isdigit():
            # The parameter must be digit from 0 to 3 now
            ptr = int(param)
            if ptr > 3:
                errors.DoError('badoper', False)
        else:
            # Parameter was not a digit
            errors.DoError('badoper', False)
            ptr = 0
    else:
        # Parameter length was not 1
        errors.DoError('badoper', False)
        ptr = 0

    return ptr % 4


# -----------------------------------------------------------------------------

def GetDisplacement(opcode, allowauto):

    """
    Expected parameters:
     opcode     The basic opcode, can be modified before saving
     allowauto  Flag indicating if @ mode is allowed

    Expected operands:
     @(Px)      Offset = relative 0 and x can be 1 to 3
     @E(Px)     Offset = relative E-reg and x can be 1 to 3
     @expr(Px)  Offset = relative expr and x can be 1 to 3
     (Px)       Offset = relative 0 and x can be 0 to 3 or C
     E          Offset = relative E-reg and reg PC
     E(Px)      Offset = relative E-reg and x can be 0 to 3 or C
     expr(Px)   Offset = relative expr and x can be 0 to 3 or C
     expr       Offset = absolute expr and register is assumed PC
    PS: the P of the pointers is optional

    Not allowed:
     @(PC) or @(P0)
     @E(PC) or @E(P0)
     @expr(PC) or @expr(P0)

    The opcode can be modified. The m flag (Auto indexed mode flag) and or
     the pointer before it is saved to the target file.

    The assembler will not warn you about page crossings for the EA of the
      instruction. It's the programmer's responsibility to keep data tables
      from crossing page boundaries. The page wrap may even be done
      deliberately.

    Absolute addressing is only allowed for PC relative addressing mode,
     where the (PC) or (P0) part of the operand is omitted.
     The formula to calculate the offset is : DEST-PC-1
     Except for jump instructions where it is: DEST-PC-2
     Fortunately the jump instructions are the only ones which start
     with a J.
    """

    global Asm

    if MissingOperand():
        return

    offset = 0
    offset2 = 0
    forward = False
    error = False
    absolute = False
    reg = '0'
    autoindex = False
    eregister = False

    if allowauto:
        # auto-indexed addressing is allowed
        if assem.NowChar() == '@':
            # It is iato indexed addressing
            opcode = opcode + 4
            assem.IncParsePointer()     # Point at char following @
            autoindex = True

    parseptr = dec.Asm.Parse_Pointer    # Remember current parse pointer

    if assem.NowChar() != '(':
        # Some sort of offset is given
        if assem.GetWord(endchars="( ") == 'E':
            # It is E register
            offset = -128
            eregister = True
        else:
            # It's not the E register, restore pointer
            dec.Asm.Parse_Pointer = parseptr

        if offset == 0:
            # Offset was not E-register
            # Offset can be a displacement or an abosulte value
            express = assem.EvalExpr()
            offset = express[0]
            forward = express[1]

    # This can't be an if, because we may have parsed the offset already
    if assem.NowChar() == '(':
        # A pointer register is given (offset would be relative now)
        assem.IncParsePointer()
        if assem.NowChar(True).upper() == 'P':
            # Still going good
            reg = assem.NowChar(True).upper()
        else:
            # We now allow omitting P for numbered registers
            dec.Asm.Parse_Pointer -= 1
            reg = assem.NowChar(True).upper()
            if reg not in "0123":
                # It can't be a register
                error = True
        if assem.NowChar(True) != ')':
            # Something's wrong
            error = True

        if not error:
            # No error found yet
            if reg == 'C':
                reg = '0'
            if reg < '0' or reg > '3':
                # Something's wrong
                error = True
            if reg == '0' and autoindex:
                # P0 is not allowed together with auto indexed mode
                error = True

        if not error:
            # No error occurred, we know everything now
            opcode = opcode + int(reg)
        else:
            # An error did occur
            error = True
    else:
        # No register given, assuming PC, addressing is absolute now

        if not eregister:
            # The offset was not the E register
            # Now we have to calculate the real offset

            # offset is the normal offset
            # offset2 could be the offset when a full page wrap occurred
            #  it is legal to access data at the top of the page, while the
            #  code is still at the bottom

            offset2 = (offset & 0x0FFF) - 0x1000 - (dec.Asm.BOL_Address & 0x0FFF) - 1
            offset = (offset & 0x0FFF) - (dec.Asm.BOL_Address & 0x0FFF) - 1
            absolute = True

            if dec.Asm.Mnemonic[0].upper() == "J":
                # An extra offset for Jump instructions
                offset = offset - 1
                offset2 = offset2 - 1

    if autoindex and reg == '0':
        # Auto indexing doesn't allow the PC register
        error = True

    if error:
        # An error has occurred, tell us about it
        errors.DoError("badoper", False)

    NoMore()
    if dec.Asm.Pass == 2 and not forward:
        # Only test range in pass 2
        if offset < -128 or offset > 127:
            # The normal offset is out of range
            if offset2 < -128 or offset2 > 127:
                # We also didn't do a full page wrap
                errors.DoError('range', False)
            else:
                offset = offset2
        if offset == -128 and absolute:
            # Offset calculated to -128, are you sure!
            errors.DoWarning(dec.Cross.Name + 'offset', True)

    WriteOpcode(opcode)
    WriteOperand(offset)


# -----------------------------------------------------------------------------

def Implied():

    global Asm

    WriteOpcode(dec.Asm.Instructions[dec.Asm.Mnemonic][1])
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]


# -----------------------------------------------------------------------------

def SinglePtr():

    global Asm

    pointer = GetPtr()
    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1] + pointer

    WriteOpcode(opcode)
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    NoMore()


# -----------------------------------------------------------------------------

def Immediate():

    global Asm

    if MissingOperand():
        return

    prefix = '#'
    if assem.NowChar() in '#/=\\':
        prefix = assem.NowChar(True)

    value = assem.EvalExpr()

    if prefix == '#':
        val = value[0] & 255
    elif prefix == '/':
        val = (value[0] >> 8) & 255
    elif prefix == '=':
        val = (value[0] >> 16) & 255
    else:
        val = (value[0] >> 24) & 255

    WriteOpcode(dec.Asm.Instructions[dec.Asm.Mnemonic][1])
    WriteOperand(val)
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    NoMore()


# -----------------------------------------------------------------------------

def Transfer():

    global Asm

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1]
    GetDisplacement(opcode, False)
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]


# -----------------------------------------------------------------------------

def MemRef():

    global Asm

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1]
    GetDisplacement(opcode, True)
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]


# -----------------------------------------------------------------------------

def Pseudo():

    global Asm

    ptr = GetPtr()

    if ptr > 0:
        # Legal pointer used
        if assem.NowChar(True) == ",":
            # A parameter is following
            dest = assem.EvalExpr()[0] - 1
            # LDI /DEST
            WriteOpcode(0xC4)
            WriteOperand((dest >> 8) & 255)
            # XPAH PTR
            WriteOpcode(0x34 + ptr)
            # LDI #DEST
            WriteOpcode(0xC4)
            WriteOperand(dest & 255)
            # XPAL PTR
            WriteOpcode(0x30 + ptr)
            # XPPC PTR
            WriteOpcode(0x3C + ptr)
    else:
        # PC or P0 not allowed
        errors.DoError('badoper', False)
        return

    NoMore()


# -----------------------------------------------------------------------------

if __name__ == '__main__':
    print("")
    print("This is a python module, it's not a program.")
    print("This module is part of the sbasm package.")
    print("Run sbasm instead.")
    print("")
