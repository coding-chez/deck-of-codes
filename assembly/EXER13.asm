; Filename: EXER13.ASM
; Programmer name: Chestine May Mari C. Cabiso
; Description: This assembly language program will display multiple stringvariables on separate lines.
; Date Created: 9/19/2024

.MODEL small
.STACK 200h
.DATA
FILENAMEMSG DB 'Filename: Exer13.ASM', 13, 10, '$'
    PROGRAMMERMSG DB 'Programmer Name: CHESTINE MAY MARI C. CABISO', 13, 10, '$'
    DESCRIPTIONMSG DB 'This program will display multiple stringvariables on separate lines.', 13, 10, '$'
    DATEMSG DB 'Date Created: September 19, 2024', 13, 10, 13, 10, '$'
String1 DB 'Line1',0dh,0ah,'$'
String2 DB 'Line2',0dh,0ah,'$'
String3 DB 'Line3',0dh,0ah,'$'

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

 mov ah,9                   ; DOS print string function
 mov dx,OFFSET String1      ; 1st string to print
 int 21h                    ; invoke DOS to print string

 mov dx,OFFSET String2      ; 2nd string to print
 int 21h                    ; invoke DOS to print string

 mov dx,OFFSET String3      ; 3rd string to print
 int 21h                    ; invoke DOS to print string

 mov ah,4ch                 ; DOS terminate program function
 int 21h                    ; invoke DOS to end program

END ProgramStart
