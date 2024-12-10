; Filename: EXER3.7.ASM
; Programmer Name: CHESTINE MAY MARI C. CABISO
; Description: Prints the input string in uppercase.
; Date Created: October 24, 2024

.MODEL small
.STACK 100h
.DATA
    FILENAMEMSG DB 'Filename: EXER3.7.ASM', 13, 10, '$'
    PROGRAMMERMSG DB 'Programmer Name: CHESTINE MAY MARI C. CABISO', 13, 10, '$'
    DESCRIPTIONMSG DB 'Description: Prints the input string in uppercase.', 13, 10, '$'
    DATEMSG DB 'Date Created: 10/24/24', 13, 10, 13, 10, '$'
    name_prompt DB 'Please type your name: $'
    out_msg DB 'Your name in capitals is: $'
    in_name DB 31 DUP ('$')  ; Reserve space for a 31-character name
    newline db 13, 10, '$'

.CODE
start:
    ; Set up the segment registers
    MOV AX, @DATA
    MOV DS, AX

    ; Display the filename, programmer name, description, and date
    LEA DX, FILENAMEMSG
    MOV AH, 09h
    INT 21h

    LEA DX, PROGRAMMERMSG
    MOV AH, 09h
    INT 21h

    LEA DX, DESCRIPTIONMSG
    MOV AH, 09h
    INT 21h

    LEA DX, DATEMSG
    MOV AH, 09h
    INT 21h

    ; Prompt for name input
    LEA DX, name_prompt
    MOV AH, 09h
    INT 21h

    ; Read input string
    LEA SI, in_name
    CALL GetString

    ; Convert input to uppercase
    LEA SI, in_name
    CALL ToUpper

    ; Display output message and uppercase name
    LEA DX, newline
    MOV AH, 09h
    INT 21h

    LEA DX, out_msg
    MOV AH, 09h
    INT 21h

    LEA DX, in_name
    MOV AH, 09h
    INT 21h

    ; Terminate program
    MOV AX, 4C00h
    INT 21h

; Subroutine to get a string from the user
GetString PROC
    XOR CX, CX                ; Clear counter
next_char:
    MOV AH, 01h               ; Input character
    INT 21h
    CMP AL, 13                ; Check for Enter key
    JE done_input
    MOV [SI], AL              ; Store character in buffer
    INC SI                    ; Move to next position
    INC CX                    ; Increase character count
    JMP next_char

done_input:
    MOV BYTE PTR [SI], '$'    ; Add string terminator
    RET
GetString ENDP

; Subroutine to convert string to uppercase
ToUpper PROC
    MOV CX, 0
    LEA SI, in_name           ; Start of input buffer
upper_loop:
    MOV AL, [SI]
    CMP AL, '$'               ; Check for string terminator
    JE done_upper
    CMP AL, 'a'               ; Check if lowercase
    JB next_char_upper        ; If below 'a', skip conversion
    CMP AL, 'z'               ; Check if within 'a' to 'z'
    JA next_char_upper        ; If above 'z', skip conversion
    SUB AL, 20h               ; Convert to uppercase
    MOV [SI], AL              ; Store uppercase character back
next_char_upper:
    INC SI                    ; Move to next character
    JMP upper_loop

done_upper:
    RET
ToUpper ENDP

END start
