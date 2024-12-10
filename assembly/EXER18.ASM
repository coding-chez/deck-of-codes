; Filename: EXER18.ASM
; Programmer Name: CHESTINE MAY MARI C. CABISO
; Description: This assembly language program will get string input and display the reverse of the string.
; Date: 9/19/24

MODEL small
.STACK 100h
.DATA
    FILENAMEMSG DB 'Filename: Exer18.ASM', 13, 10, '$'
    PROGRAMMERMSG DB 'Programmer Name: CHESTINE MAY MARI C. CABISO', 13, 10, '$'
    DESCRIPTIONMSG DB 'Description: This assembly language program will get string input and display the reverse of the string.', 13, 10, '$'
    DATEMSG DB 'Date Created: September 19, 2024', 13, 10, 13, 10, '$'
MAXIMUM_STRING_LENGTH EQU 1000
String_to_Reverse DB MAXIMUM_STRING_LENGTH DUP(?)
ReverseString DB MAXIMUM_STRING_LENGTH DUP(?)

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

    ; Read string input
    mov ah, 3fh                  ; DOS read from handle function
    mov bx, 0                    ; standard input handle
    mov cx, MAXIMUM_STRING_LENGTH ; read up to maximum number of characters
    mov dx, OFFSET String_to_Reverse
    int 21h                      ; get the string

    and ax, ax                   ; check if any characters were read
    jz Done                      ; if none, go to Done

    mov cx, ax                   ; set cx to string length
    push cx                      ; save length
    mov bx, OFFSET String_to_Reverse
    mov si, OFFSET ReverseString  ; point to reverse string
    add si, cx                   ; move si to the end of reverse string
    dec si                       ; adjust to last character position

ReverseLoop:
    dec cx                       ; decrement counter before reading
    mov al, [bx]                 ; read character from original string
    mov [si], al                 ; store it in reverse position
    inc bx                       ; move to next character
    dec si                       ; move to previous position in reverse
    jnz ReverseLoop              ; loop until all characters are reversed

    mov byte ptr [si], 0         ; null-terminate the reversed string

    ; Output the reversed string
    pop cx                       ; restore string length
    mov ah, 40h                  ; DOS write to file handle function
    mov bx, 1                    ; standard output handle
    mov dx, OFFSET ReverseString  ; prepare to print the reversed string
    int 21h                      ; print the reversed string

Done: 
    mov ah, 4ch                  ; DOS terminate program function
    int 21h                      ; terminate the program

END ProgramStart
