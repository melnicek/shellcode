global _start

section .text

_start:

; 0a646c726f77206f6c6c6568

        xor rax, rax
        add al, 1

        xor rdi, rdi

        push 0x0a646c72
        mov rbx, 0x6f77206f6c6c6568
        push rbx
        mov rsi, rsp

        xor rdx, rdx
        add rdx, 12
        
        syscall


        xor rax, rax
        add rax, 60
        xor rdi, rdi
        syscall
