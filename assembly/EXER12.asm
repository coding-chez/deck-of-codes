; Filename: Exer12.ASM
; Programmer: CHESTINE MAY MARI C. CABISO
; Description: This assembly language program will display multiple  string variables on a single line.
; Date Created: September 19, 2024

.MODEL small
.STACK 200h
.DATA
FILENAMEMSG DB 'Filename: Exer12.ASM', 13, 10, '$'
    PROGRAMMERMSG DB 'Programmer Name: CHESTINE MAY MARI C. CABISO', 13, 10, '$'
    DESCRIPTIONMSG DB 'This program will display multiple string variables on single line', 13, 10, '$'
    DATEMSG DB 'Date Created: September 19, 2024', 13, 10, 13, 10, '$'

String1 DB 'Line1','$' ; DB = Define Byte String1 variable and assign ‘Line1’ value.
String2 DB 'Line2','$'
String3 DB 'Line3','$'
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

 mov ah,9 ; DOS print string function
 mov dx,OFFSET String1 ; 1st string to print
 int 21h ; invoke DOS to print string
 
 mov dx,OFFSET String2 ; 2nd string to print
 int 21h ; invoke DOS to print string

 mov dx,OFFSET String3 ; 3rd string to print
 int 21h ; invoke DOS to print string

 mov ah,4ch ; DOS terminate program function
 int 21h ; invoke DOS to end program
END ProgramStart
