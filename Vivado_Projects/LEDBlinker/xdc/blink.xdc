#clock constraints

create_clock -name clk -period 10.000 [get_ports clk]

#pin assignments
set_property PACKAGE_PIN W5 [get_ports clk]
set_property PACKAGE_PIN U16 [get_ports led]
set_property PACKAGE_PIN V17 [get_ports sw]

set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

#IO Standards
set_property IOSTANDARD LVTTL [get_ports clk]
set_property IOSTANDARD LVTTL [get_ports led]
set_property IOSTANDARD LVTTL [get_ports sw]