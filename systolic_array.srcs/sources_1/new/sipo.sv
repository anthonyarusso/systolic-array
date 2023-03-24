`timescale 1ns / 1ps

module sipo
#(parameter [31:0] width_p = 8
,parameter [31:0] depth_p = 128)
(input [0:0] clk_i
,input [0:0] reset_i
// Consumer interface
,output [0:0] ready_o
,input [0:0] valid_i
,input [width_p-1:0] data_i
// Producer interface
,input [0:0] yumi_i
,output [width_p-1:0] valid_o
,output [(width_p*depth_p)-1:0] data_o
);
    
logic [$clog2(depth_p)-1:0] wr_ptr_r;
wire [0:0] full_w;
assign full_w = (wr_ptr_r == (depth_p-1));
assign ready_o = ~full_w;
assign valid_o = full_w; // read the entire SIPO at once



always_ff @(posedge clk_i) begin
    if (reset_i) begin
        wr_ptr_r <= '0;
    end else if (valid_i & ~full_w) begin
        wr_ptr_r <= wr_ptr_r + 1;
    end
end

logic [width_p - 1 : 0] mem [depth_p - 1 : 0];


// Output the whole memory at once, lmao.
for (genvar iter = 0; iter < depth_p; iter++) begin
    assign data_o[width_p*(iter+1)-1 : width_p*iter] = mem[iter];
end

always_ff @ (posedge clk_i) begin
   if (valid_i) begin
       mem[wr_ptr_r] <= data_i;
   end
end

endmodule
