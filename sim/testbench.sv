`timescale 1ns / 1ps

module testbench();

localparam width_p = 8;
localparam array_width_p = 2;
localparam array_height_p = 2;
localparam max_clks = 2 * array_width_p * array_height_p;
logic clk_i, reset_i, en_i, error_o; 
int i;

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
 
assign en_i = 1'b1;
assign error_o = 1'b0;
 
top
#(.width_p(width_p)
,.array_width_p(array_width_p)
,.array_height_p(array_height_p)
)
dut
(.clk_i(clk_i)
,.reset_i(reset_i)
,.en_i(en_i)
,.flush_i()
,.ready_o()
,.valid_i()
,.data_i()
,.valid_o()
,.yumi_i()
,.data_o()
);

initial begin
    `ifdef VERILATOR
        $dumpfile("verilator.fst");
    `else
        $dumpfile("iverilog.vcd");
    `endif
        $dumpvars;
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
