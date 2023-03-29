`timescale 1ns / 1ps

module ram_1w1r_async
#(parameter [31:0] width_p = 8
,parameter [31:0] depth_p = 128
,parameter  filename_p = "zeros.hex")
(input [0:0] clk_i
,input [0:0] reset_i
,input [0:0] wr_valid_i
,input [width_p-1:0] wr_data_i
,input [$clog2(depth_p) - 1 : 0] wr_addr_i
,input [$clog2(depth_p) - 1 : 0] rd_addr_i
,output [width_p-1:0] rd_data_o
);

// Implements a parameterized, write-priority/write-first asynchronous RAM.

logic [width_p - 1 : 0] mem [depth_p - 1 : 0];

initial begin
   $readmemh(filename_p, mem, 0, depth_p-1);
end

// Check for address conflict
assign rd_data_o = ((rd_addr_i == wr_addr_i) && wr_valid_i) ?
   wr_data_i :
   mem[rd_addr_i];

always_ff @ (posedge clk_i) begin
   if (wr_valid_i) begin
       mem[wr_addr_i] <= wr_data_i;
   end
end
       
endmodule
