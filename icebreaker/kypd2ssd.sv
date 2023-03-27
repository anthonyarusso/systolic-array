module kypd2ssd
  (input [7:0] kypd_i
  ,output [7:0] ssd_o);

   // Your code here

   // See resource:
   // https://digilent.com/reference/pmod/pmodkypd/reference-manual?redirect=1

   localparam ROW_1 = 4'b1000;
   localparam ROW_2 = 4'b0100;
   localparam ROW_3 = 4'b0010;
   localparam ROW_4 = 4'b0001;

   localparam COL_1 = 4'b1000;
   localparam COL_2 = 4'b0100;
   localparam COL_3 = 4'b0010;
   localparam COL_4 = 4'b0001;

  // kypd_i [7:4] corresponds to ROWs 1 thru 4
  // kypd_i [3:0] corresponds to COLs 1 thru 4

  // Assign addresses to each button's corresponding seven-segment display.
  // Our seven-segment display supports 16 or 2^4 characters. 4 bits to
  // address.
  logic [4:0] ssd_addr_l;

  always_comb begin
        case ({kypd_i[7:4], kypd_i[3:0]})
            {ROW_1, COL_1} : ssd_addr_l = 5'h01;
            {ROW_1, COL_2} : ssd_addr_l = 5'h02;
            {ROW_1, COL_3} : ssd_addr_l = 5'h03;
            {ROW_1, COL_4} : ssd_addr_l = 5'h0A;
            {ROW_2, COL_1} : ssd_addr_l = 5'h04;
            {ROW_2, COL_2} : ssd_addr_l = 5'h05;
            {ROW_2, COL_3} : ssd_addr_l = 5'h06;
            {ROW_2, COL_4} : ssd_addr_l = 5'h0B;
            {ROW_3, COL_1} : ssd_addr_l = 5'h07;
            {ROW_3, COL_2} : ssd_addr_l = 5'h08;
            {ROW_3, COL_3} : ssd_addr_l = 5'h09;
            {ROW_3, COL_4} : ssd_addr_l = 5'h0C;
            {ROW_4, COL_1} : ssd_addr_l = 5'h00;
            {ROW_4, COL_2} : ssd_addr_l = 5'h0F;
            {ROW_4, COL_3} : ssd_addr_l = 5'h0E;
            {ROW_4, COL_4} : ssd_addr_l = 5'h0D;
            // I've elected to default to 0.
            // I'm not sure if this is okay or not.
            default : ssd_addr_l = 5'h10;
        endcase
  end

  // Output should be active low and assumes LSB corresponds to segment A
  // and MSB corresponds to segment DP.

  // 1 on SSD is ~8'h06 or 8'1111_1001
  // 8'b1100_0000 // 0 -> hC0
  // 8'b1111_1001 // 1 -> hF9
  // 8'b1010_0100 // 2 -> hA4
  // 8'b1011_0000 // 3 -> hB0
  // 8'b1001_1001 // 4 -> h99
  // 8'b1001_0010 // 5 -> h92
  // 8'b1000_0010 // 6 -> h82
  // 8'b1111_1000 // 7 -> hF8
  // 8'b1000_0000 // 8 -> h80
  // 8'b1001_0000 // 9 -> h90 // Prof draws 9s with a tail on the SSD
  // 8'b1000_1000 // A -> h88
  // 8'b1000_0011 // b -> h83
  // 8'b1100_0110 // C -> hC6
  // 8'b1010_0001 // d -> hA1
  // 8'b1000_0110 // E -> h86
  // 8'b1000_1110 // F -> h8E

  // Create an extra write address (address 17) that indicates that nothing
  // should be output to the seven segment display! I.e. FF
  ram_1w1r_async
  #(8
  ,17
  ,"memory_init_file.hex"
  )
  kypd2ssd_ram_inst
  (.clk_i(1'b0)
  ,.reset_i(1'b0)
  ,.wr_valid_i(1'b0) // read only
  ,.wr_data_i('0)
  ,.wr_addr_i('0)
  ,.rd_addr_i(ssd_addr_l)
  ,.rd_data_o(ssd_o)
  );

endmodule
