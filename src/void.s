.section .text.boot, "ax", @progbits
.global _start
_start:
    li x1, 0xe0
_void:
    j _void
