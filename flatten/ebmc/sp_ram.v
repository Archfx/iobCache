`timescale 1ns / 1ps

module iob_sp_ram 
   (
    input                     clk,
    input                     en, 
    input                     we, 
    input [(ADDR_W-1):0]      addr,
    output reg [(DATA_W-1):0] dout,
    input [(DATA_W-1):0]      din
    );

   //this allows ISE 14.7 to work; do not remove
  //  parameter mem_init_file_int = FILE;
    parameter DATA_W=32;
    parameter ADDR_W=10;

   // Declare the RAM
   reg [DATA_W-1:0] 	      ram[1023:0];

   // Initialize the RAM
  //  initial 
  //    if(mem_init_file_int != "none")
  //      $readmemh(mem_init_file_int, ram, 0, 1023);

   // Operate the RAM
   always @ (posedge clk)
     if(en)
       if (we)
         ram[addr] <= din;
       else
         dout <= ram[addr];

endmodule
