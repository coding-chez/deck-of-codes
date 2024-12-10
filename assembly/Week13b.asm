; Filename: Week13b.asm
; Programmer Name: CHESTINE MAY MARI C. CABISO
; Description: Horizontally displays numbers from 1 to 20 with space between each number using a loop
; Date Created: November 7, 2024

.model small
.stack 100h

.data
    FILENAMEMSG DB 'Filename: Week13b.asm', 13, 10, '$'
    PROGRAMMERMSG DB 'Programmer Name: CHESTINE MAY MARI C. CABISO', 13, 10, '$'
    DESCRIPTIONMSG DB 'Description: Horizontally displays numbers from 1 to 20 with space between each number using a loop.', 13, 10, '$'
    DATEMSG     DB 'Date Created: November 7, 2024', 13, 10, 13, 10, '$'
    space db ' ', '$'    ; Space character to separate numbers

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

    ; Loop to display numbers from 1 to 20
    mov cx, 1  ; Start from 1

loop_start:
    ; Convert number to ASCII by adding '0' (to display a single digit)
    mov ax, cx          ; Move the number to AX
    add al, '0'         ; Convert the number to ASCII

    ; Display the number
    mov dl, al          ; Move the ASCII number to DL
    mov ah, 02h         ; DOS function to display character
    int 21h             ; Interrupt to display character

    ; Print space after each number (except the last one)
    lea dx, space
    mov ah, 09h
    int 21h

    ; Increment number
    inc cx
    cmp cx, 21          ; Check if we have displayed 20
    jl loop_start       ; Continue looping if CX < 21

    ; Exit program
    mov ah, 4Ch
    int 21h
end main
