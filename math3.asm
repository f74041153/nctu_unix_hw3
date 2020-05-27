mov eax, [0x600000]
mov ecx, 0x5
mul ecx
mov ebx, [0x600004]
sub ebx, 0x3
div ebx
mov [0x600008], eax

done:
