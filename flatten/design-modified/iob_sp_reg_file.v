`timescale 1 ns / 1 ps

module iob_sp_reg_file
  #(
    parameter ADDR_W = 5,
    parameter DATA_W = 16
    )
   (
    input               clk,
    input               rst,

    input               we,
    input [ADDR_W-1:0]  addr,
    input [DATA_W-1:0]  w_data,
    output [DATA_W-1:0] r_data
    );

  //  reg [DATA_W-1:0]     reg_file [2**ADDR_W-1:0];
   reg [DATA_W-1:0] reg_file_0;
reg [DATA_W-1:0] reg_file_1;
reg [DATA_W-1:0] reg_file_2;
reg [DATA_W-1:0] reg_file_3;
reg [DATA_W-1:0] reg_file_4;
reg [DATA_W-1:0] reg_file_5;
reg [DATA_W-1:0] reg_file_6;
reg [DATA_W-1:0] reg_file_7;
reg [DATA_W-1:0] reg_file_8;
reg [DATA_W-1:0] reg_file_9;
reg [DATA_W-1:0] reg_file_10;
reg [DATA_W-1:0] reg_file_11;
reg [DATA_W-1:0] reg_file_12;
reg [DATA_W-1:0] reg_file_13;
reg [DATA_W-1:0] reg_file_14;
reg [DATA_W-1:0] reg_file_15;
reg [DATA_W-1:0] reg_file_16;
reg [DATA_W-1:0] reg_file_17;
reg [DATA_W-1:0] reg_file_18;
reg [DATA_W-1:0] reg_file_19;
reg [DATA_W-1:0] reg_file_20;
reg [DATA_W-1:0] reg_file_21;
reg [DATA_W-1:0] reg_file_22;
reg [DATA_W-1:0] reg_file_23;
reg [DATA_W-1:0] reg_file_24;
reg [DATA_W-1:0] reg_file_25;
reg [DATA_W-1:0] reg_file_26;
reg [DATA_W-1:0] reg_file_27;
reg [DATA_W-1:0] reg_file_28;
reg [DATA_W-1:0] reg_file_29;
reg [DATA_W-1:0] reg_file_30;
reg [DATA_W-1:0] reg_file_31;

   //read
  //  assign r_data = reg_file[addr];
     always @(*) begin
   case(addr)
5'b00000 : r_data <= reg_file_0;
5'b00001 : r_data <= reg_file_1;
5'b00010 : r_data <= reg_file_2;
5'b00011 : r_data <= reg_file_3;
5'b00100 : r_data <= reg_file_4;
5'b00101 : r_data <= reg_file_5;
5'b00110 : r_data <= reg_file_6;
5'b00111 : r_data <= reg_file_7;
5'b01000 : r_data <= reg_file_8;
5'b01001 : r_data <= reg_file_9;
5'b01010 : r_data <= reg_file_10;
5'b01011 : r_data <= reg_file_11;
5'b01100 : r_data <= reg_file_12;
5'b01101 : r_data <= reg_file_13;
5'b01110 : r_data <= reg_file_14;
5'b01111 : r_data <= reg_file_15;
5'b10000 : r_data <= reg_file_16;
5'b10001 : r_data <= reg_file_17;
5'b10010 : r_data <= reg_file_18;
5'b10011 : r_data <= reg_file_19;
5'b10100 : r_data <= reg_file_20;
5'b10101 : r_data <= reg_file_21;
5'b10110 : r_data <= reg_file_22;
5'b10111 : r_data <= reg_file_23;
5'b11000 : r_data <= reg_file_24;
5'b11001 : r_data <= reg_file_25;
5'b11010 : r_data <= reg_file_26;
5'b11011 : r_data <= reg_file_27;
5'b11100 : r_data <= reg_file_28;
5'b11101 : r_data <= reg_file_29;
5'b11110 : r_data <= reg_file_30;
5'b11111 : r_data <= reg_file_31;
endcase
     end
   //write
always @(posedge clk) begin
     if (rst) begin
       reg_file_0 <= {DATA_W{1'b0}};
reg_file_1 <= {DATA_W{1'b0}};
reg_file_2 <= {DATA_W{1'b0}};
reg_file_3 <= {DATA_W{1'b0}};
reg_file_4 <= {DATA_W{1'b0}};
reg_file_5 <= {DATA_W{1'b0}};
reg_file_6 <= {DATA_W{1'b0}};
reg_file_7 <= {DATA_W{1'b0}};
reg_file_8 <= {DATA_W{1'b0}};
reg_file_9 <= {DATA_W{1'b0}};
reg_file_10 <= {DATA_W{1'b0}};
reg_file_11 <= {DATA_W{1'b0}};
reg_file_12 <= {DATA_W{1'b0}};
reg_file_13 <= {DATA_W{1'b0}};
reg_file_14 <= {DATA_W{1'b0}};
reg_file_15 <= {DATA_W{1'b0}};
reg_file_16 <= {DATA_W{1'b0}};
reg_file_17 <= {DATA_W{1'b0}};
reg_file_18 <= {DATA_W{1'b0}};
reg_file_19 <= {DATA_W{1'b0}};
reg_file_20 <= {DATA_W{1'b0}};
reg_file_21 <= {DATA_W{1'b0}};
reg_file_22 <= {DATA_W{1'b0}};
reg_file_23 <= {DATA_W{1'b0}};
reg_file_24 <= {DATA_W{1'b0}};
reg_file_25 <= {DATA_W{1'b0}};
reg_file_26 <= {DATA_W{1'b0}};
reg_file_27 <= {DATA_W{1'b0}};
reg_file_28 <= {DATA_W{1'b0}};
reg_file_29 <= {DATA_W{1'b0}};
reg_file_30 <= {DATA_W{1'b0}};
reg_file_31 <= {DATA_W{1'b0}};
     end
      else if (we) begin
case(addr)
5'b00000 : reg_file_0 <= w_data;
5'b00001 : reg_file_1 <= w_data;
5'b00010 : reg_file_2 <= w_data;
5'b00011 : reg_file_3 <= w_data;
5'b00100 : reg_file_4 <= w_data;
5'b00101 : reg_file_5 <= w_data;
5'b00110 : reg_file_6 <= w_data;
5'b00111 : reg_file_7 <= w_data;
5'b01000 : reg_file_8 <= w_data;
5'b01001 : reg_file_9 <= w_data;
5'b01010 : reg_file_10 <= w_data;
5'b01011 : reg_file_11 <= w_data;
5'b01100 : reg_file_12 <= w_data;
5'b01101 : reg_file_13 <= w_data;
5'b01110 : reg_file_14 <= w_data;
5'b01111 : reg_file_15 <= w_data;
5'b10000 : reg_file_16 <= w_data;
5'b10001 : reg_file_17 <= w_data;
5'b10010 : reg_file_18 <= w_data;
5'b10011 : reg_file_19 <= w_data;
5'b10100 : reg_file_20 <= w_data;
5'b10101 : reg_file_21 <= w_data;
5'b10110 : reg_file_22 <= w_data;
5'b10111 : reg_file_23 <= w_data;
5'b11000 : reg_file_24 <= w_data;
5'b11001 : reg_file_25 <= w_data;
5'b11010 : reg_file_26 <= w_data;
5'b11011 : reg_file_27 <= w_data;
5'b11100 : reg_file_28 <= w_data;
5'b11101 : reg_file_29 <= w_data;
5'b11110 : reg_file_30 <= w_data;
5'b11111 : reg_file_31 <= w_data;
endcase

      end
end

endmodule
