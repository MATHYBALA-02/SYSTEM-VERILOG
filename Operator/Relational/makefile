compile:
			vlib work
			vlog -sv relational_code.sv

simulate:
			vsim relational_code -l relational_code_output.log -c -do "run -all; exit;"

all:

			vlib work
			vlog -sv relational_code.sv
			vsim relational_code -l relational_code_output.log -c -do "run -all; exit;"
