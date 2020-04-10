.PHONY: rom

rom.bin: hello.s
	vasm6502_oldstyle -Fbin -dotdir hello.s -o rom.bin

rom: rom.bin
	minipro -p AT28C256 -w rom.bin
