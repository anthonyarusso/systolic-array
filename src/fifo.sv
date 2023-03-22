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
,output [width_p-1:0] valid_o
,output [width_p-1:0] data_o
);

wire [0:0] empty_w, full_w;
assign empty_w = (rd_ptr_r == wr_ptr_r);
assign full_w = (wr_ptr_r == (rd_ptr_r-1)) |
    (rd_ptr_r == 0 && wr_ptr_r == ($clog2(depth_p)-1));
assign ready_o = ~full_w;
assign valid_o = ~empty_w;
    
logic [$clog2(depth_p)-1:0] rd_ptr_r, wr_ptr_r;
    
always_ff @(posedge clk_i) begin
    if (reset_i) begin
        rd_ptr_r <= '0;
    end else if (yumi_i & ~empty_w) begin
        rd_ptr_r <= rd_ptr_r + 1;
    end
end

always_ff @(posedge clk_i) begin
    if (reset_i) begin
        wr_ptr_r <= '0;
    end else if (valid_i & ~full_w) begin
        wr_ptr_r <= wr_ptr_r + 1;
    end
end

ram_1w1r_async
#(.width_p(width_p)
,.depth_p(128))
ram_1w1r_async_inst
(.clk_i(clk_i)
,.reset_i(reset_i)
,.wr_valid_i(valid_i)
,.wr_data_i(data_i)
,.wr_addr_i(wr_ptr_r)
,.rd_addr_i(rd_ptr_r)
,.rd_data_o(data_o)
);

endmodule
