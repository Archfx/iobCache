`timescale 1ns / 1ps

module iob_sp_ram 
  #(
    parameter FILE="none",
    parameter DATA_W=16,
    parameter ADDR_W=5
    )
   (
    input                     clk,
    input                     en, 
    input                     we, 
    input [(ADDR_W-1):0]      addr,
    output reg [(DATA_W-1):0] dout,
    input [(DATA_W-1):0]      din
    );

   //this allows ISE 14.7 to work; do not remove
   localparam mem_init_file_int = FILE;

   // Declare the RAM
   reg [DATA_W-1:0] ram_0;
reg [DATA_W-1:0] ram_1;
reg [DATA_W-1:0] ram_2;
reg [DATA_W-1:0] ram_3;
reg [DATA_W-1:0] ram_4;
reg [DATA_W-1:0] ram_5;
reg [DATA_W-1:0] ram_6;
reg [DATA_W-1:0] ram_7;
reg [DATA_W-1:0] ram_8;
reg [DATA_W-1:0] ram_9;
reg [DATA_W-1:0] ram_10;
reg [DATA_W-1:0] ram_11;
reg [DATA_W-1:0] ram_12;
reg [DATA_W-1:0] ram_13;
reg [DATA_W-1:0] ram_14;
reg [DATA_W-1:0] ram_15;
reg [DATA_W-1:0] ram_16;
reg [DATA_W-1:0] ram_17;
reg [DATA_W-1:0] ram_18;
reg [DATA_W-1:0] ram_19;
reg [DATA_W-1:0] ram_20;
reg [DATA_W-1:0] ram_21;
reg [DATA_W-1:0] ram_22;
reg [DATA_W-1:0] ram_23;
reg [DATA_W-1:0] ram_24;
reg [DATA_W-1:0] ram_25;
reg [DATA_W-1:0] ram_26;
reg [DATA_W-1:0] ram_27;
reg [DATA_W-1:0] ram_28;
reg [DATA_W-1:0] ram_29;
reg [DATA_W-1:0] ram_30;
reg [DATA_W-1:0] ram_31;


   // Initialize the RAM
  //  initial 
  //    if(mem_init_file_int != "none")
  //      $readmemh(mem_init_file_int, ram, 0, 2**ADDR_W - 1);

   // Operate the RAM
   always @ (posedge clk) begin
     if(en) begin
       if (we) begin
         case(addr)
5'b00000 : ram_0 <= din;
5'b00001 : ram_1 <= din;
5'b00010 : ram_2 <= din;
5'b00011 : ram_3 <= din;
5'b00100 : ram_4 <= din;
5'b00101 : ram_5 <= din;
5'b00110 : ram_6 <= din;
5'b00111 : ram_7 <= din;
5'b01000 : ram_8 <= din;
5'b01001 : ram_9 <= din;
5'b01010 : ram_10 <= din;
5'b01011 : ram_11 <= din;
5'b01100 : ram_12 <= din;
5'b01101 : ram_13 <= din;
5'b01110 : ram_14 <= din;
5'b01111 : ram_15 <= din;
5'b10000 : ram_16 <= din;
5'b10001 : ram_17 <= din;
5'b10010 : ram_18 <= din;
5'b10011 : ram_19 <= din;
5'b10100 : ram_20 <= din;
5'b10101 : ram_21 <= din;
5'b10110 : ram_22 <= din;
5'b10111 : ram_23 <= din;
5'b11000 : ram_24 <= din;
5'b11001 : ram_25 <= din;
5'b11010 : ram_26 <= din;
5'b11011 : ram_27 <= din;
5'b11100 : ram_28 <= din;
5'b11101 : ram_29 <= din;
5'b11110 : ram_30 <= din;
5'b11111 : ram_31 <= din;
endcase

       end
       else begin
         case(addr)
5'b00000 : dout <= ram_0;
5'b00001 : dout <= ram_1;
5'b00010 : dout <= ram_2;
5'b00011 : dout <= ram_3;
5'b00100 : dout <= ram_4;
5'b00101 : dout <= ram_5;
5'b00110 : dout <= ram_6;
5'b00111 : dout <= ram_7;
5'b01000 : dout <= ram_8;
5'b01001 : dout <= ram_9;
5'b01010 : dout <= ram_10;
5'b01011 : dout <= ram_11;
5'b01100 : dout <= ram_12;
5'b01101 : dout <= ram_13;
5'b01110 : dout <= ram_14;
5'b01111 : dout <= ram_15;
5'b10000 : dout <= ram_16;
5'b10001 : dout <= ram_17;
5'b10010 : dout <= ram_18;
5'b10011 : dout <= ram_19;
5'b10100 : dout <= ram_20;
5'b10101 : dout <= ram_21;
5'b10110 : dout <= ram_22;
5'b10111 : dout <= ram_23;
5'b11000 : dout <= ram_24;
5'b11001 : dout <= ram_25;
5'b11010 : dout <= ram_26;
5'b11011 : dout <= ram_27;
5'b11100 : dout <= ram_28;
5'b11101 : dout <= ram_29;
5'b11110 : dout <= ram_30;
5'b11111 : dout <= ram_31;
endcase

       end
     end
   end
endmodule
