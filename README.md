# RISC-V toolchain in Docker

For all Windows users

## Brief tutorial

To run this image:

- on Windows: `run`
- on Linux: `./run.sh`

You can run all `riscv-none-elf-*` commands directly, but also there are
handy aliases provided for most users - they are located in /mnt/misc:

Assembler (you can provide all `riscv-none-elf-as` flags):

```sh
rvas -o out in.s
```

Compiling C programs (includes custom C runtime "boot.s"):

```sh
rvcc prog.c prog.elf
```

Notice that this is a custom alias and it does not accept compiler parameters.

To get memfile friendly output of the binary:

```sh
rvdump prog.elf
```

This will print the hex dump directly to stdout.
