; Filename: EXER20.ASM
; Programmer name: Chestine May Mari C. Cabiso
; Description:  Create a program that asks user to input a character. Determine if 
; character is letter A and display message “Yes, you have entered 
; letter A.” If not, display “No, you have not entered letter A. You entered character _.”
; Date: 9/19/2024

.MODEL small
.STACK 100h
.DATA
    FILENAMEMSG DB 'Filename: Exer20.ASM', 13, 10, '$'
    PROGRAMMERMSG DB 'Programmer Name: CHESTINE MAY MARI C. CABISO', 13, 10, '$'
    DESCRIPTIONMSG DB 'Description: Determine if character is letter A or not, display the text based on its conditions', 13, 10, '$'
    DATEMSG DB 'Date Created: September 19, 2024', 13, 10, 13, 10, '$'

    prompt DB 'Enter a character: $'
    msgYes DB 13,10, 'Yes, you have entered letter A.', 13,10, '$'
    msgNo DB 13,10, 'No, you have not entered letter A. You entered character ', '$'
    
    inputChar DB ?

.CODE
ProgramStart:
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

    mov dx, OFFSET prompt
    mov ah, 9h
    int 21h

    mov ah, 01h        ; DOS input character function
    int 21h
    mov inputChar, al  ; Store the input character

    cmp inputChar, 'A'
    je IsLetterA       ; If equal to 'A', jump to IsLetterA

    ; Display "No, you have not entered letter A.
    mov dx, OFFSET msgNo
    mov ah, 09h
    int 21h

    ; Display the input character
    mov dl, inputChar
    mov ah, 02h
    int 21h

    ; Jump to end of the program
    jmp EndProgram

IsLetterA:
    ; Display "Yes, you have entered letter A."
    mov dx, OFFSET msgYes
    mov ah, 09h
    int 21h

EndProgram:
    ; Terminate the program
    mov ah, 4ch
    int 21h
END ProgramStart

