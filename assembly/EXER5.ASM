; Filename: Exer5.ASM
; Description: Display a big red cross on a blue background
; Programmer: CHESTINE MAY MARI C. CABISO
; Date Created: August 26, 2024


.MODEL small
.STACK 100h
.DATA
    ; Define header information
    FILENAMEMSG DB 'Filename: Exer5.ASM', 13, 10, '$'
    PROGRAMMERMSG DB 'Programmer Name: CHESTINE MAY MARI C. CABISO', 13, 10, '$'
    DESCRIPTIONMSG DB 'Description: Display a big red cross on a blue background.', 13, 10, '$'
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

    ; Manually print the cross pattern using ASCII characters

    ; Line 1: "        "
    mov ah, 09h 
	mov bl, 10h 
	mov cx, 8 ;num of characters to apply color 
	int 10h

    mov ah, 02h
    mov dl, ' '    ; Space
    int 21h
    mov dl, ' '
    int 21h
    mov dl, ' '
    int 21h
    mov dl, ' '
    int 21h
    mov dl, ' '
    int 21h
    mov dl, ' '
    int 21h
    mov dl, ' '
    int 21h
    mov dl, ' '
    int 21h
    ; New line
    mov ah,02h 
	mov cl,0Ah ;newline
	mov dl,cl	
	int 21h	

    ; Line 2: "   XX   "
    mov ah, 09h 
	mov bl, 14h 
	mov cx, 8 ;num of characters to apply color 
	int 10h

    mov ah, 02h
    mov dl, ' '
    int 21h
    mov dl, ' '
    int 21h
    mov dl, ' '
    int 21h
    mov dl, 'X'
    int 21h
    mov dl, 'X'
    int 21h
    mov dl, ' '
    int 21h
    mov dl, ' '
    int 21h
    mov dl, ' '
    int 21h
    ; New line
    mov dl, 13
    int 21h
    mov dl, 10
    int 21h

    ; Line 3: "   XX   "
    mov ah, 09h 
	mov bl, 14h 
	mov cx, 8 ;num of characters to apply color 
	int 10h

    mov ah, 02h
    mov dl, ' '
    int 21h
    mov dl, ' '
    int 21h
    mov dl, ' '
    int 21h
    mov dl, 'X'
    int 21h
    mov dl, 'X'
    int 21h
    mov dl, ' '
    int 21h
    mov dl, ' '
    int 21h
    mov dl, ' '
    int 21h
    ; New line
    mov dl, 13
    int 21h
    mov dl, 10
    int 21h

    ; Line 4: "XXXXXXXX"
    mov ah, 09h 
	mov bl, 14h 
	mov cx, 8 ;num of characters to apply color 
	int 10h

    mov ah, 02h
    mov dl, 'X'
    int 21h
    mov dl, 'X'
    int 21h
    mov dl, 'X'
    int 21h
    mov dl, 'X'
    int 21h
    mov dl, 'X'
    int 21h
    mov dl, 'X'
    int 21h
    mov dl, 'X'
    int 21h
    mov dl, 'X'
    int 21h
    ; New line
    mov dl, 13
    int 21h
    mov dl, 10
    int 21h

    ; Line 5: "   XX   "
    mov ah, 09h 
	mov bl, 14h 
	mov cx, 8 ;num of characters to apply color 
	int 10h

    mov ah, 02h
    mov dl, ' '
    int 21h
    mov dl, ' '
    int 21h
    mov dl, ' '
    int 21h
    mov dl, 'X'
    int 21h
    mov dl, 'X'
    int 21h
    mov dl, ' '
    int 21h
    mov dl, ' '
    int 21h
    mov dl, ' '
    int 21h
    ; New line
    mov dl, 13
    int 21h
    mov dl, 10
    int 21h

    ; Line 6: "   XX   "
    mov ah, 09h 
	mov bl, 14h 
	mov cx, 8 ;num of characters to apply color 
	int 10h

    mov ah, 02h
    mov dl, ' '
    int 21h
    mov dl, ' '
    int 21h
    mov dl, ' '
    int 21h
    mov dl, 'X'
    int 21h
    mov dl, 'X'
    int 21h
    mov dl, ' '
    int 21h
    mov dl, ' '
    int 21h
    mov dl, ' '
    int 21h
    ; New line
    mov dl, 13
    int 21h
    mov dl, 10
    int 21h

    ; Line 7: "        "
    mov ah, 09h 
	mov bl, 11h 
	mov cx, 8 ;num of characters to apply color 
	int 10h

    mov ah, 02h
    mov dl, ' '
    int 21h
    mov dl, ' '
    int 21h
    mov dl, ' '
    int 21h
    mov dl, ' '
    int 21h
    mov dl, ' '
    int 21h
    mov dl, ' '
    int 21h
    mov dl, ' '
    int 21h
    mov dl, ' '
    int 21h
    ; New line
    mov dl, 13
    int 21h
    mov dl, 10
    int 21h

    ; Wait for a key press
    mov ah, 00h
    int 16h

    ; Terminate the program
    mov ah, 4Ch
    int 21h

END main
