; Filename: EXER28.ASM
; Programmer Name: CHESTINE MAY MARI C. CABISO
; Description: This assembly language program will input two integers, multiply the two integers, and display the product.
; Date: SEPTEMBER 28, 2024

.MODEL SMALL
.STACK 100h
.DATA
    FILENAMEMSG DB 'Filename: Exer28.ASM', 13, 10, '$'
    PROGRAMMERSMSG DB 'Programmer Name: CHESTINE MAY MARI C. CABISO', 13, 10, '$'
    DESCRIPTIONMSG DB 'Description: Assembly program to input two integers, multiply them, and display the product.', 13, 10, '$'
    DATEMSG DB 'Date Created: September 28, 2024', 13, 10, 13, 10, '$'

    prompt1 DB 'Enter the first number: $'
    prompt2 DB 0DH, 0AH, 'Enter the second number: $'
    resultMsg DB 0DH, 0AH, 'The result will be: $'
    multiplicand1 DB 0DH, 0AH, 'The first Multiplicand: $'
    multiplier2 DB 0DH, 0AH, 'The second Multiplier: $'
    num1 DB ?           ; Storage for first input number
    num2 DB ?           ; Storage for second input number
    result DB ?         ; Storage for the result
    newline DB 0DH, 0AH, '$' ; For a new line

.CODE
START:
    ; Initialize data segment
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


    ; Display multiplicand1 and the first number
    LEA DX, multiplicand1
    MOV AH, 09H
    INT 21H             ; DOS interrupt to display string


    ; Convert num1 to ASCII and display it
    MOV AL, num1
    ADD AL, 30H         ; Convert integer to ASCII
    MOV DL, AL
    MOV AH, 02H         ; DOS interrupt to display character
    INT 21H


    ; Display multiplier2 and the second number
    LEA DX, multiplier2
    MOV AH, 09H
    INT 21H             ; DOS interrupt to display string


    ; Convert num2 to ASCII and display it
    MOV AL, num2
    ADD AL, 30H         ; Convert integer to ASCII
    MOV DL, AL
    MOV AH, 02H         ; DOS interrupt to display character
    INT 21H


    ; Multiply the two numbers
    MOV AL, num1        ; Load num1 into AL
    MOV BL, num2        ; Load num2 into BL
    MUL BL              ; Multiply AL by BL (result in AX)
    MOV result, AL      ; Store the lower byte of the result in 'result'


    ; Display resultMsg
    LEA DX, resultMsg
    MOV AH, 09H
    INT 21H


    ; Convert result to ASCII and display it
    MOV AL, result
    ADD AL, 30H         ; Convert integer to ASCII
    MOV DL, AL
    MOV AH, 02H         ; DOS interrupt to display character
    INT 21H


    ; New line after result
    LEA DX, newline
    MOV AH, 09H
    INT 21H


    ; Exit program
    MOV AH, 4CH
    INT 21H
END START
