; Filename: EXER24.ASM
; Programmer Name: CHESTINE MAY MARI C. CABISO
; Description: Edit your Laboratory Prelim Hands-on Exam. Before the form displays, ask the user to input all the needed data. Afterwards, display the 
; form with all the data entered by the user. 
; Date Created: 9/19/24

.model small
.stack 100h

.data
    FILENAMEMSG DB 'Filename: Exer24.ASM', 13, 10, '$'
    PROGRAMMERSMSG DB 'Programmer Name: CHESTINE MAY MARI C. CABISO', 13, 10, '$'
    DESCRIPTIONMSG DB 'Description: Before the form displays, ask the user to input all the needed data. Afterwards, display the form with all the data entered by the user.', 13, 10, '$'
    DATEMSG DB 'Date Created: September 19, 2024', 13, 10, 13, 10, '$'

    menu    db '                                                                         ', 13, 10
        db '                   Cebu Institute of Technology - University               ', 13, 10
        db '                       VEHICLE STICKER APPLICATION FORM                   ', 13, 10
        db '                        Please fill out the form below.                    ', 13, 10, 10
        db '   Personnel Type:                     V    Vehicle Sticker Type:           V ', 13, 10
        db '   Name of Applicant/Driver:                ID Number:                      ', 13, 10
        db '   Mobile Number:                           Address:                        ', 13, 10
        db '   Vehicle Make(s)/Brand:                   Plate Number:                   ', 13, 10
        db '   Vehicle Color:                      V    Vehicle Type:                   V ', 13, 10, 10, 10
        db '                                    SUBMIT                      ', 13, 10, 10
        db '                       Copyright 2024 Chestine May Mari C. Cabiso      ', 13, 10, 10, 10
        db '                                  Thank You!            ', 13, 10, '$'


personnelType db 9, 0, 9 dup(0)    
applicantName db 12, 0, 12 dup(0)  
mobileNumber db 12, 0, 12 dup(0)
carMake db 12, 0, 12 dup(0)
carColor db 9, 0, 9 dup(0)
stickerType db 9, 0, 9 dup(0)
idNum db 12, 0, 12 dup(0)
address db 12, 0, 12 dup(0)
plateNumber db 12, 0, 12 dup(0)
carType db 9, 0, 9 dup(0)


.code
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
printForm proc


    xor al, al
   
    ; Grey BG
    mov ah, 06h
    mov ch, 1 ; row start
    mov cl, 2 ; col start
    mov dh, 15  ; row end
    mov dl, 78  ; col end
    mov bh, 70h ; grey bg with black text
    int 10h
 
   
    ; header red bg
    mov ah, 06h
    mov ch, 1
    mov cl, 3
    mov dh, 3  
    mov dl, 77  
    mov bh, 4fh ; red bg with white text
    int 10h
    ; header yellow blink line
    mov ah, 06h
    mov ch, 3
    mov cl, 3
    mov dh, 3  
    mov dl, 77  
    mov bh, 0ceh ; red bg with yellow blinking text
    int 10h
   


    ; black bg left
    mov ah, 06h
    mov ch, 5
    mov cl, 29
    mov dh, 9
    mov dl, 40
    mov bh, 0fh ; black bg with white text
    int 10h
    ; black bg right
    mov ah, 06h
    mov ch, 5
    mov cl, 66
    mov dh, 9
    mov dl, 77
    mov bh, 0fh ; black bg with white text
    int 10h
   
   
    ; Upper Left V
    mov ah, 06h
    mov ch, 5
    mov cl, 38
    mov dh, 5
    mov dl, 40
    mov bh, 4fh ; red bg with white text
    int 10h
    ; Upper Right V
    mov ah, 06h
    mov ch, 5
    mov cl, 75
    mov dh, 5
    mov dl, 77
    mov bh, 4fh ; red bg with white text
    int 10h
    ; Lower Right V
    mov ah, 06h
    mov ch, 9
    mov cl, 38
    mov dh, 9
    mov dl, 40
    mov bh, 4fh ; red bg with white text
    int 10h
    ; Lower Left V
    mov ah, 06h
    mov ch, 9
    mov cl, 75
    mov dh, 9
    mov dl, 77
    mov bh, 4fh ; red bg with white text
    int 10h


   
    ; Red BG Submit Button
    mov ah, 06h
    mov ch, 12
    mov cl, 35
    mov dh, 12
    mov dl, 42
    mov bh, 4eh ; red bg with yellow text
    int 10h
   
    ; Blinking Yellow thankyou
    mov ah, 06h
    mov ch, 17
    mov cl, 0
    mov dh, 17
    mov dl, 78
    mov bh, 8eh
    int 10h
   
    ; print
    mov ah, 09h
    mov dx, offset menu
    int 21h


    ret


printForm endp


main proc
   
    mov ax, @data ; db setup
    mov ds, ax
   
    mov ah, 00h
    mov al, 03h   ; display setup
    int 10h
   
    call printForm


    ; personnelType
    mov ah, 02h          ; Function to set cursor position
    mov bh, 00h          ; Page number (0 for standard screen)
    mov dh, 05h          ; Row (0-based)
    mov dl, 029          ; Column (0-based)
    int 10h              ; Call BIOS interrupt


    lea dx, personnelType
    mov ah, 0Ah
    int 21h


    ; applicantName
    mov ah, 02h          
    mov bh, 00h          
    mov dh, 06h          
    mov dl, 029        
    int 10h            


    lea dx, applicantName
    mov ah, 0Ah
    int 21h


    ; mobileNumber
    mov ah, 02h          ; Function to set cursor position
    mov bh, 00h          ; Page number (0 for standard screen)
    mov dh, 07h          ; Row (0-based)
    mov dl, 029          ; Column (0-based)
    int 10h              ; Call BIOS interrupt


    lea dx, mobileNumber
    mov ah, 0Ah
    int 21h


    ; carMake
    mov ah, 02h          ; Function to set cursor position
    mov bh, 00h          ; Page number (0 for standard screen)
    mov dh, 08h          ; Row (0-based)
    mov dl, 029          ; Column (0-based)
    int 10h              ; Call BIOS interrupt


    lea dx, carMake
    mov ah, 0Ah
    int 21h


    ; carColor
    mov ah, 02h          ; Function to set cursor position
    mov bh, 00h          ; Page number (0 for standard screen)
    mov dh, 09h          ; Row (0-based)
    mov dl, 029          ; Column (0-based)
    int 10h              ; Call BIOS interrupt


    lea dx, carColor
    mov ah, 0Ah
    int 21h


    ; stickerType
    mov ah, 02h          ; Function to set cursor position
    mov bh, 00h          ; Page number (0 for standard screen)
    mov dh, 05h          ; Row (0-based)
    mov dl, 066          ; Column (0-based)
    int 10h              ; Call BIOS interrupt


    lea dx, stickerType
    mov ah, 0Ah
    int 21h


    ; idNum
    mov ah, 02h          ; Function to set cursor position
    mov bh, 00h          ; Page number (0 for standard screen)
    mov dh, 06h          ; Row (0-based)
    mov dl, 066          ; Column (0-based)
    int 10h              ; Call BIOS interrupt


    lea dx, idNum
    mov ah, 0Ah
    int 21h


    ; address
    mov ah, 02h          ; Function to set cursor position
    mov bh, 00h          ; Page number (0 for standard screen)
    mov dh, 07h          ; Row (0-based)
    mov dl, 066          ; Column (0-based)
    int 10h              ; Call BIOS interrupt


    lea dx, address
    mov ah, 0Ah
    int 21h


    ; plateNumber
    mov ah, 02h          ; Function to set cursor position
    mov bh, 00h          ; Page number (0 for standard screen)
    mov dh, 08h          ; Row (0-based)
    mov dl, 066          ; Column (0-based)
    int 10h              ; Call BIOS interrupt


    lea dx, plateNumber
    mov ah, 0Ah
    int 21h


    ; carType
    mov ah, 02h          ; Function to set cursor position
    mov bh, 00h          ; Page number (0 for standard screen)
    mov dh, 09h          ; Row (0-based)
    mov dl, 066          ; Column (0-based)
    int 10h              ; Call BIOS interrupt


    lea dx, carType
    mov ah, 0Ah
    int 21h


    mov ah, 02h          ; Function to set cursor position
    mov bh, 00h          ; Page number (0 for standard screen)
    mov dh, 20           ; Row (0-based)
    mov dl, 80           ; Column (0-based)
    int 10h              ; Call BIOS interrupt
   
    mov ax, 4C00h ; return 0
    int 21h  
   
    main endp
end main

