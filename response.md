1. First, I copied the code and edited it in the text editor. I then assigned the assigned vartiables to 10 and 15. For the unassigned variables, I tell how nmuch data it needs. For writing the code, I move the first variable to eax 1, and the second to eax 1. I then perform the addition between eax and ebx. The sum will be at eax.
2. Some challenges in the lab were using first db and realized that it used the memory address instead of the actual value so then I used equ.
3. code:
section .text
        global _start

_start:
        ;use this space for the main body of your program
        ;======== write your code below ===========
        mov eax, var1
        mov ebx, var2
        add eax, ebx
        mov [result], eax


        ;======== write your code above ===========

        mov eax,1       ;set eax register to 1 (do not remove this line)
        int 0x80        ;interrupt 0x80 (do not remove this line)

segment .bss
        ;use this space for uninitialized variable (result)
        result RESB 1
section .data
        ;use this space for initialized variables (var1 and var2)
        var1 EQU 10
        var2 EQU 15
