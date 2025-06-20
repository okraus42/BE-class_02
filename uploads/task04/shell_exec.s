section .data
    filename db "/bin/sh", 0
    argv     dq filename, 0            ; argv = [filename, NULL]
    envp     dq 0                      ; envp = NULL

section      .text                     ; this is the code section
    global   _start                    ; declare entry point
_start:                                ; define entry point
    mov rax, 59                        ; sys_execve(
    mov rdi, filename                  ;   filename,
    mov rsi, argv                      ;   argv,
    mov rdx, envp                      ;   envp)
    syscall                            ; );

    ; exit if execve fails
    mov rax, 60                        ; exit
    mov rdi, 4242                      ;   exit_status
    syscall                            ; );
