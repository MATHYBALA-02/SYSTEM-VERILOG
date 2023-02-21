compile:
			vlib work
			vlog -sv equal_code.sv

simulate:
			vsim equal_code -l equal_code_output.log -c -do "run -all; exit;"

all:

			vlib work
			vlog -sv equal_code.sv
			vsim equal_code -l equal_code_output.log -c -do "run -all; exit;"
