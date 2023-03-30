-include ./fpga.mk
TB_FILE=tb_file

SOURCES += ../src/counter.sv
SOURCES += ../src/mac.sv
SOURCES += ../src/mac_array.sv
SOURCES += ../src/onehot_counter.sv
SOURCES += ../src/systolic_array.sv
SOURCES += ./clock_divider.sv
SOURCES += ./dff.sv
SOURCES += ./edge_detector.sv
SOURCES += ./fifo.sv
SOURCES += ./sipo.sv
SOURCES += ./inv.sv
SOURCES += ./kypd2ssd.sv
SOURCES += ./ram_1w1r_async.sv
SOURCES += ./toggle.sv
SOURCES += ./two_ssd.sv

# add -fst after "vvp ${TB_FILE}" to generate fst waveforms instead
iverilog:
	@iverilog -g2012 -D IVERILOG -o ${TB_FILE} ${SOURCES}
	@vvp ${TB_FILE}
.PHONY: iverilog

VERILATOR_OPTS = -sv --timing --trace-fst -timescale-override 1ns/1ps
verilator:
	@verilator -o ${TB_FILE} ${VERILATOR_OPTS} --binary --top-module testbench ${SOURCES}
	@./obj_dir/${TB_FILE}
.PHONY: verilator

all: iverilog verilator
.PHONY: all

clean:
	@rm -f ${TB_FILE}
	@rm -rf obj_dir/
	@rm -f iverilog.vcd
	@rm -f verilator.fst
	# @rm -f *.hex
.PHONY: clean
