.global _start
.intel_syntax noprefix

_start:
    # prompt user
    mov rax, 1
    mov rdi, 1
    lea rsi, [prompt]
    mov rdx, 2
    syscall

    # read user input
    mov rax, 0
    mov rdi, 1
    mov rsi, [user]
    mov rdx, 5
    syscall

    # echo user input
    mov rax, 1
    mov rdi, 1
    lea rsi, [user]
    mov rdx, 5
    syscall

    # exit
    mov rax, 60
    mov rdi, 0
    syscall

prompt:
    .asciz "> "

user:
    .asciz "abcde"