; Filename: Week13c.asm
; Programmer Name: CHESTINE MAY MARI C. CABISO
; Description: Asks user to input a number from 1 to 8 and displays numbers from 1 to the entered number with space between each number, or displays an error if the input is out of range.
; Date Created: November 7, 2024

.model small
.stack 100h

.data
    FILENAMEMSG DB 'Filename: Week13c.asm', 13, 10, '$'
    PROGRAMMERMSG DB 'Programmer Name: CHESTINE MAY MARI C. CABISO', 13, 10, '$'
    DESCRIPTIONMSG DB 'Description: Asks user to input a number from 1 to 8 and displays numbers from 1 to the entered number with space between each number, or displays an error if the input is out of range.', 13, 10, '$'
    DATEMSG     DB 'Date Created: November 7, 2024', 13, 10, 13, 10, '$'
    prompt DB 'Enter a number from 1 to 8: $'
    errorMsg DB 'Error: Number out of range!$'
    newline db 0Ah, 0Dh, '$'   ; Newline character
    space db ' ', '$'          ; Space between numbers

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
    ; Prompt for user input
    mov ah, 09h
    lea dx, prompt
    int 21h

    ; Get user input (single character)
    mov ah, 01h
    int 21h
    sub al, '0'             ; Convert input character to number

    ; Check if input is valid (between 1 and 8)
    cmp al, 1
    jl error_input          ; If less than 1, jump to error
    cmp al, 8
    jg error_input          ; If greater than 8, jump to error

    ; Display numbers from 1 to the entered number
    mov bl, al              ; Store the user input in BL for the loop
    lea dx, newline         ; Print a newline before displaying numbers
    mov ah, 09h
    int 21h

loop_start:
    ; Convert number to ASCII and display
    mov dl, bl
    add dl, '0'             ; Convert to ASCII
    mov ah, 02h
    int 21h                 ; Display the character

    ; Print space between numbers
    lea dx, space
    mov ah, 09h
    int 21h

    ; Increment counter and loop until it reaches the input number
    inc bl
    cmp bl, al
    jle loop_start          ; Continue looping if BL <= AL

    ; Newline after output
    lea dx, newline
    mov ah, 09h
    int 21h

    ; Exit program
    mov ah, 4Ch
    int 21h

error_input:
    ; Display error message if input is out of range
    lea dx, newline         ; Print newline before error message
    mov ah, 09h
    int 21h

    mov ah, 09h
    lea dx, errorMsg
    int 21h

    ; Newline after error message
    lea dx, newline
    mov ah, 09h
    int 21h

    ; Loop back to ask for input again
    jmp ask_input
end main
