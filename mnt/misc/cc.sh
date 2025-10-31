#!/bin/sh

IN=$1
OUT=$2

echo build boot.o
riscv-none-elf-as -march=rv32i -mabi=ilp32 -c -o out/boot.o src/boot.s
echo build $2
riscv-none-elf-gcc -march=rv32i -mabi=ilp32 -nostdlib -ffreestanding -O0 -g -T link.ld -o $OUT out/boot.o $IN
echo done