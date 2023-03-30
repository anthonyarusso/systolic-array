`timescale 1ns / 1ps

module testbench();

localparam width_p = 8;
localparam array_width_p = 2;
localparam array_height_p = 2;
localparam num_macs_p = array_width_p * array_height_p;
localparam max_clks = 8;
logic clk_i, reset_i, en_i, error_o; 
int i;

nonsynth_clock_gen
 #(.cycle_time_p(10))
cg
 (.clk_o(clk_i));

nonsynth_reset_gen
 #(.num_clocks_p(1)
  ,.reset_cycles_lo_p(1)
  ,.reset_cycles_hi_p(10))
rg
 (.clk_i(clk_i)
 ,.async_reset_o(reset_i));

logic [0:0] valid_i, valid_o;
logic [0:0] data_i;
logic [width_p-1:0] data_o, correct_data_o;

assign error_o = (data_o != correct_data_o);
 
wire [0:0] sipo_valid_w;
wire [width_p-1:0] sipo_data_w;
sipo
#(.width_p(1)
,.depth_p(width_p))
sipo_inst
(.clk_i(clk_i)
,.reset_i(reset_i)
,.valid_i(valid_i)
,.data_i(data_i)
,.valid_o(sipo_valid_w)
,.data_o(sipo_data_w)
);

// Edge detect sipo_valid_w so only one value gets read from memory.
wire [0:0] single_sipo_valid_w;
edge_detector
#(.rising_edge_p(1'b1))
sipo_valid_edge_detector_inst
(.clk_i(clk_i)
,.d_i(sipo_valid_w)
,.q_o(single_sipo_valid_w)
);

logic [0:0] fifo_ready_w, fifo_yumi_w, fifo_valid_w;
wire [width_p-1:0] matrix_data_w;

fifo
#(.width_p(width_p)
,.depth_p(num_macs_p))
fifo_inst
(.clk_i(clk_i)
,.reset_i(reset_i)
,.ready_o(fifo_ready_w)
,.valid_i(single_sipo_valid_w)
,.data_i(sipo_data_w)
,.yumi_i(fifo_yumi_w)
,.valid_o(fifo_valid_w)
,.data_o(data_o)
);

initial begin
    `ifdef VERILATOR
        $dumpfile("verilator.fst");
    `else
        $dumpfile("iverilog.vcd");
    `endif
        $dumpvars;

    $display("Begin test:");
    $display();
    #10;
    correct_data_o = '0;
    data_i = '0;
    valid_i = 1'b0;

    @(negedge reset_i);
    #5; // re-align with posedge

    #10;

    valid_i = 1'b1;
    /**/ data_i = 1'b1;
    #10; data_i = 1'b0;
    #10; data_i = 1'b1;
    #10; data_i = 1'b0;
    #10; data_i = 1'b0;
    #10; data_i = 1'b0;
    #10; data_i = 1'b0;
    #10; data_i = 1'b1;
    #10;
    valid_i = 1'b0;
    data_i = 1'b0;
    #20;
    valid_i = 1'b1;
    /**/ data_i = 1'b0;
    #10; data_i = 1'b1;
    #10; data_i = 1'b0;
    #10; data_i = 1'b1;
    #10; data_i = 1'b1;
    #10; data_i = 1'b1;
    #10; data_i = 1'b0;
    #10; data_i = 1'b1;
    #10;
    valid_i = 1'b0;
    data_i = 1'b0;
    #20;
    valid_i = 1'b1;
    /**/ data_i = 1'b0;
    #10; data_i = 1'b1;
    #10; data_i = 1'b1;
    #10; data_i = 1'b0;
    #10; data_i = 1'b1;
    #10; data_i = 1'b0;
    #10; data_i = 1'b0;
    #10; data_i = 1'b0;
    #10;
    valid_i = 1'b0;
    data_i = 1'b0;
    #20;
    fifo_yumi_w = 1'b1;
    #40;

    if (error_o) begin
        $display("Error: data_o is %b, should be %b.", data_o, correct_data_o);
        $finish();
    end
    
    if (!error_o) $finish(); // Probably didn't error.
    // Warning Verilator will reach this line and be okay, anything else will
    // probably hang.
    `ifndef VERILATOR
        $display("Error: Hang after missing call to $finish()!");
    `endif
end

final begin
      $display("Simulation time is %t", $time);
      if(error_o) begin
         $display("    ______                    ");
         $display("   / ____/_____________  _____");
         $display("  / __/ / ___/ ___/ __ \\/ ___/");
         $display(" / /___/ /  / /  / /_/ / /    ");
         $display("/_____/_/  /_/   \\____/_/     ");
         $display();
         $display("Simulation Failed");
      end else begin
         $display("    ____  ___   __________");
         $display("   / __ \\/   | / ___/ ___/");
         $display("  / /_/ / /| | \\__ \\\__  ");
         $display(" / ____/ ___ |___/ /__/ / ");
         $display("/_/   /_/  |_/____/____/  ");
         $display();
         $display("Simulation Succeeded!");
      end
   end

endmodule
