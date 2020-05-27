mov eax, [0x600004]
neg eax
mov ebx, [0x600008]
cdq
idiv ebx
mov ecx, edx

mov eax, [0x600000]
mov ebx, -5
imul ebx
cdq
idiv ecx
mov [0x60000c], eax

done:
