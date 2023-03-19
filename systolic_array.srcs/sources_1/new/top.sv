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
// 
//////////////////////////////////////////////////////////////////////////////////


module top
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

// Data signals
wire [width_p-1:0] rows_w [array_height_p-1:0][array_width_p:0]; // one extra col
wire [width_p-1:0] cols_w [array_height_p:0][array_width_p-1:0]; // one extra row
wire [width_p-1:0] z_w [array_height_p-1:0][array_width_p-1:0];

// Control signals
wire [0:0] row_valids_w [array_height_p-1:0][array_width_p:0];// one extra col
wire [0:0] col_valids_w [array_height_p:0][array_width_p-1:0]; // one extra row
wire [0:0] z_valids_w [array_height_p-1:0][array_width_p-1:0];
wire [0:0] row_readys_w [array_height_p-1:0][array_width_p:0];// one extra col
wire [0:0] col_readys_w [array_height_p:0][array_width_p-1:0]; // one extra row
wire [0:0] z_readys_w [array_height_p-1:0][array_width_p-1:0];
wire [0:0] flushes_w [array_height_p-1:0][array_width_p:0]; // one extra col

// Connect all MACs on the top and left sides to inputs
// TOP
for (genvar i = 0; i < array_width_p; i++) begin
    assign cols_w[0][i] = col_i[(width_p*(i+1))-1:(width_p*i)];
    assign col_valids_w[0][i] = col_valid_i[i];
    assign col_ready_o[i] = col_readys_w[0][i];
end
// LEFT
for (genvar i = 0; i < array_height_p; i++) begin
    assign rows_w[i][0] = row_i[(width_p*(i+1))-1:(width_p*i)];
    assign row_valids_w[i][0] = row_valid_i[i];
    assign row_ready_o[i] = row_readys_w[i][0];
    assign flushes_w[i][0] = flush_i[i];
end

// Connect every MAC's accumulation register and accum_valids to the outputs.
for (genvar i = 0; i < array_height_p; i++) begin
    for (genvar j = 0; j < array_width_p ; j++) begin
        assign z_o[
            (width_p*(i+1+(j*array_width_p)))-1 : 
            (width_p*(i+(j*array_width_p)))
            ] = z_w[i][j]; // flatten the accumulator array into one obnoxious bus.
        assign z_valid_o[i+(j*array_width_p)] = z_valids_w[i][j];
        assign z_readys_w[i][j] = z_yumi_i[i+(j*array_width_p)];
    end
end


for (genvar i = 0; i < array_height_p; i++) begin
    for (genvar j = 0; j < array_width_p; j++) begin
         mac
         #(width_p)
         mac_inst
         (.clk_i(clk_i)
         ,.reset_i(reset_i)
         ,.en_i(en_i)
         ,.flush_i(flushes_w[i][j])
         ,.flush_o(flushes_w[i][j+1])
         ,.accum_o(z_w[i][j])
         ,.accum_valid_o()
         ,.a_valid_i(row_valids_w[i][j])
         ,.a_ready_o(row_readys_w[i][j])
         ,.a_i(rows_w[i][j])
         ,.b_valid_i(col_valids_w[i][j])
         ,.b_ready_o(col_readys_w[i][j])
         ,.b_i(cols_w[i][j])
         ,.a_valid_o(row_valids_w[i][j+1])
         ,.a_yumi_i(row_readys_w[i][j+1])
         ,.a_o(rows_w[i][j+1]) // last column's a signals should be pruned by synthesis
         ,.b_valid_o(col_valids_w[i+1][j])
         ,.b_yumi_i(col_readys_w[i+1][j])
         ,.b_o(cols_w[i+1][j]) // last rows's b signals should be pruned by synthesis
         );
    end
end

endmodule
