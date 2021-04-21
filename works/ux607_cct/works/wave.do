onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group top /tb_top/sys_clk
add wave -noupdate -expand -group top /tb_top/aon_clk
add wave -noupdate -expand -group top /tb_top/tb_rst_n
add wave -noupdate -expand -group top /tb_top/gpio_30_pin
add wave -noupdate -expand -group top /tb_top/gpio_31_pin
add wave -noupdate -expand -group top /tb_top/hfclk
add wave -noupdate -expand -group top /tb_top/dumpwave
add wave -noupdate -expand -group top /tb_top/seed
add wave -noupdate -expand -group top -group tb_mem_init /tb_top/u_tb_mem_init/tb_clk
add wave -noupdate -expand -group top -group tb_mem_init /tb_top/u_tb_mem_init/i
add wave -noupdate -expand -group top -group tb_mem_init /tb_top/u_tb_mem_init/testcase
add wave -noupdate -expand -group top -expand -group tb_monitor /tb_top/u_tb_monitor/tb_clk
add wave -noupdate -expand -group top -expand -group tb_monitor /tb_top/u_tb_monitor/pc_write_to_host_cnt
add wave -noupdate -expand -group top -expand -group tb_monitor /tb_top/u_tb_monitor/pc_write_to_host_cycle
add wave -noupdate -expand -group top -expand -group tb_monitor /tb_top/u_tb_monitor/valid_ir_cycle
add wave -noupdate -expand -group top -expand -group tb_monitor /tb_top/u_tb_monitor/cycle_count
add wave -noupdate -expand -group top -expand -group tb_monitor /tb_top/u_tb_monitor/testcase
add wave -noupdate -expand -group top -expand -group tb_monitor /tb_top/u_tb_monitor/dummy
add wave -noupdate -expand -group top -expand -group tb_monitor /tb_top/u_tb_monitor/x3
add wave -noupdate -expand -group top -expand -group tb_monitor -expand -group tb_wait_pass /tb_top/u_tb_monitor/u_tb_wait_pass/tb_clk
add wave -noupdate -expand -group top -expand -group tb_monitor -expand -group tb_wait_pass /tb_top/u_tb_monitor/u_tb_wait_pass/tb_rst_n
add wave -noupdate -expand -group top -expand -group tb_monitor -expand -group tb_wait_pass /tb_top/u_tb_monitor/u_tb_wait_pass/pc_write_to_host_cnt
add wave -noupdate -expand -group top -expand -group tb_monitor -expand -group tb_wait_pass /tb_top/u_tb_monitor/u_tb_wait_pass/pc_write_to_host_cycle
add wave -noupdate -expand -group top -expand -group tb_monitor -expand -group tb_wait_pass /tb_top/u_tb_monitor/u_tb_wait_pass/valid_ir_cycle
add wave -noupdate -expand -group top -expand -group tb_monitor -expand -group tb_wait_pass /tb_top/u_tb_monitor/u_tb_wait_pass/cycle_count
add wave -noupdate -expand -group top -expand -group tb_monitor -expand -group tb_wait_pass /tb_top/u_tb_monitor/u_tb_wait_pass/chk_write_tohost
add wave -noupdate -expand -group top -expand -group tb_monitor -expand -group tb_wait_pass /tb_top/u_tb_monitor/u_tb_wait_pass/pc
add wave -noupdate -expand -group top -expand -group tb_monitor -expand -group tb_wait_pass /tb_top/u_tb_monitor/u_tb_wait_pass/pc_vld
add wave -noupdate -expand -group top -expand -group tb_monitor -expand -group tb_wait_pass /tb_top/u_tb_monitor/u_tb_wait_pass/pc_write_to_host_flag
add wave -noupdate -expand -group top -expand -group tb_monitor -expand -group tb_wait_pass /tb_top/u_tb_monitor/u_tb_wait_pass/i_valid
add wave -noupdate -expand -group top -expand -group tb_monitor -expand -group tb_wait_pass /tb_top/u_tb_monitor/u_tb_wait_pass/i_ready
add wave -noupdate -expand -group top -group tb_irq_gen /tb_top/u_tb_irq_gen/tb_clk
add wave -noupdate -expand -group top -group tb_irq_gen /tb_top/u_tb_irq_gen/tb_force_irq
add wave -noupdate -expand -group top -group tb_irq_gen /tb_top/u_tb_irq_gen/tb_force_resp_err
add wave -noupdate -expand -group top -group tb_irq_gen /tb_top/u_tb_irq_gen/tb_wfi_force_irq
add wave -noupdate -expand -group top -group tb_irq_gen /tb_top/u_tb_irq_gen/random0_ena
add wave -noupdate -expand -group top -group tb_irq_gen /tb_top/u_tb_irq_gen/random1_ena
add wave -noupdate -expand -group top -group tb_irq_gen /tb_top/u_tb_irq_gen/random2_ena
add wave -noupdate -expand -group top -group tb_irq_gen /tb_top/u_tb_irq_gen/random3_ena
add wave -noupdate -expand -group top -group tb_irq_gen /tb_top/u_tb_irq_gen/random4_ena
add wave -noupdate -expand -group top -group tb_irq_gen /tb_top/u_tb_irq_gen/random5_ena
add wave -noupdate -expand -group top -group tb_irq_gen /tb_top/u_tb_irq_gen/random6_ena
add wave -noupdate -expand -group top -group tb_irq_gen /tb_top/u_tb_irq_gen/random7_ena
add wave -noupdate -expand -group top -group tb_irq_gen /tb_top/u_tb_irq_gen/random8_ena
add wave -noupdate -expand -group top -group tb_irq_gen /tb_top/u_tb_irq_gen/random9_ena
add wave -noupdate -expand -group top -group tb_irq_gen /tb_top/u_tb_irq_gen/dummy
add wave -noupdate -expand -group top -group tb_irq_gen /tb_top/u_tb_irq_gen/tb_dbg_irq
add wave -noupdate -expand -group top -group tb_irq_gen /tb_top/u_tb_irq_gen/tb_dbg_hlt
add wave -noupdate -expand -group top -group tb_irq_gen /tb_top/u_tb_irq_gen/tb_rx_evt
add wave -noupdate -expand -group top -group tb_irq_gen /tb_top/u_tb_irq_gen/tb_tmr_irq
add wave -noupdate -expand -group top -group tb_irq_gen /tb_top/u_tb_irq_gen/tb_sft_irq
add wave -noupdate -expand -group top -group tb_irq_gen /tb_top/u_tb_irq_gen/tb_nmi_plus
add wave -noupdate -expand -group top -group tb_irq_gen /tb_top/u_tb_irq_gen/tb_clic_irq
add wave -noupdate -expand -group top -group tb_irq_gen /tb_top/u_tb_irq_gen/tb_tmr_irq_plus
add wave -noupdate -expand -group top -group tb_irq_gen /tb_top/u_tb_irq_gen/tb_sft_irq_plus
add wave -noupdate -expand -group top -group tb_irq_gen /tb_top/u_tb_irq_gen/x3
add wave -noupdate -expand -group top -group tb_irq_gen /tb_top/u_tb_irq_gen/pc_write_to_host_cnt
add wave -noupdate -expand -group top -group tb_irq_gen /tb_top/u_tb_irq_gen/pc_write_to_host_cycle
add wave -noupdate -expand -group top -group tb_irq_gen /tb_top/u_tb_irq_gen/valid_ir_cycle
add wave -noupdate -expand -group top -group tb_irq_gen /tb_top/u_tb_irq_gen/cycle_count
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/por_rst_n
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/sys_rst_n
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/sys_clk
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/aon_clk
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/evt_i
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/nmi_i
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/core_wfi_mode
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/core_sleep_value
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_jtag_TCK_i_ival
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_jtag_TMS_i_ival
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_jtag_TDI_i_ival
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_jtag_TDO_o_oval
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_0_i_ival
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_0_o_oval
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_0_o_oe
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_0_o_ie
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_0_o_pue
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_0_o_ds
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_1_i_ival
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_1_o_oval
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_1_o_oe
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_1_o_ie
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_1_o_pue
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_1_o_ds
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_2_i_ival
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_2_o_oval
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_2_o_oe
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_2_o_ie
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_2_o_pue
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_2_o_ds
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_3_i_ival
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_3_o_oval
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_3_o_oe
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_3_o_ie
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_3_o_pue
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_3_o_ds
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_4_i_ival
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_4_o_oval
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_4_o_oe
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_4_o_ie
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_4_o_pue
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_4_o_ds
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_5_i_ival
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_5_o_oval
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_5_o_oe
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_5_o_ie
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_5_o_pue
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_5_o_ds
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_6_i_ival
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_6_o_oval
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_6_o_oe
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_6_o_ie
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_6_o_pue
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_6_o_ds
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_7_i_ival
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_7_o_oval
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_7_o_oe
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_7_o_ie
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_7_o_pue
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_7_o_ds
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_8_i_ival
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_8_o_oval
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_8_o_oe
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_8_o_ie
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_8_o_pue
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_8_o_ds
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_9_i_ival
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_9_o_oval
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_9_o_oe
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_9_o_ie
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_9_o_pue
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_9_o_ds
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_10_i_ival
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_10_o_oval
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_10_o_oe
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_10_o_ie
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_10_o_pue
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_10_o_ds
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_11_i_ival
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_11_o_oval
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_11_o_oe
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_11_o_ie
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_11_o_pue
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_11_o_ds
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_12_i_ival
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_12_o_oval
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_12_o_oe
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_12_o_ie
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_12_o_pue
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_12_o_ds
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_13_i_ival
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_13_o_oval
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_13_o_oe
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_13_o_ie
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_13_o_pue
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_13_o_ds
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_14_i_ival
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_14_o_oval
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_14_o_oe
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_14_o_ie
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_14_o_pue
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_14_o_ds
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_15_i_ival
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_15_o_oval
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_15_o_oe
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_15_o_ie
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_15_o_pue
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_15_o_ds
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_16_i_ival
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_16_o_oval
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_16_o_oe
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_16_o_ie
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_16_o_pue
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_16_o_ds
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_17_i_ival
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_17_o_oval
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_17_o_oe
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_17_o_ie
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_17_o_pue
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_17_o_ds
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_18_i_ival
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_18_o_oval
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_18_o_oe
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_18_o_ie
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_18_o_pue
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_18_o_ds
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_19_i_ival
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_19_o_oval
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_19_o_oe
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_19_o_ie
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_19_o_pue
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_19_o_ds
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_20_i_ival
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_20_o_oval
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_20_o_oe
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_20_o_ie
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_20_o_pue
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_20_o_ds
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_21_i_ival
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_21_o_oval
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_21_o_oe
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_21_o_ie
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_21_o_pue
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_21_o_ds
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_22_i_ival
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_22_o_oval
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_22_o_oe
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_22_o_ie
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_22_o_pue
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_22_o_ds
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_23_i_ival
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_23_o_oval
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_23_o_oe
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_23_o_ie
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_23_o_pue
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_23_o_ds
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_24_i_ival
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_24_o_oval
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_24_o_oe
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_24_o_ie
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_24_o_pue
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_24_o_ds
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_25_i_ival
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_25_o_oval
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_25_o_oe
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_25_o_ie
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_25_o_pue
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_25_o_ds
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_26_i_ival
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_26_o_oval
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_26_o_oe
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_26_o_ie
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_26_o_pue
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_26_o_ds
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_27_i_ival
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_27_o_oval
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_27_o_oe
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_27_o_ie
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_27_o_pue
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_27_o_ds
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_28_i_ival
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_28_o_oval
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_28_o_oe
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_28_o_ie
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_28_o_pue
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_28_o_ds
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_29_i_ival
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_29_o_oval
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_29_o_oe
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_29_o_ie
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_29_o_pue
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_29_o_ds
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_30_i_ival
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_30_o_oval
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_30_o_oe
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_30_o_ie
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_30_o_pue
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_30_o_ds
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_31_i_ival
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_31_o_oval
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_31_o_oe
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_31_o_ie
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_31_o_pue
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_gpio_31_o_ds
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_qspi_sck_o_oval
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_qspi_cs_0_o_oval
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_qspi_dq_0_i_ival
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_qspi_dq_0_o_oval
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_qspi_dq_0_o_oe
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_qspi_dq_0_o_ie
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_qspi_dq_0_o_pue
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_qspi_dq_0_o_ds
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_qspi_dq_1_i_ival
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_qspi_dq_1_o_oval
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_qspi_dq_1_o_oe
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_qspi_dq_1_o_ie
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_qspi_dq_1_o_pue
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_qspi_dq_1_o_ds
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_qspi_dq_2_i_ival
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_qspi_dq_2_o_oval
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_qspi_dq_2_o_oe
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_qspi_dq_2_o_ie
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_qspi_dq_2_o_pue
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_qspi_dq_2_o_ds
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_qspi_dq_3_i_ival
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_qspi_dq_3_o_oval
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_qspi_dq_3_o_oe
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_qspi_dq_3_o_ie
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_qspi_dq_3_o_pue
add wave -noupdate -group soc_top /tb_top/u_ux607_soc_top/io_pads_qspi_dq_3_o_ds
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/por_rst_n
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/sys_rst_n
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/sys_clk
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/aon_clk
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/evt_i
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/nmi_i
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/core_wfi_mode
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/core_sleep_value
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_0_i_ival
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_0_o_oval
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_0_o_oe
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_0_o_ie
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_0_o_pue
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_0_o_ds
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_1_i_ival
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_1_o_oval
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_1_o_oe
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_1_o_ie
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_1_o_pue
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_1_o_ds
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_2_i_ival
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_2_o_oval
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_2_o_oe
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_2_o_ie
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_2_o_pue
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_2_o_ds
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_3_i_ival
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_3_o_oval
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_3_o_oe
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_3_o_ie
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_3_o_pue
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_3_o_ds
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_4_i_ival
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_4_o_oval
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_4_o_oe
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_4_o_ie
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_4_o_pue
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_4_o_ds
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_5_i_ival
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_5_o_oval
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_5_o_oe
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_5_o_ie
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_5_o_pue
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_5_o_ds
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_6_i_ival
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_6_o_oval
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_6_o_oe
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_6_o_ie
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_6_o_pue
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_6_o_ds
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_7_i_ival
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_7_o_oval
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_7_o_oe
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_7_o_ie
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_7_o_pue
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_7_o_ds
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_8_i_ival
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_8_o_oval
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_8_o_oe
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_8_o_ie
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_8_o_pue
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_8_o_ds
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_9_i_ival
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_9_o_oval
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_9_o_oe
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_9_o_ie
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_9_o_pue
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_9_o_ds
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_10_i_ival
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_10_o_oval
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_10_o_oe
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_10_o_ie
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_10_o_pue
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_10_o_ds
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_11_i_ival
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_11_o_oval
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_11_o_oe
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_11_o_ie
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_11_o_pue
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_11_o_ds
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_12_i_ival
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_12_o_oval
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_12_o_oe
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_12_o_ie
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_12_o_pue
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_12_o_ds
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_13_i_ival
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_13_o_oval
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_13_o_oe
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_13_o_ie
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_13_o_pue
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_13_o_ds
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_14_i_ival
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_14_o_oval
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_14_o_oe
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_14_o_ie
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_14_o_pue
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_14_o_ds
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_15_i_ival
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_15_o_oval
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_15_o_oe
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_15_o_ie
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_15_o_pue
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_15_o_ds
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_16_i_ival
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_16_o_oval
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_16_o_oe
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_16_o_ie
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_16_o_pue
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_16_o_ds
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_17_i_ival
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_17_o_oval
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_17_o_oe
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_17_o_ie
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_17_o_pue
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_17_o_ds
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_18_i_ival
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_18_o_oval
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_18_o_oe
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_18_o_ie
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_18_o_pue
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_18_o_ds
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_19_i_ival
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_19_o_oval
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_19_o_oe
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_19_o_ie
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_19_o_pue
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_19_o_ds
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_20_i_ival
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_20_o_oval
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_20_o_oe
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_20_o_ie
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_20_o_pue
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_20_o_ds
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_21_i_ival
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_21_o_oval
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_21_o_oe
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_21_o_ie
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_21_o_pue
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_21_o_ds
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_22_i_ival
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_22_o_oval
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_22_o_oe
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_22_o_ie
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_22_o_pue
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_22_o_ds
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_23_i_ival
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_23_o_oval
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_23_o_oe
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_23_o_ie
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_23_o_pue
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_23_o_ds
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_24_i_ival
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_24_o_oval
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_24_o_oe
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_24_o_ie
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_24_o_pue
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_24_o_ds
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_25_i_ival
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_25_o_oval
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_25_o_oe
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_25_o_ie
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_25_o_pue
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_25_o_ds
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_26_i_ival
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_26_o_oval
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_26_o_oe
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_26_o_ie
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_26_o_pue
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_26_o_ds
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_27_i_ival
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_27_o_oval
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_27_o_oe
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_27_o_ie
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_27_o_pue
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_27_o_ds
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_28_i_ival
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_28_o_oval
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_28_o_oe
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_28_o_ie
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_28_o_pue
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_28_o_ds
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_29_i_ival
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_29_o_oval
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_29_o_oe
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_29_o_ie
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_29_o_pue
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_29_o_ds
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_30_i_ival
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_30_o_oval
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_30_o_oe
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_30_o_ie
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_30_o_pue
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_30_o_ds
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_31_i_ival
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_31_o_oval
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_31_o_oe
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_31_o_ie
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_31_o_pue
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_gpio_31_o_ds
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_qspi_sck_i_ival
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_qspi_sck_o_oval
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_qspi_sck_o_oe
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_qspi_sck_o_ie
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_qspi_sck_o_pue
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_qspi_sck_o_ds
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_qspi_dq_0_i_ival
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_qspi_dq_0_o_oval
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_qspi_dq_0_o_oe
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_qspi_dq_0_o_ie
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_qspi_dq_0_o_pue
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_qspi_dq_0_o_ds
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_qspi_dq_1_i_ival
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_qspi_dq_1_o_oval
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_qspi_dq_1_o_oe
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_qspi_dq_1_o_ie
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_qspi_dq_1_o_pue
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_qspi_dq_1_o_ds
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_qspi_dq_2_i_ival
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_qspi_dq_2_o_oval
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_qspi_dq_2_o_oe
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_qspi_dq_2_o_ie
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_qspi_dq_2_o_pue
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_qspi_dq_2_o_ds
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_qspi_dq_3_i_ival
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_qspi_dq_3_o_oval
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_qspi_dq_3_o_oe
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_qspi_dq_3_o_ie
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_qspi_dq_3_o_pue
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_qspi_dq_3_o_ds
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_qspi_cs_0_i_ival
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_qspi_cs_0_o_oval
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_qspi_cs_0_o_oe
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_qspi_cs_0_o_ie
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_qspi_cs_0_o_pue
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/io_pads_qspi_cs_0_o_ds
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/jtag_tdi
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/jtag_tdo
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/jtag_tms
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/jtag_tck
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/test_mode
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/sysrstreq
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/byp_sys_rst_n
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/final_sys_rst_n_a
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/final_sys_rst_n
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/mtime_toggle_a
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/mtime_toggle_nxt
add wave -noupdate -group subsys_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/reset_vector
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/reset_vector
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/mtime_toggle_a
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/dbg_toggle_a
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/por_rst_n
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/sys_rst_n
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/sys_clk
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/evt_i
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/nmi_i
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/core_wfi_mode
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/core_sleep_value
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/jtag_tck
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/jtag_tms
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/jtag_tdi
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/jtag_tdo
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/sysrstreq
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_0_i_ival
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_0_o_oval
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_0_o_oe
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_0_o_ie
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_0_o_pue
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_0_o_ds
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_1_i_ival
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_1_o_oval
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_1_o_oe
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_1_o_ie
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_1_o_pue
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_1_o_ds
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_2_i_ival
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_2_o_oval
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_2_o_oe
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_2_o_ie
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_2_o_pue
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_2_o_ds
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_3_i_ival
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_3_o_oval
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_3_o_oe
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_3_o_ie
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_3_o_pue
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_3_o_ds
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_4_i_ival
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_4_o_oval
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_4_o_oe
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_4_o_ie
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_4_o_pue
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_4_o_ds
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_5_i_ival
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_5_o_oval
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_5_o_oe
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_5_o_ie
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_5_o_pue
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_5_o_ds
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_6_i_ival
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_6_o_oval
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_6_o_oe
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_6_o_ie
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_6_o_pue
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_6_o_ds
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_7_i_ival
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_7_o_oval
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_7_o_oe
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_7_o_ie
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_7_o_pue
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_7_o_ds
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_8_i_ival
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_8_o_oval
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_8_o_oe
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_8_o_ie
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_8_o_pue
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_8_o_ds
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_9_i_ival
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_9_o_oval
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_9_o_oe
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_9_o_ie
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_9_o_pue
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_9_o_ds
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_10_i_ival
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_10_o_oval
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_10_o_oe
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_10_o_ie
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_10_o_pue
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_10_o_ds
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_11_i_ival
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_11_o_oval
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_11_o_oe
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_11_o_ie
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_11_o_pue
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_11_o_ds
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_12_i_ival
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_12_o_oval
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_12_o_oe
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_12_o_ie
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_12_o_pue
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_12_o_ds
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_13_i_ival
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_13_o_oval
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_13_o_oe
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_13_o_ie
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_13_o_pue
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_13_o_ds
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_14_i_ival
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_14_o_oval
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_14_o_oe
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_14_o_ie
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_14_o_pue
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_14_o_ds
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_15_i_ival
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_15_o_oval
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_15_o_oe
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_15_o_ie
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_15_o_pue
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_15_o_ds
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_16_i_ival
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_16_o_oval
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_16_o_oe
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_16_o_ie
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_16_o_pue
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_16_o_ds
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_17_i_ival
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_17_o_oval
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_17_o_oe
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_17_o_ie
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_17_o_pue
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_17_o_ds
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_18_i_ival
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_18_o_oval
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_18_o_oe
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_18_o_ie
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_18_o_pue
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_18_o_ds
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_19_i_ival
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_19_o_oval
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_19_o_oe
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_19_o_ie
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_19_o_pue
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_19_o_ds
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_20_i_ival
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_20_o_oval
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_20_o_oe
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_20_o_ie
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_20_o_pue
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_20_o_ds
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_21_i_ival
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_21_o_oval
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_21_o_oe
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_21_o_ie
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_21_o_pue
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_21_o_ds
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_22_i_ival
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_22_o_oval
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_22_o_oe
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_22_o_ie
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_22_o_pue
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_22_o_ds
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_23_i_ival
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_23_o_oval
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_23_o_oe
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_23_o_ie
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_23_o_pue
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_23_o_ds
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_24_i_ival
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_24_o_oval
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_24_o_oe
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_24_o_ie
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_24_o_pue
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_24_o_ds
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_25_i_ival
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_25_o_oval
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_25_o_oe
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_25_o_ie
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_25_o_pue
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_25_o_ds
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_26_i_ival
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_26_o_oval
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_26_o_oe
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_26_o_ie
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_26_o_pue
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_26_o_ds
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_27_i_ival
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_27_o_oval
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_27_o_oe
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_27_o_ie
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_27_o_pue
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_27_o_ds
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_28_i_ival
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_28_o_oval
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_28_o_oe
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_28_o_ie
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_28_o_pue
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_28_o_ds
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_29_i_ival
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_29_o_oval
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_29_o_oe
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_29_o_ie
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_29_o_pue
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_29_o_ds
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_30_i_ival
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_30_o_oval
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_30_o_oe
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_30_o_ie
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_30_o_pue
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_30_o_ds
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_31_i_ival
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_31_o_oval
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_31_o_oe
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_31_o_ie
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_31_o_pue
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_gpio_31_o_ds
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_qspi_sck_i_ival
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_qspi_sck_o_oval
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_qspi_sck_o_oe
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_qspi_sck_o_ie
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_qspi_sck_o_pue
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_qspi_sck_o_ds
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_qspi_dq_0_i_ival
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_qspi_dq_0_o_oval
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_qspi_dq_0_o_oe
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_qspi_dq_0_o_ie
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_qspi_dq_0_o_pue
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_qspi_dq_0_o_ds
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_qspi_dq_1_i_ival
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_qspi_dq_1_o_oval
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_qspi_dq_1_o_oe
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_qspi_dq_1_o_ie
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_qspi_dq_1_o_pue
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_qspi_dq_1_o_ds
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_qspi_dq_2_i_ival
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_qspi_dq_2_o_oval
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_qspi_dq_2_o_oe
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_qspi_dq_2_o_ie
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_qspi_dq_2_o_pue
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_qspi_dq_2_o_ds
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_qspi_dq_3_i_ival
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_qspi_dq_3_o_oval
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_qspi_dq_3_o_oe
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_qspi_dq_3_o_ie
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_qspi_dq_3_o_pue
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_qspi_dq_3_o_ds
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_qspi_cs_0_i_ival
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_qspi_cs_0_o_oval
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_qspi_cs_0_o_oe
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_qspi_cs_0_o_ie
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_qspi_cs_0_o_pue
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/io_pads_qspi_cs_0_o_ds
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/test_mode
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/trace_ivalid
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/trace_iexception
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/trace_interrupt
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/trace_cause
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/trace_tval
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/trace_iaddr
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/trace_instr
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/trace_priv
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/trace_bjp_taken
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/trace_dmode
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/ppi_ahbl_clk_en
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/clk_bus
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/bus_clk_en
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/qspi0_irq
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/qspi1_irq
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/qspi2_irq
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/uart0_irq
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/uart1_irq
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/pwm0_irq_0
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/pwm0_irq_1
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/pwm0_irq_2
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/pwm0_irq_3
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/pwm1_irq_0
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/pwm1_irq_1
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/pwm1_irq_2
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/pwm1_irq_3
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/pwm2_irq_0
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/pwm2_irq_1
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/pwm2_irq_2
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/pwm2_irq_3
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/i2c_mst_irq
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/gpio_irq_0
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/gpio_irq_1
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/gpio_irq_2
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/gpio_irq_3
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/gpio_irq_4
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/gpio_irq_5
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/gpio_irq_6
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/gpio_irq_7
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/gpio_irq_8
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/gpio_irq_9
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/gpio_irq_10
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/gpio_irq_11
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/gpio_irq_12
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/gpio_irq_13
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/gpio_irq_14
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/gpio_irq_15
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/gpio_irq_16
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/gpio_irq_17
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/gpio_irq_18
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/gpio_irq_19
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/gpio_irq_20
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/gpio_irq_21
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/gpio_irq_22
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/gpio_irq_23
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/gpio_irq_24
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/gpio_irq_25
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/gpio_irq_26
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/gpio_irq_27
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/gpio_irq_28
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/gpio_irq_29
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/gpio_irq_30
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/gpio_irq_31
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/irq_i
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/ppi_ahbl_htrans
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/ppi_ahbl_hwrite
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/ppi_ahbl_haddr
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/ppi_ahbl_hsize
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/ppi_ahbl_hwdata
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/ppi_ahbl_hprot
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/ppi_ahbl_hrdata
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/ppi_ahbl_hresp
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/ppi_ahbl_hready
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/axi_arready
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/axi_arvalid
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/axi_arid
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/axi_araddr
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/axi_arlen
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/axi_arsize
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/axi_arburst
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/axi_arlock
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/axi_arcache
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/axi_arprot
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/axi_arqos
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/axi_arregion
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/axi_aruser
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/axi_awready
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/axi_awvalid
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/axi_awid
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/axi_awaddr
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/axi_awlen
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/axi_awsize
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/axi_awburst
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/axi_awlock
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/axi_awcache
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/axi_awprot
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/axi_awqos
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/axi_awregion
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/axi_awuser
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/axi_wready
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/axi_wvalid
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/axi_wid
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/axi_wdata
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/axi_wstrb
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/axi_wlast
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/axi_rready
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/axi_rvalid
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/axi_rdata
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/axi_rresp
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/axi_rlast
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/axi_bready
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/axi_bvalid
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/axi_bresp
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o0_axi_arready
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o0_axi_arvalid
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o0_axi_arid
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o0_axi_araddr
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o0_axi_arlen
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o0_axi_arsize
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o0_axi_arburst
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o0_axi_arlock
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o0_axi_arcache
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o0_axi_arprot
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o0_axi_arqos
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o0_axi_arregion
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o0_axi_aruser
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o0_axi_awready
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o0_axi_awvalid
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o0_axi_awid
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o0_axi_awaddr
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o0_axi_awlen
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o0_axi_awsize
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o0_axi_awburst
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o0_axi_awlock
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o0_axi_awcache
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o0_axi_awprot
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o0_axi_awqos
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o0_axi_awregion
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o0_axi_awuser
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o0_axi_wready
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o0_axi_wvalid
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o0_axi_wid
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o0_axi_wdata
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o0_axi_wstrb
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o0_axi_wlast
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o0_axi_rready
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o0_axi_rvalid
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o0_axi_rdata
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o0_axi_rresp
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o0_axi_rlast
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o0_axi_bready
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o0_axi_bvalid
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o0_axi_bresp
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o1_axi_arready
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o1_axi_arvalid
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o1_axi_arid
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o1_axi_araddr
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o1_axi_arlen
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o1_axi_arsize
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o1_axi_arburst
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o1_axi_arlock
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o1_axi_arcache
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o1_axi_arprot
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o1_axi_arqos
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o1_axi_arregion
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o1_axi_aruser
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o1_axi_awready
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o1_axi_awvalid
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o1_axi_awid
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o1_axi_awaddr
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o1_axi_awlen
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o1_axi_awsize
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o1_axi_awburst
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o1_axi_awlock
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o1_axi_awcache
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o1_axi_awprot
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o1_axi_awqos
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o1_axi_awregion
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o1_axi_awuser
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o1_axi_wready
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o1_axi_wvalid
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o1_axi_wid
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o1_axi_wdata
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o1_axi_wstrb
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o1_axi_wlast
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o1_axi_rready
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o1_axi_rvalid
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o1_axi_rdata
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o1_axi_rresp
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o1_axi_rlast
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o1_axi_bready
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o1_axi_bvalid
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/o1_axi_bresp
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/os_axi_arready
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/os_axi_arvalid
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/os_axi_arid
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/os_axi_araddr
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/os_axi_arlen
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/os_axi_arsize
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/os_axi_arburst
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/os_axi_arlock
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/os_axi_arcache
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/os_axi_arprot
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/os_axi_arqos
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/os_axi_arregion
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/os_axi_aruser
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/os_axi_awready
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/os_axi_awvalid
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/os_axi_awid
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/os_axi_awaddr
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/os_axi_awlen
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/os_axi_awsize
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/os_axi_awburst
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/os_axi_awlock
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/os_axi_awcache
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/os_axi_awprot
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/os_axi_awqos
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/os_axi_awregion
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/os_axi_awuser
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/os_axi_wready
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/os_axi_wvalid
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/os_axi_wid
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/os_axi_wdata
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/os_axi_wstrb
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/os_axi_wlast
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/os_axi_rready
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/os_axi_rvalid
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/os_axi_rdata
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/os_axi_rresp
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/os_axi_rlast
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/os_axi_bready
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/os_axi_bvalid
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/os_axi_bresp
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/core_clk
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/core_clk_aon
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/core_clk_aon_en_r
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/random_clken
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/core_wfi_mode_d1
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/core_wfi_mode_d2
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/core_wfi_mode_d3
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/core_wfi_mode_d4
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/core_wfi_mode_d5
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/core_wfi_mode_d6
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/core_wfi_mode_d7
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/core_wfi_mode_d8
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/core_wfi_mode_sim_flag_set
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/core_wfi_mode_sim_flag_clr
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/core_wfi_mode_sim_flag_ena
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/core_wfi_mode_sim_flag_nxt
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/core_wfi_mode_sim_flag_r
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/core_clk_en
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/evt_i_real
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/nmi_i_real
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/irq_i_real
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/aon_wake_up_detct
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/core_clk_aon_en
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/evt_i_r
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/nmi_i_r
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/irq_i_r
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/irq_i_r_r
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/deep_sleep
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/icache_tag0_cs
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/icache_tag0_we
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/icache_tag0_addr
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/icache_tag0_wdata
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/icache_tag0_rdata
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/clk_icache_tag0
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/icache_data0_cs
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/icache_data0_we
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/icache_data0_addr
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/icache_data0_wdata
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/icache_data0_rdata
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/clk_icache_data0
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/icache_tag1_cs
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/icache_tag1_we
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/icache_tag1_addr
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/icache_tag1_wdata
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/icache_tag1_rdata
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/clk_icache_tag1
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/icache_data1_cs
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/icache_data1_we
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/icache_data1_addr
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/icache_data1_wdata
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/icache_data1_rdata
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/clk_icache_data1
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/dcache_disable_init
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/clk_dcache_w0_tram
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/dcache_w0_tram_cs
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/dcache_w0_tram_addr
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/dcache_w0_tram_we
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/dcache_w0_tram_din
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/dcache_w0_tram_dout
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/clk_dcache_w1_tram
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/dcache_w1_tram_cs
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/dcache_w1_tram_addr
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/dcache_w1_tram_we
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/dcache_w1_tram_din
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/dcache_w1_tram_dout
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/clk_dcache_dram_b0
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/dcache_dram_b0_cs
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/dcache_dram_b0_addr
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/dcache_dram_b0_wem
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/dcache_dram_b0_din
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/dcache_dram_b0_dout
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/clk_dcache_dram_b1
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/dcache_dram_b1_cs
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/dcache_dram_b1_addr
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/dcache_dram_b1_wem
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/dcache_dram_b1_din
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/dcache_dram_b1_dout
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/clk_dcache_dram_b2
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/dcache_dram_b2_cs
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/dcache_dram_b2_addr
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/dcache_dram_b2_wem
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/dcache_dram_b2_din
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/dcache_dram_b2_dout
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/clk_dcache_dram_b3
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/dcache_dram_b3_cs
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/dcache_dram_b3_addr
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/dcache_dram_b3_wem
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/dcache_dram_b3_din
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/dcache_dram_b3_dout
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/mmu_disable_init
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/clk_mmu_tlb_way0
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/clk_mmu_tlb_way1
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/mmu_tlb_way0_cs
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/mmu_tlb_way1_cs
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/mmu_tlb_way0_we
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/mmu_tlb_way1_we
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/mmu_tlb_way0_wdata
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/mmu_tlb_way1_wdata
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/mmu_tlb_way0_addr
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/mmu_tlb_way1_addr
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/mmu_tlb_way0_dout
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/mmu_tlb_way1_dout
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/ilm_cs
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/ilm_addr
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/ilm_byte_we
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/ilm_wdata
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/ilm_rdata
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/clk_ilm_ram
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/dlm_cs
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/dlm_addr
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/dlm_byte_we
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/dlm_wdata
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/dlm_rdata
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/clk_dlm_ram
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/dlm0_cs
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/dlm0_addr
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/dlm0_byte_we
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/dlm0_wdata
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/dlm0_rdata
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/dlm1_cs
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/dlm1_addr
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/dlm1_byte_we
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/dlm1_wdata
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/dlm1_rdata
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/biu2dlm_icb_cmd_valid
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/biu2dlm_icb_cmd_ready
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/biu2dlm_icb_cmd_addr
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/biu2dlm_icb_cmd_read
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/biu2dlm_icb_cmd_wdata
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/biu2dlm_icb_cmd_wmask
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/biu2dlm_icb_rsp_valid
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/biu2dlm_icb_rsp_ready
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/biu2dlm_icb_rsp_err
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/biu2dlm_icb_rsp_rdata
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/qspi0_ro_icb_cmd_valid
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/qspi0_ro_icb_cmd_ready
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/qspi0_ro_icb_cmd_addr
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/qspi0_ro_icb_cmd_read
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/qspi0_ro_icb_cmd_wdata
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/qspi0_ro_icb_rsp_valid
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/qspi0_ro_icb_rsp_ready
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/qspi0_ro_icb_rsp_rdata
add wave -noupdate -group subsys_main /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/ppi_region_indic
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mem_arlock
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/ppi_ahbl_htrans
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/ppi_ahbl_hwrite
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/ppi_ahbl_haddr
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/ppi_ahbl_hsize
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/ppi_ahbl_hwdata
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/ppi_ahbl_hprot
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/ppi_ahbl_hrdata
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/ppi_ahbl_hresp
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/ppi_ahbl_hready
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/ppi_ahbl_clk_en
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/ilm_cs
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/ilm_byte_we
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/ilm_wdata
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/ilm_rdata
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/trace_cause
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/clk_ilm_ram
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/ilm_addr
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/trace_iaddr
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/trace_instr
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/vapgj050raiah87lnzt_a
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/trace_ivalid
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/trace_iexception
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/trace_interrupt
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/trace_tval
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/trace_priv
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/trace_bjp_taken
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/trace_dmode
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dlm0_cs
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dlm0_addr
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dlm0_byte_we
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dlm0_wdata
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dlm0_rdata
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/clk_dlm0_ram
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dlm1_cs
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dlm1_addr
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dlm1_byte_we
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dlm1_wdata
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/y0jaju01t8mqh2ycz05limpxfu
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dlm1_rdata
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/jtag_TCK
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/jtag_TMS
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/jtag_TDI
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/jtag_TDO
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/jtag_DRV_TDO
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/hart_halted
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/i_dbg_stop
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/override_dm_sleep
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/sysrstreq
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/core_clk_aon
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/core_clk
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/core_reset_n
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/por_reset_n
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/reset_bypass
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/clkgate_bypass
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/nmi
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mtime_toggle_a
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dbg_toggle_a
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/irq_i
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mem_arready
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mem_arvalid
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mem_araddr
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mem_arlen
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mem_arsize
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mem_arburst
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mem_arcache
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mem_arprot
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mem_awready
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mem_awvalid
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mem_awaddr
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mem_awlen
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mem_awsize
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mem_awburst
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mem_awlock
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mem_awcache
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mem_awprot
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mem_wready
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mem_wvalid
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mem_wdata
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mem_wstrb
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mem_wlast
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mem_rready
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mem_rvalid
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mem_rdata
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mem_rresp
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mem_rlast
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mem_bready
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mem_bvalid
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mem_bresp
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mem_clk_en
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dlm0_cs
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dlm0_addr
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dlm0_byte_we
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dlm0_wdata
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dlm0_rdata
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/clk_dlm0_ram
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dlm1_cs
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dlm1_addr
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dlm1_byte_we
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dlm1_wdata
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dlm1_rdata
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/clk_dlm1_ram
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/icache_disable_init
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/icache_tag0_cs
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/icache_tag0_we
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/icache_tag0_addr
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/icache_tag0_wdata
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/icache_tag0_rdata
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/clk_icache_tag0
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/icache_data0_cs
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/icache_data0_we
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/icache_data0_addr
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/icache_data0_wdata
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/icache_data0_rdata
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/clk_icache_data0
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/icache_tag1_cs
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/icache_tag1_we
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/icache_tag1_addr
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/icache_tag1_wdata
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/icache_tag1_rdata
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/clk_icache_tag1
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/icache_data1_cs
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/icache_data1_we
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/icache_data1_addr
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/icache_data1_wdata
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/icache_data1_rdata
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/clk_icache_data1
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dcache_disable_init
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/clk_dcache_w0_tram
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dcache_w0_tram_cs
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dcache_w0_tram_addr
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dcache_w0_tram_we
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dcache_w0_tram_din
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dcache_w0_tram_dout
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/clk_dcache_w1_tram
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dcache_w1_tram_cs
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dcache_w1_tram_addr
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dcache_w1_tram_we
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dcache_w1_tram_din
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dcache_w1_tram_dout
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/clk_dcache_dram_b0
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dcache_dram_b0_cs
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dcache_dram_b0_addr
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dcache_dram_b0_wem
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dcache_dram_b0_din
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dcache_dram_b0_dout
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/clk_dcache_dram_b1
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dcache_dram_b1_cs
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dcache_dram_b1_addr
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dcache_dram_b1_wem
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dcache_dram_b1_din
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dcache_dram_b1_dout
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/clk_dcache_dram_b2
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dcache_dram_b2_cs
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dcache_dram_b2_addr
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dcache_dram_b2_wem
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dcache_dram_b2_din
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dcache_dram_b2_dout
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/clk_dcache_dram_b3
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dcache_dram_b3_cs
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dcache_dram_b3_addr
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dcache_dram_b3_wem
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dcache_dram_b3_din
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dcache_dram_b3_dout
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mmu_tlb_disable_init
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/clk_mmu_tlb_way0
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/clk_mmu_tlb_way1
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mmu_tlb_way0_cs
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mmu_tlb_way1_cs
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mmu_tlb_way0_we
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mmu_tlb_way1_we
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mmu_tlb_way0_wdata
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mmu_tlb_way1_wdata
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mmu_tlb_way0_addr
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mmu_tlb_way1_addr
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mmu_tlb_way0_dout
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mmu_tlb_way1_dout
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/tx_evt
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/rx_evt
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/hart_id
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/reset_vector
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/core_wfi_mode
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/core_sleep_value
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/exu_i_valid
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/exu_i_ready
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/x3
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/alu_cmt_i_valid
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/alu_cmt_i_pc
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mscratch_ena
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mscratch_nxt
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/sscratch_ena
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/sscratch_nxt
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/c4boo209
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/yukl2
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/zmxoq9ga
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mtip
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/msip
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/x_cq40qmp6a
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/uc5qxb4d2b28ye5
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/o2qkf90r783
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/rn1o3sl83
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/z1l80uwh6vyyg34
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/zz5wo47gw146x4
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/fgr486jx5kevbua
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/pvfk1_6o89lmby
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/xx87vzbpchg
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/rst_aon
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/clic_int_mode
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/w00ret5k22yud
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/ff_heo9iuk1_06
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/nws29bnqq53
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/le41_affnsq6
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/kxmsn0p4ualeps
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/ujj9wb8hyzso
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/j_r1zrxno8j
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/kjc1hiyz
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/rb077g2alw88
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/o5q5hev
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/c8fchlpwl
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/fid1178x5nxb
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/klwwlfrft
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/oi60pknul
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/h7fseh5_df0hbx
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/e5fbibk7anp8xhvl52n0ajx2
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/h8xul8_er09on
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/emc_bywzarijbo
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/umnrzb6pv8dzc
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/nv5a7f_68p9ebw
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/bebngvg8sove
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/ip80u6bjne
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/qz0hhqemjh
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/imsbh3sgxkg4
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/vlb2az38tbnj4
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/u_ll4hq1b12s2i1
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/w41ourymsjpvm8q1e
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/de1sbr3kjbswue
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/nm83rtc_qty
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/j4xe_w_yjq2
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/j2t29hqv0s6c7
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/aui65oshqn8b5_iz6
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/jmoafuo8zb_i1t
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/sa5of37yr6xn0s3e
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/o_dsdljul
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/juyzxopct4k03sl
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/qyqw_37_fxv8z
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/hyw0m71z3q3rpt1
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/fx_h7chccf02z
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/e592323mqvany
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/erv7j3wmd3gb_dp
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/wz_if_2q_23jhl2
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/n1wslu68m9v
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dyl5g2vgrvy4mb3
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/viuu21jzrv
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/trtkzwpsx6l
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/h87jx93oz7
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/bf61lpqg8z
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dnl01g_
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/b7ch4h6nrw1vm0
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/rcernpf1zf4
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/y12wg4mlovhn13
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/ais_l7yddpa00
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/b13zu8ysd3u
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/itcmps0ezqld
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/j0qaxhuqtdi
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/pbzpk52jinfscit4mm
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/gwj6ow6qvbhs0tc31
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mm0ssgy582fv_j
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/iwdkm52x_w4hpak_a2_w
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/ir2913p9xpmq_1bvfd1
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/bsjo0v5e0t556pph
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mwegg_7inaca6povsw
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/wnkp7091zrsevkbl
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/qeb3z0x5
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/ibhfuwrztbm8p4gg
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/i8_5wt0vppx
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/osv2437qj_3nuf
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/b7g_vsn0zoewh6g1
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/onnv64ydiajl
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/r21i4by0bu3ks
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/hn85hkp2yav
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/rn2mt6nngsc9w5cz
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/c5ewdqztjw9za
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/t5trf35s8vy
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/zbac123pv78sbz3
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/z4e_m564fxae0kpbjr
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/zmwq3e9oijvo7d7
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/hixy2y36a1pn0
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/ozwene1gdpatk6g
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/sxvvsxtbhyvt
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/azll7rq5fab5ou
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/n6a0r_0zddzrme8
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/ns0i7siujgkrghjpqv6
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/um8zsjyxn_4p
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/wex3zbl1x6s4be1en
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/pszbl2iobld50k
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/vfuu2l_7oof31qn0_a
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/bvy9o58rgxtbjz_xph
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/gcpthp2sfxb3cxo
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/xzjdk5deciqs4l3my_l
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/peug05ptx4vv93u4xc
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dlg9f36umgj9xdv0wa
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/yienty7ycnc25au
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/rxlx2eq69oye0ba3
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/j2amhrzbhku8dzd
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/resethaltreq
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/fkm9up63o1aeauaqhjb
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/to_1lv9wnb3vmu6tvz5rc
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/ju1kbeplcqy314lfj4
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/r985fbe5k7hgzaq9i
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/bb04gpwotp2s6c7_p1gqkq
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/sqmey185cu3mtixhl
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/rffcsd1o699ytclmx
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/lbr88vbqtg8rht7320frde
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/g7qq38mx3d58n1b15kcia
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/demg_fwfkmaeawq30t
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/grtb6ypa0px2gi1c
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/f128d8ws0seoihu1
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/m2r7mfmq3afdd1ine
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/nhafiywg3hg_52kogwh
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/xrqayy6vigrw66z8a
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/jyy72ywt9nbo10f2jxupacld
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/drz92qecqx_qtxwro
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/st4f16aums5
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/p05ld2ghmwh
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/q4gqhurcazjpsf4h
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/a02zzbowpjn06h
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/jzwasdy8fj0howe
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/l9z66pxhit_o_1iyjp
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/jdh22q4xq9e7wiznv
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/y_z_yc9_f4ppblmsch3z5
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/nmp2x4e8pl59l6he_f9_
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/yc7tq3wh6q569ueq7i07em
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/yfy18a1ju6mptqd0_u
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/gducqncehu9g7n4lydij_0
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dd_gpw58ph81_864rnspr
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/nhzg88_kzsk0fbtrtku
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/ixpwz6oo67i61vepd74
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/t7hb1k3tkjzooetwf
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/da2pgeraioxt6edc
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/u2fwd1l2_bdiuiftn
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/ooqxby68qkbvkc5xteznb_x
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/zhr6liff5rm5wfulyyq
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/xlsvmbo_v42zk9mypgihxz
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/pzv82u11m6kxelyx220ilq5
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/yhhbbaf9pqjys_bjgq6h4gj
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/qbaqr2mf9nkictp7plgs
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/ijehxhtls_byykogg4h
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/ylsn7ect00nktb3n8gy6
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/etkmv0abc25lclz_o85
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/txrvwlqb8aeb5k6eo4p0tb2
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/q8mbpl9ben1u54xn_d
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/igk23ds0cu4_sziqf
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/rsvzuajc8qp4__n0807
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/dz0zrf512290tvcy4q
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/core_in_int
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mnxti_valid_taken
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mip_pmovi
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mip_imecci
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/clic_irq_r
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/clic_irq_id
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/clic_irq_shv
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mintstatus_mil_r
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/clic_irq_lvl
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/znzjygllppv1s0a8cqub3c
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/aw82i964do
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/y8_gkxsfle
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/fzdb65fcrotwcaccus_cwo
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/tcy_87vt9vet39knuw
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/fc_4ns_w1nh4h02z_dgg
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/jqsukc5b5drcc1e78
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/gnn46rd7vvofruqij
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/sc9dq6vpj_vb3unfw0
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/ni7lsi0fuchbbgfizw0l
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/cvmgqobwfiy_kwo814x
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/h_htd26ozpf1rjy0gsvy
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/gbzyzsndu75k8rua21_v9c
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/w2e5ixihsvl50pgq6b4
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/tl_6em2dyajt9yrv4j794c
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mf1rr9vurug23q2qsrv
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/m1vcvvn1ntgzmmwe1bse
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/f20ikomgiyzoonhphcz
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/q7emifz3jwxt_jv0_w
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/l1hbm4iglo7pz0pdg_ayjs
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/bm7mey1b6dibd5i6lfpukeue
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/a8h5u6ohzhowdrvqrnlllzd70h
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/pz92yc3xo60c49ayrztvq18a
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/pwzrcrecvxehn8htjdn3kv2d0
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/ksa323b46ngmxwazg70t76
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/bs4xe3ath5_4_iwylkfwppp
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/njyud2m27xz7r6j0g0ieq17m
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/m5itqssum7ljklhpn5nvzvd93
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/kkk0rwd1njowzq01nvxke
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/a2kttuidwhopy02uoajaf
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/g4hx0dbyp7f7ou8x02a0
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/zce_icdtm3r9hzeanwhlu3fv
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/jkp1oke9n1q9ikytwx_7k
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/mu3ut_ezr05qz2bbi7_vc_aod
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/sk3bm3yc69h4ac84pc4killh
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/b7g_hkjxumf964flze01v6p
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/cmtnwdaxz9zk1858kalga2vt
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/qjvmrd1013dapqkahq_f87b
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/x0i6aykuzxn1t7_hyw9s7r4to
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/pbyudse8quydhisrzo9pbl4
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/cvksl3f95u8b10a3rmr6qvom
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/togorwkvhfveb6zwndvww
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/i036i6j05gm5ht39aak7k
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/xubhke6y45gk7d9bj7c1022icq
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/nao0kbyh1yex0kg7uycyc
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/c8u60qjfyfel53grl6lmf5_3
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/vhl77l_vrkmhgbq9nx8p8ix
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/sedkfhar7baq5_wmvydzjmit2
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/sf4u33sbbh0akueinpc6j4ly8ue
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/ndsqg7zrec89ncrv9yu3k
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/eth8quxx9hhjhxr4u9k2s77f
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/zw6mbnvv_8hcztypnytp87v_vy
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/l_s_khzs83700pzjuq3_obo44
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/kyvscpwy0vljnwysfxqxb
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/sl5cpfvi658e8pl6nh2cm4
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/tmqgi_fx924f3bq8ms4u8t0
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/tcrjx_8vlmtrlqjvk3tu
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/y0jaju01t8mqh2ycz05limpxfu
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/x88dy7qz1z117o2jmbslutlpm
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/kykdx6vx9n3hm7k6oybv
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/b59iokn7e2645ocyqifdk6sp1
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/xs2l1_f3yynnrl_rw2zbe
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/hf8rqlrzsk0e9ho4orde_r
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/opns8_xijy8grr0gygeszh
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/hng3_y3ldjtyu4a9n45
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/y1ovf4ea_l0kgs84_pwk6czrs
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/n6fa00b9i708mtqu7yc9wjvxip
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/nwk1l6uz4
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/ir_9aedxd8
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/pcr4upio7_tx37
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/uzklqlncpqqm1rav
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/ortueunvnkx_l5m_j
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/hwuhtb7ucto_utk56
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/i1env2kmns7qvvuuc
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/g3s3vpafvy3i
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/z6tf8fwcfv0tw03
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/r6tkd_53z
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/cyop0l7lnv6j3
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/g9h1mnhtsaduuk
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/pyxv3lgda85n
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/k90knfo82df2l
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/fcjh1nct4r
add wave -noupdate -expand -group core /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_core/t71as51n
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/ppi_ahbl_htrans
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/ppi_ahbl_hwrite
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/ppi_ahbl_haddr
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/ppi_ahbl_hsize
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/ppi_ahbl_hwdata
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/ppi_ahbl_hprot
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/ppi_ahbl_hrdata
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/ppi_ahbl_hresp
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/ppi_ahbl_hready
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi0_ro_icb_cmd_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi0_ro_icb_cmd_ready
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi0_ro_icb_cmd_addr
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi0_ro_icb_cmd_read
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi0_ro_icb_cmd_wdata
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi0_ro_icb_rsp_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi0_ro_icb_rsp_ready
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi0_ro_icb_rsp_rdata
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_0_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_0_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_0_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_0_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_0_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_0_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_1_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_1_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_1_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_1_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_1_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_1_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_2_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_2_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_2_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_2_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_2_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_2_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_3_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_3_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_3_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_3_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_3_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_3_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_4_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_4_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_4_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_4_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_4_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_4_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_5_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_5_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_5_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_5_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_5_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_5_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_6_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_6_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_6_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_6_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_6_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_6_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_7_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_7_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_7_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_7_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_7_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_7_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_8_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_8_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_8_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_8_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_8_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_8_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_9_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_9_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_9_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_9_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_9_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_9_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_10_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_10_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_10_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_10_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_10_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_10_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_11_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_11_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_11_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_11_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_11_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_11_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_12_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_12_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_12_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_12_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_12_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_12_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_13_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_13_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_13_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_13_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_13_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_13_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_14_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_14_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_14_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_14_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_14_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_14_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_15_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_15_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_15_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_15_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_15_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_15_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_16_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_16_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_16_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_16_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_16_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_16_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_17_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_17_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_17_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_17_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_17_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_17_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_18_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_18_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_18_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_18_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_18_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_18_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_19_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_19_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_19_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_19_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_19_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_19_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_20_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_20_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_20_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_20_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_20_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_20_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_21_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_21_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_21_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_21_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_21_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_21_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_22_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_22_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_22_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_22_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_22_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_22_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_23_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_23_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_23_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_23_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_23_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_23_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_24_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_24_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_24_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_24_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_24_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_24_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_25_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_25_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_25_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_25_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_25_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_25_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_26_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_26_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_26_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_26_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_26_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_26_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_27_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_27_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_27_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_27_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_27_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_27_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_28_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_28_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_28_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_28_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_28_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_28_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_29_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_29_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_29_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_29_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_29_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_29_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_30_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_30_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_30_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_30_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_30_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_30_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_31_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_31_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_31_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_31_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_31_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_gpio_31_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_qspi_sck_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_qspi_sck_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_qspi_sck_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_qspi_sck_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_qspi_sck_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_qspi_sck_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_qspi_dq_0_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_qspi_dq_0_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_qspi_dq_0_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_qspi_dq_0_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_qspi_dq_0_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_qspi_dq_0_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_qspi_dq_1_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_qspi_dq_1_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_qspi_dq_1_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_qspi_dq_1_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_qspi_dq_1_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_qspi_dq_1_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_qspi_dq_2_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_qspi_dq_2_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_qspi_dq_2_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_qspi_dq_2_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_qspi_dq_2_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_qspi_dq_2_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_qspi_dq_3_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_qspi_dq_3_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_qspi_dq_3_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_qspi_dq_3_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_qspi_dq_3_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_qspi_dq_3_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_qspi_cs_0_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_qspi_cs_0_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_qspi_cs_0_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_qspi_cs_0_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_qspi_cs_0_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/io_pads_qspi_cs_0_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi0_irq
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi1_irq
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi2_irq
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/uart0_irq
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/uart1_irq
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm0_irq_0
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm0_irq_1
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm0_irq_2
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm0_irq_3
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm1_irq_0
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm1_irq_1
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm1_irq_2
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm1_irq_3
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm2_irq_0
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm2_irq_1
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm2_irq_2
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm2_irq_3
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/i2c_mst_irq
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_irq_0
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_irq_1
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_irq_2
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_irq_3
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_irq_4
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_irq_5
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_irq_6
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_irq_7
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_irq_8
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_irq_9
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_irq_10
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_irq_11
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_irq_12
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_irq_13
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_irq_14
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_irq_15
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_irq_16
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_irq_17
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_irq_18
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_irq_19
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_irq_20
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_irq_21
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_irq_22
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_irq_23
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_irq_24
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_irq_25
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_irq_26
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_irq_27
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_irq_28
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_irq_29
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_irq_30
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_irq_31
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/clk
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/bus_rst_n
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/rst_n
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/ppi_icb_cmd_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/ppi_icb_cmd_ready
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/ppi_icb_cmd_addr
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/ppi_icb_cmd_read
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/ppi_icb_cmd_wdata
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/ppi_icb_cmd_wmask
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/ppi_icb_rsp_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/ppi_icb_rsp_ready
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/ppi_icb_rsp_err
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/ppi_icb_rsp_rdata
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/i2c_scl_pad_i
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/i2c_scl_pad_o
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/i2c_scl_padoen_o
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/i2c_sda_pad_i
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/i2c_sda_pad_o
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/i2c_sda_padoen_o
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm0_gpio_0
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm0_gpio_1
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm0_gpio_2
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm0_gpio_3
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm1_gpio_0
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm1_gpio_1
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm1_gpio_2
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm1_gpio_3
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm2_gpio_0
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm2_gpio_1
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm2_gpio_2
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm2_gpio_3
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi0_sck
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi0_dq_0_i
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi0_dq_0_o
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi0_dq_0_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi0_dq_1_i
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi0_dq_1_o
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi0_dq_1_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi0_dq_2_i
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi0_dq_2_o
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi0_dq_2_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi0_dq_3_i
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi0_dq_3_o
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi0_dq_3_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi0_cs_0
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi1_sck
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi1_dq_0_i
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi1_dq_0_o
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi1_dq_0_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi1_dq_1_i
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi1_dq_1_o
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi1_dq_1_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi1_dq_2_i
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi1_dq_2_o
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi1_dq_2_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi1_dq_3_i
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi1_dq_3_o
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi1_dq_3_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi1_cs_0
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi1_cs_1
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi1_cs_2
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi1_cs_3
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi2_sck
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi2_dq_0_i
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi2_dq_0_o
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi2_dq_0_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi2_dq_1_i
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi2_dq_1_o
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi2_dq_1_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi2_dq_2_i
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi2_dq_2_o
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi2_dq_2_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi2_dq_3_i
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi2_dq_3_o
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi2_dq_3_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi2_cs_0
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_0_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_0_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_0_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_0_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_0_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_1_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_1_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_1_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_1_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_1_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_2_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_2_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_2_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_2_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_2_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_3_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_3_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_3_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_3_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_3_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_4_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_4_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_4_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_4_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_4_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_5_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_5_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_5_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_5_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_5_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_6_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_6_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_6_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_6_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_6_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_7_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_7_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_7_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_7_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_7_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_8_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_8_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_8_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_8_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_8_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_9_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_9_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_9_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_9_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_9_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_10_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_10_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_10_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_10_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_10_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_11_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_11_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_11_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_11_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_11_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_12_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_12_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_12_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_12_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_12_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_13_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_13_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_13_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_13_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_13_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_14_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_14_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_14_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_14_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_14_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_15_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_15_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_15_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_15_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_15_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_16_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_16_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_16_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_16_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_16_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_17_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_17_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_17_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_17_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_17_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_18_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_18_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_18_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_18_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_18_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_19_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_19_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_19_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_19_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_19_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_20_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_20_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_20_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_20_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_20_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_21_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_21_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_21_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_21_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_21_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_22_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_22_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_22_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_22_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_22_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_23_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_23_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_23_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_23_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_23_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_24_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_24_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_24_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_24_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_24_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_25_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_25_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_25_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_25_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_25_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_26_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_26_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_26_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_26_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_26_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_27_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_27_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_27_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_27_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_27_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_28_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_28_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_28_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_28_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_28_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_29_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_29_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_29_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_29_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_29_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_30_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_30_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_30_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_30_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_30_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_31_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_31_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_31_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_31_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_0_31_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_0_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_0_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_0_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_0_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_0_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_1_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_1_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_1_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_1_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_1_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_2_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_2_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_2_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_2_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_2_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_3_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_3_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_3_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_3_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_3_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_4_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_4_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_4_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_4_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_4_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_5_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_5_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_5_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_5_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_5_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_6_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_6_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_6_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_6_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_6_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_7_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_7_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_7_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_7_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_7_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_8_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_8_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_8_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_8_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_8_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_9_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_9_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_9_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_9_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_9_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_10_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_10_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_10_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_10_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_10_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_11_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_11_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_11_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_11_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_11_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_12_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_12_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_12_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_12_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_12_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_13_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_13_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_13_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_13_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_13_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_14_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_14_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_14_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_14_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_14_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_15_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_15_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_15_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_15_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_15_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_16_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_16_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_16_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_16_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_16_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_17_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_17_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_17_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_17_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_17_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_18_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_18_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_18_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_18_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_18_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_19_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_19_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_19_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_19_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_19_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_20_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_20_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_20_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_20_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_20_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_21_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_21_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_21_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_21_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_21_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_22_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_22_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_22_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_22_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_22_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_23_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_23_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_23_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_23_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_23_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_24_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_24_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_24_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_24_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_24_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_25_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_25_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_25_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_25_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_25_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_26_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_26_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_26_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_26_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_26_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_27_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_27_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_27_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_27_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_27_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_28_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_28_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_28_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_28_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_28_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_29_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_29_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_29_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_29_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_29_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_30_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_30_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_30_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_30_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_30_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_31_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_31_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_31_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_31_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_iof_1_31_o_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/uart0_txd
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/uart0_rxd
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/uart_pins_0_io_pins_rxd_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/uart_pins_0_io_pins_rxd_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/uart_pins_0_io_pins_rxd_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/uart_pins_0_io_pins_rxd_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/uart_pins_0_io_pins_rxd_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/uart_pins_0_io_pins_rxd_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/uart_pins_0_io_pins_txd_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/uart_pins_0_io_pins_txd_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/uart_pins_0_io_pins_txd_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/uart_pins_0_io_pins_txd_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/uart_pins_0_io_pins_txd_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/uart_pins_0_io_pins_txd_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/uart1_txd
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/uart1_rxd
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/uart_pins_1_io_pins_rxd_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/uart_pins_1_io_pins_rxd_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/uart_pins_1_io_pins_rxd_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/uart_pins_1_io_pins_rxd_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/uart_pins_1_io_pins_rxd_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/uart_pins_1_io_pins_rxd_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/uart_pins_1_io_pins_txd_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/uart_pins_1_io_pins_txd_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/uart_pins_1_io_pins_txd_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/uart_pins_1_io_pins_txd_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/uart_pins_1_io_pins_txd_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/uart_pins_1_io_pins_txd_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_0_io_pins_pwm_0_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_0_io_pins_pwm_0_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_0_io_pins_pwm_0_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_0_io_pins_pwm_0_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_0_io_pins_pwm_0_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_0_io_pins_pwm_0_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_0_io_pins_pwm_1_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_0_io_pins_pwm_1_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_0_io_pins_pwm_1_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_0_io_pins_pwm_1_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_0_io_pins_pwm_1_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_0_io_pins_pwm_1_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_0_io_pins_pwm_2_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_0_io_pins_pwm_2_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_0_io_pins_pwm_2_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_0_io_pins_pwm_2_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_0_io_pins_pwm_2_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_0_io_pins_pwm_2_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_0_io_pins_pwm_3_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_0_io_pins_pwm_3_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_0_io_pins_pwm_3_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_0_io_pins_pwm_3_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_0_io_pins_pwm_3_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_0_io_pins_pwm_3_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_1_io_pins_pwm_0_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_1_io_pins_pwm_0_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_1_io_pins_pwm_0_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_1_io_pins_pwm_0_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_1_io_pins_pwm_0_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_1_io_pins_pwm_0_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_1_io_pins_pwm_1_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_1_io_pins_pwm_1_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_1_io_pins_pwm_1_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_1_io_pins_pwm_1_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_1_io_pins_pwm_1_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_1_io_pins_pwm_1_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_1_io_pins_pwm_2_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_1_io_pins_pwm_2_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_1_io_pins_pwm_2_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_1_io_pins_pwm_2_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_1_io_pins_pwm_2_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_1_io_pins_pwm_2_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_1_io_pins_pwm_3_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_1_io_pins_pwm_3_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_1_io_pins_pwm_3_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_1_io_pins_pwm_3_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_1_io_pins_pwm_3_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_1_io_pins_pwm_3_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_2_io_pins_pwm_0_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_2_io_pins_pwm_0_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_2_io_pins_pwm_0_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_2_io_pins_pwm_0_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_2_io_pins_pwm_0_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_2_io_pins_pwm_0_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_2_io_pins_pwm_1_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_2_io_pins_pwm_1_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_2_io_pins_pwm_1_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_2_io_pins_pwm_1_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_2_io_pins_pwm_1_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_2_io_pins_pwm_1_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_2_io_pins_pwm_2_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_2_io_pins_pwm_2_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_2_io_pins_pwm_2_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_2_io_pins_pwm_2_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_2_io_pins_pwm_2_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_2_io_pins_pwm_2_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_2_io_pins_pwm_3_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_2_io_pins_pwm_3_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_2_io_pins_pwm_3_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_2_io_pins_pwm_3_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_2_io_pins_pwm_3_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm_pins_2_io_pins_pwm_3_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_sck_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_sck_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_sck_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_sck_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_sck_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_sck_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_dq_0_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_dq_0_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_dq_0_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_dq_0_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_dq_0_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_dq_0_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_dq_1_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_dq_1_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_dq_1_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_dq_1_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_dq_1_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_dq_1_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_dq_2_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_dq_2_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_dq_2_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_dq_2_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_dq_2_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_dq_2_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_dq_3_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_dq_3_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_dq_3_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_dq_3_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_dq_3_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_dq_3_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_cs_0_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_cs_0_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_cs_0_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_cs_0_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_cs_0_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_cs_0_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_cs_1_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_cs_1_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_cs_1_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_cs_1_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_cs_1_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_cs_1_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_cs_2_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_cs_2_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_cs_2_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_cs_2_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_cs_2_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_cs_2_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_cs_3_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_cs_3_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_cs_3_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_cs_3_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_cs_3_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_0_io_pins_cs_3_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_1_io_pins_sck_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_1_io_pins_sck_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_1_io_pins_sck_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_1_io_pins_sck_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_1_io_pins_sck_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_1_io_pins_sck_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_1_io_pins_dq_0_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_1_io_pins_dq_0_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_1_io_pins_dq_0_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_1_io_pins_dq_0_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_1_io_pins_dq_0_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_1_io_pins_dq_0_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_1_io_pins_dq_1_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_1_io_pins_dq_1_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_1_io_pins_dq_1_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_1_io_pins_dq_1_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_1_io_pins_dq_1_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_1_io_pins_dq_1_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_1_io_pins_dq_2_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_1_io_pins_dq_2_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_1_io_pins_dq_2_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_1_io_pins_dq_2_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_1_io_pins_dq_2_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_1_io_pins_dq_2_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_1_io_pins_dq_3_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_1_io_pins_dq_3_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_1_io_pins_dq_3_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_1_io_pins_dq_3_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_1_io_pins_dq_3_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_1_io_pins_dq_3_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_1_io_pins_cs_0_i_ival
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_1_io_pins_cs_0_o_oval
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_1_io_pins_cs_0_o_oe
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_1_io_pins_cs_0_o_ie
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_1_io_pins_cs_0_o_pue
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/spi_pins_1_io_pins_cs_0_o_ds
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_icb_cmd_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_icb_cmd_ready
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_icb_cmd_addr
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_icb_cmd_read
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_icb_cmd_wdata
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_icb_rsp_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_icb_rsp_ready
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/gpio_icb_rsp_rdata
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/uart0_icb_cmd_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/uart0_icb_cmd_ready
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/uart0_icb_cmd_addr
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/uart0_icb_cmd_read
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/uart0_icb_cmd_wdata
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/uart0_icb_rsp_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/uart0_icb_rsp_ready
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/uart0_icb_rsp_rdata
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi0_icb_cmd_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi0_icb_cmd_ready
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi0_icb_cmd_addr
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi0_icb_cmd_read
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi0_icb_cmd_wdata
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi0_icb_rsp_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi0_icb_rsp_ready
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi0_icb_rsp_rdata
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm0_icb_cmd_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm0_icb_cmd_ready
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm0_icb_cmd_addr
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm0_icb_cmd_read
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm0_icb_cmd_wdata
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm0_icb_rsp_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm0_icb_rsp_ready
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm0_icb_rsp_rdata
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/uart1_icb_cmd_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/uart1_icb_cmd_ready
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/uart1_icb_cmd_addr
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/uart1_icb_cmd_read
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/uart1_icb_cmd_wdata
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/uart1_icb_rsp_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/uart1_icb_rsp_ready
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/uart1_icb_rsp_rdata
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi1_icb_cmd_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi1_icb_cmd_ready
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi1_icb_cmd_addr
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi1_icb_cmd_read
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi1_icb_cmd_wdata
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi1_icb_rsp_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi1_icb_rsp_ready
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi1_icb_rsp_rdata
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm1_icb_cmd_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm1_icb_cmd_ready
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm1_icb_cmd_addr
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm1_icb_cmd_read
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm1_icb_cmd_wdata
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm1_icb_rsp_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm1_icb_rsp_ready
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm1_icb_rsp_rdata
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi2_icb_cmd_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi2_icb_cmd_ready
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi2_icb_cmd_addr
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi2_icb_cmd_read
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi2_icb_cmd_wdata
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi2_icb_rsp_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi2_icb_rsp_ready
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/qspi2_icb_rsp_rdata
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm2_icb_cmd_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm2_icb_cmd_ready
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm2_icb_cmd_addr
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm2_icb_cmd_read
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm2_icb_cmd_wdata
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm2_icb_rsp_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm2_icb_rsp_ready
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/pwm2_icb_rsp_rdata
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/i2c_wishb_icb_cmd_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/i2c_wishb_icb_cmd_ready
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/i2c_wishb_icb_cmd_addr
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/i2c_wishb_icb_cmd_read
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/i2c_wishb_icb_cmd_wdata
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/i2c_wishb_icb_cmd_wmask
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/i2c_wishb_icb_rsp_valid
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/i2c_wishb_icb_rsp_ready
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/i2c_wishb_icb_rsp_rdata
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/i2c_wishb_icb_rsp_err
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/i2c_wishb_adr
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/i2c_wishb_dat_w
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/i2c_wishb_dat_r
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/i2c_wishb_we
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/i2c_wishb_stb
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/i2c_wishb_cyc
add wave -noupdate -group perips_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/i2c_wishb_ack
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/clk
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/rst_n
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/i_icb_cmd_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/i_icb_cmd_ready
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/i_icb_cmd_addr
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/i_icb_cmd_read
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/i_icb_cmd_wdata
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/i_icb_rsp_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/i_icb_rsp_ready
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/i_icb_rsp_rdata
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/gpio_irq_0
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/gpio_irq_1
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/gpio_irq_2
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/gpio_irq_3
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/gpio_irq_4
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/gpio_irq_5
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/gpio_irq_6
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/gpio_irq_7
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/gpio_irq_8
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/gpio_irq_9
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/gpio_irq_10
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/gpio_irq_11
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/gpio_irq_12
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/gpio_irq_13
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/gpio_irq_14
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/gpio_irq_15
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/gpio_irq_16
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/gpio_irq_17
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/gpio_irq_18
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/gpio_irq_19
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/gpio_irq_20
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/gpio_irq_21
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/gpio_irq_22
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/gpio_irq_23
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/gpio_irq_24
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/gpio_irq_25
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/gpio_irq_26
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/gpio_irq_27
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/gpio_irq_28
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/gpio_irq_29
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/gpio_irq_30
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/gpio_irq_31
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_0_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_0_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_0_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_0_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_0_o_pue
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_0_o_ds
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_1_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_1_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_1_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_1_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_1_o_pue
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_1_o_ds
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_2_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_2_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_2_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_2_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_2_o_pue
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_2_o_ds
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_3_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_3_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_3_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_3_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_3_o_pue
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_3_o_ds
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_4_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_4_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_4_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_4_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_4_o_pue
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_4_o_ds
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_5_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_5_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_5_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_5_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_5_o_pue
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_5_o_ds
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_6_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_6_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_6_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_6_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_6_o_pue
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_6_o_ds
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_7_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_7_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_7_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_7_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_7_o_pue
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_7_o_ds
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_8_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_8_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_8_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_8_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_8_o_pue
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_8_o_ds
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_9_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_9_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_9_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_9_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_9_o_pue
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_9_o_ds
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_10_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_10_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_10_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_10_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_10_o_pue
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_10_o_ds
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_11_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_11_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_11_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_11_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_11_o_pue
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_11_o_ds
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_12_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_12_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_12_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_12_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_12_o_pue
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_12_o_ds
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_13_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_13_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_13_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_13_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_13_o_pue
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_13_o_ds
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_14_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_14_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_14_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_14_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_14_o_pue
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_14_o_ds
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_15_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_15_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_15_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_15_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_15_o_pue
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_15_o_ds
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_16_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_16_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_16_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_16_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_16_o_pue
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_16_o_ds
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_17_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_17_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_17_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_17_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_17_o_pue
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_17_o_ds
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_18_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_18_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_18_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_18_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_18_o_pue
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_18_o_ds
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_19_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_19_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_19_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_19_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_19_o_pue
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_19_o_ds
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_20_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_20_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_20_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_20_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_20_o_pue
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_20_o_ds
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_21_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_21_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_21_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_21_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_21_o_pue
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_21_o_ds
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_22_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_22_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_22_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_22_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_22_o_pue
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_22_o_ds
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_23_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_23_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_23_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_23_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_23_o_pue
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_23_o_ds
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_24_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_24_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_24_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_24_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_24_o_pue
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_24_o_ds
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_25_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_25_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_25_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_25_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_25_o_pue
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_25_o_ds
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_26_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_26_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_26_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_26_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_26_o_pue
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_26_o_ds
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_27_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_27_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_27_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_27_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_27_o_pue
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_27_o_ds
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_28_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_28_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_28_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_28_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_28_o_pue
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_28_o_ds
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_29_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_29_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_29_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_29_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_29_o_pue
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_29_o_ds
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_30_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_30_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_30_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_30_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_30_o_pue
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_30_o_ds
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_31_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_31_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_31_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_31_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_31_o_pue
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_pins_31_o_ds
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_0_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_0_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_0_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_0_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_0_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_1_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_1_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_1_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_1_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_1_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_2_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_2_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_2_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_2_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_2_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_3_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_3_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_3_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_3_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_3_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_4_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_4_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_4_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_4_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_4_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_5_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_5_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_5_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_5_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_5_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_6_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_6_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_6_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_6_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_6_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_7_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_7_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_7_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_7_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_7_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_8_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_8_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_8_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_8_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_8_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_9_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_9_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_9_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_9_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_9_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_10_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_10_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_10_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_10_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_10_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_11_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_11_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_11_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_11_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_11_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_12_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_12_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_12_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_12_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_12_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_13_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_13_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_13_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_13_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_13_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_14_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_14_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_14_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_14_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_14_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_15_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_15_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_15_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_15_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_15_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_16_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_16_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_16_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_16_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_16_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_17_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_17_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_17_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_17_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_17_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_18_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_18_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_18_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_18_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_18_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_19_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_19_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_19_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_19_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_19_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_20_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_20_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_20_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_20_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_20_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_21_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_21_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_21_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_21_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_21_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_22_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_22_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_22_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_22_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_22_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_23_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_23_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_23_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_23_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_23_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_24_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_24_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_24_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_24_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_24_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_25_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_25_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_25_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_25_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_25_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_26_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_26_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_26_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_26_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_26_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_27_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_27_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_27_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_27_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_27_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_28_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_28_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_28_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_28_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_28_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_29_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_29_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_29_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_29_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_29_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_30_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_30_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_30_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_30_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_30_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_31_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_31_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_31_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_31_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_0_31_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_0_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_0_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_0_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_0_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_0_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_1_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_1_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_1_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_1_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_1_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_2_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_2_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_2_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_2_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_2_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_3_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_3_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_3_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_3_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_3_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_4_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_4_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_4_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_4_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_4_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_5_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_5_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_5_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_5_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_5_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_6_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_6_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_6_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_6_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_6_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_7_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_7_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_7_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_7_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_7_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_8_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_8_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_8_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_8_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_8_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_9_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_9_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_9_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_9_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_9_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_10_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_10_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_10_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_10_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_10_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_11_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_11_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_11_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_11_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_11_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_12_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_12_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_12_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_12_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_12_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_13_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_13_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_13_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_13_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_13_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_14_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_14_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_14_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_14_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_14_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_15_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_15_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_15_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_15_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_15_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_16_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_16_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_16_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_16_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_16_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_17_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_17_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_17_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_17_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_17_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_18_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_18_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_18_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_18_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_18_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_19_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_19_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_19_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_19_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_19_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_20_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_20_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_20_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_20_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_20_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_21_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_21_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_21_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_21_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_21_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_22_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_22_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_22_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_22_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_22_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_23_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_23_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_23_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_23_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_23_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_24_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_24_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_24_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_24_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_24_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_25_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_25_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_25_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_25_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_25_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_26_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_26_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_26_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_26_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_26_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_27_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_27_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_27_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_27_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_27_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_28_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_28_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_28_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_28_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_28_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_29_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_29_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_29_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_29_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_29_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_30_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_30_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_30_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_30_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_30_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_31_i_ival
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_31_o_oval
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_31_o_oe
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_31_o_ie
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_port_iof_1_31_o_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_in_0_a_ready
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_in_0_a_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_in_0_a_bits_opcode
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_in_0_a_bits_param
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_in_0_a_bits_size
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_in_0_a_bits_source
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_in_0_a_bits_address
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_in_0_a_bits_mask
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_in_0_a_bits_data
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_in_0_d_ready
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_in_0_d_bits_opcode
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_in_0_d_bits_param
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_in_0_d_bits_size
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_in_0_d_bits_source
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_in_0_d_bits_sink
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_in_0_d_bits_addr_lo
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_in_0_d_bits_data
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_in_0_d_bits_error
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_in_0_d_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_in_0_b_ready
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_in_0_b_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_in_0_b_bits_opcode
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_in_0_b_bits_param
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_in_0_b_bits_size
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_in_0_b_bits_source
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_in_0_b_bits_address
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_in_0_b_bits_mask
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_in_0_b_bits_data
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_in_0_c_ready
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_in_0_c_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_in_0_c_bits_opcode
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_in_0_c_bits_param
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_in_0_c_bits_size
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_in_0_c_bits_source
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_in_0_c_bits_address
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_in_0_c_bits_data
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_in_0_c_bits_error
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_in_0_e_ready
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_in_0_e_valid
add wave -noupdate -group gpio_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_gpio_top/io_in_0_e_bits_sink
add wave -noupdate -group uartgpio /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_uart0_pins/clock
add wave -noupdate -group uartgpio /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_uart0_pins/reset
add wave -noupdate -group uartgpio /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_uart0_pins/io_uart_txd
add wave -noupdate -group uartgpio /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_uart0_pins/io_uart_rxd
add wave -noupdate -group uartgpio /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_uart0_pins/io_pins_rxd_i_ival
add wave -noupdate -group uartgpio /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_uart0_pins/io_pins_rxd_o_oval
add wave -noupdate -group uartgpio /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_uart0_pins/io_pins_rxd_o_oe
add wave -noupdate -group uartgpio /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_uart0_pins/io_pins_rxd_o_ie
add wave -noupdate -group uartgpio /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_uart0_pins/io_pins_rxd_o_pue
add wave -noupdate -group uartgpio /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_uart0_pins/io_pins_rxd_o_ds
add wave -noupdate -group uartgpio /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_uart0_pins/io_pins_txd_i_ival
add wave -noupdate -group uartgpio /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_uart0_pins/io_pins_txd_o_oval
add wave -noupdate -group uartgpio /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_uart0_pins/io_pins_txd_o_oe
add wave -noupdate -group uartgpio /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_uart0_pins/io_pins_txd_o_ie
add wave -noupdate -group uartgpio /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_uart0_pins/io_pins_txd_o_pue
add wave -noupdate -group uartgpio /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_uart0_pins/io_pins_txd_o_ds
add wave -noupdate -group uart0_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/clk
add wave -noupdate -group uart0_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/rst_n
add wave -noupdate -group uart0_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/i_icb_cmd_valid
add wave -noupdate -group uart0_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/i_icb_cmd_ready
add wave -noupdate -group uart0_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/i_icb_cmd_addr
add wave -noupdate -group uart0_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/i_icb_cmd_read
add wave -noupdate -group uart0_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/i_icb_cmd_wdata
add wave -noupdate -group uart0_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/i_icb_rsp_valid
add wave -noupdate -group uart0_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/i_icb_rsp_ready
add wave -noupdate -group uart0_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/i_icb_rsp_rdata
add wave -noupdate -group uart0_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/io_interrupts_0_0
add wave -noupdate -group uart0_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/io_port_txd
add wave -noupdate -group uart0_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/io_port_rxd
add wave -noupdate -group uart0_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/uart_csr
add wave -noupdate -group uart0_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/uart_ctrl
add wave -noupdate -group uart0_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/data_reg_wr
add wave -noupdate -group uart0_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/data_reg_rd
add wave -noupdate -group uart0_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/tx_ok
add wave -noupdate -group uart0_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/rx_ok
add wave -noupdate -group uart0_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/divisor
add wave -noupdate -group uart0_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/baud_en
add wave -noupdate -group uart0_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/tx_en
add wave -noupdate -group uart0_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/rx_en
add wave -noupdate -group uart0_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/uart_clk_en
add wave -noupdate -group uart0_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/no_parity
add wave -noupdate -group uart0_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/ev_parity
add wave -noupdate -group uart0_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/parity_error
add wave -noupdate -group uart0_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/wr_data_flag
add wave -noupdate -group uart0_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/rd_data_flag
add wave -noupdate -group uart0_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/tx_data_sample
add wave -noupdate -group uart0_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/rx_data_sample
add wave -noupdate -group uart0_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/uart_gate_clk
add wave -noupdate -group uart0_top -group ctrl /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/ctrl/clk
add wave -noupdate -group uart0_top -group ctrl /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/ctrl/rst_n
add wave -noupdate -group uart0_top -group ctrl /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/ctrl/i_icb_cmd_valid
add wave -noupdate -group uart0_top -group ctrl /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/ctrl/i_icb_cmd_ready
add wave -noupdate -group uart0_top -group ctrl /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/ctrl/i_icb_cmd_addr
add wave -noupdate -group uart0_top -group ctrl /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/ctrl/i_icb_cmd_read
add wave -noupdate -group uart0_top -group ctrl /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/ctrl/i_icb_cmd_wdata
add wave -noupdate -group uart0_top -group ctrl /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/ctrl/i_icb_rsp_valid
add wave -noupdate -group uart0_top -group ctrl /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/ctrl/i_icb_rsp_ready
add wave -noupdate -group uart0_top -group ctrl /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/ctrl/i_icb_rsp_rdata
add wave -noupdate -group uart0_top -group ctrl /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/ctrl/tx_ok
add wave -noupdate -group uart0_top -group ctrl /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/ctrl/rx_ok
add wave -noupdate -group uart0_top -group ctrl /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/ctrl/parity_error
add wave -noupdate -group uart0_top -group ctrl /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/ctrl/data_reg_rd
add wave -noupdate -group uart0_top -group ctrl /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/ctrl/data_reg_wr
add wave -noupdate -group uart0_top -group ctrl /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/ctrl/uart_csr_o
add wave -noupdate -group uart0_top -group ctrl /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/ctrl/uart_ctrl_o
add wave -noupdate -group uart0_top -group ctrl /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/ctrl/io_interrupts_0_0
add wave -noupdate -group uart0_top -group ctrl /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/ctrl/rd_data_flag
add wave -noupdate -group uart0_top -group ctrl /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/ctrl/wr_data_flag
add wave -noupdate -group uart0_top -group ctrl /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/ctrl/uart_csr
add wave -noupdate -group uart0_top -group ctrl /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/ctrl/uart_ctrl
add wave -noupdate -group uart0_top -group ctrl /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/ctrl/data_reg
add wave -noupdate -group uart0_top -group ctrl /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/ctrl/cmd_valid
add wave -noupdate -group uart0_top -group ctrl /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/ctrl/cmd_ready
add wave -noupdate -group uart0_top -group ctrl /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/ctrl/cmd_addr
add wave -noupdate -group uart0_top -group ctrl /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/ctrl/cmd_read
add wave -noupdate -group uart0_top -group ctrl /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/ctrl/cmd_wdata
add wave -noupdate -group uart0_top -group ctrl /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/ctrl/rsp_valid
add wave -noupdate -group uart0_top -group ctrl /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/ctrl/rsp_ready
add wave -noupdate -group uart0_top -group ctrl /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/ctrl/rsp_rdata
add wave -noupdate -group uart0_top -group ctrl /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/ctrl/cmd_handshake_wr
add wave -noupdate -group uart0_top -group ctrl /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/ctrl/cmd_handshake_rd
add wave -noupdate -group uart0_top -group txd /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/txd/clk
add wave -noupdate -group uart0_top -group txd /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/txd/tx_data_sample
add wave -noupdate -group uart0_top -group txd /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/txd/rst_n
add wave -noupdate -group uart0_top -group txd /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/txd/tx_en
add wave -noupdate -group uart0_top -group txd /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/txd/no_parity
add wave -noupdate -group uart0_top -group txd /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/txd/ev_parity
add wave -noupdate -group uart0_top -group txd /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/txd/tx_start
add wave -noupdate -group uart0_top -group txd /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/txd/txd_in
add wave -noupdate -group uart0_top -group txd /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/txd/tx_ok
add wave -noupdate -group uart0_top -group txd /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/txd/txd
add wave -noupdate -group uart0_top -group txd /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/txd/tx_cnt
add wave -noupdate -group uart0_top -group txd /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/txd/txd_data
add wave -noupdate -group uart0_top -group txd /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/txd/txd_out_r
add wave -noupdate -group uart0_top -group txd /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/txd/tx_current_state
add wave -noupdate -group uart0_top -group txd /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/txd/tx_next_state
add wave -noupdate -group uart0_top -group txd /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/txd/tx_on_flag
add wave -noupdate -group uart0_top -group txd /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/txd/even_parity
add wave -noupdate -group uart0_top -group txd /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/txd/has_even_parity
add wave -noupdate -group uart0_top -group txd /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/txd/has_odd_parity
add wave -noupdate -group uart0_top -group txd /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/txd/tx_pos
add wave -noupdate -group uart0_top -group rxd /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/rxd/clk
add wave -noupdate -group uart0_top -group rxd /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/rxd/rx_data_sample
add wave -noupdate -group uart0_top -group rxd /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/rxd/rst_n
add wave -noupdate -group uart0_top -group rxd /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/rxd/rx_en
add wave -noupdate -group uart0_top -group rxd /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/rxd/no_parity
add wave -noupdate -group uart0_top -group rxd /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/rxd/ev_parity
add wave -noupdate -group uart0_top -group rxd /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/rxd/rd_data_flag
add wave -noupdate -group uart0_top -group rxd /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/rxd/rxd
add wave -noupdate -group uart0_top -group rxd /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/rxd/rx_ok
add wave -noupdate -group uart0_top -group rxd /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/rxd/rxd_out
add wave -noupdate -group uart0_top -group rxd /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/rxd/parity_error
add wave -noupdate -group uart0_top -group rxd /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/rxd/rx_cnt
add wave -noupdate -group uart0_top -group rxd /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/rxd/sample_cnt
add wave -noupdate -group uart0_top -group rxd /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/rxd/rxd_out_r
add wave -noupdate -group uart0_top -group rxd /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/rxd/rx_current_state
add wave -noupdate -group uart0_top -group rxd /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/rxd/rx_next_state
add wave -noupdate -group uart0_top -group rxd /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/rxd/tmp_a
add wave -noupdate -group uart0_top -group rxd /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/rxd/tmp_b
add wave -noupdate -group uart0_top -group rxd /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/rxd/tmp_c
add wave -noupdate -group uart0_top -group rxd /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/rxd/tmp_vote
add wave -noupdate -group uart0_top -group rxd /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/rxd/parity_result
add wave -noupdate -group uart0_top -group rxd /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/rxd/has_even_parity
add wave -noupdate -group uart0_top -group rxd /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/rxd/has_odd_parity
add wave -noupdate -group uart0_top -group rxd /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/rxd/rx_pos
add wave -noupdate -group uart0_top -group baud_gen /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/baud_gen/clk
add wave -noupdate -group uart0_top -group baud_gen /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/baud_gen/rst_n
add wave -noupdate -group uart0_top -group baud_gen /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/baud_gen/baud_en
add wave -noupdate -group uart0_top -group baud_gen /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/baud_gen/divisor
add wave -noupdate -group uart0_top -group baud_gen /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/baud_gen/tx_data_sample
add wave -noupdate -group uart0_top -group baud_gen /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/baud_gen/rx_data_sample
add wave -noupdate -group uart0_top -group baud_gen /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/baud_gen/sample_cnt
add wave -noupdate -group uart0_top -group baud_gen /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/baud_gen/baud_cnt
add wave -noupdate -group uart0_top -group baud_gen /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/baud_gen/baud_clk_r
add wave -noupdate -group uart0_top -group baud_gen /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart0_top/baud_gen/sample_clk_r
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/i_icb_cmd_addr
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/clk
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/rst_n
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/i_icb_cmd_valid
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/i_icb_cmd_ready
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/i_icb_cmd_read
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/i_icb_cmd_wdata
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/i_icb_rsp_valid
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/i_icb_rsp_ready
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/i_icb_rsp_rdata
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/io_interrupts_0_0
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/io_port_txd
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/io_port_rxd
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/io_in_0_a_ready
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/io_in_0_a_valid
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/io_in_0_a_bits_opcode
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/io_in_0_a_bits_param
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/io_in_0_a_bits_size
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/io_in_0_a_bits_source
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/io_in_0_a_bits_address
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/io_in_0_a_bits_mask
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/io_in_0_a_bits_data
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/io_in_0_d_ready
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/io_in_0_d_bits_opcode
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/io_in_0_d_bits_param
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/io_in_0_d_bits_size
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/io_in_0_d_bits_source
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/io_in_0_d_bits_sink
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/io_in_0_d_bits_addr_lo
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/io_in_0_d_bits_data
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/io_in_0_d_bits_error
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/io_in_0_d_valid
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/io_in_0_b_ready
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/io_in_0_b_valid
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/io_in_0_b_bits_opcode
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/io_in_0_b_bits_param
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/io_in_0_b_bits_size
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/io_in_0_b_bits_source
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/io_in_0_b_bits_address
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/io_in_0_b_bits_mask
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/io_in_0_b_bits_data
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/io_in_0_c_ready
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/io_in_0_c_valid
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/io_in_0_c_bits_opcode
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/io_in_0_c_bits_param
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/io_in_0_c_bits_size
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/io_in_0_c_bits_source
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/io_in_0_c_bits_address
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/io_in_0_c_bits_data
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/io_in_0_c_bits_error
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/io_in_0_e_ready
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/io_in_0_e_valid
add wave -noupdate -group uart1_top /tb_top/u_ux607_soc_top/u_ux607_subsys_top/u_ux607_subsys_main/u_ux607_subsys_perips/u_ux607_uart1_top/io_in_0_e_bits_sink
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {16148 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 571
configure wave -valuecolwidth 144
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {15938 ns} {16297 ns}
