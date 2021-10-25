INCLUDE Irvine32.inc
INCLUDE Macros.inc
INCLUDELIB user32.lib

.data

	maxCol        EQU       160
	maxRow        EQU       20
	wallTop       EQU       "================================================================================================================================================================"
	wallLeft      EQU       '|'
	maxSnakeSize  EQU       255
	msg_1 BYTE "Select ->",0
	msg_2 BYTE "Press 1 -> Set Time",0
	msg_3 BYTE "Press 2 -> Set Alarm",0
	msg_4 BYTE "Done .!. ",0


.code
	
PrintWall PROC
	call clrscr
    mGotoxy 0, 0     
    mWrite wallTop
    mGotoxy 0, maxRow    
    mWrite wallTop
        
    mov cl, maxRow - 1 
	.while cl
   	    mGotoxy 0, cl   
        mWrite wallLeft
        mGotoxy maxCol, cl
	    mWrite wallLeft
       	DEC cl
   	.endw

   	mGotoxy 40, 8
	mov edx, OFFSET msg_1
	call writestring
	call crlf

	mGotoxy 53, 9
	mov edx, OFFSET msg_2
	call writestring
	call crlf

	mGotoxy 53, 10
	mov edx, OFFSET msg_3
	call writestring
	call crlf
   	ret
PrintWall ENDP

PrintWall_1 PROC
	call clrscr
    mGotoxy 0, 0     
    mWrite wallTop
    mGotoxy 0, maxRow    
    mWrite wallTop
        
    mov cl, maxRow - 1 
	.while cl
   	    mGotoxy 0, cl   
        mWrite wallLeft
        mGotoxy maxCol, cl
	    mWrite wallLeft
       	DEC cl
   	.endw

   	mGotoxy 58, 11
	mov edx, OFFSET msg_4
	call writestring
	call crlf

   	ret
PrintWall_1 ENDP

main PROC
	call PrintWall
	mGotoxy 0, 21
	call readint
	call PrintWall_1
	mGotoxy 0, 21
	exit
main ENDP
END main