compile:
	 vlib work
	 vlog -sv data_type_shortint.sv
	
simulate:
	 vsim data_type_shortint -l data_type_shortint.log -c -do "run -all; exit;"
	
all:
	make clear
	make compile
	make simulate
	
clear:
	clear
