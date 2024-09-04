package RegisterFile_sequencer_pkg;
	import uvm_pkg::*;
	import RegisterFile_seq_item_pkg::*;
	`include "uvm_macros.svh"

	class RegisterFile_sequencer extends uvm_sequencer #(RegisterFile_seq_item);
		`uvm_component_utils(RegisterFile_sequencer)

		function new(string name = "RegisterFile_sequencer", uvm_component parent = null);
			super.new(name, parent);
		endfunction : new
		
	endclass : RegisterFile_sequencer
	
endpackage : RegisterFile_sequencer_pkg