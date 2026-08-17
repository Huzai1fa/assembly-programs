.model small

.stack 100H

.data

msg db "Hello World g$"



.code

main proc

MOV AX ,@data 

mov DS , AX



LEA DX , msg

mov AH ,09H

INT 21H

END main 