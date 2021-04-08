**之前的：**

时钟问题：整个模块时序电路采用一个采样时钟，即系统时钟；



2021/3/25

1.完善uart_spec:

- 补充uart功能框图
- 补充模块说明
- 补充模块设计说明
- 完善寄存器说明

2.在top中添加uart_clk_en信号，受uart_ctrl寄存器的bit9控制;

3.uart_control模块名需要更改，避免与uart_ctrl寄存器重复，且与spec匹配；

4.修改uart_contrl模块中读寄存器always块的defualt块，删除判断条件(cmd==1'b0)；

5.tx状态机修改：状态由TX_IDLE,TX_DATA修改为TX_IDLE,TX_START,TX_PARIYT,TX_DATA,TX_STOP，并添加自启动机制 

6.rx状态机修改,添加状态机自启动机制，删除冗余语句（原本在第12个采样时钟周期收集数据，现在改为最后一个周期）；如果发生parity_error，在IDLE状态清掉；

7.修改rx_idle状态对RXD线低电平的监测方式，即不允许起始位有毛刺，若检测到高电平继续返回idle状态重新检测；

8.uart_br_gen删除冗余判断；修改rx_sample分频，改为上升沿仅一个周期的信号；

9.修改uart_bus_codec的icb总线的response握手机制；





2021/3/30

1.完善uart_spec:

- 完善UART结构框图
- 修改RX的状态机图，去掉RX_PARITY状态
- 修改TX的状态机图，去掉TX_PARITY状态
- 修改文档中的图标与公式

2.tx状态机修改：删除TX_PARITY状态，判断并发送校验位在TX_DATA中完成；

3.将代码中状态机写法改为三段式写法；

4.修改tx_data_sample逻辑；



2021/4/2

1.合并br_gen中baud_cnt与buad_clk_r的两个always块；

2.三段式状态机的第二段，状态机跳转改用阻塞赋值；