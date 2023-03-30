`timescale 1ns / 1ps

module toggle
#(reset_val_p = 1'b0)
(input [0:0] clk_i
,input [0:0] reset_i
,input [0:0] toggle_i
,output [0:0] toggle_o
);

logic [0:0] toggle_r;
assign toggle_o = toggle_r;

always_ff @(posedge clk_i) begin
    if (reset_i) begin
        toggle_r <= reset_val_p;
    end else if (toggle_i) begin
        toggle_r <= ~toggle_r;
    end
end

endmodule
