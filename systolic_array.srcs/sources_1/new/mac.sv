`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/17/2023 05:44:12 PM
// Design Name: 
// Module Name: mac
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// Uses a ready-valid-& interface on the consumers and a ready-then-valid / ready-yumi
// interface on the producers.
//
//////////////////////////////////////////////////////////////////////////////////

module mac
    #(parameter width_p = 32)
    (
    input [0:0] clk_i
    ,input [0:0] reset_i
    ,input [0:0] en_i
    
    ,input [0:0] flush_i
    ,output [0:0] flush_o
    ,output [width_p-1:0] accum_o
    
    // Consumer interface A
    ,input [0:0] a_valid_i
    ,output [0:0] a_ready_o
    ,input [width_p-1:0] a_i
    
    // Consumer interface B
    ,input [0:0] b_valid_i
    ,output [0:0] b_ready_o
    ,input [width_p-1:0] b_i
    
    // Producer interface A
    ,output [0:0] a_valid_o
    ,input [0:0] a_yumi_i
    ,output [width_p-1:0] a_o
    
    // Producer interface B
    ,output [0:0] b_valid_o
    ,input [0:0] b_yumi_i
    ,output [width_p-1:0] b_o
    );
    
    typedef enum logic [3:0] {
        READY_S = 4'b0001,
        MULT_S  = 4'b0010,
        ACCUM_S = 4'b0100,
        DONE_S  = 4'b1000
    } state_e;
    
    state_e state_r, state_n;
    logic [width_p-1:0] a_r, b_r, accum_r, product_r;
    logic [0:0] all_consumers_rv_l,consumed_l;
    
    // Assign outputs
    assign a_o = a_r;
    assign b_o = b_r;
    assign accum_o = accum_r;
    assign a_ready_o = (state_r == READY_S);
    assign b_ready_o = (state_r == READY_S);
    assign a_valid_o = (state_r == DONE_S);
    assign b_valid_o = (state_r == DONE_S);
    assign all_consumers_rv_l = a_valid_i & a_ready_o & b_valid_i & b_ready_o;
    assign consumed_l = a_yumi_i & b_yumi_i;
    
    always_comb begin
        unique casez ({state_r, all_consumers_rv_l, consumed_l})
            {READY_S, 2'b1?} : state_n = MULT_S;
            {MULT_S,  2'b??} : state_n = ACCUM_S; // always transition
            {ACCUM_S, 2'b??} : state_n = DONE_S; // always transition
            {DONE_S,  2'b?1} : state_n = READY_S;
            default : state_n = state_r; // HOLD
        endcase
    end
    
    always_ff @(posedge clk_i) begin
        if (reset_i) begin
            state_r <= READY_S;
        end else if (en_i) begin
            state_r <= state_n;
        end
    end
    
    always_ff @(posedge clk_i) begin
        if (reset_i) begin
            a_r <= '0;
            b_r <= '0;
        end else if (en_i & (state_r == READY_S)) begin
            a_r <= a_i;
            b_r <= b_i;
        end
    end
    
    always_ff @(posedge clk_i) begin
        if (reset_i) begin
            product_r <= '0;
        end else if (en_i & (state_r == MULT_S)) begin
            product_r <= a_r * b_r;
        end
    end
    
    always_ff @(posedge clk_i) begin
        if (reset_i) begin
            accum_r <= '0;
        end else if (en_i & (state_r == ACCUM_S)) begin
            accum_r <= accum_r + product_r;
        end
    end
    
    // TODO: Complete the flush functionality.
    
endmodule
