; Filename: EXER23.ASM
; Programmer Name: CHESTINE MAY MARI C. CABISO
; Description: Create an Automated Teller Machine (ATM) main menu screen. Ask the user to input a number corresponding to an item in the main menu. 
; Print back the number input by user and the corresponding transaction.
; Date: 9/19/24

.MODEL small
.STACK 100h
.DATA
    FILENAMEMSG DB 'Filename: Exer23.ASM', 13, 10, '$'
    PROGRAMMERSMSG DB 'Programmer Name: CHESTINE MAY MARI C. CABISO', 13, 10, '$'
    DESCRIPTIONMSG DB 'Description: Create ATM main menu screen. Ask the user to input a number corresponding to an item in the main menu.', 13, 10, '$'
    DATEMSG DB 'Date Created: September 19, 2024', 13, 10, 13, 10, '$'
    ; Bank and ATM screen details
    bankName DB 'Cebu Institute of Technology – University', 13, 10, '$'
    atmTitle DB 'Automated Teller Machine', 13, 10, '$'
    
    ; Main Menu options
    menu DB 13, 10, 'Main Menu', 13, 10, '1 Balance Inquiry', 13, 10, '2 Withdrawal', 13, 10, '3 Deposit', 13, 10, '4 Transfer', 13, 10, '5 Bills Payment', 13, 10, '6 Change Pin', 13, 10, '7 Exit', 13, 10, 'Enter number of your choice: $'

    ; Buffers for input and output messages
    inputMsg DB 'You have chosen $'
    option1 DB '1 Balance Inquiry.$'
    option2 DB '2 Withdrawal.$'
    option3 DB '3 Deposit.$'
    option4 DB '4 Transfer.$'
    option5 DB '5 Bills Payment.$'
    option6 DB '6 Change Pin.$'
    option7 DB '7 Exit.$'
    
    ; Thank you message and other details
    thankYouMsg DB 13, 10, 'Thank you for banking with us!', 13, 10, '$'
    copyrightMsg DB 'Copyright 2024', 13, 10, 'Programmer: CHESTINE MAY MARI C. CABISO', 13, 10, '$'
    
    ; Buffer for storing user input
    choice DB '?', 0  ; Placeholder to store user input as a character

.CODE
ProgramStart:
    ; Set up data segment
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

    ; Display bank name and ATM title
    mov dx, OFFSET bankName
    mov ah, 9h
    int 21h

    mov dx, OFFSET atmTitle
    mov ah, 9h
    int 21h

    ; Display the Main Menu
    mov dx, OFFSET menu
    mov ah, 9h
    int 21h

    ; Accept user input for the menu choice
    mov ah, 1   ; Function to accept a single character input
    int 21h
    mov choice, al  ; Store the input character in 'choice'

    ; Display the message "You have chosen X"
    mov dx, OFFSET inputMsg
    mov ah, 9h
    int 21h

    ; Display the corresponding option based on user input
    cmp choice, '1'
    je BalanceInquiry
    cmp choice, '2'
    je Withdrawal
    cmp choice, '3'
    je Deposit
    cmp choice, '4'
    je Transfer
    cmp choice, '5'
    je BillsPayment
    cmp choice, '6'
    je ChangePin
    cmp choice, '7'
    je Exit

BalanceInquiry:
    mov dx, OFFSET option1
    jmp DisplayChoice

Withdrawal:
    mov dx, OFFSET option2
    jmp DisplayChoice

Deposit:
    mov dx, OFFSET option3
    jmp DisplayChoice

Transfer:
    mov dx, OFFSET option4
    jmp DisplayChoice

BillsPayment:
    mov dx, OFFSET option5
    jmp DisplayChoice

ChangePin:
    mov dx, OFFSET option6
    jmp DisplayChoice

Exit:
    mov dx, OFFSET option7

DisplayChoice:
    ; Display the chosen option
    mov ah, 9h
    int 21h

    ; Display the thank you message
    mov dx, OFFSET thankYouMsg
    mov ah, 9h
    int 21h

    ; Display the copyright and programmer info
    mov dx, OFFSET copyrightMsg
    mov ah, 9h
    int 21h

    ; Terminate the program
    mov ah, 4Ch
    int 21h

END ProgramStart
