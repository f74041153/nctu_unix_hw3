mov ebx, 0
_for:
    cmp ebx, 15
    jge _end_for

    cmp BYTE PTR [0x600000+ebx], 97
    jae islower
    xor BYTE PTR [0x600000+ebx], 0x20
islower:
    mov AL, [0x600000+ebx]
    mov BYTE PTR [0x600010+ebx], AL

    inc ebx
    jmp _for

_end_for:

done: