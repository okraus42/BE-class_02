# Task_05
Create a program that executes a shell (`/bin/sh`) using x86-64 Assembly with Intel syntax. You must not use `.data` section, thus your code must be position-independent.

After creating your assembly program, you must generate a C header file containing the shellcode bytes that can be used in other programs.

> [!IMPORTANT]
> Always run `git pull` before commiting/pushing your solutions.

## Constraints
- turn-in directory: `uploads/task05/`
- files to turn in: `shell_exec_ind.s`, `shellcode.h`
- compilation method: `nasm`
- linking method: `ld`

## Expected output
The shellcode may be different, but the file structure must match.
``` bash
> cat shellcode.h
unsigned char shellcode[] = {
  0x48, 0x31, 0xf6, 0x56, 0x48, 0xbf, 0x2f, 0x2f, 0x62, 0x69, 0x6e, 0x2f,
  0x73, 0x68, 0x57, 0x48, 0x89, 0xe7, 0x48, 0x31, 0xd2, 0xb8, 0x3b, 0x00,
  0x00, 0x00, 0x0f, 0x05
};
unsigned int shellcode_len = 28;
```

> [!TIP]
> You might find `objcopy -O binary --only-section=.text` and `xxd -i` useful.

# Grading
![Grading-05](https://github.com/OWNER/REPO/actions/workflows/grading-05.yml/badge.svg)
