module conquest_tb();

    // Generated top module signals
    reg  clk;
    reg  reset;
    reg  valid = 1'b0;
    reg  [29:0] addr = 30'b0;
    reg  [31:0] wdata = 32'b0;
    reg  [3:0] wstrb = 4'b0;
    wire [31:0] rdata;
    wire ready;
    wire [1:0] debug;
    wire mem_valid;
    wire [31:0] mem_addr;
    wire [31:0] mem_wdata;
    wire [3:0] mem_wstrb;
    reg  [31:0] mem_rdata = 32'b0;
    reg  mem_ready = 1'b0;
    reg  __obs;

    // Generated top module instance
    iob_cache _conc_top_inst(
            .clk       ( clk ),
            .reset     ( reset ),
            .valid     ( valid ),
            .addr      ( addr ),
            .wdata     ( wdata ),
            .wstrb     ( wstrb ),
            .rdata     ( rdata ),
            .ready     ( ready ),
            .debug     ( debug ),
            .mem_valid ( mem_valid ),
            .mem_addr  ( mem_addr ),
            .mem_wdata ( mem_wdata ),
            .mem_wstrb ( mem_wstrb ),
            .mem_rdata ( mem_rdata ),
            .mem_ready ( mem_ready ),
            .__obs     ( __obs ));

    // Generated internal use signals
    reg  [31:0] _conc_pc;
    reg  [100:0] _conc_opcode;
    reg  [100:0] _conc_ram[0:2];


    // Generated clock pulse
    always begin
        #5 clk = ~clk;
    end

    // Generated program counter
    always @(posedge clk) begin
        _conc_opcode = _conc_ram[_conc_pc];
        __obs <= #5 _conc_opcode[100];
        addr <= #5 _conc_opcode[30:1];
        mem_rdata <= #5 _conc_opcode[98:67];
        mem_ready <= #5 _conc_opcode[99];
        valid <= #5 _conc_opcode[0];
        wdata <= #5 _conc_opcode[62:31];
        wstrb <= #5 _conc_opcode[66:63];
        _conc_pc = _conc_pc + 32'b1;
        $strobe(";_C %d", _conc_pc);
    end

    // Generated initial block
    initial begin
        clk = 1'b0;
        reset = 1'b0;
        _conc_pc = 32'b0;
        $readmemb("data.mem", _conc_ram);
        #2 clk = 1'b1;
        reset = 1'b1;
        #5 reset = 1'b0;
        #20 $finish;
    end

endmodule
