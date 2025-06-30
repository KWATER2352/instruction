section .data
    var dd 6
    var2 dd 4
    result dd 0

section .text
    global _start

_start:
    ; load variables into registers
    mov eax, [var]
    mov ebx, [var2]

    ; subtract 3 from var2
    sub ebx, 3

    ; multiply var by 2
    mov ecx, 2
    imul eax, ecx

    ; divide var by var2-3
    cdq
    idiv ebx

    ; store the result
    mov [result], eax

    ; exit program
    mov eax, 1
    xor ebx, ebx
    int 0x80