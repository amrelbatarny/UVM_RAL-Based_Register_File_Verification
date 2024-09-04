interface RegisterFile_if #(
	parameter RegisterFile_WIDTH = 16,
	parameter RegisterFile_DEPTH = 8)(input bit clk);

	import shared_pkg::*;
	parameter REG_WIDTH = 32;
    parameter REG_DEPTH = 7;
    parameter ADDR_SIZE = 32;

	logic RegWrite;
	reg_e addr;
	logic [REG_WIDTH-1:0] write_data;
	logic [REG_WIDTH-1:0] read_data;
	logic valid;

	modport DUT (
		input clk, RegWrite, addr, write_data,
		output read_data, valid
		);
endinterface : RegisterFile_if