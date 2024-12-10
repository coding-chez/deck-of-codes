; Filename: EXER17.ASM
; Programmer Name: CHESTINE MAY MARI C. CABISO
; Description: This assembly language program will get string input and display back string.
; Date: 9/19/24

.MODEL small
.STACK 100h
.DATA
    FILENAMEMSG DB 'Filename: Exer17.ASM', 13, 10, '$'
    PROGRAMMERMSG DB 'Programmer Name: CHESTINE MAY MARI C. CABISO', 13, 10, '$'
    DESCRIPTIONMSG DB 'Description: This assembly language program will get string input and display back string.', 13, 10, '$'
    DATEMSG DB 'Date Created: September 19, 2024', 13, 10, 13, 10, '$'
MAXIMUM_STRING_LENGTH EQU 1000
StringInput DB MAXIMUM_STRING_LENGTH DUP (?)
InputPrompt DB 'Enter text: $'

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
    
    mov dx,OFFSET InputPrompt
    mov ah,9
    int 21h

    mov ah,3fh                      ; DOS read from handle function
    mov bx,0                        ; standard input handle
    mov cx,MAXIMUM_STRING_LENGTH    ; read up to maximum number of characters

    mov dx,OFFSET StringInput       ; store the string here
    int 21h                         ; get the string

    and ax,ax                       ; were any character read?
    jz Done                         ; no, so you're done
    mov cx,ax                       ; put string length in CX where

    ; you can use it as a counter
    push cx                         ; save the string length
    mov bx,OFFSET StringInput

    pop cx                          ; get back the string length
    mov ah,40h                      ; DOS write form handle function
    mov bx,1                        ; standard output handle
    mov dx,OFFSET StringInput       ; prepare to print the string
    int 21h                         ; print the string

Done:
    mov ah,4ch                      ; DOS terminate program function
    int 21h                         ; terminate the program
END ProgramStart