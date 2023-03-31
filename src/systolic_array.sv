// A driver for the systolic array module.
`timescale 1ns / 1ps

module systolic_array
#(
parameter width_p = 32
,parameter array_width_p = 2
,parameter array_height_p = 2
)
(input [0:0] clk_i
,input [0:0] reset_i
,input [0:0] en_i
,input [0:0] flush_i

// Consumer interface
,output [0:0] ready_o
,input [0:0] valid_i
,input [width_p-1:0] data_i

// Producer interface
,output [0:0] valid_o
,input [0:0] yumi_i
,output [width_p-1:0] data_o
// DEBUG ONLY
,output [0:0] busy_o
,output [0:0] idle_o
,output [7:0] onehot_o
);

localparam num_consumers_lp = array_width_p + array_height_p;
localparam num_macs_lp = array_width_p * array_height_p;

/*
* This module assumes that the next MAC consumer is ready by the time the
* onehot_counter selects it for input. This assumption is dependent on the
* implementation of mac.sv. So here it's fine.
*/

/*
* Since the systolic_array module doesn't currently support flushing, this
* top module instead resets the entire systolic_array before passing in
* a new pair of matrices.
*/

typedef enum logic [4:0] {
    IDLE_S   = 5'b00001,
    INPUT_S  = 5'b00010,
    BUSY_S   = 5'b00100,
    FLUSH_S  = 5'b01000,
    F_DONE_S = 5'b10000
} state_e;

state_e state_r, state_n;

always_comb begin
    casez ({
        state_r,
        valid_i,
        flush_i,
        hottest_bit_w,
        all_consumers_ready_w,
        flush_done_w
    })

    {IDLE_S,   5'b10???} : state_n = INPUT_S;
    {INPUT_S,  5'b1?1??} : state_n = BUSY_S;
    {BUSY_S,   5'b???1?} : state_n = IDLE_S;
    {IDLE_S,   5'b01???} : state_n = FLUSH_S;
    {FLUSH_S,  5'b????1} : state_n = F_DONE_S;
    {F_DONE_S, 5'b?????} : state_n = IDLE_S;
    default : state_n = state_r;

    endcase
end

assign busy_o = (state_r == BUSY_S);
assign idle_o = (state_r == IDLE_S);
assign onehot_o = {4'd0, onehot_w};

always_ff @(posedge clk_i) begin
    if (reset_i) begin
        state_r <= IDLE_S;
    end else if (en_i) begin
        state_r <= state_n;
    end
end

wire [num_consumers_lp-1:0] onehot_w;
wire [$clog2(num_macs_lp)-1:0] flush_count_w;
wire [array_height_p-1:0] row_valid_i, row_ready_o;
wire [array_width_p-1:0] col_valid_i, col_ready_o;
wire [(width_p * array_height_p)-1:0] row_i;
wire [(width_p * array_width_p)-1:0] col_i;
wire [0:0] hottest_bit_w, all_consumers_ready_w, flush_done_w, flush_array_w;
wire [0:0] reset_onehot_w;
wire [(width_p * num_macs_lp)-1:0] z_w;
logic [width_p-1:0] data_o_l;

// Send data_i to every consumer, but only send one valid_i signal at a time.
assign {row_valid_i, col_valid_i} = onehot_w & {num_consumers_lp{valid_i}};
assign row_i = {array_height_p{data_i}};
assign col_i = {array_width_p{data_i}};

// MSB of onehot_counter indicates all consumers have received a valid this
// input step.
assign hottest_bit_w = onehot_w[num_consumers_lp-1];
assign all_consumers_ready_w = (&row_ready_o & &col_ready_o);
assign flush_done_w = (flush_count_w == (num_macs_lp-1));
assign flush_array_w = (state_r == F_DONE_S);
assign reset_onehot_w = ((state_r == IDLE_S) & valid_i);

// Assign outputs.
assign ready_o = ((state_r == IDLE_S) | (state_r == INPUT_S));
assign valid_o = (state_r == FLUSH_S);

// Due to weird timing issues, the MAC consumers do not always grab data_i
// on the same clock cycle as they are slected by the onehot counter
// (presumably because the onehot selects them at the same time they update
// their input registers). To work around this, I've manually increased the
// clock period of the onehot_counter to two clock cycles using the slow_en_r
// signal so each MAC consumer has an extra clock cycle to consume data_i.
logic [0:0] slow_en_r;

always_ff @(posedge clk_i) begin
    if (reset_i) begin
        slow_en_r <= 1'b0;
    end else if (en_i & valid_i) begin
        slow_en_r <= ~slow_en_r;
    end
end

// The one hot counter sends a "valid_i" signal to only one of the outward
// facing MAC consumers at a time.
onehot_counter
#(num_consumers_lp)
onehot_counter_inst
(.clk_i(clk_i)
// ,.en_i(en_i & valid_i)
,.en_i(en_i & slow_en_r)
,.reset_i(reset_i | reset_onehot_w)
,.count_o(onehot_w)
);

counter
#($clog2(num_macs_lp))
flush_counter_inst
(.clk_i(clk_i)
,.en_i(en_i & (state_r == FLUSH_S))
,.reset_i(reset_i | flush_i)
,.count_o(flush_count_w)
);

// Cuz I'm lazy.
wire [3:0] z_valid_throwaway_w, z_yumi_throwaway_w;

mac_array
#(.width_p(width_p)
,.array_width_p(array_width_p)
,.array_height_p(array_height_p)
)
mac_array_inst
(
.clk_i(clk_i)
,.reset_i(reset_i | flush_array_w)
,.en_i(en_i)
,.row_i(row_i)
,.row_valid_i(row_valid_i)
,.row_ready_o(row_ready_o)
,.col_i(col_i)
,.col_valid_i(col_valid_i)
,.col_ready_o(col_ready_o)
,.z_o(z_w)
,.z_valid_o(z_valid_throwaway_w)
,.z_yumi_i(z_yumi_throwaway_w)
);

// Output multiplexer
// TODO: Generalize this.
// WARN: HARDCODED FOR 2x2 MATRIX OUTPUT!
always_comb begin
    case (flush_count_w)
        2'd0 : data_o_l = z_w[1*width_p-1:0*width_p];
        2'd1 : data_o_l = z_w[2*width_p-1:1*width_p];
        2'd2 : data_o_l = z_w[3*width_p-1:2*width_p];
        2'd3 : data_o_l = z_w[4*width_p-1:3*width_p];
        default: data_o_l = '0; // 'z;
    endcase
end

assign data_o = data_o_l;

endmodule
