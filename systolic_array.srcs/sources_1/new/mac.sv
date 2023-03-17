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

// State machine (one-hot)
typedef enum logic [3:0] {
    READY_S    = 4'b0001,
    MULT_S     = 4'b0010,
    ACCUM_S    = 4'b0100,
    DONE_S     = 4'b1000
} state_e;

state_e state_r, state_n;
logic [e_p+m_p:0] a_r, b_r, accum_r;
wire [0:0] multiply_done_w, add_done_w;

wire [0:0] all_consumers_rv_w, downstream_consumed_w;
assign all_consumers_rv = a_v_i & b_v_i & a_ready_o & b_ready_o;
assign downstream_consumed_w = a_yumi_i & b_yumi_i; 

// Define state transition according to the current state and case signals.
always_comb begin
    casez ({state_r, all_consumers_rv, multiply_done_w, add_done_w, downstream_consumed_w})
        {READY_S, 4'b1???} : state_n = MULT_S;
        {MULT_S,  4'b?1??} : state_n = ACCUM_S;
        {ACCUM_S, 4'b??1?} : state_n = DONE_S;
        {DONE_S,  4'b???1} : state_n = READY_S;
    endcase
end

// Update state
always_ff @ (posedge clk_i) begin
    if (reset_i) begin
    // RESET
    state_r <= READY_S;
    accum_r <= '0;
    end else if (en_i) begin
    // UPDATE
    state_r <= state_n;
    accum_r <= '0; // TODO: assign sum here
    end
    // HOLD
end

// The add_sub and mul modules use all the same IO except add_sub also has a "sub_i" control input which I leave unused.

// If both consumers are ready AND valid, save a_i and b_i to registers and enter the multiplication state.
// Once the multiplication has finished, add the product to the accumulator register by entering the accumulation state.
// Once the acclumulation has finished, enter the done state.
// Once the downstream MACs also enter the done state, re-enter the ready state.

endmodule
