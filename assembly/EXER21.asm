; Filename: EXER21.ASM
; Programmer Name: CHESTINE MAY MARI C. CABISO
; Description: Create a program that asks for your first name, middle name, and family name. Then display “Hello, FIRST NAME MIDDLE NAME FAMILY NAME!”.
; Date: 9/19/24

.model small
.stack 100h

.data
    FILENAMEMSG DB 'Filename: Exer21.ASM', 13, 10, '$'
    PROGRAMMERMSG DB 'Programmer Name: CHESTINE MAY MARI C. CABISO', 13, 10, '$'
    DESCRIPTIONMSG DB 'Description: Asks for your first name, middle name, and family name. Then display Hello, FIRST NAME MIDDLE NAME FAMILY NAME!.', 13, 10, '$'
    DATEMSG DB 'Date Created: September 19, 2024', 13, 10, 13, 10, '$'

    promptFirstName   db 'Enter First Name: $'
    promptMiddleName  db 'Enter Middle Name: $'
    promptFamilyName  db 'Enter Family Name: $'
    greeting          db 'Hello, $'
    firstName         db 50 dup('$')
    middleName        db 50 dup('$')
    familyName        db 50 dup('$')
    newline           db 13, 10, '$'

.code
start:
    ; Set up the segment registers:
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

    ; Get the first name:
    mov ah, 09h
    lea dx, promptFirstName
    int 21h
    lea si, firstName
    call GetString

    ; Get the middle name:
    mov ah, 09h
    lea dx, promptMiddleName
    int 21h
    lea si, middleName
    call GetString

    ; Get the family name:
    mov ah, 09h
    lea dx, promptFamilyName
    int 21h
    lea si, familyName
    call GetString

    ; Print greeting:
    mov ah, 09h
    lea dx, greeting
    int 21h

    lea dx, firstName
    int 21h

    mov ah, 09h
    lea dx, middleName
    int 21h

    mov ah, 09h
    lea dx, familyName
    int 21h

    mov ah, 09h
    lea dx, newline
    int 21h

    ; Terminate program:
    mov ax, 4C00h
    int 21h

; Subroutine to get a string from the user:
GetString:
    ; Receives input from the user and stores in buffer
    xor cx, cx

next_char:
    mov ah, 01h
    int 21h
    cmp al, 13
    je done_input
    mov [si], al
    inc si
    inc cx
    jmp next_char

done_input:
    mov byte ptr [si], '$'
    ret

end start
