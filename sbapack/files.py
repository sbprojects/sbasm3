# ------------------------------------------------------------------------------
#
#   files.py
#
#   Package module file for the SB-Assembler sbasm
#   See www.sbprojects.net for details
#
#   Author: San Bergmans
#   Date  : 2015-12-21
#
#   All file handling functions go into this file.
#
# ------------------------------------------------------------------------------

import sys
import os
import string

import assem
import dec
import errors
import target


# -----------------------------------------------------------------------------

def SayHello(version):

    """
    Print welcome message
    """

    print("")
    print("SB-Cross Assembler version", version)
    print("Please visit www.sbprojects.net for a complete description.")
    print("")


# -----------------------------------------------------------------------------

def GetSourceName(arg):

    """
    Determine the source file name (or was it a help request?).
    Source file name can come from command parameter, SBASM environment
    variable, or from direct input by user.
    Direct user input may not be a help request.

    arg = command line parameters

    returns with source file name or help request.
    """

    if len(arg) == 1:
        # no file name given, maybe it's in an environment variable
        filename = os.environ.get(dec.DEF_ENV)
        if (filename is None or filename == ''):
            # No name so far, ask user for file name
            filename = input("Please specify file name: ")
            filename = filename.strip()
            print("")
            if filename == '':
                return "-fatal"
        if filename[0] == '-':
            # Help request is not allowed here
            return "-h"

    else:
        # file name is given
        if arg[1][0] == '-':
            # Parameter is not a file name, do a help request
            return arg[1]
        else:
            # Parameter was a file name
            filename = arg[1]
            if len(arg) > 2:
                errors.AsmWarning("Extra arguments are ignored.")
    # Add default extension if extension not given
    filename = AddDefaultExt(filename, '.asm')

    if len(filename) == 0:
        # I guess the user needs some guidence anyway
        filename = '-h'

    return filename


# -----------------------------------------------------------------------------

def AddDefaultExt(filename, extension):

    """
    Normalize the case, according to OS. On Unix, do nothing. On Windows
    convert to lower case and change \ into / .
    See if the filename already has an extension or ends in a dot.
    If not add the default extension (extension parameter).
    """

    # First make file name OS resistant
    filename = os.path.normcase(os.path.normpath(filename))
    if filename[-1] != '.':
        # only if filename doesn't end in a dot
        ext = os.path.splitext(filename)[1]

        if ext == "":
            # Add default extension if no extension was given
            filename = filename + extension
    else:
        # clear trailing dot
        filename = filename[:-1]

    return filename


# -----------------------------------------------------------------------------

def OpenSourceFile(filename):

    """
    Open a source file. This may be the main source file, but may just as
    well be an included file.
    File handles are pushed onto the source file stack.
    """

    global Asm

    try:
        filehandle = open(filename, 'r', errors="ignore")
    except:
        errors.DoError('sourcerr', True)

    dec.Asm.File_Handle.append(filehandle)
    dec.Asm.File_LineNo.append(0)
    dec.Asm.File_Name.append(filename)

    return


# -----------------------------------------------------------------------------

def OpenFile(filename):

    """
    Open a list file for writing.
    """

    try:
        filehandle = open(filename, 'w')
    except:
        errors.DoError('wropen', False)
        filehandle = sys.stdout

    return filehandle


# -----------------------------------------------------------------------------

def CloseAllFiles():

    """
    Close all files.
    """

    global Asm

    if dec.Asm.List_File != sys.stdout:
        dec.Asm.List_File.close()
        dec.Asm.List_File = sys.stdout

    if dec.Asm.Error_File is not None:
        dec.Asm.Error_File.close()
        dec.Asm.Error_File = None

    target.CloseTarget(0)
    target.CloseTarget(2)

    while len(dec.Asm.File_Handle) > 0:
        dec.Asm.File_Handle[-1].close()
        dec.Asm.File_Handle.pop()

    if dec.Asm.Symbol_File is not None:
        dec.Asm.Symbol_File.close()
        dec.Asm.Symbol_File = None


# -----------------------------------------------------------------------------

def SymbolFile():

    """
    Fill the symbol file if it is open.
    """

    if dec.Asm.Symbol_File is None:
        return

    symlist = sorted(dec.Asm.Symbol_Table)

    for i in symlist:
        if not dec.Asm.Symbol_Table[i][2]:
            # Only list constants, not variables
            name = i
            if ':' in name:
                # It could be a local label
                # Local label is stored as global:local|000
                name = name[name.find(':')+1:]
                # Get macro label index (must be 000)
                macro = name[name.find('|')+1:]
                # Isolate the local label name
                name = '.' + name[:name.find('|')]
                if int(macro) != 0:
                    # macro label index should have been 0, skip this one
                    continue
            # Get the value of the label
            decvalue = dec.Asm.Symbol_Table[i][0]
            if decvalue < 0:
                decvalue = decvalue & dec.MAX32
            value = '$' + ('0' * 7 + hex(decvalue)[2:])[-8:].upper()
            # Get the reference count of the label
            count = str(dec.Asm.Symbol_Table[i][3])
            if len(count) < 3:
                # Add trailing spaces to align the column a bit
                count = ('  ' + count)[-3:]
            count = 'RefCount=' + count
            # Get the memory type in which this label was declared
            if dec.Asm.Symbol_Table[i][4] == 0:
                mem = 'Mem=Code'
            elif dec.Asm.Symbol_Table[i][4] == 1:
                mem = 'Mem=RAM '
            else:
                mem = 'Mem=EEPR'
            # Get the source file in which this label was declared
            source = 'Source=' + dec.Asm.Symbol_Table[i][5]
            message = name + ' ' * (15-len(name)) + ' .EQ     ' + value + '   '
            message += count + ', ' + mem + ', ' + source + ' ' + dec.EOL
            dec.Asm.Symbol_File.write(message)


# -----------------------------------------------------------------------------

def Binclude(handle, format):

    """
    Read a binary include file and send all data bytes directly to the output
    file. No bytes are displayed.
    These formats are supported: 'BIN', 'E52', 'FPC', 'HEX', 'INT', 'MOT',
    'SIG', 'TEK'
    """

    if format == 'BIN':
        # Binary files are read byte by byte
        BincBIN(handle)
    else:
        # Other formats are read line by line
        while True:
            line = handle.readline()
            if len(line) == 0:
                # End of file reached
                break
            line = line.strip()
            if not(line == '' or (line[0] in ('!;#*\'"' + chr(26)))):
                # Line not empty and it doesn't contain a remark
                biparser = eval('Binc' + format.upper())
                if biparser(line):
                    # End of file marker found, or error has occurred
                    break

    # Close the binary include file
    handle.close()


# -----------------------------------------------------------------------------

def BincBIN(handle):

    """
    Read the entire plain binary file.
    This one's very easy.
    """

    while True:
        byte = handle.read(1)
        if not byte:
            break
        dec.Cross.SaveByte(ord(byte), False)


# -----------------------------------------------------------------------------

def BincHEX(line):

    """
    Parse a plain HEX line.
    This one's easy.
    """

    for i in range(0, len(line), 2):
        # Translate each hex digit pair into a byte

        value = HexPair(line[i:i+2])
        if not value[0]:
            target.SaveByte(value[1], False)
        else:
            return True

    return False


# -----------------------------------------------------------------------------

def BincINT(line):

    """
    Parse an Intel HEX line.
    The address field of the binary file is ignored.
    To keep it simple we ignore all modes which are not 0
    For the same reason we ignore the checksum
    """

    if line[0] != ':':
        # Line should have started with :
        errors.DoError('binform', False)
        return True

    if line == ':00000001FF':
        # End of file record found, we're done
        return True

    bc = HexPair(line[1:3])

    mode = HexPair(line[7:9])

    if bc[0] or mode[0]:
        # An error was encountered in one of these values
        errors.DoError('binform', False)
        return True

    if mode[1] in (1, 2, 3, 4, 5):
        # Ignore all modes, except mode 0
        return False

    for i in range(0, bc[1]*2, 2):
        # Translate each hex digit pair into a byte

        value = HexPair(line[i+9:i+11])
        if not value[0]:
            dec.Cross.SaveByte(value[1], False)
        else:
            # An error was found in this byte
            return True

    return False


# -----------------------------------------------------------------------------

def BincMOT(line):

    """
    Parse a Motorola S line.
    The address field of the binary file is ignored.
    To keep things simple we'll ignore the checksum.
    """

    if line[0] != 'S':
        # Line should have started with S
        errors.DoError('binform', False)
        return True

    if line[1] in '987':
        # End of file record found, we're done
        return True

    if not line[1] in '123':
        # Not a legal mode byte
        errors.DoError('binform', False)
        return True

    adrlen = int(line[1], 16) * 2 + 2

    bc = HexPair(line[2:4])
    bc = (bc[0], bc[1] - adrlen//2 - 1)

    if bc[0] or bc[1] <= 0:
        # An error was encountered in one of these values
        errors.DoError('binform', False)
        return True

    begin = 4 + adrlen

    for i in range(0, bc[1]*2, 2):
        # Translate each hex digit pair into a byte
        value = HexPair(line[i+begin:i+2+begin])
        if not value[0]:
            dec.Cross.SaveByte(value[1], False)
        else:
            # An error was found in this byte
            return True

    return False


# -----------------------------------------------------------------------------

def BincSIG(line):

    """
    Parse a Signetics line.
    The address field of the binary file is ignored.
    To keep things simple we'll ignore both checksums.
    """

    if line[0] != ':':
        # Line should have started with :
        errors.DoError('binform', False)
        return True

    bc = HexPair(line[5:7])

    if bc[0]:
        # An error was encountered in one of these values
        errors.DoError('binform', False)
        return True

    if bc[1] == 0:
        # End of file reached
        return True

    for i in range(0, bc[1]*2, 2):
        # Translate each hex digit pair into a byte

        value = HexPair(line[i+9:i+11])
        if not value[0]:
            dec.Cross.SaveByte(value[1], False)
        else:
            # An error was found in this byte
            return True

    return False


# -----------------------------------------------------------------------------

def BincTEK(line):

    """
    Parse a Tektronics line.
    The address field of the binary file is ignored.
    To keep things simple we'll ignore both checksums.
    """

    if line[0] != '/':
        # Line should have started with :
        errors.DoError('binform', False)
        return True

    bc = HexPair(line[5:7])

    if bc[0]:
        # An error was encountered in one of these values
        errors.DoError('binform', False)
        return True

    if bc[1] == 0:
        # End of file reached
        return True

    for i in range(0, bc[1]*2, 2):
        # Translate each hex digit pair into a byte

        value = HexPair(line[i+9:i+11])
        if not value[0]:
            dec.Cross.SaveByte(value[1], False)
        else:
            # An error was found in this byte
            return True

    return False


# -----------------------------------------------------------------------------

def BincFPC(line):

    """
    Parse an FPC hex line.
    The address field of the binary file is ignored.
    To keep things simple we'll ignore the checksum too.
    """

    if line[0] != '$':
        # Line should have started with :
        errors.DoError('binform', False)
        return True

    if line[1:6] == '%%%%%':
        # End of file marker
        return False

    pp = 1

    block = ReadFpc(line[pp:pp+5])
    if dec.Flags.ErrorInLine:
        return True
    pp = pp + 5

    bc = block[1]

    if block[3] != 1:
        # An address field is given, ignore it
        pp = pp + 5
        bc = bc - 4

    while bc > 0:
        block = ReadFpc(line[pp:pp+5])
        if dec.Flags.ErrorInLine:
            return True
        pp = pp + 5

        dec.Cross.SaveByte(block[0], False)
        bc = bc - 1
        if bc != 0:
            dec.Cross.SaveByte(block[1], False)
            bc = bc - 1
            if bc != 0:
                dec.Cross.SaveByte(block[2], False)
                bc = bc - 1
                if bc != 0:
                    dec.Cross.SaveByte(block[3], False)
                    bc = bc - 1

    return False


# -----------------------------------------------------------------------------

def BincE52(line):

    """
    Parse an E52 hex line.
    """

    if line[7] != ':':
        # Line should have a : here
        errors.DoError('binform', False)
        return True

    bc = HexPair(line[0:2])

    if bc[0]:
        # An error was encountered in one of these values
        errors.DoError('binform', False)
        return True

    if bc[1] == 0:
        # End of file reached
        return True

    for i in range(0, bc[1]*3, 3):
        # Translate each hex digit pair into a byte

        value = HexPair(line[i+8:i+10])
        if not value[0]:
            dec.Cross.SaveByte(value[1], False)
        else:
            # An error was found in this byte
            return True

    return False


# -----------------------------------------------------------------------------

def HexPair(pair):

    """
    Convert two hex digits to a byte value, unless it weren't two hex digits.
    - Exit tuple (error, value)
    """

    if len(pair) == 2 and pair[0] in string.hexdigits and\
            pair[1] in string.hexdigits:
        return (False, int(pair, 16))
    else:
        if len(pair) == 2:
            errors.DoError('illhex', False)
        else:
            errors.DoError('binform', False)
        return (True, 0)


# -----------------------------------------------------------------------------

def ReadFpc(line):

    """
    Translate a 5 character string into 4 byte sized values
    Exits with a 4 number tuple
    """

    total = 0
    if len(line) != 5:
        errors.DoError('binform', False)
        return (0, 0, 0, 0)
    for i in range(0, 5):
        if line[i] < '%' or line[i] > 'z' or line[i] == '*':
            # An illegal chacter found
            errors.DoError('binform', False)
            return (0, 0, 0, 0)
        total = total * 85
        base = ord(line[i]) - 37
        if base >= 5:
            base = base - 1
        total = total + base

    byte1 = (total >> 24) & 255
    byte2 = (total >> 16) & 255
    byte3 = (total >> 8) & 255
    byte4 = total & 255

    return (byte1, byte2, byte3, byte4)


# -----------------------------------------------------------------------------

if __name__ == '__main__':
    print("")
    print("This is a python module, it's not a program.")
    print("This module is part of the sbasm package.")
    print("Run sbasm instead.")
    print("")
