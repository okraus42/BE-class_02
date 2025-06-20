section      .data                     ; this is where variables are initialized
    msg      db   "Hello World!", 10   ; 10 is a newline
    msglen   equ  $ - msg

section      .text                     ; this is the code section
    global   _start                    ; declare entry point
_start:                                ; define entry point
    mov rax, 1                         ; sys_write(
    mov rdi, 1                         ;   STDOUT_FILENO,
    mov rsi, msg                       ;   msg,
    mov rdx, msglen                    ;   sizeof(msg)
    syscall                            ; );

    ; exit
    mov rax, 60                        ; exit
    mov rdi, 4242                      ;   exit_status
    syscall                            ; );
