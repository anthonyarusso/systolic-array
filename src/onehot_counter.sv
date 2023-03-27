module onehot_counter
#(parameter width_p = 8)
(input [0:0] clk_i
,input [0:0] en_i
,input [0:0] reset_i
,output [width_p-1:0] count_o
);

logic [width_p-1:0] count_r, count_n;

// If MSB is hot, then roll over, else shift.
assign count_n = (count_r[width_p-1]) ? 1 : count_r << 1;
assign count_o = count_r;

always_ff @(posedge clk_i) begin
    if (reset_i) begin
        count_r <= 1;
    end else if (en_i) begin
        count_r <= count_n;
    end
end

endmodule
