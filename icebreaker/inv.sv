// This module implements an inverter
`timescale 1ns / 1ps

module inv
  (input [0:0] a_i
  ,output [0:0] b_o);

   assign b_o = ~a_i;

endmodule
	   
