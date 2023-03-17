`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of California, Santa Cruz
// Engineer: Anthony A. Russo
// 
// Create Date: 03/14/2023 03:00:16 PM
// Design Name: Multiply and Accumulate Block
// Module Name: mac
// Project Name: CSE 125 Final Project - Systolic Array
// Target Devices: PYNQ-Z1
// Tool Versions: Vivado 2019.1
// Description: A simple systolic array to accelerate matrix multiplication.
// 
// Dependencies: None
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments
// 
//////////////////////////////////////////////////////////////////////////////////

// USE THESE BASEJUMP_STL MODULES
// https://github.com/bespoke-silicon-group/basejump_stl/blob/master/bsg_fpu/bsg_fpu_preprocess.v
// https://github.com/bespoke-silicon-group/basejump_stl/blob/master/bsg_fpu/bsg_fpu_defines.vh
// https://github.com/bespoke-silicon-group/basejump_stl/blob/master/bsg_misc/bsg_defines.v
// https://github.com/bespoke-silicon-group/basejump_stl/blob/master/bsg_fpu/bsg_fpu_add_sub.v
// https://github.com/bespoke-silicon-group/basejump_stl/blob/master/bsg_fpu/bsg_fpu_mul.v

module mac
  #(parameter `BSG_INV_PARAM(e_p)     // exponent width
    , parameter `BSG_INV_PARAM(m_p)   // mantissa width
  )
(
    input clk_i
    , input reset_i
    , input en_i
    
    // TODO: Friendly reminder that MAC will need two of each interface...

    // Consumer interface A
    , input a_v_i
    , input [e_p+m_p:0] a_i
    , output logic a_ready_o
    
    // Consumer interface B
    , input b_v_i
    , input [e_p+m_p:0] b_i
    , output logic b_ready_o

    // Producer interface A
    , output [e_p+m_p:0] a_o
    , output logic a_v_o
    , input a_yumi_i // when yumi_i is high, en_i also has to be high
        
    // Producer interface B
    , output [e_p+m_p:0] b_o
    , output logic b_v_o
    , input b_yumi_i // when yumi_i is high, en_i also has to be high
    
    // Shared producer interface
    , output logic [e_p+m_p:0] z_o // accumulator output (read after the whole system is finished).
    , output logic unimplemented_o
    , output logic invalid_o
    , output logic overflow_o
    , output logic underflow_o
);

// The add_sub and mul modules use all the same IO except add_sub also has a "sub_i" control input which I leave unused.

// If both consumers are ready AND valid, save a_i and b_i to registers and enter the multiplication state.
// Once the multiplication has finished, add the product to the accumulator register by entering the accumulation state.
// Once the acclumulation has finished, enter the done state.
// Once the downstream MACs also enter the done state, re-enter the ready state.

endmodule
