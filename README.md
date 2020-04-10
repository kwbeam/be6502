# BE6502

Code for [Ben Eater's 6502 computer kit](https://eater.net/6502).

# Prerequisites

* GNU Make
* [vasm](http://sun.hasenbraten.de/vasm/) assembler for the 6502
* [Minipro](https://gitlab.com/DavidGriffith/minipro) programmer for MiniPRO TL866xx devices

# Usage

1. Attach the TL866xx EPROM programmer
2. Insert the ROM chip into the programmer
3. Assemble and program the EPROM for the 'hello world' program:

        $ make rom

4. Remove the ROM chip and add it to the computer
5. ...
6. Profit!
