; Filename: EXER4.ASM
; Programmer Name: CHESTINE MAY MARI C. CABISO
; Date: AUGUST 26, 2024
; Description: Display text with different foreground and background colors.


.MODEL small
.STACK 100h
.DATA
    ; Define header information
    FILENAMEMSG DB 'Filename: EXER4.ASM', 13, 10, '$'
    PROGRAMMERMSG DB 'Programmer Name: CHESTINE MAY MARI C. CABISO', 13, 10, '$'
    DESCRIPTIONMSG DB 'Description: Display with different foreground and background colors.', 13, 10, '$'
    DATEMSG DB 'Date Created: August 26, 2024', 13, 10, 13, 10, '$'

.CODE
main:
    ; Set video mode to 80x25 text mode
    mov ax, 0003h  
    int 10h

    ; Set data segment
    mov ax, @data 
    mov ds, ax 

    ; Display header information
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

    ; Print "College" with specific colors
    mov ah, 09h 
	mov bl, 5Eh ; 5 = purple (bg color), E = bright white (foreground color) 
	mov cx, 7 ;num of characters to apply color 
	int 10h
    ; C
    mov ah,02h 
	mov cl,43h ;C
	mov dl,cl	
	int 21h	

    ; o
    mov ah,02h 
	mov cl,6Fh 
	mov dl,cl	
	int 21h	

    mov ah, 02h
    mov cl, 50h          
    mov dl, 'l'
    int 21h
    ; l
    mov ah, 02h
    mov cl, 50h          
    mov dl, 'l'
    int 21h
    ; e
    mov ah, 02h
    mov cl, 50h          
    mov dl, 'e'
    int 21h
    ; g
    mov ah, 02h
    mov cl, 50h          
    mov dl, 'g'
    int 21h
    ; e
    mov ah, 02h
    mov cl, 50h          
    mov dl, 'e'
    int 21h

    mov ah,02h 
	mov cl,0Ah ;newline
	mov dl,cl	
	int 21h	

    ; Print "of" with specific colors
    mov ah, 09h 
	mov bl, 3Eh 
	mov cx, 2 
	int 10h
    ; o
    mov ah, 02h
    mov cl, 40h          
    mov dl, 'o'
    int 21h
    ; f
    mov ah, 02h
    mov cl, 40h          
    mov dl, 'f'
    int 21h
    ; New line
    mov dl, 13          
    int 21h
    mov dl, 10           
    int 21h

    ; Print "Computer" with specific colors
    mov ah, 09h 
	mov bl, 6Eh 
	mov cx, 8 
	int 10h
    ; C
    mov ah, 02h
    mov cl, 30h         
    mov dl, 'C'
    int 21h
    ; o
    mov ah, 02h
    mov cl, 30h          
    mov dl, 'o'
    int 21h
    ; m
    mov ah, 02h
    mov cl, 30h         
    mov dl, 'm'
    int 21h
    ; p
    mov ah, 02h
    mov cl, 30h          
    mov dl, 'p'
    int 21h
    ; u
    mov ah, 02h
    mov cl, 30h          
    mov dl, 'u'
    int 21h
    ; t
    mov ah, 02h
    mov cl, 30h          
    mov dl, 't'
    int 21h
    ; e
    mov ah, 02h
    mov cl, 30h        
    mov dl, 'e'
    int 21h
    ; r
    mov ah, 02h
    mov cl, 30h         
    mov dl, 'r'
    int 21h
    ; New line
    mov dl, 13          
    int 21h
    mov dl, 10          
    int 21h

    ; Print "Studies" with specific colors
    mov ah, 09h 
	mov bl, 2Eh 
	mov cx, 7 
	int 10h
    ; S
    mov ah, 02h
    mov cl, 20h         
    mov dl, 'S'
    int 21h
    ; t
    mov ah, 02h
    mov cl, 20h          
    mov dl, 't'
    int 21h
    ; u
    mov ah, 02h
    mov cl, 20h         
    mov dl, 'u'
    int 21h
    ; d
    mov ah, 02h
    mov cl, 20h          
    mov dl, 'd'
    int 21h
    ; i
    mov ah, 02h
    mov cl, 20h         
    mov dl, 'i'
    int 21h
    ; e
    mov ah, 02h
    mov cl, 20h         
    mov dl, 'e'
    int 21h
    ; s
    mov ah, 02h
    mov cl, 20h          
    mov dl, 's'
    int 21h

    ; Wait for a key press
    mov ah, 00h
    int 16h

    ; Terminate program
    mov ax, 4C00h
    int 21h

END main
