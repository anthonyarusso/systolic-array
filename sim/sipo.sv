`timescale 1ns / 1ps

module sipo
#(parameter [31:0] width_p = 8
,parameter [31:0] depth_p = 128
,parameter  filename_p = "memory_init_file.hex")
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

// wr_ptr_r has reached the final address. SIPO is full and ready to be read from.
assign valid_o = (wr_ptr_r == {depth_p-1}[$clog2(depth_p)-1:0]);
       
endmodule
