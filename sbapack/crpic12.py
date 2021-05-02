# ------------------------------------------------------------------------------
#
#   crpic12.py
#
#   Package module file for the SB-Assembler sbasm
#   See www.sbprojects.net for details
#
#   Author: San Bergmans
#   Date  : 2016-05-07
#
#   Cross Overlay Template
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


# ------------------------------------------------------------------------------

def Help():

    print('Tell a little story about this cross overlay')


# ------------------------------------------------------------------------------

def CrossInit():

    global Asm, Flags, Cross

    assem.CheckVersions(crossversion, minversion)

    dec.Asm.Instructions = {
     'RETLW' : (Immediate, 0x800, '2'),
     'CALL'  : (Immediate, 0x900, '2'),
     'GOTO'  : (Immediate, 0xA00, '2'),
     'B'     : (Immediate, 0xA00, '2'),
     'MOVLW' : (Immediate, 0xC00, '1'),
     'IORLW' : (Immediate, 0xD00, '1'),
     'ANDLW' : (Immediate, 0xE00, '1'),
     'XORLW' : (Immediate, 0xF00, '1'),

     'CLRW'  : (Implied, 0x040, '1'),
     'CLRWDT': (Implied, 0x004, '1'),
     'NOP'   : (Implied, 0x000, '1'),
     'OPTION': (Implied, 0x002, '1'),
     'SLEEP' : (Implied, 0x003, '1'),

     'CLRC'  : (Implied, 0x403, '1'),
     'CLRDC' : (Implied, 0x423, '1'),
     'CLRZ'  : (Implied, 0x443, '1'),
     'SETC'  : (Implied, 0x503, '1'),
     'SETDC' : (Implied, 0x523, '1'),
     'SETZ'  : (Implied, 0x543, '1'),
     'SKPC'  : (Implied, 0x703, '1-2'),
     'SKPDC' : (Implied, 0x723, '1-2'),
     'SKPNC' : (Implied, 0x603, '1-2'),
     'SKPNDC': (Implied, 0x623, '1-2'),
     'SKPNZ' : (Implied, 0x643, '1-2'),
     'SKPZ'  : (Implied, 0x743, '1-2'),

     'CLRF'  : (FileOnly, 0x060, '1'),
     'MOVWF' : (FileOnly, 0x020, '1'),
     'TRIS'  : (FileOnly, 0x000, '1'),

     'MOVFW' : (FileOnly, 0x200, '1'),
     'TSTF'  : (FileOnly, 0x220, '1'),

     'ADDWF' : (FileW, 0x1C0, '1'),
     'ANDWF' : (FileW, 0x140, '1'),
     'COMF'  : (FileW, 0x240, '1'),
     'DECF'  : (FileW, 0x0C0, '1'),
     'DECFSZ': (FileW, 0x2C0, '1-2'),
     'INCF'  : (FileW, 0x280, '1'),
     'INCFSZ': (FileW, 0x3C0, '1-2'),
     'IORWF' : (FileW, 0x100, '1'),
     'MOVF'  : (FileW, 0x200, '1'),
     'RLF'   : (FileW, 0x340, '1'),
     'RRF'   : (FileW, 0x300, '1'),
     'SUBWF' : (FileW, 0x080, '1'),
     'SWAPF' : (FileW, 0x380, '1'),
     'XORWF' : (FileW, 0x180, '1'),

     'BCF'   : (FileBit, 0x400 , '1'),
     'BSF'   : (FileBit, 0x500 , '1'),
     'BTFSC' : (FileBit, 0x600 , '1-2'),
     'BTFSS' : (FileBit, 0x700 , '1-2'),

     'BC'    : (Branches, 0x603, '2-3'),
     'BDC'   : (Branches, 0x623, '2-3'),
     'BNC'   : (Branches, 0x703, '2-3'),
     'BNDC'  : (Branches, 0x723, '2-3'),
     'BNZ'   : (Branches, 0x743, '2-3'),
     'BZ'    : (Branches, 0x643, '2-3'),

     'ADDCF' : (Pseudo, 0x603, 0x280, '2'),
     'ADDDCF': (Pseudo, 0x623, 0x280, '2'),
     'NEGF'  : (Pseudo, 0x260, 0x280, '2'),
     'SUBCF' : (Pseudo, 0x603, 0x0C0, '2'),
     'SUBDCF': (Pseudo, 0x623, 0x0C0, '2'),

     'LCALL' : (Long, 0x900),
     'LGOTO' : (Long, 0xA00)
    }

    dec.Asm.Timing_Length = 3

    dec.Asm.Memory = 0              # Select code memory as default
    if dec.Asm.Pass == 1:
        sys.stdout.write('Loaded ' + dec.Cross.Name[2:] +
                         ' overlay version ' + crossversion + dec.EOL)

    dec.Asm.Max_Address = 511
    dec.Flags.BigEndian = False

    # Change target factor to 2
    if dec.Asm.PP_TA_Factor != 2:
        if dec.Asm.PP_Address != dec.Asm.TA_Address or dec.Asm.PP_Address !=\
                dec.Asm.PH_Address:
            # Oops, this is complicated. Let's warn the programmer
            errors.DoWarning('taconfusion', True)
        # Set the instruction size and double the target address
        dec.Asm.PP_TA_Factor = 2
        dec.Asm.TA_Address *= 2

    dec.Asm.TablePic12 = -1

    errors.Error_List[dec.Cross.Name + 'tcrossed'] =\
        'Table crossed page boundary'
    errors.Error_List[dec.Cross.Name + 'codemem'] =\
        'Directive only allowed within Code memory'
    errors.Error_List[dec.Cross.Name + 'progmem'] =\
        'Directive only allowed beyond program memory'

    dec.Cross.SaveByte = eval('SaveByte')


# ------------------------------------------------------------------------------

def CrossDirective():

    global Asm

    directives = {
        'CT': DirCT,
        'CW': DirCW,
        'ID': DirID,
        'MS': DirMS,
        'OT': DirOT
    }

    if len(dec.Asm.Mnemonic) > 1:
        directive = dec.Asm.Mnemonic[1:3]
    else:
        directive = dec.Asm.Mnemonic

    if directive in directives:
        # This directive is handled locally
        directives[directive]()
        return True
    else:
        # This directive is not handled locally
        return False


# ------------------------------------------------------------------------------

def CrossCleanUp():

    """
    Ensure that the Code Memory ends on a word boundary.
    """

    global Asm

    dec.Asm.Memory = 0
    target.BoundarySync()

    DirCT()


# ------------------------------------------------------------------------------

def CrossMnemonic():

    """
    Entry point for parsing the mnemonics for this cross overlay.
    """

    global Asm

    target.BoundarySync()

    if dec.Asm.Mnemonic in dec.Asm.Instructions:
        func = dec.Asm.Instructions[dec.Asm.Mnemonic][0]
        func()
    else:
        errors.DoError('badopco', False)


# -----------------------------------------------------------------------------

def Immediate():

    """
    Immediate operand instructions.
    Instructions optionally accept the traditional # / = and \ prefixes.
    Only GOTO and CALL don't, they are only tolerant to the # prefix
    No range checking is done, other than that CALL desitnation bit-8 is not
    allowed to be 1.
    Only the RETLW instruction will accept multiple operatnds, which are
    stored sequentially in program memory. RETLW also allows no operands,
    which loads 0 in W.
    """

    global Asm

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1]
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    if opcode == 0x800:
        # Operand field may be empty for RETLW instruction
        if dec.Asm.Parse_Pointer == 0 or dec.Asm.Optional is False:
            # No parameter is following
            CodeWord(opcode)
            return

    while True:
        prefix = '#'
        if assem.NowChar() in '#/=\\':
            # A prefix is given, let's get it
            prefix = assem.NowChar(True)

        value = assem.EvalExpr()

        if not dec.Flags.ErrorInLine:
            # No error in this line, let's continue
            if opcode == 0xA00:
                # Allow 9 bits of operand for GOTO
                CodeWord(opcode + (value[0] & 0x1FF))
                if prefix != '#':
                    # Only the default prefix is allowed
                    errors.DoError('badoper', False)
            elif prefix == '#':
                # Save opcode and lower byte
                CodeWord(opcode + (value[0] & 0xFF))
            elif prefix == '/':
                # Save opcode and 2nd lower byte
                CodeWord(opcode + ((value[0] >> 8) & 0xFF))
            elif prefix == '=':
                # Save opcode and 2nd upper byte
                CodeWord(opcode + ((value[0] >> 16) & 0xFF))
            else:
                # Save opcode and upper byte
                CodeWord(opcode + ((value[0] >> 24) & 0xFF))
        else:
            # An erro has occurred write a dummy opcode
            CodeWord(opcode)

        if opcode == 0x900:
            # It's a CALL instruction
            if prefix != '#':
                # Only allow # prefix (as it's the default)
                errors.DoError("badoper", False)

            if dec.Asm.Pass == 2 and (value[0] & 0x100) != 0:
                # Range error
                errors.DoError("range", False)

        if not assem.MoreParameters():
            # No more parameters
            break

        if opcode != 0x800:
            # Only the RETLW instruction allows multiple literal bytes
            errors.DoWarning('extrign', False)


# -----------------------------------------------------------------------------

def Implied():

    """
    Implied addressing mode, which means no parameters are expected.
    """

    global Asm

    CodeWord(dec.Asm.Instructions[dec.Asm.Mnemonic][1])
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]


# -----------------------------------------------------------------------------

def FileOnly():

    """
    These instructions only require a file register as operand. Apart from
    the TRIS instruction, no range checking is done. The only allowed file
    registers for the TRIS commmand are 5, 6 and 7.
    """

    global Asm

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1]

    value = assem.EvalExpr()[0]

    if opcode == 0x000:
        # It's the TRIS command, let's check the range
        if (value < 5 or value > 7) and dec.Asm.Pass == 2:
            # Range error
            errors.DoError("range", False)
        value = value & 7

    CodeWord(opcode + (value & 0x01F))
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    NoMore()


# -----------------------------------------------------------------------------

def FileW():

    """
    Instructions which can operate on the register file in both directions.
    The direction is either W is the destinion or F is the destination.
    If no destination is specified F is assumed as destination.
    No range checking is performed.
    """

    global Asm

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1]
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    value = assem.EvalExpr()[0]

    dest = GetDest()

    CodeWord(opcode + (value & 0x1F) + dest)

    NoMore()


# -----------------------------------------------------------------------------

def FileBit():

    """
    File register and bit operations.
    Only the bit address is being range checked.
    """

    global Asm

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1]
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    filereg = assem.EvalExpr()[0]

    if assem.MoreParameters():
        # Oh, good, something else is following
        bit = assem.EvalExpr()[0]
        if dec.Asm.Pass == 2 and (bit < 0 or bit > 7):
            # Illegal bit number
            errors.DoError('range', False)
            bit = bit & 0x07
    else:
        # Oops, missing operand
        errors.DoError('missoper', False)
        bit = 0

    CodeWord(opcode + (filereg & 0x1F) + (bit << 5))

    NoMore()


# -----------------------------------------------------------------------------

def Branches():

    """
    Pseudo instructions, or compound instructions.
    These instructions mimic branches by combining a bit test on the status
    register and a GOTO
    """

    global Asm

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1]
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    dest = assem.EvalExpr()[0]

    CodeWord(opcode)
    CodeWord(0xA00 + (dest & 0x1FF))

    NoMore()


# -----------------------------------------------------------------------------

def Pseudo():

    """
    Pseudo instructions, or compound instructions.
    These instructions combine a bit test on the status register and an INCF
    """

    global Asm

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1]
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][3]

    value = assem.EvalExpr()[0]

    if opcode == 0x260:
        # NEGF needs to add the file address
        CodeWord(opcode + (value & 0x1F))
    else:
        # Not NEGF
        CodeWord(opcode)

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    dest = GetDest()

    CodeWord(opcode + (value & 0x1F) + dest)

    NoMore()


# -----------------------------------------------------------------------------

def Long():

    """
    Pseudo instructions to make jumping across page boundaries easier.
    These instructions require the maximum memory size to be set correctly
    using the dedicated .MS directive. With this information the assembler
    will only use the minimum number of required memory bank select bits.
    """

    global Asm

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1]
    dec.Asm.Timing = '2'

    dest = assem.EvalExpr()[0]

    if dec.Asm.Max_Address >= 512:
        # There multible banks

        dec.Asm.Timing = '3'

        if dec.Asm.Max_Address >= 1024:
            # There are even 3 or 4 banks!

            dec.Asm.Timing = '4'

            if (dest & 0x400) != 0:
                # Set the PA1 bit in the status register
                CodeWord(0x5C3)
            else:
                # Clear the PA1 bit in the status register
                CodeWord(0x4C3)

        if (dest & 0x200) != 0:
            # Set the PA0 bit in the status register
            CodeWord(0x5A3)
        else:
            # Clear the PA0 bit in the status register
            CodeWord(0x4A3)

    if opcode == 0x900:
        # Handle CALL with some extra care
        if dec.Asm.Pass == 2 and (dest & 0x100) != 0:
            # Range error
            errors.DoError("range", False)
        dest = dest & 0xFF

    CodeWord(opcode + (dest & 0x1FF))

    NoMore()


# -----------------------------------------------------------------------------

def GetDest():

    """
    Get the destination for register file instructions.
    It can either accept W or F or nothing.
    Or it can accept any expression as long as it returns 0 or 1
    """

    global Asm

    # Default destination = 1
    dest = 0x20

    if assem.MoreParameters():
        # Direction is specified

        temp = dec.Asm.Parse_Pointer

        direction = assem.GetWord().upper()
        if direction == "W":
            # Direction towards W register
            dest = 0
        elif direction == "F":
            # Direction towards File register
            dest = 0x20
        else:
            # Neither W nor F. Must be an expression now
            dec.Asm.Parse_Pointer = temp
            dest = assem.EvalExpr()[0]
            if dec.Asm.Pass == 2 and (dest < 0 or dest > 1):
                # That's a range error!
                errors.DoError('range', False)
            dest = (dest & 1) * 0x20

    return dest


# -----------------------------------------------------------------------------

def CodeWord(data, list="True"):

    """
    Write the code word to the target file.
    We can't rely on target.CodeWord because that would change everything into
    RETLW instructions.
    """

    if dec.Asm.Memory != 0 and not dec.Flags.CodeWarn and dec.Asm.Pass == 2:
        dec.Flags.CodeWarn = True
        errors.DoWarning('notcode', True)

    target.SaveByte(data & 0xFF, list)
    target.SaveByte((data >> 8) & 0xFF, list)


# -----------------------------------------------------------------------------

def SaveByte(data, list=True):

    """
    Save byte in code memory. We come here because a directive has generated
    data to be written in code memory. If we're still below the program size
    data bytes need to be translated to RETLW instructions. Otherwise a byte
    has to be stored as a word with high byte 0.
    Also check whether the end of memory is passed, in which case a warning
    is issued.
    """

    global Asm, Cross

    if dec.Asm.Memory == 0:
        # We only need to do something special inside code memory
        if dec.Asm.PH_Address > dec.Asm.Max_Address:
            # We're past the end of program memory. Save as word instead

            # Temporarily raise program limit to avoid warnings
            limit = dec.Asm.Max_Address
            dec.Asm.Max_Address = 0x0FFF

            # Save a word as usual
            CodeWord(data & 0xFF, list)

            # Restore original limit
            dec.Asm.Max_Address = limit
        else:
            # Combine data with RETLW opcode
            CodeWord(0x800 + (data & 0xFF), list)
            # This is an instruction, so it has an execution time
            dec.Asm.Timing = "2"
    else:
        # All other memories can be done as usual
        target.SaveByte(data, list)


# -----------------------------------------------------------------------------

def DirCT():

    """
    Check if the table is still in the same memory page as when it was opened.
    Generate an error if it is not.
    Test only during pass 2
    """

    global Asm, Cross

    if (dec.Asm.Pass == 2) and (dec.Asm.TablePic12 != -1):
        # The beginning was set, otherwise ignore this directive
        if dec.Asm.TablePic12 != (dec.Asm.BOL_Address >> 8):
            # Oops, not the same page
            # Our last hope is that we're on the first location of the next
            # page, because then the table had ended just in time.
            if dec.Asm.TablePic12 != ((dec.Asm.BOL_Address - 1) >> 8):
                # Nope, we've definately crossed the page!
                errors.DoError(dec.Cross.Name + 'tcrossed', False)

    # Now clear the beginning address
    dec.Asm.TablePic12 = -1


# -----------------------------------------------------------------------------

def DirCW():

    """
    Set the Configuration word.
    This Configuration word is usually stored at the last location in memory,
    which is word address $0FFF (or byte addresses ($1FFE and $1FFF).
    Programming devices expect that word to be there. The SB-Assembler only
    checks that the Configuration word is stored beyond the program memory.
    """

    global Asm, Cross

    if dec.Asm.Memory != 0:
        # The .CW directive can only be used in program memory
        errors.DoError(dec.Cross.Name + 'codemem', False)
        return

    if dec.Asm.PH_Address <= dec.Asm.Max_Address:
        # We're still in program memory. We can't have that
        errors.DoError(dec.Cross.Name + 'progmem', False)
        return

    if assem.NowChar() == '#':
        # Ignore the # symbol
        assem.NowChar(True)

    config = assem.EvalExpr()[0]

    if dec.Asm.Pass == 2 and (config < 0 or config > 0x0FFF):
        # Only 12 bits allowed
        errors.DoError('range', False)

    # Temporarily raise program limit
    limit = dec.Asm.Max_Address
    dec.Asm.Max_Address = 0x0FFF

    # Bypass the RETLW pointer
    target.SaveByte(config & 0xFF)
    target.SaveByte((config >> 8) & 0x0F)

    # Restore original limit
    dec.Asm.Max_Address = limit

    NoMore()


# -----------------------------------------------------------------------------

def DirID():

    """
    Set the ID words.
    These ID words are usually stored directly behind the program memory, or
    directly behind the EEPROM memory if that is present.
    The SB-Assembler only checks that the Configuration word is stored beyond
    the program memory.
    """

    global Asm, Cross

    if dec.Asm.Memory != 0:
        # The .ID directive can only be used in program memory
        errors.DoError(dec.Cross.Name + 'codemem', False)
        return

    if dec.Asm.PH_Address <= dec.Asm.Max_Address:
        # We're still in program memory. We can't have that
        errors.DoError(dec.Cross.Name + 'progmem', False)
        return

    if assem.NowChar() == '#':
        # Ignore the # symbol
        assem.NowChar(True)

    id = assem.EvalExpr()[0]

    # Temporarily raise program limit
    limit = dec.Asm.Max_Address
    dec.Asm.Max_Address = 0x0FFF

    # Save the ID, one nibble at a time
    target.SaveByte(id & 0x000F)
    target.SaveByte(0)
    target.SaveByte((id >> 4) & 0x000F)
    target.SaveByte(0)
    target.SaveByte((id >> 8) & 0x000F)
    target.SaveByte(0)
    target.SaveByte((id >> 12) & 0x000F)
    target.SaveByte(0)

    # Restore original limit
    dec.Asm.Max_Address = limit

    NoMore()


# -----------------------------------------------------------------------------

def DirMS():

    """
    Set program memory size. This is important for 4 reasons:
    - The assembler can warn you when you are running out of program memory
    - Data bytes in program memory are to be stored as RETLW instructions
    - The .CW and .ID directevis can't be used within program memory
    - Allow LCALL and LGOTO pseudo ops to determine the number of extra bits
    """

    global Asm

    size = assem.EvalExpr()

    if size[1]:
        # A forward referenced label was used
        errors.DoError('forwref', False)
    else:
        # Not a forward refereced lable
        if size[0] > 2048 or size[0] < 256:
            # That's a range error
            errors.DoError('range', False)
        dec.Asm.Max_Address = size[0] - 1

    NoMore()


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
    dec.Asm.TablePic12 = dec.Asm.BOL_Address >> 8


# -----------------------------------------------------------------------------

def NoMore():

    """
    A useful function which tests if no more parameters are given when we
    don't expect any more at the end of the operand parsing.
    """

    if assem.MoreParameters():
        errors.DoWarning('extrign', False)


# -----------------------------------------------------------------------------

if __name__ == '__main__':
    print("")
    print("This is a python module, it's not a program.")
    print("This module is part of the sbasm package.")
    print("Run sbasm instead.")
    print("")
