.model small
.stack 100H

.data
num1 db 5
num2 db 2
result db 'The Result is , $'

.code
main proc
mov AX , @data 
mov DS , AX

LEA DX , result
mov AH ,09H
INT 21H

mov AL , num1
mov Bl , num2
mul Bl

Add AX, 30H 
mov AH , 02H
INT 21H

mov AH,4ch
Int 21H  

main ENDP
End main
  
