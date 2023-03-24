`timescale 1ns / 1ps

module counter
#(parameter width_p)
(input [0:0] clk_i
,input [0:0] en_i
,input [0:0] reset_i
,output [width_p-1:0] count_o
);

logic [width_p-1:0] count_r;

always_ff @(posedge clk_i) begin
    if (reset_i) begin
        count_r <= '0;
    end else if (en_i) begin
        count_r <= count_r + 1;
    end 
end

endmodule
