
create_clock -name inputOscillator -period 20 [get_ports {clk_MAIN}]

set_false_path -from [get_ports {rst}]

set_false_path -from [get_ports {W_ADDRESS[0] W_ADDRESS[1] W_ADDRESS[2] W_ADDRESS[7] W_ADDRESS[6] W_ADDRESS[5] W_ADDRESS[4] W_ADDRESS[3] SDA SCL SQ_in}]

set_false_path -to [get_ports {SDA SCL}]

create_generated_clock -name oneMHzClock -source [get_ports {clk_MAIN}] -divide_by 50 -duty_cycle 2 [get_registers {clk_1MHz}]