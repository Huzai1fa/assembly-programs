.model small
.stack 100H
.data
msg1 db 'Enter first character: $'
msg2 db 0dh,0ah,'Enter Second Character: $'
msg3 db 0dh,0ah, 'Result is: $'

.code
main proc
    mov AX, @data
    mov DS, AX
    
    LEA DX , msg1
    mov AH , 09H
    INT 21H
    
    
    mov AH, 01H
    INT 21H
    SUB AL , '0'
    mov BL ,AL
    
    LEA DX , msg2
    mov AH , 09H
    INT 21H
    
    mov AH, 01H
    INT 21H
    SUB AL,'0'
    
    ADD AL,Bl 
    mov CL,AL
     
    
    LEA DX , msg3
    mov AH,09H
    INT 21H
    
    mov AL, CL          
    ADD AL,'0'         
    mov DL,AL  
    mov AH,02H
    INT 21H 
    
    mov AH,4CH
    INT 21H
    
main ENDP
END main            