onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group tb /dog_tb/clk
add wave -noupdate -group tb /dog_tb/rst_n
add wave -noupdate -group tb /dog_tb/start
add wave -noupdate -group tb /dog_tb/done
add wave -noupdate -group tb /dog_tb/ram0_valid_in
add wave -noupdate -group tb /dog_tb/ram0_data_in
add wave -noupdate -group tb /dog_tb/ram1_valid_in
add wave -noupdate -group tb /dog_tb/ram1_data_in
add wave -noupdate -group tb /dog_tb/ram2_valid_in
add wave -noupdate -group tb /dog_tb/ram2_data_in
add wave -noupdate -group tb /dog_tb/ram0_rd_addr_o
add wave -noupdate -group tb /dog_tb/ram0_rd_valid_o
add wave -noupdate -group tb /dog_tb/ram1_rd_addr_o
add wave -noupdate -group tb /dog_tb/ram1_rd_valid_o
add wave -noupdate -group tb /dog_tb/ram2_rd_addr_o
add wave -noupdate -group tb /dog_tb/ram2_rd_valid_o
add wave -noupdate -group tb /dog_tb/ram1_wr_valid_o
add wave -noupdate -group tb /dog_tb/ram1_wr_addr_o
add wave -noupdate -group tb /dog_tb/ram1_wr_data_o
add wave -noupdate -group tb /dog_tb/ram2_wr_valid_o
add wave -noupdate -group tb /dog_tb/ram2_wr_addr_o
add wave -noupdate -group tb /dog_tb/ram2_wr_data_o
add wave -noupdate -group tb /dog_tb/tb_wr_en
add wave -noupdate -group tb /dog_tb/tb_wr_addr
add wave -noupdate -group tb /dog_tb/tb_wr_data
add wave -noupdate -group tb /dog_tb/tb_rd_en
add wave -noupdate -group tb /dog_tb/tb_rd_addr
add wave -noupdate -group tb /dog_tb/tb_rd_data
add wave -noupdate -group tb /dog_tb/tb_rd_vl
add wave -noupdate -group tb /dog_tb/tb_file_dest
add wave -noupdate -group tb /dog_tb/tb_cnt
add wave -noupdate -group top /dog_tb/u_dog_top/clk
add wave -noupdate -group top /dog_tb/u_dog_top/rst_n
add wave -noupdate -group top /dog_tb/u_dog_top/start
add wave -noupdate -group top /dog_tb/u_dog_top/ram0_valid_in
add wave -noupdate -group top /dog_tb/u_dog_top/ram0_data_in
add wave -noupdate -group top /dog_tb/u_dog_top/ram1_valid_in
add wave -noupdate -group top /dog_tb/u_dog_top/ram1_data_in
add wave -noupdate -group top /dog_tb/u_dog_top/ram2_valid_in
add wave -noupdate -group top /dog_tb/u_dog_top/ram2_data_in
add wave -noupdate -group top /dog_tb/u_dog_top/ram0_rd_addr_o
add wave -noupdate -group top /dog_tb/u_dog_top/ram0_rd_valid_o
add wave -noupdate -group top /dog_tb/u_dog_top/ram1_rd_addr_o
add wave -noupdate -group top /dog_tb/u_dog_top/ram1_rd_valid_o
add wave -noupdate -group top /dog_tb/u_dog_top/ram2_rd_addr_o
add wave -noupdate -group top /dog_tb/u_dog_top/ram2_rd_valid_o
add wave -noupdate -group top /dog_tb/u_dog_top/ram1_wr_valid_o
add wave -noupdate -group top /dog_tb/u_dog_top/ram1_wr_addr_o
add wave -noupdate -group top /dog_tb/u_dog_top/ram1_wr_data_o
add wave -noupdate -group top /dog_tb/u_dog_top/ram2_wr_valid_o
add wave -noupdate -group top /dog_tb/u_dog_top/ram2_wr_addr_o
add wave -noupdate -group top /dog_tb/u_dog_top/ram2_wr_data_o
add wave -noupdate -group top /dog_tb/u_dog_top/done
add wave -noupdate -group top /dog_tb/u_dog_top/ram1_wr_valid_op
add wave -noupdate -group top /dog_tb/u_dog_top/ram1_wr_data_op
add wave -noupdate -group top /dog_tb/u_dog_top/ram2_wr_valid_op
add wave -noupdate -group top /dog_tb/u_dog_top/ram2_wr_data_op
add wave -noupdate -group top /dog_tb/u_dog_top/dog_wr_valid_op
add wave -noupdate -group top /dog_tb/u_dog_top/dog_wr_data_op
add wave -noupdate -group rd /dog_tb/u_dog_top/u_dog_dt_rd/clk
add wave -noupdate -group rd /dog_tb/u_dog_top/u_dog_dt_rd/rst_n
add wave -noupdate -group rd /dog_tb/u_dog_top/u_dog_dt_rd/start
add wave -noupdate -group rd /dog_tb/u_dog_top/u_dog_dt_rd/ram0_rd_valid_out
add wave -noupdate -group rd /dog_tb/u_dog_top/u_dog_dt_rd/ram0_rd_addr_out
add wave -noupdate -group rd /dog_tb/u_dog_top/u_dog_dt_rd/ram1_rd_valid_out
add wave -noupdate -group rd /dog_tb/u_dog_top/u_dog_dt_rd/ram1_rd_addr_out
add wave -noupdate -group rd /dog_tb/u_dog_top/u_dog_dt_rd/ram2_rd_valid_out
add wave -noupdate -group rd /dog_tb/u_dog_top/u_dog_dt_rd/ram2_rd_addr_out
add wave -noupdate -group rd /dog_tb/u_dog_top/u_dog_dt_rd/reg_x
add wave -noupdate -group rd /dog_tb/u_dog_top/u_dog_dt_rd/reg_y
add wave -noupdate -group rd /dog_tb/u_dog_top/u_dog_dt_rd/x_end_flag
add wave -noupdate -group rd /dog_tb/u_dog_top/u_dog_dt_rd/y_end_flag
add wave -noupdate -group rd /dog_tb/u_dog_top/u_dog_dt_rd/enable
add wave -noupdate -group rd /dog_tb/u_dog_top/u_dog_dt_rd/end_flag
add wave -noupdate -group rd /dog_tb/u_dog_top/u_dog_dt_rd/ram0_valid_reg
add wave -noupdate -group rd /dog_tb/u_dog_top/u_dog_dt_rd/reg_x_tmp
add wave -noupdate -group rd /dog_tb/u_dog_top/u_dog_dt_rd/reg_y_tmp
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/clk
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/rst_n
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/ram0_valid_in
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/ram0_data_in
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/ram1_valid_in
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/ram1_data_in
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/ram2_valid_in
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/ram2_data_in
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/gs_valid_in
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/gs7_data_in
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/gs3_data_in
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/gs7_data_0
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/gs7_data_1
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/gs7_data_2
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/gs7_data_3
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/gs7_data_4
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/gs7_data_5
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/gs7_data_6
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/gs3_data_0
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/gs3_data_1
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/gs3_data_2
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/gs3_data_3
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/gs3_data_4
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/gs3_data_5
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/gs3_data_6
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/gs7_1_0
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/gs7_1_1
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/gs7_1_2
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/gs7_1_3
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/gs7_2_0
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/gs7_2_1
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/gs7_2_2
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/gs7_3_0
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/gs7_3_1
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/gs7_4_0
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/gs7_5_0
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/gs3_1_0
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/gs3_1_1
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/gs3_2_0
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/gs3_3_0
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/dog_tmp_r
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/dog_out_r
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/ram1_valid_out
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/ram1_data_out
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/ram2_valid_out
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/ram2_data_out
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/dog_valid_out
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/dog_data_out
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/ram_valid_shift_r
add wave -noupdate -expand -group op /dog_tb/u_dog_top/u_dog_op/dog_valid_shift_r
add wave -noupdate -group wr /dog_tb/u_dog_top/u_dog_dt_wr/clk
add wave -noupdate -group wr /dog_tb/u_dog_top/u_dog_dt_wr/rst_n
add wave -noupdate -group wr /dog_tb/u_dog_top/u_dog_dt_wr/ram1_wr_valid_in
add wave -noupdate -group wr /dog_tb/u_dog_top/u_dog_dt_wr/ram1_wr_data_in
add wave -noupdate -group wr /dog_tb/u_dog_top/u_dog_dt_wr/ram2_wr_valid_in
add wave -noupdate -group wr /dog_tb/u_dog_top/u_dog_dt_wr/ram2_wr_data_in
add wave -noupdate -group wr /dog_tb/u_dog_top/u_dog_dt_wr/dog_wr_valid_in
add wave -noupdate -group wr /dog_tb/u_dog_top/u_dog_dt_wr/dog_wr_data_in
add wave -noupdate -group wr /dog_tb/u_dog_top/u_dog_dt_wr/ram1_wr_valid_out
add wave -noupdate -group wr /dog_tb/u_dog_top/u_dog_dt_wr/ram1_wr_addr_out
add wave -noupdate -group wr /dog_tb/u_dog_top/u_dog_dt_wr/ram1_wr_data_out
add wave -noupdate -group wr /dog_tb/u_dog_top/u_dog_dt_wr/ram2_wr_valid_out
add wave -noupdate -group wr /dog_tb/u_dog_top/u_dog_dt_wr/ram2_wr_addr_out
add wave -noupdate -group wr /dog_tb/u_dog_top/u_dog_dt_wr/ram2_wr_data_out
add wave -noupdate -group wr /dog_tb/u_dog_top/u_dog_dt_wr/done
add wave -noupdate -group wr /dog_tb/u_dog_top/u_dog_dt_wr/wr_valid_in
add wave -noupdate -group wr /dog_tb/u_dog_top/u_dog_dt_wr/reg_x
add wave -noupdate -group wr /dog_tb/u_dog_top/u_dog_dt_wr/reg_y
add wave -noupdate -group wr /dog_tb/u_dog_top/u_dog_dt_wr/x_end_flag
add wave -noupdate -group wr /dog_tb/u_dog_top/u_dog_dt_wr/y_end_flag
add wave -noupdate -expand -group ram0 /dog_tb/ram0/clk
add wave -noupdate -expand -group ram0 /dog_tb/ram0/wea
add wave -noupdate -expand -group ram0 /dog_tb/ram0/addra
add wave -noupdate -expand -group ram0 /dog_tb/ram0/dina
add wave -noupdate -expand -group ram0 /dog_tb/ram0/enb
add wave -noupdate -expand -group ram0 /dog_tb/ram0/addrb
add wave -noupdate -expand -group ram0 /dog_tb/ram0/doutb
add wave -noupdate -expand -group ram0 /dog_tb/ram0/validb
add wave -noupdate -expand -group ram0 /dog_tb/ram0/enc
add wave -noupdate -expand -group ram0 /dog_tb/ram0/addrc
add wave -noupdate -expand -group ram0 /dog_tb/ram0/doutc
add wave -noupdate -expand -group ram0 /dog_tb/ram0/validc
add wave -noupdate -expand -group ram0 /dog_tb/ram0/validb_r
add wave -noupdate -expand -group ram0 /dog_tb/ram0/validc_r
add wave -noupdate -expand -group ram0 /dog_tb/ram0/en_rd
add wave -noupdate -expand -group ram0 /dog_tb/ram0/addr_rd
add wave -noupdate -expand -group ram0 /dog_tb/ram0/dout_rd
add wave -noupdate -group ram1 /dog_tb/ram1/clk
add wave -noupdate -group ram1 /dog_tb/ram1/wea
add wave -noupdate -group ram1 /dog_tb/ram1/addra
add wave -noupdate -group ram1 /dog_tb/ram1/dina
add wave -noupdate -group ram1 /dog_tb/ram1/enb
add wave -noupdate -group ram1 /dog_tb/ram1/addrb
add wave -noupdate -group ram1 /dog_tb/ram1/doutb
add wave -noupdate -group ram1 /dog_tb/ram1/validb
add wave -noupdate -group ram1 /dog_tb/ram1/enc
add wave -noupdate -group ram1 /dog_tb/ram1/addrc
add wave -noupdate -group ram1 /dog_tb/ram1/doutc
add wave -noupdate -group ram1 /dog_tb/ram1/validc
add wave -noupdate -group ram1 /dog_tb/ram1/validb_r
add wave -noupdate -group ram1 /dog_tb/ram1/validc_r
add wave -noupdate -group ram1 /dog_tb/ram1/en_rd
add wave -noupdate -group ram1 /dog_tb/ram1/addr_rd
add wave -noupdate -group ram1 /dog_tb/ram1/dout_rd
add wave -noupdate -expand -group ram2 /dog_tb/ram2/clk
add wave -noupdate -expand -group ram2 /dog_tb/ram2/wea
add wave -noupdate -expand -group ram2 /dog_tb/ram2/addra
add wave -noupdate -expand -group ram2 /dog_tb/ram2/dina
add wave -noupdate -expand -group ram2 /dog_tb/ram2/enb
add wave -noupdate -expand -group ram2 /dog_tb/ram2/addrb
add wave -noupdate -expand -group ram2 /dog_tb/ram2/doutb
add wave -noupdate -expand -group ram2 /dog_tb/ram2/validb
add wave -noupdate -expand -group ram2 /dog_tb/ram2/enc
add wave -noupdate -expand -group ram2 /dog_tb/ram2/addrc
add wave -noupdate -expand -group ram2 /dog_tb/ram2/doutc
add wave -noupdate -expand -group ram2 /dog_tb/ram2/validc
add wave -noupdate -expand -group ram2 /dog_tb/ram2/validb_r
add wave -noupdate -expand -group ram2 /dog_tb/ram2/validc_r
add wave -noupdate -expand -group ram2 /dog_tb/ram2/en_rd
add wave -noupdate -expand -group ram2 /dog_tb/ram2/addr_rd
add wave -noupdate -expand -group ram2 /dog_tb/ram2/dout_rd
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {917971493 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
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
WaveRestoreZoom {0 ps} {5298753600 ps}
