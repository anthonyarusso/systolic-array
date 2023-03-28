// Top-level design file for the icebreaker FPGA board
// NOT MY WORK. Credit to Dustin Richmond, UCSC.

module top
  (input [0:0] clk_12mhz_i
  ,input [0:0] reset_n_async_unsafe_i
   // n: Negative Polarity (0 when pressed, 1 otherwise)
   // async: Not synchronized to clock
   // unsafe: Not De-Bounced
  ,input [3:1] button_async_unsafe_i
   // async: Not synchronized to clock
   // unsafe: Not De-Bounced
  ,output [7:0] ssd_o
  ,output [5:1] led_o);

   // These two D Flip Flops form what is known as a Synchronizer. We
   // will learn about these in Week 5, but you can see more here:
   // https://inst.eecs.berkeley.edu/~cs150/sp12/agenda/lec/lec16-synch.pdf
   wire reset_n_sync_r;
   wire reset_sync_r;
   wire reset_r; // Use this as your reset_signal
   wire btn_1_sync, btn_2_sync;
   wire btn_1_w, btn_2_w;
   wire en_w, data_w;

   dff
     #()
   sync_a
     (.clk_i(clk_12mhz_i)
     ,.reset_i(1'b0)
     ,.d_i(reset_n_async_unsafe_i)
     ,.q_o(reset_n_sync_r));

   inv
     #()
   inv
     (.a_i(reset_n_sync_r)
     ,.b_o(reset_sync_r));

   dff
     #()
   sync_b
     (.clk_i(clk_12mhz_i)
     ,.reset_i(1'b0)
     ,.d_i(reset_sync_r)
     ,.q_o(reset_r));

   dff
     #()
   sync_btn_2
     (.clk_i(clk_12mhz_i)
     ,.reset_i(1'b0)
     ,.d_i(button_async_unsafe_i[2])
     ,.q_o(btn_2_sync));

   dff
     #()
   safe_btn_2
     (.clk_i(clk_12mhz_i)
     ,.reset_i(1'b0)
     ,.d_i(btn_2_sync)
     ,.q_o(btn_2_w));

   dff
     #()
   sync_btn_1
     (.clk_i(clk_12mhz_i)
     ,.reset_i(1'b0)
     ,.d_i(button_async_unsafe_i[1])
     ,.q_o(btn_1_sync));

   dff
     #()
   safe_btn_1
     (.clk_i(clk_12mhz_i)
     ,.reset_i(1'b0)
     ,.d_i(btn_1_sync)
     ,.q_o(btn_1_w));

 // Enable button needs to be edge detected, but data button only needs to be
 // debounced.
 assign en_w = btn_2_sync & ~btn_2_w;
 assign data_w = btn_1_w;

 // Disable leds for now.
 assign led_o = 5'b00000;
 // I think button 3 is dead. :(

endmodule
