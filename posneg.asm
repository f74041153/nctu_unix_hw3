cmp eax, 0
jl else_a
mov DWORD PTR [0x600000], 1
jmp _ebx
else_a:
    mov DWORD PTR [0x600000], -1

_ebx:
    cmp ebx, 0
    jl else_b
    mov DWORD PTR [0x600004], 1
    jmp _ecx
else_b:
    mov DWORD PTR [0x600004], -1

_ecx:
    cmp ecx, 0
    jl else_c
    mov DWORD PTR [0x600008], 1
    jmp _edx
else_c:
    mov DWORD PTR [0x600008], -1

_edx:
    cmp edx, 0
    jl else_d
    mov DWORD PTR [0x60000c], 1
    jmp end
else_d:
    mov DWORD PTR [0x60000c], -1

end:

done:
