# %eax - base, %edx - power
power:
mov %eax, %ecx
loop:
dec %edx
test %edx, %edx
jz after
imul %ecx, %eax
jmp loop
after:
ret
