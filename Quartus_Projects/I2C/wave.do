onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /i2c_controller_tb/DUT/clk_MAIN
add wave -noupdate /i2c_controller_tb/DUT/rst
add wave -noupdate /i2c_controller_tb/DUT/SDA
add wave -noupdate /i2c_controller_tb/DUT/SCL
add wave -noupdate /i2c_controller_tb/DUT/W_ADDRESS
add wave -noupdate -expand /i2c_controller_tb/DUT/i2c_dataToSend
add wave -noupdate /i2c_controller_tb/DUT/i2c_clk
add wave -noupdate /i2c_controller_tb/DUT/i2c_data_en
add wave -noupdate /i2c_controller_tb/DUT/i2c_clk_en
add wave -noupdate /i2c_controller_tb/DUT/clk_1MHz
add wave -noupdate /i2c_controller_tb/DUT/i2c_ack
add wave -noupdate /i2c_controller_tb/DUT/shiftConcluded
add wave -noupdate /i2c_controller_tb/DUT/i2cVariable
add wave -noupdate -expand /i2c_controller_tb/I2C_data
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {95355388 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 269
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
WaveRestoreZoom {0 ps} {92708133 ps}
