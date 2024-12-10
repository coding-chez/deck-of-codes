; Filename: EXER19.ASM
; Programmer Name: CHESTINE MAY MARI C. CABISO
; Description: Create a program that asks the user to input 3 characters. Then display each character on its own line.
; Date: 9/19/24

.MODEL small
.STACK 200h
.DATA
    FILENAMEMSG DB 'Filename: Exer19.ASM', 13, 10, '$'
    PROGRAMMERMSG DB 'Programmer Name: CHESTINE MAY MARI C. CABISO', 13, 10, '$'
    DESCRIPTIONMSG DB 'Description: Create a program that asks the user to input 3 characters. Then display each character on its own line.', 13, 10, '$'
    DATEMSG DB 'Date Created: September 19, 2024', 13, 10, 13, 10, '$'

    inputChar1 db ?               ; variable to store the first input character
    inputMsg1 db 'Enter first character: $'
    outputMsg1 db 'The first character is: $', 13, 10, '$'  ; Add newline

    inputChar2 db ?               ; variable to store the second input character
    inputMsg2 db 'Enter second character: $'
    outputMsg2 db 'The second character is: $', 13, 10, '$'  ; Add newline

    inputChar3 db ?               ; variable to store the third input character
    inputMsg3 db 'Enter third character: $'
    outputMsg3 db 'The third character is: $', 13, 10, '$'  ; Add newline

    ; Add an extra newline for better formatting between outputs
    newline db 13, 10, '$'

.CODE
Main:
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

    ; Display the input prompt message for the first character
    mov dx, offset inputMsg1
    mov ah, 09h
    int 21h

    ; Read the first character from the keyboard
    mov ah, 01h                  ; Function to read a character
    int 21h                      ; Call DOS interrupt
    mov inputChar1, al          ; Store the character in inputChar1

    ; Display a newline before prompting for the second character
    mov dx, offset newline
    mov ah, 09h
    int 21h

    ; Display a newline before prompting for the second character
    mov dx, offset newline
    mov ah, 09h
    int 21h

    ; Display the input prompt message for the second character
    mov dx, offset inputMsg2
    mov ah, 09h
    int 21h

    ; Read the second character from the keyboard
    mov ah, 01h                  ; Function to read a character
    int 21h                      ; Call DOS interrupt
    mov inputChar2, al          ; Store the character in inputChar2

    ; Display a newline before prompting for the third character
    mov dx, offset newline
    mov ah, 09h
    int 21h

    ; Display a newline before prompting for the third character
    mov dx, offset newline
    mov ah, 09h
    int 21h

    ; Display the input prompt message for the third character
    mov dx, offset inputMsg3
    mov ah, 09h
    int 21h

    ; Read the third character from the keyboard
    mov ah, 01h                  ; Function to read a character
    int 21h                      ; Call DOS interrupt
    mov inputChar3, al          ; Store the character in inputChar3

    ; Display a newline before displaying outputs
    mov dx, offset newline
    mov ah, 09h
    int 21h

    ; Display a newline before displaying outputs
    mov dx, offset newline
    mov ah, 09h
    int 21h

    ; Display the output message for the first character
    mov dx, offset outputMsg1
    mov ah, 09h
    int 21h

    ; Display the first character back
    mov dl, inputChar1          ; Load the character to DL
    mov ah, 02h                  ; Function to display a character
    int 21h                      ; Call DOS interrupt

    ; Add an extra newline after the first output
    mov dx, offset newline
    mov ah, 09h
    int 21h

    ; Add an extra newline after the first output
    mov dx, offset newline
    mov ah, 09h
    int 21h

    ; Display the output message for the second character
    mov dx, offset outputMsg2
    mov ah, 09h
    int 21h

    ; Display the second character back
    mov dl, inputChar2          ; Load the character to DL
    mov ah, 02h                  ; Function to display a character
    int 21h                      ; Call DOS interrupt

    ; Add an extra newline after the second output
    mov dx, offset newline
    mov ah, 09h
    int 21h

    ; Add an extra newline after the second output
    mov dx, offset newline
    mov ah, 09h
    int 21h

    ; Display the output message for the third character
    mov dx, offset outputMsg3
    mov ah, 09h
    int 21h

    ; Display the third character back
    mov dl, inputChar3          ; Load the character to DL
    mov ah, 02h                  ; Function to display a character
    int 21h                      ; Call DOS interrupt

    ; Exit program
    mov ax, 4C00h                ; Function to exit program
    int 21h

END Main
