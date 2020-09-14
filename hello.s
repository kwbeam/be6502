PORTB   = $6000
PORTA   = $6001
DDRB    = $6002
DDRA    = $6003

E       = %10000000
RW      = %01000000
RS      = %00100000

        .org    $8000

reset:
        ldx     #$ff            ; Initialize Stack Pointer
        txs

        lda     #%11111111      ; PORTB outputs data to display
        sta     DDRB

        lda     #%11100000      ; PORTA top three bits control display
        sta     DDRA

        lda     #%00111000      ; Set 8-bit mode, 2-line display; 5x8 font
        jsr     lcd_instruction
        lda     #%00001110      ; Display & Cursor on, no blinking
        jsr     lcd_instruction
        lda     #%00000110      ; Increment mode, don't shift
        jsr     lcd_instruction

        lda     #"H"
        jsr     print_char
        lda     #"E"
        jsr     print_char
        lda     #"L"
        jsr     print_char
        lda     #"L"
        jsr     print_char
        lda     #" "
        jsr     print_char
        lda     #"W"
        jsr     print_char
        lda     #"O"
        jsr     print_char
        lda     #"R"
        jsr     print_char
        lda     #"L"
        jsr     print_char
        lda     #"D"
        jsr     print_char
        lda     #"!"
        jsr     print_char
        lda     #"!"
        jsr     print_char
        lda     #"!"
        jsr     print_char

loop:
        jmp     loop

lcd_instruction:
        sta     PORTB
        lda     #0
        sta     PORTA
        lda     #E
        sta     PORTA
        lda     #0
        sta     PORTA
        rts

print_char:
        sta     PORTB
        lda     #RS
        sta     PORTA
        lda     #(RS | E)
        sta     PORTA
        lda     #RS
        sta     PORTA
        rts

        .org    $fffc
        .word   reset
        .word   $0000
