FROM alpine:latest@sha256:a8560b36e8b8210634f77d9f7f9efd7ffa463e380b75e2e74aff4511df3ef88c

RUN apk add --no-cache bash nano binutils-riscv-none-elf gcc-riscv-none-elf 

RUN adduser -D dev
USER dev
WORKDIR /home/dev

RUN echo 'alias rvas=/home/dev/riscv/misc/as.sh' > .bashrc
RUN echo 'alias rvcc=/home/dev/riscv/misc/cc.sh' >> .bashrc
RUN echo 'alias rvdump=/home/dev/riscv/misc/dump.sh' >> .bashrc
RUN echo 'alias rvlist=/home/dev/riscv/misc/list.sh' >> .bashrc
RUN echo 'echo -e "---"' >> .bashrc
RUN echo 'echo -e "\e[1;35mwelcome to gcc-riscv-docker!\e[0m"' >> .bashrc
RUN echo 'echo -e "available tools:"' >> .bashrc
RUN echo 'echo -e "- rvas in.s -o out.elf  assembler wrapper"' >> .bashrc
RUN echo 'echo -e "- rvcc in.c out.elf     one-step C compiler + linker"' >> .bashrc
RUN echo 'echo -e "- rvdump out.elf        dump ELF file to mem-file format"' >> .bashrc
RUN echo 'echo -e "- rvlist out.elf        get instruction file for rivctl upload"' >> .bashrc
RUN echo 'echo -e "for more info take a look at README.md"' >> .bashrc
RUN echo 'PS1="\W\e[1;35m> \e[0m"' >> .bashrc

CMD [ "bash" ]