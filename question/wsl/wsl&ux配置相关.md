### 安装WSL2与Ubuntu18.04

参考文档：

- [在 Windows 10 上安装适用于 Linux 的 Windows 子系统 (WSL) | Microsoft Docs](https://docs.microsoft.com/zh-cn/windows/wsl/install-win10)

- 注意在BIOS中开启CPU虚拟化

### 映射WSL2上的Ubuntu18.04
> 打开Windows"运行"输入\\wsl$
> 弹出Ubuntu-18.04点击进入后可看到Ubuntu目录结构
> 可反键点击直接映射网络驱动器

  

### 更新apt源为清华源（针对Ubuntu18.04)

修改/etc/apt/sources.list

```shell
sudo cp sources.list sources.list.bak;sudo vim sources.list
```

或直接目录下的sources.list文件拷贝进入/etc/apt/，覆盖源文件

> Ubuntu清华源

> https://mirrors.tuna.tsinghua.edu.cn/help/ubuntu/

18.04LTS内容如下：

```shell
# 默认注释了源码镜像以提高 apt update 速度，如有需要可自行取消注释
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-updates main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-updates main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-backports main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-backports main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-security main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-security main restricted universe multiverse
```

```shell
deb http://mirrors.aliyun.com/ubuntu/ bionic-proposed main restricted 
deb http://mirrors.aliyun.com/ubuntu/ bionic-proposed universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic-proposed main restricted
deb-src http://mirrors.aliyun.com/ubuntu/ bionic-proposed universe multiverse
```

```shell
sudo apt-get update;sudo apt-get upgrade
```

## 安装binutils与make
```shell
 sudo apt install binutils;sudo apt install make
```

## 安装RISC-V gcc工具链并修改bashrc修改

> 放入RISCVGccPATH  中

```shell
export PATH=$PATH:RISCVGccPATH/bin
cd ~
```

### libc.so.6软连接修改

```shell
sudo ln -s /lib/x86_64-linux-gnu/libc.so.6 /lib/libc.so.6
```

### 修改core_gen权限

```shell
sudo chmod +x core_gen
```

### sh软连接修改

```shell
sudo rm -f /bin/sh;sudo ln -sf /bin/bash /bin/sh
```
### 修改RISC-V GCC执行权限
> 进入RISC-V GCC/bin目录下执行

```shell
 sudo chmod +x riscv-nuclei-elf-*
```

### 修改prepare.sh以避免gcc: command not found
在不修改的情况下，apt install gcc也可解决，不确定是否有问题
>观察sh文件，如果有用到riscv相关gcc是会有前缀的，所以该sh文件中的gcc不能修改？？？

### 安装GUI相关组件

sudo apt-get install ubuntu-desktop unity compizconfig-settings-manager



### 配置compiz窗口管理器
```shell
export  DISPLAY=localhost:0
ccsm
```

