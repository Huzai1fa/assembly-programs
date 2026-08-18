.model small
.stack 100H
.data
msg1 db 'Enter the character: $'
msg2 db 0dh, 0ah,'You Entered: $'
msg3 db 0dh,0ah,'Enter Second Character: $'
msg4 db 0dh,0ah,'You Entered: $'     

.code
main proc
mov AX, @data
mov DS, AX

LEA DX ,msg1  
mov AH ,09H
INT 21H    

mov AH ,01H
INT 21H
mov BL, AL  

LEA DX, msg2
mov AH ,09H
INT 21H
        
        
mov DL , BL
mov AH, 02H    
INT 21H 
  
  
LEA DX ,msg3
mov AH , 09H
INT 21H 

mov AH,01H
INT 21H
mov BL,Al
       
       
LEA DX ,msg4
mov AH ,09H
INT 21H 
 
mov DL,BL
mov AH,02H
INT 21H

       



mov AH ,4CH
INT 21H

MAIN ENDP
END MAIN
        