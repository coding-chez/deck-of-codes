; Filename: EXER32.ASM
; Programmer Name: CHESTINE MAY MARI C. CABISO
; Date: SEPTEMBER 28, 2024
;Description: Copy your code from the 2nd Lab Hands-on Exam. Edit your
;code to perform the actual math operations and display the
;results.

.model small 
.stack 200h 

.data 
    FILENAMEMSG DB 'Filename: Exer32.ASM', 13, 10, '$'
    PROGRAMMERSMSG DB 'Programmer Name: CHESTINE MAY MARI C. CABISO', 13, 10, '$'
    DESCRIPTIONMSG DB 'Description:Perform the actual operations for the calculator.', 13, 10, '$'
    DATEMSG DB 'Date Created: September 28, 2024', 13, 10, 13, 10, '$'

title_ db 'THE CALCULATOR', 0dh, 0ah, '$'
    creator_ db 'Created by: Chestine May Mari C. Cabiso', 0dh, 0ah, '$'
    date_ db 'Date: 09/26/2024', 0dh, 0ah, 0dh, '$'


    mainMenu db  27, "[0mMain Menu"
             db 27, "[0m", 0DH, 0AH, '$'
    choice1 db 27, "[43;37;1ma - Addition"
             DB 27, "[0m", 0DH, 0AH, '$'
    choice2  DB 27, "[42;37;1ms - Subtraction"
              DB 27, "[0m", 0DH, 0AH, '$'
    choice3 DB 27, "[46;37;1mm - Multiplication"
              DB 27, "[0m", 0DH, 0AH, '$'
    choice4 DB 27, "[45;37;1md - Division"
              DB 27, "[0m", 0DH, 0AH, '$'
    choice5 DB 27, "[47;37;1me - Exit"
              DB 27, "[0m", 0DH, 0AH, '$'
   
    switch_  DB 27, "[0mEnter your choice: ", '$'
    proceed db 0dh, 0ah, 0dh, 0ah, 'Press Enter to continue.$'
    spacing db 0dh, 0ah, '$'


    ; input variables
    case_ db ?
    inputX db 0
    inputY db 0
    result db '  $'


    ; addition
    addition_ db 0dh, 0ah, 0dh, 0ah, 27, "[43;37;1mAddition"
             DB 0dh, 0AH, 27, "[0m", "$"
    add1 db 'Enter first addend: $'
    add2 db 0dh, 0ah, 'Enter second added: $'
    add3 db 0dh, 0ah, 'First addend is: $'
    add4 db 0dh, 0ah, 'Second addend is: $'
    sum db 'Sum: $'


    ; subtraction
    subtraction_ db 0dh, 0ah, 0dh, 0ah,  27, "[42;37;1mSubtraction"
                DB 0dh, 0AH, 27, "[0m", "$"
    sub1 db 'Enter minuend: $'
    sub2 db 0dh, 0ah, 'Enter subtrahend: $'
    sub3 db 0dh, 0ah, 'Minuend is: $'
    sub4 db 0dh, 0ah, 'Subtrahend is: $'
    difference db 'Difference: $'


    ; multiplication
    multiplication_ db 0dh, 0ah, 0dh, 0ah, 27, "[46;37;1mMultiplication"
                   DB 0dh, 0AH, 27, "[0m", "$"
    mult1 db 'Enter multiplicand: $'
    mult2 db 0dh, 0ah, 'Enter multiplier: $'
    mult3 db 0dh, 0ah, 'Multiplicand is: $'
    mult4 db 0dh, 0ah, 'Multiplier is: $'
    product db 'Product: $'


    ; division
    division_ db 0dh, 0ah, 0dh, 0ah, 27, "[45;37;1mDivision"
             DB 0dh, 0AH, 27, "[0m", "$"
    div1 db 'Enter dividend: $'
    div2 db 0dh, 0ah, 'Enter divisor: $'
    div3 db 0dh, 0ah, 'Dividend is: $'
    div4 db 0dh, 0ah, 'Divisor is: $'
    quotient db 'Quotient: $'
    error_ db 0dh, 0ah, 'Division by Zero is not allowed!$'


    ; exit
    exit_ db 0dh, 0ah, 0dh, 0ah, 'Exit Program', '$'


    ; invalid
    invalid_ db 0dh, 0ah, 0dh, 0ah, 'INVALID CHOICE!', '$'


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

    ; menu
    mov dx, OFFSET title_
    int 21h
    mov dx, OFFSET creator_
    int 21h
    mov dx, OFFSET date_
    int 21h


    mov dx, OFFSET mainMenu
    int 21h
    mov dx, OFFSET choice1
    int 21h
    mov dx, OFFSET choice2
    int 21h
    mov dx, OFFSET choice3
    int 21h
    mov dx, OFFSET choice4
    int 21h
    mov dx, OFFSET choice5
    int 21h
    mov dx, OFFSET switch_
    int 21h


    ; ask switch
    mov ah, 01h
    int 21h
    mov case_, al


    ; switch case
    cmp al, 'a'
    jz AdditionInter
    cmp al, 's'
    jz SubtractionInter
    cmp al, 'm'
    jz MultiplicationInter
    cmp al, 'd'
    jz DivisionInter
    cmp al, 'e'
    jz ExitInter
    jnz InvalidInter


AdditionInter: jmp Addition
SubtractionInter: jmp Subtraction
MultiplicationInter: jmp Multiplication
DivisionInter: jmp Division
ExitInter: jmp Exit
InvalidInter: jmp Invalid


Addition:
    mov dx, OFFSET addition_
    mov ah, 09h
    int 21h


    ; input 1
    mov dx, OFFSET add1
    mov ah, 09h
    int 21h


    ; read 1
    mov ah, 01h
    int 21h
    mov inputX, al


    ; input 2
    mov dx, OFFSET add2
    mov ah, 09h
    int 21h


    ; read 2
    mov ah, 01h
    int 21h
    mov inputY, al


    ; outputs
    mov dx, OFFSET add3
    mov ah, 09h
    int 21h
    mov dl, inputX
    mov ah, 02h
    int 21h


    mov dx, OFFSET add4
    mov ah, 09h
    int 21h
    mov dl, inputY
    mov ah, 02h
    int 21h


    ; convert inputs to integer for operation
    jmp ConvertAscii


AdditionOperation:
    ; addition operation
    mov al, inputX
    add al, inputY
    mov result, al


    ; convert result to ascii
    mov al, result
    add al, '0'
    mov result, al


    mov ah, 09h
    lea dx, spacing
    int 21h


    ; display results
    mov ah, 09h
    lea dx, sum
    int 21h


    mov dl, result  ; move result to dl register for printing
    mov ah, 02h
    int 21h


   jmp EnterProceed


Subtraction:
    mov dx, OFFSET subtraction_
    mov ah, 09h
    int 21h


    ; input 1
    mov dx, OFFSET sub1
    mov ah, 09h
    int 21h


    ; read 1
    mov ah, 01h
    int 21h
    mov inputX, al


    ; input 2
    mov dx, OFFSET sub2
    mov ah, 09h
    int 21h


    ; read 2
    mov ah, 01h
    int 21h
    mov inputY, al


    ; outputs
    mov dx, OFFSET sub3
    mov ah, 09h
    int 21h
    mov dl, inputX
    mov ah, 02h
    int 21h


    mov dx, OFFSET sub4
    mov ah, 09h
    int 21h
    mov dl, inputY
    mov ah, 02h
    int 21h


SubtractionOperation:
    ; subtraction operation
    mov al, inputX
    sub al, inputY
    mov result, al


    ; convert result to ascii
    mov al, result
    add al, '0'
    mov result, al


    mov ah, 09h
    lea dx, spacing
    int 21h


    ; display results
    mov ah, 09h
    lea dx, difference
    int 21h


    mov dl, result  ; move result to dl register for printing
    mov ah, 02h
    int 21h


   jmp EnterProceed


Multiplication:
    mov dx, OFFSET multiplication_
    mov ah, 09h
    int 21h


    ; input 1
    mov dx, OFFSET mult1
    mov ah, 09h
    int 21h


    ; read 1
    mov ah, 01h
    int 21h
    mov inputX, al


    ; input 2
    mov dx, OFFSET mult2
    mov ah, 09h
    int 21h


    ; read 2
    mov ah, 01h
    int 21h
    mov inputY, al


    ; outputs
    mov dx, OFFSET mult3
    mov ah, 09h
    int 21h
    mov dl, inputX
    mov ah, 02h
    int 21h


    mov dx, OFFSET mult4
    mov ah, 09h
    int 21h
    mov dl, inputY
    mov ah, 02h
    int 21h


    jmp ConvertAscii


MultiplicationOperation:
    ; multiplication operation
    mov al, inputX
    mov cl, inputY
    mul cl
    add al, '0' ; convert to ascii
    mov result, al


    mov ah, 09h
    lea dx, spacing
    int 21h


    ; display results
    mov ah, 09h
    lea dx, product
    int 21h


    mov dl, result  ; move result to dl register for printing
    mov ah, 02h
    int 21h


   jmp EnterProceed


Division:
    mov dx, OFFSET division_
    mov ah, 09h
    int 21h


    ; input 1
    mov dx, OFFSET div1
    mov ah, 09h
    int 21h


    ; read 1
    mov ah, 01h
    int 21h
    mov inputX, al


    ; input 2
    mov dx, OFFSET div2
    mov ah, 09h
    int 21h


    ; read 2
    mov ah, 01h
    int 21h
    mov inputY, al


    ; outputs
    mov dx, OFFSET div3
    mov ah, 09h
    int 21h
    mov dl, inputX
    mov ah, 02h
    int 21h


    mov dx, OFFSET div4
    mov ah, 09h
    int 21h
    mov dl, inputY
    mov ah, 02h
    int 21h


    jmp ConvertAscii


DivisionOperation:
    ; division operation
    mov al, inputX
    mov cl, inputY
    cmp cl, 0
    je DivisionError


    xor ah, ah
    div cl
    add al, '0'
    mov result, al


    mov ah, 09h
    lea dx, spacing
    int 21h


    ; display results
    mov ah, 09h
    lea dx, quotient
    int 21h


    mov dl, result  ; move result to dl register for printing
    mov ah, 02h
    int 21h


   jmp EnterProceed


DivisionError:
    mov ah, 09h
    lea dx, spacing
    int 21h


    mov ah, 09h
    lea dx, error_
    int 21h


    jmp EnterProceed


Exit:
    mov dx, OFFSET exit_
    mov ah, 09h
    int 21h


    mov ah, 09h
    lea dx, proceed
    int 21h


    jmp Terminate


Invalid:
    mov dx, OFFSET invalid_
    mov ah, 09h
    int 21h
   
    jmp EnterProceed


ConvertAscii:
    mov al, inputX
    sub al, '0'
    mov inputX, al


    mov al, inputY
    sub al, '0'
    mov inputY, al


    ; check where to continue
    cmp case_, 'a'
    je AdditionOperationInter
    cmp case_, 's'
    je SubtractionOperationInter
    cmp case_, 'm'
    je MultiplicationOperationInter
    cmp case_, 'd'
    je DivisionOperationInter


AdditionOperationInter:
    jmp AdditionOperation
SubtractionOperationInter:
    jmp SubtractionOperation
MultiplicationOperationInter:
    jmp MultiplicationOperation
DivisionOperationInter:
    jmp DivisionOperation
   
EnterProceed:
    mov ah, 09h
    lea dx, proceed
    int 21h


    mov ah, 01h ; read character
    int 21h
    cmp al, 0dh ; 0dh = carriage return enter key
    jne EnterProceed


    jmp ProgramStart


Terminate:
    mov ah, 4ch
    int 21h


END ProgramStart
