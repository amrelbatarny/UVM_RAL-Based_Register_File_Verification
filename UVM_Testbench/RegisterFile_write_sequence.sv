package RegisterFile_write_sequence_pkg;
	import shared_pkg::*;
	import uvm_pkg::*;
	import RegisterFile_seq_item_pkg::*;
	`include "uvm_macros.svh"

	class RegisterFile_write_sequence extends uvm_sequence #(RegisterFile_seq_item);
		`uvm_object_utils(RegisterFile_write_sequence)

		RegisterFile_seq_item seq_item;

		function new(string name = "RegisterFile_write_sequence");
			super.new(name);
		endfunction : new

		task body();
			repeat(500) begin
				seq_item = RegisterFile_seq_item::type_id::create("seq_item");
				start_item(seq_item);
				assert(seq_item.randomize());
				finish_item(seq_item);
			end
		endtask : body
	endclass : RegisterFile_write_sequence
	
endpackage : RegisterFile_write_sequence_pkg