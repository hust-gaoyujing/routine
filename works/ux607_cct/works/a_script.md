### a_script



#### VSIM:

```shell
vsim "+TESTCASE=rv64ui-p-add" "+SEED=1" "+FORCE_IRQ=0" "+FORCE_RESP_ERR=0" "+WFI_FORCE_IRQ=1" work.tb_top -voptargs="+acc=bcglnprst+uart_ctrl +acc=bcglnprst+ux607_soc_top +acc=bcglnprst+ux607_uartgpioport +acc=bcglnprst+tb_irq_gen +acc=bcglnprst+ux607_subsys_top +acc=bcglnprst+ux607_subsys_perips +acc=bcglnprst+uart_clk +acc=bcglnprst+ux607_subsys_main +acc=bcglnprst+ux607_uartrx +acc=bcglnprst+ux607_uart0_top +acc=bcglnprst+tb_mem_init +acc=bcglnprst+tb_wait_pass +acc=bcglnprst+tb_top +acc=bcglnprst+ux607_uarttx +acc=bcglnprst+ux607_gpio_top +acc=bcglnprst+uart_rx +acc=bcglnprst+tb_monitor +acc=bcglnprst+baudrate_generator +acc=bcglnprst+ux607_uart_top +acc=bcglnprst+uart_tx"
```



#### WAVE:

```shell
do D:/prj/routine/works/ux607_cct/works/wave.do
```



#### RUN:

```shell
run -all
```

