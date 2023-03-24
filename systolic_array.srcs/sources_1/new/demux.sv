`timescale 1ns / 1ps

module demux
#(
 parameter width_p = 8
,parameter items_p = 4
)
(input logic [width_p-1:0] data_i
,input logic [$clog2(items_p)-1:0] sel_i
,output logic [(width_p * items_p)-1:0] data_o
);
    
logic [width_p-1:0] data_l [items_p-1:0];

assign data_l[2] = data_i;

    
endmodule
