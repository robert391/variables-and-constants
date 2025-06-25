section .text
        global _start

_start:
        ;use this space for the main body of your program
        ;======== write your code below ===========
        mov eax, [var1]
        mov ebx, [var2]
        add eax, ebx
        mov [result], eax


        ;======== write your code above ===========

        mov eax,1       ;set eax register to 1 (do not remove this line)
        int 0x80        ;interrupt 0x80 (do not remove this line)

segment .bss
        ;use this space for uninitialized variable (result)
        result RESD 1
section .data
        ;use this space for initialized variables (var1 and var2)
        var1 dd 10
        var2 dd 15