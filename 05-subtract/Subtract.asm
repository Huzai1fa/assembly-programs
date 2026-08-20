.model small
.stack 100h

.data
num1 db 9
num2 db 4
result db ?

.code
main proc

    mov ax,@data
    mov ds,ax

    mov al,num1      ; AL = 9
    sub al,num2      ; AL = 9 - 4 = 5

    mov result,al    ; Store result

    add al,'0'       ; Convert 5 -> ASCII '5'
    mov dl,al

    mov ah,02h       ; Display character
    int 21h

    mov ah,4Ch       ; Exit program
    int 21h

main endp
end main