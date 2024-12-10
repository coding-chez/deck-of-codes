; Filename: EXAM2.ASM
; CS243 Lab Hands-on Exam No. 2
; First Semester SY 2024-2025
; Student Name: CHESTINE MAY MARI C. CABISO
; Date Finished: 9/26/24

; Description: Create the working Calculator main menu using Assembly Language.


.MODEL small
.STACK 100h
.DATA
    FILENAMEMSG DB 'Filename: EXAM2.ASM', 13, 10, '$'
    PROGRAMMERSMSG DB 'Programmer Name: CHESTINE MAY MARI C. CABISO', 13, 10, '$'
    DESCRIPTIONMSG DB 'Description: Perform the actual operations for the calculator.', 13, 10, '$'
    DATEMSG DB 'Date Created: September 26, 2024', 13, 10, 13, 10, '$'

    calcTitle DB 'THE CALCULATOR', 13, 10, '$'
    createdBy DB 'Created by: CHESTINE MAY MARI C. CABISO', 13, 10, '$'
    date DB 'Date: 09/26/24', 13, 10, 13, 10, '$'
    
    menu DB 'Main Menu', 13, 10, '$'
    additionMenu DB 'a - Addition', 13, 10, '$'
    subtractionMenu DB 's - Subtraction', 13, 10, '$'
    multiplicationMenu DB 'm - Multiplication', 13, 10, '$'
    divisionMenu DB 'd - Division', 13, 10, '$'
    exitMenu DB 'e - Exit', 13, 10, '$'
    
    promptChoice DB 'Enter your choice: $'
    
    additionText DB 13, 10, 13, 10, 'Addition', 13, 10, 'Enter first addend: $'
    subtractionText DB 13, 10, 'Subtraction', 13, 10, 'Enter first number: $'
    multiplicationText DB 13, 10, 'Multiplication', 13, 10, 'Enter first factor: $'
    divisionText DB 13, 10, 'Division', 13, 10, 'Enter dividend: $'
    
    firstAddendPrompt DB 13, 10, 'Enter first addend: $'
    secondAddendPrompt DB 13, 10, 'Enter second addend: $'
    firstInput DB 13, 10, 'First addend is: $'
    secondInput DB 13, 10, 'Second addend is: $'
    
    thankYou DB 13, 10, 13, 10, 'Thank you.', 13, 10, '$'
    
    num1 DB 5 DUP('$')
    num2 DB 5 DUP('$')

.CODE
ProgramStart:
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
    
    ; Display the title, author, and date
    mov dx, OFFSET calcTitle
    mov ah, 9h
    int 21h

    mov dx, OFFSET createdBy
    mov ah, 9h
    int 21h

    mov dx, OFFSET date
    mov ah, 9h
    int 21h

MenuDisplay:
    ; Display the menu
    mov dx, OFFSET menu
    mov ah, 9h
    int 21h
    
    ; Set text color for each menu item
    ; Addition in Yellow
    call SetTextColorYellow
    mov dx, OFFSET additionMenu
    
    mov ah, 9h
    int 21h
    
    ; Subtraction in Green
    call SetTextColorGreen
    mov dx, OFFSET subtractionMenu
    mov ah, 9h
    int 21h

    ; Multiplication in Cyan
    call SetTextColorCyan
    mov dx, OFFSET multiplicationMenu
    mov ah, 9h
    int 21h
    
    ; Division in Magenta
    call SetTextColorMagenta
    mov dx, OFFSET divisionMenu
    mov ah, 9h
    int 21h

    ; Exit in Default color (White)
    call SetTextColorWhite
    mov dx, OFFSET exitMenu
    mov ah, 9h
    int 21h

    ; Get the user's choice
    mov dx, OFFSET promptChoice
    mov ah, 9h
    int 21h
    mov ah, 1h
    int 21h
    cmp al, 'a'
    je DoAddition
    cmp al, 's'
    je DoSubtraction
    cmp al, 'm'
    je DoMultiplication
    cmp al, 'd'
    je DoDivision
    cmp al, 'e'
    je ExitProgram

DoAddition:
    call SetTextColorYellow
    mov dx, OFFSET additionText
    mov ah, 9h
    int 21h

    mov dx, OFFSET firstAddendPrompt
    mov ah, 9h
    int 21h

    mov ah, 0Ah
    lea dx, num1
    int 21h

    mov dx, OFFSET secondAddendPrompt
    mov ah, 9h
    int 21h

    lea dx, num2
    int 21h

    mov dx, OFFSET firstInput
    mov ah, 9h
    int 21h
    lea dx, num1 + 1
    mov ah, 9h
    int 21h

    mov dx, OFFSET secondInput
    mov ah, 9h
    int 21h
    lea dx, num2 + 1
    mov ah, 9h
    int 21h

    mov dx, OFFSET thankYou
    mov ah, 9h
    int 21h
    jmp MenuDisplay

DoSubtraction:
    ; Handle Subtraction similarly
    jmp MenuDisplay

DoMultiplication:
    ; Handle Multiplication similarly
    jmp MenuDisplay

DoDivision:
    ; Handle Division similarly
    jmp MenuDisplay

ExitProgram:
    ; Exit the program
    mov ah, 4Ch
    int 21h

; Subroutines for setting text colors
SetTextColorYellow:
    mov ah, 0Bh
    mov bh, 0
    mov bl, 0Eh ; Yellow
    int 10h
    ret

SetTextColorGreen:
    mov ah, 0Bh
    mov bh, 0
    mov bl, 02h ; Green
    int 10h
    ret

SetTextColorCyan:
    mov ah, 0Bh
    mov bh, 0
    mov bl, 03h ; Cyan
    int 10h
    ret

SetTextColorMagenta:
    mov ah, 0Bh
    mov bh, 0
    mov bl, 05h ; Magenta
    int 10h
    ret

SetTextColorWhite:
    mov ah, 0Bh
    mov bh, 0
    mov bl, 07h ; White (default)
    int 10h
    ret

END ProgramStart
