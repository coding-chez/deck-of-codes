; Filename: Week13a.asm
; Programmer Name: CHESTINE MAY MARI C. CABISO
; Description: Vertically displays numbers from 1 to 10 using a loop
; Date Created: November 7, 2024

.model small
.stack 100h

.data
    FILENAMEMSG DB 'Filename: Week13a.asm', 13, 10, '$'
    PROGRAMMERMSG DB 'Programmer Name: CHESTINE MAY MARI C. CABISO', 13, 10, '$'
    DESCRIPTIONMSG DB 'Description: Vertically displays numbers from 1 to 10 using a loop.', 13, 10, '$'
    DATEMSG     DB 'Date Created: November 7, 2024', 13, 10, 13, 10, '$'
    newline db 0Ah, 0Dh, '$'    ; Newline character for displaying numbers on new lines

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

    ; Loop to display numbers from 1 to 10
    mov cx, 1  ; Start from 1

loop_start:
    ; Convert number to ASCII by adding '0' (to display a single digit)
    mov ax, cx          ; Move the number to AX
    add al, '0'         ; Convert the number to ASCII

    ; Display the number
    mov dl, al          ; Move the ASCII number to DL
    mov ah, 02h         ; DOS function to display character
    int 21h             ; Interrupt to display character

    ; Print newline (move to next line)
    mov ah, 09h
    lea dx, newline
    int 21h

    ; Increment number
    inc cx
    cmp cx, 11          ; Check if we have displayed 10
    jl loop_start       ; Continue looping if CX < 11

    ; Exit program
    mov ah, 4Ch
    int 21h
end main
