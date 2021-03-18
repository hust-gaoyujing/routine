两台电脑操作同一个git项目

1.

2.生成ssh密钥添加到github上，点击github账号头像，在左侧项目栏选择SSH and GPG keys(如下图）；

![image-20201216163214795](D:\prj\routine\question\两台电脑操作同一个git项目\两台电脑操作同一个git项目.assets\image-20201216163214795.png)

点击new SSH key添加你生成的.ssh/id_rsa.pub中的内容；

![](D:\prj\routine\question\两台电脑操作同一个git项目\两台电脑操作同一个git项目.assets\image-20201216163318464-1608110210169.png)



3.在本地找一个合适的路劲新建一个文件夹作为地址准备clone  github上的项目，打开repositories,进入想要关联的仓库，点击下图右上角的code即可获得仓库的ssh地址；

<img src="D:\prj\routine\question\两台电脑操作同一个git项目\两台电脑操作同一个git项目.assets\image-20201216163033763.png" alt="image-20201216163033763" style="zoom: 67%;" />

`git init`

配置环境：

`git config --global user.name "github账户"`

`git config --global user.email "github关联的邮箱"`

与github远程关联：

`git remote add origin git@github.com:hust-gaoyujing/routine.git`

clone项目：

 `git clone git@github.com:hust-gaoyujing/routine.git`





