# Task_06
Create a shellcode launcher program in C that dynamically loads and executes the position-independent shellcode from `Task_05`. The program should use the `shellcode.h` header file generated in the previous task to load and execute the shellcode in memory. You must use `mmap` to allocate memory with read, write, and execute permissions for the shellcode.

> [!IMPORTANT]
> Always run `git pull` before commiting/pushing your solutions.

## Constraints
- turn-in directory: `uploads/task06/`
- files to turn in: `sc_launcher.c`, `shellcode.h`
- compilation method: `cc`
- allowed functions: `mmap`, `memcpy`
- forbidden functions: `system`, `execve`

## Expected behavior
```bash
> ./sc_launcher
$ echo "I'm now in a shell!"
I'm now in a shell!
$ exit
>
```

> [!TIP]
> You might find `((void(*)())ptr)();` useful.

# Grading
![Grading-06](https://github.com/OWNER/REPO/actions/workflows/grading-06.yml/badge.svg)
