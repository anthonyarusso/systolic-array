`timescale 1ns / 1ps

module
edge_detector
#(parameter rising_edge_p = 1'b1)
(input [0:0] clk_i
,input [0:0] d_i
,output [0:0] q_o
);

   wire [0:0] front_w, back_w;
   logic [0:0] q_l;
   assign q_o = q_l;

   dff
     #()
   a_dff_inst
     (.clk_i(clk_i)
     ,.reset_i(1'b0)
     ,.d_i(d_i)
     ,.q_o(front_w));

   dff
     #()
   b_dff_inst
     (.clk_i(clk_i)
     ,.reset_i(1'b0)
     ,.d_i(front_w)
     ,.q_o(back_w));

   always_comb begin
       if (rising_edge_p) begin
           // Rising edge
           q_l = front_w & ~back_w;
       end else begin
           // Falling edge
           q_l = ~front_w & back_w;
       end
   end

endmodule
