; Filename: Week13d.asm
; Programmer Name: CHESTINE MAY MARI C. CABISO
; Description: Repeatedly asks user to input a single digit whole number until the number entered is zero, then displays "Thank you."
; Date Created: November 7, 2024

.model small
.stack 100h

.data
    FILENAMEMSG DB 'Filename: Week13d.asm', 13, 10, '$'
    PROGRAMMERMSG DB 'Programmer Name: CHESTINE MAY MARI C. CABISO', 13, 10, '$'
    DESCRIPTIONMSG DB 'Description: Repeatedly asks user to input a single digit whole number until the number entered is zero, then displays "Thank you."', 13, 10, '$'
    DATEMSG     DB 'Date Created: November 7, 2024', 13, 10, 13, 10, '$'
    prompt DB 'Enter a single digit number: $'
    thankyoumsg DB 'Thank you.$'
    newline db 0Ah, 0Dh, '$'   ; Newline character

.code
main:
    ; Initialize data segment
    mov ax, @data
    mov ds, ax

    ; Display the filename, programmer name, description, and date
    mov ah, 09h
    lea dx, FILENAMEMSG
    int 21h

    lea dx, PROGRAMMERMSG
    int 21h

    lea dx, DESCRIPTIONMSG
    int 21h

    lea dx, DATEMSG
    int 21h

ask_input:
    ; Print the prompt for user input
    mov ah, 09h
    lea dx, prompt
    int 21h

    ; Get user input (single character)
    mov ah, 01h
    int 21h
    sub al, '0'             ; Convert input character to number

    ; Print newline after the input
    mov ah, 09h
    lea dx, newline
    int 21h

    ; Check if input is zero
    cmp al, 0
    je end_program          ; If input is zero, jump to end_program

    ; If input is not zero, keep asking for the number
    jmp ask_input

end_program:
    ; Print newline before thank you message
    mov ah, 09h
    lea dx, newline
    int 21h

    ; Display thank you message
    lea dx, thankyoumsg
    mov ah, 09h
    int 21h

    ; Exit program
    mov ah, 4Ch
    int 21h
end main
