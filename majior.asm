;Research of the majior number/ ricerco il numero maggiore
.MODEL SMALL
.STACK 100H
.DATA
  N1 DB 5
  N2 DB 4
.CODE
.STARTUP
       MOV AL,N1 ;AL=N1
       CMP AL,N2 ;if(AL>N2)
START: JG TRUE
       JMP FALSE
TRUE:  MOV BL,N1 ;AL>N2 -> BL=N1
       JMP E
FALSE: MOV BL,N2; AL<N2 -> BL=N2
E:     NOP
       MOV AH,4CH
       INT 21H
END
