all:
	make clear
	make compile
	make simulate

compile:
	vlib work
	vlog -sv string_o.sv

simulate:
	vsim string_o -l string_o.log -c -do "run -all;quit;"

clear:
	clear
