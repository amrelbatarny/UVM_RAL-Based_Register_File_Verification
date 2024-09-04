package RegisterFile_seq_item_pkg;
	import shared_pkg::*;
	import uvm_pkg::*;
	`include "uvm_macros.svh"

	class RegisterFile_seq_item extends uvm_sequence_item;
		`uvm_object_utils(RegisterFile_seq_item)

		rand logic RegWrite;
		rand reg_e addr;
		rand logic [REG_WIDTH-1:0] write_data;
		logic [REG_WIDTH-1:0] read_data;
		logic valid;
		int delay;

		function new(string name = "RegisterFile_seq_item");
			super.new(name);
		endfunction : new
			
		function string convert2string_stimulus();
			return $sformatf("RegWrite = 0x%h, addr = %s, write_data = 0x%h, read_data = 0x%h, valid = 0x%h", RegWrite, addr, write_data, read_data, valid);
		endfunction : convert2string_stimulus

	endclass : RegisterFile_seq_item
	
endpackage : RegisterFile_seq_item_pkg