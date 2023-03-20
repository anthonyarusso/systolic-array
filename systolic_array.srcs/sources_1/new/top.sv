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
// BUS [COLUMNS] [ROWS]!!!
// Friendly reminder that you should assign wires to inputs and not be assigning
// anything to the module's own inputs.
// Go to C:\Users\aarusso\systolic_array\systolic_array.srcs\sources_1\bd\zynq\hw_handoff
// for the .hwh file.
// 
//////////////////////////////////////////////////////////////////////////////////


module top
#(
parameter width_p = 32
,parameter addr_width_p = 32
,parameter array_width_p = 2
,parameter array_height_p = 2
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

/*
module systolic_array
#(
parameter width_p = 32
,parameter array_width_p = 2
,parameter array_height_p = 2
)
(input [0:0] clk_i
,input [0:0] reset_i
,input [0:0] en_i

,input [array_height_p-1:0] flush_i

// Row consumer interface
,input [(width_p * array_height_p)-1:0] row_i
,input [array_height_p-1:0] row_valid_i
,output [array_height_p-1:0] row_ready_o

// Column consumer interface
,input [(width_p * array_width_p)-1:0] col_i
,input [array_width_p-1:0] col_valid_i
,output [array_width_p-1:0] col_ready_o

// Producer interface
,output [(width_p * array_width_p * array_height_p)-1:0] z_o
,output [(array_width_p * array_height_p)-1:0] z_valid_o
,input [(array_width_p * array_height_p)-1:0] z_yumi_i
);
*/

endmodule
