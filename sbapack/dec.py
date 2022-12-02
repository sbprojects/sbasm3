# ------------------------------------------------------------------------------
#
#   dec.py
#
#   Package module file for the SB-Assembler sbasm
#   See www.sbprojects.net for details
#
#   Author: San Bergmans
#   Date  : 2015-12-21
#
#   All global declarations go into this file.
#
# ------------------------------------------------------------------------------

import sys
import os


# ------------------------------------------------------------------------------
# Default values
# ------------------------------------------------------------------------------

VERSION = "3.03.07"
DEF_ENV = "SBASM"
ERRLVL_OK = 0       # No errors
ERRLVL_PASS1 = 1    # Errors found during pass 1
ERRLVL_PASS2 = 2    # Errors found during pass 2
ERRLVL_BREAK = 4    # Quit by user
ERRLVL_FATAL = 5    # Fatal error found
ERRLVL_PYTHON = 5   # Fatal, wrong python version


# ------------------------------------------------------------------------------
# Some constant values
# ------------------------------------------------------------------------------

COMMENT1 = ";*#@"       # Legal comment delimiters on beginning of the line
COMMENT2 = ";"          # Legal comment delimiters anywhere else on the line
EOL = '\n'              # System dependant end of line character
MAX8 = (1 << 8)-1       # Max value for 8 bit numbers
MAX16 = (1 << 16)-1     # Max value for 16 bit numbers
MAX32 = (1 << 32)-1     # Max value for 32 bit numbers
MINUS_ONE = 0xFFFFFFFF  # 32 bit representation of -1


# ------------------------------------------------------------------------------
# Global variables
# ------------------------------------------------------------------------------

class Struct:       # General data structure class
    pass


Asm = Struct()
Asm.File_Handle = []    # Source file stack file handle
Asm.File_LineNo = []    # Source file stack current line number
Asm.File_Name = []      # Source file stack file name
Asm.Errors = 0          # No of errors during this pass
Asm.Warnings = 0        # No of warnings during this pass
Asm.Pass = 0            # Assembler pass indicator
Asm.Parse_Line = ""     # Source line to be parsed
Asm.Parse_Pointer = 0   # Pointer during source line parsing
Asm.Optional = True     # Can ignore optional operand if False
Asm.New_Label = ""      # The label name found in the label field
Asm.Last_Global = ""    # Last global label (there is none if "")
Asm.Mnemonic = ""       # The mnemonic or directive found on this line
Asm.Timing = ""         # Instruction timing data for listing
Asm.Timing_Length = 0   # Max length of timing string
Asm.Cond_True = 0       # Conditional assembly counter level counter
Asm.Cond_False = 0      # Conditional assembly level counter, false if >0
Asm.Macro_Def = ""      # Holds the macro's name during definition
Asm.Macro_Stack = []    # When len > 0 a macro is expanding
#                         [0] = macro name, [1] = current line
#                         [2] = previous local index, [3] = list of parameters
Asm.Macro_Number = 0    # Macro level number, for the purpose of macro labels
Asm.Local_Index = -1    # Current local label index (0 = main, >0 = macro)

Asm.PP_Address = 0      # Program pointer in processor memory
Asm.PH_Address = 0      # Temporary changed program pointer
Asm.TA_Address = 0      # Code memory target address
Asm.Fraction = 0        # Fraction counter for word generating assemblers
Asm.Max_Address = MAX32  # Max code address of current processor
Asm.PP_TA_Factor = 1    # Relation between PP and TA
Asm.RM_Address = 0      # RAM memory target address
Asm.EM_Address = 0      # EEPROM memory target address
Asm.Memory = 0          # Selected memory: 0 = Code, 1 = RAM, 2 = EEPROM
Asm.BOL_Address = 0     # Begin of line address (for label and $ variable)
Asm.List_Address = 0    # Same as BOL, however is incremented at each byte save
Asm.List_Line = ""      # Used to assemble the line to be listed
Asm.List_File = sys.stdout  # Current list file
Asm.List_Length = 256   # Maximum line length during listing
Asm.Error_File = None   # Used to collect all errors
Asm.Symbol_File = None  # Generated file containing all symbols
Asm.List_Byte_Cnt = 0   # Byte count on each list line

Asm.Code_Tfile = None     # File handle for code target file
Asm.Code_Tbuffer = []     # Line buffer for code target file
Asm.Code_Tformat = ''     # Code file's format
Asm.Code_Tfunc = None     # Indirect function handler
Asm.Code_Tlength = 0      # Wanted target record length
Asm.Code_Twrap = False    # Set if wrap warning already given
Asm.Code_Wrap = False     # Set if code memory full warning already given
Asm.Code_Tmaxadd = 0      # Last allowed address in this file format
Asm.Code_Tsegment = 0     # Segment number for intel hex files
Asm.Code_MOScount = 0     # Record counter for Code based MOS Technologies
Asm.Eeprom_Tfile = None   # File handle for EEPROM target file
Asm.Eeprom_Tbuffer = []   # Line buffer for EEPROM target file
Asm.Eeprom_Tformat = ''   # EEPROM file's format
Asm.Eeprom_Tfunc = None   # Indirect function handler
Asm.Eeprom_Tlength = 0    # Wanted target record length
Asm.Eeprom_Twrap = False  # Set if wrap warning already given
Asm.Eeprom_Tmaxadd = 0    # Last allowed address in this file format
Asm.Eeprom_Tsegment = 0   # Segment number for intel hex files
Asm.Eeprom_MOScount = 0   # Record counter for Eeprom based MOS Technologies
Asm.Timestamp = ""        # Will hold the time stamp at the start of assembly
Asm.Run_Command = ""      # May hold the command to run after assembly

Asm.Macro = {}          # The macro dictionary
Asm.Symbol_Table = {}   # The main symbol table
#                         Contains list [value, forward, rw, refcount,
#                         memory, sourcefile]
Asm.Instructions = {}   # Dict with all instructions of current assembler


# ------------------------------------------------------------------------------
# Cross overlay functions
# ------------------------------------------------------------------------------

Cross = Struct()
Cross.Name = ""         # Holds cross overlay's name, including leading 'cr'
Cross.Overlay = None    # Holds cross overlay's object
Cross.Init = None       # Holds cross overlay's Init function
Cross.Directive = None  # Holds cross overlay's Directive handling function
Cross.Mnemonic = None   # Holds cross overlay's Mnemonic handling function
Cross.CleanUp = None    # Holds cross overlay's Cleanup handling function
Cross.SaveByte = None   # Vector for saving bytes to target file


# ------------------------------------------------------------------------------
# Flags
# ------------------------------------------------------------------------------

Flags = Struct()
Flags.List = True           # Listing on/off
Flags.Mlist = True          # Macro listing on/off
Flags.Clist = True          # Conditional listing on/off
Flags.Tlist = False         # Instruction Time list flag
Flags.Comment = False       # Comment mode flag
Flags.BigEndian = False     # Big/Little Endian selection
Flags.ErrorBell = True      # Sound bell on errors. Doesn't work on all systems
Flags.ErrorPrinted = False  # Print source name only once until source changed
#                             again
Flags.ErrorInLine = False   # Suppress normal listing if error is found in this
#                             line
Flags.EndFile = False       # .EN directive found
Flags.ExitMacro = False     # Flag used by .XM to exit macro
Flags.DummyMode = False     # Dummy mode flag. Better not use this anymore
Flags.CodeWarn = False      # Writing to code warning already given


# -----------------------------------------------------------------------------

if __name__ == '__main__':
    print("")
    print("This is a python module, it's not a program.")
    print("This module is part of the sbasm package.")
    print("Run sbasm instead.")
    print("")
