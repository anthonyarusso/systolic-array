`timescale 1ns / 1ps

module sipo
#(parameter [31:0] width_p = 8
,parameter [31:0] depth_p = 128)
(input [0:0] clk_i
,input [0:0] reset_i
,input [0:0] valid_i
,input [width_p-1:0] data_i
,output [0:0] valid_o
,output [(width_p*depth_p)-1:0] data_o
);

// Implements a parameterized, write-priority/write-first asynchronous RAM.
// WARN: Reset will not change values to zero. Must write zeros manually.

logic [width_p - 1 : 0] mem [depth_p - 1 : 0];
logic [$clog2(depth_p)-1:0] wr_ptr_r;
logic [0:0] one_full_write_cycle_r;
wire [0:0] full_write_cycle_w;

always_ff @(posedge clk_i) begin
    if (reset_i) begin
        wr_ptr_r <= '0;
    end else if (valid_i) begin
       mem[wr_ptr_r] <= data_i;
       wr_ptr_r <= wr_ptr_r + 1;
   end
end

// Read all values at once.
for (genvar iter = 0; iter < depth_p; iter++) begin
    assign data_o[((iter+1)*width_p)-1:(iter*width_p)] = mem[iter];
end

// SIPO is valid only after writing to the final address, i.e. wr_ptr_r
// wraps back around to 0. But SIPO cannot start valid, so use a single
// flip-flop to indicate whether at least one full write cycle has occurred.
// valid_o is HIGH if wr_ptr_r == 0 and at least one full write cycle has
// occurred. If the SIPO is in the middle of a write cycle (wr_ptr_r not at 0)
// then valid_o should be LOW.
always_ff @(posedge clk_i) begin
    if (reset_i) begin
        one_full_write_cycle_r <= 1'b0;
    end else if (full_write_cycle_w) begin
        one_full_write_cycle_r <= 1'b1;
    end
end

assign full_write_cycle_w = (wr_ptr_r == (depth_p-1)) & valid_i;
// For Verilator sim
// assign full_write_cycle_w = (wr_ptr_r == {depth_p-1}[2:0]) & valid_i;
assign valid_o = one_full_write_cycle_r & (wr_ptr_r == '0);
       
endmodule
