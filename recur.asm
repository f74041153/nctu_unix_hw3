push 21
call r
add rsp, 8
jmp exit

r: 
    push rbp
    mov rbp, rsp
    mov rbx, [rbp+16]
    cmp rbx, 0
    jle zero
    cmp rbx, 1
    je one

    sub rbx, 1
    push rbx
    call r
    add rsp, 8
    imul rax, 2
    push rax

    mov rbx, [rbp+16]
    sub rbx, 2
    push rbx
    call r
    add rsp, 8
    imul rax, 3
    pop rcx
    add rax, rcx
    
    leave
    ret

zero:
    mov rax, 0
    leave
    ret
one:
    mov rax, 1
    leave
    ret

exit:

done: