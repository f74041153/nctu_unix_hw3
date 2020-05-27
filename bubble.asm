mov ebx, 0

_for1:
    cmp ebx, 9
    jge _end
    mov ecx, 0
    mov edx, 9
    sub edx, ebx

_for2:
    cmp ecx, edx
    jge _end_for1
    mov eax, [0x600000 + ecx*4] 
    cmp eax, [0x600000 + ecx*4 + 4]
    jle _end_for2 
    xchg eax, [0x600000 + ecx*4 + 4]
    xchg eax, [0x600000 + ecx*4]
_end_for2:
    inc ecx
    jmp _for2

_end_for1:
    inc ebx
    jmp _for1

_end:

done: