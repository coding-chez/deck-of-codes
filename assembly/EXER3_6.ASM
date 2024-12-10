; Filename: EXER3.6.ASM
; Programmer Name: CHESTINE MAY MARI C. CABISO
; Description: Prints the ASCII code of the input character in hex using xlat instruction.
; Date Created: October 24, 2024

.MODEL SMALL
.STACK 100H
.DATA
    FILENAMEMSG DB 'Filename: EXER3.6.ASM', 13, 10, '$'
    PROGRAMMERMSG DB 'Programmer Name: CHESTINE MAY MARI C. CABISO', 13, 10, '$'
    DESCRIPTIONMSG DB 'Description: Prints the ASCII code of the input character in hex using xlat instruction.', 13, 10, '$'
    DATEMSG     DB 'Date Created: 10/24/24', 13, 10, 13, 10, '$'
    
    char_prompt DB 'Please input a character: ', '$'
    out_msg1    DB 'The ASCII code of ''', '$'
    out_msg2    DB ''' in hex is ', '$'
    query_msg   DB 'Do you want to quit (Y/N)? ', '$'
    
    hex_table DB '0123456789ABCDEF'

.CODE
MAIN PROC
    MOV AX, @DATA          ; Initialize data segment
    MOV DS, AX

    ; Display the filename, programmer name, description, and date
    LEA DX, FILENAMEMSG
    CALL PutStr

    LEA DX, PROGRAMMERMSG
    CALL PutStr

    LEA DX, DESCRIPTIONMSG
    CALL PutStr

    LEA DX, DATEMSG
    CALL PutStr

LOOP_START:
    ; Prompt for character input
    LEA DX, char_prompt
    CALL PutStr
    CALL GETCH
    MOV BL, AL             ; Store input character in BL for later use

    ; Display the message with character and its ASCII code in hex
    LEA DX, out_msg1
    CALL PutStr
    MOV DL, BL             ; Print the input character
    CALL PUTCH
    LEA DX, out_msg2
    CALL PutStr
    MOV AL, BL             ; Move character to AL for hex conversion
    CALL PrintHex          ; Call to print hex representation

    ; Ask if user wants to quit
    LEA DX, query_msg
    CALL PutStr
    CALL GETCH
    MOV BL, AL
    CMP BL, 'N'
    JZ LOOP_START
    CMP BL, 'n'
    JZ LOOP_START
    CMP BL, 'Y'
    JZ EXIT_PROGRAM
    CMP BL, 'y'
    JZ EXIT_PROGRAM
    JMP LOOP_START         ; If any other key is pressed, continue loop

EXIT_PROGRAM:
    MOV AX, 4C00H          ; Exit to DOS
    INT 21H
MAIN ENDP

; Function to print the hexadecimal format of AL register
PrintHex PROC
    PUSH AX               ; Save AX
    PUSH BX               ; Save BX
    MOV AH, AL            ; Move AL to AH for conversion
    SHR AH, 4             ; Isolate high nibble
    MOV BX, OFFSET hex_table
    MOV AL, AH            ; High nibble
    XLAT                   ; Translate AL using hex_table
    CALL PUTCH            ; Print high nibble

    MOV AL, BL            ; Restore AL for low nibble
    AND AL, 0Fh           ; Isolate low nibble
    XLAT                   ; Translate AL using hex_table
    CALL PUTCH            ; Print low nibble

    POP BX                ; Restore BX
    POP AX                ; Restore AX
    RET
PrintHex ENDP

; Function to print a character (PUTCH)
PUTCH PROC
    MOV AH, 02H           ; Function to print character
    INT 21H               ; BIOS interrupt to display character in DL
    RET
PUTCH ENDP

; Function to display a string
PutStr PROC
    MOV AH, 09H
    INT 21H
    RET
PutStr ENDP

; Function to get a character input
GETCH PROC
    MOV AH, 01H
    INT 21H
    RET
GETCH ENDP

END MAIN
