### Cores-SweRV User Guide

#### 1. 文件结构目录

    ├── configs                 # Configurations Dir
    │   └── snapshots           # Where generated configuration files are created
    ├── design                  # Design root dir
    │   ├── dbg                 # Debugger
    │   ├── dec                 # Decode, Registers and Exceptions
    │   ├── dmi                 # DMI block
    │   ├── exu                 # EXU (ALU/MUL/DIV)
    │   ├── ifu                 # Fetch & Branch Predictor
    │   ├── include             
    │   ├── lib
    │   └── lsu                 # Load/Store
    ├── docs
    ├── tools                   # Scripts/Makefiles
    └── testbench               # (Very) simple testbench
        ├── asm                 # Example test files
        └── hex                 # Canned demo hex files


#### 2. 工具准备

##### 2.1 Verilator安装

Verilator安装简单，使用如下命令行即可：

```shell
sudo apt-get install verilator
```

安装完成后，可查看安装版本：

```shell
verilator --version
```



##### 2.2  riscv-gun-toolchain工具链安装

命令行如下：

```shell
git clone --recursive https://github.com/riscv/riscv-gnu-toolchain
```

因为我的github是通过ssh连接的，命令行有所不同：

```shell
git clone --recursive git@github.com:riscv/riscv-gnu-toolchain.git
```

注意必须要加上参数--recursive，否则clone下来的项目中工具包是空文件。



#### 3. 