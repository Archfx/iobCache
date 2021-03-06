//Cache parameters (including front-end's)
// `define N_WAYS 1
// `define LINE_OFF_W 3
// `define WORD_OFF_W 1
// `define ADDR_W 16
// `define DATA_W 32
// `define N_BYTES 4
`define N_WAYS 1
`define LINE_OFF_W 1
`define WORD_OFF_W 1
`define ADDR_W 5
`define DATA_W 16
`define N_BYTES 0
// Replacement Policy (N_WAYS > 1 only) - check below the values
`define REP_POLICY 0

//Write Policy 
`define WRITE_POL 1 //write policy: write-through (0), write-back (1)


//Back-end Memory interface AXI or Native  
// `define AXI //comment for Native

//Cache back-end parameters
// `define MEM_ADDR_W 12
// `define MEM_DATA_W 32
// `define MEM_N_BYTES 8
`define MEM_ADDR_W 3
`define MEM_DATA_W 16
`define MEM_N_BYTES 1

//Write-through Buffer depth
`define WTBUF_DEPTH_W 2


//Cache Controller - comment to remove it
// `define CTRL


//Replacement Policy
`define LRU       0 // Least Recently Used -- more resources intensive - N*log2(N) bits per cache line - Uses counters
`define BIT_PLRU  1 // bit-based Pseudo-Least-Recently-Used, a simpler replacement policy than LRU, using a much lower complexity (lower resources) - N bits per cache line
`define TREE_PLRU 2 // tree-based Pseudo-Least-Recently-Used, uses a tree that updates after any way received an hit, and points towards the oposing one. Uses less resources than bit-pseudo-lru - N-1 bits per cache line


//CONTROLLER
// `define CTRL_COUNTER_W 3
// `define CTRL_ADDR_W 5
`define CTRL_COUNTER_W 1
`define CTRL_ADDR_W 1

//counter for number of hit and misses
`define READ_HIT   (`CTRL_COUNTER_W'd1)
`define READ_MISS  (`CTRL_COUNTER_W'd2)
`define WRITE_HIT  (`CTRL_COUNTER_W'd3)
`define WRITE_MISS (`CTRL_COUNTER_W'd4)
`define INSTR_HIT  (`CTRL_COUNTER_W'd5)
`define INSTR_MISS (`CTRL_COUNTER_W'd6)

//Addresses for cache controller's task
`define ADDR_CACHE_INVALIDATE (`CTRL_ADDR_W'd1)
`define ADDR_BUFFER_EMPTY     (`CTRL_ADDR_W'd2)
`define ADDR_BUFFER_FULL      (`CTRL_ADDR_W'd3) 
`define ADDR_CACHE_HIT        (`CTRL_ADDR_W'd4) 
`define ADDR_CACHE_MISS       (`CTRL_ADDR_W'd5) 
`define ADDR_CACHE_READ_HIT   (`CTRL_ADDR_W'd6) 
`define ADDR_CACHE_READ_MISS  (`CTRL_ADDR_W'd7) 
`define ADDR_CACHE_WRITE_HIT  (`CTRL_ADDR_W'd8) 
`define ADDR_CACHE_WRITE_MISS (`CTRL_ADDR_W'd9) 
`define ADDR_RESET_COUNTER    (`CTRL_ADDR_W'd10) 
`define ADDR_CLK_START        (`CTRL_ADDR_W'd11) 
`define ADDR_CLK_STOP         (`CTRL_ADDR_W'd12) 
`define ADDR_CLK_UPPER        (`CTRL_ADDR_W'd13) 
`define ADDR_CLK_LOWER        (`CTRL_ADDR_W'd14) 
`define ADDR_INSTR_HIT        (`CTRL_ADDR_W'd15) 
`define ADDR_INSTR_MISS       (`CTRL_ADDR_W'd16) 

//Address-port
`define WORD_ADDR // Word-addressable, (BE) addr becomes word-addressable (doesn't receive the byte-offset).

//Control-ports
`define CTRL_IO //ports that allow from outside signals to influence the invalidate and write-through buffer empty cache-control's functions.


//Replacement Policy
`define LRU       0 // Least Recently Used -- more resources intensive - N*log2(N) bits per cache line - Uses counters
`define PLRU_mru  1 // bit-based Pseudo-Least-Recently-Used, a simpler replacement policy than LRU, using a much lower complexity (lower resources) - N bits per cache line
`define PLRU_tree 2 // tree-based Pseudo-Least-Recently-Used, uses a tree that updates after any way received an hit, and points towards the oposing one. Uses less resources than bit-pseudo-lru - N-1 bits per cache line


//Write Policy
`define WRITE_THROUGH 0 //write-through not allocate: implements a write-through buffer
`define WRITE_BACK 1    //write-back allocate: implementes a dirty-memory

// //Cache-Control
// `define CTRL_ADDR_W 4
// //Addresses for cache controller's task
// `define ADDR_BUFFER_EMPTY     (`CTRL_ADDR_W'd1)
// `define ADDR_BUFFER_FULL      (`CTRL_ADDR_W'd2) 
// `define ADDR_CACHE_HIT        (`CTRL_ADDR_W'd3) 
// `define ADDR_CACHE_MISS       (`CTRL_ADDR_W'd4) 
// `define ADDR_CACHE_READ_HIT   (`CTRL_ADDR_W'd5) 
// `define ADDR_CACHE_READ_MISS  (`CTRL_ADDR_W'd6) 
// `define ADDR_CACHE_WRITE_HIT  (`CTRL_ADDR_W'd7) 
// `define ADDR_CACHE_WRITE_MISS (`CTRL_ADDR_W'd8) 
// `define ADDR_RESET_COUNTER    (`CTRL_ADDR_W'd9) 
// `define ADDR_CACHE_INVALIDATE (`CTRL_ADDR_W'd10)
