; Linux x86 (32-bit) Hello World
; Build with: nasm -f elf32 hello.asm
; Link with: ld -m elf_i386 hello.o -o hello

section .data
    msg db 'Hello, World!',0xa  ; Message with newline
    len equ $ - msg             ; Length of message

section .text
    global _start               ; Entry point for linker

_start:
    mov eax, 4                  ; System call number for sys_write
    mov ebx, 1                  ; File descriptor 1 is stdout
    mov ecx, msg               ; Address of string to output
    mov edx, len               ; Length of string
    int 0x80                   ; Make system call

    mov eax, 1                  ; System call number for sys_exit
    mov ebx, 0                  ; Return 0 status
    int 0x80                   ; Make system call
