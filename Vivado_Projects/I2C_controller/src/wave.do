onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -height 25 -expand -group TB -height 25 /i2c_tb/clk
add wave -noupdate -height 25 -expand -group TB -height 25 /i2c_tb/rst
add wave -noupdate -height 25 -expand -group TB -height 25 /i2c_tb/scl
add wave -noupdate -height 25 -expand -group TB -height 25 /i2c_tb/sda
add wave -noupdate -height 25 -expand -group TB -height 25 /i2c_tb/cmd_tdata
add wave -noupdate -height 25 -expand -group TB -height 25 /i2c_tb/cmd_tvalid
add wave -noupdate -height 25 -expand -group TB -height 25 /i2c_tb/cmd_tready
add wave -noupdate -height 25 -expand -group TB -height 25 /i2c_tb/rd_tdata
add wave -noupdate -height 25 -expand -group TB -height 25 /i2c_tb/rd_tvalid
add wave -noupdate -height 25 -expand -group TB -height 25 /i2c_tb/rd_tready
add wave -noupdate -height 25 -expand -group TB -height 25 /i2c_tb/nack
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {36912 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {229393 ns}
