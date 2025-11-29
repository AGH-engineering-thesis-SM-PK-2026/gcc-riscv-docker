#!/bin/sh
BP=/home/dev/riscv
BOOTS=$BP/src/boot.s
BOOTO=$BP/out/boot.o
LINKLD=$BP/link.ld
IN=$1
OUT=$2
echo boot.o
riscv-none-elf-as -march=rv32i -mabi=ilp32 -c -o $BOOTO $BOOTS
echo $2
riscv-none-elf-gcc -march=rv32i -mabi=ilp32 -nostdlib -ffreestanding -Wall -O0 -g -T link.ld -o $OUT $IN $BOOTO
echo done