; Filename: EXER30.ASM
; Programmer Name: CHESTINE MAY MARI C. CABISO
; Description: This assembly language program will input two integers,
; compare them, and display which one is smaller and which one is bigger.
; Date: SEPTEMBER 28, 2024

.MODEL SMALL
.STACK 100h
.DATA
    FILENAMEMSG DB 'Filename: Exer30.ASM', 13, 10, '$'
    PROGRAMMERSMSG DB 'Programmer Name: CHESTINE MAY MARI C. CABISO', 13, 10, '$'
    DESCRIPTIONMSG DB 'Description: Assembly program to input two integers, compare them, and display which one is smaller and bigger.', 13, 10, '$'
    DATEMSG DB 'Date Created: September 28, 2024', 13, 10, 13, 10, '$'

    prompt1 DB 'Enter the first integer: $'
    prompt2 DB 0DH, 0AH, 'Enter the second integer: $'
    resultMsg1 DB 0DH, 0AH, 'The smaller number is: $'
    resultMsg2 DB 0DH, 0AH, 'The bigger number is: $'
    num1 DB ?           ; Storage for first input number
    num2 DB ?           ; Storage for second input number
    newline DB 0DH, 0AH, '$' ; For a new line


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

    LEA DX, prompt1
    MOV AH, 09H
    INT 21H             ; DOS interrupt to display string


    ; Get the first number from input
    MOV AH, 01H         ; DOS interrupt to get single character input
    INT 21H
    SUB AL, 30H         ; Convert ASCII to integer
    MOV num1, AL        ; Store the first number


    ; Display prompt2 and get second number
    LEA DX, prompt2
    MOV AH, 09H
    INT 21H


    ; Get the second number from input
    MOV AH, 01H
    INT 21H
    SUB AL, 30H         ; Convert ASCII to integer
    MOV num2, AL        ; Store the second number


    ; Compare the two numbers
    MOV AL, num1        ; Load first number into AL
    MOV BL, num2        ; Load second number into BL
    CMP AL, BL          ; Compare num1 (AL) with num2 (BL)


    ; If num1 < num2, jump to FIRST_IS_SMALLER
    JL  FIRST_IS_SMALLER


    ; If num1 >= num2, display resultMsg2 (the bigger number)
    LEA DX, resultMsg2
    MOV AH, 09H
    INT 21H             ; DOS interrupt to display string


    ; Convert num1 to ASCII and display it
    ADD AL, 30H         ; Convert integer to ASCII
    MOV DL, AL
    MOV AH, 02H         ; DOS interrupt to display character
    INT 21H


    ; Display newline
    LEA DX, newline
    MOV AH, 09H
    INT 21H


    ; Display resultMsg1 (the smaller number)
    LEA DX, resultMsg1
    MOV AH, 09H
    INT 21H             ; DOS interrupt to display string


    ; Convert num2 to ASCII and display it
    MOV AL, num2
    ADD AL, 30H         ; Convert integer to ASCII
    MOV DL, AL
    MOV AH, 02H         ; DOS interrupt to display character
    INT 21H
    JMP DONE            ; Jump to DONE


FIRST_IS_SMALLER:
    ; Display resultMsg1 (the smaller number)
    LEA DX, resultMsg1
    MOV AH, 09H
    INT 21H             ; DOS interrupt to display string


    ; Convert num1 to ASCII and display it
    MOV AL, num1
    ADD AL, 30H         ; Convert integer to ASCII
    MOV DL, AL
    MOV AH, 02H         ; DOS interrupt to display character
    INT 21H
   
    ; Display resultMsg2 (the bigger number)
    LEA DX, resultMsg2
    MOV AH, 09H
    INT 21H             ; DOS interrupt to display string


    ; Convert num2 to ASCII and display it
    MOV AL, num2
    ADD AL, 30H         ; Convert integer to ASCII
    MOV DL, AL
    MOV AH, 02H         ; DOS interrupt to display character
    INT 21H


DONE:
    ; Exit program
    MOV AH, 4CH
    INT 21H


END START
