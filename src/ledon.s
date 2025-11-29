.section .text.boot, "ax", @progbits
.global _start
_start:
    li a4, 0x55
    li a5, 0x10
    sw a4, 0(a5)
_end:
    j _end
