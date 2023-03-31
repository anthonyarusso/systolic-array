`timescale 1ns / 1ps

module testbench();

localparam width_p = 8;
localparam array_width_p = 2;
localparam array_height_p = 2;
localparam max_clks = 2 * array_width_p * array_height_p;
logic clk_i, reset_i, en_i, error_o; 
int i;
logic [31:0] correct_z_w;

// Assume both arrays are the same size (and square for now)
// Both are n x n

// For i in range(0, n)
    // $readmemh("A.hex", ((i+1)*n)-1, i*n);
    // $readmemh("B.hex", ((i+1)*n)-1, i*n);
    // row_valid_i = 4'b1000;
    // col_valid_i = 4'b1000;
    // for j in range(0, max_clks)
            // @(posedge clk_i);
    // if (!(&z_valid_o)) $display("Timed out!"); $finish();
    // 


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

logic [width_p-1:0] data_i, data_o, correct_data_o;
logic [0:0] flush_i, ready_o, valid_i, valid_o, yumi_i;
 
assign en_i = 1'b1;
assign error_o = (data_o != correct_data_o);
 
// DEBUG ONLY
wire [0:0] throwaway_busy_w, throwaway_idle_w;
wire [7:0] throwaway_onehot_w;

systolic_array
#(.width_p(width_p)
,.array_width_p(array_width_p)
,.array_height_p(array_height_p)
)
dut
(.clk_i(clk_i)
,.reset_i(reset_i)
,.en_i(en_i)
,.flush_i(flush_i)
,.ready_o(ready_o)
,.valid_i(valid_i)
,.data_i(data_i)
,.valid_o(valid_o)
,.yumi_i(yumi_i)
,.data_o(data_o)
,.busy_o(throwaway_busy_w)
,.idle_o(throwaway_idle_w)
,.onehot_o(throwaway_onehot_w)
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
    flush_i = 1'b0;
    valid_i = 1'b0;
    yumi_i = 1'b0;

    @(negedge reset_i);
    #5; // re-align with posedge
    
    // Matrix indices are as follows:
    // |0  1|
    // |2  3|
    // Systolic array consumer indices are as follows:
    //    0  1
    //  2 ╔═══╗
    //    ║   ║
    //  3 ╚═══╝

    //         |1  2|
    //         |3  4|
    // |1  2|   █  █       |7  10|
    // |3  4|   █  █  ---> |15 22|

    // Input cycle 1
    valid_i = 1'b1;
    data_i = 8'd3;
    #10; valid_i = 1'b0; #10; valid_i = 1'b1;
    data_i = 8'd4;
    #10; valid_i = 1'b0; #10; valid_i = 1'b1;
    data_i = 8'd2;
    #10; valid_i = 1'b0; #10; valid_i = 1'b1;
    data_i = 8'd4;
    #10; valid_i = 1'b0; #10; valid_i = 1'b1;
    valid_i = 1'b0;
    #20;

    @(posedge ready_o);
    #10;

    // Input cycle 2
    valid_i = 1'b1;
    data_i = 8'd1;
    #10; valid_i = 1'b0; #10; valid_i = 1'b1;
    data_i = 8'd2;
    #10; valid_i = 1'b0; #10; valid_i = 1'b1;
    data_i = 8'd1;
    #10; valid_i = 1'b0; #10; valid_i = 1'b1;
    data_i = 8'd3;
    #10; valid_i = 1'b0; #10; valid_i = 1'b1;
    valid_i = 1'b0;
    #20;

    @(posedge ready_o);
    // For waveform only.
    correct_z_w = {8'd22, 8'd15, 8'd10, 8'd7};

    #20;
    flush_i = 1'b1;
    correct_data_o = 8'd7;
    #10;
    flush_i = 1'b0;
    correct_data_o = 8'd10;
    #10;
    correct_data_o = 8'd15;
    #10;
    correct_data_o = 8'd22;
    #10;
    correct_data_o = '0;
    #20;

    if (error_o) begin
        $display("Error!");
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
