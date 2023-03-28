`timescale 1ns / 1ps

module testbench();

localparam width_p = 32;
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
 logic [width_p-1:0] z_o [array_height_p-1:0][array_width_p-1:0];
 logic [(width_p*array_width_p*array_height_p)-1:0] flat_z_o, flat_correct_o;
 logic [(array_width_p*array_height_p)-1:0] z_valid_o, z_yumi_i;

// Flatten input arrays
for (genvar j = 0; j < array_height_p; j++) begin
    assign flat_row_i[(width_p*(j+1))-1:(width_p*j)] = row_i[j];
end
for (genvar j = 0; j < array_width_p; j++) begin
    assign flat_col_i[(width_p*(j+1))-1:(width_p*j)] = col_i[j];
end

// Pack arrays into flattened busses for input/output compatibility
for (genvar j = 0; j < array_height_p; j++) begin
    for (genvar k = 0; k < array_width_p; k++) begin
        // flatten the accumulator array into one obnoxious bus.
        assign flat_correct_o[
            (width_p*(j+1+(k*array_width_p)))-1 : 
            (width_p*(j+(k*array_width_p)))
            ] = correct_o[j][k];
    end
end

// Unpack flat_z_o into z_o for easier viewing.
for (genvar j = 0; j < array_height_p; j++) begin
    for (genvar k = 0; k < array_width_p; k++) begin
        assign z_o[j][k] = flat_z_o [
            (width_p*(j+1+(k*array_width_p)))-1 : 
            (width_p*(j+(k*array_width_p)))
        ];
    end
end
 
 // assign error_o = z_valid_o & (flat_z_o !== correct_o);
 assign error_o = (flat_z_o !== flat_correct_o);
 
mac_array
#(
 .width_p(width_p)
 ,.array_width_p(array_width_p)
 ,.array_height_p(array_height_p)
)
dut
(.clk_i(clk_i)
,.reset_i(reset_i)
,.en_i(en_i)
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
    `ifdef VERILATOR
        $dumpfile("verilator.fst");
    `else
        $dumpfile("iverilog.vcd");
    `endif
        $dumpvars;

    // iverilog does not dump memory arrays by default.
    `ifdef IVERILOG
        for (int idx = 0; idx < array_width_p; idx++)
            $dumpvars(0, col_i[idx]);
        for (int idx = 0; idx < array_height_p; idx++)
            $dumpvars(0, row_i[idx]);
    `endif

    $display("Begin Test:");
    $display();
    i = 0;
    flush_i = '0;
    en_i = 1'b1;
    `ifdef VERILATOR
        row_i = {32'd0, 32'd0};
        col_i = {32'd0, 32'd0};
        flat_row_i = {row_i[1], row_i[0]};
        flat_col_i = {col_i[1], col_i[0]};
    `else
        $readmemh("./hex/zeros.hex", row_i, 1, 0);
        $readmemh("./hex/zeros.hex", col_i, 1, 0);
    `endif

    // Test matricies:
    //  |-37  44|     |83  99|
    //  |10  960| dot |22  -1|
   correct_o[1][1] = 32'd30;
   correct_o[1][0] = 32'd21950;
   correct_o[0][1] = -32'd3707;
   correct_o[0][0] = -32'd2103;
    row_valid_i = '0; col_valid_i = '0;
    z_yumi_i = '0;
    
    @(negedge reset_i);
    
    @(negedge clk_i);
    `ifdef VERILATOR
        row_i = {32'd0, 32'd44};
        col_i = {32'd0, 32'd22};
        flat_row_i = {row_i[1], row_i[0]};
        flat_col_i = {col_i[1], col_i[0]};
    `else
        $readmemh("./hex/row0.hex", row_i, 1, 0);
        $readmemh("./hex/col0.hex", col_i, 1, 0);
    `endif
    row_valid_i = 2'b01; col_valid_i = 2'b01;
    @(negedge clk_i);
    row_valid_i = '0; col_valid_i = '0;
    
    for (i = 0; (i < max_clks); i++) begin
        @(posedge clk_i);
    end
    
    @(negedge clk_i);
    `ifdef VERILATOR
        row_i = {32'd960, -32'd37};
        col_i = {-32'd1, 32'd83};
        flat_row_i = {row_i[1], row_i[0]};
        flat_col_i = {col_i[1], col_i[0]};
    `else
        $readmemh("./hex/row1.hex", row_i, 1, 0);
        $readmemh("./hex/col1.hex", col_i, 1, 0);
    `endif
    row_valid_i = 2'b11; col_valid_i = 2'b11;
    @(negedge clk_i);
    row_valid_i = '0; col_valid_i = '0;
    
    for (i = 0; (i < max_clks); i++) begin
        @(posedge clk_i);
    end
    
    @(negedge clk_i);
    `ifdef VERILATOR
        row_i = {32'd10, 32'd0};
        col_i = {32'd99, 32'd0};
        flat_row_i = {row_i[1], row_i[0]};
        flat_col_i = {col_i[1], col_i[0]};
    `else
        $readmemh("./hex/row2.hex", row_i, 1, 0);
        $readmemh("./hex/col2.hex", col_i, 1, 0);
    `endif
    row_valid_i = 2'b10; col_valid_i = 2'b10;
    @(negedge clk_i);
    row_valid_i = '0; col_valid_i = '0;
    
    for (i = 0; (i < max_clks); i++) begin
        @(posedge clk_i);
    end
    if (error_o) begin
        $display(
            "Error! At i = %d, should be %h but got %h.",
            i,
            flat_correct_o,
            flat_z_o);
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
