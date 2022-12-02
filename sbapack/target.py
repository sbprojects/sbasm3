# ------------------------------------------------------------------------------
#
#   target.py
#
#   Package module file for the SB-Assembler sbasm
#   See www.sbprojects.net for details
#
#   Author: San Bergmans
#   Date  : 2015-12-21
#
#   This file contains all target file functions.
#
# ------------------------------------------------------------------------------

import sys
import os

import dec
import errors
import listing


# ------------------------------------------------------------------------------

def CodeByte(value, list=True):

    """
    Save a byte to the target file.
    Give a warning only once if the byte is not written to code memory!
    This is the routine to be used by crosses to save a code byte.
    """

    if dec.Asm.Memory != 0 and not dec.Flags.CodeWarn and dec.Asm.Pass == 2:
        dec.Flags.CodeWarn = True
        errors.DoWarning('notcode', True)

    SaveByte(value, list)


# ------------------------------------------------------------------------------

def CodeWord(value, list=True):

    """
    Save a word to the target file.
    Give a warning only once if the byte is not written to code memory!
    This is the routine to be used by crosses to save a code word.
    """

    if dec.Asm.Memory != 0 and not dec.Flags.CodeWarn and dec.Asm.Pass == 2:
        dec.Flags.CodeWarn = True
        errors.DoWarning('notcode', True)

    SaveWord(value, list)


# ------------------------------------------------------------------------------

def CodeLong(value, list=True):

    """
    Save a long to the target file.
    Give a warning only once if the byte is not written to code memory!
    This is the routine to be used by crosses to save a code long.
    """

    if dec.Asm.Memory != 0 and not dec.Flags.CodeWarn and dec.Asm.Pass == 2:
        dec.Flags.CodeWarn = True
        errors.DoWarning('notcode', True)

    SaveLong(value, list)


# ------------------------------------------------------------------------------

def SaveByte(value, list=True):

    """
    Save a byte to the current open target file.
    We ignore all bits which don't belong to the byte.
    """

    global Asm, Flags

    value = value & 255     # Ignore irrelevant bits.

    if list:
        listing.ListByte(value)

    if dec.Asm.Memory == 0:
        # In code memory

        # Check if byte is still within address limit
        if (dec.Asm.Pass == 2) and (not dec.Asm.Code_Wrap) and\
                (dec.Asm.PP_Address > dec.Asm.Max_Address):
            dec.Asm.Code_Wrap = True
            # True because will only happen in pass 2
            errors.DoWarning('maxaddr', True)

        if (dec.Asm.Pass == 2) and (dec.Asm.Code_Tformat != '') and\
                (not dec.Flags.DummyMode):
            if len(dec.Asm.Code_Tbuffer) == 0:
                dec.Asm.Code_Tbuffer.append(dec.Asm.TA_Address)
            dec.Asm.Code_Tbuffer.append(value)
            if len(dec.Asm.Code_Tbuffer) > dec.Asm.Code_Tlength:
                FlushTarget(0)

        IncPP()

    elif dec.Asm.Memory == 1:
        # In RAM memory

        # No need to save the byte to RAM memory!

        dec.Asm.RM_Address = dec.Asm.RM_Address + 1

    elif dec.Asm.Memory == 2:
        # In EEPROM memory

        if (dec.Asm.Pass == 2) and (dec.Asm.Eeprom_Tformat != ''):
            if len(dec.Asm.Eeprom_Tbuffer) == 0:
                dec.Asm.Eeprom_Tbuffer.append(dec.Asm.EM_Address)
            dec.Asm.Eeprom_Tbuffer.append(value)
            if len(dec.Asm.Eeprom_Tbuffer) > dec.Asm.Eeprom_Tlength:
                FlushTarget(2)

        if dec.Asm.Pass == 2 and (not dec.Asm.Eeprom_Twrap) and\
                dec.Asm.EM_Address > dec.Asm.Eeprom_Tmaxadd:
            dec.Asm.Eeprom_Twrap = True
            # True because will only happen in pass 2
            errors.DoWarning('trange', True)
            dec.Asm.EM_Address = dec.Asm.EM_Address & ((1 << 32) - 1)

        dec.Asm.EM_Address = dec.Asm.EM_Address + 1

        if dec.Asm.Eeprom_Tformat in ('INT', 'INS'):
            if (dec.Asm.EM_Address & 65535) == 0:
                # Segment changed! Flush current line before change of segment
                FlushTarget(2)
    if dec.Asm.Memory == 0:
        # Code address is not always incremented by 1
        dec.Asm.List_Address = dec.Asm.PH_Address
    else:
        dec.Asm.List_Address = dec.Asm.List_Address + 1


# -----------------------------------------------------------------------------

def IncPP():

    """
    Increment the Program Pointer.
    """

    global Asm

    dec.Asm.Fraction = dec.Asm.Fraction + 1
    if dec.Asm.Fraction >= dec.Asm.PP_TA_Factor:
        dec.Asm.PP_Address = dec.Asm.PP_Address + 1
        dec.Asm.PH_Address = dec.Asm.PH_Address + 1
        dec.Asm.Fraction = 0

    if not dec.Flags.DummyMode:
        if dec.Asm.Pass == 2 and (not dec.Asm.Code_Twrap) and\
                dec.Asm.TA_Address > dec.Asm.Code_Tmaxadd:
            dec.Asm.Code_Twrap = True
            # True because will only happen in pass 2
            errors.DoWarning('trange', True)
            dec.Asm.TA_Address = dec.Asm.TA_Address & dec.MAX32
        dec.Asm.TA_Address = dec.Asm.TA_Address + 1

    if dec.Asm.Code_Tformat in ('INT', 'INS'):
        if (dec.Asm.TA_Address & 0xFFFF) == 0:
            # Segment changed! Flush current line before change of segment
            FlushTarget(0)


# -----------------------------------------------------------------------------

def SaveWord(value, list=True):

    """
    Save a word to the current open target file, minding the endian mode.
    """

    global Asm, Flags

    if dec.Flags.BigEndian:
        dec.Cross.SaveByte(value >> 8, list)
        dec.Cross.SaveByte(value, list)
    else:
        dec.Cross.SaveByte(value, list)
        dec.Cross.SaveByte(value >> 8, list)


# -----------------------------------------------------------------------------

def SaveLong(value, list=True):

    """
    Save a long word to the current open target file, minding the endian mode.
    """

    global Asm, Flags

    if dec.Flags.BigEndian:
        dec.Cross.SaveByte(value >> 24, list)
        dec.Cross.SaveByte(value >> 16, list)
        dec.Cross.SaveByte(value >> 8, list)
        dec.Cross.SaveByte(value, list)
    else:
        dec.Cross.SaveByte(value, list)
        dec.Cross.SaveByte(value >> 8, list)
        dec.Cross.SaveByte(value >> 16, list)
        dec.Cross.SaveByte(value >> 24, list)


# -----------------------------------------------------------------------------

def BoundarySync():

    """
    Synchronize program word boundaries in case of multiple byte program
    counter, like in AVR. Only in Code memory
    """

    global Asm

    if dec.Asm.Memory == 0:
        while dec.Asm.Fraction > 0:
            dec.Cross.SaveByte(0, False)
        # Begin of line address may have changed now, update it
        dec.Asm.BOL_Address = dec.Asm.PH_Address
        dec.Asm.List_Address = dec.Asm.PH_Address


# -----------------------------------------------------------------------------

def NewOrgSet(memory):

    """
    Handle flushing of the current target line.
    We possibly have to close an unformatted target file as well.
    Possible parameter values are 0 for code memory and 2 for EEPROM memory
    """

    if dec.Asm.Pass == 2:
        # Only during pass 2

        if memory == 0:
            # In code memory
            if dec.Asm.Code_Tformat != '':
                # A targetfile is open
                FlushTarget(0)
                if dec.Asm.Code_Tformat in ('BIN', 'HEX'):
                    # It's an unformattedtext target file
                    if dec.Asm.Code_Tfile.tell() != 0:
                        # Unformatted target file is not empty
                        CloseTarget(0)
                        errors.DoWarning('tclosed', True)
        else:
            # It's EEPROM or RAM section
            if dec.Asm.Eeprom_Tformat != '':
                # A target file is open
                FlushTarget(2)
                if dec.Asm.Eeprom_Tformat in ('BIN', 'HEX'):
                    # It'sn unformatted target file
                    if dec.Asm.Eeprom_Tfile.tell() != 0:
                        # Unformatted target file is not empty
                        CloseTarget(2)
                        errors.DoWarning('tclosed', True)


# -----------------------------------------------------------------------------

def FlushTarget(memory=0, last=False):

    """
    Flush the current target line
    """

    global Asm

    if memory == 0:
        # Flush main memory line
        if dec.Asm.Code_Tformat == 'BIN':
            TformatBIN(dec.Asm.Code_Tbuffer, dec.Asm.Code_Tfile)
        elif dec.Asm.Code_Tformat != "":
            line = dec.Asm.Code_Tfunc(dec.Asm.Code_Tbuffer, memory, last)
            dec.Asm.Code_Tfile.write(line)
        dec.Asm.Code_Tbuffer = []

    elif memory == 2:
        # Flush EEPROM memory line
        if dec.Asm.Eeprom_Tformat == 'BIN':
            TformatBIN(dec.Asm.Eeprom_Tbuffer, dec.Asm.Eeprom_Tfile)
        elif dec.Asm.Eeprom_Tformat != "":
            line = dec.Asm.Eeprom_Tfunc(dec.Asm.Eeprom_Tbuffer, memory, last)
            dec.Asm.Eeprom_Tfile.write(line)
        dec.Asm.Eeprom_Tbuffer = []


# -----------------------------------------------------------------------------

def CloseTarget(memory):

    """
    If a target file is open, flush the current target line and then close it.
    """

    if memory == 0:
        if dec.Asm.Code_Tformat != '':
            FlushTarget(memory, True)
            dec.Asm.Code_Tfile.close()
            dec.Asm.Code_Tformat = ''
            dec.Asm.Code_Tmaxadd = (1 << 32) - 1
    else:
        if dec.Asm.Eeprom_Tformat != '':
            FlushTarget(memory, True)
            dec.Asm.Eeprom_Tfile.close()
            dec.Asm.Eeprom_Tformat = ''
            dec.Asm.EepromTmaxadd = (1 << 32) - 1


# -----------------------------------------------------------------------------

def ToHex(value, size):

    """
    Convert a value to Hex text with leading zeroes to fill up to size.
    """

    text = '00000000' + hex(value)[2:]
    if text[-1] == 'L':
        text = text[:-1]
    return text[-size*2:].upper()


# -----------------------------------------------------------------------------

def TformatAP1(buffer, memory, last=False):

    """
    Format an Apple 1 target file.
    """

    if len(buffer) > 0:
        address = buffer[0]

        line = ToHex(address, 2) + ':'
        first = True

        for i in buffer:
            if first:
                # Skip address of buffer
                first = False
            else:
                # Write only the data bytes
                line = line + ' ' + ToHex(i, 1)
        line = line + dec.EOL
    else:
        line = ''

    return line.upper()


# -----------------------------------------------------------------------------

def TformatMIN(buffer, memory, last=False):

    """
    Format an Minimal CPU System target file.
    (Same as Apple 1, except it generates lower case)
    """

    if len(buffer) > 0:
        address = buffer[0]

        line = ToHex(address, 2) + ':'
        first = True

        for i in buffer:
            if first:
                # Skip address of buffer
                first = False
            else:
                # Write only the data bytes
                line = line + ' ' + ToHex(i, 1)
        line = line + dec.EOL
    else:
        line = ''

    return line.lower()


# -----------------------------------------------------------------------------

def TformatBIN(buffer, file):

    """
    Format a binary file.
    """

    if len(buffer) == 0:
        return
    first = True
    for i in buffer:
        if first:
            # Skip address of buffer
            first = False
        else:
            # Write only the data bytes
            file.write(bytes([i]))


# -----------------------------------------------------------------------------

def TformatE52(buffer, memory, last=False):

    """
    Format an E52 target file.
    """

    if len(buffer) > 0:
        address = buffer[0]
        length = len(buffer) - 1
        checksum = 0

        line = ToHex(length, 1) + ' ' + ToHex(address, 2) + ':'
        first = True

        for i in buffer:
            if first:
                # Skip address of buffer
                first = False
            else:
                # Write only the data bytes
                line = line + ToHex(i, 1) + ' '
                checksum = checksum + i
        line = line + ToHex(checksum, 2) + dec.EOL
    else:
        line = ''

    return line.upper()


# -----------------------------------------------------------------------------

def TformatMOS(buffer, memory, last=False):

    """
    Format a MOS technology target file.
    """

    if len(buffer) > 0:
        if memory == 0:
            # Increment code record counter
            dec.Asm.Code_MOScount += 1
        elif memory == 2:
            # Increment eeprom record counter
            dec.Asm.Eeprom_MOScount += 1

        address = buffer[0]
        length = len(buffer) - 1
        checksum = length + ((address >> 8) & 0xFF) + (address & 0xFF)

        line = ';' + ToHex(length, 1) + ToHex(address, 2)
        first = True

        for i in buffer:
            if first:
                # Skip address of buffer
                first = False
            else:
                # Write only the data bytes
                line = line + ToHex(i, 1)
                checksum += i
        line = line + ToHex(checksum, 2) + dec.EOL
    else:
        line = ''

    if last:
        if memory == 0:
            # Get the code record counter
            records = dec.Asm.Code_MOScount
        elif memory == 2:
            # Get the eeprom record counter
            records = dec.Asm.Code_MOScount

        checksum = ((records >> 8) & 0xFF) + (records & 0xFF)
        line = ';00' + ToHex(records, 2) + ToHex(checksum, 2) + dec.EOL

    return line.upper()


# -----------------------------------------------------------------------------

def TformatHEX(buffer, memory, last=False):

    """
    Format a hex file.
    """

    if len(buffer) == 0:
        return ''
    line = ''
    first = True
    for i in buffer:
        if first:
            # Skip address of buffer
            first = False
        else:
            # Write only the data bytes
            line = line + ToHex(i, 1)
    line = line.upper() + dec.EOL
    return line


# -----------------------------------------------------------------------------

def TformatS19(buffer, memory, last=False):

    """
    Format an S19 file.
    """

    if len(buffer) > 0:
        address = buffer[0]
        length = len(buffer) + 2
        checksum = address + (address >> 8) + length

        line = 'S1' + ToHex(length, 1) + ToHex(address, 2)
        first = True

        for i in buffer:
            if first:
                # Skip address of buffer
                first = False
            else:
                # Write only the data bytes
                line = line + ToHex(i, 1)
                checksum = checksum + i
        checksum = (checksum & 255) ^ 255
        line = line + ToHex(checksum, 1) + dec.EOL
    else:
        line = ''

    if last:
        line = line + 'S9030000FC' + dec.EOL

    return line.upper()


# -----------------------------------------------------------------------------

def TformatS28(buffer, memory, last=False):

    """
    Format an S28 file.
    """

    if len(buffer) > 0:
        address = buffer[0]
        length = len(buffer) + 3
        checksum = address + (address >> 8) + (address >> 16) + length

        line = 'S2' + ToHex(length, 1) + ToHex(address, 3)
        first = True

        for i in buffer:
            if first:
                # Skip address of buffer
                first = False
            else:
                # Write only the data bytes
                line = line + ToHex(i, 1)
                checksum = checksum + i
        checksum = (checksum & 255) ^ 255
        line = line + ToHex(checksum, 1) + dec.EOL
    else:
        line = ''

    if last:
        line = line + 'S804000000FB' + dec.EOL

    return line.upper()


# -----------------------------------------------------------------------------

def TformatS37(buffer, memory, last=False):

    """
    Format an S37 file.
    """

    if len(buffer) > 0:
        address = buffer[0]
        length = len(buffer) + 4
        checksum = address + (address >> 8) + (address >> 16) +\
            (address >> 24) + length

        line = 'S3' + ToHex(length, 1) + ToHex(address, 4)
        first = True

        for i in buffer:
            if first:
                # Skip address of buffer
                first = False
            else:
                # Write only the data bytes
                line = line + ToHex(i, 1)
                checksum = checksum + i
        checksum = (checksum & 255) ^ 255
        line = line + ToHex(checksum, 1) + dec.EOL
    else:
        line = ''

    if last:
        line = line + 'S705000000FA' + dec.EOL

    return line.upper()


# -----------------------------------------------------------------------------

def TformatINT(buffer, memory, last=False):

    """
    Format an Intel Hex file.
    We have already prevented a segment change in the middle of the line.
    So we don't have to bother about that here.
    """

    global Asm

    if len(buffer) > 0:
        address = buffer[0] & 65535
        segment = buffer[0] >> 16
    else:
        if memory == 0:
            address = 0
            segment = dec.Asm.Code_Tsegment
        else:
            address = 0
            segment = dec.Asm.Eeprom_Tsegment

    line = ''
    if memory == 0:
        if dec.Asm.Code_Tformat == 'INS' and segment == 0 and\
                dec.Asm.Code_Tfile.tell() == 0:
            dec.Asm.Code_Tsegment = -1  # Force segment line generation
        if segment != dec.Asm.Code_Tsegment:
            # Generate segment line
            dec.Asm.Code_Tsegment = segment
            line = WriteSegment(segment)
    else:
        if dec.Asm.Eeprom_Tformat == 'INS' and segment == 0 and\
                dec.Asm.Eeprom_Tfile.tell() == 0:
            dec.Asm.Eeprom_Tsegment = -1  # Force segment line generation
        if segment != dec.Asm.Eeprom_Tsegment:
            # Generate segment line
            dec.Asm.Eeprom_Tsegment = segment
            line = WriteSegment(segment)

    if len(buffer) > 0:
        length = len(buffer) - 1
        checksum = address + (address >> 8) + length

        line = line + ':' + ToHex(length, 1) + ToHex(address, 2) + '00'
        first = True

        for i in buffer:
            if first:
                # Skip address of buffer
                first = False
            else:
                # Write only the data bytes
                line = line + ToHex(i, 1)
                checksum = checksum + i
        checksum = ((checksum ^ 255) + 1) & 255
        line = line + ToHex(checksum, 1) + dec.EOL

    if last:
        line = line + ':00000001FF' + dec.EOL

    return line.upper()


# -----------------------------------------------------------------------------

def WriteSegment(segment):

    """
    Generate segment line for Intel HEX files.
    """

    checksum = 2 + 4 + segment + (segment >> 8)
    checksum = ((checksum ^ 255) + 1) & 255
    line = ':02000004' + ToHex(segment, 2) + ToHex(checksum, 1) + dec.EOL

    return line


# -----------------------------------------------------------------------------

def TformatINS(buffer, memory, last=False):

    """
    Format a segmented Intel hex file"
    """

    return TformatINT(buffer, memory, last)


# -----------------------------------------------------------------------------

def TformatSIG(buffer, memory, last=False):

    """
    Format a Signetics file.
    """

    global Asm

    if len(buffer) > 0:
        address = buffer[0]
        length = len(buffer) - 1
        checksum = 0
        checksum = SigSum(checksum, address >> 8)
        checksum = SigSum(checksum, address)
        checksum = SigSum(checksum, length)

        if memory == 0:
            # Let's abuse the segment value to store next line's address
            # in case we need it for the closing record
            dec.Asm.Code_Tsegment = address + length
        else:
            dec.Asm.Eeprom_Tsegment = address + length

        line = ':' + ToHex(address, 2) + ToHex(length, 1) + ToHex(checksum, 1)
        first = True
        checksum = 0

        for i in buffer:
            if first:
                # Skip address of buffer
                first = False
            else:
                # Write only the data bytes
                line = line + ToHex(i, 1)
                checksum = SigSum(checksum, i)
        line = line + ToHex(checksum, 1) + dec.EOL
    else:
        line = ''

    if last:
        if memory == 0:
            address = dec.Asm.Code_Tsegment
        else:
            address = dec.Asm.Eeprom_Tsegment
        line = line + ':' + ToHex(address, 2) + '00' + dec.EOL

    return line.upper()


# -----------------------------------------------------------------------------

def SigSum(checksum, byte):

    """
    Calculate a Signetics checksum
    """

    byte = byte & 255
    checksum = checksum ^ byte
    checksum = checksum << 1
    checksum = (checksum & 255) + (checksum >> 8)

    return checksum


# -----------------------------------------------------------------------------

def TformatTEK(buffer, memory, last=False):

    """
    Format a Tektronix target file.
    """

    global Asm

    if len(buffer) > 0:
        address = buffer[0]
        length = len(buffer) - 1
        checksum = 0
        checksum = TekSum(checksum, address >> 8)
        checksum = TekSum(checksum, address)
        checksum = TekSum(checksum, length)

        if memory == 0:
            # Let's abuse the segment value to store next line's address
            # in case we need it for the closing record
            dec.Asm.Code_Tsegment = address + length
        else:
            dec.Asm.Eeprom_Tsegment = address + length

        line = '/' + ToHex(address, 2) + ToHex(length, 1) + ToHex(checksum, 1)
        first = True
        checksum = 0

        for i in buffer:
            if first:
                # Skip address of buffer
                first = False
            else:
                # Write only the data bytes
                line = line + ToHex(i, 1)
                checksum = TekSum(checksum, i)
        line = line + ToHex(checksum, 1) + dec.EOL
    else:
        line = ''

    if last:
        if memory == 0:
            address = dec.Asm.Code_Tsegment
        else:
            address = dec.Asm.Eeprom_Tsegment

        checksum = 0
        checksum = TekSum(checksum, address >> 8)
        checksum = TekSum(checksum, address)
        line = line + '/' + ToHex(address, 2) + '00' + ToHex(checksum, 1) +\
            dec.EOL

    return line.upper()


# -----------------------------------------------------------------------------

def TekSum(checksum, byte):

    """
    Calculate Tektronix checksum
    """

    checksum = checksum + (byte & 15)
    checksum = checksum + (byte >> 4)

    return checksum


# -----------------------------------------------------------------------------

def TformatFPC(buffer, memory, last=False):

    """
    Format an FPC target file.
    """

    if len(buffer) > 0:
        address = buffer[0]
        length = len(buffer) - 1 + 4
        # Don't add address LSB to checksum, will be added in for loop
        checksum = (address >> 8) + (address >> 16) + (address >> 24) + length

        for i in buffer:
            checksum = checksum + i     # This adds LSB of address too!
        checksum = ((checksum ^ 255) + 1) & 255

        line = '$' + ToFPC(checksum, length, 0, 0)
        line = line + ToFPC(((address >> 24) & 255), ((address >> 16) & 255),
                            ((address >> 8) & 255), address & 255)

        i = 1
        buf = len(buffer)
        while True:
            if i >= buf:
                break
            else:
                b2 = 0
                b3 = 0
                b4 = 0

                b1 = buffer[i]
                i = i + 1
                if i < buf:
                    b2 = buffer[i]
                    i = i + 1
                    if i < buf:
                        b3 = buffer[i]
                        i = i + 1
                        if i < buf:
                            b4 = buffer[i]
                            i = i + 1
                line = line + ToFPC(b1, b2, b3, b4)

        line = line + dec.EOL

    else:
        line = ''

    if last:
        line = line + '$%%%%%' + dec.EOL

    return line


# -----------------------------------------------------------------------------

def ToFPC(b1, b2, b3, b4):

    """
    Convert 4 bytes to a 5 character FPC combination.
    """

    value = 0 + (b1 << 24) + (b2 << 16) + (b3 << 8) + b4

    b5 = value % 85 + 37    # 37 is %, the starting digit
    value = value // 85
    b4 = value % 85 + 37
    value = value // 85
    b3 = value % 85 + 37
    value = value // 85
    b2 = value % 85 + 37
    b1 = value // 85 + 37
    if b1 >= 42:            # 42 is *, which has to be skipped
        b1 = b1 + 1
    if b2 >= 42:
        b2 = b2 + 1
    if b3 >= 42:
        b3 = b3 + 1
    if b4 >= 42:
        b4 = b4 + 1
    if b5 >= 42:
        b5 = b5 + 1

    return chr(b1) + chr(b2) + chr(b3) + chr(b4) + chr(b5)


# -----------------------------------------------------------------------------

if __name__ == '__main__':
    print("")
    print("This is a python module, it's not a program.")
    print("This module is part of the sbasm package.")
    print("Run sbasm instead.")
    print("")
