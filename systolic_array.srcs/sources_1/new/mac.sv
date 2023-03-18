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
    #(
    parameter width_p = 32
    )
    (
    input [0:0] clk_i
    ,input [0:0] reset_i
    ,input [0:0] en_i
    
    ,input [0:0] flush_i
    ,output [width_p:0] accum_o
    
    // Consumer interface A
    ,input [0:0] a_valid_i
    ,output [0:0] a_ready_o
    ,input [width_p:0] a_i
    
    // Consumer interface B
    ,input [0:0] b_valid_i
    ,output [0:0] b_ready_o
    ,input [width_p:0] b_i
    
    // Producer interface A
    ,output [0:0] a_valid_o
    ,input [0:0] a_yumi_i
    ,output [width_p:0] a_o
    
    // Producer interface B
    ,output [0:0] b_valid_o
    ,input [0:0] b_yumi_i
    ,output [width_p:0] b_o
    );
    
    typedef enum logic [3:0] {
        READY_S = 4'b0001,
        MULT_S  = 4'b0010,
        ACCUM_S = 4'b0100,
        DONE_S  = 4'b1000
    } state_e;
    
    state_e state_r, state_n;
    logic [width_p:0] a_r, b_r, accum_r;
    logic [0:0] all_consumers_rv_l;
    
    // assign a_ready_o = ;
    assign all_consumers_rv_l = a_valid_i & a_ready_o & b_valid_i & b_ready_o;
    
    always_ff @(posedge clk_i) begin
        if (reset_i) begin
            // RESET
            state_r <= READY_S;
        end else if (en_i) begin
            // UPDATE
            state_r <= state_n;
        end
            // HOLD
    end
    
    always_ff @(posedge clk_i) begin
        if (reset_i) begin
            // RESET
            a_r <= '0;
            b_r <= '0;
        end else if (en_i) begin // AND ready
            // UPDATE
            a_r <= a_i;
            b_r <= b_i;
        end
            // HOLD
    end
    
    logic [width_p:0] product_l;
    assign product_l = a_r * b_r;
    
    
    
endmodule
