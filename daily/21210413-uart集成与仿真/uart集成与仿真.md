[TOC]



### uart集成与仿真

1.将所写的main.c函数编译出*.verilog的二进制文件；

2.将uart集成进入ux607系统，修改其中的bug；

3.搭建仿真环境，将tb_uart.v集成进入ux607的testbench中：

- tb_define.v中添加宏定义UART0_TOP
- uart0集成在icb总线的o4接口上；





### question:

1.soc_top.v line423:下一层的输入，是这一层的输入和输出的&：

![image-20210413181526283](uart集成与仿真.assets/image-20210413181526283.png)

o_ie信号在gpio_top中没有从iof传到pads中，导致i_ival在soc_top之后都为1‘b0；