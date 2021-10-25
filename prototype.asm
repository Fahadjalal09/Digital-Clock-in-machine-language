INCLUDE Irvine32.inc
INCLUDE Macros.inc
INCLUDELIB user32.lib



screen TEXTEQU <"----">
screen_1 TEXTEQU <"|">
screen_2 TEXTEQU <"    ">
.data
	space_1 qword " "
	output_screen qword screen
	output_screen_1 qword screen_1
	output_screen_2 qword screen_2
	store_1 qword 0

	msg_1 BYTE "Select optn ->",0
	msg_2 BYTE "Press 1 to Start",0
	msg_3 BYTE "Press 2 to continue",0
	msg_4 BYTE "luly py charo",0
.code
Take_val_1 proc
	    call crlf
    call crlf
    mov edx, offset space_1
    call writestring
    mov edx, offset output_screen
    mov ecx , 19
    
    L1:
        call writestring
    loop L1

; ########################        Box          ##############################

    mov ecx, 3
    L3:
        mov edx, offset output_screen_1
        call crlf
        call writestring
        
        mov eax, ecx

        mov ecx , 19
        mov edx, offset output_screen_2

        L2:
            call writestring
        loop L2

        mov edx, offset output_screen_1
        call writestring

        mov ecx, eax
    loop L3
    call crlf
; ########################        Box          ##############################



; ########################        Box          ##############################

    mov ecx, 4
    LL3:
        mov edx, offset output_screen_1
        call crlf
        call writestring
        
        mov eax, ecx

        mov ecx , 19
        mov edx, offset output_screen_2

        LL2:
            call writestring
        loop LL2

        mov edx, offset output_screen_1
        call writestring

        mov ecx, eax
    loop LL3
; ########################        Box          ##############################

; ########################        Bttn          ##############################
    call crlf
    mov edx, offset output_screen_1
    call writestring
    
    mov edx, offset space_1
    mov ecx, 13
    L5:
        call writestring
    loop L5

    mov edx, offset output_screen
    call writestring
    call writestring
    mov edx, offset space_1
    call writestring
    call writestring
    call writestring
    call writestring
    mov edx, offset output_screen
    call writestring
    call writestring
    mov edx, offset space_1
    call writestring
    call writestring
    call writestring
    call writestring
    mov edx, offset output_screen
    call writestring
    call writestring
    mov edx, offset space_1
    call writestring
    call writestring
    call writestring
    call writestring
    mov edx, offset output_screen
    call writestring
    call writestring
    mov edx, offset space_1
    mov ecx, 19

    L6:
        call writestring
    loop L6
    mov edx, offset output_screen_1
    call writestring

    call crlf
    mov edx, offset output_screen_1
    call writestring

    mov edx, offset space_1
    mov ecx, 12
    L7:
        call writestring
    loop L7

    mov edx, offset output_screen_1
    call writestring
    mov edx, offset space_1
    mov ecx, 8
    L8:
        call writestring
    loop l8
    mov edx, offset output_screen_1
    call writestring
    mov edx, offset space_1
    call writestring
    call writestring
    mov edx, offset output_screen_1
    call writestring

    mov edx, offset space_1
    mov ecx, 8
    L9:
        call writestring
    loop L9
    mov edx, offset output_screen_1
    call writestring
    mov edx, offset space_1
    call writestring
    call writestring
    mov edx, offset output_screen_1
    call writestring

    mov edx, offset space_1
    mov ecx, 8
    L10:
        call writestring
    loop L10
    mov edx, offset output_screen_1
    call writestring
    mov edx, offset space_1
    call writestring
    call writestring
    mov edx, offset output_screen_1
    call writestring

    mov edx, offset space_1
    mov ecx, 8
    L11:
        call writestring
    loop L11
    mov edx, offset output_screen_1
    call writestring
    mov edx, offset space_1
    mov ecx, 18
    L12:
        call writestring
    loop L12
    mov edx, offset output_screen_1
    call writestring



        call crlf
    mov edx, offset output_screen_1
    call writestring
    
    mov edx, offset space_1
    mov ecx, 13
    L17:
        call writestring
    loop L17

    mov edx, offset output_screen
    call writestring
    call writestring
    mov edx, offset space_1
    call writestring
    call writestring
    call writestring
    call writestring
    mov edx, offset output_screen
    call writestring
    call writestring
    mov edx, offset space_1
    call writestring
    call writestring
    call writestring
    call writestring
    mov edx, offset output_screen
    call writestring
    call writestring
    mov edx, offset space_1
    call writestring
    call writestring
    call writestring
    call writestring
    mov edx, offset output_screen
    call writestring
    call writestring
    mov edx, offset space_1
    mov ecx, 19

    L16:
        call writestring
    loop L16
    mov edx, offset output_screen_1
    call writestring

    call crlf
    mov edx, offset space_1
    call writestring
    mov edx, offset output_screen
    mov ecx , 19
    
    L4:
        call writestring
    loop L4
; ########################        Bttn          ##############################
    call crlf
    call crlf

    ;call clrscr
    mGotoxy 5, 5
    mov edx, OFFSET msg_4
    call writestring
    call crlf
Take_val_1 endp




Take_val proc
	    call crlf
    call crlf
    mov edx, offset space_1
    call writestring
    mov edx, offset output_screen
    mov ecx , 19
    
    L1:
        call writestring
    loop L1

; ########################        Box          ##############################

    mov ecx, 3
    L3:
        mov edx, offset output_screen_1
        call crlf
        call writestring
        
        mov eax, ecx

        mov ecx , 19
        mov edx, offset output_screen_2

        L2:
            call writestring
        loop L2

        mov edx, offset output_screen_1
        call writestring

        mov ecx, eax
    loop L3
    call crlf
; ########################        Box          ##############################



; ########################        Box          ##############################

    mov ecx, 4
    LL3:
        mov edx, offset output_screen_1
        call crlf
        call writestring
        
        mov eax, ecx

        mov ecx , 19
        mov edx, offset output_screen_2

        LL2:
            call writestring
        loop LL2

        mov edx, offset output_screen_1
        call writestring

        mov ecx, eax
    loop LL3
; ########################        Box          ##############################

; ########################        Bttn          ##############################
    call crlf
    mov edx, offset output_screen_1
    call writestring
    
    mov edx, offset space_1
    mov ecx, 13
    L5:
        call writestring
    loop L5

    mov edx, offset output_screen
    call writestring
    call writestring
    mov edx, offset space_1
    call writestring
    call writestring
    call writestring
    call writestring
    mov edx, offset output_screen
    call writestring
    call writestring
    mov edx, offset space_1
    call writestring
    call writestring
    call writestring
    call writestring
    mov edx, offset output_screen
    call writestring
    call writestring
    mov edx, offset space_1
    call writestring
    call writestring
    call writestring
    call writestring
    mov edx, offset output_screen
    call writestring
    call writestring
    mov edx, offset space_1
    mov ecx, 19

    L6:
        call writestring
    loop L6
    mov edx, offset output_screen_1
    call writestring

    call crlf
    mov edx, offset output_screen_1
    call writestring

    mov edx, offset space_1
    mov ecx, 12
    L7:
        call writestring
    loop L7

    mov edx, offset output_screen_1
    call writestring
    mov edx, offset space_1
    mov ecx, 8
    L8:
        call writestring
    loop l8
    mov edx, offset output_screen_1
    call writestring
    mov edx, offset space_1
    call writestring
    call writestring
    mov edx, offset output_screen_1
    call writestring

    mov edx, offset space_1
    mov ecx, 8
    L9:
        call writestring
    loop L9
    mov edx, offset output_screen_1
    call writestring
    mov edx, offset space_1
    call writestring
    call writestring
    mov edx, offset output_screen_1
    call writestring

    mov edx, offset space_1
    mov ecx, 8
    L10:
        call writestring
    loop L10
    mov edx, offset output_screen_1
    call writestring
    mov edx, offset space_1
    call writestring
    call writestring
    mov edx, offset output_screen_1
    call writestring

    mov edx, offset space_1
    mov ecx, 8
    L11:
        call writestring
    loop L11
    mov edx, offset output_screen_1
    call writestring
    mov edx, offset space_1
    mov ecx, 18
    L12:
        call writestring
    loop L12
    mov edx, offset output_screen_1
    call writestring



        call crlf
    mov edx, offset output_screen_1
    call writestring
    
    mov edx, offset space_1
    mov ecx, 13
    L17:
        call writestring
    loop L17

    mov edx, offset output_screen
    call writestring
    call writestring
    mov edx, offset space_1
    call writestring
    call writestring
    call writestring
    call writestring
    mov edx, offset output_screen
    call writestring
    call writestring
    mov edx, offset space_1
    call writestring
    call writestring
    call writestring
    call writestring
    mov edx, offset output_screen
    call writestring
    call writestring
    mov edx, offset space_1
    call writestring
    call writestring
    call writestring
    call writestring
    mov edx, offset output_screen
    call writestring
    call writestring
    mov edx, offset space_1
    mov ecx, 19

    L16:
        call writestring
    loop L16
    mov edx, offset output_screen_1
    call writestring

    call crlf
    mov edx, offset space_1
    call writestring
    mov edx, offset output_screen
    mov ecx , 19
    
    L4:
        call writestring
    loop L4
; ########################        Bttn          ##############################
    call crlf
    call crlf

    ;call clrscr
    mGotoxy 30, 10
    mov edx, OFFSET msg_1
    call writestring
    call crlf

    mGotoxy 33, 11
    mov edx, OFFSET msg_2
    call writestring
    call crlf

    mGotoxy 33, 12
    mov edx, OFFSET msg_3
    call writestring
    call crlf
    ret
Take_val endp

main proc

	call Take_val
	mGotoxy 0, 18

	call readint
	call clrscr
	call clrscr
	call clrscr
	
	mGotoxy 0, 0
	call clrscr
	call Take_val_1
	

	exit
main endp
end main