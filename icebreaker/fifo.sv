`timescale 1ns / 1ps

module fifo
#(parameter [31:0] width_p = 8
,parameter [31:0] depth_p = 128)
(input [0:0] clk_i
,input [0:0] reset_i
// Consumer interface
,output [0:0] ready_o
,input [0:0] valid_i
,input [width_p-1:0] data_i
// Producer interface
,input [0:0] yumi_i
,output [0:0] valid_o
,output [width_p-1:0] data_o
);
// TODO: band-aid solution, give the FIFO one extra memory address to simplify
// the full and empty evaluations.

logic [$clog2(depth_p + 1)-1:0] rd_ptr_r, wr_ptr_r;
wire [0:0] empty_w, full_w;
assign empty_w = (rd_ptr_r == wr_ptr_r);
// WARN: the following approach to full_w only works where depth_p is a power
// of 2. Otherwise, subtraction of rd_ptr_r-1 won't roll over to depth_p-1.
`ifdef WHY_ARE_YOU_LIKE_THIS // VERILATOR
    assign full_w = (wr_ptr_r == (rd_ptr_r - 1)) ||
        ((rd_ptr_r == '0) &&
        (wr_ptr_r == {depth_p}[$clog2(depth_p+1)-1:0]));
`else
    assign full_w = (wr_ptr_r == (rd_ptr_r - 1)) ||
        ((rd_ptr_r == '0) && (wr_ptr_r == depth_p));
`endif
assign ready_o = ~full_w;
assign valid_o = ~empty_w;
    
always_ff @(posedge clk_i) begin
    if (reset_i) begin
        rd_ptr_r <= '0;
    end else if (yumi_i && valid_o) begin
        if (rd_ptr_r != depth_p)
            rd_ptr_r <= rd_ptr_r + 1;
        else
            rd_ptr_r <= '0;
    end
end

always_ff @(posedge clk_i) begin
    if (reset_i) begin
        wr_ptr_r <= '0;
    end else if (ready_o && valid_i) begin
        if (wr_ptr_r != depth_p)
            wr_ptr_r <= wr_ptr_r + 1;
        else
            wr_ptr_r <= '0;
    end
end

ram_1w1r_async
#(.width_p(width_p)
,.depth_p(depth_p+1))
ram_1w1r_async_inst
(.clk_i(clk_i)
,.reset_i(reset_i)
,.wr_valid_i(ready_o && valid_i)
,.wr_data_i(data_i)
,.wr_addr_i(wr_ptr_r)
,.rd_addr_i(rd_ptr_r)
,.rd_data_o(data_o)
);

endmodule
