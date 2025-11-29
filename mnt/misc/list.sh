#!/bin/sh
if [ $# -eq 1 ] 
then
    riscv-none-elf-objdump -d $1
else
    riscv-none-elf-objdump -d $1 > $2
fi
