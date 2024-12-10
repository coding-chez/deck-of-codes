; Filename: EXER3.ASM
; Programmer Name: CHESTINE MAY MARI C. CABISO
; Description: Display ANY 20 SPECIAL SYMBOLS WITH SPACE IN BETWEEN.
; Date Created: August 26, 2024


.MODEL small
.STACK 100h
.DATA
    ; Define header information
    FILENAMEMSG DB 'Filename: EXER3.ASM', 13, 10, '$'
    PROGRAMMERMSG DB 'Programmer Name: CHESTINE MAY MARI C. CABISO', 13, 10, '$'
    DESCRIPTIONMSG DB 'Description: Display ANY 20 SPECIAL SYMBOLS WITH SPACE IN BETWEEN.', 13, 10, '$'
    DATEMSG DB 'Date Created: August 26, 2024', 13, 10, 13, 10, '$'
    
    ; Define characters to display
    NUMBERS DB '0 1 2 3 4 5 6 7 8 9', 13, 10, '$'
    SPECIAL_SYMBOLS DB '! * # % ^ & @ ~ ( ) - _ + = { } [ ] < ?', 13, 10, '$'

.CODE
ProgramStart:
    ; Set up data segment
    mov ax, @data
    mov ds, ax

    ; Display the filename
    mov dx, OFFSET FILENAMEMSG
    mov ah, 09h
    int 21h

    ; Display the programmer name
    mov dx, OFFSET PROGRAMMERMSG
    mov ah, 09h
    int 21h

    ; Display the description
    mov dx, OFFSET DESCRIPTIONMSG
    mov ah, 09h
    int 21h

    ; Display the date created
    mov dx, OFFSET DATEMSG
    mov ah, 09h
    int 21h

    ; Display numbers
    mov dx, OFFSET NUMBERS
    mov ah, 09h
    int 21h

    ; Display special symbols
    mov dx, OFFSET SPECIAL_SYMBOLS
    mov ah, 09h
    int 21h

    ; Terminate program
    mov ah, 4Ch
    int 21h
END ProgramStart
