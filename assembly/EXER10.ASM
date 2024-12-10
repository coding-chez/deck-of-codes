; Filename: Exer10.ASM
; Description: Create a College Enrollment Form, like the sample below. Use the name of our school and our college. You 
; may make your own design/layout but follow the labels and form fields below. Use string variables for each 
; form label, such as Full Name and Address. Create simple boxes for each form field, such as First Name and Last Name.
; Programmer: CHESTINE MAY MARI C. CABISO
; Date Created: September 6, 2024

.MODEL small
.STACK 100h
.DATA
    ; Define header information
    FILENAMEMSG DB 'Filename: Exer10.ASM', 13, 10, '$'
    PROGRAMMERMSG DB 'Programmer Name: CHESTINE MAY MARI C. CABISO', 13, 10, '$'
    DESCRIPTIONMSG DB 'Description: Create a College Enrollment Form', 13, 10, '$'
    DATEMSG DB 'Date Created: September 6, 2024', 13, 10, 13, 10, '$'

    msg3 db 'Cebu Institute of University$'
 
row0 db 'FULL NAME  __________________   __________________$'
row1 db '           First Name           Last Name$'
row2 db 'ADDRESS    _______________________________________$'
row3 db '           Street Address$'
row4 db '           _________________   ___________________$'
row5 db '           City                State/Province$'
row6 db 'BIRTH DATE ___________   ___________   ___________$'
row7 db '           Month         Day           Year$'
row8 db 'Gender     o Male       o Female       o N/A$'
row9 db 'STUDENT NUMBER  __________________________________$'
row11 db 'STUDENT EMAIL  __________________________________$'
row12 db 'COMPANY        __________________________________$'
row13 db 'COURSES        o ENG1       o ENG2        o ENG3 $'
row14 db '               o ENG4       o ENG5        o ENG6 $'
row15 db '               o ENG7       o ENG8        o ENG9 $'
row16 db 'ADDITIONAL COMMENTS _____________________________$'
row17 db '                    |                          a |$'
row18 db '                    |                           |$'
row19 db '                    |___________________________|$'
row20 db '                           _________________$'
row21 db '                           |   SIGNATURE   |$'
row22 db '                           |               |$'
row23 db '  DATE:________            |_______________|$'

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
 
    ; Display 'Date: September 5,2024'
    mov ah, 09h
    lea dx, msg3
    int 21h
    call PrintNewLine
    call PrintNewLine
   
 
    ; Display row0 (header row)
    mov ah, 09h
    lea dx, row0
    int 21h
    call PrintNewLine
 
    ; Display row1
    mov ah, 09h
    lea dx, row1
    int 21h
    call PrintNewLine
 
    ; Display row2
    mov ah, 09h
    lea dx, row2
    int 21h
    call PrintNewLine
 
    ; Display row3
    mov ah, 09h
    lea dx, row3
    int 21h
    call PrintNewLine
 
    ; Display row4
    mov ah, 09h
    lea dx, row4
    int 21h
    call PrintNewLine
 
    ; Display row5
    mov ah, 09h
    lea dx, row5
    int 21h
    call PrintNewLine
 
    ; Display row6
    mov ah, 09h
    lea dx, row6
    int 21h
    call PrintNewLine
 
    ; Display row7
    mov ah, 09h
    lea dx, row7
    int 21h
    call PrintNewLine
 
    ; Display row8
    mov ah, 09h
    lea dx, row8
    int 21h
    call PrintNewLine
 
    ; Display row9
    mov ah, 09h
    lea dx, row9
    int 21h
    call PrintNewLine
 
    mov ah, 09h
    lea dx, row11
    int 21h
    call PrintNewLine
 
    mov ah, 09h
    lea dx, row12
    int 21h
    call PrintNewLine
 
    mov ah, 09h
    lea dx, row13
    int 21h
    call PrintNewLine
 
    mov ah, 09h
    lea dx, row14
    int 21h
    call PrintNewLine

    mov ah, 09h
    lea dx, row15
    int 21h
    call PrintNewLine
 
    mov ah, 09h
    lea dx, row16
    int 21h
    call PrintNewLine
 
    mov ah, 09h
    lea dx, row17
    int 21h
    call PrintNewLine
 
    mov ah, 09h
    lea dx, row18
    int 21h
    call PrintNewLine
 
    mov ah, 09h
    lea dx, row19
    int 21h
    call PrintNewLine

    mov ah, 09h
    lea dx, row20
    int 21h
    call PrintNewLine

    mov ah, 09h
    lea dx, row21
    int 21h
    call PrintNewLine

    mov ah, 09h
    lea dx, row22
    int 21h
    call PrintNewLine

    mov ah, 09h
    lea dx, row23
    int 21h
 
    ; Exit program
    mov ah, 4Ch
    int 21h
 
PrintNewLine proc
    ; Print new line (carriage return + line feed)
    mov ah, 02h
    mov dl, 0Dh   ; Carriage return
    int 21h
    mov dl, 0Ah   ; Line feed
    int 21h
    ret
PrintNewLine endp
 
end main
