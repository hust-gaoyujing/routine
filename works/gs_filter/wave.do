onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group gs_filter_top /gauss_filter_tb/u_gs_filter_top/clk
add wave -noupdate -group gs_filter_top /gauss_filter_tb/u_gs_filter_top/rst_n
add wave -noupdate -group gs_filter_top /gauss_filter_tb/u_gs_filter_top/start
add wave -noupdate -group gs_filter_top /gauss_filter_tb/u_gs_filter_top/ram0_valid_in
add wave -noupdate -group gs_filter_top /gauss_filter_tb/u_gs_filter_top/ram0_data_in
add wave -noupdate -group gs_filter_top /gauss_filter_tb/u_gs_filter_top/ram1_valid_in
add wave -noupdate -group gs_filter_top /gauss_filter_tb/u_gs_filter_top/ram1_data_in
add wave -noupdate -group gs_filter_top /gauss_filter_tb/u_gs_filter_top/ram0_rd_addr_o
add wave -noupdate -group gs_filter_top /gauss_filter_tb/u_gs_filter_top/ram0_rd_valid_o
add wave -noupdate -group gs_filter_top /gauss_filter_tb/u_gs_filter_top/ram1_rd_addr_o
add wave -noupdate -group gs_filter_top /gauss_filter_tb/u_gs_filter_top/ram1_rd_valid_o
add wave -noupdate -group gs_filter_top /gauss_filter_tb/u_gs_filter_top/ram1_wr_valid_o
add wave -noupdate -group gs_filter_top /gauss_filter_tb/u_gs_filter_top/ram1_wr_addr_o
add wave -noupdate -group gs_filter_top /gauss_filter_tb/u_gs_filter_top/ram1_wr_data_o
add wave -noupdate -group gs_filter_top /gauss_filter_tb/u_gs_filter_top/done
add wave -noupdate -group gs_filter_top /gauss_filter_tb/u_gs_filter_top/op_wr_valid
add wave -noupdate -group gs_filter_top /gauss_filter_tb/u_gs_filter_top/op_wr_data
add wave -noupdate -expand -group gs_filter /gauss_filter_tb/u_gs_filter_top/gs_filter/clk
add wave -noupdate -expand -group gs_filter /gauss_filter_tb/u_gs_filter_top/gs_filter/rst_n
add wave -noupdate -expand -group gs_filter /gauss_filter_tb/u_gs_filter_top/gs_filter/start
add wave -noupdate -expand -group gs_filter /gauss_filter_tb/u_gs_filter_top/gs_filter/op_valid_in
add wave -noupdate -expand -group gs_filter /gauss_filter_tb/u_gs_filter_top/gs_filter/ram0_valid_in
add wave -noupdate -expand -group gs_filter /gauss_filter_tb/u_gs_filter_top/gs_filter/ram0_data_in
add wave -noupdate -expand -group gs_filter /gauss_filter_tb/u_gs_filter_top/gs_filter/ram1_valid_in
add wave -noupdate -expand -group gs_filter /gauss_filter_tb/u_gs_filter_top/gs_filter/ram1_data_in
add wave -noupdate -expand -group gs_filter /gauss_filter_tb/u_gs_filter_top/gs_filter/op_data_out
add wave -noupdate -expand -group gs_filter /gauss_filter_tb/u_gs_filter_top/gs_filter/op_data_in
add wave -noupdate -expand -group gs_filter /gauss_filter_tb/u_gs_filter_top/gs_filter/op_data_0
add wave -noupdate -expand -group gs_filter /gauss_filter_tb/u_gs_filter_top/gs_filter/op_data_1
add wave -noupdate -expand -group gs_filter /gauss_filter_tb/u_gs_filter_top/gs_filter/op_data_2
add wave -noupdate -expand -group gs_filter /gauss_filter_tb/u_gs_filter_top/gs_filter/op_data_3
add wave -noupdate -expand -group gs_filter /gauss_filter_tb/u_gs_filter_top/gs_filter/op_data_4
add wave -noupdate -expand -group gs_filter /gauss_filter_tb/u_gs_filter_top/gs_filter/step1_0
add wave -noupdate -expand -group gs_filter /gauss_filter_tb/u_gs_filter_top/gs_filter/step1_1
add wave -noupdate -expand -group gs_filter /gauss_filter_tb/u_gs_filter_top/gs_filter/step1_2
add wave -noupdate -expand -group gs_filter /gauss_filter_tb/u_gs_filter_top/gs_filter/step2_0
add wave -noupdate -expand -group gs_filter /gauss_filter_tb/u_gs_filter_top/gs_filter/step2_1
add wave -noupdate -expand -group gs_filter /gauss_filter_tb/u_gs_filter_top/gs_filter/step3_0
add wave -noupdate -expand -group gs_filter /gauss_filter_tb/u_gs_filter_top/gs_filter/step4_0
add wave -noupdate -expand -group gs_filter /gauss_filter_tb/u_gs_filter_top/gs_filter/op_valid_out
add wave -noupdate /gauss_filter_tb/u_gs_filter_top/gs_filter/valid_shift_r
add wave -noupdate -group dt_wr /gauss_filter_tb/u_gs_filter_top/dt_wr/clk
add wave -noupdate -group dt_wr /gauss_filter_tb/u_gs_filter_top/dt_wr/rst_n
add wave -noupdate -group dt_wr /gauss_filter_tb/u_gs_filter_top/dt_wr/wr_valid_in
add wave -noupdate -group dt_wr /gauss_filter_tb/u_gs_filter_top/dt_wr/wr_data_in
add wave -noupdate -group dt_wr /gauss_filter_tb/u_gs_filter_top/dt_wr/wr_valid_out
add wave -noupdate -group dt_wr /gauss_filter_tb/u_gs_filter_top/dt_wr/wr_addr_out
add wave -noupdate -group dt_wr /gauss_filter_tb/u_gs_filter_top/dt_wr/wr_data_out
add wave -noupdate -group dt_wr /gauss_filter_tb/u_gs_filter_top/dt_wr/done
add wave -noupdate -group dt_wr /gauss_filter_tb/u_gs_filter_top/dt_wr/reg_x
add wave -noupdate -group dt_wr /gauss_filter_tb/u_gs_filter_top/dt_wr/reg_y
add wave -noupdate -group dt_wr /gauss_filter_tb/u_gs_filter_top/dt_wr/x_end_flag
add wave -noupdate -group dt_wr /gauss_filter_tb/u_gs_filter_top/dt_wr/y_end_flag
add wave -noupdate -expand -group dt_rd /gauss_filter_tb/u_gs_filter_top/dt_rd/clk
add wave -noupdate -expand -group dt_rd /gauss_filter_tb/u_gs_filter_top/dt_rd/rst_n
add wave -noupdate -expand -group dt_rd /gauss_filter_tb/u_gs_filter_top/dt_rd/start
add wave -noupdate -expand -group dt_rd /gauss_filter_tb/u_gs_filter_top/dt_rd/ram0_rd_valid_out
add wave -noupdate -expand -group dt_rd /gauss_filter_tb/u_gs_filter_top/dt_rd/ram0_rd_addr_out
add wave -noupdate -expand -group dt_rd /gauss_filter_tb/u_gs_filter_top/dt_rd/ram1_rd_valid_out
add wave -noupdate -expand -group dt_rd /gauss_filter_tb/u_gs_filter_top/dt_rd/ram1_rd_addr_out
add wave -noupdate -expand -group dt_rd /gauss_filter_tb/u_gs_filter_top/dt_rd/reg_x
add wave -noupdate -expand -group dt_rd /gauss_filter_tb/u_gs_filter_top/dt_rd/reg_y
add wave -noupdate -expand -group dt_rd /gauss_filter_tb/u_gs_filter_top/dt_rd/x_end_flag
add wave -noupdate -expand -group dt_rd /gauss_filter_tb/u_gs_filter_top/dt_rd/y_end_flag
add wave -noupdate -expand -group dt_rd /gauss_filter_tb/u_gs_filter_top/dt_rd/enable
add wave -noupdate -expand -group dt_rd /gauss_filter_tb/u_gs_filter_top/dt_rd/ram0_valid_reg
add wave -noupdate -expand -group dt_rd /gauss_filter_tb/u_gs_filter_top/dt_rd/reg_x_tmp
add wave -noupdate -group ram0 /gauss_filter_tb/ram0/clk
add wave -noupdate -group ram0 /gauss_filter_tb/ram0/wea
add wave -noupdate -group ram0 /gauss_filter_tb/ram0/addra
add wave -noupdate -group ram0 /gauss_filter_tb/ram0/dina
add wave -noupdate -group ram0 /gauss_filter_tb/ram0/enb
add wave -noupdate -group ram0 /gauss_filter_tb/ram0/addrb
add wave -noupdate -group ram0 /gauss_filter_tb/ram0/doutb
add wave -noupdate -group ram0 /gauss_filter_tb/ram0/validb
add wave -noupdate -group ram0 /gauss_filter_tb/ram0/enc
add wave -noupdate -group ram0 /gauss_filter_tb/ram0/addrc
add wave -noupdate -group ram0 /gauss_filter_tb/ram0/doutc
add wave -noupdate -group ram0 /gauss_filter_tb/ram0/validc
add wave -noupdate -group ram0 /gauss_filter_tb/ram0/validb_r
add wave -noupdate -group ram0 /gauss_filter_tb/ram0/validc_r
add wave -noupdate -group ram0 /gauss_filter_tb/ram0/en_rd
add wave -noupdate -group ram0 /gauss_filter_tb/ram0/addr_rd
add wave -noupdate -group ram0 /gauss_filter_tb/ram0/dout_rd
add wave -noupdate -group ram1 /gauss_filter_tb/ram1/clk
add wave -noupdate -group ram1 /gauss_filter_tb/ram1/wea
add wave -noupdate -group ram1 /gauss_filter_tb/ram1/addra
add wave -noupdate -group ram1 /gauss_filter_tb/ram1/dina
add wave -noupdate -group ram1 /gauss_filter_tb/ram1/enb
add wave -noupdate -group ram1 /gauss_filter_tb/ram1/addrb
add wave -noupdate -group ram1 /gauss_filter_tb/ram1/doutb
add wave -noupdate -group ram1 /gauss_filter_tb/ram1/validb
add wave -noupdate -group ram1 /gauss_filter_tb/ram1/enc
add wave -noupdate -group ram1 /gauss_filter_tb/ram1/addrc
add wave -noupdate -group ram1 /gauss_filter_tb/ram1/doutc
add wave -noupdate -group ram1 /gauss_filter_tb/ram1/validc
add wave -noupdate -group ram1 /gauss_filter_tb/ram1/validb_r
add wave -noupdate -group ram1 /gauss_filter_tb/ram1/validc_r
add wave -noupdate -group ram1 /gauss_filter_tb/ram1/en_rd
add wave -noupdate -group ram1 /gauss_filter_tb/ram1/addr_rd
add wave -noupdate -group ram1 /gauss_filter_tb/ram1/dout_rd
add wave -noupdate -group tb /gauss_filter_tb/clk
add wave -noupdate -group tb /gauss_filter_tb/rst_n
add wave -noupdate -group tb /gauss_filter_tb/start
add wave -noupdate -group tb /gauss_filter_tb/done
add wave -noupdate -group tb /gauss_filter_tb/ram0_valid_in
add wave -noupdate -group tb /gauss_filter_tb/ram0_data_in
add wave -noupdate -group tb /gauss_filter_tb/ram1_valid_in
add wave -noupdate -group tb /gauss_filter_tb/ram1_data_in
add wave -noupdate -group tb /gauss_filter_tb/ram0_rd_addr_o
add wave -noupdate -group tb /gauss_filter_tb/ram0_rd_valid_o
add wave -noupdate -group tb /gauss_filter_tb/ram1_rd_addr_o
add wave -noupdate -group tb /gauss_filter_tb/ram1_rd_valid_o
add wave -noupdate -group tb /gauss_filter_tb/ram1_wr_valid_o
add wave -noupdate -group tb /gauss_filter_tb/ram1_wr_addr_o
add wave -noupdate -group tb /gauss_filter_tb/ram1_wr_data_o
add wave -noupdate -group tb /gauss_filter_tb/tb_wr_en
add wave -noupdate -group tb /gauss_filter_tb/tb_wr_addr
add wave -noupdate -group tb /gauss_filter_tb/tb_wr_data
add wave -noupdate -group tb /gauss_filter_tb/tb_rd_en
add wave -noupdate -group tb /gauss_filter_tb/tb_rd_addr
add wave -noupdate -group tb /gauss_filter_tb/tb_rd_data
add wave -noupdate -group tb /gauss_filter_tb/tb_rd_vl
add wave -noupdate -group tb /gauss_filter_tb/tb_file_dest
add wave -noupdate -group tb /gauss_filter_tb/tb_cnt
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {655735000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 337
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
WaveRestoreZoom {655611003 ps} {655827014 ps}
