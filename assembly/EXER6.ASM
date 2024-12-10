; Filename: Exer6.ASM
; Description: Display emojis and blinking characters (blinking red heart)
; Programmer: CHESTINE MAY MARI C. CABISO
; Date Created: August 26, 2024

.MODEL small
.STACK 100h
.DATA
    ; Define header information
    FILENAMEMSG DB 'Filename: Exer6.ASM', 13, 10, '$'
    PROGRAMMERMSG DB 'Programmer Name: CHESTINE MAY MARI C. CABISO', 13, 10, '$'
    DESCRIPTIONMSG DB 'Description: Display emojis and blinking characters (blinking red heart)', 13, 10, '$'
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

    ; I
    mov ah, 09h 
	mov bl, 5Eh 
	mov cx, 1 ;num of characters to apply color 
	int 10h

    mov ah, 02h
    mov dl, 'I'    ; I
    int 21h

    ; space
    mov ah,02h 
	mov cl,20h ;space
	mov dl,cl	
	int 21h	

    mov ah,09h
	mov bl,84h ;8=blink, 5=purple foreground
	mov cx,1
	int 10h

    mov ah,02h 
	mov cl,03h ;heart
	mov dl,cl	
	int 21h	

    ; space
    mov ah,02h 
	mov cl,20h ;space
	mov dl,cl	
	int 21h	

    mov ah, 09h 
	mov bl, 5Eh 
	mov cx, 1 ;num of characters to apply color 
	int 10h

    mov ah, 02h
    mov dl, 'U'    ; heart
    int 21h

    mov ah, 00h
    int 16h

    ; Terminate the program
    mov ah, 4Ch
    int 21h

END main
