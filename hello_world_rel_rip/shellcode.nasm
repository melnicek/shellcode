global _start

default rel

section .text

        jmp _start
        
        string: db "hello world", 0xa
_start:

        xor rax, rax
        add al, 1

        lea rsi, string
        
        xor rdi, rdi

        xor rdx, rdx
        add rdx, 12
        
        syscall


        xor rax, rax
        add rax, 60
        
        xor rdi, rdi
        add rdi, 42

        syscall

