TB_FILE=tb_file

SOURCES += ../src/counter.sv
SOURCES += ../src/mac.sv
SOURCES += ./nonsynth_clock_gen.sv
SOURCES += ./nonsynth_reset_gen.sv
SOURCES += ../src/onehot_counter.sv
SOURCES += ../src/mac_array.sv
SOURCES += ../src/systolic_array.sv
SOURCES += ./testbench.sv

# To run the other testbenches, comment out testbench.sv and
# uncomment the corresponding sources files.

# ===== SIPO Testbench =====
# SOURCES += ../icebreaker/sipo.sv
# SOURCES += ./sipo_tb.sv
# ===== MAC Testbench =====
# SOURCES += ./mac_tb.sv
# ===== MAC Array Testbench =====
# SOURCES += ./mac_array_tb.sv

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
.PHONY: clean
