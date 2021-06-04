[TOC]



------

### 基于vscode搭建项目管理环境



#### 前言

之所以搭建基于vscode的项目管理环境，是因为现有的情况下，我们只能通过windows本地去修改文档，在服务器上进行代码修改和仿真，其中两个进程都是在对同一个gitlab仓库进行操作，这就让两个环境下的仓库文件同步起来复杂繁琐。

<img src="基于vscode搭建项目管理环境.assets/项目环境.png" style="zoom:80%;" />

但是使用基于vscode搭建的项目管理环境就解决了这个问题，首先通过扩展工具Remote-WSL，在VScode界面嵌入WSL操作终端，在此窗口中执行的任何 VS code 操作都将在 WSL 环境中执行，从编辑和文件操作到调试、使用终端等等都是如此，这就让代码编译和wsl统一到一个界面下面，省略了界面切换的繁琐；再通过SSH将wsl链接到服务器的端口上，使用code指令，这样就可以将服务器的工作目录add到vscode中。

完成上述步骤后，我们就可以基于vscode进行项目的编辑、仿真和调试。



#### 1. 搭配 VS Code Remote 远程开发扩展在 WSL 下开发

Visual Studio Code Remote - WSL 扩展允许你直接借助 VS Code 令 [「适用于 Linux 的 Windows 子系统」（WSL）](https://link.zhihu.com/?target=https%3A//docs.microsoft.com/windows/wsl) 作为你的全职开发环境。你可以在基于 Linux 的环境中进行开发，使用 Linux 特有的的工具链和实用库，并在舒适的 Windows 中运行和调试基于 Linux 的应用程序。

该扩展直接在 WSL 中运行命令和其它扩展，因此你可以编辑位于 WSL 中的文件或挂载在其上的 Windows 文件系统（例如 /mnt/c），而无需担心遇到文件路径问题、二进制兼容性或其它跨操作系统的难题。

![img](基于vscode搭建项目管理环境.assets/v2-51555b86e257ba2b0c3b37203f627c76_720w.jpg)

##### 1.1 安装准备

- 安装对应你偏好的 Linux 发行版的 [「适用于 Linux 的 Windows 子系统」](https://link.zhihu.com/?target=https%3A//docs.microsoft.com/windows/wsl/install-win10)；

- 安装最新版本的Visual Studio Code；

##### 1.2 安装与使用

- **安装Remote Development 扩展包：**打开vscode，在左侧工具栏的Extension中，搜索Remote Development，选择并安装;这个工具包中主要包含Remote-WSL,Remote-Containers,Remote-SSH,对我们后面的工作都是有用的；

![image-20210603143358072](基于vscode搭建项目管理环境.assets/image-20210603143358072.png)

- **打开TERMINAL：** 界面顶端工具栏Terminal->New Terminal(或者通过快捷键Ctrl+Shift+`),即可打开TERMINAL，但此时是powershell模型下的，如果想要切换到wsl下，有以下两种方法：

  1.第一种方法：在terminal右侧工具栏，选择添加Ubuntu(WSL),此时即可进入wsl操作终端；

  

![image-20210603151700724](基于vscode搭建项目管理环境.assets/image-20210603151700724.png)

​		操作终端界面如下：

![image-20210603152001173](基于vscode搭建项目管理环境.assets/image-20210603152001173.png)

​		2.第二种方法：点击左下角![image-20210603152126487](基于vscode搭建项目管理环境.assets/image-20210603152126487.png)

​		绿色图标，在vscode界面中间出现一下选项，选择Open Folder in WSL,	此时依旧可以出现WSL终端(推荐使用）；	

![image-20210603152233880](基于vscode搭建项目管理环境.assets/image-20210603152233880.png)



#### 2. Vscode使用 Remote-SSH 链接服务器

完成上面的步骤后，我们已经可以通过vscode实现windows和wsl的同步，

此时我们在vscode界面的wsl下利用ssh远程链接服务器（需要输入密码）：

```shell
ssh 192.168.0.41
```

因为之前使用gitlab时，wsl中已经配置有ssh,如果没有请自行安装。

#### 3. 使用code指令添加folder

**注意：只可以在WSL:Ubuntu模式下运行**

code命令使用说明可通过 `code -h`详见；

常用的有 `code -a folder_name  `可在当前的vscode界面下，添加一个新的目录结构，如：

```

```

 

```powershell
 Get-Command ssh
```



 IdentityFile "C:\Users\14742\.ssh\id_rsa"



添加环境变量：

在.bashrc中添加gtk变量指向“/mnt/e/gtkwave/gtkwave-3.3.100-bin-win32/gtkwave-3.3.100-bin-win32/gtkwave/bin/gtkwave.exe”



在用户变量和系统变量中分别添加变量gtk指向gtkwave.exe；例如我的$env:gtk变量指向

`E:\gtkwave\gtkwave-3.3.100-bin-win32\gtkwave-3.3.100-bin-win32\gtkwave\bin\gtkwave.exe`

在powershell下，执行如下命令行即可打开gtkwave界面（或者直接打开波形文件）：

```powershell
start $env:gtk [sim.vcd]
```





#### 3. 插件安装

##### 3.2 pdf阅读插件（可选）

为了在vscode中完成“一切操作”，可以加入pdf插件，进行pdf的阅读，但是亲测效果没有其他pdf阅读软件实用，不是很推荐！！

搜索pdf，选择插件vscode_pdf并安装并进入界面左侧工具栏Extension中使能插件，即可使用。

![image-20210603141515081](基于vscode搭建项目管理环境.assets/image-20210603141515081.png)

