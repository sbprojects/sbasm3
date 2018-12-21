# ------------------------------------------------------------------------------
#
#   direct.py
#
#   Package module file for the SB-Assembler sbasm
#   See www.sbprojects.net for details
#
#   Author: San Bergmans
#   Date  : 2015-12-21
#
#   This file contains all the standard directive functions.
#
# ------------------------------------------------------------------------------

"""
   Warning! All directive functions must start with Dir followed
   by a two letter directive name (Capitals). No other functions
   in this module may have the same format, or they will be
   mistaken for a directive handling function by the directive
   gatherer.
"""

import sys
import os
import random
import string
import time

import direct       # Make my function names visible to dir()
import assem
import dec
import errors
import files
import target

dirlist = {}


# -----------------------------------------------------------------------------

def DoDir():

    directive = dec.Asm.Mnemonic[1:3].upper()

    if directive in dirlist:
        dirfunc = dirlist[directive]
        dirfunc()
    else:
        errors.DoError('direrr', False)


# -----------------------------------------------------------------------------

def CreateDirList():

    """
    Dynamically create a list (actually a dictionary) with all the directive
    names and handling functions in it.
    """

    global dirlist

    for i in dir(direct):
        if len(i) == 5 and i[:3] == 'Dir':
            dirlist[i[-2:]] = eval(i)


# -----------------------------------------------------------------------------

def NoMore():

    """
    Rais a warning if more parameters are found than expected
    """

    if assem.MoreParameters():
        # There are more parameters
        if not dec.Flags.ErrorInLine:
            # Raise the warning
            errors.DoWarning('extrign', False)


# -----------------------------------------------------------------------------

def DirAS(mode=0):

    """
    Enter a literal ASCII string.
    The string is saved as is.
    - No Boundary Sync
    """

    global Asm

    if dec.Asm.Parse_Pointer == 0:
        errors.DoError('missoper', False)
        return

    negasc = 0
    illegaldelimiters = string.ascii_letters + string.digits + ',-'
    characters = []
    char = ""
    if assem.NowChar() == '-':
        negasc = 128
        assem.IncParsePointer()

    while True:
        # Literal string may be built from several parts, get them all
        delimit = assem.NowChar(True)
        if delimit == ' ':
            errors.DoError('missoper', False)
            break
        if delimit in illegaldelimiters:
            errors.DoError('illdel', False)
            break
        if delimit == '#':
            # get direct value
            value = assem.EvalExpr()
            val = value[0]
            if (not value[1]) or dec.Asm.Pass == 2:
                # Don't test range in pass 1 if Forward referenced label used
                if val < 0 or val > 255:
                    errors.DoError('range', False)
                    val = value[0] % 256
            characters.append(val | negasc)
        else:
            # get literal string
            count = 0
            while dec.Asm.Parse_Pointer < len(dec.Asm.Parse_Line) - 1:
                char = assem.NowChar(True)
                if char == "\\" and delimit != "\\":
                    # Escape the next character
                    char = assem.NowChar(True)
                else:
                    # Handle this character normally
                    if char == delimit:
                        break
                count = count + 1
                characters.append(ord(char) | negasc)
            if char != delimit:
                # End of line found without delimiter
                errors.DoError('strterm', False)
                break
            if count == 0:
                errors.DoError('strempty', False)
                break
        if not assem.MoreParameters():
            # No more parameters, we're done
            break

    if len(characters) > 0:
        if mode == 1:
            # Last character must be inverted
            characters[-1] = characters[-1] ^ 128
        for i in characters:
            dec.Cross.SaveByte(i)
        if mode == 2:
            # Add an extra 0 to the string of bytes
            dec.Cross.SaveByte(0)


# -----------------------------------------------------------------------------

def DirAT():

    """
    Enter a literal ASCII string.
    The string is terminated by an inverted bit 7 of the last character.
    - No Boundary Sync
    """

    DirAS(1)


# -----------------------------------------------------------------------------

def DirAZ():

    """
    Enter a literal ASCII string.
    The string is terminated by an extra 00.
    - No Boundary Sync
    """

    DirAS(2)


# -----------------------------------------------------------------------------

def DirBI():

    """
    Binary include a file in the format BIN, E52, FPC, HEX, INT, MOT, SIG, or
    TEK.
    - No Boundary Sync
    """

    global Asm

    formats = ('BIN', 'E52', 'FPC', 'HEX', 'INT', 'MOT', 'SIG', 'TEK')

    if dec.Asm.Parse_Pointer == 0:
        # Missing parameter
        errors.DoError('missoper', False)
        return

    filename = assem.GetWord()
    format = 'BIN'

    if assem.MoreParameters():
        format = assem.GetWord().upper()
        if format not in formats:
            errors.DoError('badoper', False)
            return
        if assem.MoreParameters():
            # Too many operands, warn that extra operands are ignored
            errors.DoWarning('extrign', False)

    filename = os.path.normcase(os.path.normpath(filename))

    try:
        # Try to open the source file
        if format == 'BIN':
            bifile = open(filename, 'rb')
        else:
            bifile = open(filename, 'r')
    except:
        # It didn't work
        errors.DoError('bifile', False)
        return

    files.Binclude(bifile, format)
    dec.Asm.List_Address = dec.Asm.BOL_Address

    dec.Flags.ErrorPrinted = False  # No errors found in this file yet


# -----------------------------------------------------------------------------

def DirBS(absolute=False):

    """
    Skip a given number of bytes. Typically used in RAM segment to reserve
    space for variables.
    The behaviour in code memory is different for multi-byte per instruction
    processors.
    On single byte per instruction processors the old behaviour of skipping
    a block if possible is maintained. This proved to be too complicated for
    multi-byte per instruction processors. So there the skipped parts of
    code memory are always filled.
    - Boundary Sync. The label which usueally precedes this directive would
    - have performed a boundary sync anyway.
    """

    global Asm

    target.BoundarySync()

    fill = 0
    fillflag = False

    if dec.Asm.Code_Tformat in ('BIN', 'HEX'):
        # Unformatted files should always use a fill byte
        fillflag = True

    if dec.Asm.Parse_Pointer == 0:
        # No parameters given
        errors.DoError('missoper', False)
        return

    value = assem.EvalExpr()
    if value[1]:
        # A Forward referenced label was used
        errors.DoError('forwref', True)

    if assem.MoreParameters():
        # A fill parameter is given
        fill = assem.EvalExpr()[0]
        fillflag = True

    if dec.Asm.PP_TA_Factor != 1:
        # Multi byte per instruction processors can't skip memory because
        # they may have altered the save routine (PIC with RETLW instructions)
        fillflag = True

    if absolute:
        # Directive .NO was used
        if dec.Asm.Memory == 0:
            # Code memory
            size = (value[0] - dec.Asm.PH_Address) * dec.Asm.PP_TA_Factor
        elif dec.Asm.Memory == 1:
            # RAM memory is easy
            size = value[0] - dec.Asm.RM_Address
        else:
            # EEPROM memory is also easy
            size = value[0] - dec.Asm.EM_Address
    else:
        # Directive .BS was used
        size = value[0]

    if size < 0:
        # Can't have negative number of bytes to skip
        errors.DoError('range', False)

    if dec.Flags.ErrorInLine:
        # Do nothing if an error was encountered
        return

    if size == 0:
        # Nothing to do if the skip size is 0
        return

    # Start the actual work
    if dec.Asm.Memory == 0:
        # We're in Code memory. Can walk different tracks here

        if dec.Asm.PP_TA_Factor == 1:
            # It's a one byte per instruction processor.
            if dec.Asm.Pass == 1 or dec.Asm.Code_Tformat == '':
                # Don't save during Pass 1 or when no target file is open
                # Just count
                dec.Asm.PP_Address += size
                dec.Asm.PH_Address += size
                dec.Asm.TA_Address += size
            else:
                # We're in Pass 2 now
                if size > dec.Asm.Code_Tlength and not fillflag:
                    # No fill byte, formatted file, >line lenth to skip:
                    # Simply skip the entire block
                    target.FlushTarget(0)
                    dec.Asm.PP_Address += size
                    dec.Asm.PH_Address += size
                    dec.Asm.TA_Address += size
                else:
                    # Fill byte, unformatted file or <line length to skip:
                    # Write all bytes one at a time (don't list)
                    while size > 0:
                        dec.Cross.SaveByte(fill, False)
                        size -= 1
        else:
            # It's a multi-byte per instruction processor

            if absolute:
                # The .NO directive was given
                while dec.Asm.PH_Address < value[0]:
                    # Fill bytes up until required address
                    dec.Cross.SaveByte(fill, False)

            else:
                # The .BS directive was given
                while size > 0:
                    dec.Cross.SaveByte(fill, False)
                    size -= 1

    elif dec.Asm.Memory == 1:
        # We're in RAM memory
        # This is simple. Just add the size to the current location
        dec.Asm.RM_Address += size

    else:
        # We're in EEPROM memory, also quite simple
        if dec.Asm.Pass == 1 or dec.Asm.Eeprom_Tformat == '':
            # No need to save anything during Pass 1
            dec.Asm.EM_Address += size
        else:
            # We're in Pass 2 now
            if size > dec.Asm.Eeprom_Tlength and not fillflag:
                # Simply skip the entire block
                target.FlushTarget(2)
                dec.Asm.EM_Address += size
            else:
                # Write all bytes one at a time (don't list)
                while size > 0:
                    dec.Cross.SaveByte(fill, False)
                    size -= 1

    if absolute:
        # It was .NO. Use value is list address
        dec.Asm.List_Address = value[0]
    else:
        # It was .BS. Use begin of line address
        dec.Asm.List_Address = dec.Asm.BOL_Address

    NoMore()


# -----------------------------------------------------------------------------

def DirCH():

    """
    End this include file and begin a new one. If this source is the main
    source file it will behave as .IN.
    - Boundary Sync, new source file will seldom continue task of old source.
    """

    global Asm

    target.BoundarySync()

    if len(dec.Asm.File_Name) == 1:
        # If encountered in main file handle like .IN directive
        DirIN()
    else:
        if dec.Asm.Parse_Pointer == 0:
            # Missing parameter error (fatal)
            errors.DoError('missoper', True)
        else:
            sourcename = assem.GetWord()
            sourcename = files.AddDefaultExt(sourcename, '.asm')

            if sourcename in dec.Asm.File_Name:
                errors.DoError('recurin', True)
            if assem.MoreParameters():
                errors.DoWarning('extrign', False)
            if not dec.Flags.ErrorInLine:
                # Replace current source with new one
                dec.Asm.File_Handle.pop()
                dec.Asm.File_LineNo.pop()
                dec.Asm.File_Name.pop()
                files.OpenSourceFile(sourcename)
                # No errors found in this file yet
                dec.Flags.ErrorPrinted = False


# -----------------------------------------------------------------------------

def DirCO():

    """
    Start a comment only block.
    - Boundary Sync. Will usually enclose no code or data.
    """

    global Flags

    target.BoundarySync()

    dec.Flags.Comment = True


# -----------------------------------------------------------------------------

def DirCR():

    """
    Load a cross overlay.
    Enable debug mode by using .CRD as directive. In debug mode programming
    errors will not be hidden by "try" which will show you where the errors
    are. Otherwise you will only get a fatal assembly error complaining that
    the cross overlay could not be loaded.
    - Boundary Sync will be automatic by the closing of the previous cross.
    """

    global Asm, Cross

    if dec.Asm.Mnemonic[-1] == 'D':
        debug = True
    else:
        debug = False

    if dec.Cross.Name != "":
        # Another cross is already on, clean it up
        dec.Cross.CleanUp()

    # Set default save byte pointer
    dec.Cross.SaveByte = eval('target.SaveByte')
    dec.Asm.PP_TA_Factor = 1

    # Set default program memory size to 64k
    dec.Asm.Max_Address = 1 << 16 - 1

    if dec.Asm.Parse_Pointer == 0:
        # A missing operand is a fatal error here
        errors.DoError('missoper', True)

    crossname = "cr" + assem.GetWord().lower()

    if assem.MoreParameters():
        errors.DoWarning('extrign', False)

    dec.Cross.Name = crossname
    if debug:
        i = __import__('sbapack.' + crossname)
        dec.Cross.Overlay = sys.modules['sbapack.' + crossname]
    else:
        try:
            i = __import__('sbapack.' + crossname)
            dec.Cross.Overlay = sys.modules['sbapack.' + crossname]
        except:
            errors.DoError('crosserr', True)
    dec.Cross.Init = eval('dec.Cross.Overlay.CrossInit')
    dec.Cross.Directive = eval('dec.Cross.Overlay.CrossDirective')
    dec.Cross.Mnemonic = eval('dec.Cross.Overlay.CrossMnemonic')
    dec.Cross.CleanUp = eval('dec.Cross.Overlay.CrossCleanUp')

    dec.Cross.Init()


# -----------------------------------------------------------------------------

def DirDA(reverse=False):

    """
    Enter bytes or words as data.
    Accepts bytes if prefixed by # / = or \.
    Accepts words if not prefixed by any of the above.
    - No Boundary Sync
    """

    global Asm

    if dec.Asm.Parse_Pointer == 0:
        errors.DoError('missoper', False)
        return

    while True:
        # May contain more than one expression, handle them all

        if assem.NowChar() == ' ':
            errors.DoError('missoper', False)
            break

        if assem.NowChar() in '#/=\\':
            prefix = assem.NowChar(True)
        else:
            prefix = ''

        value = assem.EvalExpr()
        if prefix == '':
            # Save word
            if reverse:
                # Save word in reverse order
                if dec.Flags.BigEndian:
                    # Save low byte first
                    dec.Cross.SaveByte(value[0])
                    dec.Cross.SaveByte(value[0] >> 8)
                else:
                    # Save high byte first
                    dec.Cross.SaveByte(value[0] >> 8)
                    dec.Cross.SaveByte(value[0])
            else:
                # Save word in normal order
                target.SaveWord(value[0])
        elif prefix == '#':
            # Save LSB
            dec.Cross.SaveByte(value[0])
        elif prefix == '/':
            # Save LSB+1
            dec.Cross.SaveByte(value[0] >> 8)
        elif prefix == '=':
            # Save MSB-1
            dec.Cross.SaveByte(value[0] >> 16)
        else:
            # Save MSB
            dec.Cross.SaveByte(value[0] >> 24)

        if dec.Flags.ErrorInLine:
            # Don't look further if an error is found in this line
            break

        if not assem.MoreParameters():
            break


# -----------------------------------------------------------------------------

def DirDB():

    """
    Define bytes in a way compatible with most assemblers.
    - No Boundary Sync
    """

    global Asm

    if dec.Asm.Parse_Pointer == 0:
        errors.DoError('missoper', False)
        return

    while True:
        # May contain more than one expression, handle them all

        if assem.NowChar() == ' ':
            errors.DoError('missoper', False)
            break

        if assem.NowChar() in '\'"':
            # It's a string
            count = 0
            delimit = assem.NowChar(True)
            while dec.Asm.Parse_Pointer < len(dec.Asm.Parse_Line) - 1:
                char = assem.NowChar(True)
                if char == "\\":
                    # Escape the next character
                    char = assem.NowChar(True)
                else:
                    # Handle character normally
                    if char == delimit:
                        break
                count = count + 1
                dec.Cross.SaveByte(ord(char))
            if char != delimit:
                # End of line found without delimiter
                errors.DoError('strterm', False)
            if count == 0:
                errors.DoError('strempty', False)
        else:
            # It must be an expression now
            value = assem.EvalExpr()
            dec.Cross.SaveByte(value[0])

        if dec.Flags.ErrorInLine:
            # Don't look further if an error is found in this line
            break

        if not assem.MoreParameters():
            break


# -----------------------------------------------------------------------------

def DirDL():

    """
    Define long words of data.
    - No Boundary Sync
    """

    global Asm

    if dec.Asm.Parse_Pointer == 0:
        errors.DoError('missoper', False)
        return

    while True:
        # May contain more than one expression, handle them all

        if assem.NowChar() == ' ':
            errors.DoError('missoper', False)
            break

        if assem.NowChar() in '#/=\\':
            prefix = assem.NowChar(True)
        else:
            prefix = ''

        value = assem.EvalExpr()
        if prefix == '':
            # Save long
            target.SaveLong(value[0])
        elif prefix == '#':
            # Save LSW
            target.SaveWord(value[0])
        elif prefix == '/':
            # Save LSW+1
            target.SaveWord(value[0] >> 8)
        elif prefix == '=':
            # Save MSW-1
            target.SaveWord(value[0] >> 16)
        else:
            # Save MSW
            target.SaveWord(value[0] >> 24)

        if dec.Flags.ErrorInLine:
            # Don't look further if an error is found in this line
            break

        if not assem.MoreParameters():
            break


# -----------------------------------------------------------------------------

def DirDO():

    """
    Start a new level of conditional assembly
    - No Boundary Sync. I like this directive to be transparent to code
    """

    global Asm

    if dec.Asm.Parse_Pointer == 0:
        errors.DoError('missoper', False)

    if dec.Asm.Cond_False > 0:
        # Don't bother about this condition, overall result will be false
        # anyway. Only increment nesting counter
        dec.Asm.Cond_False += 1
        conditioin = assem.EvalExpr()
    else:
        # Last condition was true, evaluate new condition
        condition = assem.EvalExpr()

        if condition[1]:
            errors.DoError('forwref', False)
            return

        if condition[0] != 0:
            dec.Asm.Cond_True += 1
        else:
            dec.Asm.Cond_False += 1

    if dec.Asm.New_Label != "":
        errors.DoError('illdecl', False)
        dec.Asm.New_Label = ''

    if assem.MoreParameters():
        errors.DoWarning('extrign', False)


# -----------------------------------------------------------------------------

def DirDR():

    """
    Like the .DA directive, but this time with reversed endian model.
    - No Boundary Sync
    """

    DirDA(True)


# -----------------------------------------------------------------------------

def DirDU():

    """
    Switch Dummy mode on. Only allowed in Code memory.
    In Dummy mode no bytes are actually saved to code memory.
    This mode was useful in the old assembler versions for RAM declarations.
    However SB-Assembler 3 has the new .SM directive which can select RAM
    memory for the same purpose.
    My advise is never to use .DU again and use .SM instead because incorrect
    use of .DU can cause errornous programs, without warnings from the
    assembler.
    - Boundary Sync. Why bother actually, programs using .DU won't work anyway.
    """

    global Flags

    target.BoundarySync()

    if dec.Asm.Memory == 0:
        # A parameter is option. See if one is given
        if dec.Asm.Optional:
            # A parameter is given. Set a new ORG before starting DU
            target.NewOrgSet(0)
            value = assem.EvalExpr()
            if value[1]:
                # Can't have forward referenced labels
                errors.DoError('forwref', True)
            if value[0] >= 0:
                # I can live with positive numbers
                dec.Asm.PP_Address = value[0]
                dec.Asm.PH_Address = value[0]
                dec.Asm.TA_Address = value[0] * dec.Asm.PP_TA_Factor
            else:
                # But not with negative numbers
                errors.DoError('range', False)

            dec.Asm.BOL_Address = value[0]
            dec.Asm.List_Address = value[0]

            if assem.MoreParameters():
                errors.DoWarning('extrign', False)

        # Finally do what we came here fore
        dec.Flags.DummyMode = True

    else:
        errors.DoError('onlycode', False)


# -----------------------------------------------------------------------------

def DirDW():

    """
    Define a word as data.
    - No Boundary Sync
    """

    global Asm

    if dec.Asm.Parse_Pointer == 0:
        errors.DoError('missoper', False)
        return

    while True:
        # May contain more than one expression, handle them all

        if assem.NowChar() == ' ':
            errors.DoError('missoper', False)
            break

        value = assem.EvalExpr()
        target.SaveWord(value[0])

        if dec.Flags.ErrorInLine:
            # Don't look further if an error is found in this line
            break

        if not assem.MoreParameters():
            break


# -----------------------------------------------------------------------------

def DirEB():

    """
    Set error bell flag.
    - Boundary Sync
    """

    global Asm, Flags

    target.BoundarySync()

    if dec.Asm.Parse_Pointer > 0:
        param = assem.GetWord().upper()
        if param == 'ON':
            dec.Flags.ErrorBell = True
        elif param == 'OFF':
            dec.Flags.ErrorBell = False
        else:
            errors.DoError('badoper', False)
            return
        if assem.NowChar() == ',':
            errors.DoWarning('extrign')
    else:
        errors.DoError('missoper', False)


# -----------------------------------------------------------------------------

def DirEC():

    """
    The .EC directive should only occur after a comment block.
    If it is found in the wild it must be an orphan.
    Let's warn the user about its existence.
    - Boundary Sync. Why bother, no code was generated since .CO anyway.
    """

    target.BoundarySync()

    errors.DoWarning("orphanec")


# -----------------------------------------------------------------------------

def DirED():

    """
    End dummy mode.
    - Boundary Sync
    """

    global Flags

    target.BoundarySync()

    if dec.Asm.Memory == 0:
        dec.Flags.DummyMode = False
    else:
        errors.DoError('onlycode', False)


# -----------------------------------------------------------------------------

def DirEF():

    """
    Open an error file.
    - Boundary Sync
    """

    global Asm

    target.BoundarySync()

    if dec.Asm.Error_File is not None:
        # Close an already open Error file
        dec.Asm.Error_File.close()
        dec.Asm.Error_File = None

    if dec.Asm.Parse_Pointer == 0:
        return
    else:
        errorfile = assem.GetWord()
        errorfile = files.AddDefaultExt(errorfile, '.err')
        if not dec.Flags.ErrorInLine:
            handle = files.OpenFile(errorfile)
            if not dec.Flags.ErrorInLine:
                dec.Asm.Error_File = handle
        if assem.MoreParameters():
            errors.DoWarning('extrign', False)


# -----------------------------------------------------------------------------

def DirEL():

    """
    Change state of last conditional level.
    - No Boundary Sync.
    """

    global Asm

    if dec.Asm.Cond_True + dec.Asm.Cond_False == 0:
        # No .DO active error
        errors.DoError('missdo', False)
    else:
        # Change condition now
        if dec.Asm.Cond_False == 0:
            dec.Asm.Cond_False = 1
            dec.Asm.Cond_True = dec.Asm.Cond_True - 1
        elif dec.Asm.Cond_False == 1:
            dec.Asm.Cond_False = 0
            dec.Asm.Cond_True = dec.Asm.Cond_True + 1
        else:
            # Do nothing if nested false conditions exist
            # The very first false condition is the only one that counts,
            # all other nested .DOs will be false anyway.
            pass
        if dec.Asm.New_Label != "":
            errors.DoError('illdecl', False)
            dec.Asm.New_Label = ''


# -----------------------------------------------------------------------------

def DirEM():

    """
    The .EM directive should only occur inside a macro definition.
    It is normally handled by the macro definition function.
    If it is found in the wild it must be an orphan.
    Let's warn the user about its existence in pass 2.
    - Boundary Sync
    """

    target.BoundarySync()

    errors.DoWarning("orphanem", True)


# -----------------------------------------------------------------------------

def DirEN():

    """
    Force the main program loop (or macro loop) to initiate an
    end of file.
    - Boundary Sync
    """

    global Flags

    target.BoundarySync()

    dec.Flags.EndFile = True


# -----------------------------------------------------------------------------

def DirEP():

    """
    End Patch mode.
    - Boundary Sync
    """

    global Asm

    target.BoundarySync()

    if dec.Asm.Memory == 0:
        dec.Asm.PH_Address = dec.Asm.PP_Address
        dec.Asm.BOL_Address = dec.Asm.PP_Address
        dec.Asm.List_Address = dec.Asm.PP_Address
    else:
        errors.DoError('onlycode', False)


# -----------------------------------------------------------------------------

def DirEQ():

    """
    Replace the default begin of line address with the parameter's value.
    This value is later used by the AssignLabel function.
    - Boundary Sync will be automatic because of the label in the label field
    """

    global Asm

    if dec.Asm.Parse_Pointer == 0:
        # No parameter given
        errors.DoError('missoper', False)
        dec.Asm.New_Label = ""
        return

    if dec.Asm.New_Label == "":
        # No label is given
        errors.DoError('nolabel', False)
        return

    value = assem.EvalExpr()
    if dec.Flags.ErrorInLine:
        # Don't assing label if errors found
        dec.Asm.New_Label = ""
    else:
        # No errors found, so far
        if dec.Asm.Pass == 1:
            # Pass 1
            if value[1]:
                # A forward referenced label was used as parameter
                errors.DoError('forwref', False)
                dec.Asm.New_Label = ""
            else:
                # Replace default line address with parameter's value
                dec.Asm.BOL_Address = value[0]
                dec.Asm.List_Address = value[0]
                if not assem.NowChar() in ' ,':
                    # Only a space or a comma is tolerated as next char
                    errors.DoError('badoper', False)
        else:
            # Pass 2
            if value[1]:
                # A forward referenced label was used as parameter
                # If the user hasn't done anything stupid, this can never
                # happen
                errors.DoError('forwref', False)
                dec.Asm.New_Label = ""
            else:
                # Replace default line address with parameter's value
                dec.Asm.BOL_Address = value[0]
                dec.Asm.List_Address = value[0]
                if not assem.NowChar() in ' ,':
                    # Only a space or a comma is tolerated as next char
                    # This souldn't be possible.
                    errors.DoError('badoper', False)


# -----------------------------------------------------------------------------

def DirER():

    """
    Raise a user defined error or warning.
    - Boundary Sync
    """

    target.BoundarySync()

    if dec.Asm.Parse_Pointer == 0:
        # Default user error
        errors.DoError('usererr', False, False)
    else:
        flag = False
        if dec.Asm.Parse_Line[dec.Asm.Parse_Pointer:].upper().strip() in "WF":
            # A default user warning or fatal error is given
            userflag = False
            if assem.NowChar().upper() == 'W':
                text = 'userwarn'
                todo = errors.DoWarning
            else:
                flag = True
                text = 'usererr'
                todo = errors.DoError
        else:
            userflag = True
            if dec.Asm.Parse_Line[dec.Asm.Parse_Pointer:dec.Asm.Parse_Pointer
                                  + 2].upper() in ("W,", "F,"):
                # warning or fatal error
                text = dec.Asm.Parse_Line[dec.Asm.Parse_Pointer+2:].lstrip()
                if text.strip() == '':
                    text = dec.Asm.Parse_Line[dec.Asm.Parse_Pointer:]
                    flag = False
                    todo = errors.DoError
                else:
                    if assem.NowChar().upper() == 'W':
                        todo = errors.DoWarning
                    else:
                        flag = True
                        todo = errors.DoError
            else:
                # Custum user error is given
                text = dec.Asm.Parse_Line[dec.Asm.Parse_Pointer:]
                todo = errors.DoError
        todo(text, flag, userflag)


# -----------------------------------------------------------------------------

def DirFI():

    """
    End most recent level of conditional assembly.
    - No Boundary Sync
    """

    global Asm

    if dec.Asm.Cond_True + dec.Asm.Cond_False == 0:
        # No .DO active error
        errors.DoError('missdo', False)
    else:
        if dec.Asm.Cond_False > 0:
            # First work our way down the nested false coditions
            dec.Asm.Cond_False -= 1
        else:
            # Only when there are no more false conditions decrement true
            # nesting
            dec.Asm.Cond_True -= 1
        if dec.Asm.New_Label != "":
            errors.DoError('illdecl', False)
            dec.Asm.New_Label = ''


# -----------------------------------------------------------------------------

def DirHS():

    """
    Generate simple hex string
    - No Boundary Sync
    """

    global Asm

    if dec.Asm.Parse_Pointer == 0:
        errors.DoError('missoper', False)
        return

    while True:
        if assem.NowChar() == ' ':
            break
        if assem.NowChar() == '.':
            assem.IncParsePointer()
        hexval = assem.NowChar(True)
        if hexval == ' ':
            errors.DoError('missoper', False)
            break
        if hexval not in string.hexdigits:
            errors.DoError('illhex', False)
            break
        char = assem.NowChar(True)
        if char not in string.hexdigits:
            errors.DoError('illhex', False)
            break
        dec.Cross.SaveByte(int(hexval + char, 16))


# -----------------------------------------------------------------------------

def DirIN():

    """
    Inlcude a new source file.
    - Boundary Sync. New file will most likely not continue what old file
      was doing
    """

    global Asm

    target.BoundarySync()

    if dec.Asm.Parse_Pointer == 0:
        # Missing parameter error (fatal)
        errors.DoError('missoper', True)
    else:
        sourcename = assem.GetWord()
        sourcename = files.AddDefaultExt(sourcename, '.asm')
        if sourcename in dec.Asm.File_Name:
            errors.DoError('recurin', True)
        if assem.MoreParameters():
            errors.DoWarning('extrign', False)
        if not dec.Flags.ErrorInLine:
            files.OpenSourceFile(sourcename)
            dec.Flags.ErrorPrinted = False  # No errors found in this file yet
        if assem.MoreParameters():
            errors.DoWarning('extrign', False)


# -----------------------------------------------------------------------------

def DirLF():

    """
    Open a list file.
    - Boundary Sync
    """

    global Asm

    target.BoundarySync()

    if dec.Asm.List_File != sys.stdout:
        # Close an already open list file, if it's not stdout that is
        dec.Asm.List_File.close()
        dec.Asm.List_File = sys.stdout
        dec.Asm.List_Length = 256

    if dec.Asm.Parse_Pointer == 0:
        # A lonely .LF directive will close an open file. We're done
        return
    else:
        listfile = assem.GetWord()
        listfile = files.AddDefaultExt(listfile, '.lst')
        maxlength = 256
        if assem.MoreParameters():
            if assem.NowChar() == ' ':
                errors.DoError('missoper', False)
            else:
                value = assem.EvalExpr()
                if not dec.Flags.ErrorInLine:
                    maxlength = value[0]
                    if maxlength < 64:
                        maxlength = 64
                    if maxlength > 256:
                        maxlength = 256
        if not dec.Flags.ErrorInLine:
            handle = files.OpenFile(listfile)
            if not dec.Flags.ErrorInLine:
                dec.Asm.List_File = handle
                dec.Asm.List_Length = maxlength
        if assem.MoreParameters():
            errors.DoWarning('extrign', False)


# -----------------------------------------------------------------------------

def DirLI():

    """
    Change list flags.
    + ON|OFF    Change main list flag. Nothing is listed if off
    + MON|MOFF  Change macro list flag. Macro expansions are not listed if off.
    + CON|COFF  Change conditional list flag. Fals conditions are not listed
                if off.
    + TON|TOFF  Change Timing list flag. Instruction times are listed if on
    All flags default to on, except the Timing list flag.
    - Boundary Sync
    """

    global Asm, Flags

    target.BoundarySync()

    if dec.Asm.Parse_Pointer == 0:
        errors.DoError('missoper', False)
        return

    while True:
        param = assem.GetWord().upper()
        if param == '':
            errors.DoWarning('extrign')
            break
        elif param == 'ON':
            dec.Flags.List = True
        elif param == 'OFF':
            dec.Flags.List = False
        elif param == 'MON':
            dec.Flags.Mlist = True
        elif param == 'MOFF':
            dec.Flags.Mlist = False
        elif param == 'CON':
            dec.Flags.Clist = True
        elif param == 'COFF':
            dec.Flags.Clist = False
        elif param == 'TON':
            dec.Flags.Tlist = True
        elif param == 'TOFF':
            dec.Flags.Tlist = False
        else:
            errors.DoError('badoper', False)
            break

        if not assem.MoreParameters():
            break


# -----------------------------------------------------------------------------

def DirMA():

    """
    Start a macro definition.
    The name of the macro may be in the label field, or it may also follow in
    the operand field.
    - Boundary Sync
    """

    global Asm

    target.BoundarySync()

    macroname = dec.Asm.New_Label
    dec.Asm.New_Label = ""
    if macroname == '':
        # No macro name in label field. Must be in operand field now!
        if dec.Asm.Parse_Pointer == 0:
            # No parameter given!
            errors.DoError('missmacn', False)
            return
        macroname = assem.GetLabelName(False)
        if macroname == '' or (not assem.NowChar() in ' ,'):
            errors.DoError('illmacn', False)
            return

    # Macro name must start with a letter
    if not macroname[0] in (string.ascii_uppercase + "_"):
        errors.DoError('illmacn', False)
        return

    if dec.Asm.Pass == 1:
        # Only create new macro during pass 1
        if macroname in dec.Asm.Macro:
            # Extra definition error!
            errors.DoError('extdef', False)
        else:
            dec.Asm.Macro[macroname] = []   # Create new name:list pair
    dec.Asm.Macro_Def = macroname           # Set macro definition flag

    if assem.NowChar() == ',':
        errors.DoWarning('extrign', False)


# -----------------------------------------------------------------------------

def DirNO():

    """
    Change the current program pointer to a new value. Not by brute force, but
    by filling the gap. This is useful for unformatted target files which
    don't have an address field.
    - Boundary Sync.
    """

    # Works the same as .BS with the only differences that its parameter is
    # to be used as absolute destination in this case

    DirBS(True)


# -----------------------------------------------------------------------------

def DirOR():

    """
    Change the program pointer to a new value.
    Unformatted target files will be closed if their length > 0
    Unlike with version 2, this will generate a warning to the user.
    - Boundary Sync. For obvious reasons I think
    """

    global Asm, Flags

    target.BoundarySync()

    if dec.Asm.Memory == 0:
        # New ORG for code memory
        dec.Flags.DummyMode = False
        target.NewOrgSet(0)
        value = assem.EvalExpr()
        if value[1]:
            # Forward referenced labels not allowed
            errors.DoError('forwref', True)
        if value[0] >= 0:
            # I can allow this
            dec.Asm.PP_Address = value[0]
            dec.Asm.PH_Address = value[0]
            dec.Asm.TA_Address = value[0] * dec.Asm.PP_TA_Factor
        else:
            # I can't allow negative addresses
            errors.DoError('range', False)

    elif dec.Asm.Memory == 1:
        # New ORG for RAM memory
        value = assem.EvalExpr()
        if value[1]:
            # Forward referenced labels not allowed
            errors.DoError('forwref', True)
        if value[0] >= 0:
            # I can allow this
            dec.Asm.RM_Address = value[0]
        else:
            # I can't allow negative address
            errors.DoError('range', False)

    else:
        # New ORG for EEPROM memory
        target.NewOrgSet(2)
        value = assem.EvalExpr()
        if value[1]:
            # Forward referenced labels not allowed
            errors.DoError('forwref', True)
        if value[0] >= 0:
            # I can allow this
            dec.Asm.EM_Address = value[0]
        else:
            # I can't allow negative address
            errors.DoError('range', False)

    dec.Asm.BOL_Address = value[0]
    dec.Asm.List_Address = value[0]

    if assem.MoreParameters():
        errors.DoWarning('extrign', False)


# -----------------------------------------------------------------------------

def DirPH():

    """
    Start Patch mode. In Patch mode the visible program pointer gets a new
    addres, while the invisible program pointer remains at it's old value.
    They will be incremented simultaneously to keep them in sync.
    - Boundary Sync
    """

    global Asm

    target.BoundarySync()

    if dec.Asm.Memory == 0:
        if dec.Asm.Parse_Pointer > 0:
            value = assem.EvalExpr()
            if value[1]:
                # Forward referenced labels not allowed
                errors.DoError('forwref', False)
            else:
                if value[0] >= 0:
                    # I can live with that
                    dec.Asm.PH_Address = value[0]
                    dec.Asm.BOL_Address = dec.Asm.PP_Address
                    dec.Asm.List_Address = dec.Asm.PP_Address
                    if assem.MoreParameters():
                        # More parameters given than expected
                        errors.DoWarning('extrign', False)
                else:
                    # I can't except negative values though
                    errors.DoError('range', False)
        else:
            errors.DoError('missoper', False)
    else:
        errors.DoError('onlycode', False)


# -----------------------------------------------------------------------------

def DirRF():

    """
    Fill a block of memory with a random sequence of bytes.
    Seeded random sequences may differ on different platforms.
    - No Boundary Sync
    """

    global Asm

    if dec.Asm.Parse_Pointer == 0:
        errors.DoError('missoper', False)
        return

    value = assem.EvalExpr()
    if value[1]:
        # Can't have forward referenced labels
        errors.DoError('forwref', False)
    if value[0] < 0:
        # Can't have negative number of bytes
        errors.DoError('range', False)

    if dec.Flags.ErrorInLine:
        return

    size = value[0]
    if assem.MoreParameters():
        # A seed is given
        seed = assem.EvalExpr()[1]
        random.seed(seed)
    else:
        # No seed was given, randomize the seed with system time
        random.seed()

    if assem.MoreParameters():
        # No more parameters are allowed
        errors.DoWarning('extrign', False)
        return

    if dec.Asm.Pass == 2:
        # Only in pass 2 do the actual random fill
        while size > 0:
            # Fill up to size with random numbers
            dec.Cross.SaveByte(random.randint(0, 255), False)
            size = size - 1
    else:
        # In pass 1 simply fill with dummy, which is faster
        while size > 0:
            # Fill up to size with random numbers
            dec.Cross.SaveByte(0, False)
            size = size - 1

    dec.Asm.List_Address = dec.Asm.BOL_Address


# -----------------------------------------------------------------------------

def DirRU():

    """
    This directive is used to run an external command only when the
    assembler exits without an error.
    It can be used to start an Eprom Emulator or other programming
    tool after assembly is completed.
    """

    global Asm

    if dec.Asm.Parse_Pointer == 0:
        errors.DoError('missoper', False)
        return

    dec.Asm.Run_Command = dec.Asm.Parse_Line[dec.Asm.Parse_Pointer:]


# -----------------------------------------------------------------------------

def DirSE():

    """
    This directive is handled almost the same as the .EQ directive.
    One of the differences is the variable flag, which is set eventually when
    the label is defined. This is achieved in the definition routine by
    looking at the mnemonic name. If it's .SE it is a variable, otherwise
    it's a constant.
    The second difference is that the label won't be recorded as the last
    defined label, as to not do disturb local and macro labels.
    - Boundary Sync will be automatic because of label in label field.
    """

    DirEQ()


# -----------------------------------------------------------------------------

def DirSF():

    """
    Create a symbol file. The symbol file is created at the end of pass 2,
    regardless of where the .SY directive is given.
    - Boundary Sync
    """

    global Asm

    target.BoundarySync()

    if dec.Asm.Pass == 1:
        return

    if dec.Asm.Symbol_File is not None:
        # Only one symbol file allowed here
        errors.DoWarning('extrsym', True)
        return

    if dec.Asm.Parse_Pointer == 0:
        errors.DoError('missoper', False)
    else:
        symbolfile = assem.GetWord()
        symbolfile = files.AddDefaultExt(symbolfile, '.sym')
        handle = files.OpenFile(symbolfile)
        if not dec.Flags.ErrorInLine:
            dec.Asm.Symbol_File = handle
        if assem.MoreParameters():
            errors.DoWarning('extrign', False)


# -----------------------------------------------------------------------------

def DirSM():

    """
    Select memory: CODE, RAM, EEPROM
    - Boundary Sync
    """

    global Asm

    target.BoundarySync()

    if dec.Asm.New_Label != '':
        # A label is not allowed here, raise error but ignore the label
        errors.DoError('illdecl', False)

    if dec.Asm.Parse_Pointer == 0:
        errors.DoError('missoper', False)
        return

    param = assem.GetWord().upper()
    if param == 'CODE' or param == 'C':
        # Select code memory
        dec.Asm.Memory = 0
        dec.Asm.BOL_Address = dec.Asm.PH_Address
        dec.Asm.List_Address = dec.Asm.PH_Address
    elif param == 'RAM' or param == 'R':
        # Select RAM memory
        dec.Asm.Memory = 1
        dec.Asm.BOL_Address = dec.Asm.RM_Address
        dec.Asm.List_Address = dec.Asm.RM_Address
    elif param == 'EEPROM' or param == 'E':
        # Select EEPROM memory
        dec.Asm.Memory = 2
        dec.Asm.BOL_Address = dec.Asm.EM_Address
        dec.Asm.List_Address = dec.Asm.EM_Address
    else:
        errors.DoError('badoper', False)
        return
    if assem.NowChar() == ',':
        errors.DoWarning('extrign')


# -----------------------------------------------------------------------------

def DirTA():

    """
    The .TA directive is back. But its function is totally different from
    the function of the Apple SB-Assembler.
    Here it determines the target address in ROM, which is a lot easier than
    the .PH mechanism to fit the produced code to the ROM address map.
    - Boundary Sync
    """

    global Asm

    target.BoundarySync()

    if dec.Asm.Memory == 0:
        # Only on code memory
        value = assem.EvalExpr()
        if value[1]:
            # No forward referenced labels are allowed
            errors.DoError('forwref', False)
        else:
            # OK, no forward referenced label used
            if value[0] >= 0:
                # I can live with positive numbers
                if dec.Asm.Pass == 2:
                    # Flush target file when in pass 2
                    target.FlushTarget(0)

                dec.Asm.TA_Address = value[0]
                if assem.MoreParameters():
                    # Too many operands given, ignore extras
                    errors.DoWarning('extrign', False)
            else:
                # I can't live with negative numbers
                errors.DoError('range', False)
    else:
        # .TA found on other than code memory segment
        errors.DoError('onlycode', False)


# -----------------------------------------------------------------------------

def DirTF():

    """
    Open a target file. You can select between several different output
    formats.
    A previously opened target file will be closed first.
    - Boundary Sync
    """

    global Asm

    target.BoundarySync()

    if dec.Asm.Pass == 1 or dec.Flags.ErrorInLine:
        # Not to worry about target files during pass 1
        return

    formats = ('AP1', 'BIN', 'E52', 'HEX', 'S19', 'S28', 'S37', 'INT', 'INS',
               'SIG', 'TEK', 'FPC', 'MOS')

    if dec.Asm.Memory == 1:
        errors.DoError('notram', False)
        return

    target.CloseTarget(dec.Asm.Memory)

    if dec.Asm.Parse_Pointer == 0:
        # Only close the file, then we're done
        return

    filename = assem.GetWord()

    format = 'BIN'
    targetlen = 16

    if assem.MoreParameters():
        format = assem.GetWord().upper()
        if format not in formats:
            errors.DoError('badoper', False)
            return
        if assem.MoreParameters():
            value = assem.EvalExpr()
            if dec.Asm.Pass == 2 and (value[0] < 8 or value[0] > 32):
                errors.DoError('range', False)
                return
            targetlen = value[0]
            if assem.MoreParameters():
                errors.DoWarning('extrign', False)

    filename = os.path.normcase(os.path.normpath(filename))

    try:
        if format == 'BIN':
            tfile = open(filename, 'wb')
        else:
            tfile = open(filename, 'w')
    except:
        errors.DoError('wropen', False)
        return

    if format in ('BIN', 'HEX', 'S37', 'INT', 'INS', 'FPC'):
        # These formats don't have 64k limit
        maxaddress = (1 << 32) - 1
    elif format == 'S28':
        # This format has 24 bit address limit
        maxaddress = (1 << 24) - 1
    else:
        # All other formats have a 64k limit
        maxaddress = 65535

    if dec.Asm.Memory == 0:
        # Target file in code memory
        dec.Asm.Code_Tfile = tfile
        dec.Asm.Code_Tformat = format
        dec.Asm.Code_Tfunc = eval('target.Tformat' + format)
        dec.Asm.Code_Tlength = targetlen
        dec.Asm.Code_Tbuffer = []
        dec.Asm.Code_Twrap = False
        dec.Asm.Code_Tsegment = 0
        dec.Asm.Code_Tmaxadd = maxaddress
    else:
        # Target file in EPROM memory
        dec.Asm.Eeprom_Tfile = tfile
        dec.Asm.Eeprom_Tformat = format
        dec.Asm.Eeprom_Tfunc = eval('target.Tformat' + format)
        dec.Asm.Eeprom_Tlength = targetlen
        dec.Asm.Eeprom_Tbuffer = []
        dec.Asm.Eeprom_Twrap = False
        dec.Asm.Eeprom_Tsegment = 0
        dec.Asm.Eeprom_Tmaxadd = maxaddress


# -----------------------------------------------------------------------------

def DirTS():

    """
    Generate a 20 byte time stamp in ASCII format.
    The string will be in the form "DOW MMM DD HH:MM:SS YYYY'
    Like 'Sun Sep  6 11:49:54 2009'
    - No Boundary Sync
    """

    for i in range(0, len(dec.Asm.Timestamp)):
        dec.Cross.SaveByte(ord(dec.Asm.Timestamp[i]), True)


# -----------------------------------------------------------------------------

def DirTW():

    """
    Write some text to the target file.
    This text may be comment (if your programming device accepts that) or it
    may contain instructions to the programmer.
    - Boundary Sync. Because this will imply a flush to the target file
    """

    global Asm

    target.BoundarySync()

    if dec.Asm.Parse_Pointer == 0:
        errors.DoError('missoper', False)
        return

    if dec.Asm.Memory == 1:
        # No need to do anything when in RAM memory
        return

    if dec.Asm.Pass == 2:
        if dec.Asm.Memory == 0:
            if dec.Asm.Code_Tformat == '':
                # No target file is open
                return
            if dec.Asm.Code_Tformat == 'BIN':
                # Can't write to binary files
                errors.DoError('tisbin', False)
            else:
                # OK, let's flush all bufferss
                target.FlushTarget(0)
        else:
            if dec.Asm.Eeprom_Tformat == '':
                # No target file is open
                return
            if dec.Asm.Eeprom_Tformat == 'BIN':
                # Can't write to binary files
                errors.DoError('tisbin', False)
            else:
                # OK, let's flush all bufferss
                target.FlushTarget(2)

        illegaldelimiters = string.ascii_letters + string.digits + ',-'
        line = ''
        char = ''

        while True:
            # Literal string may be built from several parts, get them all
            delimit = assem.NowChar(True)
            if delimit == ' ':
                errors.DoError('missoper', False)
                break
            if delimit in illegaldelimiters:
                errors.DoError('illdel', False)
                break
            if delimit == '#':
                # get direct value
                value = assem.EvalExpr()
                if (not value[1]) or dec.Asm.Pass == 2:
                    # Don't test range in pass 1 if Forward referenced label
                    # used
                    if value[0] < 0 or value[0] > 255:
                        errors.DoError('range', False)
                        break
                line = line + chr(value[0])

            else:
                # get literal string
                count = 0
                while dec.Asm.Parse_Pointer < len(dec.Asm.Parse_Line) - 1:
                    char = assem.NowChar(True)
                    if char == "\\" and delimit != "\\":
                        # Escape the next character
                        char = assem.NowChar(True)
                    else:
                        # Handle the character normally
                        if char == delimit:
                            break
                    count = count + 1
                    line = line + char
                if char != delimit:
                    # End of line found without delimiter
                    errors.DoError('strterm', False)
                    break
                if count == 0:
                    errors.DoError('strempty', False)
                    break
            if not assem.MoreParameters():
                # No more parameters, we're done
                break

        if (not dec.Flags.ErrorInLine) and (len(line) > 0):
            if not line[-1] in '\n\r':
                line = line + dec.EOL

            if dec.Asm.Memory == 0:
                dec.Asm.Code_Tfile.write(line)
            else:
                dec.Asm.Eeprom_Tfile.write(line)


# -----------------------------------------------------------------------------

def DirXM():

    """
    Prematurely exit a macro expansion, either condionally or unconditionally.
    - Boundary Sync
    """

    global Asm, Flags

    target.BoundarySync()

    if len(dec.Asm.Macro_Stack) == 0:
        # No macro expanding error
        errors.DoError('nomacro', False)
        return

    if dec.Asm.Parse_Pointer == 0:
        # Unconditional exit
        dec.Flags.ExitMacro = True
        if dec.Asm.Cond_True > 0:
            # pop one condition from condition stack for an unconditional .XM
            dec.Asm.Cond_True = dec.Asm.Cond_True - 1
        return

    condition = assem.EvalExpr()

    if condition[1]:
        errors.DoError('forwref', False)
        return

    if condition[0] != 0:
        dec.Flags.ExitMacro = True

    if dec.Asm.New_Label != "":
        errors.DoError('illdecl', False)
        dec.Asm.New_Label = ''

    if assem.MoreParameters():
        errors.DoWarning('extrign', False)


# -----------------------------------------------------------------------------

if __name__ == '__main__':
    print("")
    print("This is a python module, it's not a program.")
    print("This module is part of the sbasm package.")
    print("Run sbasm instead.")
    print("")
