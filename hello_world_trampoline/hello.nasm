global _start

section .text

_start:

        jmp string
code:
        pop rsi

        xor rax, rax
        add al, 1
        xor rdi, rdi
        xor rdx, rdx
        add rdx, 12
        syscall


        xor rax, rax
        add rax, 60
        xor rdi, rdi
        syscall

string:
        call code
        hello_world: db "hello world", 0xa
