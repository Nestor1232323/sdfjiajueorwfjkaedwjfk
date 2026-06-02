section .data
    msg db 'Hello World from clear x86_64 Assembly binary on Vercel without Node.js!', 0xa
    len equ $ - msg

section .text
    global _start

_start:
    ; Пишем в stdout (дескриптор 1) через системный вызов Linux
    mov rax, 1          ; sys_write
    mov rdi, 1          ; stdout
    mov rsi, msg        ; указатель на строку
    mov rdx, len        ; длина
    syscall

    ; Изящно выходим со статус-кодом 0
    mov rax, 60         ; sys_exit
    mov rdi, 0          ; exit code 0
    syscall
