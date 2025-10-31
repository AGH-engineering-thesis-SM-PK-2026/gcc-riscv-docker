@echo off
docker build -t riscv-toolchain .
docker history riscv-toolchain > buildlog.txt
docker run -it --rm -v %CD%/mnt:/home/dev/riscv -v %CD%/src:/home/dev/riscv/src riscv-toolchain