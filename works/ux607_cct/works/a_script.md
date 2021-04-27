### a_script

#### VLOG:

```shell
vlog "+define+UART" -reportprogress 300 -work work "D:/prj/routine/works/ux607_cct/tb/*.v" "D:/prj/routine/works/ux607_cct/ux607/design/core/*.v" "D:/prj/routine/works/ux607_cct/ux607/design/fab/*.v" "D:/prj/routine/works/ux607_cct/ux607/design/include/*.v" "D:/prj/routine/works/ux607_cct/ux607/design/mems/*.v" "D:/prj/routine/works/ux607_cct/ux607/design/perips/*.v" "D:/prj/routine/works/ux607_cct/ux607/design/soc/*.v" "D:/prj/routine/works/ux607_cct/ux607/design/subsys/*.v"
```



#### VSIM:

```shell
vsim  "+TESTCASE=rv64ui-p-add" "+FREQUENCE=144M" "+SEED=1" "+FORCE_IRQ=0" "+FORCE_RESP_ERR=0" "+WFI_FORCE_IRQ=1"   work.tb_top -voptargs="+acc=bcglnprst+uart_ctrl +acc=bcglnprst+ux607_soc_top +acc=bcglnprst+ux607_uartgpioport +acc=bcglnprst+tb_irq_gen +acc=bcglnprst+ux607_subsys_top +acc=bcglnprst+ux607_subsys_perips +acc=bcglnprst+uart_clk +acc=bcglnprst+ux607_subsys_main +acc=bcglnprst+ux607_uartrx +acc=bcglnprst+ux607_uart0_top +acc=bcglnprst+tb_mem_init +acc=bcglnprst+tb_top +acc=bcglnprst+tb_wait_pass +acc=bcglnprst+ux607_uarttx +acc=bcglnprst+ux607_core +acc=bcglnprst+ux607_gpio_top +acc=bcglnprst+tb_monitor +acc=bcglnprst+uart_rx +acc=bcglnprst+baudrate_generator +acc=bcglnprst+uart_tx +acc=bcglnprst+ux607_uart_top"
```



#### WAVE:

```shell
do D:/prj/routine/works/ux607_cct/works/wave.do
```



#### RUN:

```shell
run -all
```

