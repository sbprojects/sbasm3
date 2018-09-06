# ------------------------------------------------------------------------------
#
#   errors.py
#
#   Package module file for the SB-Assembler sbasm
#   See www.sbprojects.net for details
#
#   Author: San Bergmans
#   Date  : 2015-12-21
#
#   All error handling routines go into this file.
#
# ------------------------------------------------------------------------------

import sys
import os

import dec
import files
import listing


# ------------------------------------------------------------------------------

"""
    This list holds all error and warning messages.
    Cross overlays may add their own messages to this list. In which case the
    key field should hold a combination of the cross name and error name to
    ensure that the key will be unique.
"""

Error_List = {
    'badopco'     : 'Bad opcode',
    'badoper'     : 'Bad Operand',
    'con2var'     : 'Label is not a variable',
    'crosserr'    : 'Cross overlay not found',
    'direrr'      : 'Unknown directive',
    'div0'        : 'Division by 0',
    'eeprom'      : 'Target address is in EEPROM memory!',
    'extdef'      : 'Extra definition error',
    'extrign'     : 'Extra parameters ignored',
    'extrsym'     : 'Symbol file already open. Extra Symbol file ignored',
    'forwref'     : 'Forward reference not allowed',
    'illdecl'     : 'Illegal label declaration',
    'illdel'      : 'Illegal delimiter',
    'illdir'      : 'Illegal directive',
    'illhex'      : 'Illegal hex digit',
    'illoct'      : 'Illegal octal digit',
    'illbin'      : 'Illegal binary digit',
    'illdec'      : 'Illegal decimal digit',
    'illlabel'    : 'Illegal label name',
    'illmacn'     : 'Illegal macro name',
    'missoper'    : 'Operand expected',
    'missdo'      : 'Missing .DO',
    'missmacn'    : 'Missing macro name',
    'neximacn'    : 'Macro does not exist',
    'nocross'     : 'No Cross Assembler loaded',
    'noglobal'    : 'Missing global label',
    'nomacro'     : 'No macro expanding',
    'notram'      : "RAM memory can't have a target file",
    'notcode'     : 'Writing code outside of code memory',
    'onlycode'    : 'Only allowed in Code memory',
    'orphanec'    : 'Orphaned .EC directive found',
    'orphanem'    : 'Orphaned .EM directive found',
    'overflow'    : 'Overflow error',
    'range'       : 'Out of range',
    'recurin'     : 'Recursive opening of source file is not allowed',
    'sourcerr'    : "Can't open source file",
    'strempty'    : 'Empty string',
    'strterm'     : 'String not terminated',
    'syncerr'     : 'Symbol table not in sync between passes',
    'tclosed'     : 'Had to close target file because of new org',
    'tisbin'      : "Can't write to binary files",
    'trange'      : 'Address in target file wrapped back',
    'undef'       : 'Undefined label',
    'usererr'     : 'User error',
    'userwarn'    : 'User warning',
    'unknown'     : 'Unknown error occurred',
    'unknwar'     : 'Unknown warning occurred',
    'valerr'      : 'Value expected error',
    'var2con'     : 'Label is not a constant',
    'version'     : 'Assembler and cross versions are not compatible',
    'wropen'      : "Can't write to file",
    'bifile'      : "Can't open .BI file",
    'binform'     : 'Illegal format in binary file',
    'nolabel'     : 'Label field is empty',
    'maxaddr'     : 'Target program memory full',
    'taconfusion' : 'Target Address confusion'
    }


# ------------------------------------------------------------------------------

def ShowErrors():

    """
    Show error counters at the end of the assembly.
    """

    errors = str(dec.Asm.Errors) + ' Errors found during assembly.\n'
    if dec.Asm.Errors == 1:
        errors = str(dec.Asm.Errors) + ' Error found during assembly.\n'

    warnings = str(dec.Asm.Warnings) + ' Warnings found during assembly.\n'
    if dec.Asm.Warnings == 1:
        warnings = str(dec.Asm.Warnings) + ' Warning found during assembly.\n'

    sys.stdout.write(dec.EOL + errors)
    sys.stdout.write(warnings + dec.EOL)

    # Print number of errors and warnings to an open error and list file
    PrintErrors(dec.EOL + errors, warnings + dec.EOL)
    listing.PrintErrors(dec.EOL + errors, warnings + dec.EOL)


# -----------------------------------------------------------------------------

def FatalError(text, sourcefile="", sourceline="", lineno=0):

    global Asm, Flags

    dec.Asm.List_Line = ''

    message = ""
    if not dec.Flags.ErrorPrinted and sourcefile != '':
        message = "Source file: " + sourcefile + dec.EOL + dec.EOL
    message = message + "*** Fatal Error: " + text + dec.EOL
    if sourcefile != '' or sourceline != '':
        message = message + listing.ListLineNo(lineno) + sourceline.rstrip()
    message = message + dec.EOL + dec.EOL
    sys.stderr.write(message)
    if dec.Flags.ErrorBell:
        sys.stderr.write('\a')    # Bell won't work on all systems

    if dec.Asm.Error_File is not None:
        dec.Asm.Error_File.write(message)
    if dec.Asm.List_File != sys.stdout:
        # Print error to error file separatly.
        # Print lines one by one with maximum length
        parts = message.rstrip().split(dec.EOL)
        message = ""
        for i in parts:
            message = message + i[:dec.Asm.List_Length] + dec.EOL
        dec.Asm.List_File.write(message + dec.EOL)
    dec.Asm.Errors = dec.Asm.Errors + 1

    ShowErrors()

    files.CloseAllFiles()

    sys.exit(dec.ERRLVL_FATAL)


# ------------------------------------------------------------------------------

def AsmWarning(text, sourcefile="", sourceline="", lineno=0):

    global Asm, Flags

    if dec.Flags.ErrorInLine:
        # Only print one error per line, subsequent errors may be caused by
        # the 1st
        return

    dec.Asm.List_Line = ''

    message = ""
    if not dec.Flags.ErrorPrinted:
        message = "Source file: " + sourcefile + dec.EOL + dec.EOL
        dec.Flags.ErrorPrinted = True
    message = message + "*** Warning: " + text + dec.EOL
    message = message + listing.ListLineNo(lineno) + sourceline.rstrip() +\
        dec.EOL + dec.EOL
    sys.stderr.write(message)
    if dec.Flags.ErrorBell:
        sys.stderr.write('\a')      # Bell won't work on all systems

    if dec.Asm.Error_File is not None:
        dec.Asm.Error_File.write(message)
    if dec.Asm.List_File != sys.stdout:
        # Print error to warning file separatly.
        # Print lines one by one with maximum length
        parts = message.rstrip().split(dec.EOL)
        message = ""
        for i in parts:
            message = message + i[:dec.Asm.List_Length] + dec.EOL
        dec.Asm.List_File.write(message + dec.EOL)
    dec.Asm.Warnings = dec.Asm.Warnings + 1


# -----------------------------------------------------------------------------

def AsmError(text, sourcefile="", sourceline="", lineno=0):

    global Asm, Flags

    if dec.Flags.ErrorInLine:
        # Only print one error per line, subsequent errors may be caused by
        # the 1st
        return

    dec.Asm.List_Line = ''      # Clear assembled line so far

    message = ""
    if not dec.Flags.ErrorPrinted:
        message = "Source file: " + sourcefile + dec.EOL + dec.EOL
        dec.Flags.ErrorPrinted = True
    message = message + "*** Error: " + text + dec.EOL
    message = message + listing.ListLineNo(lineno) + sourceline.rstrip() +\
        dec.EOL + dec.EOL
    sys.stderr.write(message)
    if dec.Flags.ErrorBell:
        sys.stderr.write('\a')    # Bell won't work on all systems

    if dec.Asm.Error_File is not None:
        dec.Asm.Error_File.write(message)
    if dec.Asm.List_File != sys.stdout:
        # Print error to error file separatly.
        # Print lines one by one with maximum length
        parts = message.rstrip().split(dec.EOL)
        message = ""
        for i in parts:
            message = message + i[:dec.Asm.List_Length] + dec.EOL
        dec.Asm.List_File.write(message + dec.EOL)
    dec.Asm.Errors = dec.Asm.Errors + 1
    # No normal listing of this line and avoid multiple errors on one line
    dec.Flags.ErrorInLine = True


# -----------------------------------------------------------------------------

def DoError(errorname, fatal=False, usererror=False):

    if usererror:
        errortext = errorname
    else:
        if errorname in Error_List:
            errortext = Error_List[errorname]
        else:
            errortext = Error_List['unknown'] + ' (' + errorname + ')'
    ind = len(dec.Asm.File_Name) - 1
    if ind >= 0:
        source = dec.Asm.File_Name[ind]
        line = dec.Asm.Parse_Line
        lineno = dec.Asm.File_LineNo[ind]
    else:
        source = ""
        line = ""
        lineno = 0

    if fatal:
        FatalError(errortext, source, line, lineno)
    else:
        AsmError(errortext, source, line, lineno)


# -----------------------------------------------------------------------------

def DoWarning(warningname, inpass2=False, userwarning=False):

    if not inpass2 and dec.Asm.Pass == 2:
        # We only want the warning in Pass 1
        return

    if inpass2 and dec.Asm.Pass == 1:
        # We only want the warning in Pass 2
        return

    if userwarning:
        warningtext = warningname
    else:
        if warningname in Error_List:
            warningtext = Error_List[warningname]
        else:
            warningtext = Error_List['unknwar'] + ' (' + warningname + ')'
    ind = len(dec.Asm.File_Name) - 1
    source = dec.Asm.File_Name[ind]
    line = dec.Asm.Parse_Line
    lineno = dec.Asm.File_LineNo[ind]

    AsmWarning(warningtext, source, line, lineno)


# -----------------------------------------------------------------------------

def PrintErrors(errors, warnings):

    """
    Print the final number of errors and warnings at the end of the list file,
    if one is open that is.
    """

    if dec.Asm.Error_File is not None:
        if dec.Asm.Error_File.tell() > 0:
            dec.Asm.Error_File.write(errors)
            dec.Asm.Error_File.write(warnings)


# -----------------------------------------------------------------------------

if __name__ == '__main__':
    print("")
    print("This is a python module, it's not a program.")
    print("This module is part of the sbasm package.")
    print("Run sbasm instead.")
    print("")
