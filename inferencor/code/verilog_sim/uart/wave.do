onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group tb /uart_tb/clk
add wave -noupdate -group tb /uart_tb/rst
add wave -noupdate -group tb /uart_tb/arready
add wave -noupdate -group tb /uart_tb/arvalid
add wave -noupdate -group tb /uart_tb/araddr
add wave -noupdate -group tb /uart_tb/arprot
add wave -noupdate -group tb /uart_tb/rready
add wave -noupdate -group tb /uart_tb/rvalid
add wave -noupdate -group tb /uart_tb/rdata
add wave -noupdate -group tb /uart_tb/rresp
add wave -noupdate -group tb /uart_tb/awready
add wave -noupdate -group tb /uart_tb/awvalid
add wave -noupdate -group tb /uart_tb/awaddr
add wave -noupdate -group tb /uart_tb/awprot
add wave -noupdate -group tb /uart_tb/wready
add wave -noupdate -group tb /uart_tb/wvalid
add wave -noupdate -group tb /uart_tb/wdata
add wave -noupdate -group tb /uart_tb/wstrb
add wave -noupdate -group tb /uart_tb/bready
add wave -noupdate -group tb /uart_tb/bvalid
add wave -noupdate -group tb /uart_tb/port_rxd
add wave -noupdate -group tb /uart_tb/port_txd
add wave -noupdate -group tb /uart_tb/data_tmp
add wave -noupdate -group tb /uart_tb/i
add wave -noupdate -group tb /uart_tb/j
add wave -noupdate -group tb /uart_tb/k
add wave -noupdate -group tb /uart_tb/t
add wave -noupdate -group tb /uart_tb/even_parity
add wave -noupdate -group tb /uart_tb/odd_parity
add wave -noupdate -group tb /uart_tb/FREQUENCE
add wave -noupdate -group tb /uart_tb/TEST_TYPE
add wave -noupdate -group tb /uart_tb/CLK_EN
add wave -noupdate -group tb /uart_tb/PARITY_EN
add wave -noupdate -group tb /uart_tb/PARITY_EVEN
add wave -noupdate -group tb /uart_tb/BAUDRATE
add wave -noupdate -group tb /uart_tb/bresp
add wave -noupdate -expand -group baud /uart_tb/uart_1/baud/clock
add wave -noupdate -expand -group baud /uart_tb/uart_1/baud/reset
add wave -noupdate -expand -group baud /uart_tb/uart_1/baud/io_clk_en
add wave -noupdate -expand -group baud /uart_tb/uart_1/baud/io_div
add wave -noupdate -expand -group baud /uart_tb/uart_1/baud/io_tx_data_sample
add wave -noupdate -expand -group baud /uart_tb/uart_1/baud/io_rx_data_sample
add wave -noupdate -expand -group baud /uart_tb/uart_1/baud/sample_clk_reg
add wave -noupdate -expand -group baud /uart_tb/uart_1/baud/baud_clk_reg
add wave -noupdate -expand -group baud /uart_tb/uart_1/baud/value
add wave -noupdate -expand -group baud /uart_tb/uart_1/baud/_T
add wave -noupdate -expand -group baud /uart_tb/uart_1/baud/_T_1
add wave -noupdate -expand -group baud /uart_tb/uart_1/baud/baudCntValue
add wave -noupdate -expand -group baud /uart_tb/uart_1/baud/wrap_wrap
add wave -noupdate -expand -group baud /uart_tb/uart_1/baud/_wrap_value_T_1
add wave -noupdate -expand -group baud /uart_tb/uart_1/baud/_GEN_1
add wave -noupdate -expand -group baud /uart_tb/uart_1/baud/baudCntWrap
add wave -noupdate -expand -group baud /uart_tb/uart_1/baud/_T_2
add wave -noupdate -expand -group baud /uart_tb/uart_1/baud/_T_3
add wave -noupdate -expand -group baud /uart_tb/uart_1/baud/wrap
add wave -noupdate -expand -group baud /uart_tb/uart_1/baud/_value_T_1
add wave -noupdate -expand -group baud /uart_tb/uart_1/baud/_T_5
add wave -noupdate -group bus /uart_tb/uart_1/bus/clock
add wave -noupdate -group bus /uart_tb/uart_1/bus/reset
add wave -noupdate -group bus /uart_tb/uart_1/bus/axi_readAddr_ready
add wave -noupdate -group bus /uart_tb/uart_1/bus/axi_readAddr_valid
add wave -noupdate -group bus /uart_tb/uart_1/bus/axi_readAddr_bits_addr
add wave -noupdate -group bus /uart_tb/uart_1/bus/axi_readData_ready
add wave -noupdate -group bus /uart_tb/uart_1/bus/axi_readData_valid
add wave -noupdate -group bus /uart_tb/uart_1/bus/axi_readData_bits_data
add wave -noupdate -group bus /uart_tb/uart_1/bus/axi_readData_bits_resp
add wave -noupdate -group bus /uart_tb/uart_1/bus/axi_writeAddr_ready
add wave -noupdate -group bus /uart_tb/uart_1/bus/axi_writeAddr_valid
add wave -noupdate -group bus /uart_tb/uart_1/bus/axi_writeAddr_bits_addr
add wave -noupdate -group bus /uart_tb/uart_1/bus/axi_writeData_ready
add wave -noupdate -group bus /uart_tb/uart_1/bus/axi_writeData_valid
add wave -noupdate -group bus /uart_tb/uart_1/bus/axi_writeData_bits_data
add wave -noupdate -group bus /uart_tb/uart_1/bus/axi_writeData_bits_strb
add wave -noupdate -group bus /uart_tb/uart_1/bus/axi_writeResp_ready
add wave -noupdate -group bus /uart_tb/uart_1/bus/axi_writeResp_valid
add wave -noupdate -group bus /uart_tb/uart_1/bus/axi_writeResp_bits_resp
add wave -noupdate -group bus /uart_tb/uart_1/bus/handshake_0
add wave -noupdate -group bus /uart_tb/uart_1/bus/handshake_1
add wave -noupdate -group bus /uart_tb/uart_1/bus/handshake_3
add wave -noupdate -group bus /uart_tb/uart_1/bus/slv_reg_wren
add wave -noupdate -group bus /uart_tb/uart_1/bus/ctrl_reg
add wave -noupdate -group bus /uart_tb/uart_1/bus/io_tx_busy
add wave -noupdate -group bus /uart_tb/uart_1/bus/io_rx_busy
add wave -noupdate -group bus /uart_tb/uart_1/bus/io_parity_error
add wave -noupdate -group bus /uart_tb/uart_1/bus/io_clk_en
add wave -noupdate -group bus /uart_tb/uart_1/bus/io_parity_en
add wave -noupdate -group bus /uart_tb/uart_1/bus/io_parity_even
add wave -noupdate -group bus /uart_tb/uart_1/bus/io_div
add wave -noupdate -group bus /uart_tb/uart_1/bus/io_data_reg_tx
add wave -noupdate -group bus /uart_tb/uart_1/bus/io_data_reg_rx
add wave -noupdate -group bus /uart_tb/uart_1/bus/io_tx_start
add wave -noupdate -group bus /uart_tb/uart_1/bus/addr_0
add wave -noupdate -group bus /uart_tb/uart_1/bus/addr_3
add wave -noupdate -group bus /uart_tb/uart_1/bus/data_1
add wave -noupdate -group bus /uart_tb/uart_1/bus/data_4
add wave -noupdate -group bus /uart_tb/uart_1/bus/valid_2
add wave -noupdate -group bus /uart_tb/uart_1/bus/valid_4
add wave -noupdate -group bus /uart_tb/uart_1/bus/ready_0
add wave -noupdate -group bus /uart_tb/uart_1/bus/ready_1
add wave -noupdate -group bus /uart_tb/uart_1/bus/ready_3
add wave -noupdate -group bus /uart_tb/uart_1/bus/resp_2
add wave -noupdate -group bus /uart_tb/uart_1/bus/resp_4
add wave -noupdate -group bus /uart_tb/uart_1/bus/_GEN_2
add wave -noupdate -group bus /uart_tb/uart_1/bus/_GEN_3
add wave -noupdate -group bus /uart_tb/uart_1/bus/_GEN_6
add wave -noupdate -group bus /uart_tb/uart_1/bus/_GEN_7
add wave -noupdate -group bus /uart_tb/uart_1/bus/_GEN_8
add wave -noupdate -group bus /uart_tb/uart_1/bus/_GEN_10
add wave -noupdate -group bus /uart_tb/uart_1/bus/_GEN_14
add wave -noupdate -group bus /uart_tb/uart_1/bus/_GEN_15
add wave -noupdate -group bus /uart_tb/uart_1/bus/_GEN_16
add wave -noupdate -group bus /uart_tb/uart_1/bus/_T_12
add wave -noupdate -expand -group tx /uart_tb/uart_1/tx/clock
add wave -noupdate -expand -group tx /uart_tb/uart_1/tx/reset
add wave -noupdate -expand -group tx /uart_tb/uart_1/tx/io_tx_data_sample
add wave -noupdate -expand -group tx /uart_tb/uart_1/tx/io_parity_en
add wave -noupdate -expand -group tx /uart_tb/uart_1/tx/io_parity_even
add wave -noupdate -expand -group tx /uart_tb/uart_1/tx/io_tx_start
add wave -noupdate -expand -group tx /uart_tb/uart_1/tx/io_data_reg_tx
add wave -noupdate -expand -group tx /uart_tb/uart_1/tx/io_tx_busy
add wave -noupdate -expand -group tx /uart_tb/uart_1/tx/io_txd
add wave -noupdate -expand -group tx /uart_tb/uart_1/tx/tx_state
add wave -noupdate -expand -group tx /uart_tb/uart_1/tx/tx_busy_reg
add wave -noupdate -expand -group tx /uart_tb/uart_1/tx/_T
add wave -noupdate -expand -group tx /uart_tb/uart_1/tx/_GEN_0
add wave -noupdate -expand -group tx /uart_tb/uart_1/tx/_GEN_1
add wave -noupdate -expand -group tx /uart_tb/uart_1/tx/_T_2
add wave -noupdate -expand -group tx /uart_tb/uart_1/tx/txCntValue
add wave -noupdate -expand -group tx /uart_tb/uart_1/tx/wrap_wrap
add wave -noupdate -expand -group tx /uart_tb/uart_1/tx/hasEvenParity
add wave -noupdate -expand -group tx /uart_tb/uart_1/tx/hasOddParity
add wave -noupdate -expand -group tx /uart_tb/uart_1/tx/txd_data
add wave -noupdate -expand -group tx /uart_tb/uart_1/tx/even_parity
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/clock
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/reset
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/io_rx_data_sample
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/io_parity_en
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/io_parity_even
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/io_rxd
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/io_rx_busy
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/io_parity_error
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/io_data_reg_rx
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/rx_state
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/_T
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/_T_2
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/_T_6
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/sampleCntValue
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/wrap_wrap
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/_wrap_value_T_1
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/_T_7
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/_T_10
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/_T_12
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/rxCntValue
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/wrap_wrap_1
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/_wrap_value_T_3
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/_T_13
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/_T_15
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/_T_17
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/_GEN_10
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/_T_23
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/_T_24
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/_GEN_11
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/_GEN_12
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/tmp_0
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/tmp_1
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/tmp_2
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/vote
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/_T_25
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/_T_27
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/_T_28
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/_GEN_16
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/_GEN_17
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/_GEN_18
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/_GEN_19
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/_GEN_20
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/_GEN_21
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/_GEN_22
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/_GEN_23
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/_GEN_24
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/_GEN_25
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/parity_result
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/hasEvenParity
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/hasOddParity
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/rxd_out_reg
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/rxd_out_reg_lo
add wave -noupdate -expand -group rx /uart_tb/uart_1/rx/_rxd_out_reg_T
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {25973143 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 264
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
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
WaveRestoreZoom {0 ps} {249474518 ps}
