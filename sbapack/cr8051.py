# ------------------------------------------------------------------------------
#
#   cr8051.py
#
#   Package module file for the SB-Assembler sbasm
#   See www.sbprojects.net for details
#
#   Author: San Bergmans
#   Date  : 2015-12-21
#
#   Cross Overlay for the 8051 family of processors
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

dec.Asm.RB8051 = 0      # Holds the current working register bank


# ------------------------------------------------------------------------------

def Help():

    print('Tell a little story about this cross overlay')
    # New versions of the 8051 may have considerably different timing values.
    # @ prefix may be confused with inderect mode
    # < prefix means forced register mode (only lower 3 bits of any value
    #   are used)
    # > prefix means forced direct mode


# ------------------------------------------------------------------------------

def CrossInit():

    """
    Define the instruction table.
    Select code memory.
    Big endian model.
    Clear memory bank select.
    """

    global Asm, Flags

    assem.CheckVersions(crossversion, minversion)

    dec.Asm.Instructions = {
     'MOV' : (MovInst, '0'),
     'MOVC': (MovCInst, '0'),
     'MOVX': (MovXInst, '0'),

     # A    C    BIT
     'CLR' : (BitInst, (0xE4, 0xC3, 0xC2), ('1', '1', '1')),
     'CPL' : (BitInst, (0xF4, 0xB3, 0xB2), ('1', '1', '1')),
     'SETB': (BitInst, (0x00, 0xD3, 0xD2), ('0', '1', '1')),

     'DA'  : (Specials, 0xD4, '1'),
     'DIV' : (Specials, 0x84, '4'),
     'MUL' : (Specials, 0xA4, '4'),
     'NOP' : (Specials, 0x00, '1'),
     'RET' : (Specials, 0x22, '2'),
     'RETI': (Specials, 0x32, '2'),
     'RL'  : (Specials, 0x23, '1'),
     'RLC' : (Specials, 0x33, '1'),
     'RR'  : (Specials, 0x03, '1'),
     'RRC' : (Specials, 0x13, '1'),
     'SWAP': (Specials, 0xC4, '1'),

     # DIR    A    R0..R7    @R0..@R1    DPTR
     'DEC' : (Singles, (0x15, 0x14, 0x18, 0x16, 0x00),
              ('1', '1', '1', '1', '0')),
     'INC' : (Singles, (0x05, 0x04, 0x08, 0x06, 0xA3),
              ('1', '1', '1', '1', '2')),
     'POP' : (Singles, (0xD0, 0x00, 0x00, 0x00, 0x00),
              ('2', '0', '0', '0', '0')),
     'PUSH': (Singles, (0xC0, 0x00, 0x00, 0x00, 0x00),
              ('2', '0', '0', '0', '0')),

     'ACALL': (Jumps, 0x11, '2'),
     'AJMP' : (Jumps, 0x01, '2'),
     'LCALL': (Jumps, 0x12, '2'),
     'LJMP' : (Jumps, 0x02, '2'),
     'CALL' : (Jumps, 0x91, '0'),
     'JMP'  : (Jumps, 0x81, '0'),

     # A,Rn    A,DIR    A,@Ri   A,#   DIR,A    DIR,#    C,BIT    C,/BIT
     'ADD' : (Math, (0x28, 0x25, 0x26, 0x24, 0x00, 0x00, 0x00, 0x00),
              ('1', '1', '1', '1', '0', '0', '0', '0')),
     'ADDC': (Math, (0x38, 0x35, 0x36, 0x34, 0x00, 0x00, 0x00, 0x00),
              ('1', '1', '1', '1', '0', '0', '0', '0')),
     'ANL' : (Math, (0x58, 0x55, 0x56, 0x54, 0x52, 0x53, 0x82, 0xB0),
              ('1', '1', '1', '1', '1', '2', '2', '2')),
     'ORL' : (Math, (0x48, 0x45, 0x46, 0x44, 0x42, 0x43, 0x72, 0xA0),
              ('1', '1', '1', '1', '1', '2', '2', '2')),
     'SUBB': (Math, (0x98, 0x95, 0x96, 0x94, 0x00, 0x00, 0x00, 0x00),
              ('1', '1', '1', '1', '0', '0', '0', '0')),
     'XCH' : (Math, (0xC8, 0xC5, 0xC6, 0x00, 0x00, 0x00, 0x00, 0x00),
              ('1', '1', '1', '0', '0', '0', '0', '0')),
     'XRL' : (Math, (0x68, 0x65, 0x66, 0x64, 0x62, 0x63, 0x00, 0x00),
              ('1', '1', '1', '1', '1', '2', '0', '0')),

     # A,DIR,REL    A,#,REL    Rn,#,REL    @Ri,#,REL
     'CJNE': (BranchTest, 0xB5, 0xB4, 0xB8, 0xB6),

     # Rn,REL    DIR,REL
     'DJNZ': (BranchLoop, 0xD8, 0xD5),
     'JB'  : (BranchBit, 0x20, '2'),
     'JBC' : (BranchBit, 0x10, '2'),
     'JC'  : (Branch, 0x40, '2'),
     'JNB' : (BranchBit, 0x30, '2'),
     'JNC' : (Branch, 0x50, '2'),
     'JNZ' : (Branch, 0x70, '2'),
     'JZ'  : (Branch, 0x60, '2'),
     'SJMP': (Branch, 0x80, '2'),

     'XCHD': (XchdInst, 0xD6)
    }

    dec.Asm.Timing_Length = 1

    dec.Asm.Memory = 0
    if dec.Asm.Pass == 1:
        sys.stdout.write('Loaded ' + dec.Cross.Name[2:] +
                         ' overlay version ' + crossversion + dec.EOL)

    dec.Asm.Max_Address = dec.MAX16
    dec.Asm.PP_TA_Factor = 1
    dec.Flags.BigEndian = True

    dec.Asm.RB8051 = 0

    return


# ------------------------------------------------------------------------------

def CrossDirective():

    """
    Three directives are handled by this cross overlay.
    One new directive .RB is used to indicate the working register bank
    The existing directive .EQ (and it's equivalent = ) is altered to allow
    bit address labels.
    """

    global Asm

    if len(dec.Asm.Mnemonic) > 1:
        # It's a normal directive, use only the 2 first characters
        directive = dec.Asm.Mnemonic[1:3].upper()
    else:
        # It's most likely the = directive now
        directive = dec.Asm.Mnemonic

    if directive == 'RB':
        # New directive
        DirRB()
        return True

    if directive == '=' or directive == 'EQ':
        # Handle an altered behaviour of the .EQ directive
        # Returns True if directive has been parsed by us.
        return DirEQ()

    return False


# ------------------------------------------------------------------------------

def CrossCleanUp():

    """
    No need to do any cleaning.
    """

    return


# ------------------------------------------------------------------------------

def CrossMnemonic():

    """
    Jump to the mnemonic handling routine.
    """

    global Asm

    if dec.Asm.Mnemonic in dec.Asm.Instructions:
        # We've found the mnemonic, let's call its parsing function
        func = dec.Asm.Instructions[dec.Asm.Mnemonic][0]
        func()
    else:
        # Mnemonic not found
        errors.DoError('badopco', False)


# -----------------------------------------------------------------------------

def MissingOperand():

    """
    An operand is mandatory, so it's an error if one is missing.
    Returns True if the operand is indeed missing.
    """

    if dec.Asm.Parse_Pointer == 0:
        # The operand is missing
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
        # Oops, more is following
        errors.DoWarning('extrign', False)


# -----------------------------------------------------------------------------

def GetReg():

    """
    Return a tupple with a value and register mode.
    The value may not always have a true meaning, in which case it's value
    must be 0.
    Mode = 0:   Not used, reserved for direct mode, which is not parsed here.
    Mode = 1:   A mode (value[0] has no meaning)
    Mode = 2:   R0..R7 mode (value[0] is register number 0..7)
    Mode = 3:   @R0..@R1 mode (value[0] is register number 0..1)
    Mode = 4:   DPTR mode (value[0] has no meaning)
    Mode = 5:   @A+PC mode (value[0] has no meaning)
    Mode = 6:   @A+DPTR mode (value[0] has no meaning)
    Mode = 7:   @DPTR mode (value[0] has no meaning)
    Mode = 8:   # immediate mode (value[0] is the immediate value)
    """

    global Asm

    if assem.NowChar() in '#/=\\':
        # It's immediate mode
        mode = 8
        prefix = assem.NowChar(True)
        value = assem.EvalExpr()
        if prefix == '#':
            register = value[0]
        elif prefix == '/':
            register = value[0] >> 8
        elif prefix == '=':
            register = value[0] >> 16
        else:
            register = value[0] >> 24
        return (register, mode)

    begpntr = dec.Asm.Parse_Pointer
    regname = assem.GetWord().upper()

    if regname == 'A':
        register = 0    # Value doesn't really matter
        mode = 1        # Indicate accu mode
    elif regname in ('R0', 'R1', 'R2', 'R3', 'R4', 'R5', 'R6', 'R7'):
        register = int(regname[1])
        mode = 2        # Indicate register mode
    elif regname in ('@R0', '@R1'):
        register = int(regname[2])
        mode = 3        # Indicate @register mode
    elif regname == 'DPTR':
        register = 0    # Value doesn't really matter
        mode = 4        # Indicate DPTR mode
    elif regname == '@A+PC':
        register = 0    # Value doesn't really matter
        mode = 5        # Indicate @A+PC mode
    elif regname == '@A+DPTR':
        register = 0    # Value doesn't really matter
        mode = 6        # Indicate @A+DPTR mode
    elif regname == '@DPTR':
        register = 0    # Value doesn't really matter
        mode = 7        # Indicate @DPTR mode
    else:
        dec.Asm.Parse_Pointer = begpntr     # Restore parse pointer
        register = 0    # Value doesn't really matter
        mode = 0        # Indicate DIR mode, but this is not confirmed yet!

    return (register, mode)


# -----------------------------------------------------------------------------

def GetRegDir():

    """
    Return a tupple with a value and register mode.
    The value may not always have a true meaningm, in which case it's value
    must be 0.
    Mode = 0:   Direct addressing mode (value[0] is direct address)
    Mode = 1:   A mode (value[0] has no meaning)
    Mode = 2:   R0..R7 mode (value[0] is register number 0..7)
    Mode = 3:   @R0..@R1 mode (value[0] is register number 0..1)
    Mode = 4:   DPTR mode (value[0] has no meaning)
    Mode = 5:   @A+PC mode (value[0] has no meaning)
    Mode = 6:   @A+DPTR mode (value[0] has no meaning)
    Mode = 7:   @DPTR mode (value[0] has no meaning)
    Mode = 8:   # immediate mode (value[0] is the immediate value)
    """

    global Asm

    value = GetReg()
    register = value[0]
    mode = value[1]

    if mode != 0:
        # A valid register was found, don't bother looking any further
        return (register, mode)

    prefix = assem.NowChar()

    if prefix in '@<>':
        # Is it an indirect indicator or a forced direct or register mode
        assem.IncParsePointer()

    value = assem.EvalExpr()

    if prefix == '<':
        # Forced register mode
        if dec.Asm.Pass == 2 and (value[0] >> 5) != 0:
            # Value may not be bigger than 4 * 8 - 1 or negative
            errors.DoError('range', False)

        # Any other value is truncated to register size (forced mode)
        register = value[0] & 7
        # Indicate register mode
        mode = 2
        return (register, mode)

    if prefix == '>':
        # Forced direct mode
        if dec.Asm.Pass == 2 and (value[0] >> 8 != 0):
            # Value may not be more than 0xFF or negative
            errors.DoError('range', False)
        return (value[0], 0)    # Indicate direct mode

    if prefix == '@':
        # Only @R0 or @R1 allowed now, regardless of forward referencing
        register = value[0] & 0x1F
        if dec.Asm.Pass == 2:
            if (value[0] >> 5) != 0:
                # Value is a lot bigger than any register could be
                errors.DoError('range', False)
            if (register >> 3) != dec.Asm.RB8051:
                # Address is not a member of the current register bank
                errors.DoError('range', False)
            if (register & 6) != 0:
                # Only register 0 and 1 allowed being used as index
                errors.DoError('range', False)

        register = value[0] & 1
        mode = 3            # Indicate @ mode

    # Now can only be direct mode or normal register mode
    if dec.Asm.Pass == 2 and (value[0] >> 8 != 0):
        # Value is more than direct mode allows, or negative
        errors.DoError('range', False)

    if not value[1]:
        # No forward referenced label was used, so value is know in both passes
        if value[0] >> 5 != 0:
            # Value is too big to be a register
            register = value[0]
            # Indicate direct mode
            mode = 0
        else:
            # Compare bank of direct address with current bank
            if dec.Asm.RB8051 == (value[0] >> 3):
                # Same bank! Make it a real register
                register = value[0] & 7
                # Indicate register mode
                mode = 2
            else:
                # Not the same bank, use direct mode now
                register = value[0]
                # Indicate direct mode
                mode = 0
    else:
        # Forward referenced label was used, be on the safe side,
        # use direct mode
        register = value[0]
        # Indicate direct mode
        mode = 0

    return (register, mode)


# -----------------------------------------------------------------------------

def MovInst():

    """
    Handle MOV, MOVC and MOVX instructions.
    Expected operand modes:
    MOV    DIR,DIR    DIR,#    DIR,Rn    DIR,@Ri    DIR,A
    MOV    A,DIR      A,#      A,Rn      A,@Ri
    MOV    Rn,DIR     Rn,A     Rn,#      Rn,Rn
    MOV    @Ri,DIR    @Ri,#    @Ri,A
    MOV    DPTR,#
    MOV    BIT,C      C,BIT

    Note: MOV Rn,Rn doesn't exist. It is translated by the assembler to
    MOV Rn,DIR, where register Rn is translated to a direct address according
    to the current working register bank.
    """

    global Asm

    if MissingOperand():
        # We can't do without
        return

    if MovBit():
        # It was a bit MOV instruction, which has already been parsed now
        return

    par1 = GetRegDir()

    if not assem.MoreParameters():
        # We need 2 parameters!
        errors.DoError('missoper', False)
        return

    par2 = GetRegDir()

    if par1[1] == 0:
        # DIR,something
        if par2[1] == 8:
            # It's DIR,#
            target.CodeByte(0x75)
            target.CodeByte(par1[0])
            target.CodeByte(par2[0])
            dec.Asm.Timing = '2'
        elif par2[1] == 0:
            # It's DIR,DIR
            target.CodeByte(0x85)
            target.CodeByte(par2[0])
            target.CodeByte(par1[0])
            dec.Asm.Timing = '2'
        elif par2[1] == 1:
            # It's DIR,A
            target.CodeByte(0xF5)
            target.CodeByte(par1[0])
            dec.Asm.Timing = '1'
        elif par2[1] == 2:
            # It's DIR,Rn
            target.CodeByte(0x88+par2[0])
            target.CodeByte(par1[0])
            dec.Asm.Timing = '2'
        elif par2[1] == 3:
            # It's DIR,@Ri
            target.CodeByte(0x86+par2[0])
            target.CodeByte(par1[0])
            dec.Asm.Timing = '2'
        else:
            # Anything else is wrong
            errors.DoError('badoper', False)

    elif par1[1] == 1:
        # A,something
        if par2[1] == 8:
            # It's A,#
            target.CodeByte(0x74)
            target.CodeByte(par2[0])
            dec.Asm.Timing = '1'
        elif par2[1] == 0:
            # It's A,DIR
            target.CodeByte(0xE5)
            target.CodeByte(par2[0])
            dec.Asm.Timing = '1'
        elif par2[1] == 2:
            # It's A,Rn
            target.CodeByte(0xE8+par2[0])
            dec.Asm.Timing = '1'
        elif par2[1] == 3:
            # It's A,@Ri
            target.CodeByte(0xE6+par2[0])
            dec.Asm.Timing = '1'
        else:
            # Anything else is wrong
            errors.DoError('badoper', False)

    elif par1[1] == 2:
        # Rn,something
        if par2[1] == 8:
            # It's Rn,#
            target.CodeByte(0x78+par1[0])
            target.CodeByte(par2[0])
            dec.Asm.Timing = '1'
        elif par2[1] == 0:
            # It's Rn,DIR
            target.CodeByte(0xA8+par1[0])
            target.CodeByte(par2[0])
            dec.Asm.Timing = '2'
        elif par2[1] == 1:
            # It's Rn,A
            target.CodeByte(0xF8+par1[0])
            dec.Asm.Timing = '1'
        elif par2[1] == 2:
            # It's Rn,Rn (doesn't exist, fake it)
            target.CodeByte(0xA8+par1[0])
            target.CodeByte(par2[0]+(dec.Asm.RB8051 << 3))
            dec.Asm.Timing = '2'
        else:
            # Anything else is wrong
            errors.DoError('badoper', False)

    elif par1[1] == 3:
        # @Ri,something
        if par2[1] == 8:
            # It's @Ri,#
            target.CodeByte(0x76+par1[0])
            target.CodeByte(par2[0])
            dec.Asm.Timing = '1'
        elif par2[1] == 0:
            # It's @Ri,DIR
            target.CodeByte(0xA6+par1[0])
            target.CodeByte(par2[0])
            dec.Asm.Timing = '2'
        elif par2[1] == 1:
            # It's @Ri,A
            target.CodeByte(0xF6+par1[0])
            dec.Asm.Timing = '1'
        else:
            # Anything else is wrong
            errors.DoError('badoper', False)

    elif par1[1] == 4:
        # DPTR,something
        if par2[1] == 8:
            # It's DPTR,#
            target.CodeByte(0x90)
            target.CodeWord(par2[0])
            dec.Asm.Timing = '2'
        else:
            # Anything else is wrong
            errors.DoError('badoper', False)

    else:
        # It was none of the above
        errors.DoError('badoper', False)

    NoMore()


# -----------------------------------------------------------------------------

def MovBit():

    """
    See if first or second operand is a C.
    If it is it is a bit MOV.
    If it is not return False and parse normal MOV.
    """

    global Asm

    # Save the begin pointer in case're on a dead track
    pntr = dec.Asm.Parse_Pointer
    par1 = assem.GetWord().upper()

    if not assem.MoreParameters():
        # We need 2 paarameters
        errors.DoError('missoper', False)
        return

    if par1 == 'C':
        # First parameter is a C

        bitreg = GetBit()

        target.CodeByte(0xA2)
        target.CodeByte(bitreg)
        dec.Asm.Timing = '1'

        NoMore()

        return True

    par2 = assem.GetWord().upper()

    if par2 == 'C':
        # Second parameter is a C

        endpntr = dec.Asm.Parse_Pointer
        dec.Asm.Parse_Pointer = pntr
        bitreg = GetBit()
        dec.Asm.Parse_Pointer = endpntr

        target.CodeByte(0x92)
        target.CodeByte(bitreg)
        dec.Asm.Timing = '2'

        NoMore()

        return True

    # Nope, it's not MOV C, restore pointer and try again
    dec.Asm.Parse_Pointer = pntr

    return False


# -----------------------------------------------------------------------------

def GetBit():

    """
    Legal bit addresses are:
    Direct addresses from 020H.0 to 02FH.7
    SFR addresses which can be devided by 8, followed by .0 to .7
    If the address is not followed by .0 to .7 it is handled as a normal
    address, in which case its value should be below 256.
    """

    global Asm

    pntr = dec.Asm.Parse_Pointer
    par1 = assem.GetWord().upper()
    regbit = 0

    if len(par1) > 2 and par1[-2] == '.' and par1[-1] in '01234567':
        # operand.bit notation. Hide bit number temporarily
        bitno = int(par1[-1])
        parseline = dec.Asm.Parse_Line
        dec.Asm.Parse_Line = parseline[:dec.Asm.Parse_Pointer-2] + ' '
        dec.Asm.Parse_Pointer = pntr
        value = assem.EvalExpr()
        dec.Asm.Parse_Line = parseline
        dec.Asm.Parse_Pointer = dec.Asm.Parse_Pointer + 2

        if dec.Asm.Pass == 2:
            # Only check rage during pass 2
            if value[0] in range(0x20, 0x30):
                # In RAM area
                regbit = ((value[0] & 15) << 3) + bitno
            elif value[0] in range(0x80, 0xFF, 8):
                # In SFR area
                regbit = value[0] + bitno
            else:
                # Not in legal area
                errors.DoError('range', False)

    else:
        # No operand.bit notation, evaluate normally
        dec.Asm.Parse_Pointer = pntr
        value = assem.EvalExpr()
        regbit = value[0]

        if dec.Asm.Pass == 2 and (value[0] >> 8) != 0:
            # Value not between 0 to 255
            errors.DoError('range', False)

    return regbit


# -----------------------------------------------------------------------------

def MovCInst():

    """
    MOVC   A,@A+PC
    MOVC   A,@A+DPTR
    """

    global Asm

    if MissingOperand():
        # We need operands
        return

    par1 = GetReg()

    if not assem.MoreParameters():
        # Only one operand given
        errors.DoError('missoper', False)
        return

    par2 = GetReg()

    if par1[1] != 1 or (par2[1] != 5 and par2[1] != 6):
        # Not the intende operands used
        errors.DoError('badoper', False)
        return

    if par2[1] == 5:
        # A,@A+PC
        target.CodeByte(0x83)
        dec.Asm.Timing = '2'
    else:
        # A,@A+DPTR
        target.CodeByte(0x93)
        dec.Asm.Timing = '2'

    NoMore()


# -----------------------------------------------------------------------------

def MovXInst():

    """
    MOVX   A,@DPTR
    MOV    A,@Ri
    MOV    @DPTR,A
    MOV    @Ri,A
    """

    global Asm

    if MissingOperand():
        # We need some operands
        return

    par1 = GetReg()

    if not assem.MoreParameters():
        # Only one operand given
        errors.DoError('missoper', False)
        return

    par2 = GetReg()

    dec.Asm.Timing = '2'
    if par1[1] == 1:
        # Can be either A,@DPTR or A,@Ri
        if par2[1] == 7:
            # It's A,@DPTR for sure
            target.CodeByte(0xE0)
        elif par2[1] == 3:
            # It's A,@Ri
            target.CodeByte(0xE2+par2[0])
        else:
            # None of the above
            errors.DoError('badoper', False)
            return
    elif par1[1] == 7:
        # It's @DPTR,A mode
        if par2[1] != 1:
            # Second parameter is not A
            errors.DoError('badoper', False)
            return
        target.CodeByte(0xF0)
    elif par1[1] == 3:
        # It's @Ri,A mode
        if par2[1] != 1:
            # Second parameter is not A
            errors.DoError('badoper', False)
            return
        target.CodeByte(0xF2+par1[0])
    else:
        # 1st parameter is wrong
        errors.DoError('badoper', False)
        return

    NoMore()


# -----------------------------------------------------------------------------

def BitInst():

    """
    Handle CLR, CPL and SETB instructions.
    """

    global Asm

    if MissingOperand():
        # Oops, no operands
        return

    pntr = dec.Asm.Parse_Pointer
    par1 = assem.GetWord().upper()

    if par1 == 'A':
        # A parameter
        opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][0]
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][0]
        if opcode == 0:
            # Opcode doesn't exist
            errors.DoError('badoper', False)
        else:
            # Opcode exists
            target.CodeByte(opcode)

    elif par1 == 'C':
        # C parameter
        target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1][1])
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][1]

    else:
        # It's a bit adddress
        dec.Asm.Parse_Pointer = pntr
        par1 = GetBit()
        target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1][2])
        target.CodeByte(par1)
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][2]

    NoMore()


# -----------------------------------------------------------------------------

def Specials():

    """
    Handle all sorts of inherent and one operand instructions. Each one of
    these instructions has only one addressing mode.
    """

    global Asm

    # Let's assume there are no errors and save the opcode already
    target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1])
    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    if dec.Asm.Mnemonic in ('NOP', 'RET', 'RETI'):
        return

    if MissingOperand():
        # All other mnemonics require an operand
        return

    pl = dec.Asm.Parse_Line[dec.Asm.Parse_Pointer:].upper()
    if dec.Asm.Mnemonic in ('DIV', 'MUL'):
        # DIV and MUL require AB as parameter
        if pl[0:3] != 'AB ':
            # AB not given
            errors.DoError('badoper', False)
    else:
        # All others require A as parameter
        if pl[0:2] != 'A ':
            # A not given
            errors.DoError('badoper', False)


# -----------------------------------------------------------------------------

def Singles():

    """
    Handle single operand instructions, where multiple addressing modes are
    allowed per instruction.
    """

    global Asm

    if MissingOperand():
        # No operand given
        return

    value = GetRegDir()
    register = value[0]
    mode = value[1]

    opcode = 0

    if mode <= 4:
        # DIR, A, Rn or @Ri operand
        opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][mode]
        timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][mode]

    if opcode == 0 and mode == 2:
        # Translate non existing Register opcode back to direct opcode
        register = register + (dec.Asm.RB8051 << 3)
        mode = 0
        opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][mode]
        timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][mode]

    if opcode == 0:
        # This addressing mode doesn't exist
        errors.DoError('badoper', False)
    else:
        # Opcode exists
        if mode == 0:
            # Direct mode, save opcode and operand
            target.CodeByte(opcode)
            target.CodeByte(register)
        else:
            # All others require only the opcode
            target.CodeByte(opcode+register)
        dec.Asm.Timing = timing

    NoMore()


# -----------------------------------------------------------------------------

def Jumps():

    """
    Handle xJMP and xCALL instructions. The intelligent JMP and CALL
    instructions determine the addressing mode to be used depending on the
    current location and the destination.
    """

    global Asm

    if MissingOperand():
        # An operand is required
        return

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1]

    if dec.Asm.Mnemonic == 'JMP' and assem.NowChar() == '@':
        # Could be JUMP @A+DPTR
        pntr = dec.Asm.Parse_Pointer
        if assem.GetWord().upper() == '@A+DPTR':
            # It is JMP @A+DPTR indeed
            opcode = 0x73
            target.CodeByte(opcode)
            dec.Asm.Timing = '2'
            NoMore()
            return
        dec.Asm.Parse_Pointer = pntr

    value = assem.EvalExpr()
    addrpage = (value[0] >> 11) & 31
    pcpage = ((dec.Asm.BOL_Address + 2) >> 11) & 31

    if dec.Asm.Mnemonic in ('JMP', 'CALL'):
        # It's smart JMP or CALL, see if we can use A version
        uselong = False
        if value[1]:
            # A forward referenced label was used, always use long version
            uselong = True
        else:
            if addrpage != pcpage:
                # Destination is at different page
                uselong = True
        if uselong:
            # Make it an LJMP or LCALL
            dec.Asm.Mnemonic = 'L' + dec.Asm.Mnemonic
        else:
            # Make it AJMP or ACALL
            dec.Asm.Mnemonic = 'A' + dec.Asm.Mnemonic

    opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1]

    if dec.Asm.Mnemonic[0] == 'L':
        # Long JUMP or CALL
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]
        target.CodeByte(opcode)
        target.CodeWord(value[0])
    else:
        # AJMP or ACALL, check and prepare destination
        if dec.Asm.Pass == 2:
            # Only test range during pass 2 when we're sure of the destination
            if addrpage != pcpage:
                errors.DoError('range', False)
        addrh = (value[0] >> 8) & 7
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]
        target.CodeByte(opcode + (addrh << 5))
        target.CodeByte(value[0])

    if dec.Asm.Pass == 2 and value[0] >> 16 != 0:
        # Destination is beyond 64kB
        errors.DoError('range', False)

    NoMore()


# -----------------------------------------------------------------------------

def Math():

    """
    Handle the math instructions.
    """

    global Asm

    if MissingOperand():
        # We need parameters
        return

    pntr = dec.Asm.Parse_Pointer
    par1 = assem.GetWord().upper()

    if par1 == 'C':
        # Handle bit math instruction
        if not assem.MoreParameters():
            # We need 2 parameters
            errors.DoError('missoper', False)
            return
        opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][6]
        dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][6]
        if assem.NowChar() == '/':
            # It's inverse bit mode
            assem.IncParsePointer()
            opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][7]
            dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][7]
        par2 = GetBit()

        if opcode == 0:
            # Opcode doesn't exist
            errors.DoError('badoper', False)
        else:
            # Opcode does exist, save it to the target, with operand
            target.CodeByte(opcode)
            target.CodeByte(par2)

        NoMore()
        return

    dec.Asm.Parse_Pointer = pntr
    par1 = GetRegDir()
    if not assem.MoreParameters():
        # We need 2 parameters
        errors.DoError('missoper', False)
        return
    par2 = GetRegDir()

    if par1[1] == 2:
        # First operand can't be register, translate it to direct address
        par1 = (dec.Asm.RB8051 * 8 + par1[0], 0)

    if par1[1] == 0:
        # First operand is a direct address
        if par2[1] == 1:
            # DIR,A
            opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][4]
            dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][4]
            if opcode == 0:
                # Opcode doesn't exist
                errors.DoError('badoper', False)
            else:
                # Opcode does exist, save it with operand
                target.CodeByte(opcode)
                target.CodeByte(par1[0])

        elif par2[1] == 8:
            # DIR,#
            opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][5]
            dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][5]
            if opcode == 0:
                # Opcode doesn't exist
                errors.DoError('badoper', False)
            else:
                # Opcode does exist, save it with operands
                target.CodeByte(opcode)
                target.CodeByte(par1[0])
                target.CodeByte(par2[0])

        else:
            # Everything else is illegal
            errors.DoError('badoper', False)

    elif par1[1] == 1:
        # First operand is A
        if par2[1] == 0:
            # A,DIR
            opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][1]
            dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][1]
            target.CodeByte(opcode)
            target.CodeByte(par2[0])

        elif par2[1] == 2:
            # A,Rn
            opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][0]
            dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][0]
            target.CodeByte(opcode+par2[0])

        elif par2[1] == 3:
            # A,@Ri
            opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][2]
            dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][2]
            target.CodeByte(opcode+par2[0])

        elif par2[1] == 8:
            # A,#
            opcode = dec.Asm.Instructions[dec.Asm.Mnemonic][1][3]
            dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2][3]
            if opcode == 0:
                # Opcode doesn't exist
                errors.DoError('badoper', False)
            else:
                # Opcode does exist, save it with operand
                target.CodeByte(opcode)
                target.CodeByte(par2[0])

        else:
            # Illegal second parameter
            errors.DoError('badoper', False)

    else:
        # Illegal first parameter
        errors.DoError('badoper', False)

    NoMore()


# -----------------------------------------------------------------------------

def Branch():

    """
    Handle the simple branch instructions.
    """

    global Asm

    if MissingOperand():
        # We need an operand
        return

    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    value = assem.EvalExpr()
    offset = value[0] - dec.Asm.BOL_Address - 2

    if dec.Asm.Pass == 2 and (offset < -128 or offset > 127):
        # Out of range
        errors.DoError('range', False)

    target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1])
    target.CodeByte(offset)

    NoMore()


# -----------------------------------------------------------------------------

def BranchBit():

    """
    Handle the bit test branch instructions.
    """

    global Asm

    if MissingOperand():
        # We need operands
        return

    dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][2]

    par1 = GetBit()

    if not assem.MoreParameters():
        # Oops only one operand given
        errors.DoError('missoper', False)
        return

    value = assem.EvalExpr()
    offset = value[0] - dec.Asm.BOL_Address - 3

    if dec.Asm.Pass == 2 and (offset < -128 or offset > 127):
        # Out of range
        errors.DoError('range', False)

    target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1])
    target.CodeByte(par1)
    target.CodeByte(offset)

    NoMore()


# -----------------------------------------------------------------------------

def BranchTest():

    """
    Handle the test and branch instructions.
    """

    global Asm

    if MissingOperand():
        # We need operands
        return

    dec.Asm.Timing = '2'

    par1 = GetRegDir()

    if not assem.MoreParameters():
        # We've got only one parameter
        errors.DoError('missoper', False)
        return

    par2 = GetRegDir()

    if not assem.MoreParameters():
        # We've got only two parameters
        errors.DoError('missoper', False)
        return

    value = assem.EvalExpr()
    offset = value[0] - dec.Asm.BOL_Address - 3

    if dec.Asm.Pass == 2 and (offset < -128 or offset > 127):
        # Out of range
        errors.DoError('range', False)

    regoffset = 0

    if par1[1] == 1:
        # First parameter is A
        if par2[1] == 0:
            # It's A,DIR,REL
            index = 1

        elif par2[1] == 8:
            # It's A,#,REL
            index = 2

        elif par2[1] == 2:
            # It's A,Rn,REL which must be translated to A,DIR,REL
            index = 1
            regoffset = dec.Asm.RB8051 << 3

        else:
            index = 0

    elif par1[1] == 2:
        # First parameter is Rn
        if par2[1] == 8:
            # It's Rn,#,REL
            index = 3
        else:
            index = 0

    elif par1[1] == 3:
        # First parameter is @Ri
        if par2[1] == 8:
            # It's @Ri,#,REL
            index = 4
        else:
            index = 0

    else:
        # Anything else is illegal
        index = 0

    if index == 0:
        # Illegal operands
        errors.DoError('badoper', False)
        return

    target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][index]+par1[0])
    target.CodeByte(par2[0] + regoffset)
    target.CodeByte(offset)

    NoMore()


# -----------------------------------------------------------------------------

def BranchLoop():

    """
    Handle the loop instruction.
    """

    global Asm

    if MissingOperand():
        # We need some more information
        return

    dec.Asm.Timing = '2'

    par1 = GetRegDir()

    if not assem.MoreParameters():
        # We've got only one parameter
        errors.DoError('missoper', False)
        return

    value = assem.EvalExpr()

    if par1[1] == 2:
        # It's Rn,REL
        offset = value[0] - dec.Asm.BOL_Address - 2
        target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1]+par1[0])
        target.CodeByte(offset)

    elif par1[1] == 0:
        # It's DIR,REL
        offset = value[0] - dec.Asm.BOL_Address - 3
        target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][2])
        target.CodeByte(par1[0])
        target.CodeByte(offset)

    else:
        # Anything else is illegal
        errors.DoError('badoper', False)
        return

    if dec.Asm.Pass == 2 and (offset < -128 or offset > 127):
        errors.DoError('range', False)

    NoMore()


# -----------------------------------------------------------------------------

def XchdInst():

    """
    Handle the XCHD instruction.
    """

    global Asm

    if MissingOperand():
        # No parameters
        return

    dec.Asm.Timing = '1'

    if assem.NowChar(True).upper() != 'A':
        # First paramter must be an A
        errors.DoError('badoper', False)
        return

    if not assem.MoreParameters():
        # Only one parameter given
        errors.DoError('missoper', False)
        return

    par2 = GetReg()

    if par2[1] != 3:
        # Second parameter may only be @Ri
        errors.DoError('badoper', False)
        return

    target.CodeByte(dec.Asm.Instructions[dec.Asm.Mnemonic][1]+par2[0])

    NoMore()


# -----------------------------------------------------------------------------

def DirRB():

    """
    Select a register bank (0 to 3)
    """

    global Asm

    if MissingOperand():
        # We need an operand
        return

    value = assem.EvalExpr()

    if value[1]:
        # Forward reference labels are not allowed.
        errors.DoError('forwref', False)

    if value[0] >> 2 != 0:
        # Only 0 to 3 are allowed
        errors.DoError('range', False)

    dec.Asm.RB8051 = value[0] & 3


# -----------------------------------------------------------------------------

def DirEQ():

    """
    The normal .EQ directive can't handle bit addresses. Bit address names end
    in .0 to .7
    If the parameter doesn't end in .0 to .7 the normal EQ directive is used
    to handle the assignment.
    Please keep in mind that .0 to .7 may end any evaluatable value.
    Thus SFR.7 is legal, as is 5+SFR*3.5, as long as it results in a legal
    bit address that is.
    This is new behaviour for version 3. So if you want to keep your programs
    compatible with version 2 you'd better not use labels ending in .0 to .7
    using the .EQ directive.
    """

    global Asm

    if dec.Asm.Parse_Pointer == 0:
        # No parameter given
        errors.DoError('missoper', False)
        dec.Asm.New_Label = ""
        return True

    pntr = dec.Asm.Parse_Pointer
    arg = assem.GetWord()
    if not(len(arg) > 2 and arg[-2] == '.' and arg[-1] in '01234567'):
        # It is not a bit notation. No need to DIY
        dec.Asm.Parse_Pointer = pntr
        return False

    # It's a bit address, temporarily end the expression before bit number
    bitno = int(arg[-1])
    parseline = dec.Asm.Parse_Line
    dec.Asm.Parse_Line = parseline[:dec.Asm.Parse_Pointer-2] + ' '
    dec.Asm.Parse_Pointer = pntr
    value = assem.EvalExpr()
    dec.Asm.Parse_Line = parseline
    dec.Asm.Parse_Pointer = dec.Asm.Parse_Pointer + 2

    if dec.Flags.ErrorInLine:
        # Don't assing label if errors found
        dec.Asm.New_Label = ""
    else:
        # No errors found, so far
        if dec.Asm.Pass == 1:
            # Pass 1
            if value[1]:
                # Forward referenced labels not allowed
                errors.DoError('forwref', False)
                dec.Asm.New_Label = ""
            else:
                # Not a forward referenced label
                if value[0] in range(0x20, 0x30):
                    # Legal bit address in RAM
                    val = ((value[0] & 15) << 3) + bitno
                elif value[0] in range(0x80, 0xFF, 8):
                    # Legal bit address in SFR
                    val = value[0] + bitno
                else:
                    # Illegal address for bit addressing
                    errors.DoError('range', False)
                    val = 0

                dec.Asm.BOL_Address = val
                dec.Asm.List_Address = val
                if not assem.NowChar() in ' ,':
                    # Illegal charactes were following the value
                    errors.DoError('badoper', False)
        else:
            # Pass 2
            if value[1]:
                # If the user hasn't done anything stupid,
                # this can never happen
                errors.DoError('forwref', False)
                dec.Asm.New_Label = ""
            else:
                # Normal flow path
                if value[0] in range(0x20, 0x30):
                    # RAM bit address
                    val = ((value[0] & 15) << 3) + bitno
                elif value[0] in range(0x80, 0xFF, 8):
                    # SFR bit address
                    val = value[0] + bitno
                else:
                    # This shouldn't happen either
                    errors.DoError('range', False)
                    val = 0

                dec.Asm.BOL_Address = val
                dec.Asm.List_Address = val
                if not assem.NowChar() in ' ,':
                    # Illegal charactes were following the value
                    errors.DoError('badoper', False)

    return True


# -----------------------------------------------------------------------------

if __name__ == '__main__':
    print("")
    print("This is a python module, it's not a program.")
    print("This module is part of the sbasm package.")
    print("Run sbasm instead.")
    print("")
