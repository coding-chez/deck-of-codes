; Filename: Week13e.asm
; Programmer Name: CHESTINE MAY MARI C. CABISO
; Description: Repeatedly displays an ATM main menu until the user presses "e" for Exit.
; Date Created: November 7, 2024

.model small
.stack 100h

.data
    FILENAMEMSG DB 'Filename: Week13e.asm', 13, 10, '$'
    PROGRAMMERMSG DB 'Programmer Name: CHESTINE MAY MARI C. CABISO', 13, 10, '$'
    DESCRIPTIONMSG DB 'Description: Repeatedly displays an ATM main menu until the user presses "e" for Exit.', 13, 10, '$'
    DATEMSG     DB 'Date Created: November 7, 2024', 13, 10, 13, 10, '$'
    
    menuMsg DB 'CIT-U ATM', 13, 10, '$'
    optionMsg DB 'a. Balance Inquiry', 13, 10, 'b. Deposit', 13, 10, 'c. Withdrawal', 13, 10, 'd. Bills Payment', 13, 10, 'e. Exit', 13, 10, '$'
    promptMsg DB 'Enter choice: $'
    balanceMsg DB 'Balance Inquiry', 13, 10, '$'
    depositMsg DB 'Deposit', 13, 10, '$'
    withdrawalMsg DB 'Withdrawal', 13, 10, '$'
    billsPaymentMsg DB 'Bills Payment', 13, 10, '$'
    exitMsg DB 'Exit. Thank you!', 13, 10, '$'
    newline db 0Ah, 0Dh, '$'   ; Newline character

.code
main:
    ; Initialize data segment
    mov ax, @data
    mov ds, ax

    ; Display the filename, programmer name, description, and date
    mov ah, 09h
    lea dx, FILENAMEMSG
    int 21h

    lea dx, PROGRAMMERMSG
    int 21h

    lea dx, DESCRIPTIONMSG
    int 21h

    lea dx, DATEMSG
    int 21h

ask_menu:
    ; Print the ATM menu
    mov ah, 09h
    lea dx, menuMsg
    int 21h

    lea dx, optionMsg
    int 21h

    ; Ask for user input
    mov ah, 09h
    lea dx, promptMsg
    int 21h

    ; Get user input (single character)
    mov ah, 01h
    int 21h

    ; Check user input
    cmp al, 'a'    ; Compare input with 'a'
    je balance_inquiry
    cmp al, 'b'    ; Compare input with 'b'
    je deposit
    cmp al, 'c'    ; Compare input with 'c'
    je withdrawal
    cmp al, 'd'    ; Compare input with 'd'
    je bills_payment
    cmp al, 'e'    ; Compare input with 'e' for exit
    je exit_program

    ; If invalid input, continue asking for choice
    jmp ask_menu

balance_inquiry:
    ; Display the choice and corresponding message
    mov ah, 09h
    lea dx, newline  ; New line before printing choice
    int 21h

    mov ah, 09h
    lea dx, balanceMsg
    int 21h
    jmp ask_menu

deposit:
    ; Display the choice and corresponding message
    mov ah, 09h
    lea dx, newline  ; New line before printing choice
    int 21h

    mov ah, 09h
    lea dx, depositMsg
    int 21h
    jmp ask_menu

withdrawal:
    ; Display the choice and corresponding message
    mov ah, 09h
    lea dx, newline  ; New line before printing choice
    int 21h

    mov ah, 09h
    lea dx, withdrawalMsg
    int 21h
    jmp ask_menu

bills_payment:
    ; Display the choice and corresponding message
    mov ah, 09h
    lea dx, newline  ; New line before printing choice
    int 21h

    mov ah, 09h
    lea dx, billsPaymentMsg
    int 21h
    jmp ask_menu

exit_program:
    ; Display exit message
    mov ah, 09h
    lea dx, newline
    int 21h

    lea dx, exitMsg
    mov ah, 09h
    int 21h

    ; Exit program
    mov ah, 4Ch
    int 21h
end main
