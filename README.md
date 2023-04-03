# systolic-array
SystemVerilog module that implements a systolic array (for matrix multiplication).

## Repository Structure
```bash
├── basejump_stl
├── LICENSE
├── README.md
├── sim
│   ├── hex
│   │   ├── col0.hex
│   │   ├── col1.hex
│   │   ├── col2.hex
│   │   ├── correct_o.hex
│   │   ├── correct_row0.hex
│   │   ├── correct_row1.hex
│   │   ├── matrices.hex
│   │   ├── row0.hex
│   │   ├── row1.hex
│   │   ├── row2.hex
│   │   └── zeros.hex
│   ├── mac_tb.sv
│   ├── Makefile
│   └── testbench.sv
└── src
    ├── fifo.sv
    ├── mac.sv
    ├── nonsynth_clock_gen.sv
    ├── nonsynth_reset_gen.sv
    ├── ram_1w1r_async.sv
    ├── systolic_array.sv
    └── top.sv
```

## Instructions for Setup
1. Clone the repository.
`git clone git@github.com:anthonyarusso/systolic-array.git`

2. Install the following dependencies:
  + [Python](https://www.python.org/) >= 3.6
  + [Icarus Verilog](https://github.com/steveicarus/iverilog) and/or [Verilator](https://github.com/verilator/verilator)
  
## Instructions for Simulation
Run the following commands to simulate the design using `iverilog` and/or `verilator`:
```bash
cd systolic-array/sim
make iverilog  # For iverilog only (Currently broken!)
make verilator # For verilator only
make all       # For both
```

* * *

Credit to [erendn](https://github.com/erendn/sobel-pipeline-fpga/blob/main/README.md) for the README.md template.
