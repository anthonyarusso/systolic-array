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
,parameter depth_p = (array_width_p + array_height_p)
)
(input [0:0] clk_i
,input [0:0] reset_i
,input [0:0] en_i
,input [0:0] flush_i

// Consumer interface
,output [0:0] ready_o
,input [0:0] valid_i
,input [width_p-1:0] data_i

// Producer interface
,output [0:0] valid_o
,input [0:0] yumi_i
,output [width_p-1:0] data_o
);

localparam num_consumers_lp = array_width_p + array_height_p;

typedef enum logic [3:0] {
    READY_S = 4'b0001,
    PEND_S  = 4'b0010,
    WORK_S  = 4'b0100,
    FLUSH_S = 4'b1000
} state_e;

state_e state_r, state_n;

wire [(width_p*array_width_p*array_height_p)-1:0] z_w;
wire [(array_width_p * array_height_p)-1:0] z_valid_w;
logic [array_height_p-1:0] row_valid_i, row_ready_o;
logic [array_width_p-1:0] col_valid_i, col_ready_o;

wire [num_consumers_lp-1:0] onehot_w;
wire [$clog2(array_width_p*array_height_p)-1:0] flush_count_w;
wire [0:0] hottest_bit_w,  flush_done_w, all_consumers_ready_w;
assign hottest_bit_w = onehot_w[num_consumers_lp-1];
assign flush_done_w = (flush_count_w == (array_width_p*array_height_p)-1);
assign all_consumers_ready_w = &row_ready_o & &col_ready_o;

always_ff @(posedge clk_i) begin
    if (reset_i) begin
        state_r <= READY_S;
    end else if (en_i) begin
        state_r <= state_n;
    end
end

always_comb begin
    casez ({state_r, valid_i, flush_i, hottest_bit_w, flush_done_w, all_consumers_ready_w})
    {READY_S, 5'b10???} : state_n = PEND_S;
    {READY_S, 5'b01???} : state_n = FLUSH_S;
    {PEND_S, 5'b??1??}  : state_n = WORK_S;
    {WORK_S, 5'b????1}  : state_n = READY_S;
    {FLUSH_S, 5'b???1?} : state_n = READY_S;
    default : state_n <= state_r;
    endcase
end

onehot_counter
#(.width_p(num_consumers_lp))
onehot_counter_inst
(.clk_i(clk_i)
,.en_i(en_i)
,.reset_i(reset_i)
,.count_o(onehot_w)
);

counter
#(.width_p($clog2(array_width_p*array_height_p)))
counter_inst
(.clk_i(clk_i)
,.en_i(en_i)
,.reset_i(reset_i | flush_i)
,.count_o(flush_count_w)
);

// Guard all valids with valid_i
assign row_valid_i = {array_height_p{valid_i}} & onehot_w[num_consumers_lp-1:array_width_p];
assign col_valid_i = {array_width_p{valid_i}} & onehot_w[array_width_p-1:0];
// Apply onehot as a bitmask, then see if the selected bit is HIGH by reductive OR
assign ready_o = |(onehot_w & {row_ready_o, col_ready_o});
// assign valid_o = ;
logic [width_p-1:0] data_o_l;
// Flush multiplexer -- HARDCODED TO 2x2 MATRIX!
always_comb begin
    case (flush_count_w)
        2'd0 : data_o_l = z_w[(1*width_p)-1:(0*width_p)];
        2'd1 : data_o_l = z_w[(2*width_p)-1:(1*width_p)];
        2'd2 : data_o_l = z_w[(3*width_p)-1:(2*width_p)];
        2'd3 : data_o_l = z_w[(4*width_p)-1:(3*width_p)];
        default : data_o_l = '0; // should this be 'z?
    endcase
end

assign data_o = data_o_l;

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
,.flush_i({array_height_p{flush_i}})
,.row_i({array_height_p{data_i}})
,.row_valid_i(row_valid_i)
,.row_ready_o(row_ready_o)
,.col_i({array_width_p{data_i}})
,.col_valid_i(col_valid_i)
,.col_ready_o(col_ready_o)
,.z_o(z_w)
,.z_valid_o(z_valid_w) // don't connect
,.z_yumi_i(onehot_w & {(array_width_p*array_height_p){yumi_i}})
);

endmodule
