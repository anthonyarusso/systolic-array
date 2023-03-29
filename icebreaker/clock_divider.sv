`timescale 1ns / 1ps

module
clock_divider
#(parameter width_p = 8)
(input clk_i
,input en_i
,input reset_i
,output slow_clk_o
);

wire [width_p-1:0] count_w;

counter
#(.width_p(width_p))
counter_inst
(.clk_i(clk_i)
,.en_i(en_i)
,.reset_i(reset_i)
,.count_o(count_w)
);

assign slow_clk_o = count_w[width_p-1];

endmodule
