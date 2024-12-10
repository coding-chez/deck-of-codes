; Filename: EXER16.ASM
; Programmer Name: CHESTINE MAY MARI C. CABISO
; Description: This assembly language program will get character input and 
; and determine if input is 'y' or 'Y' to display good morning message
; else display good afternoon message.
; Date: 9/19/24


.MODEL small
.STACK 100h
.DATA
    FILENAMEMSG DB 'Filename: Exer16.ASM', 13, 10, '$'
    PROGRAMMERMSG DB 'Programmer Name: CHESTINE MAY MARI C. CABISO', 13, 10, '$'
    DESCRIPTIONMSG DB 'Description: Determine if input is  y or Y to display good morning message else display good afternoon message.', 13, 10, '$'
    DATEMSG DB 'Date Created: September 19, 2024', 13, 10, 13, 10, '$'

    TimePrompt DB 'Is it after 12 noon (Y/N)?$'
        GoodMorningMessage LABEL BYTE 
        DB 13,10,'Good morning, world!',13,10,'$'
            GoodAfternoonMessage LABEL BYTE 
            DB 13,10,'Good afternoon, world!',13,10,'$'
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

    mov dx,OFFSET TimePrompt    ; point to the time prompt
    mov ah,9                    ; DOS print string function
    int 21h                     ; display time prompt

    mov ah,1                    ; DOS get character function
    int 21h                     ; get single character response

    cmp al,'y'                  ; typed lowercase ‘y’ for after noon?
    jz IsAfternoon              ; jz = jump if zero. Yes, it’s afternoon
    cmp al,'Y'                  ; typed uppercase ‘Y’ for afternoon?
    jnz IsMorning               ; no, it’s before noon

IsAfternoon:
    mov dx,OFFSET GoodAfternoonMessage      ; point to the afternoon greeting
    jmp DisplayGreeting                     ; point to the afternoon greeting

IsMorning:
    mov dx,OFFSET GoodMorningMessage        ; point to before noon greeting

DisplayGreeting:
    mov ah,9        ; DOS print string function
    int 21h         ; display the greeting
    mov ah,4ch      ; DOS terminate program function
    int 21h         ; terminate program
    
END ProgramStart
