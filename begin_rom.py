base = 0x8000

rom = bytearray([0xea] * 32768)

rom[0xfffc - base] = 0x00
rom[0xfffd - base] = 0x80

with open("rom.bin", "wb") as out_file:
    out_file.write(rom)
