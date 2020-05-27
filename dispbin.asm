mov ebx, 15
_for:
    cmp ebx, 0
    jl _end_for

    shr ax, 1
    jnc pass
    mov BYTE PTR [0x600000+ebx], 1
pass:
    add BYTE PTR [0x600000+ebx], 48
    dec ebx
    jmp _for

_end_for:

done: