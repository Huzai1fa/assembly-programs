.model small

.stack 100H

.data

msg db "Hello " ,0dh ,0ah, "World$"



.code

main proc

MOV AX ,@data 

mov DS , AX



LEA DX , msg

mov AH ,09H

INT 21H 
main endp

END main 