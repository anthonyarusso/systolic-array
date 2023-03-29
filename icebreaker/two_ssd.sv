/* A module to drive both digits of the 1BitSquared 7 Segement Display
* PMOD device. See the following links for more information.
* https://1bitsquared.com/products/pmod-7-segment-display
* https://digilent.com/reference/pmod/pmodssd/reference-manual
*/
`timescale 1ns / 1ps

module
two_ssd
#()
(input [0:0] clk_50hz_i
,input [3:0] right_digit_i
,input [3:0] left_digit_i
,output [7:0] ssd_o
);

  logic [3:0] curr_digit_w;
  assign curr_digit_w = clk_50hz_i ? left_digit_i : right_digit_i;
  wire [7:0] mem_w;

  ram_1w1r_async
  #(8
  ,16
  ,"bin_to_ssd.hex"
  )
  ssd_ram_inst
  (.clk_i(1'b0)
  ,.reset_i(1'b0)
  ,.wr_valid_i(1'b0) // read only
  ,.wr_data_i('0)
  ,.wr_addr_i('0)
  ,.rd_addr_i(curr_digit_w)
  ,.rd_data_o(mem_w)
  );

  assign ssd_o = {clk_50hz_i, mem_w[6:0]};

endmodule
