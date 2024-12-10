; Filename: EXER14.ASM
; Programmer Name: CHESTINE MAY MARI C. CABISO
; Description: This assembly language program will get character input and display back character input.
; Date: 9/19/24

.MODEL small
.MODEL small
.STACK 200h
.DATA
    FILENAMEMSG DB 'Filename: Exer14.ASM', 13, 10, '$'
    PROGRAMMERMSG DB 'Programmer Name: CHESTINE MAY MARI C. CABISO', 13, 10, '$'
    DESCRIPTIONMSG DB 'This program will get character input and display back character input.', 13, 10, '$'
    DATEMSG DB 'Date Created: September 19, 2024', 13, 10, 13, 10, '$'

    inputChar db ?
    inputMsg db 'Enter a character: $'
    outputMsg db 'You entered: $'

.CODE
Main:
    ; initialize the data segment
    mov ax, 0003h  
    int 10h

    ; Set up data segment
    mov ax, @data
    mov ds, ax

    ; Display the header information
    lea dx, FILENAMEMSG
    mov ah, 09h
    int 21h

    lea dx, PROGRAMMERMSG
    mov ah, 09h
    int 21h

    lea dx, DESCRIPTIONMSG
    mov ah, 09h
    int 21h

    lea dx, DATEMSG
    mov ah, 09h
    int 21h
 
 
    ; display the input prompt message
    mov dx,offset inputMsg
    mov ah,09h
    int 21h

    ; read a character from the keyboard
    mov ah,01h          ; function to read a character
    int 21h             ; call DOS interrupt
    mov inputChar,al    ; store the character in inputChar

    ; display the output message
    mov dx,offset outputMsg
    mov ah,09h
    int 21h

    ; display the character back
    mov dl, inputChar               ; load the character to DL
    mov ah,02h                      ; function to display a character
    int 21h                         ; call DOS interrupt

    ; exit program
    mov ax,4C00h                    ; function to exit program
    int 21h
END Main