# ------------------------------------------------------------------------------
#
#   assem.py
#
#   Package module file for the SB-Assembler sbasm
#   See www.sbprojects.net for details
#
#   Author: San Bergmans
#   Date  : 2015-12-21
#
#   Actual assembling is initiated from this file.
#
# ------------------------------------------------------------------------------

import sys
import os
import string
import time

import dec
import direct
import errors
import files
import help
import listing
import macros
import target


# ------------------------------------------------------------------------------

def RunSbassembler():

    """
    Main assembler entry point. Say hello and get the main source file name
    before we can get going.
    """

    global Asm

    if (sys.version[0] != '3'):
        print("*** Fatal Error! Requires Python 3 to run")
        print("")
        sys.exit(dec.ERRLVL_PYTHON)

    dec.Asm.Timestamp = time.strftime("%a %Y-%m-%d %H:%M:%S")
    files.SayHello(dec.VERSION)
    # Create a dictionary of all available directives
    direct.CreateDirList()

    sourcename = files.GetSourceName(sys.argv)

    if sourcename == "-h" or sourcename == "--help":
        # Help request
        help.DoHelp("main")
        sys.exit(0)

    if sourcename[0] == '-':
        # No filename was specified or an invalid option was given
        print("")
        print("*** Fatal Error: No source file specified.")
        print("Use: sbasm <sourcefile>")
        print("")
        sys.exit(dec.ERRLVL_FATAL)

    print("Assembling....")

    dec.Asm.Pass = 1
    Assemble(sourcename)
    if dec.Asm.Errors == 0:
        dec.Asm.Pass = 2
        Assemble(sourcename)

    errors.ShowErrors()

    if dec.Asm.Pass == 2 and dec.Asm.Errors == 0:
        # We're in the second pass and there are no errors
        # Let's see if a .RUn command is given

        if dec.Asm.Run_Command != "":
            # A run command is given, let's run it

            os.system(dec.Asm.Run_Command)


# ------------------------------------------------------------------------------

def Assemble(sourcename):

    """
    Entry point for both assembly passes. Initialize symbol table, open main
    source file and parse each program line.
    """

    global Asm, Flags

    Prepare_For_Pass()

    print("")
    if dec.Asm.Pass == 1:
        print("Pass one")
    else:
        print("Pass two")

    files.OpenSourceFile(sourcename)    # Open main source file

    dec.Flags.CodeWarn = False

    while len(dec.Asm.File_Handle) > 0:
        # Do this until all source files are closed again

        dec.Flags.Comment = False
        dec.Asm.Macro_Def = ''

        while True:
            # Parse each line until end of file

            if len(dec.Asm.Macro_Stack) > 0:
                # Expanding macros, stay there until done
                macros.ExpandMacro()
                if dec.Flags.EndFile:
                    # Macro expansion found .EN directive
                    dec.Flags.EndFile = False
                    break

            # Normal assembly, get next line from source and parse it
            index = len(dec.Asm.File_Handle) - 1
            dec.Asm.Parse_Line = dec.Asm.File_Handle[index].readline()
            dec.Asm.File_LineNo[index] = dec.Asm.File_LineNo[index] + 1
            lastline = dec.Asm.File_LineNo[index]
            # Save this, may change by .CH
            lineno = dec.Asm.File_LineNo[index]
            if len(dec.Asm.Parse_Line) > 0:
                # Not end of file
                # Now expand tabs, get rid of eol, truncate the line to a
                # sensible length and append trailing space.
                # This trailing space will ease parsing the string.
                # Windows tends to crash when the line length > 184
                dec.Asm.Parse_Line = \
                    dec.Asm.Parse_Line.expandtabs(8).rstrip() + " "
                ParseLine()     # Parse this source line
                listing.ListLine(lineno, dec.Asm.Parse_Line)
                if dec.Flags.EndFile:
                    # .EN directive was encountered, close this file
                    dec.Flags.EndFile = False
                    break
            else:
                # End of file reached
                break

        # Close youngest source file in source stack
        dec.Asm.File_Handle[len(dec.Asm.File_Handle)-1].close()
        dec.Asm.File_Handle.pop()
        dec.Asm.File_LineNo.pop()
        dec.Asm.File_Name.pop()

    # We may need this in case of errors during cleanup
    dec.Asm.File_Name.append(sourcename)
    dec.Asm.File_LineNo.append(lastline)

    if dec.Cross.Name != "":
        # Allow the cross overlay to do some final house keeping
        dec.Cross.CleanUp()

    target.CloseTarget(0)   # Close code memory buffer
    target.CloseTarget(2)   # Close EEPROM memory buffer

    dec.Asm.File_Name = []  # We won't need this anymore now
    dec.Asm.File_LineNo = []

    files.SymbolFile()
    files.CloseAllFiles()


# -----------------------------------------------------------------------------

def ParseLine():

    """
    We've got our source line. Now it's time to parse it all.
    However if we're defining a macro, we take a detour.
    First we look if it's an empty line or a comment line
    Then we extract the label field, if any.
    Then the mnemonic field, and act on its contents.
    It can be one of three things: A directive, a macro call or a mnemonic.
    Before executing the lot we also prepare the operand field.
    """

    global Asm, Flags, Label

    dec.Asm.Parse_Pointer = 0
    dec.Asm.New_Label = ""
    dec.Asm.Mnemonic = ""
    dec.Asm.List_Line = ""
    dec.Asm.Timing = ""
    dec.Asm.List_Byte_Cnt = 0

    macrolevel = dec.Asm.Local_Index

    if dec.Asm.Parse_Line == chr(26) + " ":
        # Ctrl-Z, end mark for DOS files, ignore it
        return

    if dec.Asm.Macro_Def != '':
        # Defining a Macro, add this line to macro
        macros.DefineMacro()
        return

    if dec.Asm.Cond_False == 0:
        # Conditional assembly is true. Have to assemble this line

        # Select memory mode
        # May have changed by previous line
        if dec.Asm.Memory == 0:
            dec.Asm.BOL_Address = dec.Asm.PH_Address
            dec.Asm.List_Address = dec.Asm.PH_Address
        elif dec.Asm.Memory == 1:
            dec.Asm.BOL_Address = dec.Asm.RM_Address
            dec.Asm.List_Address = dec.Asm.RM_Address
        else:
            dec.Asm.BOL_Address = dec.Asm.EM_Address
            dec.Asm.List_Address = dec.Asm.EM_Address

        if IsComment():
            # Do nothing if this line is empty or a comment line
            return

        newlabel = GetLabelName()
        globlab = string.ascii_uppercase + '_'  # Legal begin chars of label

        if len(newlabel) > 0 and (newlabel[0] in globlab):
            # New global label defined
            newglobal = True
        else:
            # No new global lable defined
            newglobal = False

        if NowChar() == ":":
            # It's a macro label
            IncParsePointer()
        if NowChar() != " ":
            # Can't be a bare :
            errors.DoError('illlabel', False)
            return              # Dont' bother to continue
        dec.Asm.New_Label = newlabel
        if len(newlabel) > 0:
            # Do a boundary sync if a label is given
            target.BoundarySync()

        dec.Asm.Mnemonic = GetMnemonic()

        if dec.Asm.Mnemonic == "":
            # No mnemonic means no operand either
            dec.Asm.Parse_Pointer = 0
        else:
            # Parse the operand field
            dec.Asm.Parse_Pointer = FindOperandField()

        if newglobal and dec.Asm.Mnemonic[:3] != '.SE':
            # Set last assigned global label name, only when not .SE directive
            dec.Asm.Last_Global = newlabel

            # Reset macro indexes
            dec.Asm.Macro_Number = 0
            dec.Asm.Local_Index = 0

        DoAssemble()  # Got all the ingredients, now put them all together
        if dec.Asm.New_Label != "":
            AssignLabel(dec.Asm.New_Label, macrolevel)
    else:
        # Conditional assembly is false, accept only .DO, .EL and
        # .FI directives
        if IsComment():
            # Nothing to do in this line, it's a comment
            return

        if NowChar() != " ":
            # A label is declared here, get it but don't bother about syntax
            dec.Asm.New_Label = GetWord("", "", " ")

        dec.Asm.Mnemonic = GetMnemonic()

        if dec.Asm.Mnemonic != "":
            if dec.Asm.Mnemonic[:3] in (".DO", ".EL", ".FI"):
                # These are the only directives of interest now
                dec.Asm.Parse_Pointer = FindOperandField()
                DoAssemble()


# -----------------------------------------------------------------------------

def DoAssemble():

    if dec.Asm.Mnemonic != "":
        if dec.Asm.Mnemonic == "=":
            dec.Asm.Mnemonic = ".EQ"
        if dec.Asm.Mnemonic[0] == ">":
            DoMacro()
        elif dec.Asm.Mnemonic[0] == ".":
            DoDirective()
        else:
            DoMnemonic()


# -----------------------------------------------------------------------------

def DoMnemonic():

    if dec.Cross.Name == "":
        errors.DoError("nocross", True)
    else:
        dec.Cross.Mnemonic()


# -----------------------------------------------------------------------------

def DoDirective():

    global Asm

    dirdone = False
    if dec.Cross.Name != "":
        # See if cross overlay wants to handle directive
        dirdone = dec.Cross.Directive()
    if not dirdone:
        # directive not handled by cross overlay, do it our selves!
        direct.DoDir()


# -----------------------------------------------------------------------------

def DoMacro():

    global Asm

    macroname = dec.Asm.Mnemonic[1:]
    if len(macroname) == 0:
        errors.DoError('missmacn', False)
    else:
        if macroname in dec.Asm.Macro:
            # Push macroname and line number on macro stack
            # This triggers ExpandMacro to go to work
            parameters = macros.GetParameters()
            dec.Asm.Macro_Stack.append([macroname, 0,
                                        dec.Asm.Local_Index, parameters])
            dec.Asm.Macro_Number = dec.Asm.Macro_Number + 1
            dec.Asm.Local_Index = dec.Asm.Macro_Number
        else:
            errors.DoError('neximacn', False)


# -----------------------------------------------------------------------------

def Prepare_For_Pass():

    """
    Prepare global variables for next pass.
    """

    global Asm, Cross, Flags

    dec.Cross.Name = ''             # Start with no cross overlay
    dec.Cross.Overlay = None
    dec.Cross.Init = None
    dec.Cross.Directive = None
    dec.Cross.Mnemonic = None
    dec.Cross.CleanUp = None
    dec.Cross.SaveByte = None

    dec.Cross.SaveByte = eval('target.SaveByte')  # Use default save routine
    dec.Asm.Cond_True = 0           # Reset conditional assembly
    dec.Asm.Cond_False = 0
    dec.Asm.Macro_Number = 0        # Macro expansion counter
    dec.Asm.Local_Index = 0         # Current local label index

    dec.Asm.Memory = 0              # Select code memory
    dec.Asm.PP_Address = 0          # Program pointer
    dec.Asm.PH_Address = 0          # PH modified address
    dec.Asm.TA_Address = 0          # Target address
    dec.Asm.PP_TA_Factor = 1        # Number of bytes per instruction
    dec.Asm.Fraction = 0            # Fraction counter
    dec.Asm.RM_Address = 0          # RAM address
    dec.Asm.EM_Address = 0          # EEPROM address
    dec.Asm.Last_Global = ""        # No global labels defined yet
    dec.Asm.Code_Tmaxadd = (1 << 32) - 1    # Avoid address wrap messages
    dec.Asm.Eeprom_Tmaxadd = (1 << 32) - 1  # Avoid address wrap messages

    dec.Asm.List_File = sys.stdout  # Send output to standard out per default
    dec.Asm.BI_Format = ''          # Disable .BI mode

    dec.Flags.List = True           # Switch all list flags on
    dec.Flags.Mlist = True
    dec.Flags.CList = True
    dec.Flags.Tlist = True
    dec.Flags.Comment = False       # Switch comment mode off
    dec.Flags.BigEndian = False     # Default byte order
    dec.Flags.ErrorBell = True      # Error bell is on
    dec.Flags.ErrorPrinted = False  # Clear error printed flag
    dec.Flags.Endfile = False       # Just in case
    dec.Flags.ExitMacro = False     # Flag used by .XM to exit macro
    dec.Flags.DummyMode = False     # Dummy mode flag


# -----------------------------------------------------------------------------

def IsComment():

    """
    If we're in comment mode start finding a legal .EC line. Until then return
    with True.
    If we're not in comment mode see if line is empty or starts with a legal
    comment delimiter.
    """

    global Flags

    if dec.Flags.Comment:
        # We're in comment mode. Now we're looking for .EC only
        line = dec.Asm.Parse_Line.upper().lstrip()
        if line[:3] == ".EC":
            dec.Flags.Comment = False
        return True     # Line containing closing .EC is still a comment
    else:
        if dec.Asm.Parse_Line.isspace():
            # Empty line, nothing to do
            return True
        if dec.Asm.Parse_Line[0] in dec.COMMENT1:
            # It's a comment line only
            return True
        return False    # It's not a comment line


# -----------------------------------------------------------------------------

def FindNextNonSpace():

    """
    Find the next non Space character in the parse line.
    Return found location
    Return -1 if no more non space characters are found
    """

    IncParsePointer()
    while NowChar() == " ":
        IncParsePointer()
        if dec.Asm.Parse_Pointer == len(dec.Asm.Parse_Line) - 1:
            return -1
    return dec.Asm.Parse_Pointer


# -----------------------------------------------------------------------------

def IncParsePointer():

    """
    Increment the parse pointer
    """

    global Asm

    if dec.Asm.Parse_Pointer < len(dec.Asm.Parse_Line) - 1:
        dec.Asm.Parse_Pointer = dec.Asm.Parse_Pointer + 1


# -----------------------------------------------------------------------------

def NowChar(forward=False):

    """
    Return current lower case / upper case character in the parse line
    If the optional parameter is set to true the Parse Pointer will be
    incremented after the character has been fetched.
    """

    text = dec.Asm.Parse_Line[dec.Asm.Parse_Pointer]

    if forward:
        IncParsePointer()

    return text


# -----------------------------------------------------------------------------

def MoreParameters():

    """
    Return True if a comma, or a comma and a space follow the last parameter.
    Return False if a space is the next character, or when parse pointer is
    reset to 0.
    Generates an operand error if next character is neither a space or a comma.
    """

    if (NowChar() == ' ') or (dec.Asm.Parse_Pointer == 0):
        return False

    if NowChar() == ',':
        IncParsePointer()
        if NowChar() == ' ':
            IncParsePointer()
        return True

    errors.DoError('badoper', False)
    return False


# -----------------------------------------------------------------------------

def GetWord(legal1="", legal2="", endchars=" ,"):

    """
    Return a word from the parse line. The word starts at the current
    parse pointer location.
    An empty string is returned if the first character is a member of
    dec.COMMENT2.
    If legal1 is not given the collection of characters continues until
      one of the optional end markers is reached (space or comma by default).
    If legal1 is given, the collection of characters starts if the first
      character is present in legal1, and all subsequent characters are
      collected if they are within legal2. Legal2 is by default the same as
      legal1, but can be changed if a parameter is given.
    The return value is the found word, which may be "" if no legal characters
      are found or if an end character is found immediately.
      dec.Asm.Parse_Pointer returns behind the last character copied to the
      returned word.
    """

    global Asm

    if legal2 == "":
        legal2 = legal1

    text = ""
    if NowChar() in dec.COMMENT2:
        # The text is only comment!
        return text

    if ' ' not in endchars:
        # A space must be contained in endchars in order to find end of line
        endchars = endchars + ' '

    if legal1 == "":
        # Accept anything, except endchars
        while not (NowChar().upper() in endchars):
            text = text + NowChar(True)
    else:
        # Accept only legal1 characters as first character
        if NowChar().upper() in legal1:
            # It's the first character
            text = NowChar(True).upper()
            while NowChar().upper() in legal2:
                # Continue until character not in legal2
                text = text + NowChar(True).upper()
    return text


# -----------------------------------------------------------------------------

def GetLabelName(local=True):

    """
    Start reading the parse line from current position and isolate the label
    name.
    """

    global Asm

    if local:
        # Can also be local label now
        labelchars1 = string.ascii_letters + ".:_"
    else:
        labelchars1 = string.ascii_letters + "_"
    labelchars2 = string.ascii_letters + string.digits + "._"

    label = GetWord(labelchars1, labelchars2).upper()

    if label == '.' or label == ':' or label == '_':
        # A single dot, colon or underscore is not a legal label name
        errors.DoError('illlabel', False)
        label = ""

    return label


# -----------------------------------------------------------------------------

def GetMnemonic():

    """
    Get mnemonic, if one is given that is.
    A mnemonic is ended by a space only.
    """

    if FindNextNonSpace() > 0:
        if NowChar() in dec.COMMENT1:
            return ""   # Comment started, no mnemonic here
        return GetWord("", "", " ").upper()
    else:
        return ""       # No mnemonic is found


# -----------------------------------------------------------------------------

def FindOperandField():

    """
    Find the beginning of the operand field.
    Return the beginning if an operand is given.
    Return 0 if no operand found (or if operand field is comment)
    Optional operands should be determined by the interpreting routine.
    If the operand field is more than 10 spaces away from the
    mnemonic field the flag Asm.Optional is set to False. That way
    instructions with an optional operand can decide to use it
    or not.
    """

    global Asm

    oldpointer = dec.Asm.Parse_Pointer

    dec.Asm.Optional = True

    if FindNextNonSpace() > 0:
        if NowChar() in dec.COMMENT2:
            dec.Asm.Optional = False
            return 0    # Operand field is comment
        if dec.Asm.Parse_Pointer >= (oldpointer + 10):
            dec.Asm.Optional = False
        return dec.Asm.Parse_Pointer   # Operand field begins here
    else:
        dec.Asm.Optional = False
        return 0        # No operand found


# -----------------------------------------------------------------------------

def AssignLabel(newlabel, macrolevel):

    """
    Assign a value to a new label.
    It accepts the name of the new label and the current macrolevel.
    Some tests are made to see if the label exists and hasn't changed value.
    During pass 2 it should still be in sync with pass 1. Unless it was a
    variable, defined by the .SE directive.
    """

    global Asm

    if dec.Asm.Mnemonic[:3] == '.SE':
        # A variable assignment
        rw = True
    else:
        # A constant assignment
        rw = False

    if newlabel[0] in '.:':
        # It's a local label, add the last global in front of it
        # and current macro number behind it if it's a macro label
        if dec.Asm.Last_Global != '':
            # There was a global label
            if newlabel[0] == '.':
                # Starting with a dot is always macro level 000
                newlabel = dec.Asm.Last_Global + ':' + newlabel[1:] + '|000'
            else:
                # Otherwise it is the current macro level index
                newlabel = dec.Asm.Last_Global + newlabel + '|' + \
                            str(macrolevel).zfill(3)
        else:
            # No global label assigned yet, is mandatory though
            errors.DoError('noglobal', False)
            return

    if dec.Asm.Pass == 1:
        # Pass 2 is the only pass which assigns new labels
        if newlabel in dec.Asm.Symbol_Table:
            # Label already exists. Must be variable or same value now
            if rw:
                # It's a variable, so the value may change
                if dec.Asm.Symbol_Table[newlabel][2]:
                    # Both old and new defs are RW, set new value
                    dec.Asm.Symbol_Table[newlabel][0] = dec.Asm.BOL_Address
                else:
                    # Label was defined as a constant, now it's a variable
                    errors.DoError('con2var', False)
                    return
            else:
                # It's a constant
                if dec.Asm.Symbol_Table[newlabel][2]:
                    # Label was defined as a variable, now it's a constant
                    errors.DoError('var2con', False)
                    return
                else:
                    # Both old and new defs are RO, value must be the same!
                    if dec.Asm.Symbol_Table[newlabel][0] != \
                             dec.Asm.BOL_Address:
                        errors.DoError('extdef', False)
                        return
        else:
            # New label doesn't exist yet, add it to symbol table
            dec.Asm.Symbol_Table[newlabel] = \
                [dec.Asm.BOL_Address, True, rw, 0, dec.Asm.Memory,
                 dec.Asm.File_Name[-1]]
    else:
        # Pass 2, no new labels are assigned any more. Values are checked.
        if newlabel in dec.Asm.Symbol_Table:
            # This is what we expect, the label must exist by now
            if dec.Asm.Symbol_Table[newlabel][2]:
                # It's a variable
                # Don't bother testing if RW is still in sync
                # Give stupid users a chance to break the system :-)
                # Set the new value of the variable
                dec.Asm.Symbol_Table[newlabel][0] = dec.Asm.BOL_Address
                # Label is declared from now on
                dec.Asm.Symbol_Table[newlabel][1] = False
            else:
                # It's a constant
                if dec.Asm.Symbol_Table[newlabel][0] != dec.Asm.BOL_Address:
                    # Different value from last time!
                    errors.DoError('syncerr', False)
                else:
                    # Same value as last time! Mark label as declared
                    dec.Asm.Symbol_Table[newlabel][1] = False
        else:
            # Label sould have been there in pass 2, sync error
            errors.DoError('syncerr', False)


# -----------------------------------------------------------------------------

def EvalExpr():

    """
    Evaluate an expression to a value. The calling routine has already checked
    that there is something in the operand field.
    Returns tuple: (value of expression, forward ref label, memory mode of
    label)
    """

    operators = '+-*/\\&^|!=<>'
    totalval = GetValue()

    while NowChar() in operators:
        if dec.Flags.ErrorInLine:
            # Don't bother to continue, value will not be correct anyway
            break
        operator = NowChar(True)
        if operator == '<':
            # Could be <= , <> , <<
            if NowChar() in '=><':
                operator += NowChar(True)
        elif operator == '>':
            # Could be >= or >>
            if NowChar() in '=>':
                operator += NowChar(True)
        elif operator == '!':
            if NowChar() == '=':
                operator = '<>'
                IncParsePointer()
        if NowChar() != ' ':
            # There's something out there, get it.
            newvalue = GetValue()
            if not dec.Flags.ErrorInLine:
                totalval = Calculate(totalval, newvalue, operator)
        else:
            errors.DoError('valerr', False)
            break

    return totalval     # Return a tuple (value, forward, memory)


# -----------------------------------------------------------------------------

def Calculate(val1, val2, operator):

    """
    Combine two values using the given operator.
    Accepts the two values to operate on and the operator itself.
    Returns a tuple containing the new value and a combined forward
    reference flag. If either value used a forward referenced value
    the flag will be set.
    """

    value1 = val1[0]
    value2 = val2[0]
    forward = val1[1] | val2[1]
    memory = val1[2] + val2[2]
    trueval = dec.MINUS_ONE
    posmask = (1 << 32) - 1
    negmask = -1 ^ posmask

    result = 0

    if operator == '+':
        # Plus
        result = value1 + value2
    elif operator == '-':
        # Minus
        result = value1 - value2
    elif operator == '*':
        # Multiply
        result = value1 * value2
    elif operator == '/':
        # Divide
        if value2 != 0:
            result = value1 // value2
        else:
            if dec.Asm.Pass == 2:
                # Avoid error messages due to forward referenced labels
                errors.DoError('div0', False)
            result = 0
    elif operator == '\\':
        # Modulo
        if value2 != 0:
            result = value1 % value2
        else:
            if dec.Asm.Pass == 2:
                # Avoid error messages due to forward referenced labels
                errors.DoError('div0', False)
            result = 0
    elif operator == '&':
        # Bitwise and
        result = value1 & value2
    elif operator == '^' or operator == '|':
        # Bitwise or
        result = value1 | value2
    elif operator == '!':
        # Bitwise exor
        result = value1 ^ value2
    elif operator == '=':
        # Equal
        if value1 == value2:
            result = trueval
        else:
            result = 0
    elif operator == '<':
        # Less than
        if value1 < value2:
            result = trueval
        else:
            result = 0
    elif operator == '>':
        # Greater than
        if value1 > value2:
            result = trueval
        else:
            result = 0
    elif operator == '<=':
        # Less than or equal
        if value1 <= value2:
            result = trueval
        else:
            result = 0
    elif operator == '>=':
        # Greater than or equal
        if value1 >= value2:
            result = trueval
        else:
            result = 0
    elif operator == '<>':
        # Not equal
        if value1 != value2:
            result = trueval
        else:
            result = 0
    elif operator == '<<':
        # Shift left
        if dec.Asm.Pass == 2 and (value2 < 0 or value2 > 31):
            # Check valid rane in pass 2 because of forward referenced labels
            errors.DoError('range', false)
            value2 = 0
        result = value1 << value2
    elif operator == '>>':
        # Shift right
        if not val2[1] and (value2 < 0 or value2 > 63):
            # Check valid rane in pass 2 because of forward referenced labels
            errors.DoError('range', false)
            value2 = 0
        result = value1 >> value2

    # Limit result to word size
    if result < 0:
        result = result | negmask
    else:
        result = result & posmask

    return (result, forward, memory)


# -----------------------------------------------------------------------------

def GetValue():

    """
    Get a value. The value might be a label, a constant in 4 different
    radixes, given in 3 different formats, the current program counter
    or the pass number.
    Returns a tuple containing the value and a forward referenced label
    flag.
    Returns (0, False, Memory) if an error is encountered in the value
    """

    global Asm, Flags

    forward = False
    memory = 0          # Code memory if this remains 0, other if not.
    negative = False

    if NowChar() in '-+':
        # See if sign is given
        if NowChar(True) == '-':
            negative = True

    nowchar = NowChar().upper()

    if nowchar in string.ascii_uppercase+'.:_':
        labelval = GetLabelValue()
        value = labelval[0]
        if labelval[1]:
            # Set forward refenced flag (may be set, but may not be cleared)
            forward = True
        memory = labelval[2]
    elif nowchar in string.digits:
        value = GetDecimal()
    elif nowchar in "'\"":
        value = GetAsciiValue()
    elif nowchar == '$':
        value = GetHex()
    elif nowchar == '%':
        value = GetBin()
    elif nowchar == '@':
        value = GetOct()
    elif nowchar == '*':
        # Return current location
        IncParsePointer()
        value = dec.Asm.BOL_Address
    elif nowchar == '?':
        # Return pass number
        IncParsePointer()
        value = dec.Asm.Pass - 1
    elif nowchar == ' ':
        # No parameter is given
        errors.DoError('valerr', False)
        return (0, False, memory)
    else:
        # None of the above!
        errors.DoError('badoper', False)
        return (0, False, memory)

    if negative:
        value = -value

    value = value * 1       # Ensure value is a long

    rangecheck = value >> 32
    if rangecheck != 0 and rangecheck != -1:
        errors.DoError('overflow', False)

    return (value, forward, memory)


# -----------------------------------------------------------------------------

def GetLabelValue():

    global Asm

    memory = 0

    if NowChar() in '.:':
        # It's a local label
        label = GetLabelName()
        if len(label) <= 1:
            label = ''
        else:
            if label[0] == '.':
                # Always use index 000 if it's a local label
                label = dec.Asm.Last_Global + ':' + label[1:] + '|000'
            else:
                label = dec.Asm.Last_Global + label + '|' + \
                        str(dec.Asm.Local_Index).zfill(3)
    else:
        # It's a global label
        label = GetLabelName(False)
        if len(label) > 0:
            if NowChar() == ':':
                # It's a global:local reference
                local = GetLabelName()
                if len(local) == 1:
                    label = ''
                else:
                    # Always use index 000 if global:local notation is used
                    # Done for compatibility with version 2 and because you
                    # can't reference
                    # macro labels from other global labels anyway.
                    label = label + local + '|000'
    if label != '':
        if label in dec.Asm.Symbol_Table:
            # Label exists, get its data
            value = dec.Asm.Symbol_Table[label][0]
            memory = dec.Asm.Symbol_Table[label][4]
            if dec.Asm.Pass == 1:
                # Label exists already in pass 1, so it's not forward
                # referenced
                forward = False
            else:
                # See if label already existed during pass 1
                forward = dec.Asm.Symbol_Table[label][1]

                # Increment label's reference counter
                dec.Asm.Symbol_Table[label][3] = \
                    dec.Asm.Symbol_Table[label][3] + 1
        else:
            # Label does not exist
            value = 0
            if dec.Asm.Pass == 1:
                # It's OK for a label not to exist in pass 1
                forward = True
            else:
                # It's not OK for a label not to exist in pass 2
                errors.DoError('undef', False)
                forward = True
    else:
        # Illegal or incomplete label name
        errors.DoError('illlabel', False)
        value = 0
        forward = False

    if NowChar() == ":":
        errors.DoError('illlabel', False)

    return (value, forward, memory)


# -----------------------------------------------------------------------------

def GetDecimal():

    """
    This one's a bit complex.
    The value starts with a decimal digit, now it can be any of the below:
    + Hex if it starts with a 0 and contains only hex digits followed by an H
    + Octal if it contains only octal digits followed by a Q
    + Hex first digit is 0 and next character is an x
    + Binary first digit is 0 and next character is a b
    + Binary if it contains only 0 or 1 followed by a B, followed by non
      hexdigit
    + Decimal otherwise or 1234d

    Note: 0101b notation might be confusing if followed by a legal hex digit,
    like 0101ba. This might be a hex value, only if followed by an h
    eventually.
    Thus if we check for hex before we check for binary there is no cause for
    confusion.
    """

    global Asm

    text = GetWord(string.ascii_uppercase + string.digits)

    if len(text) == 1:
        # A one digit value, can't be any simpler than this
        return int(text)

    if text[-1] == 'H':
        # Must be hex 0ABCDH notation!
        hexval = text[:-1]
        if TestDigits(hexval, string.hexdigits):
            return int(hexval, 16)
        else:
            errors.DoError('illhex', False)
            return 0

    if text[-1] == 'Q':
        # Must be octal 0567Q notation!
        octval = text[:-1]
        if TestDigits(octval, string.octdigits):
            return int(octval, 8)
        else:
            errors.DoError('illoct', False)
            return 0

    if text[1] == 'X':
        # It's hex 0xABCD notation!
        hexval = text[2:]
        if TestDigits(hexval, string.hexdigits):
            return int(hexval, 16)
        else:
            errors.DoError('illhex', False)
            return 0

    if text[1] == 'B':
        # It must be binary 0B0101 notation, it can't be hex anymore,
        # it doesn't end in H
        binval = text[2:]
        if TestDigits(binval, '01'):
            return int(binval, 2)
        else:
            errors.DoError('illbin', False)
            return 0

    if text[-1] == 'B':
        # It must be binary 01010B notation
        binval = text[:-1]
        if TestDigits(binval, '01'):
            return int(binval, 2)
        else:
            errors.DoError('illbin', False)
            return 0

    if text[-1] == 'D':
        # It must be decimal 1234D notation
        decval = text[:-1]
        if TestDigits(decval, string.digits):
            return int(decval)
        else:
            errors.DoError('illdec', False)
            return 0

    # all else failed, it must be a decimal now

    if TestDigits(text, string.digits):
        return int(text, 10)
    else:
        errors.DoError('illdec', False)
        return 0


# -----------------------------------------------------------------------------

def TestDigits(text, valid):

    if len(text) == 0:
        return False

    for i in text:
        if i not in valid:
            return False

    return True


# -----------------------------------------------------------------------------

def GetHex():

    """
    A hex indicator $ is found. Parse hex value. If no hex value follows take
    the current program counter as return value.
    """

    global Asm

    IncParsePointer()

    if not NowChar() in string.hexdigits:
        # A lonely $ is the current program counter identifier
        return dec.Asm.BOL_Address

    text = GetWord(string.ascii_uppercase + string.digits)

    if text == "":
        errors.DoError('valerr', False)
        return 0

    if TestDigits(text, string.hexdigits):
        return int(text, 16)
    else:
        errors.DoError('illhex', False)
        return 0


# -----------------------------------------------------------------------------

def GetBin():

    """
    Get a binary value, the SB-Assembler style, preceded by a % and may contain
    dots for readability.
    """

    global Asm

    IncParsePointer()

    text = GetWord(string.ascii_uppercase + string.digits + '.')

    if text == "":
        errors.DoError('valerr', False)
        return 0

    if TestDigits(text, '01.'):
        text = text.replace('.', '')    # Remove all dots from value
        return int(text, 2)
    else:
        errors.DoError('illbin', False)
        return 0


# -----------------------------------------------------------------------------

def GetOct():

    """
    Get an octal value, the SB-Assembler style, preceded by an @.
    """

    global Asm

    IncParsePointer()

    text = GetWord(string.ascii_uppercase + string.digits)

    if text == "":
        errors.DoError('valerr', False)
        return 0

    if TestDigits(text, string.octdigits):
        return int(text, 8)
    else:
        errors.DoError('illoct', False)
        return 0


# -----------------------------------------------------------------------------

def GetAsciiValue():

    global Asm

    delimit = NowChar(True)
    value = ord(NowChar(True))

    if NowChar() == delimit:
        IncParsePointer()

    if delimit == '"':
        value = value + 128

    return value


# -----------------------------------------------------------------------------

def CheckVersions(cross_version, min_version):

    """
    Check if assembler's main program has a high enough version number.
    """

    av = dec.VERSION.split('.')
    cv = cross_version.split('.')
    mv = min_version.split('.')

    # All major version numbers should match exactly
    if (av[0] != cv[0]) or (av[0] != mv[0]):
        errors.DoError('version', True)

    # Minor version number of assembler should be higher than
    #  minimum requirement
    if (av[1] < mv[1]):
        errors.DoError('version', True)

    # Ignore Minor subversion numbers, they are irrelevant


# -----------------------------------------------------------------------------

if __name__ == '__main__':
    print("")
    print("This is a python module, it's not a program.")
    print("This module is part of the sbasm package.")
    print("Run sbasm instead.")
    print("")
