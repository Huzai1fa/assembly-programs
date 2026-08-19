.model small
.stack 100h

.data
num1 db 5
num2 db 3
sum  db ?

.code
main proc

    mov ax,@data
    mov ds,ax

    mov al,num1
    add al,num2
    mov sum,al

    add al,30H      ; Convert 8 -> ASCII '8'
    mov dl,al

    mov ah,02h      ; Display character
    int 21h

    mov ah,4Ch
    int 21h

main endp
end main