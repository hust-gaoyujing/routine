# modelsim的TCL脚本的define incdir命令解析



(1) +incdir+：
如：vlog +incdir+YOUR_SOURCE_PATH  foo.v
  +incdir+YOUR_SOURCE_PATH 选项是指在verilog文件中出现`include "xxx.v"
时，包含文件的搜索路径。
缺省是搜索当前路径，然后是 YOUR_SOURCE_PATH 指定的路径。

(1) +define+：
+define+<macro_name>[=<macro_text>]
  允许用户在命令行中定义宏定义，等效于编译器指令:
`define <macro_name> <macro_text>
  用户可以指定多个宏定义，如下：
vlog +define+one=r1 +two=r2 +three=r3 test.v
  命令行的宏定义会覆盖在源文件中用`define定义的相同名字的宏定义


如：vsim -c -l vsim.log -do ./YourDo.do -L ./work work.foo
   开始仿真:
-c 选项让vsim工作在commandline模式；
-l 选项是输出log文件到vsim.log；
-do 选项是开始仿真后运行tcl脚本文件；
-L 选项是指定工作逻辑库；
work.foo是仿真的top level module。
————————————————
版权声明：本文为CSDN博主「limanjihe」的原创文章，遵循CC 4.0 BY-SA版权协议，转载请附上原文出处链接及本声明。
原文链接：https://blog.csdn.net/limanjihe/article/details/52325109