; Filename: EXER15.ASM
; Programmer Name: CHESTINE MAY MARI C. CABISO
; Description: This assembly language program will continuously get character input and display back input until Enter key is pressed.
; Date: 9/19/24

.MODEL small
.STACK 200h
.DATA
    FILENAMEMSG DB 'Filename: Exer15.ASM', 13, 10, '$'
    PROGRAMMERMSG DB 'Programmer Name: CHESTINE MAY MARI C. CABISO', 13, 10, '$'
    DESCRIPTIONMSG DB 'Description: Continuously gets character input and display back input until Enter key is pressed.', 13, 10, '$'
    DATEMSG DB 'Date Created: September 19, 2024', 13, 10, 13, 10, '$'

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
 EchoLoop:
    mov ah,1            ; DOS keyboard input function
    int 21h             ; get the next key
    
    cmp al,13           ; was the key the Enter key?
    jz EchoDone         ; yes, so we're done echoing

    mov dl,al           ; put the character into DL
    mov ah,2            ; DOS display output function
    int 21h             ; display the character

    jmp EchoLoop        ; echo the next character

 EchoDone:
    mov ah,4ch          ; DOS terminate program function
    int 21h             ; terminate the program
END ProgramStart