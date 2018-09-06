# ------------------------------------------------------------------------------
#
#   crpic16.py
#
#   Package module file for the SB-Assembler sbasm
#   See www.sbprojects.net for details
#
#   Author: San Bergmans
#   Date  : 2016-05-29
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
     'ADDLW' : (Immediate, 0x0F00, '1'),
     'ANDLW' : (Immediate, 0x0B00, '1'),
     'IORLW' : (Immediate, 0x0900, '1'),
     'MOVLB' : (Immediate, 0x0100, '1'),
     'MOVLW' : (Immediate, 0x0E00, '1'),
     'MULLW' : (Immediate, 0x0D00, '1'),
     'RETLW' : (Immediate, 0x0C00, '2'),
     'SUBLW' : (Immediate, 0x0800, '1'),
     'XORLW' : (Immediate, 0x0A00, '1'),
     'BANKSEL': (Immediate, 0x0100, '1'),

     'CLRWDT': (Implied, 0x0004, '1'),
     'DAW'   : (Implied, 0x0007, '1'),
     'SLEEP' : (Implied, 0x0003, '1'),
     'NOP'   : (Implied, 0x0000, '1'),
     'POP'   : (Implied, 0x0006, '1'),
     'PUSH'  : (Implied, 0x0005, '1'),
     'RESET' : (Implied, 0x00FF, '1'),

     'CLRC'  : (Implied, 0x90D8, '1'),
     'CLRDC' : (Implied, 0x92D8, '1'),
     'CLRZ'  : (Implied, 0x94D8, '1'),
     'CLROV' : (Implied, 0x96D8, '1'),
     'CLRN'  : (Implied, 0x98D8, '1'),
     'SETC'  : (Implied, 0x80D8, '1'),
     'SETDC' : (Implied, 0x82D8, '1'),
     'SETZ'  : (Implied, 0x84D8, '1'),
     'SETOV' : (Implied, 0x86D8, '1'),
     'SETN'  : (Implied, 0x88D8, '1'),
     'SKPC'  : (Implied, 0xA0D8, '1'),
     'SKPDC' : (Implied, 0xA2D8, '1'),
     'SKPZ'  : (Implied, 0xA4D8, '1'),
     'SKPOV' : (Implied, 0xA6D8, '1'),
     'SKPN'  : (Implied, 0xA8D8, '1'),
     'SKPNC' : (Implied, 0xB0D8, '1'),
     'SKPNDC': (Implied, 0xB2D8, '1'),
     'SKPNZ' : (Implied, 0xB4D8, '1'),
     'SKPNOV': (Implied, 0xB6D8, '1'),
     'SKPNN' : (Implied, 0xB8D8, '1'),

     'CLRF'  : (FileOnly, 0x6A00, '1'),
     'CPFSEQ': (FileOnly, 0x6200, '1-3'),
     'CPFSGT': (FileOnly, 0x6400, '1-3'),
     'CPFSLT': (FileOnly, 0x6000, '1-3'),
     'MOVWF' : (FileOnly, 0x6E00, '1'),
     'MULWF' : (FileOnly, 0x0200, '1'),
     'NEGF'  : (FileOnly, 0x6C00, '1'),
     'SETF'  : (FileOnly, 0x6800, '1'),
     'TSTFSZ': (FileOnly, 0x6600, '1-3'),

     'ADDWF' : (FileW, 0x2400, '1'),
     'ADDWFC': (FileW, 0x2000, '1'),
     'ANDWF' : (FileW, 0x1400, '1'),
     'COMF'  : (FileW, 0x1C00, '1'),
     'DECF'  : (FileW, 0x0400, '1'),
     'DECFSZ': (FileW, 0x2C00, '1-3'),
     'DCFSNZ': (FileW, 0x4C00, '1-3'),
     'INCF'  : (FileW, 0x2800, '1'),
     'INCFSZ': (FileW, 0x3C00, '1-3'),
     'INFSNZ': (FileW, 0x4800, '1-3'),
     'IORWF' : (FileW, 0x1000, '1'),
     'MOVF'  : (FileW, 0x5000, '1'),
     'RLCF'  : (FileW, 0x3400, '1'),
     'RLNCF' : (FileW, 0x4400, '1'),
     'RRCF'  : (FileW, 0x3000, '1'),
     'RRNCF' : (FileW, 0x4000, '1'),
     'SUBFWB': (FileW, 0x5400, '1'),
     'SUBWF' : (FileW, 0x5C00, '1'),
     'SUBWFB': (FileW, 0x5800, '1'),
     'SWAPF' : (FileW, 0x3800, '1'),
     'XORWF' : (FileW, 0x1800, '1'),

     'MOVFF' : (FileFile, 0xC000, '2'),

     'CALL'  : (CallGoto, 0xEC00, '2'),
     'GOTO'  : (CallGoto, 0xEF00, '2'),

     'RETFIE': (Returns, 0x0010, '2'),
     'RETURN': (Returns, 0x0012, '2'),

     'LFSR'  : (Lfsr, 0xEE00, '2'),

     'TBLRD' : (TableRW, 0x0008, '2'),
     'TBLWR' : (TableRW, 0x000C, '2'),

     'BCF'   : (FileBit, 0x9000, '1'),
     'BSF'   : (FileBit, 0x8000, '1'),
     'BTFSC' : (FileBit, 0xB000, '1-3'),
     'BTFSS' : (FileBit, 0xA000, '1-3'),
     'BTG'   : (FileBit, 0x7000, '1'),

     'BC'    : (Branches, 0xE200, '1-2'),
     'BN'    : (Branches, 0xE600, '1-2'),
     'BNC'   : (Branches, 0xE300, '1-2'),
     'BNN'   : (Branches, 0xE700, '1-2'),
     'BNOV'  : (Branches, 0xE500, '1-2'),
     'BNZ'   : (Branches, 0xE100, '1-2'),
     'BOV'   : (Branches, 0xE400, '1-2'),
     'BRA'   : (Branches, 0xD000, '2'),
     'BZ'    : (Branches, 0XE000, '1-2'),
     'RCALL' : (Branches, 0xD800, '2')
    }

    dec.Asm.Timing_Length = 3

    dec.Asm.Memory = 0              # Select code memory as default
    if dec.Asm.Pass == 1:
        sys.stdout.write('Loaded ' + dec.Cross.Name[2:] + ' overlay version ' +
                         crossversion + dec.EOL)

    dec.Asm.Max_Address = 0x0800-1
    dec.Asm.PP_TA_Factor = 1
    dec.Flags.BigEndian = False

    dec.Asm.TablePic18 = -1         # Used by .OT and .CT directives
    dec.Asm.AccessBank18 = 0x60     # Devision line for Access Bank

    errors.Error_List[dec.Cross.Name + 'tcrossed'] =\
        'Table crossed page boundary'


# ------------------------------------------------------------------------------

def CrossDirective():

    global Asm

    directives = {
        'AB'    : DirAB,
        'CT'    : DirCT,
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
    Only the RETLW instruction will accept multiple operatnds, which are
    stored sequentially in program memory.
    """

    global Asm

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1]
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    if opcode == 0x0C00:
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

        value = assem.EvalExpr()[0]

        if dec.Asm.Mnemonic == "BANKSEL":
            # BANKSEL is the same as MOVLB with modified operand
            value = (value // 256) & 0x0F

        if not dec.Flags.ErrorInLine:
            # No error in this line, let's continue
            if prefix == '#':
                # Keep lower byte
                value = value & 0xFF
            elif prefix == '/':
                # Keep 2nd lower byte
                value = (value >> 8) & 0xFF
            elif prefix == '=':
                # Keep 2nd upper byte
                value = (value >> 16) & 0xFF
            else:
                # Keep upper byte
                value = (value >> 24) & 0xFF

        if opcode == 0x0100:
            # MOVLB range is limited to 4 bits
            value = value & 0x0F

        CodeWord(opcode + value)

        if not assem.MoreParameters():
            # No more parameters
            break

        if opcode != 0x0C00:
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
    These instructions only require a file register as operand.
    No range checking is done.
    When access bank selector is missing the assembler will determine the
    access bank or BSR mode for you.
    The access bank selector may only be either 0 or 1.
    """

    global Asm

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1]

    value = assem.EvalExpr()[0]

    if assem.MoreParameters():
        # Good, the access bank selector is given. That's easy
        accessbank = assem.EvalExpr()[0]
        if dec.Asm.Pass == 2 and (accessbank < 0 or accessbank > 1):
            # Oops, this is not good
            errors.DoError('range', False)
    else:
        # Now we have to decide
        accessbank = 0
        if value >= dec.Asm.AccessBank18 and value <\
                (dec.Asm.AccessBank18 + 0xF00):
            # Outside of access bank range. Use BSR mode instead
            accessbank = 1

    accessbank = (accessbank & 1) << 8

    CodeWord(opcode + (value & 0x0FF) + accessbank)
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    NoMore()


# -----------------------------------------------------------------------------

def FileW():

    """
    Instructions which can operate on the register file in both directions.
    The direction is either W as destination or F as destination.
    If no destination is specified F is assumed as destination.
    No range checking is performed.
    Only if the destination is given, a 3rd parameter may be given, which
    specifies the access bank. If that parameter is given, a 0 selects the
    access bank, and a 1 selects the BSR register. If the 3rd parameter is
    not given the assembler will select the acces bank mode for you.
    """

    global Asm

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1]
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    value = assem.EvalExpr()[0]

    dest = GetDest(value)

    CodeWord(opcode + (value & 0xFF) + dest)

    NoMore()


# -----------------------------------------------------------------------------

def FileFile():

    """
    MOVFF instruction. Moves a file register to a file register. Both can be
    addressed directly with 12-bits.
    Source or destination can be the W register, if the WREG SFR is used.
    The PCL, TOSU, TOSH and TOSL can't be used as destination. A range error
    is reported if you do use these.
    No other range checking is done though.
    """

    global Asm

    source = assem.EvalExpr()[0] & 0xFFF

    if not assem.MoreParameters():
        # Missing 2nd operand
        errors.DoError('missoper', False)
        dest = 0
    else:
        dest = assem.EvalExpr()[0] & 0xFFF

    CodeWord(dec.Asm.Instructions[dec.Asm.Mnemonic][1] + source)
    CodeWord(0xF000 + dest)
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    if dec.Asm.Pass == 2 and dest in [0xFF9, 0xFFD, 0xFFE, 0xFFF]:
        # PCL, TOSL, TOSH and TOSU can't be used as destination
        errors.DoError('range', False)

    NoMore()


# -----------------------------------------------------------------------------

def Branches():

    """
    Displacement is PC+2+2n.
    Remember, the displacedment is divided by 2 becuase of the word sized
    instructtions. Therefore only even destination addresses are allowed.
    The PC has alread been incremented when before the displacement, that's
    why we add 2 (remember 2x1).
    Displacemnt should result in a value between -128 and +127.
    """

    global Asm

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1]
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    dest = assem.EvalExpr()[0]

    offset = (dest - dec.Asm.BOL_Address - 2) // 2

    if opcode == 0xD000 or opcode == 0xD800:
        # BRA and CALL, use an 11-bit offset
        minoffset = -0x400
        maxoffset = 0x3FF
        mask = 0x7FF
    else:
        # Others use an 8-bit offset
        minoffset = -0x80
        maxoffset = 0x7F
        mask = 0xFF

    if dec.Asm.Pass == 2:
        # Do the range check only during pass 2
        if dest % 2 != 0:
            # Oops, the destination must be an even address
            errors.DoError('range', False)
        if offset < minoffset or offset > maxoffset:
            # Oops, out of range
            errors.DoError('range', False)

    CodeWord(opcode + (offset & mask))

    NoMore()


# -----------------------------------------------------------------------------

def CallGoto():

    """
    Call or Goto a 21 bit destination. Only even numbered destinations
    are allowed.
    In case of a Call an optional parameter may follow the destination.
    This optional parameter must evaluate to 0 or 1. A 0 is used in case
    the parameter is omitted. If the parameter is 1, the registers W,
    STATUS and BSR are pushed on the stack.
    """

    global Asm

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1]
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    dest = assem.EvalExpr()[0]
    stack = 0

    if opcode == 0xEC00 and assem.MoreParameters():
        # Only for Call, the optional parameter is given
        stack = assem.EvalExpr()[0]

    if dec.Asm.Pass == 2:
        # Test ranges only in pass 2
        if (dest % 2) != 0:
            # Distination can't be an odd address
            errors.DoError('range', False)
        if dest < 0 or dest >= 0x1FFFFF:
            # Range error
            errors.DoError('range', False)

    dest = dest // 2

    CodeWord(opcode + ((stack & 1) << 8) + (dest & 0xFF))
    CodeWord(0xF000 + ((dest >> 8) & 0xFFF))

    NoMore()


# -----------------------------------------------------------------------------

def FileBit():

    """
    File register and bit operations.
    The file address is being range checked in order to determine the Access
    Bank selection. The bit range is also checked.
    The access bank selection parameter is optional.
    """

    global Asm

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1]
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    filereg = assem.EvalExpr()[0]
    bitno = 0
    accessbank = 0

    if not assem.MoreParameters():
        # Missing operand
        errors.DoError('missoper', False)
    else:
        # Get the operand
        bitno = assem.EvalExpr()[0]

        if assem.MoreParameters():
            # Good, the access bank selector is given. That's easy
            accessbank = assem.EvalExpr()[0]
            if dec.Asm.Pass == 2 and (accessbank < 0 or accessbank > 1):
                # Oops, this is not good
                errors.DoError('range', False)
        else:
            # Now we have to decide
            if filereg >= dec.Asm.AccessBank18 and filereg <\
                    (dec.Asm.AccessBank18 + 0xF00):
                # Outside of access bank range. Use BSR mode instead
                accessbank = 1

    accessbank = (accessbank & 1) << 8

    if dec.Asm.Pass == 2 and (bitno < 0 or bitno > 7):
        # Range error in bit number
        errors.DoError('range', False)

    CodeWord(opcode + (filereg & 0xFF) + (bitno << 9) + accessbank)

    NoMore()


# -----------------------------------------------------------------------------

def Returns():

    """
    The return instructions will now take an optional parameter, which controls
    whether some registers are copied from their shadow registers (1), or
    not (0).
    The default is 0.
    """

    global Asm

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1]
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    if dec.Asm.Parse_Pointer == 0 or dec.Asm.Optional is False:
        # No parameter is following
        CodeWord(opcode)
    else:
        # Optional parameter given
        flag = assem.EvalExpr()[0]

        CodeWord(opcode + (flag & 1))

        if dec.Asm.Pass == 2 and (flag < 0 or flag > 1):
            # Range error
            errors.DoError('range', False)

        NoMore()


# -----------------------------------------------------------------------------

def Lfsr():

    """
    File one of the 4 File select register pointers with a 12 bit file
    register address.
    File register number is not range checked.
    """

    global Asm

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1]
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    pointer = assem.EvalExpr()[0]

    if not assem.MoreParameters():
        # Missing operand
        errors.DoError('missoper', False)
        register = 0
    else:
        # Get the operand
        register = assem.EvalExpr()[0]

    if dec.Asm.Pass == 2 and (pointer < 0 or pointer > 3):
        # Range error
        errors.DoError('range', False)
        pointer = pointer & 3

    CodeWord(opcode + (pointer << 4) + ((register >> 8) & 0xF))
    CodeWord(0xF000 + (register & 0xFF))

    NoMore()


# -----------------------------------------------------------------------------

def TableRW():

    """
    The parameter can be the following:
    *       00
    *+      01
    *-      10
    +*      11
    """

    global Asm

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1]
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    first = assem.NowChar()
    option = assem.GetWord("*+-", "*+-", " ")

    if option == "*":
        # Just the pointer
        CodeWord(opcode)
    elif option == "*+":
        # Post increment
        CodeWord(opcode + 1)
    elif option == "*-":
        # Post decerement
        CodeWord(opcode + 2)
    elif option == "+*":
        # Pre increment
        CodeWord(opcode + 3)
    else:
        # It's an error, but which one?
        if first == " ":
            # Missing operand
            errors.DoError("missoper", False)
        else:
            # Bad operand
            errors.DoError("badoper", False)


# -----------------------------------------------------------------------------

def GetDest(filereg):

    """
    Get the destination for register file instructions.
    It can either accept W or F or nothing.
    Or it can accept any expression as long as it returns 0 or 1.
    Only when a destination is given the optional access bank selector can
    also be given. If not, the assembler will pick the proper access bank
    mode for you.
    """

    global Asm

    dest = 0x200

    if assem.MoreParameters():
        # Direction is specified

        temp = dec.Asm.Parse_Pointer

        direction = assem.GetWord().upper()
        if direction == "W":
            # Direction towards W register
            dest = 0
        elif direction == "F":
            # Direction towards File register
            dest = 0x200
        else:
            # Neither W nor F. Must be an expression now
            dec.Asm.Parse_Pointer = temp
            dest = assem.EvalExpr()[0]
            if dec.Asm.Pass == 2 and (dest < 0 or dest > 1):
                # That's a range error!
                errors.DoError('range', False)
            dest = (dest & 1) * 0x200

        if assem.MoreParameters():
            # Good, the access bank selector is given. That's easy
            accessbank = assem.EvalExpr()[0]
            if dec.Asm.Pass == 2 and (accessbank < 0 or accessbank > 1):
                # Oops, this is not good
                errors.DoError('range', False)
        else:
            # Now we have to decide
            accessbank = 0
            if filereg >= dec.Asm.AccessBank18 and filereg <\
                    (dec.Asm.AccessBank18 + 0xF00):
                # Outside of access bank range. Use BSR mode instead
                accessbank = 1

    else:
        # Direction was not specified, so access bank select is also automatic
        accessbank = 0
        if filereg >= dec.Asm.AccessBank18 and filereg <\
                (dec.Asm.AccessBank18 + 0xF00):
            # Outside of access bank range. Use BSR mode instead
            accessbank = 1

    dest += (accessbank & 1) << 8

    return dest


# -----------------------------------------------------------------------------

def CodeWord(data, list="True"):

    """
    Write the code word to the target file.
    We don't have to anythong special for the PIC16. We only need to do a
    boundary sync first.
    """

    if dec.Asm.Memory != 0 and not dec.Flags.CodeWarn and dec.Asm.Pass == 2:
        # It's useless to store program code in EEPROM or RAM memory
        dec.Flags.CodeWarn = True
        errors.DoWarning('notcode', True)

    if dec.Asm.Memory == 0:
        # OK, we're in code memory
        if (dec.Asm.PH_Address % 2) != 0:
            # We're at an odd address. Let's save a padding byte
            target.SaveByte(0, False)
            dec.Asm.BOL_Address = dec.Asm.PH_Address
            dec.Asm.List_Address = dec.Asm.PH_Address

        target.SaveByte(data & 0xFF, list)
        target.SaveByte((data >> 8) & 0xFF, list)


# -----------------------------------------------------------------------------

def DirAB():

    """
    This directive is used to change the division between GPR Access Bank
    and SFR Access Bank. Per default this devision is set to $60.
    Legal values range from 0 to 255, even though values larger than 128
    probably never exist.
    Range checking is only done in pass 2.
    You'll have to match the division exactly as being used by your target
    processor. Failure to do so may cause broken programs because the wrong
    registers can be accessed.
    """

    global Asm, Cross

    division = assem.EvalExpr()[0]

    if dec.Asm.Pass == 2 and (division < 0 or division > 255):
        # Range error. Don't change division
        errros.DoError('range', False)
    else:
        # Range was OK
        dec.Asm.AccessBank18 = division

    NoMore()


# -----------------------------------------------------------------------------

def DirCT():

    """
    Check if the table is still in the same memory page as when it was opened.
    Generate an error if it is not.
    Test only during pass 2
    """

    global Asm, Cross

    if (dec.Asm.Pass == 2) and (dec.Asm.TablePic18 != -1):
        # The beginning was set, otherwise ignore this directive
        if dec.Asm.TablePic18 != (dec.Asm.BOL_Address >> 8):
            # Oops, not the same page
            # Our last hope is that we're on the first location of the next
            # page, because then the table had ended just in time.
            if dec.Asm.TablePic18 != ((dec.Asm.BOL_Address - 1) >> 8):
                # Nope, we've definately crossed the page!
                errors.DoError(dec.Cross.Name + 'tcrossed', False)

    # Now clear the beginning address
    dec.Asm.TablePic18 = -1


# -----------------------------------------------------------------------------

def DirMS():

    """
    Set program memory size. It's only used to warn you when the program
    memory is full.

    Setting the memory size to 0 disables memory size checkking. This is
    useful for saving ID, Config and EERPOM data.
    """

    global Asm

    size = assem.EvalExpr()

    if size[1]:
        # A forward referenced label was used
        errors.DoError('forwref', False)
    else:
        # Not a forward refereced label
        if size[0] == 0:
            # Set memory size to infinity and beyond
            dec.Asm.Max_Address = 0x100000000
        else:
            # Not infinite size
            if size[0] > 0x200000 or size[0] < 1024:
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
    dec.Asm.TablePic18 = dec.Asm.BOL_Address >> 8


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
