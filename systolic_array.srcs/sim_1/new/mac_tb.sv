`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/17/2023 12:46:17 PM
// Design Name: 
// Module Name: mac_tb
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


module mac_tb();

localparam e_p = 8; // exponent
localparam m_p = 23; // mantissa

// Local variables
logic [e_p+m_p:0] a_i, b_i;
logic [0:0] a_v_i, b_v_i, a_yumi_i, b_yumi_i;
wire [e_p+m_p:0] a_o, b_o, mac_o;
wire [0:0] a_ready_o, b_ready_o, a_v_o, b_v_o,
    unimplemented_o, invalid_o, overflow_o, underflow_o;

// Testbench outputs
logic [e_p+m_p:0] correct_o;
logic [0:0] error_o;

wire [0:0] clk_i, reset_i;

// Clock and reset generation
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

mac
#(e_p, m_p)
dut
(
.clk_i(clk_i)
,.reset_i(reset_i)
,.en_i(1'b1)
,.a_v_i(a_v_i)
,.a_ready_o(a_ready_o)
,.a_i(a_i)
,.b_v_i(b_v_i)
,.b_ready_o(b_ready_o)
,.b_i(b_i)
,.a_v_o(a_v_o)
,.a_yumi_i(a_yumi_i)
,.a_o(a_o)
,.b_v_o(b_v_o)
,.b_yumi_i(b_yumi_i)
,.b_o(b_o)
,.z_o(mac_o)
,.unimplemented_o(unimplemented_o)
,.invalid_o(invalid_o)
,.overflow_o(overflow_o)
,.underflow_o(underflow_o)
);

assign error_o = (mac_o != correct_o);

initial begin
      #10;
      $display("Begin Test:");
      $display();
      a_v_i = 1'b0; b_v_i = 1'b0; a_yumi_i = 1'b0; b_yumi_i = 1'b0;
      a_i = '0;
      b_i = '0;
      // Check initial conditions
      correct_o = '0;
      if (error_o) begin
        $display("\033[0;31mError!\033[0m: MAC initalized to non-zero!");
        $finish();
      end
      
      #10;
      // Use this tool to determine values: https://www.h-schmidt.net/FloatConverter/IEEE754.html
      a_v_i = 1'b1; b_v_i = 1'b1; a_yumi_i = 1'b0; b_yumi_i = 1'b0;
      a_i = 32'h44d48000; // +1700.0
      b_i = 32'h4780e800; // +66000.0
      correct_o = 32'h4cd60128; // +112200000.0
      
      #10;
      // Wait for MAC to finish operation.
      @((a_v_o & b_v_o)); // no posedge?
      if (error_o) begin
        $display("\033[0;31mError!\033[0m: MAC is %h", mac_o, " should be %h.", correct_o);
        $finish();
      end
      a_yumi_i = 1'b1; b_yumi_i = 1'b1; // consume
      
      $finish();
end

final begin
$display("Simulation time is %t", $time);
     if(error_o) begin
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
      end

end

endmodule
