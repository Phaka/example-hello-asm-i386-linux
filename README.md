# Hello World in x86 Assembly (32-bit Linux)

A minimal Hello World implementation in x86 32-bit assembly for Linux systems.

## Installation

### Linux
```bash
# Debian/Ubuntu
sudo apt-get install nasm

# Fedora
sudo dnf install nasm

# Arch Linux
sudo pacman -S nasm
```

## Building and Running

```bash
# Assemble
nasm -f elf32 hello.asm

# Link
ld -m elf_i386 hello.o -o hello

# Run
./hello
```

## Code Explanation

The implementation uses Linux system calls directly:
- sys_write (4) to output the message to stdout
- sys_exit (1) to exit the program with status 0

The program follows standard Linux x86 32-bit syscall calling convention:
- System call number in EAX
- Arguments in EBX, ECX, EDX
- Syscall invoked with INT 0x80
