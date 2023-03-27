// Top-level design file for the icebreaker FPGA board
//
// Wi23, Lab 3
module top
  (input [0:0] clk_12mhz_i
  ,input [0:0] reset_n_async_unsafe_i
   // n: Negative Polarity (0 when pressed, 1 otherwise)
   // async: Not synchronized to clock
   // unsafe: Not De-Bounced
  ,input [3:1] button_async_unsafe_i
   // async: Not synchronized to clock
   // unsafe: Not De-Bounced
  ,input [3:0] kpyd_row_i
  ,output [3:0] kpyd_col_o
  ,output [7:0] ssd_o
  ,output [5:1] led_o);

   // These two D Flip Flops form what is known as a Synchronizer. We
   // will learn about these in Week 5, but you can see more here:
   // https://inst.eecs.berkeley.edu/~cs150/sp12/agenda/lec/lec16-synch.pdf
   wire reset_n_sync_r;
   wire reset_sync_r;
   wire reset_r; // Use this as your reset_signal

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
       
  // Your code goes here

 // Create a circular shift register to drive only one column LOW at a time.
 wire [3:0] col_sel_w;

 shift
 #(4, 4'b1110)
 col_driver_shift_inst
 (.clk_i(clk_12mhz_i)
 ,.reset_i(reset_r)
 ,.data_i(col_sel_w[3])
 ,.data_o(col_sel_w)
 );

 assign kpyd_col_o = col_sel_w;
 wire [3:0] kpyd_row_sync_w;

 // Synchronize kpyd_row_i input to prevent segment bleed over.
 for (genvar i = 0; i < 4; i++) begin
     dff
     #()
     sync_row_inst
     (.clk_i(clk_12mhz_i)
     ,.reset_i(reset_r)
     ,.d_i(kpyd_row_i[i])
     ,.q_o(kpyd_row_sync_w[i])
     );
 end

 // Disable leds for now.
 assign led_o = 5'b00000;
 
 // Somehow col_sel_w is shifted left by one bit? I just manually shifted it
 // back...
 kpyd2ssd
 #()
 kpyd2ssd_inst
 (.kpyd_i(~{kpyd_row_sync_w, {col_sel_w[0], col_sel_w[3:1]}})
 ,.ssd_o(ssd_o)
 );

endmodule
