; Filename: EXER3.8.ASM
; Programmer Name: CHESTINE MAY MARI C. CABISO
; Description: Prints the sum of the individual digits.
; Date Created: October 24, 2024

.MODEL small
.STACK 100h
.DATA
    FILENAMEMSG DB 'Filename: EXER3.8.ASM', 13, 10, '$'
    PROGRAMMERMSG DB 'Programmer Name: CHESTINE MAY MARI C. CABISO', 13, 10, '$'
    DESCRIPTIONMSG DB 'Description: Prints the sum of the individual digits.', 13, 10, '$'
    DATEMSG DB 'Date Created: 10/24/24', 13, 10, 13, 10, '$'
    number_prompt   DB 'Please type a number (<11 digits): $'
    out_msg         DB 'The sum of individual digits is: $'
    newline         DB 13, 10, '$'
    number          DB 11 DUP ('?')   ; Buffer for storing input
    sum_result      DB '00', '$'      ; Buffer for displaying sum

.CODE
start:
    ; Set up data segment
    mov ax, @data
    mov ds, ax

    ; Display header information
    lea dx, FILENAMEMSG
    mov ah, 09h
    int 21h

    lea dx, PROGRAMMERMSG
    mov ah, 09h
    int 21h

    lea dx, DESCRIPTIONMSG
    mov ah, 09h
    int 21h

    lea dx, DATEMSG
    mov ah, 09h
    int 21h

    ; Prompt user for input
read_number:
    lea dx, number_prompt
    mov ah, 09h
    int 21h

    lea si, number
    call GetString

    ; Initialize sum to zero
    xor bx, bx  ; bx will hold the sum

    ; Calculate sum of digits
    lea si, number
sum_loop:
    mov al, [si]
    cmp al, '$'         ; End of input buffer
    je display_result
    cmp al, ' '         ; Check for space
    je skip_space
    cmp al, '0'
    jl skip_space       ; Ignore any character below '0'
    cmp al, '9'
    jg skip_space       ; Ignore any character above '9'
    
    sub al, '0'         ; Convert ASCII to numeric
    add bl, al          ; Add to sum in bl

skip_space:
    inc si
    jmp sum_loop

display_result:
    ; Prepare sum result for display
    mov al, bl          ; Move sum to al
    call ConvertToAscii ; Convert sum to ASCII

    ; Display the result message
    lea dx, newline
    mov ah, 09h
    int 21h

    lea dx, out_msg
    mov ah, 09h
    int 21h

    lea dx, sum_result
    mov ah, 09h
    int 21h

    ; Exit program
    mov ax, 4C00h
    int 21h

; Subroutine to get a string input from the user
GetString PROC
    xor cx, cx
next_char:
        mov ah, 01h
        int 21h
        cmp al, 13       ; Check for Enter key
        je done_input
        mov [si], al     ; Store character
        inc si
        jmp next_char
done_input:
        mov byte ptr [si], '$'  ; End with terminator
        ret
GetString ENDP

; Subroutine to convert BL to ASCII
ConvertToAscii PROC
    mov cx, 10
    xor dx, dx
    mov ax, bx          ; Move the sum from bx to ax
    div cx              ; Divide by 10 to get the digits
    add dl, '0'        ; Tens place to ASCII
    mov sum_result, dl  ; Store tens place
    add al, '0'        ; Units place to ASCII
    mov sum_result, al ; Store units place
    ret
ConvertToAscii ENDP

END start
