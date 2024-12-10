; Filename: EXER1.ASM 
; Programmer Name: CHESTINE MAY MARI C. CABISO
; Description: Prints lowercase and uppercase letters.
; Date Created: August 26, 2024

.MODEL small
.STACK 100h
.DATA
    ; Define messages following the reference style
    FILENAMEMSG DB 'Filename: EXER1.ASM', 13, 10, '$'
    PROGRAMMERMSG DB 'Programmer Name: CHESTINE MAY MARI C. CABISO', 13, 10, '$'
    DESCRIPTIONMSG DB 'Description: Prints lowercase and uppercase letters.', 13, 10, '$'
    DATEMSG DB 'Date Created: 9/26/24', 13, 10, 13, 10, '$'

.CODE
ProgramStart:
    ; Set data segment
    mov ax, @data
    mov ds, ax

    ; Display the filename
    mov dx, OFFSET FILENAMEMSG
    mov ah, 9h
    int 21h

    ; Display the programmer name
    mov dx, OFFSET PROGRAMMERMSG
    mov ah, 9h
    int 21h

    ; Display the description
    mov dx, OFFSET DESCRIPTIONMSG
    mov ah, 9h
    int 21h

    ; Display the date created
    mov dx, OFFSET DATEMSG
    mov ah, 9h
    int 21h

    ; Continue with the rest of your code for character display
    ; Example code for displaying characters:
    mov ah, 02h
    mov cl, 61h ; Start with lowercase 'a'
    mov dl, cl
    int 21h

    mov ah,02h 
	mov cl,62h ;b
	mov dl,cl	
	int 21h		
	
	mov ah,02h 
	mov cl,63h ;c
	mov dl,cl	
	int 21h	
	
	mov ah,02h 
	mov cl,64h ;d
	mov dl,cl	
	int 21h	
	
	mov ah,02h 
	mov cl,65h ;e
	mov dl,cl	
	int 21h	
	
	mov ah,02h 
	mov cl,66h ;f
	mov dl,cl	
	int 21h	
	
	mov ah,02h 
	mov cl,67h ;g
	mov dl,cl	
	int 21h	
	
	mov ah,02h 
	mov cl,68h ;h
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,69h ;i
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,6Ah ;j
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,6Bh ;k
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,6Ch ;l
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,6Dh ;m
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,6Eh ;n
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,6Fh ;o
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,70h ;p
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,71h ;q
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,72h ;r
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,73h ;s
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,74h ;t
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,75h ;u
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,76h ;v
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,77h ;w
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,78h ;x
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,79h ;y
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,7Ah ;z
	mov dl,cl	
	int 21h	


	mov ah,02h 
	mov cl,0Ah ;newline
	mov dl,cl	
	int 21h	
	
	
	mov ah,02h 
	mov cl,41h ;A
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,20h ;space
	mov dl,cl	
	int 21h	
	
	mov ah,02h 
	mov cl,42h ;b
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,20h ;space
	mov dl,cl	
	int 21h		
	
	mov ah,02h 
	mov cl,43h ;c
	mov dl,cl	
	int 21h	
	
	mov ah,02h 
	mov cl,20h ;space
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,44h ;d
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,20h ;space
	mov dl,cl	
	int 21h	
	
	mov ah,02h 
	mov cl,45h ;e
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,20h ;space
	mov dl,cl	
	int 21h	
	
	mov ah,02h 
	mov cl,46h ;f
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,20h ;space
	mov dl,cl	
	int 21h	
	
	mov ah,02h 
	mov cl,47h ;g
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,20h ;space
	mov dl,cl	
	int 21h	
	
	mov ah,02h 
	mov cl,48h ;h
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,20h ;space
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,49h ;i
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,20h ;space
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,4Ah ;j
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,20h ;space
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,4Bh ;k
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,20h ;space
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,4Ch ;l
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,20h ;space
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,4Dh ;m
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,20h ;space
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,4Eh ;n
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,20h ;space
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,4Fh ;o
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,20h ;space
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,50h ;p
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,20h ;space
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,51h ;q
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,20h ;space
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,52h ;r
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,20h ;space
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,53h ;s
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,20h ;space
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,54h ;t
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,20h ;space
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,55h ;u
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,20h ;space
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,56h ;v
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,20h ;space
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,57h ;w
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,20h ;space
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,58h ;x
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,20h ;space
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,59h ;y
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,20h ;space
	mov dl,cl	
	int 21h	

	mov ah,02h 
	mov cl,5Ah ;z
	mov dl,cl	
	int 21h	

    ; Exit the program
    mov ah, 4Ch
    int 21h

END ProgramStart
