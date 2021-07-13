global _start

section .text

_start:


        xor rax, rax
        push rax ; rax=0



        mov rbx, 0x68732f2f6e69622f
        push rbx



        mov rdi, rsp


        push rax ; rax=0


        mov rdx, rsp



        push rdi



        mov rsi, rsp


        add rax, 59
        syscall ; 59=execve

