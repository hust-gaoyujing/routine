# RISC-V riscv64-unknown-elf

riscv64-unknown-elf 为 RISC-V指令集的交叉编译工具

以下环境在Liunx ubuntu x86_64 环境下进行，下面示例以生成32位文件为目标来操作使用。



#### compile

riscv64-unknown-elf-gcc, RISC-V platform's riscv tool-chain. 

```shell
// complie 64-bit file
riscv64-unknown-elf-gcc -o file file.c
// complie 32-bit file
riscv64-unknown-elf-gcc -march=rv32imac -mabi=ilp32 -o file file.c 
```

process-file (32-bit platform)

```shell
// pretreatment
riscv64-unknown-elf-gcc -march=rv32imac -mabi=ilp32 -E -o file.i file.c 
// compile
riscv64-unknown-elf-gcc -march=rv32imac -mabi=ilp32 -S -o file.s/file.S file.i 
// assembler
riscv64-unknown-elf-gcc -march=rv32imac -mabi=ilp32 -c -o file.o file.s/file.S
// link
riscv64-unknown-elf-gcc -march=rv32imac -mabi=ilp32 -o file file.o 
 
// get ELF-file
riscv64-unknown-elf-gcc -march=rv32imac -mabi=ilp32 -o file file.c
// ELF to bin
riscv32-unknown-elf-objcopy -O binary file file.bin 
// ELF to HEX
riscv64-unknown-elf-objcopy -O ihex file file.hex

// disassembler ELF to get ASM
riscv64-unknown-elf-objdump -d file.elf > file.asm
```

- elf文件主要是X86Linux下常用的一种目标文件
- bin文件就是直接的二进制文件，内部没有地址标记
- hex文件经常被用于将程序或数据传输存储到ROM、EPROM，大多数编程器和模拟器使用Intel HEX文件。 

总结：可以由ELF文件转化为其它两种文件，HEX也可以直接转换为BIN文件，但是BIN要转化为HEX文件必须要给定一个基地址。而HEX和BIN不能转化为elf文件，因为ELF的信息量要大。

#### upload

```shell
upload --hex file.hex --jlink JLinkExe
```