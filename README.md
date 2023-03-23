# systolic-array
SystemVerilog module that implements a systolic array (for matrix multiplication).

## Repository Structure
```bash

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
make iverilog  # For iverilog only
make verilator # For verilator only
make all       # For both
```

* * *

Credit to [erendn](https://github.com/erendn/sobel-pipeline-fpga/blob/main/README.md) for the README.md template.
