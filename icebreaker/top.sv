`timescale 1ns / 1ps

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

  localparam width_p = 8;
  localparam array_width_p = 2;
  localparam array_height_p = 2;
  localparam num_macs_p = array_width_p * array_height_p;

   // These two D Flip Flops form what is known as a Synchronizer. We
   // will learn about these in Week 5, but you can see more here:
   // https://inst.eecs.berkeley.edu/~cs150/sp12/agenda/lec/lec16-synch.pdf
   wire reset_n_sync_r;
   wire reset_sync_r;
   wire reset_r; // Use this as your reset_signal
   wire [0:0] pre_en_w, pre_data_w, en_w, data_w;
   wire [0:0] btn_2_w, btn_3_w, five_sec_w, clk_91hz_w, toggle_display_w;
   // Guard both button wires with ~display_flag_r (don't allow button presses
   // during the display state).
   // TODO
   // assign en_w = pre_en_w & ~display_flag_r;
   // assign data_w = pre_data_w & ~{width_p{display_flag_r}};

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
   
    // Edge detect button 2 relative to the 91hz clock and then edge
    // detect the resulting signal according to the 12Mhz clock.
    edge_detector
    #(.rising_edge_p(1'b1))
    btn_2_edge_detector_inst
    (.clk_i(clk_91hz_w)
    ,.d_i(button_async_unsafe_i[2])
    ,.q_o(btn_2_w)
    );

    edge_detector
    #(.rising_edge_p(1'b1))
    enable_edge_detector_inst
    (.clk_i(clk_12mhz_i)
    ,.d_i(btn_2_w)
    ,.q_o(en_w)
    );

   dff
     #()
   sync_btn_1
     (.clk_i(clk_12mhz_i)
     ,.reset_i(1'b0)
     ,.d_i(button_async_unsafe_i[1])
     ,.q_o(data_w));

    edge_detector
    #(.rising_edge_p(1'b1))
    btn_3_edge_detector_inst
    (.clk_i(clk_12mhz_i)
    ,.d_i(button_async_unsafe_i[3])
    ,.q_o(btn_3_w)
    );

    toggle
    #(.reset_val_p(1'b0))
    display_toggle_inst
    (.clk_i(clk_12mhz_i)
    ,.reset_i(reset_r)
    ,.toggle_i(btn_3_w)
    ,.toggle_o(toggle_display_w)
    );

wire [0:0] sipo_valid_w;
wire [width_p-1:0] sipo_data_w;
// Trickle in SIPO accepts one bit at a time.
sipo
#(.width_p(1)
,.depth_p(width_p))
sipo_inst
(.clk_i(clk_12mhz_i)
,.reset_i(reset_r)
,.valid_i(en_w)
,.data_i(data_w)
,.valid_o(sipo_valid_w)
,.data_o(sipo_data_w)
);

// Edge detect sipo_valid_w so only one value gets read from memory.
wire [0:0] single_sipo_valid_w;
edge_detector
#(.rising_edge_p(1'b1))
sipo_valid_edge_detector_inst
(.clk_i(clk_12mhz_i)
,.d_i(sipo_valid_w)
,.q_o(single_sipo_valid_w)
);

logic [0:0] double_sipo_buffer_a_r, double_sipo_buffer_b_r;
// TODO: Stupid band-aid fix workaround. :)
// (It makes single_sipo_valid_w last two clock cycles instead of one.)
always_ff @(posedge clk_12mhz_i) begin
    double_sipo_buffer_a_r <= single_sipo_valid_w;
    double_sipo_buffer_b_r <= double_sipo_buffer_a_r;
end

wire [0:0] double_sipo_valid_w;
assign double_sipo_valid_w = (double_sipo_buffer_a_r | double_sipo_buffer_b_r);
// END - Stupid fix

wire [0:0] sys_ready_w, sys_valid_w, sys_yumi_w;
wire [width_p-1:0] sys_data_w;
// DEBUG ONLY
wire [0:0] busy_w, idle_w;
wire [7:0] onehot_disp_w;

systolic_array
#(.width_p(width_p)
,.array_width_p(array_width_p)
,.array_height_p(array_height_p))
systolic_array_inst
(.clk_i(clk_12mhz_i)
,.reset_i(reset_r)
,.en_i(1'b1)
,.flush_i(btn_3_w)
,.ready_o(sys_ready_w)
,.valid_i(double_sipo_valid_w)
,.data_i(sipo_data_w)
,.valid_o(sys_valid_w)
,.yumi_i(1'b1)
,.data_o(sys_data_w)
,.busy_o(busy_w)
,.idle_o(idle_w)
,.onehot_o(onehot_disp_w)
);

// Matrix output to FIFO
wire [0:0] fifo_ready_w, fifo_yumi_w, fifo_valid_w;
wire [width_p-1:0] matrix_data_w;

fifo
#(.width_p(width_p)
,.depth_p(num_macs_p))
fifo_inst
(.clk_i(clk_12mhz_i)
,.reset_i(reset_r)
,.ready_o(fifo_ready_w)
,.valid_i(sys_valid_w)
,.data_i(sys_data_w)
,.yumi_i(fifo_yumi_w & display_flag_r)
,.valid_o(fifo_valid_w)
,.data_o(matrix_data_w)
);

/* When FIFO becomes full (~ready_o), display_flag_r should go HIGH and stay
* HIGH until FIFO becomes empty (~valid_o) */
logic [0:0] display_flag_r;
wire [0:0] flag_up_w, flag_dw_w;
// wire [0:0] fifo_ready_w, fifo_yumi_w, fifo_valid_w;
// wire [width_p-1:0] matrix_data_w;

edge_detector
#(.rising_edge_p(1'b0))
flag_up_edge_detector_inst
(.clk_i(clk_12mhz_i)
,.d_i(fifo_ready_w)
,.q_o(flag_up_w)
);
edge_detector
#(.rising_edge_p(1'b0))
flag_dw_edge_detector_inst
(.clk_i(clk_12mhz_i)
,.d_i(fifo_valid_w)
,.q_o(flag_dw_w)
);

always_ff @(posedge clk_12mhz_i) begin
    if (reset_r) begin
        display_flag_r <= 1'b0;
    end else if (flag_up_w || flag_dw_w) begin
        display_flag_r <= flag_up_w;
    end
end

// Matrix output to FIFO
/* OLD
fifo
#(.width_p(width_p)
,.depth_p(num_macs_p))
fifo_inst
(.clk_i(clk_12mhz_i)
,.reset_i(reset_r)
,.ready_o(fifo_ready_w)
,.valid_i(single_sipo_valid_w)
,.data_i(sipo_data_w)
,.yumi_i(fifo_yumi_w && display_flag_r)
,.valid_o(fifo_valid_w)
,.data_o(matrix_data_w)
);
*/

clock_divider
#(.width_p(26))
five_sec_clock_divider_inst
(.clk_i(clk_12mhz_i)
,.en_i(display_flag_r)
// TODO
,.reset_i(reset_r | flag_up_w)
,.slow_clk_o(five_sec_w)
);

// Edge detect five_sec_w to consume one piece of matrix data every five
// seconds.
edge_detector
#(.rising_edge_p(1'b1))
five_sec_edge_detector_inst
(.clk_i(clk_12mhz_i)
,.d_i(five_sec_w)
,.q_o(fifo_yumi_w)
);

clock_divider
#(.width_p(17))
ssd_clock_divider_inst
(.clk_i(clk_12mhz_i)
,.en_i(1'b1)
,.reset_i(reset_r)
,.slow_clk_o(clk_91hz_w)
);

wire [7:0] display_data_w;
// assign display_data_w = toggle_display_w ? sipo_data_w : matrix_data_w;
assign display_data_w = matrix_data_w;
// assign display_data_w = onehot_disp_w;

two_ssd
#()
two_ssd_inst
(.clk_50hz_i(clk_91hz_w)
,.right_digit_i(display_data_w[7:4])
,.left_digit_i(display_data_w[3:0])
,.ssd_o(ssd_o)
);

assign led_o[1] = sipo_valid_w;
assign led_o[2] = display_flag_r;
// assign led_o[3] = toggle_display_w;
assign led_o[3] = busy_w;
assign led_o[4] = sys_ready_w;
assign led_o[5] = idle_w;

endmodule
