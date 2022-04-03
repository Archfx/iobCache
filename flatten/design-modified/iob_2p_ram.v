`timescale 1ns/1ps

module iob_2p_ram
  #( 
     parameter DATA_W = 8,
     parameter ADDR_W = 5,
     parameter USE_RAM = 1
     ) 
   (
    input                   clk,

    //write port
    input                   w_en,
    input [ADDR_W-1:0]      w_addr,
    input [DATA_W-1:0]      w_data,

    //read port
    input                   r_en,
    input [ADDR_W-1:0]      r_addr,
    output reg [DATA_W-1:0] r_data
    );

   //memory declaration
   reg [DATA_W-1:0] mem_0;
reg [DATA_W-1:0] mem_1;
reg [DATA_W-1:0] mem_2;
reg [DATA_W-1:0] mem_3;
reg [DATA_W-1:0] mem_4;
reg [DATA_W-1:0] mem_5;
reg [DATA_W-1:0] mem_6;
reg [DATA_W-1:0] mem_7;
reg [DATA_W-1:0] mem_8;
reg [DATA_W-1:0] mem_9;
reg [DATA_W-1:0] mem_10;
reg [DATA_W-1:0] mem_11;
reg [DATA_W-1:0] mem_12;
reg [DATA_W-1:0] mem_13;
reg [DATA_W-1:0] mem_14;
reg [DATA_W-1:0] mem_15;
reg [DATA_W-1:0] mem_16;
reg [DATA_W-1:0] mem_17;
reg [DATA_W-1:0] mem_18;
reg [DATA_W-1:0] mem_19;
reg [DATA_W-1:0] mem_20;
reg [DATA_W-1:0] mem_21;
reg [DATA_W-1:0] mem_22;
reg [DATA_W-1:0] mem_23;
reg [DATA_W-1:0] mem_24;
reg [DATA_W-1:0] mem_25;
reg [DATA_W-1:0] mem_26;
reg [DATA_W-1:0] mem_27;
reg [DATA_W-1:0] mem_28;
reg [DATA_W-1:0] mem_29;
reg [DATA_W-1:0] mem_30;
reg [DATA_W-1:0] mem_31;

   //write
   always@(posedge clk) begin
     if(w_en) begin
       case(w_addr)
5'b00000 : mem_0 <= w_data;
5'b00001 : mem_1 <= w_data;
5'b00010 : mem_2 <= w_data;
5'b00011 : mem_3 <= w_data;
5'b00100 : mem_4 <= w_data;
5'b00101 : mem_5 <= w_data;
5'b00110 : mem_6 <= w_data;
5'b00111 : mem_7 <= w_data;
5'b01000 : mem_8 <= w_data;
5'b01001 : mem_9 <= w_data;
5'b01010 : mem_10 <= w_data;
5'b01011 : mem_11 <= w_data;
5'b01100 : mem_12 <= w_data;
5'b01101 : mem_13 <= w_data;
5'b01110 : mem_14 <= w_data;
5'b01111 : mem_15 <= w_data;
5'b10000 : mem_16 <= w_data;
5'b10001 : mem_17 <= w_data;
5'b10010 : mem_18 <= w_data;
5'b10011 : mem_19 <= w_data;
5'b10100 : mem_20 <= w_data;
5'b10101 : mem_21 <= w_data;
5'b10110 : mem_22 <= w_data;
5'b10111 : mem_23 <= w_data;
5'b11000 : mem_24 <= w_data;
5'b11001 : mem_25 <= w_data;
5'b11010 : mem_26 <= w_data;
5'b11011 : mem_27 <= w_data;
5'b11100 : mem_28 <= w_data;
5'b11101 : mem_29 <= w_data;
5'b11110 : mem_30 <= w_data;
5'b11111 : mem_31 <= w_data;
endcase

     end

       

   end

   //read mode depends on mem implementation, as ram or reg
        always@(posedge clk)  begin
           if(r_en) begin
             case(r_addr)
5'b00000 : r_data <= mem_0;
5'b00001 : r_data <= mem_1;
5'b00010 : r_data <= mem_2;
5'b00011 : r_data <= mem_3;
5'b00100 : r_data <= mem_4;
5'b00101 : r_data <= mem_5;
5'b00110 : r_data <= mem_6;
5'b00111 : r_data <= mem_7;
5'b01000 : r_data <= mem_8;
5'b01001 : r_data <= mem_9;
5'b01010 : r_data <= mem_10;
5'b01011 : r_data <= mem_11;
5'b01100 : r_data <= mem_12;
5'b01101 : r_data <= mem_13;
5'b01110 : r_data <= mem_14;
5'b01111 : r_data <= mem_15;
5'b10000 : r_data <= mem_16;
5'b10001 : r_data <= mem_17;
5'b10010 : r_data <= mem_18;
5'b10011 : r_data <= mem_19;
5'b10100 : r_data <= mem_20;
5'b10101 : r_data <= mem_21;
5'b10110 : r_data <= mem_22;
5'b10111 : r_data <= mem_23;
5'b11000 : r_data <= mem_24;
5'b11001 : r_data <= mem_25;
5'b11010 : r_data <= mem_26;
5'b11011 : r_data <= mem_27;
5'b11100 : r_data <= mem_28;
5'b11101 : r_data <= mem_29;
5'b11110 : r_data <= mem_30;
5'b11111 : r_data <= mem_31;
endcase

           end
        end
     

endmodule   
