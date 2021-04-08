onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group ctrl /uart_tb/uart_1/ctrl/clk
add wave -noupdate -group ctrl /uart_tb/uart_1/ctrl/rst_n
add wave -noupdate -group ctrl /uart_tb/uart_1/ctrl/i_icb_cmd_valid
add wave -noupdate -group ctrl /uart_tb/uart_1/ctrl/i_icb_cmd_ready
add wave -noupdate -group ctrl /uart_tb/uart_1/ctrl/i_icb_cmd_addr
add wave -noupdate -group ctrl /uart_tb/uart_1/ctrl/i_icb_cmd_read
add wave -noupdate -group ctrl /uart_tb/uart_1/ctrl/i_icb_cmd_wdata
add wave -noupdate -group ctrl /uart_tb/uart_1/ctrl/i_icb_rsp_valid
add wave -noupdate -group ctrl /uart_tb/uart_1/ctrl/i_icb_rsp_ready
add wave -noupdate -group ctrl /uart_tb/uart_1/ctrl/i_icb_rsp_rdata
add wave -noupdate -group ctrl /uart_tb/uart_1/ctrl/tx_ok
add wave -noupdate -group ctrl /uart_tb/uart_1/ctrl/rx_ok
add wave -noupdate -group ctrl /uart_tb/uart_1/ctrl/data_reg_rd
add wave -noupdate -group ctrl /uart_tb/uart_1/ctrl/data_reg_wr
add wave -noupdate -group ctrl /uart_tb/uart_1/ctrl/uart_csr_o
add wave -noupdate -group ctrl /uart_tb/uart_1/ctrl/uart_ctrl_o
add wave -noupdate -group ctrl /uart_tb/uart_1/ctrl/io_interrupts_0_0
add wave -noupdate -group ctrl /uart_tb/uart_1/ctrl/rd_data_flag
add wave -noupdate -group ctrl /uart_tb/uart_1/ctrl/wr_data_flag
add wave -noupdate -group ctrl /uart_tb/uart_1/ctrl/uart_csr
add wave -noupdate -group ctrl /uart_tb/uart_1/ctrl/uart_ctrl
add wave -noupdate -group ctrl /uart_tb/uart_1/ctrl/data_reg
add wave -noupdate -group ctrl /uart_tb/uart_1/ctrl/cmd_valid
add wave -noupdate -group ctrl /uart_tb/uart_1/ctrl/cmd_ready
add wave -noupdate -group ctrl /uart_tb/uart_1/ctrl/cmd_addr
add wave -noupdate -group ctrl /uart_tb/uart_1/ctrl/cmd_read
add wave -noupdate -group ctrl /uart_tb/uart_1/ctrl/cmd_wdata
add wave -noupdate -group ctrl /uart_tb/uart_1/ctrl/rsp_valid
add wave -noupdate -group ctrl /uart_tb/uart_1/ctrl/rsp_ready
add wave -noupdate -group ctrl /uart_tb/uart_1/ctrl/rsp_rdata
add wave -noupdate -group ctrl /uart_tb/uart_1/ctrl/cmd_handshake_wr
add wave -noupdate -group ctrl /uart_tb/uart_1/ctrl/cmd_handshake_rd
add wave -noupdate -group top /uart_tb/uart_1/clk
add wave -noupdate -group top /uart_tb/uart_1/rst_n
add wave -noupdate -group top /uart_tb/uart_1/i_icb_cmd_valid
add wave -noupdate -group top /uart_tb/uart_1/i_icb_cmd_ready
add wave -noupdate -group top /uart_tb/uart_1/i_icb_cmd_addr
add wave -noupdate -group top /uart_tb/uart_1/i_icb_cmd_read
add wave -noupdate -group top /uart_tb/uart_1/i_icb_cmd_wdata
add wave -noupdate -group top /uart_tb/uart_1/i_icb_rsp_valid
add wave -noupdate -group top /uart_tb/uart_1/i_icb_rsp_ready
add wave -noupdate -group top /uart_tb/uart_1/i_icb_rsp_rdata
add wave -noupdate -group top /uart_tb/uart_1/io_interrupts_0_0
add wave -noupdate -group top /uart_tb/uart_1/io_port_txd
add wave -noupdate -group top /uart_tb/uart_1/io_port_rxd
add wave -noupdate -group top /uart_tb/uart_1/uart_csr
add wave -noupdate -group top /uart_tb/uart_1/uart_ctrl
add wave -noupdate -group top /uart_tb/uart_1/data_reg_wr
add wave -noupdate -group top /uart_tb/uart_1/data_reg_rd
add wave -noupdate -group top /uart_tb/uart_1/tx_ok
add wave -noupdate -group top /uart_tb/uart_1/rx_ok
add wave -noupdate -group top /uart_tb/uart_1/divisor
add wave -noupdate -group top /uart_tb/uart_1/baud_en
add wave -noupdate -group top /uart_tb/uart_1/tx_en
add wave -noupdate -group top /uart_tb/uart_1/rx_en
add wave -noupdate -group top /uart_tb/uart_1/no_parity
add wave -noupdate -group top /uart_tb/uart_1/ev_parity
add wave -noupdate -group top /uart_tb/uart_1/parity_error
add wave -noupdate -group top /uart_tb/uart_1/wr_data_flag
add wave -noupdate -group top /uart_tb/uart_1/rd_data_flag
add wave -noupdate -group br_gen /uart_tb/uart_1/baud_gen/clk
add wave -noupdate -group br_gen /uart_tb/uart_1/baud_gen/rst_n
add wave -noupdate -group br_gen /uart_tb/uart_1/baud_gen/baud_en
add wave -noupdate -group br_gen /uart_tb/uart_1/baud_gen/divisor
add wave -noupdate -group br_gen /uart_tb/uart_1/baud_gen/tx_data_sample
add wave -noupdate -group br_gen /uart_tb/uart_1/baud_gen/rx_data_sample
add wave -noupdate -group br_gen /uart_tb/uart_1/baud_gen/sample_cnt
add wave -noupdate -group br_gen /uart_tb/uart_1/baud_gen/baud_cnt
add wave -noupdate -group br_gen /uart_tb/uart_1/baud_gen/baud_clk_r
add wave -noupdate -group br_gen /uart_tb/uart_1/baud_gen/sample_clk_r
add wave -noupdate -group tb /uart_tb/clk
add wave -noupdate -group tb /uart_tb/rst_n
add wave -noupdate -group tb /uart_tb/cmd_valid
add wave -noupdate -group tb /uart_tb/cmd_ready
add wave -noupdate -group tb /uart_tb/cmd_addr
add wave -noupdate -group tb /uart_tb/cmd_read
add wave -noupdate -group tb /uart_tb/cmd_wdata
add wave -noupdate -group tb /uart_tb/rsp_valid
add wave -noupdate -group tb /uart_tb/rsp_ready
add wave -noupdate -group tb /uart_tb/rsp_rdata
add wave -noupdate -group tb /uart_tb/interrupts_0_0
add wave -noupdate -group tb /uart_tb/port_txd
add wave -noupdate -group tb /uart_tb/port_rxd
add wave -noupdate -group tb /uart_tb/data_tmp
add wave -noupdate -group tb /uart_tb/i
add wave -noupdate -group tb /uart_tb/j
add wave -noupdate -group tb /uart_tb/k
add wave -noupdate -group tb /uart_tb/even_parity
add wave -noupdate -group tb /uart_tb/odd_parity
add wave -noupdate -group tb /uart_tb/FREQUENCE
add wave -noupdate -group tb /uart_tb/BAUDRATE
add wave -noupdate -group tb /uart_tb/TEST_TYPE
add wave -noupdate -group tb /uart_tb/BAUD_EN
add wave -noupdate -group tb /uart_tb/TX_EN
add wave -noupdate -group tb /uart_tb/RX_EN
add wave -noupdate -group tb /uart_tb/UART_EN
add wave -noupdate -group tb /uart_tb/NO_PARITY
add wave -noupdate -group tb /uart_tb/EV_PARITY
add wave -noupdate -group tx /uart_tb/uart_1/txd/clk
add wave -noupdate -group tx /uart_tb/uart_1/txd/tx_data_sample
add wave -noupdate -group tx /uart_tb/uart_1/txd/rst_n
add wave -noupdate -group tx /uart_tb/uart_1/txd/tx_en
add wave -noupdate -group tx /uart_tb/uart_1/txd/no_parity
add wave -noupdate -group tx /uart_tb/uart_1/txd/ev_parity
add wave -noupdate -group tx /uart_tb/uart_1/txd/tx_start
add wave -noupdate -group tx /uart_tb/uart_1/txd/txd_in
add wave -noupdate -group tx /uart_tb/uart_1/txd/tx_ok
add wave -noupdate -group tx /uart_tb/uart_1/txd/txd
add wave -noupdate -group tx /uart_tb/uart_1/txd/tx_cnt
add wave -noupdate -group tx /uart_tb/uart_1/txd/txd_data
add wave -noupdate -group tx /uart_tb/uart_1/txd/txd_out_r
add wave -noupdate -group tx /uart_tb/uart_1/txd/tx_current_state
add wave -noupdate -group tx /uart_tb/uart_1/txd/tx_next_state
add wave -noupdate -group tx /uart_tb/uart_1/txd/tx_on_flag
add wave -noupdate -group tx /uart_tb/uart_1/txd/even_parity
add wave -noupdate -group tx /uart_tb/uart_1/txd/has_even_parity
add wave -noupdate -group tx /uart_tb/uart_1/txd/has_odd_parity
add wave -noupdate -group tx /uart_tb/uart_1/txd/tx_pos
add wave -noupdate -expand -group rx /uart_tb/uart_1/rxd/clk
add wave -noupdate -expand -group rx /uart_tb/uart_1/rxd/rx_data_sample
add wave -noupdate -expand -group rx /uart_tb/uart_1/rxd/rst_n
add wave -noupdate -expand -group rx /uart_tb/uart_1/rxd/rx_en
add wave -noupdate -expand -group rx /uart_tb/uart_1/rxd/no_parity
add wave -noupdate -expand -group rx /uart_tb/uart_1/rxd/ev_parity
add wave -noupdate -expand -group rx /uart_tb/uart_1/rxd/rd_data_flag
add wave -noupdate -expand -group rx /uart_tb/uart_1/rxd/rxd
add wave -noupdate -expand -group rx /uart_tb/uart_1/rxd/rx_ok
add wave -noupdate -expand -group rx /uart_tb/uart_1/rxd/rxd_out
add wave -noupdate -expand -group rx /uart_tb/uart_1/rxd/parity_error
add wave -noupdate -expand -group rx /uart_tb/uart_1/rxd/rx_cnt
add wave -noupdate -expand -group rx /uart_tb/uart_1/rxd/sample_cnt
add wave -noupdate -expand -group rx /uart_tb/uart_1/rxd/rxd_out_r
add wave -noupdate -expand -group rx /uart_tb/uart_1/rxd/rx_current_state
add wave -noupdate -expand -group rx /uart_tb/uart_1/rxd/rx_next_state
add wave -noupdate -expand -group rx /uart_tb/uart_1/rxd/tmp_a
add wave -noupdate -expand -group rx /uart_tb/uart_1/rxd/tmp_b
add wave -noupdate -expand -group rx /uart_tb/uart_1/rxd/tmp_c
add wave -noupdate -expand -group rx /uart_tb/uart_1/rxd/tmp_vote
add wave -noupdate -expand -group rx /uart_tb/uart_1/rxd/parity_result
add wave -noupdate -expand -group rx /uart_tb/uart_1/rxd/has_even_parity
add wave -noupdate -expand -group rx /uart_tb/uart_1/rxd/has_odd_parity
add wave -noupdate -expand -group rx /uart_tb/uart_1/rxd/rx_pos
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {107156545 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 226
configure wave -valuecolwidth 100
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
configure wave -timelineunits ps
update
WaveRestoreZoom {24827925594 ps} {25413498390 ps}
