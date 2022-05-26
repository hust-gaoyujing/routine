# Windows 修改



## Powershell

#### 1.window powershell的起始位置修改

`%HOMEDRIVE%%HOMEPATH%`  ->`\\wsl.localhost\Ubuntu-18.04\home\gaoyujing`

<img src="Windows 修改.assets/image-20220504093139676.png" alt="image-20220504093139676" style="zoom:50%;" />



#### 2.创建alias gtkwave

```shell
Set-Alias -Name gtk -Value E:\gtkwave\gtkwave-3.3.100-bin-win32\gtkwave\bin\gtkwave.exe		//Set-Alias既可以创建也可以用来更改别名，New-Alias只可以创建
Get-Alias gtk  //查看是否创建成功
```

##### 创建永久的别名

在PowerShell中直接使用`Set-Alias`或`New-Alias`命令创建的别名在关闭此Session后即会失效，防止此现象的方法是将此命令写入`Windows PowerShell profile`文件。

```shell
$profile			//查看此文件在计算机中的位置：
New-Item -Type file -Force $profile 	//一般该文件在没有创建前是不存在的，使用以下命令为当前用户创建profile命令并返回文件地址：
Set-Alias -Name gtk -Value E:\gtkwave\gtkwave-3.3.100-bin-win32\gtkwave\bin\gtkwave.exe				//去文件夹中打开文件并编辑
```



##### 额外的alias命令：

```shell
Remove-Item alias:\命令		//使用Remove-Item alias命令删除已设定的别名。
```

