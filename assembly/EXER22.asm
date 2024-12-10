; Filename: EXER22.ASM
; Programmer Name: CHESTINE MAY MARI C. CABISO
; Description:College Enrollment Form. Get user input. Display a summary 
; of the inputs. Include the necessary documentation as comments in your code.
; Date Created: 9/19/24

model small
.stack 100h

.data
    FILENAMEMSG DB 'Filename: Exer22.ASM', 13, 10, '$'
    PROGRAMMERSMSG DB 'Programmer Name: CHESTINE MAY MARI C. CABISO', 13, 10, '$'
    DESCRIPTIONMSG DB 'Description: Display a summary of the inputs. Include the necessary documentation as comments in your code.', 13, 10, '$'
    DATEMSG DB 'Date Created: September 19, 2024', 13, 10, 13, 10, '$'
    
    header db 'Cebu Institute of Technology - University', 0Dh, 0Ah
       db 'STUDENT ENROLLMENT FORM', 0Dh, 0Ah, 0Ah
       db 'Please enter the following information:', 0Dh, 0Ah, '$'
    IDNumberPrompt db 'Student ID Number: $'
    FirstNamePrompt db 'First Name: $'
    MiddleNamePrompt db 'Middle Name: $'
    LastNamePrompt db 'Last Name: $'
    AddressPrompt db 'Address: $'
    CoursePrompt db 'Course: $'
    YearPrompt db 'Year: $'
    BirthdayMonthPrompt db 'Birthday Month: $'
    BirthdayDayPrompt db 'Birthday Day: $'
    BirthdayYearPrompt db 'Birthday Year: $'
    EmailPrompt db 'Email Address: $'


    summary db 0Ah, 'SUMMARY', 0Dh, 0Ah
        db 'Please check if all information are correct.', 0Dh, 0Ah, '$'
    displayIdNumber db 0Ah, 'ID Number: $'
    displayFullName db 0Ah, 'Full Name: $'
    displayAddress db 0Ah, 'Address: $'
    displayCourseYear db 0Ah, 'Course & Year: $'
    displayBirthday db 0Ah, 'Birthday: $'
    displayEmail db 0Ah, 'Email Address: $'
    footer db 0Ah, 0Ah, 'Thank you for enrolling at CIT-U.', 0Dh, 0Ah
        db 'Copyright 2024', 0Dh, 0Ah
        db 'Programmer: CHESTINE MAY MARI C. CABISO$'
    newline db 0Dh, 0Ah, '$'


    ; Buffers
    MAX_STR_LEN equ 200
    Id db MAX_STR_LEN,?, MAX_STR_LEN dup (' ')
    FirstName db MAX_STR_LEN,?, MAX_STR_LEN dup (' ')
    MiddleName db MAX_STR_LEN,?, MAX_STR_LEN dup (' ')
    LastName db MAX_STR_LEN,?, MAX_STR_LEN dup (' ')
    Address db MAX_STR_LEN,?, MAX_STR_LEN dup (' ')
    Course db MAX_STR_LEN,?, MAX_STR_LEN dup (' ')
    Year db MAX_STR_LEN,?, MAX_STR_LEN dup (' ')
    BirthdayYear db MAX_STR_LEN,?, MAX_STR_LEN dup (' ')
    BirthdayMonth db MAX_STR_LEN,?, MAX_STR_LEN dup (' ')
    BirthdayDay db MAX_STR_LEN,?, MAX_STR_LEN dup (' ')
    EmailAddress db MAX_STR_LEN,?, MAX_STR_LEN dup (' ')
.code
start:
    ; Set up the segment registers:
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

    mov ah, 09h
    lea dx, header
    int 21h


    lea dx, IDNumberPrompt      ; Prompt ID
    int 21h


    mov ah, 0Ah                 ; Scan ID
    lea dx, Id
    int 21h


    mov ah, 09h
    lea dx, newline
    int 21h


    mov ah, 09h                 ; Prompt First Name
    lea dx, FirstNamePrompt    
    int 21h


    mov ah, 0Ah                 ; Scan First Name
    lea dx, FirstName
    int 21h


    mov ah, 09h
    lea dx, newline
    int 21h


    mov ah, 09h                 ; Prompt Middle Name
    lea dx, MiddleNamePrompt    
    int 21h


    mov ah, 0Ah                 ; Scan Middle Name
    lea dx, MiddleName
    int 21h


    mov ah, 09h
    lea dx, newline
    int 21h


    mov ah, 09h                 ; Prompt Last Name
    lea dx, LastNamePrompt    
    int 21h


    mov ah, 0Ah                 ; Scan Last Name
    lea dx, LastName
    int 21h


    mov ah, 09h
    lea dx, newline
    int 21h


    mov ah, 09h                 ; Prompt Address
    lea dx, AddressPrompt    
    int 21h


    mov ah, 0Ah                 ; Scan Address
    lea dx, Address
    int 21h


    mov ah, 09h
    lea dx, newline
    int 21h


    mov ah, 09h                 ; Prompt Course
    lea dx, CoursePrompt    
    int 21h


    mov ah, 0Ah                 ; Scan Course
    lea dx, Course
    int 21h


    mov ah, 09h
    lea dx, newline
    int 21h


    mov ah, 09h                 ; Prompt Year
    lea dx, YearPrompt    
    int 21h


    mov ah, 0Ah                 ; Scan Year
    lea dx, Year
    int 21h


    mov ah, 09h
    lea dx, newline
    int 21h


    mov ah, 09h                 ; Prompt Birthday Month
    lea dx, BirthdayMonthPrompt    
    int 21h


    mov ah, 0Ah                 ; Scan Birthday Month
    lea dx, BirthdayMonth
    int 21h


    mov ah, 09h
    lea dx, newline
    int 21h


    mov ah, 09h                 ; Prompt Birthday Day
    lea dx, BirthdayDayPrompt    
    int 21h


    mov ah, 0Ah                 ; Scan Birthday Day
    lea dx, BirthdayDay
    int 21h


    mov ah, 09h
    lea dx, newline
    int 21h


    mov ah, 09h                 ; Prompt Birhtday Year
    lea dx, BirthdayYearPrompt    
    int 21h


    mov ah, 0Ah                 ; Scan Birhtday Year
    lea dx, BirthdayYear
    int 21h


    mov ah, 09h
    lea dx, newline
    int 21h


    mov ah, 09h                 ; Prompt Email Address
    lea dx, EmailPrompt    
    int 21h


    mov ah, 0Ah                 ; Scan Email Address
    lea dx, EmailAddress
    int 21h


    mov ah, 09h
    lea dx, newline
    int 21h


    ; Codes below are the summary of the personal information
    mov ah, 09h            
    lea dx, summary    
    int 21h


    lea dx, displayIdNumber     ; ID Number Display
    int 21h


    xor bx, bx
    mov bl, Id[1]
    mov Id[bx+2], '$'
    lea dx, Id + 2
    mov ah, 09h
    int 21h


    mov ah, 09h                 ; Full Name Display
    lea dx, displayFullName
    int 21h


    xor bx, bx                  ; Display Last Name  
    mov bl, LastName[1]
    mov LastName[bx+2], '$'
    lea dx, LastName + 2
    mov ah, 09h
    int 21h


    mov ah, 02h
    mov dl, ','
    int 21h


    mov dl, ' '
    int 21h


    xor bx, bx                   ; Display First Name      
    mov bl, FirstName[1]
    mov FirstName[bx+2], '$'
    lea dx, FirstName + 2
    mov ah, 09h
    int 21h


    mov ah, 02h
    mov dl, ' '
    int 21h


    xor bx, bx                  ; Display Middle Name      
    mov bl, MiddleName[1]
    mov MiddleName[bx+2], '$'
    lea dx, MiddleName + 2
    mov ah, 09h
    int 21h


    mov ah, 09h                 ; Address Display
    lea dx, displayAddress
    int 21h


    xor bx, bx                  
    mov bl, Address[1]
    mov Address[bx+2], '$'
    lea dx, Address + 2
    mov ah, 09h
    int 21h


    mov ah, 09h                 ; Course & Year Display
    lea dx, displayCourseYear
    int 21h


    xor bx, bx                  
    mov bl, Course[1]
    mov Course[bx+2], '$'
    lea dx, Course + 2
    mov ah, 09h
    int 21h


    mov ah, 02h
    mov dl, ' '
    int 21h


    xor bx, bx                  
    mov bl, Year[1]
    mov Year[bx+2], '$'
    lea dx, Year + 2
    mov ah, 09h
    int 21h


    mov ah, 09h                 ; Birthday Display
    lea dx, displayBirthday
    int 21h


    xor bx, bx                  ; Display Birthday Month      
    mov bl, BirthdayMonth[1]
    mov BirthdayMonth[bx+2], '$'
    lea dx, BirthdayMonth + 2
    mov ah, 09h
    int 21h


    mov ah, 02h
    mov dl, ' '
    int 21h


    xor bx, bx                   ; Display Birthday Day  
    mov bl, BirthdayDay[1]
    mov BirthdayDay[bx+2], '$'
    lea dx, BirthdayDay + 2
    mov ah, 09h
    int 21h


    mov ah, 02h
    mov dl, ','
    int 21h


    mov ah, 02h
    mov dl, ' '
    int 21h


    xor bx, bx                  ; Display Birthday Year      
    mov bl, BirthdayYear[1]
    mov BirthdayYear[bx+2], '$'
    lea dx, BirthdayYear + 2
    mov ah, 09h
    int 21h


    mov ah, 09h                 ; Email Address Display
    lea dx, displayEmail
    int 21h


    xor bx, bx                  
    mov bl, EmailAddress[1]
    mov EmailAddress[bx+2], '$'
    lea dx, EmailAddress + 2
    mov ah, 09h
    int 21h


    mov ah, 09h
    lea dx, footer
    int 21h


    mov ah, 4ch                 ; Terminate the program
    int 21h


END start
