onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group tb /popcount_tb/clk
add wave -noupdate -expand -group tb /popcount_tb/rst
add wave -noupdate -expand -group tb /popcount_tb/data_in
add wave -noupdate -expand -group tb -radix decimal /popcount_tb/data_out
add wave -noupdate -expand -group tb -radix decimal /popcount_tb/data_mon
add wave -noupdate -expand -group tb /popcount_tb/i
add wave -noupdate -expand -group tb /popcount_tb/j
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {11739086213 ps} 0}
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
WaveRestoreZoom {11739076253 ps} {11739145293 ps}
