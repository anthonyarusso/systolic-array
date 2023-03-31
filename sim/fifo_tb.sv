`timescale 1ns / 1ps

module testbench();

localparam width_p = 8;
localparam depth_p = 4;
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

logic [0:0] valid_i, valid_o, ready_o, yumi_i;
logic [width_p-1:0] data_i;
logic [width_p-1:0] data_o, correct_data_o;

assign error_o = (data_o != correct_data_o);
 
fifo
#(.width_p(width_p)
,.depth_p(depth_p))
fifo_inst
(.clk_i(clk_i)
,.reset_i(reset_i)
,.ready_o(ready_o)
,.valid_i(valid_i)
,.data_i(data_i)
,.yumi_i(yumi_i)
,.valid_o(valid_o)
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
    yumi_i = 1'b0;

    @(negedge reset_i);
    #5; // re-align with posedge

    #10;
    valid_i = 1'b1;
    data_i = 8'd1;
    #10;
    data_i = 8'd2;
    #10;
    data_i = 8'd3;
    #10;
    data_i = 8'd4;
    #10;
    data_i = 8'd5; // Shouldn't work!
    #10;
    valid_i = 1'b0;
    #10;

    correct_data_o = 8'd1;
    #10;
    if (error_o) begin
        $display("Error: data_o is %b, should be %b.", data_o, correct_data_o);
        $finish();
    end
    // Begin consuming values.
    correct_data_o = 8'd2;
    yumi_i = 1'b1;
    #10;
    if (error_o) begin
        $display("Error: data_o is %b, should be %b.", data_o, correct_data_o);
        $finish();
    end
    correct_data_o = 8'd3;
    #10;
    if (error_o) begin
        $display("Error: data_o is %b, should be %b.", data_o, correct_data_o);
        $finish();
    end
    correct_data_o = 8'd4;
    #10;
    if (error_o) begin
        $display("Error: data_o is %b, should be %b.", data_o, correct_data_o);
        $finish();
    end
    correct_data_o = '0;
    #10;
    if (error_o) begin
        $display("Error: data_o is %b, should be %b.", data_o, correct_data_o);
        $finish();
    end
    #30;
    
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
