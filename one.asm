       
segment .text

global _start

_start:

        mov al, [var1]
        mov bl, 10
        mul bl
        neg ax
        mov [result], al
        mov eax,1       
        int 0x80

section .data

var1 db 1

section .bss

result resb 1
