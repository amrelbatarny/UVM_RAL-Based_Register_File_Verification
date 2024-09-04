package shared_pkg;
	parameter REG_WIDTH = 32;
    parameter REG_DEPTH = 7;
    parameter ADDR_SIZE = 32;
    int clk_cycle = 4;
	
	typedef enum logic [ADDR_SIZE-1:0] {
	rxtx0_addr = 32'h0000_0000, 
	rxtx1_addr = 32'h0000_0004,
	rxtx2_addr = 32'h0000_0008,
	rxtx3_addr = 32'h0000_000c,
	ctrl_addr = 32'h0000_0010,
	divider_addr = 32'h0000_0014,
	ss_addr = 32'h0000_0018} reg_e;

endpackage : shared_pkg