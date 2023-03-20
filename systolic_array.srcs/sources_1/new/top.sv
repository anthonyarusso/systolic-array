`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of California, Santa Cruz
// Engineer: Anthony A. Russo
// 
// Create Date: 03/17/2023 05:29:07 PM
// Design Name: Systolic array
// Module Name: top
// Project Name: CSE 125 - Final Project
// Target Devices: PYNQ Z1
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// Friendly reminder that you should assign wires to inputs and not be assigning
// anything to the module's own inputs.
// Go to C:\Users\aarusso\systolic_array\systolic_array.srcs\sources_1\bd\zynq\hw_handoff
// for the .hwh file.
// 
//////////////////////////////////////////////////////////////////////////////////

// Effectively just a driver for the systolic array.
module top
#(
parameter width_p = 32
,parameter addr_width_p = 32
,parameter array_width_p = 2
,parameter array_height_p = 2
,parameter depth_p = 8 * array_width_p * array_height_p
)
(input [0:0] clk_i
,input [0:0] reset_i
,input [0:0] en_i

// Consumer interface
,output [0:0] wr_ready_o
,input [0:0] wr_valid_i
,input [width_p-1:0] wr_data_i

// Producer interface
,output [0:0] rd_valid_o
,input [0:0] rd_yumi_i
,output [width_p-1:0] rd_data_o
);

// If input FIFO's (wr_ptr - rd_ptr) >= (array_width_p * array_height_p)
// then there is a matrix! Read the data and begin computation.

// Input FIFO
fifo
#(.width_p(width_p)
,.depth_p(depth_p))
input_fifo_inst
(.clk_i(clk_i)
,.reset_i(reset_i)
,.ready_o(wr_ready_o)
,.valid_i(wr_valid_i)
,.data_i(wr_data_i)
,.yumi_i()
,.valid_o()
,.data_o()
);

systolic_array
#(.width_p(width_p)
,.array_width_p(array_width_p)
,.array_height_p(array_height_p)
)
systolic_array_inst
(
.clk_i(clk_i)
,.reset_i(reset_i)
,.en_i(en_i)
,.flush_i()
,.row_i()
,.row_valid_i()
,.row_ready_o()
,.col_i()
,.col_valid_i()
,.col_ready_o()
,.z_o()
,.z_valid_o()
,.z_yumi_i()
);

// Output FIFO
fifo
#(.width_p(width_p)
,.depth_p(depth_p))
output_fifo_inst
(.clk_i(clk_i)
,.reset_i(reset_i)
,.ready_o()
,.valid_i()
,.data_i()
,.yumi_i(rd_yumi_i)
,.valid_o(rd_valid_o)
,.data_o(rd_data_o)
);

endmodule
