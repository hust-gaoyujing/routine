### Script

VSIM:

*** 测试时钟：		"+FREQUENCE=144M" （可选144M或16M）

***测试波特率：	 "+BAUDRATE=115200bps" （可选115200bps、9600bps、4800bps）

***测试类型：		 "+TEST_TYPE=TX" (可选TX或RX）

***测试参数：		 "+CLK_EN=1" "+PARITY_EN=1" "+PARITY_EVEN=1" 

```
vsim "+FREQUENCE=144M" "+BAUDRATE=115200bps" "+TEST_TYPE=TX" "+CLK_EN=1" "+PARITY_EN=1" "+PARITY_EVEN=1" work.uart_tb -voptargs="+acc=bcglnprst+uartTx +acc=bcglnprst+uart_tb +acc=bcglnprst+uartRx +acc=bcglnprst+baudGen +acc=bcglnprst+axi4Lite2Uart +acc=bcglnprst+Axi4LiteUartTop"
```

WAVE:

```
do D:/prj/routine/inferencor/code/verilog_sim/uart/wave.do
```

RUN:

```
run -all
```

