global _start
section .text

_start:
    ; Prologue
    push rbp
    mov rbp, rsp

    ; Equivalent of: mov dword [rbp - 4], 0
    mov dword [rbp - 4], 0

    ; mov eax, 42
    mov eax, 42

    ; Epilogue
    pop rbp

    ; Instead of ret (no caller in raw binary), call exit syscall
    ; exit(42)
    mov edi, eax      ; exit code in edi (argument to exit)
    mov eax, 60       ; syscall number for exit
    syscall
