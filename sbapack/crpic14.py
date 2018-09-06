# ------------------------------------------------------------------------------
#
#   crpic14.py
#
#   Package module file for the SB-Assembler sbasm
#   See www.sbprojects.net for details
#
#   Author: San Bergmans
#   Date  : 2016-05-13
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

crossversion = '3.01.01'
minversion = '3.01.00'


# ------------------------------------------------------------------------------

def Help():

    print('Tell a little story about this cross overlay')


# ------------------------------------------------------------------------------

def CrossInit():

    global Asm, Flags, Cross

    assem.CheckVersions(crossversion, minversion)

    dec.Asm.Instructions = {
     'ADDLW' : (Immediate, 0x3E00, '1'),
     'ANDLW' : (Immediate, 0x3900, '1'),
     'CALL'  : (Immediate, 0x2000, '2'),
     'GOTO'  : (Immediate, 0x2800, '2'),
     'IORLW' : (Immediate, 0x3800, '1'),
     'MOVLW' : (Immediate, 0x3000, '1'),
     'RETLW' : (Immediate, 0x3400, '2'),
     'SUBLW' : (Immediate, 0x3C00, '1'),
     'XORLW' : (Immediate, 0x3A00, '1'),
     'B'     : (Immediate, 0x2800, '2'),

     'CLRWDT': (Implied, 0x0064, '1'),
     'OPTION': (Implied, 0x0062, '1'),
     'RETFIE': (Implied, 0x0009, '2'),
     'RETURN': (Implied, 0x0008, '2'),
     'SLEEP' : (Implied, 0x0063, '1'),
     'CLRW'  : (Implied, 0x0100, '1'),
     'NOP'   : (Implied, 0x000, '1'),

     'CLRC'  : (Implied, 0x1003, '1'),
     'CLRDC' : (Implied, 0x1083, '1'),
     'CLRZ'  : (Implied, 0x1103, '1'),
     'SETC'  : (Implied, 0x1403, '1'),
     'SETDC' : (Implied, 0x1483, '1'),
     'SETZ'  : (Implied, 0x1503, '1'),
     'SKPC'  : (Implied, 0x1C03, '1-2'),
     'SKPDC' : (Implied, 0x1C83, '1-2'),
     'SKPNC' : (Implied, 0x1803, '1-2'),
     'SKPNDC': (Implied, 0x1883, '1-2'),
     'SKPNZ' : (Implied, 0x1903, '1-2'),
     'SKPZ'  : (Implied, 0x1D03, '1-2'),

     'CLRF'  : (FileOnly, 0x0180, '1'),
     'MOVWF' : (FileOnly, 0x0080, '1'),
     'TRIS'  : (FileOnly, 0x0060, '1'),

     'MOVFW' : (FileOnly, 0x0800, '1'),
     'TSTF'  : (FileOnly, 0x0880, '1'),

     'ADDWF' : (FileW, 0x0700, '1'),
     'ANDWF' : (FileW, 0x0500, '1'),
     'COMF'  : (FileW, 0x0900, '1'),
     'DECF'  : (FileW, 0x0300, '1'),
     'DECFSZ': (FileW, 0x0B00, '1-2'),
     'INCF'  : (FileW, 0x0A00, '1'),
     'INCFSZ': (FileW, 0x0F00, '1-2'),
     'IORWF' : (FileW, 0x0400, '1'),
     'MOVF'  : (FileW, 0x0800, '1'),
     'RLF'   : (FileW, 0x0D00, '1'),
     'RRF'   : (FileW, 0x0C00, '1'),
     'SUBWF' : (FileW, 0x0200, '1'),
     'SWAPF' : (FileW, 0x0E00, '1'),
     'XORWF' : (FileW, 0x0600, '1'),

     'BCF'   : (FileBit, 0x1000 , '1'),
     'BSF'   : (FileBit, 0x1400 , '1'),
     'BTFSC' : (FileBit, 0x1800 , '1-2'),
     'BTFSS' : (FileBit, 0x1C00 , '1-2'),

     'BC'    : (Branches, 0x1803, '2-3'),
     'BDC'   : (Branches, 0x1883, '2-3'),
     'BNC'   : (Branches, 0x1C03, '2-3'),
     'BNDC'  : (Branches, 0x1C83, '2-3'),
     'BNZ'   : (Branches, 0x1D03, '2-3'),
     'BZ'    : (Branches, 0x1903, '2-3'),

     'ADDCF' : (Pseudo, 0x1803, 0x0A00, '2'),
     'ADDDCF': (Pseudo, 0x1883, 0x0A00, '2'),
     'NEGF'  : (Pseudo, 0x0980, 0x0A00, '2'),
     'SUBCF' : (Pseudo, 0x1803, 0x0300, '2'),
     'SUBDCF': (Pseudo, 0x1883, 0x0300, '2'),

     'LCALL' : (Long, 0x2000),
     'LGOTO' : (Long, 0x2800)

    }

    dec.Asm.Timing_Length = 3

    dec.Asm.Memory = 0              # Select code memory as default
    if dec.Asm.Pass == 1:
        sys.stdout.write('Loaded ' + dec.Cross.Name[2:] +
                         ' overlay version ' + crossversion + dec.EOL)

    dec.Asm.Max_Address = 0x0400-1
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

    dec.Asm.TablePic14 = -1

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
        'CT'    : DirCT,
        'CW'    : DirCW,
        'ID'    : DirID,
        'MS'    : DirMS,
        'OT'    : DirOT
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
    Only the RETLW instruction will accept multiple operatnds, which are
    stored sequentially in program memory.
    """

    global Asm

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1]
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    if opcode == 0x3400:
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
            if opcode == 0x2000 or opcode == 0x2800:
                # Allow 11 bits of operand for GOTO
                CodeWord(opcode + (value[0] & 0x7FF))
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

        if not assem.MoreParameters():
            # No more parameters
            break

        if opcode != 0x3400:
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

    if opcode == 0x0060:
        # It's the TRIS command, let's check the range
        if (value < 5 or value > 7) and dec.Asm.Pass == 2:
            # Range error
            errors.DoError("range", False)
        value = value & 7

    CodeWord(opcode + (value & 0x07F))
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

    CodeWord(opcode + (value & 0x7F) + dest)

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

    CodeWord(opcode + (filereg & 0x7F) + (bit << 7))

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
    CodeWord(0x2800 + (dest & 0x07FF))

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

    if opcode == 0x0980:
        # NEGF needs to add the file address
        CodeWord(opcode + (value & 0x7F))
    else:
        # Not NEGF
        CodeWord(opcode)

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    dest = GetDest()

    CodeWord(opcode + (value & 0x7F) + dest)

    NoMore()


# -----------------------------------------------------------------------------

def Long():

    """
    Pseudo instructions to make jumping across page boundaries easier.
    These instructions require the maximum memory size to be set correctly
    using the dedicated .MS directive. With this information the assembler
    will only use the minimum number of required memory bank select bits.
    I deliberately don't load PCLATH directly, because that would destroy
    the contents of the W register. Instead I clear PCLATH first, then set
    only the bits necessary to select the required bank.
    """

    global Asm

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1]
    timing = 2

    dest = assem.EvalExpr()[0]

    if dec.Asm.Max_Address >= 2048:
        # There multible banks

        # Start by clearing PCLATH
        CodeWord(0x018A)
        timing = 3

        if dec.Asm.Max_Address >= 4096:
            # There are even 3 or 4 banks!

            if (dest & 0x1000) != 0:
                # Set bit 4 of PCLATH
                CodeWord(0x160A)
                timing += 1

        if (dest & 0x0800) != 0:
            # Set bit 3 of PCLATH
            CodeWord(0x158A)
            timing += 1

    dec.Asm.Timing = str(timing)
    CodeWord(opcode + (dest & 0x07FF))

    NoMore()


# -----------------------------------------------------------------------------

def GetDest():

    """
    Get the destination for register file instructions.
    It can either accept W or F or nothing.
    Or it can accept any expression as long as it returns 0 or 1
    """

    global Asm

    dest = 0x80

    if assem.MoreParameters():
        # Direction is specified

        temp = dec.Asm.Parse_Pointer

        direction = assem.GetWord().upper()
        if direction == "W":
            # Direction towards W register
            dest = 0
        elif direction == "F":
            # Direction towards File register
            dest = 0x80
        else:
            # Neither W nor F. Must be an expression now
            dec.Asm.Parse_Pointer = temp
            dest = assem.EvalExpr()[0]
            if dec.Asm.Pass == 2 and (dest < 0 or dest > 1):
                # That's a range error!
                errors.DoError('range', False)
            dest = (dest & 1) * 0x80

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
            dec.Asm.Max_Address = 0x1FFF

            # Save a word as usual
            CodeWord(data & 0xFF, list)

            # Restore original limit
            dec.Asm.Max_Address = limit
        else:
            # Combine data with RETLW opcode
            CodeWord(0x3400 + (data & 0xFF), list)
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

    if (dec.Asm.Pass == 2) and (dec.Asm.TablePic14 != -1):
        # The beginning was set, otherwise ignore this directive
        if dec.Asm.TablePic14 != (dec.Asm.BOL_Address >> 8):
            # Oops, not the same page
            # Our last hope is that we're on the first location of the next
            # page, because then the table had ended just in time.
            if dec.Asm.TablePic14 != ((dec.Asm.BOL_Address - 1) >> 8):
                # Nope, we've definately crossed the page!
                errors.DoError(dec.Cross.Name + 'tcrossed', False)

    # Now clear the beginning address
    dec.Asm.TablePic14 = -1


# -----------------------------------------------------------------------------

def DirCW():

    """
    Set the Configuration word.
    This Configuration word is usually stored at word location $2007.
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

    if dec.Asm.Pass == 2 and (config < 0 or config > 0x3FFF):
        # Only 14 bits allowed
        errors.DoError('range', False)

    # Temporarily raise program limit
    limit = dec.Asm.Max_Address
    dec.Asm.Max_Address = 0xFFFF

    # Bypass the RETLW pointer
    target.SaveByte(config & 0xFF)
    target.SaveByte((config >> 8) & 0x3F)

    # Restore original limit
    dec.Asm.Max_Address = limit

    NoMore()


# -----------------------------------------------------------------------------

def DirID():

    """
    Set the ID words.
    These ID words are usually at word location $2000 to $2003.
    The SB-Assembler only checks that the Configuration word is stored beyond
    the program memory.
    ID words can only store the 7 least significant bits. The SB-Assembler
    does not check the range. It simply truncates to 7 bits.
    """

    global Asm, Cross

    id2 = 0
    id3 = 0
    id4 = 0

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

    id1 = assem.EvalExpr()[0]

    if assem.MoreParameters():
        # More than 1 ID word are given
        if assem.NowChar() == '#':
            # Ignore the # symbol
            assem.NowChar(True)

        id2 = assem.EvalExpr()[0]

    if assem.MoreParameters():
        # More than 2 ID word are given
        if assem.NowChar() == '#':
            # Ignore the # symbol
            assem.NowChar(True)

        id3 = assem.EvalExpr()[0]

    if assem.MoreParameters():
        # More than 1 ID word are given
        if assem.NowChar() == '#':
            # Ignore the # symbol
            assem.NowChar(True)

        id4 = assem.EvalExpr()[0]

    # Temporarily raise program limit
    limit = dec.Asm.Max_Address
    dec.Asm.Max_Address = 0xFFFF

    # Save the ID, one nibble at a time
    target.SaveByte(id1 & 0x007F)
    target.SaveByte(0)
    target.SaveByte(id2 & 0x007F)
    target.SaveByte(0)
    target.SaveByte(id3 & 0x007F)
    target.SaveByte(0)
    target.SaveByte(id4 & 0x007F)
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
        if size[0] > 8192 or size[0] < 256:
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
    dec.Asm.TablePic14 = dec.Asm.BOL_Address >> 8


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
