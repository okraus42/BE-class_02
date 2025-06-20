#include <sys/mman.h>
#include <string.h>
#include "shellcode.h"

int	main(void)
{
	size_t size = shellcode_len;

	// Allocate memory using mmap
	void *mem = mmap(
		(void *)0, size,
		PROT_READ | PROT_WRITE | PROT_EXEC, // Read, Write, Execute
		MAP_PRIVATE | MAP_ANON,
		-1, 0
	);
	// Copy shellcode into allocated memory
	memcpy(mem, shellcode, size);
	// Cast to function pointer and call
	void (*shellcode_func)() = mem;
	shellcode_func();
	return (0);
}