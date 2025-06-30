
section .text

global _start

_start:

	mov al, [var1]
	mov bl, [var2]
	imul bl
	neg ax
    mov cl, [var3]
	add ax, cx
	mov [result], ax

    mov eax, 1
    mov ebx, 0
    int 0x80

section .data

var1 db 2
var2 db 3
var3 db 5

segment .bss
                result resw 1

