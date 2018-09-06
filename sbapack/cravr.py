# ------------------------------------------------------------------------------
#
#   cravr.py
#
#   Package module file for the SB-Assembler sbasm
#   See www.sbprojects.net for details
#
#   Author: San Bergmans
#   Date  : 2015-12-21
#
#   Cross Overlay for the AVR family of processors
#
# ------------------------------------------------------------------------------

import sys
import os

import assem
import dec
import errors
import target
import cravr    # Make my function names visible to dir()

crossversion = '3.02.01'
minversion = '3.01.00'
avrdirlist = {}

dec.Asm.AVR_Family = 0
dec.Asm.AVR_RAM_End = 0
dec.Asm.AVR_Flash_End = 0


# ------------------------------------------------------------------------------

def Help():

    print('Tell a little story about this cross overlay')


# ------------------------------------------------------------------------------

def CrossInit():

    global Asm, Flags, avrdirlist

    assem.CheckVersions(crossversion, minversion)

    # Tupple consists of these fields:
    # - Function to be called
    # - 8=Xmega, 4=Mega, 2=AVR, 1=Tiny
    # - 128=XMEGA, 64=Enhanced 4M, 32=Enhanced 128k, 16=Enhanced 8k,
    #   8-Classic 128k, 4=Classic 8k, 2=Minimal, 1=Reduced
    # - Opcode
    # - Tiniming
    dec.Asm.Instructions = {
     'ADC'   : (RegReg, 0b00001111, 0b01111111, 0x1C00, '1'),
     'ADD'   : (RegReg, 0b00001111, 0b01111111, 0x0C00, '1'),
     'AND'   : (RegReg, 0b00001111, 0b01111111, 0x2000, '1'),
     'CP'    : (RegReg, 0b00001111, 0b01111111, 0x1400, '1'),
     'CPC'   : (RegReg, 0b00001111, 0b01111111, 0x0400, '1'),
     'CPSE'  : (RegReg, 0b00001111, 0b01111111, 0x1000, '1/2/3'),
     'EOR'   : (RegReg, 0b00001111, 0b01111111, 0x2400, '1'),
     'FMUL'  : (RegReg, 0b00001100, 0b01110000, 0x0308, '2'),
     'FMULS' : (RegReg, 0b00001100, 0b01110000, 0x0380, '2'),
     'FMULSU': (RegReg, 0b00001100, 0b01110000, 0x0388, '2'),
     'MOV'   : (RegReg, 0b00001111, 0b01111111, 0x2C00, '1'),
     'MOVW'  : (RegReg, 0b00001100, 0b01110000, 0x0100, '1'),
     'MUL'   : (RegReg, 0b00001100, 0b01110000, 0x9C00, '1'),
     'MULS'  : (RegReg, 0b00001100, 0b01110000, 0x0200, '1'),
     'MULSU' : (RegReg, 0b00001100, 0b01110000, 0x0300, '1'),
     'OR'    : (RegReg, 0b00001111, 0b01111111, 0x2800, '1'),
     'SBC'   : (RegReg, 0b00001111, 0b01111111, 0x0800, '1'),
     'SUB'   : (RegReg, 0b00001111, 0b01111111, 0x1800, '1'),

     'ADIW'  : (RegImm, 0b00001110, 0b01111100, 0x9600, '1'),
     'ANDI'  : (RegImm, 0b00001111, 0b01111111, 0x7000, '1'),
     'CBR'   : (RegImm, 0b00001111, 0b01111111, 0x7000, '1'),
     'CPI'   : (RegImm, 0b00001111, 0b01111111, 0x3000, '1'),
     'LDI'   : (RegImm, 0b00001111, 0b01111111, 0xE000, '1'),
     'ORI'   : (RegImm, 0b00001111, 0b01111111, 0x6000, '1'),
     'SBCI'  : (RegImm, 0b00001111, 0b01111111, 0x4000, '1'),
     'SBIW'  : (RegImm, 0b00001110, 0b01111100, 0x9700, '2'),
     'SBR'   : (RegImm, 0b00001111, 0b01111111, 0x6000, '1'),
     'SUBI'  : (RegImm, 0b00001111, 0b01111111, 0x5000, '1'),

     'ASR'   : (RegOnly, 0b00001111, 0b01111111, 0x9405, '1'),
     'CLR'   : (RegOnly, 0b00001111, 0b01111111, 0x2400, '1'),
     'COM'   : (RegOnly, 0b00001111, 0b01111111, 0x9400, '1'),
     'DEC'   : (RegOnly, 0b00001111, 0b01111111, 0x940A, '1'),
     'INC'   : (RegOnly, 0b00001111, 0b01111111, 0x9403, '1'),
     'LAC'   : (RegOnly, 0b00001000, 0b00000000, 0x9206, '2'),
     'LAS'   : (RegOnly, 0b00001000, 0b00000000, 0x9205, '2'),
     'LAT'   : (RegOnly, 0b00001000, 0b00000000, 0x9207, '2'),
     'LSL'   : (RegOnly, 0b00001111, 0b01111111, 0x0C00, '1'),
     'LSR'   : (RegOnly, 0b00001111, 0b01111111, 0x9406, '1'),
     'NEG'   : (RegOnly, 0b00001111, 0b01111111, 0x9401, '1'),
     'POP'   : (RegOnly, 0b00001111, 0b01111101, 0x900F, '2'),
     'PUSH'  : (RegOnly, 0b00001111, 0b01111101, 0x920F, '1/2'),
     'ROL'   : (RegOnly, 0b00001111, 0b01111111, 0x1C00, '1'),
     'ROR'   : (RegOnly, 0b00001111, 0b01111111, 0x9407, '1'),
     'SER'   : (RegOnly, 0b00001111, 0b01111111, 0xEF0F, '1'),
     'SWAP'  : (RegOnly, 0b00001111, 0b01111111, 0x9402, '1'),
     'TST'   : (RegOnly, 0b00001111, 0b01111111, 0x2000, '1'),
     'XCH'   : (RegOnly, 0b00001000, 0b00000000, 0x9204, '2'),

     'BRBC'  : (RelJmp, 0b00001111, 0b01111111, 0xF400, '1/2'),
     'BRBS'  : (RelJmp, 0b00001111, 0b01111111, 0xF000, '1/2'),
     'BRCC'  : (RelJmp, 0b00001111, 0b01111111, 0xF400, '1/2'),
     'BRCS'  : (RelJmp, 0b00001111, 0b01111111, 0xF000, '1/2'),
     'BREQ'  : (RelJmp, 0b00001111, 0b01111111, 0xF001, '1/2'),
     'BRGE'  : (RelJmp, 0b00001111, 0b01111111, 0xF404, '1/2'),
     'BRHC'  : (RelJmp, 0b00001111, 0b01111111, 0xF405, '1/2'),
     'BRHS'  : (RelJmp, 0b00001111, 0b01111111, 0xF005, '1/2'),
     'BRID'  : (RelJmp, 0b00001111, 0b01111111, 0xF407, '1/2'),
     'BRIE'  : (RelJmp, 0b00001111, 0b01111111, 0xF007, '1/2'),
     'BRLO'  : (RelJmp, 0b00001111, 0b01111111, 0xF000, '1/2'),
     'BRLT'  : (RelJmp, 0b00001111, 0b01111111, 0xF004, '1/2'),
     'BRMI'  : (RelJmp, 0b00001111, 0b01111111, 0xF002, '1/2'),
     'BRNE'  : (RelJmp, 0b00001111, 0b01111111, 0xF401, '1/2'),
     'BRPL'  : (RelJmp, 0b00001111, 0b01111111, 0xF402, '1/2'),
     'BRSH'  : (RelJmp, 0b00001111, 0b01111111, 0xF400, '1/2'),
     'BRTC'  : (RelJmp, 0b00001111, 0b01111111, 0xF406, '1/2'),
     'BRTS'  : (RelJmp, 0b00001111, 0b01111111, 0xF006, '1/2'),
     'BRVC'  : (RelJmp, 0b00001111, 0b01111111, 0xF403, '1/2'),
     'BRVS'  : (RelJmp, 0b00001111, 0b01111111, 0xF003, '1/2'),
     'RCALL' : (RelJmp, 0b00001111, 0b01111111, 0xD000, '2/3/4'),
     'RJMP'  : (RelJmp, 0b00001111, 0b01111111, 0xC000, '2'),

     'CALL'  : (CallJmp, 0b00001110, 0b01111000, 0x940E, '3/4/5'),
     'JMP'   : (CallJmp, 0b00001110, 0b01111000, 0x940C, '3'),

     'BLD'   : (BitInst, 0b00001111, 0b01111111, 0xF800, '1'),
     'BST'   : (BitInst, 0b00001111, 0b01111111, 0xFA00, '1'),
     'SBRC'  : (BitInst, 0b00001111, 0b01111111, 0xFC00, '1/2/3'),
     'SBRS'  : (BitInst, 0b00001111, 0b01111111, 0xFE00, '1/2/3'),

     'CBI'   : (IOBits, 0b00001111, 0b01111111, 0x9800, '1/2'),
     'SBI'   : (IOBits, 0b00001111, 0b01111111, 0x9A00, '1/2'),
     'SBIC'  : (IOBits, 0b00001111, 0b01111111, 0x9900, '2/3/4*'),
     'SBIS'  : (IOBits, 0b00001111, 0b01111111, 0x9B00, '2/3/4*'),

     # reduced LD has less addressing modes
     'LD'    : (LDIndexed, 0b00001111, 0b01111111, 1, '1/2/3'),
     'LDD'   : (LDIndexed, 0b00001110, 0b01111100, 0, '1/2/3'),

     # reduced ST has less addressing modes
     'ST'    : (STIndexed, 0b00001111, 0b01111111, 1, '1/2'),
     'STD'   : (STIndexed, 0b00001110, 0b01111100, 0, '1/2'),

     # tiny & reduced LDS and STS have different bit pattern
     'LDS'   : (LdsSts, 0b00001111, 0b01111101, 0x9000, '2/3'),
     'STS'   : (LdsSts, 0b00001111, 0b01111101, 0x9200, '2'),

     'ELPM'  : (ELpm, 0b00001110, 0b01111000, 0x95D8, '3'),
     'LPM'   : (ELpm, 0b00001110, 0b01110110, 0x95C8, '3'),

     'SPM'   : (Spm, 0b00001100, 0b01110000, 0x95E8, '*'),

     'IN'    : (InOut, 0b00001111, 0b01111111, 0xB000, '1'),
     'OUT'   : (InOut, 0b00001111, 0b01111111, 0xB800, '1'),

     'BCLR'  : (Sreg, 0b00001111, 0b01111111, 0x9488, '1'),
     'BSET'  : (Sreg, 0b00001111, 0b01111111, 0x9408, '1'),

     'DES'   : (Des, 0b00001000, 0b00000000, 0x940B, '1/2'),

     'BREAK' : (Inherent, 0b00001101, 0b01100001, 0x9598, '1'),
     'CLC'   : (Inherent, 0b00001111, 0b01111111, 0x9488, '1'),
     'CLH'   : (Inherent, 0b00001111, 0b01111111, 0x94D8, '1'),
     'CLI'   : (Inherent, 0b00001111, 0b01111111, 0x94F8, '1'),
     'CLN'   : (Inherent, 0b00001111, 0b01111111, 0x94A8, '1'),
     'CLS'   : (Inherent, 0b00001111, 0b01111111, 0x94C8, '1'),
     'CLT'   : (Inherent, 0b00001111, 0b01111111, 0x94E8, '1'),
     'CLV'   : (Inherent, 0b00001111, 0b01111111, 0x94B8, '1'),
     'CLZ'   : (Inherent, 0b00001111, 0b01111111, 0x9498, '1'),
     'EICALL': (Inherent, 0b00001100, 0b01000000, 0x9519, '3/4*'),
     'EIJMP' : (Inherent, 0b00001100, 0b01000000, 0x9419, '2'),
     'ICALL' : (Inherent, 0b00001111, 0b01111100, 0x9509, '2/3/4*'),
     'IJMP'  : (Inherent, 0b00001111, 0b01111100, 0x9409, '2'),
     'NOP'   : (Inherent, 0b00001111, 0b01111111, 0x0000, '1'),
     'RET'   : (Inherent, 0b00001111, 0b01111111, 0x9508, '4/5*'),
     'RETI'  : (Inherent, 0b00001111, 0b01111111, 0x9518, '4/5*'),
     'SEC'   : (Inherent, 0b00001111, 0b01111111, 0x9408, '1'),
     'SEH'   : (Inherent, 0b00001111, 0b01111111, 0x9458, '1'),
     'SEI'   : (Inherent, 0b00001111, 0b01111111, 0x9478, '1'),
     'SEN'   : (Inherent, 0b00001111, 0b01111111, 0x9428, '1'),
     'SES'   : (Inherent, 0b00001111, 0b01111111, 0x9448, '1'),
     'SET'   : (Inherent, 0b00001111, 0b01111111, 0x9468, '1'),
     'SEV'   : (Inherent, 0b00001111, 0b01111111, 0x9438, '1'),
     'SEZ'   : (Inherent, 0b00001111, 0b01111111, 0x9418, '1'),
     'SLEEP' : (Inherent, 0b00001111, 0b01111111, 0x9588, '1'),
     'WDR'   : (Inherent, 0b00001111, 0b01111111, 0x95A8, '1')
    }

    length = 0
    for i in dec.Asm.Instructions:
        if len(dec.Asm.Instructions[i][4]) > length:
            length = len(dec.Asm.Instructions[i][4])
    dec.Asm.Timing_Length = length

    dec.Asm.Memory = 0
    if dec.Asm.Pass == 1:
        sys.stdout.write('Loaded ' + dec.Cross.Name[2:] +
                         ' overlay version ' + crossversion + dec.EOL)

    dec.Asm.Max_Address = (1 << 22) - 1
    # Change target factor to 2
    if dec.Asm.PP_TA_Factor != 2:
        if dec.Asm.PP_Address != dec.Asm.TA_Address or\
                dec.Asm.PP_Address != dec.Asm.PH_Address:
            # Oops, this is complicated. Let's warn the programmer
            errors.DoWarning('taconfusion', True)
        # Set the instruction size and double the target address
        dec.Asm.PP_TA_Factor = 2
        dec.Asm.TA_Address *= 2
    dec.Flags.BigEndian = False

    dec.Asm.AVR_Family = 0

    errors.Error_List[dec.Cross.Name + 'nofamily'] =\
        'AVR Family not set. Assuming XMega family.'

    # Fill dictionary with all available directive handlers
    for i in dir(cravr):
        if len(i) == 5 and i[:3] == 'Dir':
            avrdirlist[i[-2:]] = eval(i)

    return


# ------------------------------------------------------------------------------

def CrossDirective():

    """
    The avrdirlist is filled by the CrossInit function with all available
    directives which are handled by the AVR cross overlay.
    If the directive on the current program line exists in this list we'll
    have to handle the directive here. Otherwise let the main program handle
    directive.
    """

    global Asm

    directive = dec.Asm.Mnemonic[1:3].upper()

    wedidit = False
    if directive in avrdirlist:
        dirfunc = avrdirlist[directive]
        dirfunc()
        wedidit = True  # Indicate that directive is already handled.

    return wedidit      # return false if directive handled by cross!


# ------------------------------------------------------------------------------

def CrossCleanUp():

    """
    Ensure that the Code Memory ends on a word boundary.
    """

    global Asm

    dec.Asm.Memory = 0
    target.BoundarySync()


# ------------------------------------------------------------------------------

def CrossMnemonic():

    """
    Instructions have to start on an even byte location, so we'll do a
    boundary sync first.
    Then we'll check if the given directive is known to us.
    Depending on the chosen family some directives may not be valid.
    Parse the mnemonic if it is valid.
    """

    global Asm

    target.BoundarySync()

    if dec.Asm.AVR_Family == 0:
        # AVR Family not specified, assume XMega family
        errors.DoWarning(dec.Cross.Name + 'nofamily', False)
        dec.Asm.AVR_Family = 4

    if dec.Asm.Mnemonic in dec.Asm.Instructions:

        if not (FamilyCheck(dec.Asm.Instructions[dec.Asm.Mnemonic][1],
                            dec.Asm.Instructions[dec.Asm.Mnemonic][2])):
            # Opcode not supported by this family
            errors.DoError('badopco', False)
        else:
            # Opcode is supported by this family, do it
            dec.Asm.Timing = dec.Asm.Instructions[dec.Asm.Mnemonic][4]
            func = dec.Asm.Instructions[dec.Asm.Mnemonic][0]
            func()
    else:
        errors.DoError('badopco', False)


# -----------------------------------------------------------------------------

def FamilyCheck(legacy_flags, new_flags):

    """
    The instructions family flags are checked against the selected family
    to see wether the instruction is supported or not.
    Returns true if instruction is supported
    """

    global Asm

    family = dec.Asm.AVR_Family

    if family <= 4:
        # A legacy family name was used
        if family == 4:
            # XMega can do it all
            return True
        if family == 3 and (legacy_flags & 4):
            # Mega family allowed
            return True
        if family == 2 and (legacy_flags & 2):
            # AVR family allowed
            return True
        if family == 1 and (legacy_flags & 1):
            # Tiny family allowed
            return True
        # Instruction was is not a member of the selected family
        return False

    else:
        # A new family name was used
        if family == 5 and (new_flags & 1):
            # Member of reduced instructionset family
            return True
        if family == 6 and (new_flags & 2):
            # Member of minimal core instructionset family
            return True
        if family == 7 and (new_flags & 4):
            # Member of classic8k family
            return True
        if family == 8 and (new_flags & 8):
            # Member of classic128k family
            return True
        if family == 9 and (new_flags & 16):
            # Member of enhanced8k family
            return True
        if family == 10 and (new_flags & 32):
            # Member of enhanced128k family
            return True
        if family == 11 and (new_flags & 64):
            # Member of enhanced4M family
            return True
        # Instruction was is not a member of the selected family
        return False


# -----------------------------------------------------------------------------

def NoMore():

    """
    No more parameters are expected.
    Raise a warning if more paramters are found anyway.
    """

    if assem.MoreParameters():
        errors.DoWarning('extrign', False)


# -----------------------------------------------------------------------------

def GetReg():

    """
    Get a register name from R0 to R31. No leading zeroes are allowed. So R01
    is not a legal register name.
    If no register can be found the operand is assumed to be an expression,
    which should evaluate to a legal register number between 0 and 31.

    In the legacy naming convention the Tiny family has a limited register
    range, from 16 to 31.
    In the new naming convention the Reduced core family has a limited register
    range, from 16 to 31.
    """

    global Asm

    # Save pointer in case we need to start all over again
    pointer = dec.Asm.Parse_Pointer
    # First try to get a register name
    reg = assem.GetWord().upper()

    family = dec.Asm.AVR_Family

    if reg == '':
        # Operand was expected but not found
        errors.DoError('missoper', False)
        return 0

    if (len(reg) == 2 or len(reg) == 3) and reg[0] == 'R':
        # Can it be a register name? Must be 2 or 3 chars long and start with R
        reg = reg[1:]
        if reg.isdigit:
            # The register number must be numeric of course
            if len(reg) == 1 or reg[0] != '0':
                # It is numeric, without a leading 0
                register = int(reg)
                if register >= 0 and register < 32:
                    # OK it is a register
                    if dec.Asm.Pass == 2 and (family == 1 or family == 5) and\
                            register < 16:
                        # Oops, the Reduced Core family doesn't have
                        # registers 0 to 15
                        errors.DoError('range', False)
                        register = 16
                    return register

    # Operand was not a register, evaluate expression now
    dec.Asm.Parse_Pointer = pointer
    value = assem.EvalExpr()
    register = value[0]

    if dec.Asm.Pass == 2:
        # Test range only if in pass 2
        if register < 0 or register > 31:
            # It's a range error, simply ignore everything which doesn't fit
            errors.DoError('range', False)
            register = 0
        if (family == 1 or family == 5) and register < 16:
            # The range for the Reduced Core family is 16 to 31
            errors.DoError('range', False)
            register = 16

    # Expression evaluated to a register number
    return register & 31


# -----------------------------------------------------------------------------

def RegReg():

    """
    Instructions with register source and register destination operands.
    Some MULx instructions have a limited register scope so they are treated
    as exceptions.
    And also the MOVW instruction requires an execption because it uses
    register pairs instead of plain registers.

    Dictionary: function, Xmega+Mega+AVR+TINY, newflags, opcode, cycles
    """

    global Asm

    # Get destination register
    reg1 = GetReg()

    if not assem.MoreParameters():
        # Only one parameter was given
        errors.DoError('missoper', False)
        # Write dummy word
        target.CodeWord(0)
        return

    # Get source register
    reg2 = GetReg()

    if ('MUL' in dec.Asm.Mnemonic) and (dec.Asm.Mnemonic != 'MUL'):
        # MULx instructions have a limited register file scope
        if dec.Asm.Pass == 1:
            # Don't test range during pass 1, to ignore forward references
            # Set dummy registers instead
            reg1 = 0
            reg2 = 0
        else:
            # Pass 2, do the magic
            reg1 = reg1 - 16
            reg2 = reg2 - 16
            if reg1 < 0 or reg2 < 0:
                # Range error
                errors.DoError('range', False)
                # Set dummy values
                reg1 = 0
                reg2 = 0
            if dec.Asm.Mnemonic != 'MULS':
                # Only MULS has a bigger scope than the other MUL instructions
                if reg1 > 7 or reg2 > 7:
                    # Rage error for MULS
                    errors.DoError('range', False)
                    # Set dummy values
                    reg1 = 0
                    reg2 = 0
            reg1 = reg1 << 4
    elif dec.Asm.Mnemonic == 'MOVW':
        # MOV Word. Either register of the register pair can be used
        reg1 = (reg1 & 0x1E) << (4-1)
        reg2 = (reg2 & 0x1E) >> 1
    else:
        # Any other instruction

        # Shift destination bits 4 bits to the left
        reg1 = reg1 << 4
        if reg2 > 15:
            # Move MSB of source to bit 9
            reg2 = reg2 - 16 + 512

    target.CodeWord(dec.Asm.Instructions[dec.Asm.Mnemonic][3] + reg1 + reg2)

    NoMore()


# -----------------------------------------------------------------------------

def RegImm():

    """
    Register, immediate instructions.
    The first operand must be a register.
    The second operand is an immediate constant.
    The # / = and \ prefixes are optional for the immediate operand. # is
    assumed if no prefix is given.

    Dictionary: function, Xmega+Mega+AVR+TINY, newflags, opcode, cycles
    """

    global Asm

    # Get destination register
    reg = GetReg()

    if not assem.MoreParameters():
        # Only one operand was given
        errors.DoError('missoper', False)
        # Write dummy word
        target.CodeWord(0)
        return

    if assem.NowChar() in '#/=\\':
        # A prefix is given
        prefix = assem.NowChar(True)
    else:
        # Use default prefix if not given
        prefix = '#'

    value = assem.EvalExpr()[0]

    if prefix == '#':
        val = value & 255
    elif prefix == '/':
        val = (value >> 8) & 255
    elif prefix == '=':
        val = (value >> 16) & 255
    else:
        val = (value >> 24) & 255

    if dec.Asm.Mnemonic in ('ADIW', 'SBIW'):
        # These Word sized instructions have limited operand scopes
        if dec.Asm.Pass == 2:
            # Don't check range during pass 1, may be forward referenced
            if reg not in (24, 26, 28, 30):
                # Only 4 register pairs may be used as destinaion
                errors.DoError('range', False)
        reg = (reg << 3) & 0x30
        # Don't check value range, only limit it
        val = (val & 0xF) + ((val & 0x30) << 2)
    else:
        # All other instructions
        if dec.Asm.Pass == 2:
            # Don't check range during pass 1, may be forward referenced
            if reg < 16:
                errors.DoError('range', False)
        reg = (reg << 4) & 240
        val = (val & 0xF) + ((val & 0xF0) << 4)

    if dec.Asm.Mnemonic == 'CBR':
        # CBR is a pseudo instruction, K has to be complemented
        val = val ^ 0xF0F

    target.CodeWord(dec.Asm.Instructions[dec.Asm.Mnemonic][3] + reg + val)

    NoMore()


# -----------------------------------------------------------------------------

def RegOnly():

    """
    These instructions require only one register.
    CRL, LSL, ROL and TST are acutally pseudo instructions. They require
    the single operand to be used twice, both as source and destinatio.
    The SER instruction has a limited register span.

    Dictionary: function, Xmega+Mega+AVR+TINY, newflags, opcode, cycles
    """

    global Asm

    reg = GetReg()

    if dec.Asm.Mnemonic in ('CLR', 'LSL', 'ROL', 'TST'):
        # These are acutally pseudo instructions, requiring the operand
        # to be used as source and destination for the original instruction
        reg1 = reg << 4
        if reg > 15:
            reg = reg - 16 + 512
        reg = reg + reg1
    elif dec.Asm.Mnemonic == 'SER':
        if dec.Asm.Pass == 2 and reg < 16:
            # This one has a limited register span
            errors.DoError('range', False)
        reg = (reg & 0xF) << 4
    else:
        # All others are normal
        reg = reg << 4

    target.CodeWord(dec.Asm.Instructions[dec.Asm.Mnemonic][3] + reg)

    NoMore()


# -----------------------------------------------------------------------------

def RelJmp():

    """
    Relative addressing mode. Most instructions have an offset range from
    -64 to +63, counted from the begin of line address + 1.
    Only the RCALL and RJMP instructions have a range between 2048 and
    +2047.
    BRBC and BRBS als require a bit number to specified as first operand.

    Dictionary: function, Xmega+Mega+AVR+TINY, newflags, opcode, cycles
    """

    global Asm

    if dec.Asm.Mnemonic in ('BRBC', 'BRBS'):
        # Get bit number first
        value = assem.EvalExpr()
        bit = value[0]
        if dec.Asm.Pass == 2 and (bit < 0 or bit > 7):
            # Test range of bit number (0 to 7)
            errors.DoError('range', False)
        bit = bit & 7
        if not assem.MoreParameters():
            # Only bit number was given
            errors.DoError('missoper', False)
    else:
        # All other instructions don't require a bit number
        bit = 0

    value = assem.EvalExpr()

    if dec.Asm.Pass == 2 or (not value[1]):
        # Check range only when in pass 2 and no forward referenced label used
        if value[0] < 0 or value[0] > dec.Asm.Max_Address:
            # Are we beyond physical memory?
            errors.DoError('range', False)

    offset = value[0] - dec.Asm.BOL_Address - 1

    if dec.Asm.Mnemonic in ('RCALL', 'RJMP'):
        # RCALL and RCJMP have an extended range
        if dec.Asm.Pass == 2 and (offset < -2048 or offset > 2047):
            # Out of range
            errors.DoError('range', False)
        offset = offset & 0xFFF
    else:
        # All other relative jump instructions have a limited range
        if dec.Asm.Pass == 2 and (offset < -64 or offset > 63):
            # Out of range
            errors.DoError('range', False)
        offset = (offset & 0x7F) << 3

    target.CodeWord(dec.Asm.Instructions[dec.Asm.Mnemonic][3] + offset + bit)

    NoMore()


# -----------------------------------------------------------------------------

def CallJmp():

    """
    CALL and JMP can reach the entire Flash memory. Therefore the constant k
    is 22 bits wide. The constant is spread over 2 words like this:

    1001.010k.kkkk.111k
            2.2111.   1
            1.0987.   6

    kkkk.kkkk.kkkk.kkkk
    1111.1100.0000.0000
    5432.1098.7654.3210

    Dictionary: function, Xmega+Mega+AVR+TINY, newflags, opcode, cycles
    """

    global Asm

    maxadd = dec.Asm.Max_Address
    value = assem.EvalExpr()

    if dec.Asm.Pass == 2 or (not value[1]):
        # Check range only when in pass 2 and no forward referenced label used
        if value[0] < 0 or value[0] > maxadd:
            # Are we beyond physical memory?
            errors.DoError('range', False)

    destinationl = value[0] & dec.MAX16
    destinationh = (value[0] >> 16) & 63
    destinationh = ((destinationh & 62) << 3) + (destinationh & 1)

    target.CodeWord(dec.Asm.Instructions[dec.Asm.Mnemonic][3] + destinationh)
    target.CodeWord(destinationl)

    NoMore()


# -----------------------------------------------------------------------------

def BitInst():

    """
    Bit instructions. These require 2 operands. The first is the register
    number from 0 to 31. The second is the bit number from 0 to 7.

    Dictionary: function, Xmega+Mega+AVR+TINY, newflags, opcode, cycles
    """

    global Asm

    reg = GetReg() << 4

    if not assem.MoreParameters():
        # Only the register number is given, the bit number is missing
        errors.DoError('missoper', False)
        # Write dummy word
        target.CodeWord(0)
        return

    bitno = assem.EvalExpr()[0]

    if dec.Asm.Pass == 2 and (bitno < 0 or bitno > 7):
        # Report range error if bit number not between 0 and 7
        errors.DoError('range', False)
        bitno = 0

    target.CodeWord(dec.Asm.Instructions[dec.Asm.Mnemonic][3] + reg + bitno)

    NoMore()


# -----------------------------------------------------------------------------

def IOBits():

    """
    I/O instructions. Operate on the lower 32 I/O addresses. Requires two
    operands. I/O address, from 0 to 31. And bit number from 0 to 7.

    Dictionary: function, Xmega+Mega+AVR+TINY, newflags, opcode, cycles
    """

    global Asm

    ioreg = assem.EvalExpr()[0]

    if dec.Asm.Pass == 2 and (ioreg < 0 or ioreg > 31):
        # Check range of I/O register in pass 2 only
        errors.DoError('range', False)
        ioreg = 0

    ioreg = ioreg << 3

    if not assem.MoreParameters():
        # Only the I/O register is given. The bit number is missing
        errors.DoError('missoper', False)
        # Write dummy word
        target.CodeWord(0)
        return

    bitno = assem.EvalExpr()[0]

    if dec.Asm.Pass == 2 and (bitno < 0 or bitno > 7):
        # Check range of bit number in pass 2 only
        errors.DoError('range', False)
        bitno = 0

    target.CodeWord(dec.Asm.Instructions[dec.Asm.Mnemonic][3] + ioreg + bitno)

    NoMore()


# -----------------------------------------------------------------------------

def LDIndexed():

    """
    LD indexed takes 2 operands. A register number and an index register,
    which may include a pre-decrement or a post-increment.
    The Y and Z index registers may also have an offset from the register's
    base value. The range of this offset is from 0 to 63.

    Reduced instructionset only has LD  Rd,Z. All others are off limits.
    This is not correctly implemented in the legacy family and cannot be fixed!

    Dictionary: function, Xmega+Mega+AVR+TINY, newflags, 1 or 0, cycles
    """

    global Asm

    reg = GetReg() << 4

    if not assem.MoreParameters():
        # Only the register was given. The index register is missing
        errors.DoError('missoper', False)
        target.CodeWord(0)     # Write dummy word
        return

    value = GetIndex()

    if value[1] == 'X':
        # Get the opcode for LD Rn,X
        if dec.Asm.AVR_Family == 6:
            # Illegal index register for this minimal core
            errors.DoError('badoper', False)
        opcode = 0x900C
    elif value[1] == 'Y':
        # Get the opcode for LD(D) Rn,Y and add offset to it
        if dec.Asm.AVR_Family == 6:
            # Illegal index register for this minimal core
            errors.DoError('badoper', False)
        opcode = 0x8008 + value[2]
        if value[0] != 0 and len(dec.Asm.Mnemonic) == 2:
            # Indicated pre-decrement or post-increment opcode
            opcode = opcode + 0x1000
    else:
        # Get the opcode for LD(D) Rn,Z and add offset to it
        opcode = 0x8000 + value[2]
        if value[0] != 0 and len(dec.Asm.Mnemonic) == 2:
            # Indicate pre-decrement or post-increment opcode
            if dec.Asm.AVR_Family == 6:
                # pre-decrement and post-increment not implemented
                errors.DoError('badoper', False)
            opcode = opcode + 0x1000

    if len(dec.Asm.Mnemonic) == 2:
        # It's LD, not LDD, add the pre-decrement or post-increment flag to it
        opcode = opcode + value[0]

    target.CodeWord(opcode + reg)

    NoMore()


# -----------------------------------------------------------------------------

def STIndexed():

    """
    ST indexed takes 2 operands. An index register, which may include a
    pre-decrement or a post-increment, and a register.
    The Y and Z index registers may also have an offset from the register's
    base value. The range of this offset is from 0 to 63.

    Reduced instructionset only has ST  Z,Rd. All others are off limits.
    This is not correctly implemented in the legacy family and cannot be fixed!

    Dictionary: function, Xmega+Mega+AVR+TINY, newflags, 1 or 0, cycles
    """

    global Asm

    value = GetIndex()

    if value[1] == 'X':
        # Get opcode for ST X,Rn
        if dec.Asm.AVR_Family == 6:
            # Illegal index register for this minimal core
            errors.DoError('badoper', False)
        opcode = 0x920C
    elif value[1] == 'Y':
        # Get opcode for ST(D) Y,Rn and add offset to it
        if dec.Asm.AVR_Family == 6:
            # Illegal index register for this minimal core
            errors.DoError('badoper', False)
        opcode = 0x8208 + value[2]
        if value[0] != 0 and len(dec.Asm.Mnemonic) == 2:
            # Indicated pre-decrement or post-increment opcode
            opcode = opcode + 0x1000
    else:
        # Get opcode for ST(D) Z,Rn and add offset to it
        opcode = 0x8200 + value[2]
        if value[0] != 0 and len(dec.Asm.Mnemonic) == 2:
            # Indicated pre-decrement or post-increment opcode
            if dec.Asm.AVR_Family == 6:
                # pre-decrement and post-increment not implemented
                errors.DoError('badoper', False)
            opcode = opcode + 0x1000

    if len(dec.Asm.Mnemonic) == 2:
        # It's ST, not STD, add the pre-decrement or post-increment flag to it
        opcode = opcode + value[0]

    if not assem.MoreParameters():
        errors.DoError('missoper', False)
        target.CodeWord(0)     # Write dummy word
        return

    reg = GetReg() << 4

    target.CodeWord(opcode + reg)

    NoMore()


# -----------------------------------------------------------------------------

def LdsSts():

    """
    Two different versions of these instructions exist. One version applies to
    most devices (if implemented), the other version only applies to Reduced
    core processors (ATtiny10, 9, 5 and 4, aka the ATtiny10 family).

    Syntax for LDS and STS is the same, but have their operands swapped.

    On the TINY family only the registers 16 to 31 are allowed, and the
    constant address value ranges from 0 to 127, which is not checked.

    On all other devices, if implemented, all 32 registers are allowed. And
    the constant address value ranges from 0 to 64k.

    Dictionary: function, Xmega+Mega+AVR+TINY, newflags, opcode, cycles
    """

    global Asm

    if dec.Asm.Mnemonic == 'LDS':
        # LDS, get register first, then the address
        reg = GetReg() << 4

        if not assem.MoreParameters():
            # Oops, only the reigster was given
            errors.DoError('missoper', False)
            # Write dummy words
            target.CodeWord(0)
            target.CodeWord(0)
            return

        value = assem.EvalExpr()[0]

    else:
        # STS, get address first, then the register
        value = assem.EvalExpr()[0]

        if not assem.MoreParameters():
            # Oops, only the address is given
            errors.DoError('missoper', False)
            # Write dummy words
            target.CodeWord(0)
            target.CodeWord(0)
            return

        reg = GetReg() << 4

    if dec.Asm.AVR_Family != 1 and dec.Asm.AVR_Family != 5:
        # Normal behaviour of these instructions
        target.CodeWord(dec.Asm.Instructions[dec.Asm.Mnemonic][3] + reg)
        target.CodeWord(value)
    else:
        # ATtiny or Reduced Core behaviour
        if dec.Asm.Instructions[dec.Asm.Mnemonic][3] == 0x9000:
            # It's LDS
            opcode = 0xa000
        else:
            # It's STS
            opcode = 0xa800
        value = (value & 0x0F) + ((value & 0x70) << 4)
        target.CodeWord(opcode + reg + value)
        dec.Asm.Timing = '1'

    NoMore()


# -----------------------------------------------------------------------------

def ELpm():

    """
    These instructions require two operands. The first one is one of the 32
    registers. The second one is either the Z index register, or Z+.
    Optionally the instruction can also be used without operands.

    Not all variants may be available on all devices. AT90S1200 doesn't have
    an LPM instruction at all.

    Dictionary: function, Xmega+Mega+AVR+TINY, newflags, newflags, opcode,
                cycles
    """

    global Asm

    if dec.Asm.Parse_Pointer == 0 or not dec.Asm.Optional:
        # No operand, use implied addressing mode
        target.CodeWord(dec.Asm.Instructions[dec.Asm.Mnemonic][3])
    else:
        if dec.Asm.Mnemonic == 'ELPM':
            # Get opcode for ELMP
            opcode = 0x9006
        else:
            # Get opcode for LMP
            opcode = 0x9004

        reg = GetReg() << 4

        if not assem.MoreParameters():
            # Index register operand is missing
            errors.DoError('missoper', False)
            target.CodeWord(0)     # Write dummy word
            return

        value = GetIndex()

        if value[1] != 'Z' or value[0] == 2 or value[2] != 0:
            # Only the Z or Z+ index register is allowed.
            errors.DoError('badoper', False)
            reg = 0     # Dummy register
            index = 0   # and dummy mode
        else:
            # Legal index register
            index = value[0]

        target.CodeWord(opcode + reg + index)

        NoMore()


# -----------------------------------------------------------------------------

def Spm():

    """
    This instruction has only one optional parameter. It is either Z (default)
    or Z+

    Dictionary: function, Xmega+Mega+AVR+TINY, newflags, opcode, cycles
    """

    global Asm

    if dec.Asm.Parse_Pointer == 0 or not dec.Asm.Optional:
        # No operand, use defalt Z index
        target.CodeWord(dec.Asm.Instructions[dec.Asm.Mnemonic][3])
    else:
        # An operand is given, must be Z or Z+
        value = GetIndex()

        if value[1] != 'Z' or value[0] == 2 or value[2] != 0:
            # Illegal index register
            errors.DoError('badoper', False)
            index = 0   # Dummy mode
        else:
            # Legal index register
            index = value[0]

        target.CodeWord(dec.Asm.Instructions[dec.Asm.Mnemonic][3] +
                        (index << 4))

        NoMore()


# -----------------------------------------------------------------------------

def InOut():

    """
    These instructions require two operands. A register from 0 to 31 and an
    I/O address from 0 to 63. The IN and OUT instructions have their operand
    order swapped.

    Dictionary: function, Xmega+Mega+AVR+TINY, newflags, opcode, cycles
    """

    global Asm

    if dec.Asm.Mnemonic == 'IN':
        # Get register operand first, then I/O location
        reg = GetReg() << 4

        if not assem.MoreParameters():
            # Oops only register is given
            errors.DoError('missoper', False)
            target.CodeWord(0)     # Write dummy word
            return

        value = assem.EvalExpr()[0]

    else:
        # Get I/O location first, then register
        value = assem.EvalExpr()[0]

        if not assem.MoreParameters():
            # Oops, only I/O location given
            errors.DoError('missoper', False)
            target.CodeWord(0)     # Write dummy word
            return

        reg = GetReg() << 4

    if dec.Asm.Pass == 2 and (value < 0 or value > 63):
        # Check I/O address range in pass 2 only
        errors.DoError('range', False)
        value = 0

    ioreg = (value & 15) + ((value & 48) << 5)

    target.CodeWord(dec.Asm.Instructions[dec.Asm.Mnemonic][3] + reg + ioreg)

    NoMore()


# -----------------------------------------------------------------------------

def Sreg():

    """
    These instructions require only a bit number from 0 to 7.

    Dictionary: function, Xmega+Mega+AVR+TINY, newflags, opcode, cycles
    """

    global Asm

    sregbit = assem.EvalExpr()[0]

    if dec.Asm.Pass == 2 and (sregbit < 0 or sregbit > 7):
        # Outside the legal range
        errors.DoError('range', False)
        sregbit = 0

    target.CodeWord(dec.Asm.Instructions[dec.Asm.Mnemonic][3] + (sregbit << 4))

    NoMore()


# -----------------------------------------------------------------------------

def Des():

    """
    This instruction requires an operand in the range of 0 to 15.

    Dictionary: function, Xmega+Mega+AVR+TINY, newflags, opcode, cycles
    """

    global Asm

    value = assem.EvalExpr()[0]

    if dec.Asm.Pass == 2 and (value < 0 or value > 15):
        # Outside the legal range
        errors.DoError('range', False)
        value = 0

    target.CodeWord(dec.Asm.Instructions[dec.Asm.Mnemonic][3] + (value << 4))

    NoMore()


# -----------------------------------------------------------------------------

def Inherent():

    """
    These instructions don't need an operand. Can't be any easier.

    Dictionary: function, Xmega+Mega+AVR+TINY, newflags, opcode, cycles
    """

    global Asm

    target.CodeWord(dec.Asm.Instructions[dec.Asm.Mnemonic][3])


# -----------------------------------------------------------------------------

def GetIndex():

    """
    Get an index register.
    Legal index registers are X, Y and Z.
    These register may be pre-decremented or post-incremented.

    Function returns a tupple:
        incdec:  0=unchanged, 1=post-increment, 2=pre-decement
        index: X, Y, or Z
        offset: 6-bit offset in range from 0 to 63
    """

    global Asm

    index = assem.NowChar(True).upper()

    if index == ' ':
        # Mmm, missing operand
        errors.DoError('missoper', False)
        return (0, 'Z', 0)  # Return dummy values

    incdec = 0
    if index == '-':
        # Pre-decrement
        incdec = 2
        index = assem.NowChar(True).upper()

    if index not in ('X', 'Y', 'Z'):
        # It's none of the legal index registers
        errors.DoError('badoper', False)
        return (0, 'Z', 0)    # Return dummy values

    if incdec == 0:
        # It's not pre-decrement, so it may be post-incrment
        if assem.NowChar() == '+':
            incdec = 1
            assem.NowChar(True)

    offset = 0
    if dec.Asm.Mnemonic in ('LDD', 'STD') and incdec == 1:
        # An offset q must follow
        if index == 'X':
            # LDD X+q doesn't exist
            errors.DoError('badoper', False)
        offset = assem.EvalExpr()[0]

        if dec.Asm.Pass == 2 and (offset < 0 or offset > 63):
            # Check range only in pass 2
            errors.DoError('range', False)
            offset = 0

        # Split all the bits to fit the opcode gaps.
        offset = (offset & 7) + ((offset & 0x18) << 7) + ((offset & 0x20) << 8)

    return (incdec, index, offset)


# -----------------------------------------------------------------------------

def DirCS():

    """
    Change to Code segment.
    Equivalent to .SM CODE
    - Boundary Sync
    """

    global Asm

    target.BoundarySync()

    dec.Asm.Memory = 0
    dec.Asm.BOL_Address = dec.Asm.PH_Address
    dec.Asm.List_Address = dec.Asm.PH_Address


# -----------------------------------------------------------------------------

def DirDE():

    """
    Assign a name to a register.
    - Boundary Sync will be automatic because of the label in the label field
    """

    global Asm

    if dec.Asm.Parse_Pointer == 0:
        # No parameter given
        errors.DoError('missoper', False)
        dec.Asm.New_Label = ''
        return

    register = -1
    reg = assem.GetWord().upper()
    if (len(reg) == 2 or len(reg) == 3) and reg[0] == 'R':
        # Can it be a register name? Must be 2 or 3 chars long and start with R
        reg = reg[1:]
        if reg.isdigit:
            # The register number must be numeric of course
            if len(reg) == 1 or reg[0] != '0':
                # It is numeric, without a leading 0
                register = int(reg)
    if register < 0 or register > 31:
        # It is not a legal register
        errors.DoError('badoper', False)
        dec.Asm.New_Label = ''
    else:
        # It is a legal register, set it's value
        dec.Asm.BOL_Address = register
        dec.Asm.List_Address = register
    dec.Asm.Mnemonic = '.SE'    # Handle rest like .SE

    # Ignore more parameters this time (like .EQ).


# -----------------------------------------------------------------------------

def DirDS():

    """
    Change to RAM segment.
    Equivalent to .SM RAM
    - Boundary Sync
    """

    global Asm

    target.BoundarySync()

    dec.Asm.Memory = 1
    dec.Asm.BOL_Address = dec.Asm.RM_Address
    dec.Asm.List_Address = dec.Asm.RM_Address


# -----------------------------------------------------------------------------

def DirES():

    """
    Change to EEPROM segment.
    Equivalent to .SM EERPOM
    - Boundary Sync
    """

    global Asm

    target.BoundarySync()

    dec.Asm.Memory = 2
    dec.Asm.BOL_Address = dec.Asm.EM_Address
    dec.Asm.List_Address = dec.Asm.EM_Address


# -----------------------------------------------------------------------------

def DirEV():

    """
    Force a Boundary Sync.
    """

    target.BoundarySync()


# -----------------------------------------------------------------------------

def DirFA():

    """
    Set the device's family.
    If this is not used in a program a warning is given and the assembler
    defaults to the XMega family, which can do everything.
    As of version 3.02.00 of this cross overlay an extra family tree has
    been added to reflect the families found on Wikipedia. This allows for
    a much finer distinction between the capabilities of the processors.
    The old family tree still exists though for backward compatibility.
    - Boundary Sync.
    """

    global Asm

    target.BoundarySync()

    families = ['TINY', 'AVR', 'MEGA', 'XMEGA', 'REDUCED', 'MINIMAL',
                'CLASSIC8K']
    families += ['CLASSIC128K', 'ENHANCED8K', 'ENHANCED128K', 'ENHANCED4M']

    if dec.Asm.Parse_Pointer == 0:
        # No parameter given
        errors.DoError('missoper', False)
        return

    family = assem.GetWord().upper()
    if family not in families:
        errors.DoError('badoper', False)
        return

    dec.Asm.AVR_Family = families.index(family) + 1

    NoMore()


# -----------------------------------------------------------------------------

def DirMS():

    """
    Set the maximum ROM memory size.
    Jumps beyond that size will result in a range error.
    Code can not be saved to a target address which is > maximum size.
    Forward reference values are not allowed.
    Thus for a 64k word device, .MS must be set to $10000.
    Note: Any size can be set between 0 and $400000, even silly sizes!
    - Boundary Sync
    """

    global Asm

    target.BoundarySync()

    if dec.Asm.Parse_Pointer == 0:
        # No parameter given
        errors.DoError('missoper', False)
        return

    value = assem.EvalExpr()

    if value[1]:
        # Forward referenced labels are not allowed
        errors.DoError('forwref', False)
        return
    else:
        # It's not a forward referenced label
        if value[0] < 1 or value[0] > ((1 << 22)):
            # Value not within legal range
            errors.DoError('range', False)
            return
        dec.Asm.Max_Address = value[0] - 1
        NoMore()


# -----------------------------------------------------------------------------

if __name__ == '__main__':
    print("")
    print("This is a python module, it's not a program.")
    print("This module is part of the sbasm package.")
    print("Run sbasm instead.")
    print("")
