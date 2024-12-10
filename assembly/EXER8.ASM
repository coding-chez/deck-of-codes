; Filename: Exer8.ASM
; Description:  Display text using string variables (4 string variables)
; Programmer: CHESTINE MAY MARI C. CABISO
; Date Created: August 26, 2024


.MODEL small
.STACK 100h
.DATA
    ; Define header information
    FILENAMEMSG DB 'Filename: Exer8.ASM', 13, 10, '$'
    PROGRAMMERMSG DB 'Programmer Name: CHESTINE MAY MARI C. CABISO', 13, 10, '$'
    DESCRIPTIONMSG DB 'Description: Display text using string variables (4 string variables)', 13, 10, '$'
    DATEMSG DB 'Date Created: August 26, 2024', 13, 10, 13, 10, '$'

    msg1 db "Chestine May Mari C. Cabiso $"
    msg2 db "Bachelor of Science in Computer Science 2nd Year$"
    msg3 db "College of Computer Studies$"
    msg4 db "Cebu Institute of Technology - University$"


.CODE
main:
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

    mov ah, 09h
    mov dx, offset msg1
    int 21h
   
    mov ah, 02h
    mov dl, 0ah  ;newline
    int 21h
   
    mov ah, 09h
    mov dx, offset msg2
    int 21h
   
    mov ah, 02h
    mov dl, 0ah  ;newline
    int 21h
   
    mov ah, 09h
    mov dx, offset msg3
    int 21h
   
    mov ah, 02h
    mov dl, 0ah  ;newline
    int 21h
   
    mov ah, 09h
    mov dx, offset msg4
    int 21h


int 27h
end main