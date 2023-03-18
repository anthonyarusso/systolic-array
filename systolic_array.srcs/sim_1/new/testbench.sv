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
localparam max_clks = 8;
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
 
 logic [0:0] en_i, flush_i, a_valid_i, a_ready_o, b_valid_i,
    b_ready_o, a_valid_o, a_yumi_i, b_valid_o, b_yumi_i;
    
 logic [width_p-1:0] a_i, b_i, a_o, b_o, accum_o, correct_o;
 
 mac
 #(width_p)
 dut
 (.clk_i(clk_i)
 ,.reset_i(reset_i)
 ,.en_i(en_i)
 ,.flush_i(flush_i)
 ,.accum_o(accum_o)
 ,.a_valid_i(a_valid_i)
 ,.a_ready_o(a_ready_o)
 ,.a_i(a_i)
 ,.b_valid_i(b_valid_i)
 ,.b_ready_o(b_ready_o)
 ,.b_i(b_i)
 ,.a_valid_o(a_valid_o)
 ,.a_yumi_i(a_yumi_i)
 ,.a_o(a_o)
 ,.b_valid_o(b_valid_o)
 ,.b_yumi_i(b_yumi_i)
 ,.b_o(b_o)
 );
 
 assign error_o = (accum_o != correct_o);
 assign timeout_o = (i == max_clks);

initial begin
    i = 0;
    en_i = 1'b1;
    flush_i = 1'b0;
    a_i = '0; b_i = '0;
    a_valid_i = 1'b0; b_valid_i = 1'b0;
    a_yumi_i = 1'b0; b_yumi_i = 1'b0;
    #10;
    $display("Begin Test:");
    $display();
    
    @(negedge reset_i);
    
    a_i = 32'd322; b_i = 32'd465;
    correct_o = 32'd149_730;
    a_valid_i = 1'b1; b_valid_i = 1'b1;
    
    for (i = 0; i < max_clks; i++) begin
        @(posedge clk_i);
        if (a_valid_o) break;
    end
    if (timeout_o) begin
        $display("\033[0;31mError!\033[0m: DUT timed out."); 
        $finish();
    end else if (error_o) begin
        $display(
            "\033[0;31mError!\033[0m: At i = %d, should be %d but got %b.",
            i,
            accum_o,
            correct_o); 
        $finish();
    end
    a_yumi_i = 1'b1; b_yumi_i = 1'b1; // consume
    #10;
    a_yumi_i = 1'b0; b_yumi_i = 1'b0;
    
    $finish(); // Probably didn't error.
end

final begin
      $display("Simulation time is %t", $time);
      if(error_o | timeout_o) begin
         $display("\033[0;31m    ______                    \033[0m");
         $display("\033[0;31m   / ____/_____________  _____\033[0m");
         $display("\033[0;31m  / __/ / ___/ ___/ __ \\/ ___/\033[0m");
         $display("\033[0;31m / /___/ /  / /  / /_/ / /    \033[0m");
         $display("\033[0;31m/_____/_/  /_/   \\____/_/     \033[0m");
         $display();
         $display("Simulation Failed");
      end else begin
         $display("\033[0;32m    ____  ___   __________\033[0m");
         $display("\033[0;32m   / __ \\/   | / ___/ ___/\033[0m");
         $display("\033[0;32m  / /_/ / /| | \\__ \\\__ \ \033[0m");
         $display("\033[0;32m / ____/ ___ |___/ /__/ / \033[0m");
         $display("\033[0;32m/_/   /_/  |_/____/____/  \033[0m");
         $display();
         $display("Simulation Succeeded!");
      end // else: !if(error_unlock_o)
   end

endmodule
