; Filename: Exer9.ASM
; Description: Create AUGUST 2024 Calendar using ASCII characters, with borders
; Programmer: CHESTINE MAY MARI C. CABISO
; Date Created: August 26, 2024


.MODEL small
.STACK 100h
.DATA
    ; Define header information
    FILENAMEMSG DB 'Filename: Exer9.ASM', 13, 10, '$'
    PROGRAMMERMSG DB 'Programmer Name: CHESTINE MAY MARI C. CABISO', 13, 10, '$'
    DESCRIPTIONMSG DB 'Description: Create AUGUST 2024 Calendar using ASCII characters, with borders', 13, 10, '$'
    DATEMSG DB 'Date Created: August 26, 2024', 13, 10, 13, 10, '$'

    str1 db '|-----------------------------------------|', 13, 10
         db '|                 AUGUST                  |', 13, 10
         db '|-----------------------------------------|', 13, 10
         db '| MON | TUE | WED | THU | FRI | SAT | SUN |', 13, 10
         db '|-----------------------------------------|', 13, 10
         db '|   29|   30|   31|    1|    2|    3|    4|', 13, 10
         db '|-----------------------------------------|', 13, 10
         db '|    5|    6|    7|    8|    9|   10|   11|', 13, 10
         db '|-----------------------------------------|', 13, 10
         db '|   12|   13|   14|   15|   16|   17|   18|', 13, 10
         db '|-----------------------------------------|', 13, 10
         db '|   19|   20|   21|   22|   23|   24|   25|', 13, 10
         db '|-----------------------------------------|', 13, 10
         db '|   26|   27|   28|   29|   30|   31|    1|', 13, 10
         db '|-----------------------------------------|', 13, 10, '$'

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

    lea dx, str1
    mov ah, 09h
    int 21h


int 27h
end main