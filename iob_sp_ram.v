// `timescale 1ns / 1ps

module iob_sp_ram 
  #(
    parameter FILE="none",
    parameter DATA_W=8,
    parameter ADDR_W=14
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
   reg [DATA_W-1:0] 	      ram[2**ADDR_W-1:0];

   // Initialize the RAM
   initial 
     if(mem_init_file_int != "none")
       $readmemh(mem_init_file_int, ram, 0, 2**ADDR_W - 1);

   // Operate the RAM
   always @ (posedge clk)
     if(en)
       if (we) begin
          ram[addr] <= din;
          // $display("write Data *************************************");

       end
          
       else begin
                  dout <= ram[addr];
                  // $display("Read Data *************************************");


       end

endmodule
