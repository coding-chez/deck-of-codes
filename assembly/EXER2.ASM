; Filename: EXER2.ASM
; Programmer Name: CHESTINE MAY MARI C. CABISO
; Description: Display using single characters.
; Date Created: August 26, 2024
; Sample Output:
; First Name Middle Name Last Name
; Bachelor of Science in Computer Science 2nd Year
; College of Computer Studies
; Cebu Institute of Technology - University

.model small
.stack 100h
.data
    FILENAMEMSG DB 'Filename: EXER2.ASM', 13, 10, '$'
    PROGRAMMERMSG DB 'Programmer Name: CHESTINE MAY MARI C. CABISO', 13, 10, '$'
    DESCRIPTIONMSG DB 'Description: Display using single characters.', 13, 10, '$'
    DATEMSG DB 'Date Created: August 26, 2024', 13, 10, 13, 10, '$'
.code

start:
    mov ax, @data
    mov ds, ax
    ; Display filename
    mov ah, 09h
    lea dx, FILENAMEMSG
    int 21h

    ; Display programmer name
    mov ah, 09h
    lea dx, PROGRAMMERMSG
    int 21h

    ; Display description
    mov ah, 09h
    lea dx, DESCRIPTIONMSG
    int 21h

    ; Display date
    mov ah, 09h
    lea dx, DATEMSG
    int 21h


    ; New line
    mov ah, 02h
    mov dl, 0Ah ; Newline
    int 21h
    mov dl, 0Dh ; Carriage return
    int 21h

    ; Display First Name, Middle Name, Last Name
    mov ah, 02h
    mov dl, 'C' ; First Name
    int 21h
    mov dl, 'h'
    int 21h
    mov dl, 'e'
    int 21h
    mov dl, 's'
    int 21h
    mov dl, 't'
    int 21h
    mov dl, 'i'
    int 21h
    mov dl, 'n'
    int 21h
    mov dl, 'e'
    int 21h

    mov dl, ' ' ; Space
    int 21h

    mov dl, 'M' 
    int 21h
    mov dl, 'a'
    int 21h
    mov dl, 'y'
    int 21h

    mov dl, ' ' ; Space
    int 21h

    mov dl, 'M' 
    int 21h
    mov dl, 'a'
    int 21h
    mov dl, 'r'
    int 21h
    mov dl, 'i'
    int 21h

    mov dl, ' ' ; Space
    int 21h

    mov dl, 'C' ; Middle Name
    int 21h
    mov dl, 'a'
    int 21h
    mov dl, 'b'
    int 21h
    mov dl, 'a'
    int 21h
    mov dl, 't'
    int 21h
    mov dl, 'i'
    int 21h
    mov dl, 'n'
    int 21h
    mov dl, 'g'
    int 21h
    mov dl, 'a'
    int 21h
    mov dl, 'n'
    int 21h

    mov dl, ' ' ; Space
    int 21h

    mov dl, 'C' ; Last Name
    int 21h
    mov dl, 'a'
    int 21h
    mov dl, 'b'
    int 21h
    mov dl, 'i'
    int 21h
    mov dl, 's'
    int 21h
    mov dl, 'o'
    int 21h

    ; New line
    mov ah, 02h
    mov dl, 0Ah ; Newline
    int 21h
    mov dl, 0Dh ; Carriage return
    int 21h

    ; Display Degree and Year
    mov ah, 02h
    mov dl, 'B' ; Bachelor
    int 21h
    mov dl, 'a'
    int 21h
    mov dl, 'c'
    int 21h
    mov dl, 'h'
    int 21h
    mov dl, 'e'
    int 21h
    mov dl, 'l'
    int 21h
    mov dl, 'o'
    int 21h
    mov dl, 'r'
    int 21h

    mov dl, ' ' ; Space
    int 21h

    mov dl, 'o' ; of
    int 21h
    mov dl, 'f'
    int 21h

    mov dl, ' ' ; Space
    int 21h

    mov dl, 'S' ; Science
    int 21h
    mov dl, 'c'
    int 21h
    mov dl, 'i'
    int 21h
    mov dl, 'e'
    int 21h
    mov dl, 'n'
    int 21h
    mov dl, 'c'
    int 21h
    mov dl, 'e'
    int 21h

    mov dl, ' ' ; Space
    int 21h

    mov dl, 'i' ; in
    int 21h
    mov dl, 'n'
    int 21h

    mov dl, ' ' ; Space
    int 21h

    mov dl, 'C' ; Computer
    int 21h
    mov dl, 'o'
    int 21h
    mov dl, 'm'
    int 21h
    mov dl, 'p'
    int 21h
    mov dl, 'u'
    int 21h
    mov dl, 't'
    int 21h
    mov dl, 'e'
    int 21h
    
    mov dl, 'r' ; Computer
    int 21h

    mov dl, ' ' ; Space
    int 21h

	mov dl, 'S' ; Science
    int 21h
    mov dl, 'c'
    int 21h
    mov dl, 'i'
    int 21h
    mov dl, 'e'
    int 21h
    mov dl, 'n'
    int 21h
    mov dl, 'c'
    int 21h
    mov dl, 'e'
    int 21h

	mov dl, ' ' ; Space
    int 21h

    mov dl, '2' ; 2nd Year
    int 21h
    mov dl, 'n'
    int 21h
    mov dl, 'd'
    int 21h
    mov dl, ' '
    int 21h
    mov dl, 'Y'
    int 21h
    mov dl, 'e'
    int 21h
    mov dl, 'a'
    int 21h
    mov dl, 'r'
    int 21h

    ; New line
    mov ah, 02h
    mov dl, 0Ah ; Newline
    int 21h
    mov dl, 0Dh ; Carriage return
    int 21h

    ; Display College Name
    mov ah, 02h
    mov dl, 'C' ; College
    int 21h
    mov dl, 'o'
    int 21h
    mov dl, 'l'
    int 21h
    mov dl, 'l'
    int 21h
    mov dl, 'e'
    int 21h
    mov dl, 'g'
    int 21h
    mov dl, 'e'
    int 21h

    mov dl, ' ' ; Space
    int 21h

    mov dl, 'o' ; of
    int 21h
    mov dl, 'f'
    int 21h

    mov dl, ' ' ; Space
    int 21h

    mov dl, 'C' ; Computer Studies
    int 21h
    mov dl, 'o'
    int 21h
    mov dl, 'm'
    int 21h
    mov dl, 'p'
    int 21h
    mov dl, 'u'
    int 21h
    mov dl, 't'
    int 21h
    mov dl, 'e'
    int 21h
    mov dl, 'r'
    int 21h
    
    mov dl, ' ' ; Space
    int 21h

    mov dl, 'S' ; Studies
    int 21h
    mov dl, 't'
    int 21h
    mov dl, 'u'
    int 21h
    mov dl, 'd'
    int 21h
    mov dl, 'i'
    int 21h
    mov dl, 'e'
    int 21h
    mov dl, 's'
    int 21h

    ; New line
    mov ah, 02h
    mov dl, 0Ah ; Newline
    int 21h
    mov dl, 0Dh ; Carriage return
    int 21h

    ; Display University Name
    mov ah, 02h
    mov dl, 'C' ; Cebu Institute
    int 21h
    mov dl, 'e'
    int 21h
    mov dl, 'b'
    int 21h
    mov dl, 'u'
    int 21h

    mov dl, ' ' ; Space
    int 21h

    mov dl, 'I' 
    int 21h
    mov dl, 'n'
    int 21h
    mov dl, 's'
    int 21h
    mov dl, 't'
    int 21h
    mov dl, 'i'
    int 21h
    mov dl, 't'
    int 21h
    mov dl, 'u'
    int 21h
    mov dl, 't'
    int 21h
    mov dl, 'e'
    int 21h
    
    mov dl, ' ' ; Space
    int 21h

    mov dl, 'o'
    int 21h
    mov dl, 'f'
    int 21h
    
	mov dl, ' ' ; Space
	int 21h

	mov dl, 'T'
	int 21h
	mov dl, 'e'
	int 21h
	mov dl, 'c'
	int 21h
	mov dl, 'h'
	int 21h
	mov dl, 'n'
	int 21h
	mov dl, 'o'
	int 21h
	mov dl, 'l'
	int 21h
	mov dl, 'o'
	int 21h
	mov dl, 'g'
	int 21h
	mov dl, 'y'
	int 21h
    
	mov dl, ' '
	int 21h

	mov dl, '-'
	int 21h
    mov dl, ' '
	int 21h

	mov dl, 'U'
	int 21h
	mov dl, 'n'
	int 21h
	mov dl, 'i'
	int 21h
	mov dl, 'v'
	int 21h
	mov dl, 'e'
	int 21h
	mov dl, 'r'
	int 21h
	mov dl, 's'
	int 21h
	mov dl, 'i'
	int 21h
	mov dl, 't'
	int 21h
	mov dl, 'y'
	int 21h
	
    ; Terminate Program
    mov ah, 4Ch
    int 21h
end start
