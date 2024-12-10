; Filename: EXAM1.asm
; Programmer Name: Chestine May Mari C. Cabiso
; Date: September 05, 2024


.model small
.stack 100  
.data
    FILENAMEMSG DB 'Filename: EXAM1.ASM', 13, 10, '$'
    PROGRAMMERSMSG DB 'Programmer Name: CHESTINE MAY MARI C. CABISO', 13, 10, '$'
    DESCRIPTIONMSG DB 'Description: Create a Multiplication Table.', 13, 10, '$'
    DATEMSG DB 'Date Created: September 5, 2024', 13, 10, 13, 10, '$'
.code
start:
    mov ax, 0003h  
    int 10h

    ; Set up data segment
    mov ax, @data
    mov ds, ax

    ; Display the header information
    lea dx, FILENAMEMSG
    mov ah, 09h
    int 21h

    lea dx, PROGRAMMERSMSG
    mov ah, 09h
    int 21h

    lea dx, DESCRIPTIONMSG
    mov ah, 09h
    int 21h

    lea dx, DATEMSG
    mov ah, 09h
    int 21h  

	mov ah,02h 
	mov cl,2Dh ;-
	mov dl,cl	
	int 21h	
	mov ah,02h 
	mov cl,2Dh ;-
	mov dl,cl	
	int 21h	
	mov ah,02h 
	mov cl,2Dh ;-
	mov dl,cl	
	int 21h	
	mov ah,02h 
	mov cl,2Dh ;-
	mov dl,cl	
	int 21h	
	mov ah,02h 
	mov cl,2Dh ;-
	mov dl,cl	
	int 21h	
	mov ah,02h 
	mov cl,2Dh ;-
	mov dl,cl	
	int 21h	
	mov ah,02h 
	mov cl,2Dh ;-
	mov dl,cl	
	int 21h	
	mov ah,02h 
	mov cl,2Dh ;-
	mov dl,cl	
	int 21h	
	mov ah,02h 
	mov cl,2Dh ;-
	mov dl,cl	
	int 21h	
	mov ah,02h 
	mov cl,2Dh ;-
	mov dl,cl	
	int 21h	
	mov ah,02h 
	mov cl,2Dh ;-
	mov dl,cl	
	int 21h	
	mov ah,02h 
	mov cl,2Dh ;-
	mov dl,cl	
	int 21h	
	mov ah,02h 
	mov cl,2Dh ;-
	mov dl,cl	
	int 21h	
	mov ah,02h 
	mov cl,2Dh ;-
	mov dl,cl	
	int 21h	
	mov ah,02h 
	mov cl,2Dh ;-
	mov dl,cl	
	int 21h	
	mov ah,02h 
	mov cl,2Dh ;-
	mov dl,cl	
	int 21h	
	mov ah,02h 
	mov cl,2Dh ;-
	mov dl,cl	
	int 21h	
	mov ah,02h 
	mov cl,2Dh ;-
	mov dl,cl	
	int 21h	
	mov ah,02h 
	mov cl,2Dh ;-
	mov dl,cl	
	int 21h	
	mov ah,02h 
	mov cl,2Dh ;-
	mov dl,cl	
	int 21h	
	mov ah,02h 
	mov cl,2Dh ;-
	mov dl,cl	
	int 21h	
	mov ah,02h 
	mov cl,2Dh ;-
	mov dl,cl	
	int 21h	
	mov ah,02h 
	mov cl,2Dh ;-
	mov dl,cl	
	int 21h	
	mov ah,02h 
	mov cl,2Dh ;-
	mov dl,cl	
	int 21h	
	mov ah,02h 
	mov cl,2Dh ;-
	mov dl,cl	
	int 21h	
	mov ah,02h 
	mov cl,2Dh ;-
	mov dl,cl	
	int 21h	
	mov ah,02h 
	mov cl,2Dh ;-
	mov dl,cl	
	int 21h	
	mov ah,02h 
	mov cl,2Dh ;-
	mov dl,cl	
	int 21h	
	mov ah,02h 
	mov cl,2Dh ;-
	mov dl,cl	
	int 21h	
	mov ah,02h 
	mov cl,2Dh ;-
	mov dl,cl	
	int 21h	
	mov ah,02h 
	mov cl,2Dh ;-
	mov dl,cl	
	int 21h	
	mov ah,02h 
	mov cl,2Dh ;-
	mov dl,cl	
	int 21h	
	mov ah,02h 
	mov cl,2Dh ;-
	mov dl,cl	
	int 21h	
	mov ah,02h 
	mov cl,2Dh ;-
	mov dl,cl	
	int 21h	
	mov ah,02h 
	mov cl,2Dh ;-
	mov dl,cl	
	int 21h	
	mov ah,02h 
	mov cl,2Dh ;-
	mov dl,cl	
	int 21h	


	mov ah,02h 
	mov cl,0Ah ;Newline
	mov dl,cl	
	int 21h

	mov ah,02h 
	mov cl,4Dh ;M
	mov dl,cl	
	int 21h

	mov ah,02h 
	mov cl,55h ;U
	mov dl,cl	
	int 21h

	mov ah,02h 
	mov cl,4Ch ;L
	mov dl,cl	
	int 21h

	mov ah,02h 
	mov cl,54h ;T
	mov dl,cl	
	int 21h

	mov ah,02h 
	mov cl,49h ;I
	mov dl,cl	
	int 21h

	mov ah,02h 
	mov cl,50h ;P
	mov dl,cl	
	int 21h
	
	mov ah,02h 
	mov cl,4Ch ;L
	mov dl,cl	
	int 21h

	mov ah,02h 
	mov cl,49h ;I
	mov dl,cl	
	int 21h

	mov ah,02h 
	mov cl,43h ;C
	mov dl,cl	
	int 21h

	mov ah,02h 
	mov cl,41h ;A
	mov dl,cl	
	int 21h

	mov ah,02h 
	mov cl,54h ;T
	mov dl,cl	
	int 21h

	mov ah,02h 
	mov cl,49h ;I
	mov dl,cl	
	int 21h

	mov ah,02h 
	mov cl,4Fh ;O
	mov dl,cl	
	int 21h

	mov ah,02h 
	mov cl,4Eh ;N
	mov dl,cl	
	int 21h

	mov ah,02h 
	mov cl,20h ;space
	mov dl,cl	
	int 21h

	mov ah,02h 
	mov cl,42h ;B
	mov dl,cl	
	int 21h

	mov ah,02h 
	mov cl,59h ;Y
	mov dl,cl	
	int 21h

	mov ah,02h 
	mov cl,3Ah ;:
	mov dl,cl	
	int 21h

	mov ah,02h 
	mov cl,20h ;space
	mov dl,cl	
	int 21h

	mov ah,02h 
	mov cl,43h ;C
	mov dl,cl	
	int 21h	
	
	mov ah,02h 
	mov cl,48h ;H
	mov dl,cl	
	int 21h		
	
	mov ah,02h 
	mov cl,45h ;E
	mov dl,cl	
	int 21h	
	
	mov ah,02h 
	mov cl,53h ;S
	mov dl,cl	
	int 21h	
	
	mov ah,02h 
	mov cl,54h ;T
	mov dl,cl	
	int 21h	
	
	mov ah,02h 
	mov cl,49h ;I
	mov dl,cl	
	int 21h	
	
	mov ah,02h 
	mov cl,4Eh ;N
	mov dl,cl	
	int 21h	
	
	mov ah,02h 
	mov cl,45h ;E
	mov dl,cl	
	int 21h	
	
	mov ah,02h 
	mov cl,20h ;space
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,43h ;C
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,2Eh ;dot
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,43h ;C
	mov dl,cl	
	int 21h

	mov ah,02h 
	mov cl,41h ;A
	mov dl,cl	
	int 21h

	mov ah,02h 
	mov cl,42h ;B
	mov dl,cl	
	int 21h

	mov ah,02h 
	mov cl,49h ;I
	mov dl,cl	
	int 21h

	mov ah,02h 
	mov cl,53h ;S
	mov dl,cl	
	int 21h

	mov ah,02h 
	mov cl,4Fh ;O
	mov dl,cl	
	int 21h
	
	mov ah,02h 
	mov cl,0Dh ;Carriage return
	mov dl,cl	
	int 21h

	mov ah,02h 
	mov cl,0Ah ;Newline
	mov dl,cl	
	int 21h
	
	mov ah,02h 
	mov cl,44h ;D
	mov dl,cl	
	int 21h
	
	mov ah,02h 
	mov cl,41h ;A
	mov dl,cl	
	int 21h

	mov ah,02h 
	mov cl,54h ;T
	mov dl,cl	
	int 21h

	mov ah,02h 
	mov cl,45h ;E
	mov dl,cl	
	int 21h

	mov ah,02h 
	mov cl,3Ah ;:
	mov dl,cl	
	int 21h

	mov ah,02h 
	mov cl,20h ;space
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,53h ;S
	mov dl,cl	
	int 21h

	mov ah,02h 
	mov cl,65h ;e
	mov dl,cl	
	int 21h

	mov ah,02h 
	mov cl,70h ;p
	mov dl,cl	
	int 21h

	mov ah,02h 
	mov cl,74h ;t
	mov dl,cl	
	int 21h

	mov ah,02h 
	mov cl,65h ;e
	mov dl,cl	
	int 21h

	mov ah,02h 
	mov cl,6Dh ;m
	mov dl,cl	
	int 21h

	mov ah,02h 
	mov cl,62h ;b
	mov dl,cl	
	int 21h

	mov ah,02h 
	mov cl,65h ;e
	mov dl,cl	
	int 21h

	mov ah,02h 
	mov cl,72h ;r
	mov dl,cl	
	int 21h

	mov ah,02h 
	mov cl,20h ;space
	mov dl,cl	
	int 21h

	mov ah,02h 
	mov cl,35h ;5
	mov dl,cl	
	int 21h

	mov ah,02h 
	mov cl,2Ch ;,
	mov dl,cl	
	int 21h

	mov ah,02
	mov cl,20h ;space
	mov dl,cl	
	int 21h

	mov ah,02h 
	mov cl,32h ;2
	mov dl,cl	
	int 21h

	mov ah,02h 
	mov cl,30h ;0
	mov dl,cl	
	int 21h


	mov ah,02h 
	mov cl,32h ;2
	mov dl,cl	
	int 21h


	mov ah,02h 
	mov cl,34h ;4
	mov dl,cl	
	int 21h

	mov ah,02h 
	mov cl,0Ah ;Newline
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,2Dh ;-
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,2Dh ;-
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,2Dh ;-
	mov dl,cl	
	int 21h	


	mov ah,02h 
	mov cl,2Dh ;-
	mov dl,cl	
	int 21h	


	mov ah,02h 
	mov cl,2Dh ;-
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,2Dh ;-
	mov dl,cl	
	int 21h	


	mov ah,02h 
	mov cl,2Dh ;-
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,2Dh ;-
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,2Dh ;-
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,2Dh ;-
	mov dl,cl	
	int 21h	
	
	

	mov ah,4Ch ;Exit program
	int 21h 

	end start ; end program
  
	