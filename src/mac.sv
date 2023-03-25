`timescale 1ns / 1ps

module mac
    #(parameter width_p = 32)
    (
    input [0:0] clk_i
    ,input [0:0] reset_i
    ,input [0:0] en_i
    
    // Flush producer
    ,output [width_p-1:0] accum_o
//    ,input [0:0] accum_yumi_i
    ,output[0:0] accum_valid_o
    
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
    
    typedef enum logic [7:0] {
        READY_S  = 8'b00000001,
        A_HELD_S = 8'b00000010,
        B_HELD_S = 8'b00000100,
        MULT_S   = 8'b00001000,
        ACCUM_S  = 8'b00010000,
        A_YUMI_S = 8'b00100000,
        B_YUMI_S = 8'b01000000,
        DONE_S   = 8'b10000000
    } state_e;
    
    state_e state_r, state_n;
    logic [width_p-1:0] a_r, b_r, accum_r, product_r;
    
    // Assign outputs
    assign a_o = a_r;
    assign b_o = b_r;
    assign accum_o = accum_r;
    assign a_ready_o = (state_r == READY_S | state_r == B_HELD_S);
    assign b_ready_o = (state_r == READY_S | state_r == A_HELD_S);
    assign a_valid_o = (state_r == DONE_S | state_r == B_YUMI_S);
    assign b_valid_o = (state_r == DONE_S | state_r == A_YUMI_S); // should these include both YUMI states?
    
    always_comb begin
        // iverilog doesn't support "unique"
        // unique casez ({state_r, a_valid_i, b_valid_i, a_yumi_i, b_yumi_i})
        casez ({state_r, a_valid_i, b_valid_i, a_yumi_i, b_yumi_i})
            {READY_S, 4'b10??}  : state_n = A_HELD_S;
            {READY_S, 4'b01??}  : state_n = B_HELD_S;
            {READY_S, 4'b11??}  : state_n = MULT_S;
            {A_HELD_S, 4'b?1??} : state_n = MULT_S;
            {B_HELD_S, 4'b1???} : state_n = MULT_S;
            {MULT_S, 4'b????}   : state_n = ACCUM_S; // always transition
            {ACCUM_S, 4'b????}  : state_n = DONE_S; // always transition
            {DONE_S, 4'b??10}   : state_n = A_YUMI_S;
            {DONE_S, 4'b??01}   : state_n = B_YUMI_S;
            {DONE_S, 4'b??11}   : state_n = READY_S;
            {A_YUMI_S, 4'b???1} : state_n = READY_S;
            {B_YUMI_S, 4'b??1?} : state_n = READY_S;
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
        end else if (en_i & (state_r == READY_S | state_r == B_HELD_S)) begin
            a_r <= a_i;
        end
    end
    
    always_ff @(posedge clk_i) begin
        if (reset_i) begin
            b_r <= '0;
        end else if (en_i & (state_r == READY_S | state_r == A_HELD_S)) begin
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

endmodule
