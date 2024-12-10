; Filename: Exer7.ASM
; Description: Create your own multicolored character with blinking parts
; Programmer: CHESTINE MAY MARI C. CABISO
; Date Created: August 26, 2024


.MODEL small
.STACK 100h
.DATA
    ; Define header information
    FILENAMEMSG DB 'Filename: Exer7.ASM', 13, 10, '$'
    PROGRAMMERMSG DB 'Programmer Name: CHESTINE MAY MARI C. CABISO', 13, 10, '$'
    DESCRIPTIONMSG DB 'Description: Create your own multicolored character with blinking parts', 13, 10, '$'
    DATEMSG DB 'Date Created: August 26, 2024', 13, 10, 13, 10, '$'

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

    ; line 1
    mov ah, 02h
    mov dl, 0ah  ;newline
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 09h
    mov bl, 66h ; color yellow
    mov cx, 4
    int 10h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
    ; line 2
    mov ah, 02h
    mov dl, 0ah  ;newline
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 09h
    mov bl, 66h ; color yellow
    mov cx, 6
    int 10h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    ; line 3
    mov ah, 02h
    mov dl, 0ah  ;newline
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 09h
    mov bl, 44h ; beak green
    mov cx, 1
    int 10h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 09h
    mov bl, 66h ; color yellow
    mov cx, 1
    int 10h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 09h
    mov bl, 87h ; blink
    mov cx, 1
    int 10h
   
    mov ah, 02h
    mov dl, 30h ; eye 9
    int 21h
   
    mov ah, 09h
    mov bl, 66h ; color yellow
    mov cx, 3
    int 10h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    ; line 4
    mov ah, 02h
    mov dl, 0ah  ;newline
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 09h
    mov bl, 44h ; beak green
    mov cx, 3
    int 10h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 09h
    mov bl, 66h ; color yellow
    mov cx, 5
    int 10h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    ; line 5
    mov ah, 02h
    mov dl, 0ah  ;newline
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 09h
    mov bl, 44h ; beak green
    mov cx, 3
    int 10h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 09h
    mov bl, 66h ; color yellow
    mov cx, 3
    int 10h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    ; line 6
    mov ah, 02h
    mov dl, 0ah  ;newline
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 09h
    mov bl, 66h ; color yellow
    mov cx, 3
    int 10h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 09h
    mov bl, 66h ; color yellow
    mov cx, 3
    int 10h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h


    mov ah, 09h
    mov bl, 66h ; color yellow
    mov cx, 1
    int 10h
   
    mov ah, 02h
    mov dl, 20h
    int 21h


    ; line 7
    mov ah, 02h
    mov dl, 0ah  ;newline
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 09h
    mov bl, 66h ; color yellow
    mov cx, 8
    int 10h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 09h
    mov bl, 77h ; line white
    mov cx, 1
    int 10h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 09h
    mov bl, 66h ; color yellow
    mov cx, 1
    int 10h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    ; line 8
    mov ah, 02h
    mov dl, 0ah  ;newline
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 09h
    mov bl, 66h ; color yellow
    mov cx, 4
    int 10h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 09h
    mov bl, 77h ; line white
    mov cx, 1
    int 10h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 09h
    mov bl, 66h ; color yellow
    mov cx, 3
    int 10h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 09h
    mov bl, 77h ; line white
    mov cx, 1
    int 10h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 09h
    mov bl, 66h ; color yellow
    mov cx, 2
    int 10h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h


    ; line 9
    mov ah, 02h
    mov dl, 0ah  ;newline
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 09h
    mov bl, 66h ; color yellow
    mov cx, 5
    int 10h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 09h
    mov bl, 77h ; line white
    mov cx, 3
    int 10h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 09h
    mov bl, 66h ; color yellow
    mov cx, 3
    int 10h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    ; line 10
    mov ah, 02h
    mov dl, 0ah  ;newline
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 09h
    mov bl, 66h ; color yellow
    mov cx, 11
    int 10h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    ; line 11
    mov ah, 02h
    mov dl, 0ah  ;newline
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 09h
    mov bl, 66h ; color yellow
    mov cx, 9
    int 10h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    ; line 12
    mov ah, 02h
    mov dl, 0ah  ;newline
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 09h
    mov bl, 66h ; color yellow
    mov cx, 7
    int 10h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    mov ah, 02h
    mov dl, 20h
    int 21h
   
    ; line 13
    mov ah, 02h
    mov dl, 0ah  ;newline
    int 21h
   
int 27h
end main
