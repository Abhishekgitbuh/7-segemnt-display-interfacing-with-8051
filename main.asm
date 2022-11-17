//write a program to display 0,1,2,3,4,5,6,7,8 and 9 in sequence repeatedly on a common cathode seven segment.
ORG 00
BACK: MOV R0, #10
MOV R1, #0
LOOP:
MOV DPTR, #400H
MOV A, R1
INC R1
MOVC A, @A+DPTR
MOV P1, A
ACALL DELAY
DJNZ R0, LOOP
SJMP BACK
;____delay subroutine
ORG 200H
DELAY:MOV R4, #10
HERE0:MOV R2, #255
HERE1:MOV R3, #255
HERE2:DJNZ R3, HERE2
DJNZ R2, HERE1
DJNZ R4, HERE0
RET
;_______data space
ORG 400H
DB 3FH,06H,5BH,4FH,66H,6DH,7DH,07H,7FH,6FH
END