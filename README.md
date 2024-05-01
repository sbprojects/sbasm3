# sbasm3
SB-Assembler Version 3 - Cross platform - Macro Cross Assembler

The SB-Assembler can be used on Linux, Mac and Windows machines.
It requires at least Python 3.2 to be installed.
Installation of the software is not necessary. Unzip everything
into a directory of your choice and make sure the program sbasm
(for Linux and Mac) or sbasm.py (for Windows) is in your path.
However you may want to move the opcode test files and header
files somewhere else. They are a reference only and are not needed
for the assembler to run.
The only thing that is important for the SB-Assembler is that the
sbapack directory remains in the same directory as the sbasm and
sbasm.py files.

Here's a list of some of the supported processors:

6502, 65C02, 6800, 6804, 6805, 6809, 68HC11,
8008, 8048, 8051, 8080, 8085, Z80, Z8 Z180
AVR, PIC, ST6, ST7, ACE1101, ACE1202, SC/MP, 1802

I usually simply create a symbolic link in my ~/bin directory to
the sbasm executable in this package. That's all there is really
to it.

More information, including the user guide of this program can be
found on https://www.sbprojects.net/sbasm

Happy coding.
