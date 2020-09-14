.PHONY: write

hello.bin: hello.s
	vasm6502_oldstyle -Fbin -dotdir hello.s -o hello.bin

write: hello.bin
	minipro -p AT28C256 -w hello.bin
