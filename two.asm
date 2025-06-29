section .text

global _start

_start:

	mov eax, [var1]
	mov ebx, [var2]
	add eax, ebx
	mov ebx, [var3]
    add eax, ebx
	mov ebx, [var4]
	add eax, ebx
	mov [result], eax
	
	

segment .data

var1 dd 1
var2 dd 1
var3 dd 1
var4 dd 1

segment .bss
                result resd 1
