// NOT MY WORK - credit Dustin Richmond UCSC
module nonsynth_clock_gen
  #(parameter cycle_time_p = 10)
   (output bit clk_o);

   initial begin
      $display("%m with cycle_time_p ",cycle_time_p);
      assert(cycle_time_p >= 2)
	else $error("cannot simulate cycle time less than 2");
   end
   /* verilator lint_off STMTDLY */
   always #(cycle_time_p/2.0) begin
      /* verilator lint_on STMTDLY */
      clk_o = ~clk_o;
      
   end

endmodule
