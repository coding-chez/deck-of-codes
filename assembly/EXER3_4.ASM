; Filename: EXER3.4.ASM
; Programmer Name: CHESTINE MAY MARI C. CABISO
; Description: Prints the ASCII code of the input character in binary.
; Date Created: October 24, 2024

.MODEL SMALL
.STACK 100H
.DATA
    FILENAMEMSG DB 'Filename: EXER3.4.ASM', 13, 10, '$'
    PROGRAMMERMSG DB 'Programmer Name: CHESTINE MAY MARI C. CABISO', 13, 10, '$'
    DESCRIPTIONMSG DB 'Description: Prints the ASCII code of the input character in binary.', 13, 10, '$'
    DATEMSG     DB 'Date Created: 10/24/24', 13, 10, 13, 10, '$'

    char_prompt DB 'Please input a character: ', '$'
    out_msg1    DB 'The ASCII code of ''', '$'
    out_msg2    DB ''' in binary is ', '$'
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

    ; Display the ASCII code in binary
    MOV AL, BL             ; Load the character into AL
    MOV CX, 8              ; Set loop counter for 8 bits
    MOV AH, 80H            ; Mask for the highest bit

print_bit:
    TEST AL, AH            ; Test the bit
    JZ  print_0            ; Jump to print '0' if bit is 0
    MOV DL, '1'
    JMP skip1

print_0:
    MOV DL, '0'

skip1:
    MOV AH, 02H            ; DOS function to display a character
    INT 21H
    SHR AH, 1              ; Shift mask right for the next bit
    LOOP print_bit         ; Repeat for all bits

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

; Procedure to display a string (equivalent to PutStr)
PrintStr PROC
    MOV AH, 09H            ; DOS function to display a string
    INT 21H
    RET
PrintStr ENDP

; Procedure to print a newline (equivalent to nwln)
NewLine PROC
    MOV DL, 13             ; Carriage return
    MOV AH, 02H
    INT 21H
    MOV DL, 10             ; Line feed
    MOV AH, 02H
    INT 21H
    RET
NewLine ENDP

END main
