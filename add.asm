add %edx, %eax # adds values in registers %eax and %edx
jc if_overflow # if overflow, go to label if_overflow
mov $1, %eax # otherwise write the result to the register %eax1
jmp return # and go to label named return

if_overflow: # label if_overflow
mov $0, %eax # write zero to the register %eax

return: # label return
