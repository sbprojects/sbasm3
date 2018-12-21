# ------------------------------------------------------------------------------
#
#   macros.pyn
#
#   Package module file for the SB-Assembler sbasm
#   See www.sbprojects.net for details
#
#   Author: San Bergmans
#   Date  : 2015-12-21
#
#   All macro handling functions go into this file.
#
# ------------------------------------------------------------------------------

import sys
import os

import assem
import dec
import errors
import listing


# -----------------------------------------------------------------------------

def DefineMacro():

    global Asm

    labelfield = ''
    mnemonic = ''

    if dec.Asm.Parse_Line.isspace() or dec.Asm.Parse_Line[0] in dec.COMMENT1:
        # This line contains nothing or comment, don't parse it
        pass
    else:
        if dec.Asm.Parse_Line[0] != ' ':
            # Get label name, but don't bother about syntax
            labelfield = assem.GetWord()
        mnemonic = assem.GetMnemonic()

    if mnemonic != '' and mnemonic[0] == '.':
        # See if any of the reserved mnemonics is given
        mnemonic = mnemonic[1:3]
        if mnemonic in ('MA', 'IN', 'CH', 'BI', 'CO', 'EC'):
            errors.DoError('illdir', False)
            return      # Don't add this line to the macro definition
        if mnemonic == 'EM':
            # End the macro definition
            if labelfield != '':
                # The .EM line doesn't allow a label declaration
                errors.DoError('illdec', False)
                dec.Asm.New_Label = ''
            dec.Asm.Macro_Def = ''
            return          # Don't add this line to the definition!

    if dec.Asm.Pass == 1:
        # Only add to the definition during pass 1
        dec.Asm.Macro[dec.Asm.Macro_Def].append(dec.Asm.Parse_Line)


# -----------------------------------------------------------------------------

def GetParameters():

    global Asm

    parameters = []

    if dec.Asm.Parse_Pointer == 0 or assem.NowChar() in dec.COMMENT2:
        # No operand field or operand field is only comment
        return parameters

    while True:
        parameter = GetOneParameter()
        parameters.append(parameter)
        if assem.NowChar() == " ":
            # End of parameter list
            break
        if assem.NowChar(True) == ",":
            # Something more follows
            if assem.NowChar() == " ":
                # A space followed the comma. We allow one space for
                # readability
                assem.IncParsePointer()
            if assem.NowChar() in " ;":
                # Nothing else follows, save final empty parameter
                parameters.append("")
                break

    return parameters


# -----------------------------------------------------------------------------

def GetOneParameter():

    global Asm

    parameter = ""

    if assem.NowChar() == ",":
        # It is an empty parameter
        return parameter
    endmark = assem.NowChar()
    if endmark in "'\"":
        # Start of literal string
        assem.IncParsePointer()
        while assem.NowChar() != endmark:
            # Get parameter until end mark
            singlechar = assem.NowChar(True)
            if singlechar == "\\":
                # Escaping, include the Escape symbol in parameter
                parameter = parameter + singlechar
                # And add the Escaped character too
                singlechar = assem.NowChar(True)
            parameter = parameter + singlechar
        assem.IncParsePointer()     # Increment past endmark
        return parameter
    else:
        # Get parameter until space or comma
        while not assem.NowChar() in " ,":      # Can never be beyond end line!
            parameter = parameter + assem.NowChar()
            assem.IncParsePointer()
        return parameter


# -----------------------------------------------------------------------------

def ExpandMacro():

    global Asm, Flags

    while len(dec.Asm.Macro_Stack) > 0:
        stackindex = len(dec.Asm.Macro_Stack) - 1
        macroname = dec.Asm.Macro_Stack[stackindex][0]
        macroline = dec.Asm.Macro_Stack[stackindex][1]
        parameters = dec.Asm.Macro_Stack[stackindex][3]

        if macroline < len(dec.Asm.Macro[macroname]):
            # This macro still has at least one line left to be parsed
            dec.Asm.Parse_Line = dec.Asm.Macro[macroname][macroline]
            macroline = macroline + 1
            dec.Asm.Macro_Stack[stackindex][1] = macroline
            ExpandParameters(parameters)
            assem.ParseLine()
            listing.ListLine(macroline, dec.Asm.Parse_Line)
            if dec.Flags.EndFile:
                # .EN directive was encountered, close all macro expansions
                # and the most recent source file
                dec.Asm.Macro_Stack = []
                dec.Asm.Local_Index = 0
                # leave flag True, has to break out of while in assem.Assemble
            if dec.Flags.ExitMacro:
                # .XM directive wants to exit this macro
                dec.Flags.ExitMacro = False
                dec.Asm.Local_Index = dec.Asm.Macro_Stack[stackindex][2]
                dec.Asm.Macro_Stack.pop()
        else:
            # End of this macro, pull it off the stack
            dec.Asm.Local_Index = dec.Asm.Macro_Stack[stackindex][2]
            dec.Asm.Macro_Stack.pop()


# -----------------------------------------------------------------------------

def ExpandParameters(parameters):

    global Asm

    if ']' in dec.Asm.Parse_Line:
        # Bother, there could be parameter marks in there. Let's try to find
        # them

        legalchars = '0123456789#'
        linelist = dec.Asm.Parse_Line.split(']')
        parseline = linelist.pop(0)     # First item never starts with ]
        for i in linelist:
            if i == '':
                ident = ''
            else:
                ident = i[0]
            if ident != '' and ident in legalchars:
                if ident == '#':
                    param = str(len(parameters))
                else:
                    index = int(ident) - 1
                    if index < 0:
                        index = 9
                    if index < len(parameters):
                        param = parameters[index]
                    else:
                        param = ""
                parseline = parseline + param
                # Now let's try to keep formatting as good as possible
                line = i[1:]
                if len(param) <= 2:
                    # Can't do much about these short parameters
                    parseline = parseline + line
                elif len(line) <= 1:
                    # Can't do much if only one character follows
                    parseline = parseline + line[1:]
                else:
                    if i[0] != ' ':
                        # No space follow the parameter, nothing to do either
                        parseline = parseline + line
                    else:
                        if line[:len(param)].isspace():
                            # What follows contains only spaces for the length
                            # of the parameter
                            line = line[len(param):]
                            if line[0] != ' ':
                                line = " " + line
                            parseline = parseline + line
                        else:
                            # Not enough spaces to fit param, clear them all
                            # except one
                            parseline = parseline + " " + line.lstrip()
            else:
                parseline = parseline + ']' + i
        if parseline[-1] != ' ':
            parseline = parseline + ' '
        dec.Asm.Parse_Line = parseline


# -----------------------------------------------------------------------------

if __name__ == '__main__':
    print("")
    print("This is a python module, it's not a program.")
    print("This module is part of the sbasm package.")
    print("Run sbasm instead.")
    print("")
