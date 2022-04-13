

 

`timescale 1ns/10ps

 

`include "iob-cache_tb.vh"


module iob_cache_tb;

 

   reg clk = 1;

   always #1 clk = ~clk;

   reg reset = 1;

   

   reg [`ADDR_W-1  :$clog2(`DATA_W/8)] addr =0;

   reg [`DATA_W-1:0]                   wdata=0;

   reg [`DATA_W/8-1:0]                 wstrb=0;

   reg                                 valid=0;

   wire [`DATA_W-1:0]                  rdata;

   wire                                ready;

   wire [1:0] debug;

   reg                                 instr =0;

   wire                                select = 0;//cache is always selected

   wire                                i_select =0, d_select =0;

   reg [31:0]                          test = 0;

   

 

   integer                             i,j;

   initial begin
       #1000;
       $finish;    
   end

   initial 
       
     begin


        $dumpfile("iob.vcd"); 
        $dumpvars(0, iob_cache_tb);
 

        repeat (5) @(posedge clk);

        reset <= 0;

        #10;

        $display("\nInitializing Cache testing - printing errors only\n");

        $display("Test 1 - Writing entire memory (Data width words)\n");



        addr  <= 0;

        wdata <= 0;

        wstrb <= 0;

        #2;

 

        addr <= 13'h1234;
        // addr <= 13'h579;

        wdata <= 32'hDEADBEEF;
        // wdata <= 32'hCAFEEFAC;

        wstrb <= {`DATA_W/8{1'b1}};
        // wstrb <= 1;

        valid <= 1;

        #2;

        while (ready == 1'b0) #2;

        valid <= 0;

        #2;

 

        addr <= 13'h1234;
        // addr <= 13'h579;

        wdata <= 32'hDEADBEEF;

        //wdata <= 32'hDEADBEEF;

        wstrb <= {`DATA_W/8{1'b0}};
        // wstrb <= 0;

        valid <= 1;

        #2;

        while (ready == 1'b0) #2;

        valid <= 0;

        #2;

 

  

        

        $display("Cache testing completed\n");

        $finish;

     end

   



   wire [`MEM_ADDR_W-1:0]          mem_addr;

   wire [`MEM_DATA_W-1:0]          mem_wdata, mem_rdata;

   wire [`MEM_N_BYTES-1:0]         mem_wstrb;

   wire                            mem_valid;

   reg                             mem_ready;

   

iob_cache 
   cache (

  .clk (clk),

  .reset (reset),

  .wdata (wdata),

  .addr  ({select, addr}),

  .wstrb (wstrb),

  .rdata (rdata),

  .valid (valid),

  .ready (ready),

  .debug (debug),

          .mem_addr(mem_addr),

          .mem_wdata(mem_wdata),

          .mem_wstrb(mem_wstrb),

          .mem_rdata(mem_rdata),

          .mem_valid(mem_valid),

          .mem_ready(mem_ready)

  );

 

   


   task cache_wait;

      input ready;

      begin

         wait (ready == 1'b1);

         #1;

      end

   endtask

   



 

   iob_sp_ram #(

.DATA_W (`MEM_DATA_W),

                .ADDR_W(`MEM_ADDR_W-2)

                )

   native_ram

     (

      .clk(clk),

      .en  (mem_valid),

      .we  (mem_wstrb),

      .addr(mem_addr[`MEM_ADDR_W-1:$clog2(`MEM_DATA_W/8)]),

      .dout(mem_rdata),

      .din (mem_wdata)

      );

 

   always @(posedge clk)

     mem_ready <= mem_valid;


endmodule // iob_cache_tb

 

 

 

 

 

 

 

