global _start

section .text

_start:

        xor rax, rax
        add rax, 60
        xor rdi, rdi
        add rdi, 42
        syscall
