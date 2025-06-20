section      .text                     ; this is the code section
    global   _start                    ; declare entry point
_start:                                ; define entry point
    xor rax, rax
    mov rbx, 0x0068732f6e69622f        ; "/bin/sh\0" - little endian
    push rbx
    mov rdi, rsp                       ;   filename on stack
    push rax;
    push rdi;                          ; pointer to "bin\sh"
	mov rsi, rsp                       ;   argv,
    xor rdx, rdx                       ;   envp = NULL)
    mov rax, 59                        ; sys_execve(
    syscall                            ; );

    ; exit if execve fails
    mov rax, 60                        ; exit
    mov rdi, 4242                      ;   exit_status
    syscall                            ; );
