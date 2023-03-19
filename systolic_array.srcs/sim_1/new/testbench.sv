`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/17/2023 09:02:04 PM
// Design Name: 
// Module Name: testbench
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
// 
//////////////////////////////////////////////////////////////////////////////////


module testbench();

localparam width_p = 32;
localparam array_width_p = 2;
localparam array_height_p = 2;
localparam max_clks = 2 * 3 * array_width_p;
logic [0:0] clk_i, reset_i, error_o, timeout_o;
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
 
 // wire [width_p-1:0] rows_w [array_width_p:0][array_height_p-1:0]; // one extra col
// wire [width_p-1:0] cols_w [array_width_p-1:0][array_height_p:0]; // one extra row
 
 // Matrix inputs
 logic [width_p-1:0] row_i [array_width_p-1:0][array_height_p-1:0];
 logic [width_p-1:0] col_i [array_width_p-1:0][array_height_p-1:0];
 
 // Row inputs
  logic [(width_p*array_height_p)-1:0] flat_row_i;
 logic [array_height_p-1:0] flush_i, row_valid_i, row_ready_o;
 // Column inputs
 logic [(width_p*array_width_p)-1:0] flat_col_i;
 logic [array_width_p-1:0] col_valid_i, col_ready_o;
 // Outputs
 logic [(width_p*array_width_p*array_height_p)-1:0] z_o, correct_o;
 logic [(array_width_p*array_height_p)-1:0] z_valid_o, z_yumi_i;
 // Control signals
 logic [0:0] en_i;
 
top
#(
 .width_p(width_p)
 ,.array_width_p(array_width_p)
 ,.array_height_p(array_height_p)
)
dut
(.clk_i(clk_i)
,.reset_i(reset_i)
,.en_i(en_i)
,.flush_i(flush_i)
,.row_i(row_i)
,.row_valid_i(row_valid_i)
,.row_ready_o(row_ready_o)
,.col_i(col_i)
,.col_valid_i(col_valid_i)
,.col_ready_o(col_ready_o)
,.z_o(z_o)
,.z_valid_o(z_valid_o)
,.z_yumi_i(z_yumi_i)
);
 
 assign error_o = (z_o != correct_o);
 assign timeout_o = (i == max_clks);

initial begin
    i = 0;
    en_i = 1'b1;
    flush_i = '0;
    flat_row_i = '0; flat_col_i = '0;
    row_valid_i = '0; col_valid_i = '0;
    z_yumi_i = '0;
    #10;
    $display("Begin Test:");
    $display();
    
    @(negedge reset_i);
    
    
    $finish(); // Probably didn't error.
end

final begin
      $display("Simulation time is %t", $time);
      if(error_o | timeout_o) begin
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
      end // else: !if(error_unlock_o)
   end

endmodule
