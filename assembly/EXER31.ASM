; Filename: EXER31.ASM
; Programmer Name: CHESTINE MAY MARI C. CABISO
; Description: This assembly language program will input an integer
; and display numbers from 1 to the entered integer.
; Date: SEPTEMBER 28, 2024


.MODEL SMALL
.STACK 100h
.DATA
    FILENAMEMSG DB 'Filename: Exer31.ASM', 13, 10, '$'
    PROGRAMMERSMSG DB 'Programmer Name: CHESTINE MAY MARI C. CABISO', 13, 10, '$'
    DESCRIPTIONMSG DB 'Description: Assembly program to input an integer, display numbers from 1 to the entered integer.', 13, 10, '$'
    DATEMSG DB 'Date Created: September 28, 2024', 13, 10, 13, 10, '$'

    prompt DB 'Enter an integer: $'
    newline DB 0DH, 0AH, '$' ; For a new line
    num DB ?           ; Storage for user input number

.CODE
START:
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

    LEA DX, prompt
    MOV AH, 09H
    INT 21H             ; DOS interrupt to display string


    ; Get the number from input
    MOV AH, 01H         ; DOS interrupt to get single character input
    INT 21H
    SUB AL, 30H         ; Convert ASCII to integer
    MOV num, AL         ; Store the number


    LEA DX, newline    
    MOV AH, 09H        
    INT 21H  
    ; Initialize loop counter (starting from 1)
    MOV CL, 1           ; Start counter at 1


loop_start:
    CMP CL, num         ; Compare counter with the entered number
    JG end_loop         ; If counter > num, exit loop


    ; Display current counter value (CL)
    MOV AL, CL          ; Load current counter value into AL
    ADD AL, 30H         ; Convert integer to ASCII for display
    MOV DL, AL          ; Move it to DL for output
    MOV AH, 02H         ; DOS interrupt to display character
    INT 21H


    ; New line after each number (optional)
    LEA DX, newline    
    MOV AH, 09H        
    INT 21H            


    INC CL              ; Increment counter by 1
    JMP loop_start      ; Repeat the loop


end_loop:
    ; Exit program
    MOV AH, 4CH        
    INT 21H


END START
