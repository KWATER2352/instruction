section .data
    var dd 6
    var2 dd 4
    result dd 0

section .text
    global _start

_start:
    mov eax, [var]
    mov ebx, [var2]

    sub ebx, 3

    mov ecx, 2
    imul eax, ecx

    cdq
    idiv ebx

    mov [result], eax

    mov eax, 1
    xor ebx, ebx
    int 0x80
