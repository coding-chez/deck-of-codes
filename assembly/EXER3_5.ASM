; Filename: EXER3.5.ASM
; Programmer Name: CHESTINE MAY MARI C. CABISO
; Description: Prints the ASCII code of the input character in hex.
; Date Created: October 24, 2024

.MODEL SMALL
.STACK 100H
.DATA
    FILENAMEMSG DB 'Filename: EXER3.5.ASM', 13, 10, '$'
    PROGRAMMERMSG DB 'Programmer Name: CHESTINE MAY MARI C. CABISO', 13, 10, '$'
    DESCRIPTIONMSG DB 'Description: Prints the ASCII code of the input character in hex.', 13, 10, '$'
    DATEMSG     DB 'Date Created: 10/24/24', 13, 10, 13, 10, '$'

    char_prompt DB 'Please input a character: ', '$'
    out_msg1    DB 'The ASCII code of ''', '$'
    out_msg2    DB ''' in hex is ', '$'
    query_msg   DB 'Do you want to quit (Y/N)? ', '$'

.CODE
main PROC
    MOV AX, @DATA          ; Initialize data segment
    MOV DS, AX

    ; Display the filename, programmer name, description, and date
    LEA DX, FILENAMEMSG
    CALL PrintStr

    LEA DX, PROGRAMMERMSG
    CALL PrintStr

    LEA DX, DESCRIPTIONMSG
    CALL PrintStr

    LEA DX, DATEMSG
    CALL PrintStr

read_char: 
    LEA DX, char_prompt
    CALL PrintStr

    ; Get a character input from the user
    MOV AH, 01H            ; DOS function to read a character
    INT 21H
    MOV BL, AL             ; Store the character in BL for later use
    CALL NewLine

    LEA DX, out_msg1
    CALL PrintStr

    ; Print the character inputted
    MOV DL, BL
    MOV AH, 02H            ; DOS function to display a character
    INT 21H

    LEA DX, out_msg2
    CALL PrintStr

    ; Display the ASCII code in hex
    MOV AL, BL             ; Load the character into AL

    ; Print the high nibble (4 bits)
    MOV AH, AL             ; Copy AL to AH
    SHR AL, 4              ; Shift AL right by 4 to get the high nibble
    CALL PrintHexDigit     ; Print the high nibble

    ; Print the low nibble
    MOV AL, AH             ; Restore the original value of AL
    AND AL, 0FH            ; Mask out everything but the low nibble
    CALL PrintHexDigit     ; Print the low nibble

    CALL NewLine

    ; Ask if the user wants to quit
    LEA DX, query_msg
    CALL PrintStr

    MOV AH, 01H            ; DOS function to read a character
    INT 21H
    CALL NewLine
    CMP AL, 'Y'
    JNE read_char          ; Loop back if the answer is not 'Y'

done:
    MOV AX, 4C00H          ; Exit program
    INT 21H

main ENDP 

; Procedure to display a string
PrintStr PROC
    MOV AH, 09H            ; DOS function to display a string
    INT 21H
    RET
PrintStr ENDP

; Procedure to print a newline
NewLine PROC
    MOV DL, 13             ; Carriage return
    MOV AH, 02H
    INT 21H
    MOV DL, 10             ; Line feed
    MOV AH, 02H
    INT 21H
    RET
NewLine ENDP

; Procedure to print a hexadecimal digit
PrintHexDigit PROC
    CMP AL, 9              ; Check if AL is greater than 9
    JA  hex_letter         ; If so, jump to hex_letter
    ADD AL, '0'            ; Convert 0-9 to ASCII '0'-'9'
    JMP print_digit        ; Jump to print the digit

hex_letter:
    ADD AL, 'A' - 10       ; Convert 10-15 to ASCII 'A'-'F'

print_digit:
    MOV DL, AL             ; Move AL to DL for output
    MOV AH, 02H            ; DOS function to display a character
    INT 21H
    RET
PrintHexDigit ENDP

END main
