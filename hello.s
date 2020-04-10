PORTB   = $6000
PORTA   = $6001
DDRB    = $6002
DDRA    = $6003

E       = %10000000
RW      = %01000000
RS      = %00100000

        .org    $8000

reset:
        lda     #%11111111      ; PORTB outputs data to display
        sta     DDRB

        lda     #%11100000      ; PORTA top three bits control display
        sta     DDRA

        lda     #%00111000      ; Set 8-bit mode, 2-line display; 5x8 font
        sta     PORTB
        lda     #0
        sta     PORTA
        lda     #E
        sta     PORTA
        lda     #0
        sta     PORTA

        lda     #%00001110      ; Display & Cursor on, no blinking
        sta     PORTB
        lda     #0
        sta     PORTA
        lda     #E
        sta     PORTA
        lda     #0
        sta     PORTA

        lda     #%00000110      ; Increment mode, don't shift
        sta     PORTB
        lda     #0
        sta     PORTA
        lda     #E
        sta     PORTA
        lda     #0
        sta     PORTA

        lda     #"H"
        sta     PORTB
        lda     #RS
        sta     PORTA
        lda     #(RS | E)
        sta     PORTA
        lda     #RS
        sta     PORTA

        lda     #"E"
        sta     PORTB
        lda     #RS
        sta     PORTA
        lda     #(RS | E)
        sta     PORTA
        lda     #RS
        sta     PORTA

        lda     #"L"
        sta     PORTB
        lda     #RS
        sta     PORTA
        lda     #(RS | E)
        sta     PORTA
        lda     #RS
        sta     PORTA

        lda     #"L"
        sta     PORTB
        lda     #RS
        sta     PORTA
        lda     #(RS | E)
        sta     PORTA
        lda     #RS
        sta     PORTA

        lda     #" "
        sta     PORTB
        lda     #RS
        sta     PORTA
        lda     #(RS | E)
        sta     PORTA
        lda     #RS
        sta     PORTA

        lda     #"W"
        sta     PORTB
        lda     #RS
        sta     PORTA
        lda     #(RS | E)
        sta     PORTA
        lda     #RS
        sta     PORTA

        lda     #"O"
        sta     PORTB
        lda     #RS
        sta     PORTA
        lda     #(RS | E)
        sta     PORTA
        lda     #RS
        sta     PORTA

        lda     #"R"
        sta     PORTB
        lda     #RS
        sta     PORTA
        lda     #(RS | E)
        sta     PORTA
        lda     #RS
        sta     PORTA

        lda     #"L"
        sta     PORTB
        lda     #RS
        sta     PORTA
        lda     #(RS | E)
        sta     PORTA
        lda     #RS
        sta     PORTA

        lda     #"D"
        sta     PORTB
        lda     #RS
        sta     PORTA
        lda     #(RS | E)
        sta     PORTA
        lda     #RS
        sta     PORTA

        lda     #"!"
        sta     PORTB
        lda     #RS
        sta     PORTA
        lda     #(RS | E)
        sta     PORTA
        lda     #RS
        sta     PORTA

        lda     #"!"
        sta     PORTB
        lda     #RS
        sta     PORTA
        lda     #(RS | E)
        sta     PORTA
        lda     #RS
        sta     PORTA

        lda     #"!"
        sta     PORTB
        lda     #RS
        sta     PORTA
        lda     #(RS | E)
        sta     PORTA
        lda     #RS
        sta     PORTA

loop:
        jmp     loop

        .org    $fffc
        .word   reset
        .word   $0000
