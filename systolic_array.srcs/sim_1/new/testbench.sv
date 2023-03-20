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
 
 // Matrix inputs
 logic [width_p-1:0] row_i [array_height_p-1:0];
 logic [width_p-1:0] col_i [array_width_p-1:0];
 
 // Row inputs
 logic [(width_p*array_height_p)-1:0] flat_row_i;
 logic [array_height_p-1:0] flush_i, row_valid_i, row_ready_o;
 // Column inputs
 logic [(width_p*array_width_p)-1:0] flat_col_i;
 logic [array_width_p-1:0] col_valid_i, col_ready_o;
 // Outputs
 logic [width_p-1:0] correct_o [array_height_p-1:0][array_width_p-1:0];
 logic [(width_p*array_width_p*array_height_p)-1:0] flat_z_o, flat_correct_o;
 logic [(array_width_p*array_height_p)-1:0] z_valid_o, z_yumi_i;
 // Control signals
 logic [0:0] en_i;

// Flatten input arrays
for (genvar j = 0; j < array_height_p; j++) begin
    assign flat_row_i[(width_p*(j+1))-1:(width_p*j)] = row_i[j];
end
for (genvar j = 0; j < array_width_p; j++) begin
    assign flat_col_i[(width_p*(j+1))-1:(width_p*j)] = col_i[j];
end

// Flatten output arrays
for (genvar j = 0; j < array_height_p; j++) begin
    for (genvar k = 0; k < array_width_p; k++) begin
        // flatten the accumulator array into one obnoxious bus.
        assign flat_correct_o[
            (width_p*(j+1+(k*array_width_p)))-1 : 
            (width_p*(j+(k*array_width_p)))
            ] = correct_o[j][k];
    end
end
 
 // assign error_o = z_valid_o & (flat_z_o != correct_o);
 assign error_o = (flat_z_o != flat_correct_o);
 assign timeout_o = (i == max_clks);
 
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
,.row_i(flat_row_i)
,.row_valid_i(row_valid_i)
,.row_ready_o(row_ready_o)
,.col_i(flat_col_i)
,.col_valid_i(col_valid_i)
,.col_ready_o(col_ready_o)
,.z_o(flat_z_o)
,.z_valid_o(z_valid_o)
,.z_yumi_i(z_yumi_i)
);

initial begin
    $display("Begin Test:");
    $display();
    i = 0;
    en_i = 1'b1;
    row_i = {32'd0, 32'd0};
    col_i = {32'd0, 32'd0};
    
    // First two matrices:
    //  |13  45|     |83  9|
    //  |6   27| dot |22  1|
    flush_i = '0;
    correct_o = {
         {32'd81, 32'd1092}
        ,{32'd162, 32'd2069}
    };
    row_valid_i = '0; col_valid_i = '0;
    z_yumi_i = '0;
    
    @(negedge reset_i);
    
    @(negedge clk_i);
    row_i = {32'd0, 32'd45};
    col_i = {32'd0, 32'd22};
    row_valid_i = '1; col_valid_i = '1;
    @(negedge clk_i);
    row_valid_i = '0; col_valid_i = '0;
    
    for (i = 0; i < max_clks; i++) begin
        @(posedge clk_i);
        // If all input MACs are ready within max_clks
        if (&z_valid_o) break;
    end
    if (timeout_o) begin
        $display("Error! DUT timed out."); 
        $finish();
    end
    
    @(negedge clk_i);
    row_i = {32'd27, 32'd13};
    col_i = {32'd1, 32'd83};
    row_valid_i = '1; col_valid_i = '1;
    @(negedge clk_i);
    row_valid_i = '0; col_valid_i = '0;
    
    for (i = 0; i < max_clks; i++) begin
        @(posedge clk_i);
        // If all input MACs are ready within max_clks
        if (&z_valid_o) break;
    end
    if (timeout_o) begin
        $display("Error! DUT timed out."); 
        $finish();
    end
    
    @(negedge clk_i);
    row_i = {32'd6, 32'd0};
    col_i = {32'd9, 32'd0};
    row_valid_i = '1; col_valid_i = '1;
    @(negedge clk_i);
    row_valid_i = '0; col_valid_i = '0;
    
    for (i = 0; i < max_clks; i++) begin
        @(posedge clk_i);
        // If all input MACs are ready within max_clks
        if (&z_valid_o) break;
    end
    if (timeout_o) begin
        $display("Error! DUT timed out."); 
        $finish();
    end else if (error_o) begin
        $display(
            "Error! At i = %d, should be %h but got %h.",
            i,
            flat_z_o,
            flat_correct_o); 
        $finish();
    end
    
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
      end
   end

endmodule
